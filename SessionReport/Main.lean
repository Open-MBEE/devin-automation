module

public import SessionReport.Schema
public import L4YAML.Schema.Dump

@[expose] public section

/-!
# session-report-yaml — export the report tables as schema-checked YAML

```
session-report-yaml <report.json> <out-dir>
session-report-yaml --check <table.yaml> …   # re-read exported tables
session-report-yaml --version | --help
```

The report JSON written by `session-report/build.py` is itself a YAML 1.2 document,
so it is read with the L4YAML parser, decoded through the `FromYaml` instances of
`SessionReport.Schema` (the schema check), and each table is written back with the
verified L4YAML dumper as `<out-dir>/<table>.yaml`.  Exit 1 with the decoding error
on stderr when the data does not fit the schema.
-/

open L4YAML L4YAML.Schema L4YAML.Schema.Dump

namespace SessionReport

def version : String := "0.1.0"

def usage : String :=
  "session-report-yaml " ++ version ++ "\n" ++
  "usage: session-report-yaml <report.json> <out-dir>   export the report tables as YAML\n" ++
  "       session-report-yaml --check <table.yaml>...    parse exported tables back (schema check)\n" ++
  "       session-report-yaml -V | --version | -h | --help\n" ++
  "tables: report project_totals working_by_day sessions session_days"

def directives : Array Directive := #[.yaml "1.2"]

def writeTable {α : Type} [ToYaml α] (dir : System.FilePath) (name : String) (v : α) : IO Unit := do
  let text := dumpTypedDocument v {} directives
  IO.FS.writeFile (dir / (name ++ ".yaml")) (text ++ "\n")
  IO.println s!"wrote {dir / (name ++ ".yaml")}"

def exportTables (input : System.FilePath) (outDir : System.FilePath) : IO UInt32 := do
  let text ← IO.FS.readFile input
  match parseAs ReportFile text with
  | .error e =>
    IO.eprintln s!"{input}: does not fit the session-report schema: {e}"
    return 1
  | .ok file =>
    IO.FS.createDirAll outDir
    let t := file.tables
    writeTable outDir "report" t.report
    writeTable outDir "project_totals" t.project_totals
    writeTable outDir "working_by_day" t.working_by_day
    writeTable outDir "sessions" t.sessions
    writeTable outDir "session_days" t.session_days
    return 0

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

end SessionReport

open SessionReport in
public def main (args : List String) : IO UInt32 := do
  match args with
  | ["-V"] | ["--version"] => IO.println version; return 0
  | [] | ["-h"] | ["--help"] => IO.println usage; return 0
  | "--check" :: files =>
    let mut ok := true
    for f in files do
      ok := (← checkOne f) && ok
    return if ok then 0 else 1
  | [input, outDir] => exportTables input outDir
  | _ => IO.eprintln usage; return 2

end
