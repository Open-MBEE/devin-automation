module

public import SessionReport.Raw
public import SessionReport.Schema
public import Lean.Data.Json

@[expose] public section

/-!
# Report builder

Raw collector output → per-session rows → the five tables (`SessionReport.Schema`), the report JSON
consumed by `session-report/body.html`, and the Markdown report.
-/

namespace SessionReport.Build

open SessionReport Raw Lean Std.Time

structure Config where
  kind : Kind
  first : PlainDate
  /-- Exclusive. -/
  last : PlainDate
  who : String
  tz : String
  baseUrl : String
  byName : Bool := true
  /-- GitHub owners whose `owner/repo` mentions in a prompt name the project; empty = none. -/
  owners : Array String := #[]
  now : Int

/-- Action counters, one per column of the report. -/
structure Acts where
  shell : Nat := 0
  edits : Nat := 0
  reads : Nat := 0
  git : Nat := 0
  mcp : Nat := 0
  devinMsgs : Nat := 0
  userMsgs : Nat := 0
  web : Nat := 0
  deriving Repr, Inhabited

namespace Acts
def add (a b : Acts) : Acts :=
  { shell := a.shell + b.shell, edits := a.edits + b.edits, reads := a.reads + b.reads, git := a.git + b.git,
    mcp := a.mcp + b.mcp, devinMsgs := a.devinMsgs + b.devinMsgs, userMsgs := a.userMsgs + b.userMsgs, web := a.web + b.web }
/-- Everything Devin did; the user's own messages are not actions. -/
def total (a : Acts) : Nat := a.shell + a.edits + a.reads + a.git + a.mcp + a.devinMsgs + a.web
def ofType (ty : String) : Option Acts :=
  match ty with
  | "shell_process_started" => some { shell := 1 }
  | "multi_edit_result" => some { edits := 1 }
  | "multi_read_result" => some { reads := 1 }
  | "pr_created" | "git_pr_checks" | "git_comment_on_pr" | "git_view_pr" | "git_update_pr" | "git_ci_job_logs" | "pr_take_over" => some { git := 1 }
  | "mcp_tool_call" => some { mcp := 1 }
  | "devin_message" => some { devinMsgs := 1 }
  | "user_message" | "initial_user_message" => some { userMsgs := 1 }
  | "web_search" | "web_get_contents" | "computer_use" => some { web := 1 }
  | _ => none
def toJson (a : Acts) : Json :=
  Json.mkObj [("shell", a.shell), ("edits", a.edits), ("reads", a.reads), ("git", a.git), ("mcp", a.mcp),
              ("devin_msgs", a.devinMsgs), ("user_msgs", a.userMsgs), ("web", a.web)]
end Acts

structure Pr where
  /-- Unix seconds of the `pr_created` event; unknown (`none`) when the row was rebuilt from the published tables. -/
  ts : Option Int
  day : String
  url : String
  repo : String
  num : Nat
  state : String
  deriving Repr

inductive Scope | inWindow | spills | older
  deriving Repr, BEq

def Scope.key : Scope → String
  | .inWindow => "in" | .spills => "spills" | .older => "older"
def Scope.schema : Scope → AcusScope
  | .inWindow => .inWindow | .spills => .spillsPast | .older => .older
def Scope.mark : Scope → String
  | .inWindow => "" | .spills => " ‡" | .older => " †"

structure Row where
  id : String
  url : String
  title : String
  project : String
  prRepos : Array String
  repos : Array String
  origin : String
  mode : Option String
  parent : Option String
  category : Option String
  status : String
  created : Int
  createdInWindow : Bool
  acus : Float
  scope : Scope
  /-- local day → working seconds -/
  working : Array (String × Int)
  /-- local day → action counts -/
  actions : Array (String × Acts)
  prs : Array Pr
  capped : Bool

/-- Everything a build step needs about the window. -/
structure Ctx where
  cfg : Config
  zr : TimeZone.ZoneRules
  start : Int
  «end» : Int
  now : Int
  /-- When the raw data was read from the Devin API (`Raw.Data.collected`), the report's provenance. -/
  collected : Int
  days : Array String
  label : String
  slug : String

