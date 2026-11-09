module

public import SessionReport.Build

@[expose] public section

/-!
# `session-report filter` — a report over a subset of the projects, from the published tables

Reads a report's five YAML tables (`reports/<slug>/`, or the `tables-<slug>.json` of `build`), keeps the
sessions of the requested projects, and renders the same artifacts as `build` — Markdown, the report JSON
for the HTML, the tables JSON and the five YAML tables — with every total recomputed over the kept sessions.
No `raw.json` is needed: the rows the builder renders from are reconstructed from `sessions` + `session_days`.
-/

namespace SessionReport.Filter

open Build Std.Time L4YAML L4YAML.Schema

/-- `2026-11-09T07:50:59-08:00` → unix seconds. -/
def parseIso (s : String) : Option Int :=
  (DateTime.fromISO8601String s).toOption.map fun d => d.toTimestamp.toSecondsSinceUnixEpoch.toInt

def scopeOf : AcusScope → Scope
  | .inWindow => .inWindow | .spillsPast => .spills | .older => .older

def actsOf (d : SessionDay) : Acts :=
  { shell := d.shell, edits := d.edits, reads := d.reads, git := d.git, mcp := d.mcp,
    devinMsgs := d.devin_messages, userMsgs := d.user_messages, web := d.web }

/-- The builder's row of one published session: per-day working time and actions come from `session_days`. -/
def rowOf (days : Array SessionDay) (s : Session) : Row :=
  let mine := days.filter (·.session_id == s.session_id)
  let prs := s.prs_opened.map fun p =>
    { ts := none, day := p.day, url := p.url, repo := p.repo, num := p.number, state := p.state }
  { id := s.session_id, url := s.url, title := s.title, project := s.project,
    prRepos := prs.foldl (fun acc p => if acc.contains p.repo then acc else acc.push p.repo) #[],
    repos := s.repos, origin := s.origin, mode := s.mode, parent := s.parent_session_id, category := s.category,
    status := s.status, created := (parseIso s.created).getD 0, createdInWindow := s.created_in_window,
    acus := s.acus, scope := scopeOf s.acus_scope,
    working := (mine.filter (·.working_seconds > 0)).map fun d => (d.day, (d.working_seconds : Int)),
    actions := mine.map fun d => (d.day, actsOf d),
    prs, capped := s.actions_capped }

/-- The builder's context of a published report; `baseUrl`/`owners` are irrelevant (rows are not recomputed).
    `now` is the collection time, clamped to the window end by `Ctx.make` as in `build`, so a report collected
    mid-window keeps saying so. -/
def ctxOf (t : Tables) : IO Ctx := do
  let h := t.report
  let some first := h.days[0]? >>= Time.parseDate | throw (IO.userError "report.days is empty")
  let some lastDay := h.days.back? >>= Time.parseDate | throw (IO.userError "report.days is empty")
  let some collected := parseIso h.generated | throw (IO.userError s!"report.generated: not an ISO-8601 date-time: {h.generated}")
  let cfg : Config := { kind := h.kind, first, last := Time.addDays lastDay 1, who := h.who, tz := h.timezone,
                        baseUrl := "", now := collected }
  Ctx.make cfg collected

/-- A requested name selects a project by its full name or its last path segment (`nasa-jpl/L4YAML` ~ `L4YAML`). -/
def selects (wanted : Array String) (project : String) : Bool :=
  wanted.any fun w => w == project || lastSeg w == project || w == lastSeg project

structure Result where
  ctx : Ctx
  rows : Array Row
  /-- Requested names that matched no project of the report. -/
  unmatched : Array String

/-- Keep the sessions of `projects`; the label carries the selection and the slug is `<input slug>-<name>`,
    the input slug being the header's (so filtering a filtered report nests names) or, for reports written
    before the header had one, the period's. -/
def run (t : Tables) (projects : Array String) (name : String) : IO Result := do
  let ctx ← ctxOf t
  let all := t.sessions.map (rowOf t.session_days)
  let rows := all.filter fun r => selects projects r.project
  let unmatched := projects.filter fun p => !all.any fun r => selects #[p] r.project
  let kept := (groupBy rows).map (·.1)
  let label := s!"{ctx.label}, projects: {String.intercalate ", " kept.toList}"
  let base := t.report.slug.getD ctx.slug
  return { ctx := { ctx with label, slug := s!"{base}-{name}" }, rows, unmatched }

end SessionReport.Filter
