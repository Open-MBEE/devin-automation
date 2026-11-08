# devin-automation

Tooling for Devin Automations used by Open-MBEE members. First automation: the
**Devin session report** — a daily, weekly and monthly report of your own Devin
sessions, grouped by project (repository) then session, with per-project working
time, action counts, PRs opened and ACUs.

| Path | What |
|---|---|
| `session-report/collect.py` | Transport: pages the Devin session-search and session-events tools from inside a Devin session (`scripted_tools`) and saves their raw text as `raw.json`. No logic. |
| `SessionReport/*.lean` | `session-report`, a Lean 4 exe on [nasa-jpl/L4YAML](https://github.com/nasa-jpl/L4YAML): `build` turns `raw.json` into the Markdown report, the report JSON for the HTML, and the five YAML tables (typed, schema-checked); `yaml` re-exports a report JSON; `check` re-reads exported tables. |
| `schemas/session-report/` | The table schemas, human-readable (`SessionReport/Schema.lean` is their executable form). |
| `session-report/body.html` | Interactive HTML report body, compiled with Devin's `html_artifact_compile` over the report JSON. |
| `session-report/playbook.md` | The playbook a scheduled session follows. |
| `.github/workflows/release.yml` | Builds the exe on every push/PR and attaches `session-report-linux-x86_64` to the GitHub Release of a `v*` tag. |
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
  operations, MCP/Devin-API calls, messages and web actions, bucketed by local day.
  A session whose event listing was cut short (page cap or failed fetch) is marked
  `≥`: its counts and PR list are lower bounds.
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
   `session-report/playbook.md`, replacing the user id, display name, timezone and
   session-URL prefix in its first paragraph with yours. Note its id (`playbook-…`).
   An existing organization playbook can be shared instead of re-created.
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
   network policy `github.com` + `static.devin.ai`, ACU limit 10 / 15 / 25,
   one run at a time, e-mail on dispatch failure. Add a Slack `post_response`
   notification if you want the summary posted to a channel.
3. Or let a Devin session do steps 1–2: give it this README and say "install the
   session-report automations for me". It will raise one approval card per object.

Each run attaches the `.html`, `.md` and the YAML tables in its own session; the
automation's run list links to them.

### Run a report by hand (inside a Devin session)

```sh
# 0. the exe: release binary (Linux x86-64), or build it (~10 min cold)
curl -fsSL https://github.com/Open-MBEE/devin-automation/releases/latest/download/session-report-linux-x86_64 -o ~/bin/session-report && chmod +x ~/bin/session-report
#    fallback: git clone https://github.com/Open-MBEE/devin-automation && cd devin-automation && lake build  → .lake/build/bin/session-report
# 1. collect — paste session-report/collect.py into scripted_tools after replacing
#    __START__/__END__ (unix seconds at local midnight), __USER__, __TZ__, __OUT__ (e.g. ~/report/raw.json)
# 2. build: Markdown + report JSON + YAML tables, all under --out
session-report build --kind weekly --start 2026-11-02 --end 2026-11-09 --raw ~/report/raw.json --out ~/report \
    --who "Your Name" --tz America/Los_Angeles --base-url https://<your-devin-host>/sessions/ --owners Open-MBEE,nasa-jpl
session-report check ~/report/yaml/2026-11-02-week/*.yaml
# 3. HTML — html_artifact_compile body_path=session-report/body.html data_path=~/report/report-2026-11-02-week.json
```

`session-report --help` documents every option (`--group repo` keeps forks apart;
`--owners` lists the GitHub owners whose `owner/repo` mentions in a prompt count as
the session's project). The transport only runs inside a Devin session (it calls
Devin's own tools); the exe runs anywhere on Linux x86-64, or wherever the Lean
toolchain in `lean-toolchain` builds it. Reading a month of raw data takes 2–3
minutes.

### Analyse the data

The YAML tables (`reports/<slug>/*.yaml`, schemas in `schemas/session-report/`) are
flat rows meant for pandas/DuckDB/jq: `project_totals`, `working_by_day`,
`sessions`, `session_days`, plus a `report` header. Every file is a YAML 1.2.2
document written by L4YAML's verified dumper and re-readable with
`session-report check`.

### Release a new binary

Tag the commit (`git tag v0.2.0 && git push --tags`): the workflow builds the exe,
smoke-tests it against `reports/2026-11-08`, and attaches
`session-report-linux-x86_64` (+ `.sha256`) to the release. Bump
`SessionReport.version` in `SessionReport/Main.lean` in the same commit.
