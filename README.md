# devin-automation

Tooling for Devin Automations used by Open-MBEE members. First automation: the
**Devin session report** — a daily, weekly and monthly report of your own Devin
sessions, grouped by project (repository) then session, with per-project working
time, action counts, PRs opened and ACUs.

| Path | What |
|---|---|
| `session-report/collect.py` | Collector: pages the Devin session-search and session-events APIs (runs inside a Devin session via `scripted_tools`) and writes `data.json`. |
| `session-report/build.py` | Builder: `data.json` → Markdown report + `report-<slug>.json` (rows and the five tables). |
| `session-report/body.html` | Interactive HTML report body, compiled with Devin's `html_artifact_compile`. |
| `SessionReport/Schema.lean`, `SessionReport/Main.lean` | `session-report-yaml`: Lean 4 exporter on [nasa-jpl/L4YAML](https://github.com/nasa-jpl/L4YAML) that decodes the tables through typed YAML 1.2.2 schemas and writes them as YAML. |
| `schemas/session-report/` | The table schemas, human-readable. |
| `session-report/playbook.md` | The playbook a scheduled session follows. |
| `reports/` | Reports produced so far (Markdown, HTML, YAML tables). |

## What the report contains, and what it cannot

Each report covers one window (a day, a Monday–Sunday week, or a calendar month)
and groups sessions by project: the repository most of the session's PRs went to,
else the repository named in its prompt; forks and mirrors of the same repository
merge under the repository name. Per project and per session it gives:

- **Working time** — the sum of the intervals between a `status: working` event and
  the next `blocked` / `finished` / `suspended` event, clipped to the window and split
  at local midnight. This is the VM time while Devin was actually running; sleep and
  waiting-for-you time are excluded. It is the best available proxy for VM usage.
- **Actions** — counts of shell commands, file-edit and file-read batches, git/PR
  operations, MCP/Devin-API calls, messages and web actions (bucketed by UTC day).
- **PRs opened** inside the window, with their current state.
- **ACUs** — the API only reports a session's *lifetime* total, so ACUs are split into
  sessions fully inside the window, sessions created in it but still active after it
  (`‡`), and sessions created before it (`†`). Only the first is a clean per-window
  figure. No dollar amounts: the per-ACU rate is in your account's contract.

The API exposes **no VM size or performance class**; `mode` is the agent mode
(ultra/normal/fusion), not the VM.

## Recipes

### Install the three automations for yourself

Each automation is a Devin Automation with a schedule trigger that starts a session
running the playbook. You need your Devin user id (ask a session: "what is my user
id?" — it is `user-…` in the session's identity block) and your IANA timezone.

1. Create the playbook once: in Devin → Settings → Playbooks → New, paste
   `session-report/playbook.md`, replacing the user id, display name and timezone
   in its first paragraph with yours. Note its id (`playbook-…`). An existing
   organization playbook can be shared instead of re-created.
2. Create three automations (Settings → Automations → New), each with one
   `schedule:recurring` trigger and one `start_session` action whose prompt is:

   > Follow @playbook:playbook-… to produce the DAILY|WEEKLY|MONTHLY Devin session
   > report for <your name> (user id user-…, timezone <tz>). Window: the calendar
   > day | Monday–Sunday week | calendar month that ended at the midnight just before
   > this run. Compute the dates from the current time in <tz>. Deliver as the
   > playbook's step 6 says; if the window had no sessions, say so in one line.

   Schedules (RFC 5545, in your timezone):

   | Report | RRULE | Covers |
   |---|---|---|
   | daily | `DTSTART;TZID=<tz>:19700101T000000` / `RRULE:FREQ=DAILY;BYHOUR=0;BYMINUTE=5` | yesterday |
   | weekly | `RRULE:FREQ=WEEKLY;BYDAY=MO;BYHOUR=0;BYMINUTE=5` | the week that ended Sunday |
   | monthly | `RRULE:FREQ=MONTHLY;BYMONTHDAY=1;BYHOUR=0;BYMINUTE=5` | the month that just ended |

   Settings that work: run as *creator* (the report is yours), no MCP servers,
   network policy `git-manager.devin.ai` + `static.devin.ai`, ACU limit 10 / 15 / 25,
   one run at a time, e-mail on dispatch failure. Add a Slack `post_response`
   notification if you want the summary posted to a channel.
3. Or let a Devin session do steps 1–2: give it this README and say "install the
   session-report automations for me". It will raise one approval card per object.

Each run attaches the `.html`, `.md` and the YAML tables in its own session; the
automation's run list links to them.

### Run a report by hand (inside a Devin session)

```
git clone https://github.com/Open-MBEE/devin-automation ~/repos/devin-automation
# 1. collect — paste session-report/collect.py into scripted_tools after replacing
#    __START__/__END__ (unix seconds at local midnight), __USER__, __OUT__
# 2. build
python3 ~/repos/devin-automation/session-report/build.py --kind weekly --start 2026-11-02 --end 2026-11-09 \
    --data ~/report/data.json --out ~/report --who "Your Name" --tz America/Los_Angeles
# 3. YAML tables (schema-checked)
cd ~/repos/devin-automation && lake build && .lake/build/bin/session-report-yaml ~/report/report-2026-11-02-week.json ~/report/yaml/2026-11-02-week
.lake/build/bin/session-report-yaml --check ~/report/yaml/2026-11-02-week/*.yaml
# 4. HTML — html_artifact_compile body_path=session-report/body.html data_path=~/report/report-<slug>.json
```

`build.py --help`, `session-report-yaml --help` and `--version` document every option.
The collector only runs inside a Devin session (it calls Devin's own tools); the
builder and exporter run anywhere with Python 3.11+ and the Lean toolchain in
`lean-toolchain` (`lake build` fetches L4YAML and builds the modules it needs, about
10 minutes cold).

### Analyse the data

The YAML tables (`reports/<slug>/*.yaml`, schemas in `schemas/session-report/`) are
flat rows meant for pandas/DuckDB/jq: `project_totals`, `working_by_day`,
`sessions`, `session_days`, plus a `report` header. Every file is a YAML 1.2.2
document written by L4YAML's verified dumper and re-readable with
`session-report-yaml --check`.
