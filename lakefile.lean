import Lake
open Lake DSL

package «devin-automation» where
  leanOptions := #[⟨`autoImplicit, false⟩]

require L4YAML from git
  "https://github.com/nasa-jpl/L4YAML.git" @ "86647c21e58365ad5c033f5c45a7d042dcf6dadd"

@[default_target]
lean_lib SessionReport where
  requiresModuleSystem := true

@[default_target]
lean_exe «session-report» where
  root := `SessionReport.Main
