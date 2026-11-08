module

public import L4YAML.Schema.Api
public import L4YAML.Schema.Deriving
public import SessionReport.Time
public import SessionReport.Str

@[expose] public section

/-!
# Raw collector output

`session-report/collect.py` only pages two Devin tools and saves their text verbatim; this module
decodes that file (`raw.json`, read as YAML) and parses the two line formats:

* session search: `- <id> | <title> | key=value | … | pull_requests=url[state],…`
* session event:  `[event-…] YYYY-MM-DD HH:MM:SS UTC >>> <type> (<category>): <summary>`
-/

namespace SessionReport.Raw

/-- One paginated tool listing; `complete = false` when a page failed or the page cap was hit. -/
structure Pages where
  lines : Array String
  complete : Bool
  deriving L4YAML.Schema.FromYaml

structure Session where
  id : String
  search : String
  status : Option Pages
  prs : Option Pages
  actions : Option Pages
  error : Option String
  deriving L4YAML.Schema.FromYaml

structure Data where
  start : Int
  «end» : Int
  user : String
  tz : String
  collected : Int
  sessions : Array Session
  deriving L4YAML.Schema.FromYaml

/-- `[event-…] 2026-11-08 20:27:03 UTC >>> status_update (status): status: working` -/
structure Event where
  ts : Int
  type : String
  summary : String
  deriving Repr

def parseEvent (line : String) : Option Event := do
  guard (line.startsWith "[event-")
  let afterId := String.intercalate "] " ((line.splitOn "] ").drop 1)
  guard (afterId.length > 24)
  let tsStr := afterId.takeN 19
  let ts ← Time.parseUtc tsStr
  let rest := afterId.dropN 19
  guard (rest.startsWith " UTC ")
  let rest := rest.dropN 9   -- " UTC >>> "
  let ty := rest.takeWhileC (· != ' ')
  let rest := (rest.dropN ty.length)
  let summary := match rest.splitOn "): " with
    | _ :: tl => String.intercalate "): " tl
    | [] => ""
  return { ts, type := ty, summary }

/-- Pull request URL and its state as the search tool prints them: `url[state]`. -/
structure PrRef where
  url : String
  state : String
  deriving Repr, BEq

/-- Fields of one session-search line. -/
structure Meta where
  id : String
  title : String
  status : String
  created : Int
  updated : Int
  mode : Option String
  origin : Option String
  category : Option String
  parent : Option String
  acus : Float
  prs : Array PrRef
  deriving Repr

/-- `4.96`, `43`, `5e-05`, `-1.5` → Float (decimal notation, optional exponent). -/
def parseFloat? (s : String) : Option Float := do
  let (neg, s) := if s.startsWith "-" then (true, s.dropN 1) else (false, s)
  let (mant, exp) := match s.splitOn "e" with
    | [m] => (m, "0")
    | [m, e] => (m, e)
    | _ => ("", "")
  let (ip, fp) := match mant.splitOn "." with
    | [i] => (i, "")
    | [i, f] => (i, f)
    | _ => ("", "")
  guard (ip.allC Char.isDigit && fp.allC Char.isDigit && ip.length + fp.length > 0)
  let digits ← (ip ++ fp).toNat?
  let e ← (if exp.startsWith "-" then (exp.dropN 1).toInt?.map (- ·) else if exp.startsWith "+" then (exp.dropN 1).toInt? else exp.toInt?)
  let scale : Int := e - fp.length
  let v := if scale >= 0 then Float.ofScientific digits false scale.toNat else Float.ofScientific digits true (-scale).toNat
  return if neg then -v else v

def parsePrs (s : String) : Array PrRef :=
  (s.splitOn ",").toArray.filterMap fun item =>
    let item := item.trimWs
    match item.splitOn "[" with
    | [url, st] => if st.endsWith "]" then some { url, state := st.dropRightN 1 } else some { url, state := "?" }
    | [url] => if url.isEmpty then none else some { url, state := "?" }
    | _ => none

def parseMeta (line : String) : Option Meta := do
  guard (line.startsWith "- ")
  let parts := (line.dropN 2).splitOn " | " |>.map String.trimWs
  match parts with
  | id :: title :: kvs =>
    let kv (k : String) : Option String :=
      kvs.findSome? fun p => if p.startsWith (k ++ "=") then some (p.dropN (k.length + 1)) else none
    let created ← (kv "created").bind String.toInt?
    let updated := (kv "updated").bind String.toInt? |>.getD created
    return { id, title, status := (kv "status").getD "", created, updated, mode := kv "devin_mode", origin := kv "origin",
             category := kv "category", parent := kv "parent_session_id",
             acus := (kv "acus_consumed").bind parseFloat? |>.getD 0.0,
             prs := (kv "pull_requests").map parsePrs |>.getD #[] }
  | _ => none

def events (p : Option Pages) : Array Event := (p.map (·.lines)).getD #[] |>.filterMap parseEvent

def complete (p : Option Pages) : Bool := (p.map (·.complete)).getD false

end SessionReport.Raw