def Ctx.make (cfg : Config) (collected : Int) : IO Ctx := do
  let zr ← Time.zoneRules cfg.tz
  let start := Time.midnight zr cfg.first
  let «end» := Time.midnight zr cfg.last
  let days := (Time.daysBetween cfg.first cfg.last).map Time.isoDate
  let lastDay := Time.addDays cfg.last (-1)
  let label := match cfg.kind with
    | .daily => cfg.first.format "EEEE uuuu-MM-dd"
    | .weekly => s!"week {Time.isoDate cfg.first} → {Time.isoDate lastDay}"
    | .monthly => cfg.first.format "MMMM uuuu"
  let slug := match cfg.kind with
    | .daily => Time.isoDate cfg.first
    | .weekly => s!"{Time.isoDate cfg.first}-week"
    | .monthly => cfg.first.format "uuuu-MM"
  return { cfg, zr, start, «end», now := min «end» cfg.now, collected, days, label, slug }

-- ---------------------------------------------------------------- small helpers

def bump {α : Type} (m : Array (String × α)) (k : String) (dflt : α) (f : α → α) : Array (String × α) :=
  match m.findIdx? (·.1 == k) with
  | some i => m.modify i fun (k, v) => (k, f v)
  | none => m.push (k, f dflt)

def lookup {α : Type} (m : Array (String × α)) (k : String) (dflt : α) : α :=
  ((m.find? (·.1 == k)).map (·.2)).getD dflt

def isWordChar (c : Char) : Bool := c.isAlphanum || c == '_'

/-- `owner/repo` mentions in a text, in order of appearance, owner matched case-insensitively and
    written as configured (`acme/x` matches owner `Acme` and is written `Acme/x`). -/
def repoMentions (owners : Array String) (text : String) : Array String := Id.run do
  let cs := text.toList.toArray
  let canon (o : String) : String := (owners.find? (·.lower == o.lower)).getD o
  let mut out : Array String := #[]
  let mut i := 0
  while i < cs.size do
    let boundary := i == 0 || !isWordChar cs[i-1]! || cs[i-1]! == '@'
    let mut matched := false
    if boundary then
      for o in owners do
        if !matched then
          let n := o.length
          if i + n < cs.size && cs[i+n]! == '/' then
            let seg := String.mk (cs.extract i (i+n)).toList
            if seg.lower == o.lower then
              let mut j := i + n + 1
              while j < cs.size && (isWordChar cs[j]! || cs[j]! == '-' || cs[j]! == '.') do j := j + 1
              let name := (String.mk (cs.extract (i+n+1) j).toList).dropRightWhileC (· == '.')
              if !name.isEmpty then
                out := out.push s!"{canon o}/{name}"
                matched := true
                i := j
    if !matched then i := i + 1
  return out

/-- `https://github.com/owner/repo/pull/12` → `owner/repo` -/
def prRepo (url : String) : Option String := do
  let parts := url.splitOn "/"
  let i ← parts.findIdx? (· == "github.com")
  let owner ← parts[i+1]?
  let repo ← parts[i+2]?
  return s!"{owner}/{repo}"

def prNum (url : String) : Nat :=
  ((url.dropRightWhileC (· == '/')).splitOn "/").getLast!.toNat?.getD 0

def firstUrl (s : String) : Option String :=
  (s.splitOn " ").find? (fun w => w.startsWith "https://" || w.startsWith "http://")

def lastSeg (s : String) : String := (s.splitOn "/").getLast!

/-- `x` with one decimal, like Python's `f"{x:.1f}"` for `x ≥ 0`. -/
def fmt1 (x : Float) : String :=
  let n := (x * 10 + 0.5).floor.toUInt64.toNat
  s!"{n / 10}.{n % 10}"

def commas (n : Nat) : String :=
  let rec go (cs : List Char) (i : Nat) (acc : List Char) : List Char :=
    match cs with
    | [] => acc
    | c :: rest => go rest (i + 1) (if i > 0 && i % 3 == 0 then c :: ',' :: acc else c :: acc)
  String.mk (go (toString n).toList.reverse 0 [])

def hms (sec : Int) : String :=
  let m := sec / 60
  let h := m / 60
  let mm := m % 60
  if h > 0 then s!"{h}h{if mm < 10 then "0" else ""}{mm}" else s!"{mm}m"

def short (x : String) (n : Nat := 80) : String := if x.length ≤ n then x else x.takeN (n - 1) ++ "…"

