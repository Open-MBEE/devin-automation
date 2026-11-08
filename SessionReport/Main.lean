module

public import SessionReport.Build
public import L4YAML.Schema.Dump

@[expose] public section

/-!
# session-report — build the Devin session report, export and check its YAML tables

```
session-report build --kind daily|weekly|monthly --start YYYY-MM-DD --end YYYY-MM-DD(exclusive)
                     [--raw FILE] [--out DIR] [--tz ZONE] [--who NAME] [--base-url URL] [--group name|repo] [--owners a,b]
session-report yaml <report.json> <out-dir>      re-export the tables of a report JSON
session-report check <table.yaml>...             parse exported tables back (schema check)
session-report --version | --help
```

`build` reads the raw collector output (`session-report/collect.py`), writes `<out>/devin-report-<slug>.md`,
`<out>/report-<slug>.json` (rows + tables, consumed by `session-report/body.html`) and the five YAML tables under
`<out>/yaml/<slug>/`, each written with the L4YAML dumper from the typed tables of `SessionReport.Schema`.
-/

open L4YAML L4YAML.Schema L4YAML.Schema.Dump

namespace SessionReport

def version : String := "0.2.0"

def usage : String :=
  "session-report " ++ version ++ "\n" ++
  "usage: session-report build --kind daily|weekly|monthly --start YYYY-MM-DD --end YYYY-MM-DD(exclusive)\n" ++
  "                            [--raw FILE] [--out DIR] [--tz ZONE] [--who NAME] [--base-url URL] [--group name|repo] [--owners a,b]\n" ++
  "       session-report yaml <report.json> <out-dir>   re-export the five tables of a report JSON as YAML\n" ++
  "       session-report check <table.yaml>...          parse exported tables back (schema check)\n" ++
  "       session-report -V | --version | -h | --help\n" ++
  "tables: report project_totals working_by_day sessions session_days\n" ++
  "defaults: --raw ~/report/raw.json --out ~/report --tz America/Los_Angeles --who $USER --group name\n" ++
  "          --base-url https://app.devin.ai/sessions/ --owners Open-MBEE,nasa-jpl"

def directives : Array Directive := #[.yaml "1.2"]

def writeTable {α : Type} [ToYaml α] (dir : System.FilePath) (name : String) (v : α) : IO Unit := do
  let text := dumpTypedDocument v {} directives
  IO.FS.writeFile (dir / (name ++ ".yaml")) (text ++ "\n")

def writeTables (dir : System.FilePath) (t : Tables) : IO Unit := do
  IO.FS.createDirAll dir
  writeTable dir "report" t.report
  writeTable dir "project_totals" t.project_totals
  writeTable dir "working_by_day" t.working_by_day
  writeTable dir "sessions" t.sessions
  writeTable dir "session_days" t.session_days
  IO.println s!"wrote {dir}/{"{"}report,project_totals,working_by_day,sessions,session_days{"}"}.yaml"

def yamlCmd (input : System.FilePath) (outDir : System.FilePath) : IO UInt32 := do
  let text ← IO.FS.readFile input
  match parseAs ReportFile text with
  | .error e => IO.eprintln s!"{input}: does not fit the session-report schema: {e}"; return 1
  | .ok file => writeTables outDir file.tables; return 0

def checkOne (p : System.FilePath) : IO Bool := do
  let text ← IO.FS.readFile p
  let name := p.fileStem.getD ""
  let r? : Option (Except YamlError Unit) :=
    match name with
    | "report" => some ((parseAs Header text).map fun _ => ())
    | "project_totals" => some ((parseAs (Array ProjectTotal) text).map fun _ => ())
    | "working_by_day" => some ((parseAs (Array WorkingByDay) text).map fun _ => ())
    | "sessions" => some ((parseAs (Array Session) text).map fun _ => ())
    | "session_days" => some ((parseAs (Array SessionDay) text).map fun _ => ())
    | _ => none
  match r? with
  | none => IO.eprintln s!"FAIL {p}: unknown table {name} (expected one of: report project_totals working_by_day sessions session_days)"; return false
  | some (.ok _) => IO.println s!"ok   {p}"; return true
  | some (.error e) => IO.eprintln s!"FAIL {p}: {e}"; return false

def checkCmd (files : List String) : IO UInt32 := do
  let mut ok := true
  for f in files do
    ok := (← checkOne f) && ok
  return if ok then 0 else 1

/-- `--key value` pairs → lookup. -/
def opt (args : List String) (key : String) : Option String :=
  match args.dropWhile (· != key) with
  | _ :: v :: _ => some v
  | _ => none

def buildCmd (args : List String) : IO UInt32 := do
  let home := (← IO.getEnv "HOME").getD "."
  let user := (← IO.getEnv "USER").getD "me"
  let kind ← match opt args "--kind" with
    | some "daily" => pure Kind.daily | some "weekly" => pure Kind.weekly | some "monthly" => pure Kind.monthly
    | _ => throw (IO.userError "--kind daily|weekly|monthly is required")
  let date (k : String) : IO Std.Time.PlainDate := do
    match (opt args k).bind Time.parseDate with
    | some d => pure d
    | none => throw (IO.userError s!"{k} YYYY-MM-DD is required")
  let first ← date "--start"
  let last ← date "--end"
  let byName ← match opt args "--group" with
    | none | some "name" => pure true | some "repo" => pure false
    | some g => throw (IO.userError s!"--group {g}: expected name or repo")
  let owners := ((opt args "--owners").getD "Open-MBEE,nasa-jpl").splitOn "," |>.map String.trimWs |>.filter (!·.isEmpty) |>.toArray
  let now := (← IO.monoMsNow) -- placeholder, replaced below
  let nowSecs : Int := ← do
    let out ← IO.Process.output { cmd := "date", args := #["+%s"] }
    pure ((out.stdout.trimWs.toInt?).getD (Int.ofNat (now / 1000)))
  let cfg : Build.Config := {
    kind, first, last, who := (opt args "--who").getD user, tz := (opt args "--tz").getD "America/Los_Angeles",
    baseUrl := (opt args "--base-url").getD "https://app.devin.ai/sessions/", byName, owners, now := nowSecs }
  let raw := (opt args "--raw").getD s!"{home}/report/raw.json"
  let out : System.FilePath := (opt args "--out").getD s!"{home}/report"
  let text ← IO.FS.readFile raw
  let data ← match parseAs Raw.Data text with
    | .error e => throw (IO.userError s!"{raw}: not a collector output: {e}")
    | .ok d => pure d
  let ctx ← Build.Ctx.make cfg
  let rows := Build.rows ctx data
  IO.FS.createDirAll out
  IO.FS.writeFile (out / s!"devin-report-{ctx.slug}.md") (Build.markdown ctx rows)
  IO.FS.writeFile (out / s!"report-{ctx.slug}.json") ((Build.reportJson ctx rows).pretty ++ "\n")
  writeTables (out / "yaml" / ctx.slug) (Build.tables ctx rows)
  IO.println s!"wrote {out}/devin-report-{ctx.slug}.md and report-{ctx.slug}.json: {rows.size} sessions"
  return 0

end SessionReport

open SessionReport in
public def main (args : List String) : IO UInt32 := do
  try
    match args with
    | ["-V"] | ["--version"] => IO.println version; return 0
    | [] | ["-h"] | ["--help"] => IO.println usage; return 0
    | "build" :: rest => buildCmd rest
    | "yaml" :: [input, outDir] => yamlCmd input outDir
    | "check" :: files => checkCmd files
    | _ => IO.eprintln usage; return 2
  catch e =>
    IO.eprintln s!"session-report: {e}"
    return 1

end
