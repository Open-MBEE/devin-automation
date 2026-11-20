# Devin session report — Monday 2026-11-16

Sessions of Nicolas Rouquette created or active between Mon 2026-11-16 00:00 and Tue 2026-11-17 00:00 (America/Los_Angeles): 29 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Monday 2026-11-16

29 sessions across 10 projects, 25h56 of working time, 20 PRs opened.

### OpenSysML — 7 sessions, 16h23 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 13h23 | 4868.4 † | ≥489 sh / 56 ed / 4 rd / 23 git / 3 mcp / 43+12 msg |  |
| [Make compliance row 28-name-resolution:81 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/9eae7d55903746d1a212b6005ae0e586) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h44 | 48.5 † | 51 sh / 7 ed / 3 rd / 9 git / 1 mcp / 7+3 msg |  |
| [Make compliance row 15-state-machine:94 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/127f7be0f3b5458cbcf2b6eedaa5f862) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 42m | 23.1 † | 10 sh / 3 ed / 5 rd / 4 git / 6 mcp / 2+1 msg |  |
| [Make compliance row 17-expression-evaluation:25 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/49d0e2e74ead418995773a1f6a0403a1) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (user_request) [archived] | 14m | 37.5 † | 17 sh / 6 ed / 1 rd / 3 git / 0 mcp / 3+1 msg | [#2326](https://github.com/Open-MBEE/OpenSysML/pull/2326) merged |
| [Make compliance row 23-static-typing:29 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/5d48c28b9d274256bebd689770f7a4c3) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 13m | 25.9 † | 37 sh / 2 ed / 8 rd / 0 git / 4 mcp / 17+11 msg |  |
| [Make compliance row 08-instantiation:23 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/7e4ab05d47b540e8b7877c492a54e615) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 5m | 18.6 † | 18 sh / 2 ed / 3 rd / 0 git / 0 mcp / 6+3 msg |  |
| [Make compliance row 26-usage-prefixes:8 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/e7e976d3e710492d80dc96a4af63d60b) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 0m | 32.8 † | 16 sh / 2 ed / 0 rd / 6 git / 0 mcp / 1+0 msg |  |

### engineering-foundation-architecture — 10 sessions, 5h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Clarify AI Readiness Purpose](https://nasa-jpl-demo.devinenterprise.com/sessions/5b6b278b67a846b9a835146ce5796fd5) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-15 17:19 | suspended (inactivity) | 1h05 | 73.9 † | 147 sh / 44 ed / 45 rd / 11 git / 23 mcp / 28+8 msg | [#86](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/86) merged |
| [Plan SysMLv2 SBVR Tooling](https://nasa-jpl-demo.devinenterprise.com/sessions/bbe86616453249d8a0677d78203a76d3) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-03 12:06 | suspended (inactivity) | 52m | 54.6 † | 59 sh / 7 ed / 12 rd / 8 git / 0 mcp / 25+16 msg | [#88](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/88) merged, [#95](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/95) merged |
| [Configure Install Script for Multiple GitHub Hosts](https://nasa-jpl-demo.devinenterprise.com/sessions/6aaa4b30920f4849a8fb31a0330db7b4) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-16 12:21 | suspended (inactivity) | 13m | 12.4 | 24 sh / 7 ed / 2 rd / 11 git / 3 mcp / 18+8 msg | [#89](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/89) merged, [#90](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/90) merged, [#91](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/91) merged, [#92](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/92) merged |
| [Add the whitepaper to the site header bar](https://nasa-jpl-demo.devinenterprise.com/sessions/544325604dd745e7826016a87bb559dd) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 34m | 19.8 ‡ | 41 sh / 4 ed / 13 rd / 2 git / 0 mcp / 3+1 msg | [#97](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/97) merged |
| [State R9 in tier 4's one-sentence summary](https://nasa-jpl-demo.devinenterprise.com/sessions/b81ba6680c244d51835408ac51b01045) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 25m | 4.9 ‡ | 14 sh / 3 ed / 6 rd / 1 git / 0 mcp / 2+1 msg | [#99](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/99) merged |
| [Explain kinds of quantity and PKC in 1.3.3](https://nasa-jpl-demo.devinenterprise.com/sessions/c2aae4e4cb5647ec988fcd2c833c4c9c) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:55 | suspended (inactivity) | 21m | 8.1 | 26 sh / 1 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#96](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/96) merged |
| [Show provenance across the stack and explain its benefits](https://nasa-jpl-demo.devinenterprise.com/sessions/0d42a400ee984ad2800a4fec67538857) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 16:03 | suspended (inactivity) | 20m | 20.0 ‡ | 71 sh / 9 ed / 34 rd / 1 git / 0 mcp / 3+2 msg | [#98](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/98) merged |
| [Rephrase "says what it does not know" as provenance](https://nasa-jpl-demo.devinenterprise.com/sessions/5d86ec802cf64c62aa53bdad3430a1fe) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:10 | suspended (inactivity) | 17m | 9.2 | 38 sh / 7 ed / 18 rd / 1 git / 0 mcp / 8+7 msg | [#94](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/94) merged |
| [Fix the site's whitepaper link and placement](https://nasa-jpl-demo.devinenterprise.com/sessions/bc36e21847854f32ba8d942e8b6a4445) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:09 | suspended (inactivity) | 16m | 5.8 | 24 sh / 5 ed / 4 rd / 2 git / 0 mcp / 3+1 msg | [#93](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/93) merged |
| [Add cyber-security chapter to AI readiness blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/1fc7119c103f48f3afc23ae7aa02d30f) | Open-MBEE/engineering-foundation-architecture | child of 5b6b278b | ultra | 11-16 11:03 | suspended (inactivity) | 45m | 45.4 | 89 sh / 5 ed / 25 rd / 3 git / 35 mcp / 43+13 msg | [#87](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/87) merged |

### pacti.lean — 4 sessions, 2h26 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 1h22 | 204.2 † | 33 sh / 10 ed / 6 rd / 7 git / 2 mcp / 13+4 msg | [#31](https://github.com/Open-MBEE/pacti.lean/pull/31) merged, [#32](https://github.com/Open-MBEE/pacti.lean/pull/32) merged |
| [Prove GR(1) integer split never falls back](https://nasa-jpl-demo.devinenterprise.com/sessions/4699594c5c194e649e2117ef272ed589) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 55m | 19.0 † | 29 sh / 6 ed / 9 rd / 3 git / 0 mcp / 4+2 msg | [#33](https://github.com/Open-MBEE/pacti.lean/pull/33) merged |
| [Add SMT-LIB gr1_machine section to GR(1) JSON](https://nasa-jpl-demo.devinenterprise.com/sessions/8ed3105b93b0433ea1c59a0baab863bf) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 1m | 22.4 † | 7 sh / 3 ed / 0 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Review pacti.lean PR #20](https://nasa-jpl-demo.devinenterprise.com/sessions/3ed80fb1860a447286307ff974f8707a) | Open-MBEE/pacti.lean | child of 58f12c50 | ultra | 11-14 21:03 | suspended (inactivity) | 7m | 17.1 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

### fprime-lean-sysmlv2-example — 1 session, 1h34 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Define Packet Buffer Algebra Module](https://nasa-jpl-demo.devinenterprise.com/sessions/4cf276f055ad4d8b859f8bfd5b38f5e6) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-16 13:37 | suspended (inactivity) | 1h34 | 33.8 ‡ | 114 sh / 22 ed / 34 rd / 3 git / 0 mcp / 20+13 msg | [#122](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/122) merged |

### (no repository) — 2 sessions, 8m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Weekly Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/4ee3059bc32d4a7895697d4f0ad8dd6d) |  | automation | ultra | 11-16 00:09 | suspended (inactivity) | 5m | 1.9 | 3 sh / 0 ed / 0 rd / 0 git / 1374 mcp / 2+1 msg |  |
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/c81e1c3f2280459287802f8df41fd26e) |  | automation | ultra | 11-16 00:05 | suspended (inactivity) | 3m | 1.8 | 3 sh / 0 ed / 0 rd / 0 git / 547 mcp / 2+1 msg |  |

### L4YAML — 1 session, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Harden L4YAML Fork PR Security](https://nasa-jpl-demo.devinenterprise.com/sessions/d26d0b63cf634519b5e45cd1b974ec7e) | nasa-jpl/L4YAML | webapp | ultra | 11-16 10:39 | suspended (inactivity) | 3m | 5.1 | 12 sh / 3 ed / 1 rd / 1 git / 0 mcp / 5+2 msg | [#346](https://github.com/nasa-jpl/L4YAML/pull/346) merged |

### prov.lean — 1 session, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 3m | 863.1 † | 9 sh / 2 ed / 0 rd / 0 git / 0 mcp / 6+4 msg |  |

### git-remote-sync.lean — 1 session, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Support Current Branch Default](https://nasa-jpl-demo.devinenterprise.com/sessions/269fec9073a148178cf67f89a18189ae) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-15 17:10 | suspended (inactivity) | 2m | 25.7 † | 8 sh / 2 ed / 1 rd / 0 git / 4 mcp / 5+1 msg |  |

### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/065154dfbba74c60b442cce1243fed73) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-16 06:01 | suspended (inactivity) | 0m | 1.3 | 1 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |

### SBVR.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 0m | 2191.0 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+0 msg |  |
