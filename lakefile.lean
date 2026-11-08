import Lake
open Lake DSL

package «devin-automation» where
  leanOptions := #[⟨`autoImplicit, false⟩]

require L4YAML from git
  "https://github.com/nasa-jpl/L4YAML.git" @ "86647c21e58365ad5c033f5c45a7d042dcf6dadd"

-- libcurl bindings for the collector (`session-report collect` calls the Devin REST API).
-- Upstream carries the `module` headers this package's `requiresModuleSystem` needs.
require Curl from git
  "https://github.com/bergmannjg/leanCurl.git" @ "efda740d82d4b5ef6b18ded27b103127e40d77aa"

/-- leanCurl's `extern_lib` wraps libcurl but does not link it; the system library is linked here
by full path (`-K libcurl=<path>` overrides). -/
def libcurlSharedLib : String :=
  (get_config? libcurl).getD "/usr/lib/x86_64-linux-gnu/libcurl.so.4"

@[default_target]
lean_lib SessionReport where
  requiresModuleSystem := true

@[default_target]
lean_exe «session-report» where
  root := `SessionReport.Main
  moreLinkArgs := #[libcurlSharedLib]
