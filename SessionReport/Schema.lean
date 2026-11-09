module

public import L4YAML.Schema.Api
public import L4YAML.Schema.Deriving

@[expose] public section

/-!
# Session report — table schemas

One Lean structure per table of the Devin session report.  These types ARE the
schema: a table is valid exactly when `FromYaml` decodes it, and the exported
YAML is whatever `ToYaml` writes (YAML 1.2.2 Core Schema scalars: `!!str`,
`!!int`, `!!float`, `!!bool`, `!!null`).  The human-readable description of each
table lives in `schemas/session-report/*.yaml` and must stay in step with this file.
-/

namespace SessionReport

/-- Which window the report covers. -/
inductive Kind | daily | weekly | monthly
  deriving Repr, BEq, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- How a session's lifetime ACU total relates to the window: entirely inside it,
    created inside it but still active afterwards, or created before it. -/
inductive AcusScope | inWindow | spillsPast | older
  deriving Repr, BEq, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- Table `report`: the window and its provenance. -/
structure Header where
  kind : Kind
  /-- Directory name of the report (`2026-11-02-week`, `2026-11-02-week-lean` once filtered); absent in reports written before it existed. -/
  slug : Option String
  label : String
  who : String
  timezone : String
  start : String
  «end» : String
  generated : String
  days : Array String
  sessions : Nat
  projects : Nat
  deriving Repr, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- Table `project_totals`: one row per project. -/
structure ProjectTotal where
  project : String
  sessions : Nat
  sessions_created : Nat
  working_seconds : Nat
  acus_in_window : Float
  acus_spilling : Float
  acus_older : Float
  actions : Nat
  actions_capped : Bool
  prs_opened : Nat
  deriving Repr, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- Table `working_by_day`: one row per (project, day) with any working time. -/
structure WorkingByDay where
  project : String
  day : String
  working_seconds : Nat
  deriving Repr, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- A pull request opened inside the window. -/
structure PullRequest where
  url : String
  repo : String
  number : Nat
  state : String
  day : String
  deriving Repr, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- Table `sessions`: one row per session active in the window. -/
structure Session where
  session_id : String
  url : String
  title : String
  project : String
  repos : Array String
  origin : String
  parent_session_id : Option String
  mode : Option String
  /-- The session's category as reported by the API, when it has one. -/
  category : Option String
  status : String
  created : String
  created_in_window : Bool
  acus : Float
  acus_scope : AcusScope
  working_seconds : Nat
  shell : Nat
  edits : Nat
  reads : Nat
  git : Nat
  mcp : Nat
  devin_messages : Nat
  user_messages : Nat
  web : Nat
  actions_capped : Bool
  prs_opened : Array PullRequest
  deriving Repr, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- Table `session_days`: one row per (session, day) with activity. -/
structure SessionDay where
  day : String
  session_id : String
  project : String
  working_seconds : Nat
  shell : Nat
  edits : Nat
  reads : Nat
  git : Nat
  mcp : Nat
  devin_messages : Nat
  user_messages : Nat
  web : Nat
  prs_opened : Nat
  deriving Repr, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- The `tables` object inside `tables-<slug>.json` (written by `session-report build`). -/
structure Tables where
  report : Header
  project_totals : Array ProjectTotal
  working_by_day : Array WorkingByDay
  sessions : Array Session
  session_days : Array SessionDay
  deriving Repr, L4YAML.Schema.FromYaml, L4YAML.Schema.ToYaml

/-- `tables-<slug>.json` as a whole. -/
structure ReportFile where
  tables : Tables
  deriving L4YAML.Schema.FromYaml

end SessionReport

end
