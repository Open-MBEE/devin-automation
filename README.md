# devin-automation

Tooling for Devin Automations. Generic: nothing here is tied to a user or organization; `reports/` holds one user's reports as example data. First automation: the
**Devin session report** — a daily, weekly and monthly report of your own Devin
sessions, grouped by project (repository) then session, with per-project working
time, action counts, PRs opened and ACUs.

| Path | What |
|---|---|
| `SessionReport/Collect.lean` | `session-report collect`: pages the Devin REST API (`/organizations/<org>/sessions` and the session event listings) over leanCurl with `DEVIN_API_KEY` from the environment and writes `raw.json`, with a completeness flag per listing (an incomplete session search makes `build` refuse to run). |
| `SessionReport/*.lean` | `session-report`, a Lean 4 exe on [nasa-jpl/L4YAML](https://github.com/nasa-jpl/L4YAML): `build` turns `raw.json` into the Markdown report, the report JSON for the HTML, a tables JSON, and the five YAML tables (typed, schema-checked); `filter` renders the same artifacts for a subset of the projects from a published report's tables (no `raw.json` needed); `yaml` re-exports a tables JSON; `check` re-reads exported tables. |
| `schemas/session-report/` | The table schemas, human-readable (`SessionReport/Schema.lean` is their executable form). |
| `session-report/body.html` | Interactive HTML report body, compiled with Devin's `html_artifact_compile` over the report JSON. |
| `session-report/playbook.md` | The playbook a scheduled session follows. |
| `.github/workflows/release.yml` | Builds the exe on every push/PR and attaches `session-report-linux-x86_64` to the GitHub Release of a `v*` tag. |
| `reports/` | Example data: one user's reports (Markdown, HTML, YAML tables). Published with an index on the `gh-pages` branch by `.github/workflows/pages.yml` (`scripts/build-site.sh`). |
| `scripts/` | `stage-report.sh` (copy a built report into `reports/<slug>/` for the PR a run opens), `build-site.sh` (the Pages index). |

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

1. Create the playbook once from the template `session-report/playbook.md`: fill every
   `<…>` placeholder (they occur in the first paragraph *and* in the commands of steps 1 and 4), e.g.

   ```sh
   sed -e 's/<USER_ID>/user-…/g' -e 's/<NAME>/Your Name/g' -e 's/<ORG_ID>/org-…/g' -e 's#<TZ>#Europe/Paris#g' \
       -e 's#<API_BASE>#https://api.devin.ai/v3#g' -e 's#<SESSION_URL_PREFIX>#https://app.devin.ai/sessions/#g' \
       session-report/playbook.md > playbook-filled.md
   grep -n '<[A-Z_]*>' playbook-filled.md && echo 'placeholders left' || echo ok
   ```

   then paste `playbook-filled.md` into Devin → Settings → Playbooks → New. Note its id (`playbook-…`).
   An existing organization playbook can be shared instead of re-created.
2. Create three automations (Settings → Automations → New), each with one
   `schedule:recurring` trigger and one `start_session` action whose prompt is:

   > Follow @playbook:playbook-… to produce the DAILY|WEEKLY|MONTHLY Devin session
   > report for <NAME> (user id <USER_ID>, timezone <TZ>). Window: the calendar
   > day | Monday–Sunday week | calendar month that ended at the midnight just before
   > this run. Compute the dates from the current time in <tz>. Publish and deliver as the
   > playbook says (PR adding `reports/<slug>/`, then the message with the PR link and the
   > attachments); if the window had no sessions, say so in one line and open no PR.

   Schedules (RFC 5545, in your timezone):

   | Report | RRULE | Covers |
   |---|---|---|
   | daily | `DTSTART;TZID=<tz>:19700101T000000` / `RRULE:FREQ=DAILY;BYHOUR=0;BYMINUTE=5` | yesterday |
   | weekly | `RRULE:FREQ=WEEKLY;BYDAY=MO;BYHOUR=0;BYMINUTE=5` | the week that ended Sunday |
   | monthly | `RRULE:FREQ=MONTHLY;BYMONTHDAY=1;BYHOUR=0;BYMINUTE=5` | the month that just ended |

   Settings that work: run as *creator* (the report is yours), no MCP servers,
   network policy `github.com`, `api.github.com`, `objects.githubusercontent.com`,
   `release-assets.githubusercontent.com`, `releases.lean-lang.org`, `static.devin.ai`
   (clone, release binary or `lake build`, PR), ACU limit 10 / 15 / 25,
   one run at a time, e-mail on dispatch failure. Add a Slack `post_response`
   notification if you want the summary posted to a channel.
3. Or let a Devin session do steps 1–2: give it this README and say "install the
   session-report automations for me". It will raise one approval card per object.

Each run opens a PR adding `reports/<slug>/` (via `scripts/stage-report.sh`) and attaches the
`.html`, `.md` and the YAML tables in its own session; merging the PR publishes the report on
the GitHub Pages index (below). The automation's run list links to the sessions.

### Run a report by hand (inside a Devin session)

```sh
# 0. the exe: release binary (Linux x86-64), or build it (~10 min cold)
curl -fsSL https://github.com/Open-MBEE/devin-automation/releases/latest/download/session-report-linux-x86_64 -o ~/bin/session-report && chmod +x ~/bin/session-report
#    fallback: git clone https://github.com/Open-MBEE/devin-automation && cd devin-automation && lake build  → .lake/build/bin/session-report
# 1. collect (DEVIN_API_KEY in the environment; DEVIN_API_BASE defaults to https://api.devin.ai/v3)
session-report collect --start 2026-11-02 --end 2026-11-09 --tz Europe/Paris --user user-… --org org-… --out ~/report/raw.json
# 2. build: Markdown + report JSON (for the HTML) + tables JSON + YAML tables, all under --out
session-report build --kind weekly --start 2026-11-02 --end 2026-11-09 --raw ~/report/raw.json --out ~/report \
    --who "Your Name" --tz Europe/Paris --base-url https://app.devin.ai/sessions/ --owners my-org,my-other-org
session-report check ~/report/yaml/2026-11-02-week/*.yaml        # re-read the tables against the schema
session-report yaml ~/report/tables-2026-11-02-week.json ~/export   # re-export them from the tables JSON (same files)
# 3. HTML — html_artifact_compile body_path=session-report/body.html data_path=~/report/report-2026-11-02-week.json
# 4. publish: stage reports/<slug>/ (md, html, five YAML tables) and open a PR against main
git checkout -b report/2026-11-02-week main && scripts/stage-report.sh 2026-11-02-week ~/report && git add reports && git commit -m "report: weekly 2026-11-02-week"
```

`session-report --help` documents every option (`--group repo` keeps forks apart;
`--owners` lists the GitHub owners whose `owner/repo` mentions in a prompt count as
the session's project; without it only the session's PRs and `@repos:` tokens name the project). The exe runs anywhere on Linux x86-64 with libcurl, or wherever the Lean
toolchain in `lean-toolchain` builds it. Reading a month of raw data takes 2–3
minutes.

### Analyse the data

The YAML tables (`reports/<slug>/*.yaml`, schemas in `schemas/session-report/`) are
flat rows meant for pandas/DuckDB/jq: `project_totals`, `working_by_day`,
`sessions`, `session_days`, plus a `report` header. Every file is a YAML 1.2.2
document written by L4YAML's verified dumper and re-readable with
`session-report check`.

### Filter a report by project

`session-report filter` rebuilds a published report over a list of projects only — the same
Markdown, report JSON (for the HTML), tables JSON and five YAML tables, every total recomputed
over the kept sessions — from the tables alone, so it works on any `reports/<slug>/` of this
repository (or on a `tables-<slug>.json` of `build`) without the raw data:

```sh
session-report filter --projects L4YAML,mars.lean,PropertyKindCalculus --in reports/2026-11-02-week --out ~/report --name lean
#  → ~/report/devin-report-2026-11-02-week-lean.md, report-2026-11-02-week-lean.json, tables-2026-11-02-week-lean.json, yaml/2026-11-02-week-lean/*.yaml
# HTML as for build: html_artifact_compile body_path=session-report/body.html data_path=~/report/report-2026-11-02-week-lean.json
```

A name matches a project by its full name or its last path segment (`nasa-jpl/L4YAML` ≡ `L4YAML`);
names that match nothing are reported on stderr together with the projects the report has. The
slug of the filtered report is `<slug>-<name>` (`--name` defaults to `filtered`), and its label
carries the selection. Filtering with every project of a report reproduces `sessions`, `session_days`
and `working_by_day` byte for byte; the ACU sums of `project_totals` are re-added from the six
decimals printed per session, so they can differ from the original in the last digit.

### Release a new binary

Tag the commit (`git tag v0.2.0 && git push --tags`): the workflow builds the exe,
smoke-tests it against `reports/2026-11-02-week`, and attaches
`session-report-linux-x86_64` (+ `.sha256`) to the release. Bump
`SessionReport.version` in `SessionReport/Main.lean` in the same commit.

## Report index (GitHub Pages)

Every push to `main` that touches `reports/` runs `.github/workflows/pages.yml`: it copies each
`reports/<slug>/` and writes an `index.html` (kind, period, who, sessions, projects, links to the
HTML/Markdown and the five YAML tables — read from each `report.yaml`), then force-pushes the
result as a **single-commit** `gh-pages` branch (no history, the branch is rebuilt each time).
The same build is deployed to the served site through the Pages actions (enable Pages once:
Settings → Pages → Source: *GitHub Actions*); preview locally
with `scripts/build-site.sh site && xdg-open site/index.html`.