-- ---------------------------------------------------------------- rows

def project (cfg : Config) (m : Meta) (prompt : String) : String × Array String := Id.run do
  let prRepos := m.prs.filterMap (fun p => prRepo p.url) |>.foldl (fun acc r => if acc.contains r then acc else acc.push r) #[]
  let mentions := repoMentions cfg.owners prompt
  let count (r : String) : Nat := (m.prs.filter fun p => prRepo p.url == some r).size
  let prim :=
    if !prRepos.isEmpty then
      let best := prRepos.foldl (fun b r => max b (count r)) 0
      let cands := prRepos.filter (count · == best)
      match mentions[0]? with
      | some m0 => if cands.contains m0 then m0 else cands[0]!
      | none => cands[0]!
    else match mentions[0]? with
      | some m0 => m0
      | none =>
        let lt := m.title.lower
        if let some i := (prompt.splitOn "@repos:")[1]? then (i.takeWhileC (fun c => !c.isWhitespace))
        else if (lt.splitOn "memory refinement").length > 1 then "(Devin housekeeping)"
        else if (lt.splitOn "blueprint").length > 1 || (lt.splitOn "snapshot").length > 1 then "(Devin environment)"
        else "(no repository)"
  let prim := if cfg.byName then (match prim.splitOn "/" with | _ :: rest@(_ :: _) => String.intercalate "/" rest | _ => prim) else prim
  return (prim, prRepos)

/-- `[working, next non-working)` intervals from the status events; an open interval ends now
    (still working) or at the session's last update. -/
def workingIntervals (ctx : Ctx) (m : Meta) (evs : Array Event) : Array (Int × Int) := Id.run do
  let evs := evs.qsort (fun a b => a.ts < b.ts)
  let mut out : Array (Int × Int) := #[]
  let mut open_ : Option Int := none
  for e in evs do
    let st := (match e.summary.splitOn ":" with | _ :: tl@(_ :: _) => String.intercalate ":" tl | _ => e.summary).trimWs
    if st == "working" then
      if open_.isNone then open_ := some e.ts
    else if let some a := open_ then
      out := out.push (a, e.ts); open_ := none
  if let some a := open_ then
    let e := if (m.status.splitOn "working").length > 1 then ctx.now else m.updated
    out := out.push (a, max a e)
  return out

/-- Seconds per local day, clipped to the window. -/
def perDay (ctx : Ctx) (ivs : Array (Int × Int)) : Array (String × Int) := Id.run do
  let mut res : Array (String × Int) := #[]
  for (a, b) in ivs do
    let mut t := max a ctx.start
    let b := min b ctx.«end»
    while t < b do
      let d := Time.localDate ctx.zr t
      let nxt := Time.midnight ctx.zr (Time.addDays d 1)
      let e := min b nxt
      res := bump res (Time.isoDate d) 0 (· + (e - t))
      t := e
  return res

