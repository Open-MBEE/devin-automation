# Session report — table schemas

Each `*.yaml` file here describes one table of the Devin session report: its rows,
each field's YAML 1.2.2 Core Schema type (`!!str`, `!!int`, `!!float`, `!!bool`,
`!!null`, `!!seq`, `!!map`) and meaning. The executable form of the same schema is
`SessionReport/Schema.lean`: the `session-report` exe (built on
[nasa-jpl/L4YAML](https://github.com/nasa-jpl/L4YAML)) only writes a table after
decoding it through those Lean types, and `session-report check` re-reads an
exported table against them. Keep the two in step.

Conventions shared by every table:

- Timestamps are ISO 8601 strings in the report's timezone (`2026-11-08T13:30:30-08:00`); days are `YYYY-MM-DD` in that timezone.
- `working_seconds` is the status-`working` proxy for VM time (see the report README); `acus` are the API's session-lifetime totals.
- Action counts (`shell`, `edits`, `reads`, `git`, `mcp`, `devin_messages`, `user_messages`, `web`) are event counts bucketed by local day.
- Unknown or absent optional values are `!!null`.
