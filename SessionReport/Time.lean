module

public import Std.Time

@[expose] public section

/-! Time helpers: unix seconds ⇄ local dates in an IANA timezone (via `Std.Time`). -/

namespace SessionReport.Time

open Std.Time

/-- Zone rules for an IANA name, from the system tz database. -/
def zoneRules (tz : String) : IO TimeZone.ZoneRules := Database.defaultGetZoneRules tz

def ofUnix (zr : TimeZone.ZoneRules) (secs : Int) : DateTime :=
  DateTime.ofTimestamp (Timestamp.ofSecondsSinceUnixEpoch (Second.Offset.ofInt secs)) zr

/-- Local midnight of a date, in unix seconds. -/
def midnight (zr : TimeZone.ZoneRules) (d : PlainDate) : Int :=
  (d.toTimestamp zr).toSecondsSinceUnixEpoch.toInt

def localDate (zr : TimeZone.ZoneRules) (secs : Int) : PlainDate := (ofUnix zr secs).toPlainDateTime.date

def isoDate (d : PlainDate) : String := d.format "uuuu-MM-dd"

/-- `2026-11-08T13:30:30-08:00` -/
def isoDateTime (zr : TimeZone.ZoneRules) (secs : Int) : String :=
  (ofUnix zr secs).format "uuuu-MM-dd'T'HH:mm:ssxxx"

def fmt (zr : TimeZone.ZoneRules) (secs : Int) (pattern : String) : String := (ofUnix zr secs).format pattern

/-- Parse `YYYY-MM-DD HH:MM:SS` (UTC) into unix seconds. -/
def parseUtc (s : String) : Option Int := do
  let pdt ← (PlainDateTime.parse (s.replace " " "T")).toOption
  return (pdt.toTimestampWithZone TimeZone.UTC).toSecondsSinceUnixEpoch.toInt

def parseDate (s : String) : Option PlainDate := (PlainDate.fromSQLDateString s).toOption

def addDays (d : PlainDate) (n : Int) : PlainDate := d.addDays (Day.Offset.ofInt n)

/-- Days `[d0, d1)`. -/
def daysBetween (d0 d1 : PlainDate) : Array PlainDate := Id.run do
  let mut out := #[]
  let mut d := d0
  while compare d d1 == .lt do
    out := out.push d
    d := addDays d 1
  return out

def isoWeek (d : PlainDate) : Nat := d.weekOfYear.toNat

end SessionReport.Time