def row (ctx : Ctx) (s : Raw.Session) : Option Row := do
  let m ← parseMeta s.search
  let statusEvs := events s.status
  let prompt := ((statusEvs.find? (·.type == "initial_user_message")).map (·.summary)).getD ""
  let (prim, prRepos) := project ctx.cfg m prompt
  let working := perDay ctx (workingIntervals ctx m (statusEvs.filter fun e => e.type == "status_update" || e.type == "devin_suspended"))
  let actions := (events s.actions).foldl (init := (#[] : Array (String × Acts))) fun acc e =>
    match Acts.ofType e.type with
    | some a =>
      let day := Time.isoDate (Time.localDate ctx.zr e.ts)
      if ctx.days.contains day then bump acc day {} (·.add a) else acc
    | none => acc
  let states := m.prs.map fun p => (p.url, p.state)
  let prs := (events s.prs).filterMap fun e =>
    if e.type != "pr_created" || e.ts < ctx.start || e.ts ≥ ctx.«end» then none else
    (firstUrl e.summary).map fun url =>
      { ts := some e.ts, day := Time.isoDate (Time.localDate ctx.zr e.ts), url, repo := (prRepo url).getD "?", num := prNum url,
        state := lookup states url "?" : Pr }
  let createdInWindow := ctx.start ≤ m.created && m.created < ctx.«end»
  let scope := if m.created < ctx.start then Scope.older
    else if m.updated ≥ ctx.«end» || (m.status.splitOn "running").length > 1 then Scope.spills else Scope.inWindow
  let mention := (repoMentions ctx.cfg.owners prompt)[0]?
  let repos := (match mention with | some r => if prRepos.contains r then prRepos else prRepos.push r | none => prRepos).qsort (· < ·)
  let capped := s.error.isSome || !(complete s.status && complete s.prs && complete s.actions)
  let wsum : Int := working.foldl (fun a (_, v) => a + v) 0
  let anyAct := actions.any fun (_, a) => a.total > 0
  guard (createdInWindow || wsum ≥ 60 || anyAct || !prs.isEmpty)
  return { id := m.id, url := ctx.cfg.baseUrl ++ m.id, title := m.title, project := prim, prRepos, repos,
           origin := m.origin.getD "unknown", mode := m.mode, parent := m.parent, category := m.category, status := m.status,
           created := m.created, createdInWindow, acus := m.acus, scope, working, actions, prs, capped }

def rows (ctx : Ctx) (d : Raw.Data) : Array Row :=
  (d.sessions.filterMap (row ctx)).qsort fun a b => a.project < b.project || (a.project == b.project && a.acus > b.acus)

-- ---------------------------------------------------------------- aggregation over a set of days

abbrev DaySel := String → Bool
def allDays : DaySel := fun _ => true
def oneDay (d : String) : DaySel := (· == d)

def Row.wsum (r : Row) (sel : DaySel) : Int := r.working.foldl (fun a (k, v) => if sel k then a + v else a) 0
def Row.asum (r : Row) (sel : DaySel) : Acts := r.actions.foldl (fun a (k, v) => if sel k then a.add v else a) {}
def Row.prsIn (r : Row) (sel : DaySel) : Array Pr := r.prs.filter fun p => sel p.day
def Row.workingOn (r : Row) (day : String) : Int := lookup r.working day 0

def groupBy (rs : Array Row) : Array (String × Array Row) :=
  rs.foldl (init := #[]) fun acc r => bump acc r.project #[] (·.push r)

def groupedBy (rs : Array Row) (sel : DaySel) : Array (String × Array Row) :=
  (groupBy rs).qsort fun (_, a) (_, b) => (a.foldl (fun s r => s + r.wsum sel) 0) > (b.foldl (fun s r => s + r.wsum sel) 0)

def sumW (g : Array Row) (sel : DaySel) : Int := g.foldl (fun s r => s + r.wsum sel) 0
def sumAcus (g : Array Row) (sc : Scope) : Float := g.foldl (fun s r => if r.scope == sc then s + r.acus else s) 0.0

-- ---------------------------------------------------------------- tables (the YAML export)

def tables (ctx : Ctx) (rs : Array Row) : Tables :=
  let byp := groupedBy rs allDays
  let iso := Time.isoDateTime ctx.zr
  let acts (a : Acts) := a
  { report := { kind := ctx.cfg.kind, slug := some ctx.slug, label := ctx.label, who := ctx.cfg.who, timezone := ctx.cfg.tz, start := iso ctx.start,
                «end» := iso ctx.«end», generated := iso ctx.collected, days := ctx.days, sessions := rs.size, projects := byp.size }
    project_totals := byp.map fun (p, g) =>
      { project := p, sessions := g.size, sessions_created := (g.filter (·.createdInWindow)).size,
        working_seconds := (sumW g allDays).toNat, acus_in_window := sumAcus g .inWindow, acus_spilling := sumAcus g .spills,
        acus_older := sumAcus g .older, actions := g.foldl (fun s r => s + (r.asum allDays).total) 0,
        actions_capped := g.any (·.capped), prs_opened := g.foldl (fun s r => s + (r.prsIn allDays).size) 0 }
    working_by_day := ((groupBy rs).qsort (fun a b => a.1 < b.1)).flatMap fun (p, g) =>
      ctx.days.filterMap fun d =>
        let w := g.foldl (fun s r => s + r.workingOn d) 0
        if w ≥ 1 then some { project := p, day := d, working_seconds := w.toNat } else none
    sessions := rs.map fun r =>
      let a := acts (r.asum allDays)
      { session_id := r.id, url := r.url, title := r.title, project := r.project, repos := r.repos, origin := r.origin,
        parent_session_id := r.parent, mode := r.mode, category := r.category, status := r.status, created := iso r.created,
        created_in_window := r.createdInWindow, acus := r.acus, acus_scope := r.scope.schema,
        working_seconds := (r.wsum allDays).toNat, shell := a.shell, edits := a.edits, reads := a.reads, git := a.git, mcp := a.mcp,
        devin_messages := a.devinMsgs, user_messages := a.userMsgs, web := a.web, actions_capped := r.capped,
        prs_opened := (r.prsIn allDays).map fun p => { url := p.url, repo := p.repo, number := p.num, state := p.state, day := p.day } }
    session_days := rs.flatMap fun r => ctx.days.filterMap fun d =>
      let a := r.asum (oneDay d)
      let w := r.workingOn d
      let n := (r.prsIn (oneDay d)).size
      if w ≥ 1 || a.total > 0 || a.userMsgs > 0 || n > 0 then
        some { day := d, session_id := r.id, project := r.project, working_seconds := w.toNat, shell := a.shell, edits := a.edits,
               reads := a.reads, git := a.git, mcp := a.mcp, devin_messages := a.devinMsgs, user_messages := a.userMsgs, web := a.web,
               prs_opened := n }
      else none }

-- ---------------------------------------------------------------- report JSON (for body.html)

def Row.toJson (r : Row) : Json :=
  Json.mkObj [
    ("id", r.id), ("url", r.url), ("title", r.title), ("project", r.project),
    ("repos", Lean.toJson r.repos), ("origin", r.origin), ("mode", Lean.toJson r.mode), ("parent", Lean.toJson r.parent),
    ("category", Lean.toJson r.category), ("status", r.status), ("created", r.created), ("created_in_window", r.createdInWindow),
    ("acus", Lean.toJson r.acus), ("acus_scope", r.scope.key),
    ("working", Json.mkObj (r.working.toList.map fun (k, v) => (k, Lean.toJson v))),
    ("actions_by_day", Json.mkObj (r.actions.toList.map fun (k, v) => (k, v.toJson))),
    ("prs_created", Json.arr (r.prs.map fun p => Json.mkObj [("ts", Lean.toJson p.ts), ("day", p.day), ("url", p.url), ("repo", p.repo), ("num", p.num), ("state", p.state)])),
    ("actions_capped", r.capped)]

def Acts.toJsonTable (a : Acts) : List (String × Json) :=
  [("shell", Lean.toJson a.shell), ("edits", Lean.toJson a.edits), ("reads", Lean.toJson a.reads), ("git", Lean.toJson a.git),
   ("mcp", Lean.toJson a.mcp), ("devin_messages", Lean.toJson a.devinMsgs), ("user_messages", Lean.toJson a.userMsgs), ("web", Lean.toJson a.web)]

/-- The five tables as JSON, field for field what the YAML export writes. -/
def tablesJson (t : Tables) : Json :=
  let h := t.report
  let kind := match h.kind with | .daily => "daily" | .weekly => "weekly" | .monthly => "monthly"
  let scope := fun | AcusScope.inWindow => "inWindow" | .spillsPast => "spillsPast" | .older => "older"
  Json.mkObj [
    ("report", Json.mkObj [("kind", kind), ("label", h.label), ("who", h.who), ("timezone", h.timezone), ("start", h.start),
      ("end", h.«end»), ("generated", h.generated), ("days", Lean.toJson h.days), ("sessions", h.sessions), ("projects", h.projects)]),
    ("project_totals", Json.arr (t.project_totals.map fun p => Json.mkObj [("project", p.project), ("sessions", p.sessions),
      ("sessions_created", p.sessions_created), ("working_seconds", p.working_seconds), ("acus_in_window", Lean.toJson p.acus_in_window),
      ("acus_spilling", Lean.toJson p.acus_spilling), ("acus_older", Lean.toJson p.acus_older), ("actions", p.actions),
      ("actions_capped", p.actions_capped), ("prs_opened", p.prs_opened)])),
    ("working_by_day", Json.arr (t.working_by_day.map fun w => Json.mkObj [("project", w.project), ("day", w.day), ("working_seconds", w.working_seconds)])),
    ("sessions", Json.arr (t.sessions.map fun s => Json.mkObj (([("session_id", s.session_id), ("url", s.url), ("title", s.title),
      ("project", s.project), ("repos", Lean.toJson s.repos), ("origin", s.origin), ("parent_session_id", Lean.toJson s.parent_session_id),
      ("mode", Lean.toJson s.mode), ("status", s.status), ("created", s.created), ("created_in_window", s.created_in_window),
      ("acus", Lean.toJson s.acus), ("acus_scope", scope s.acus_scope), ("working_seconds", s.working_seconds)] : List (String × Json)) ++
      Acts.toJsonTable { shell := s.shell, edits := s.edits, reads := s.reads, git := s.git, mcp := s.mcp, devinMsgs := s.devin_messages, userMsgs := s.user_messages, web := s.web } ++
      [("actions_capped", Lean.toJson s.actions_capped),
       ("prs_opened", Json.arr (s.prs_opened.map fun p => Json.mkObj [("url", p.url), ("repo", p.repo), ("number", p.number), ("state", p.state), ("day", p.day)]))]))),
    ("session_days", Json.arr (t.session_days.map fun d => Json.mkObj (([("day", d.day), ("session_id", d.session_id), ("project", d.project),
      ("working_seconds", d.working_seconds)] : List (String × Json)) ++
      Acts.toJsonTable { shell := d.shell, edits := d.edits, reads := d.reads, git := d.git, mcp := d.mcp, devinMsgs := d.devin_messages, userMsgs := d.user_messages, web := d.web } ++
      [("prs_opened", Lean.toJson d.prs_opened)])))]

/-- `report-<slug>.json`: the window and the per-session `rows`, for `body.html`. -/
def reportJson (ctx : Ctx) (rs : Array Row) : Json :=
  Json.mkObj [("kind", match ctx.cfg.kind with | .daily => "daily" | .weekly => "weekly" | .monthly => "monthly"),
    ("label", ctx.label), ("who", ctx.cfg.who), ("tz", ctx.cfg.tz), ("start", ctx.start), ("end", ctx.«end»), ("now", ctx.now),
    ("days", Lean.toJson ctx.days), ("rows", Json.arr (rs.map Row.toJson))]

/-- `tables-<slug>.json`: the five tables, the input of `session-report yaml`. -/
def tablesFileJson (t : Tables) : Json := Json.mkObj [("tables", tablesJson t)]

-- ---------------------------------------------------------------- Markdown

def actsStr (a : Acts) : String :=
  s!"{a.shell} sh / {a.edits} ed / {a.reads} rd / {a.git} git / {a.mcp} mcp / {a.devinMsgs}+{a.userMsgs} msg"

def kindOf (r : Row) : String := match r.parent with | some p => s!"child of {p.takeN 8}" | none => r.origin

def prMd (ps : Array Pr) (proj : String) : String :=
  String.intercalate ", " (ps.toList.map fun p =>
    let pre := if lastSeg p.repo == lastSeg proj then "" else lastSeg p.repo ++ " "
    s!"[{pre}#{p.num}]({p.url}) {p.state}")

def sessionTable (ctx : Ctx) (rs : Array Row) (proj : String) (sel : DaySel) (head : String) : Array String := Id.run do
  let mut out := #[s!"| Session | Repos | Kind | Mode | Created | Status | Working ({head}) | ACUs | Actions ({head}) | PRs opened ({head}) |",
                   "|---|---|---|---|---|---|---|---|---|---|"]
  let sorted := rs.qsort fun a b =>
    let pa := a.parent.getD ""; let pb := b.parent.getD ""
    pa < pb || (pa == pb && a.wsum sel > b.wsum sel)
  for r in sorted do
    let acu := fmt1 r.acus ++ r.scope.mark
    out := out.push s!"| [{short r.title}]({r.url}) | {String.intercalate ", " r.repos.toList} | {kindOf r} | {r.mode.getD "?"} | {Time.fmt ctx.zr r.created "MM-dd HH:mm"} | {r.status} | {hms (r.wsum sel)} | {acu} | {if r.capped then "≥" else ""}{actsStr (r.asum sel)} | {prMd (r.prsIn sel) proj} |"
  return out

def plural (n : Nat) : String := if n == 1 then "" else "s"

def daySection (ctx : Ctx) (rs : Array Row) (day : PlainDate) (level : String) : Array String := Id.run do
  let iso := Time.isoDate day
  let sel := oneDay iso
  let active := rs.filter fun r => r.workingOn iso ≥ 60 || (r.asum sel).total > 0 || !(r.prsIn sel).isEmpty
  let mut out := #[s!"{level} {day.format "EEEE uuuu-MM-dd"}\n"]
  if active.isEmpty then return out.push "_No session activity._\n"
  let groups := groupedBy active sel
  out := out.push s!"{active.size} sessions across {groups.size} projects, {hms (sumW active sel)} of working time, {active.foldl (fun s r => s + (r.prsIn sel).size) 0} PRs opened.\n"
  for (proj, g) in groups do
    out := out.push s!"{level}# {proj} — {g.size} session{plural g.size}, {hms (sumW g sel)} working\n"
    out := out ++ sessionTable ctx g proj sel "day" ++ #[""]
  return out

def markdown (ctx : Ctx) (rs : Array Row) : String := Id.run do
  let mut L : Array String := #[
    s!"# Devin session report — {ctx.label}\n",
    s!"Sessions of {ctx.cfg.who} created or active between {Time.fmt ctx.zr ctx.start "EEE uuuu-MM-dd HH:mm"} and {Time.fmt ctx.zr ctx.now "EEE uuuu-MM-dd HH:mm"} ({ctx.cfg.tz}): {rs.size} sessions.\n",
    "How to read the numbers:\n",
    "- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.",
    "- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.",
    "- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.",
    "- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.",
    "- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.\n"]
  let days := Time.daysBetween ctx.cfg.first ctx.cfg.last
  match ctx.cfg.kind with
  | .daily => L := L ++ daySection ctx rs ctx.cfg.first "##"
  | _ =>
    let groups := groupedBy rs allDays
    L := L.push s!"## Per-project totals ({ctx.label})\n"
    L := L.push "| Project | Sessions (created in window) | Working time | ACUs (sessions fully in window) | ACUs ‡ (created in window, still active after) | ACUs † (older sessions, lifetime) | Actions | PRs opened |"
    L := L.push "|---|---|---|---|---|---|---|---|"
    for (proj, g) in groups do
      let new := (g.filter (·.createdInWindow)).size
      let acts := g.foldl (fun s r => s + (r.asum allDays).total) 0
      L := L.push s!"| **{proj}** | {g.size} ({new}) | {hms (sumW g allDays)} | {fmt1 (sumAcus g .inWindow)} | {fmt1 (sumAcus g .spills)} | {fmt1 (sumAcus g .older)} | {commas acts}{if g.any (·.capped) then "≥" else ""} | {g.foldl (fun s r => s + (r.prsIn allDays).size) 0} |"
    L := L.push ""
    -- period columns: days for a week, ISO weeks for a month
    let cols : Array (String × DaySel) :=
      if days.size ≤ 10 then days.map fun d => (d.format "EEE dd", oneDay (Time.isoDate d))
      else
        let wk := days.foldl (init := (#[] : Array (String × Array String))) fun acc d =>
          bump acc s!"wk {Time.isoWeek d}" #[] (·.push (Time.isoDate d))
        wk.map fun (k, ds) => (k, fun d => ds.contains d)
    L := L.push s!"## Working time per project per {if days.size ≤ 10 then "day" else "ISO week"} (hours)\n"
    L := L.push ("| Project | " ++ String.intercalate " | " (cols.toList.map (·.1)) ++ " | Total |")
    L := L.push ("|---|" ++ String.join (List.replicate (cols.size + 1) "---|"))
    for (proj, g) in groups do
      let cells := cols.map fun (_, sel) => (Float.ofInt (sumW g sel)) / 3600
      L := L.push s!"| {proj} | {String.intercalate " | " (cells.toList.map fun c => if c ≥ 0.05 then fmt1 c else "·")} | {fmt1 (cells.foldl (· + ·) 0)} |"
    L := L.push ""
    L := L.push "## Sessions by project\n"
    for (proj, g) in groups do
      L := L.push s!"### {proj} — {g.size} session{plural g.size}, {hms (sumW g allDays)} working\n"
      L := L ++ sessionTable ctx g proj allDays "window" ++ #[""]
    L := L.push "## Day by day\n"
    for d in days do L := L ++ daySection ctx rs d "###"
  return String.intercalate "\n" L.toList

end SessionReport.Build
