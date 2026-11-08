module

public import Curl
public import SessionReport.Str

@[expose] public section

/-! Minimal HTTPS GET on leanCurl: status + body, bearer auth, bounded retries on 429/5xx/transport errors. -/

namespace SessionReport.Http

open Curl

structure Response where
  status : Nat
  body : String

def Response.ok (r : Response) : Bool := 200 ≤ r.status && r.status < 300

/-- Status of the last response in the header stream (redirects leave several). -/
def lastStatus (hdrs : String) : Option Nat :=
  (getHeaderData hdrs).head?.map (·.status)

def getOnce (url : String) (headers : Array String) (timeoutSec : UInt64 := 120) : IO Response := do
  let bodyRef ← IO.mkRef ({} : IO.FS.Stream.Buffer)
  let hdrRef ← IO.mkRef ({} : IO.FS.Stream.Buffer)
  let h ← curl_easy_init
  curl_set_option h (.URL url)
  curl_set_option h (.HTTPHEADER headers)
  curl_set_option h (.FOLLOWLOCATION 1)
  curl_set_option h (.MAXREDIRS 5)
  EIO.toIO (fun c => IO.userError s!"curl option TIMEOUT: code {c}") (Curl.Extern.curl_easy_setopt_long h 13 timeoutSec)
  curl_set_option h (.WRITEDATA bodyRef)
  curl_set_option h (.WRITEFUNCTION Curl.writeBytes)
  curl_set_option h (.HEADERDATA hdrRef)
  curl_set_option h (.HEADERFUNCTION Curl.writeBytes)
  curl_easy_perform h
  let hdrs := String.fromUTF8! (← hdrRef.get).data
  let some status := lastStatus hdrs | throw (IO.userError s!"GET {url}: no HTTP status line")
  return { status, body := String.fromUTF8! (← bodyRef.get).data }

/-- GET with up to `attempts` tries; 429 and 5xx (and transport errors) are retried after a growing pause. -/
def get (url : String) (headers : Array String) (attempts : Nat := 5) : IO Response := do
  let mut last : Option Response := none
  for i in [0:attempts] do
    let r? ← (do pure (some (← getOnce url headers))) <|> (pure none)
    match r? with
    | some r =>
      if r.status == 429 || r.status ≥ 500 then
        last := some r
        IO.sleep (UInt32.ofNat (1000 * (2 ^ i)))
      else return r
    | none =>
      IO.sleep (UInt32.ofNat (1000 * (2 ^ i)))
  match last with
  | some r => return r
  | none => throw (IO.userError s!"GET {url}: no response after {attempts} attempts")

end SessionReport.Http
