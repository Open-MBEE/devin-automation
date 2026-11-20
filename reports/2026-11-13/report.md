# Devin session report — Friday 2026-11-13

Sessions of Nicolas Rouquette created or active between Fri 2026-11-13 00:00 and Sat 2026-11-14 00:00 (America/Los_Angeles): 26 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Friday 2026-11-13

26 sessions across 13 projects, 25h45 of working time, 31 PRs opened.

### OpenSysML — 1 session, 11h44 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 11h44 | 4868.4 † | ≥696 sh / 129 ed / 8 rd / 44 git / 21 mcp / 50+4 msg | [qvts #100](https://github.com/Open-MBEE/qvts/pull/100) merged, [#2215](https://github.com/Open-MBEE/OpenSysML/pull/2215) merged, [#2216](https://github.com/Open-MBEE/OpenSysML/pull/2216) merged, [qvts #101](https://github.com/Open-MBEE/qvts/pull/101) merged, [#2220](https://github.com/Open-MBEE/OpenSysML/pull/2220) merged, [#2221](https://github.com/Open-MBEE/OpenSysML/pull/2221) merged, [#2222](https://github.com/Open-MBEE/OpenSysML/pull/2222) merged, [qvts #102](https://github.com/Open-MBEE/qvts/pull/102) merged |

### soil-moisture-workflows — 1 session, 4h18 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix soil-moisture CI workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/a3a98b66aaba486384ce1ee9109622e7) | Open-MBEE/git-remote-sync.lean, Open-MBEE/html-to-pdf.lean, Open-MBEE/prov.lean, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-09 08:53 | suspended (inactivity) | 4h18 | 411.0 † | 492 sh / 162 ed / 20 rd / 45 git / 19 mcp / 64+16 msg | [#46](https://github.com/Open-MBEE/soil-moisture-workflows/pull/46) merged, [soil-moisture-model #49](https://github.com/Open-MBEE/soil-moisture-model/pull/49) merged, [soil-moisture-model #51](https://github.com/Open-MBEE/soil-moisture-model/pull/51) merged, [soil-moisture-model #52](https://github.com/Open-MBEE/soil-moisture-model/pull/52) merged, [soil-moisture-dps #18](https://github.com/Open-MBEE/soil-moisture-dps/pull/18) merged, [#47](https://github.com/Open-MBEE/soil-moisture-workflows/pull/47) merged, [#48](https://github.com/Open-MBEE/soil-moisture-workflows/pull/48) merged, [#49](https://github.com/Open-MBEE/soil-moisture-workflows/pull/49) merged |

### L4YAML — 7 sessions, 2h52 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 1h36 | 2060.8 † | 148 sh / 29 ed / 0 rd / 8 git / 0 mcp / 9+1 msg | [#310](https://github.com/nasa-jpl/L4YAML/pull/310) merged, [#311](https://github.com/nasa-jpl/L4YAML/pull/311) merged |
| [Clear Lean lint warnings in L4YAML Serialization proofs](https://nasa-jpl-demo.devinenterprise.com/sessions/000613653ae24ba19d3b12da1d9b61d4) | nasa-jpl/L4YAML | child of 58f12c50 | ultra | 11-13 21:14 | suspended (inactivity) | 20m | 7.8 | 27 sh / 2 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#309](https://github.com/nasa-jpl/L4YAML/pull/309) merged |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 42m | 132.3 † | 26 sh / 3 ed / 0 rd / 1 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #290 embedded-NUL FFI fix](https://nasa-jpl-demo.devinenterprise.com/sessions/1c8e22c9f5024f27914303ad72a771cc) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 4m | 24.9 † | 14 sh / 1 ed / 0 rd / 3 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #292 safe_dump scalar escaping](https://nasa-jpl-demo.devinenterprise.com/sessions/181a9450515546b38406c05906edf410) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 3m | 25.6 † | 13 sh / 0 ed / 0 rd / 1 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #299 explicit Core tags](https://nasa-jpl-demo.devinenterprise.com/sessions/d8c29e5a929e4a64881d356d2a70fb1e) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 2m | 27.9 † | 8 sh / 0 ed / 0 rd / 1 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #300 Core numeric spellings](https://nasa-jpl-demo.devinenterprise.com/sessions/d7659a10c36746deae97ff26be7e62a2) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 1m | 15.3 † | 7 sh / 0 ed / 2 rd / 1 git / 0 mcp / 2+1 msg |  |

### pacti.lean — 3 sessions, 2h14 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 1h04 | 204.2 ‡ | 96 sh / 22 ed / 27 rd / 4 git / 6 mcp / 13+4 msg | [#6](https://github.com/Open-MBEE/pacti.lean/pull/6) merged, [#7](https://github.com/Open-MBEE/pacti.lean/pull/7) merged |
| [Finish GR(1) CAVE eliminations in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/60f6fe90545041498d82d29add293dad) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-13 21:38 | suspended (inactivity) | 54m | 35.3 | 92 sh / 30 ed / 34 rd / 2 git / 0 mcp / 3+1 msg | [#9](https://github.com/Open-MBEE/pacti.lean/pull/9) merged |
| [Add GR(1) window theory to pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/9a4a152d555d41f3a194a039ebc2dc82) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-13 20:16 | suspended (inactivity) | 14m | 12.9 | 32 sh / 9 ed / 15 rd / 1 git / 0 mcp / 2+1 msg | [#8](https://github.com/Open-MBEE/pacti.lean/pull/8) merged |

### soil-moisture-model — 2 sessions, 1h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Module Inventory Section](https://nasa-jpl-demo.devinenterprise.com/sessions/53fa8bc4c29f47b8b7ff3e2dfd62bc89) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-13 12:50 | suspended (inactivity) | 47m | 10.8 ‡ | 42 sh / 8 ed / 21 rd / 2 git / 0 mcp / 4+2 msg | [#50](https://github.com/Open-MBEE/soil-moisture-model/pull/50) merged |
| [Fix all soil-moisture-model warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/bd6255fd25e54fc0b00488e20d401903) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-13 20:09 | suspended (inactivity) | 26m | 6.3 | 32 sh / 8 ed / 11 rd / 1 git / 0 mcp / 2+1 msg | [#53](https://github.com/Open-MBEE/soil-moisture-model/pull/53) merged |

### prov.lean — 2 sessions, 58m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 53m | 863.1 † | 89 sh / 43 ed / 24 rd / 22 git / 9 mcp / 18+3 msg | [#26](https://github.com/Open-MBEE/prov.lean/pull/26) merged |
| [Investigate prov.lean CI failure](https://nasa-jpl-demo.devinenterprise.com/sessions/f13c4c213e6945d7ba1384cf655ae0b6) | Open-MBEE/prov.lean | webapp | ultra | 11-13 10:36 | suspended (inactivity) | 5m | 13.0 | 7 sh / 0 ed / 2 rd / 0 git / 0 mcp / 3+2 msg |  |

### html-to-pdf.lean — 1 session, 55m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Silence WeasyPrint CSS warnings in html-to-pdf](https://nasa-jpl-demo.devinenterprise.com/sessions/6bdc38ccb90146fa8c8e9d84d736c0e0) | Open-MBEE/html-to-pdf.lean | child of 58f12c50 | ultra | 11-13 21:14 | suspended (inactivity) | 55m | 13.8 ‡ | 55 sh / 15 ed / 15 rd / 1 git / 0 mcp / 2+1 msg | [#4](https://github.com/Open-MBEE/html-to-pdf.lean/pull/4) merged |

### qvts — 2 sessions, 41m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix Open-MBEE/qvts warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/4bc4bb5a8c694d3b89f73446082bb1d9) | Open-MBEE/qvts | webapp | ultra | 11-13 10:02 | suspended (inactivity) | 23m | 6.3 | 28 sh / 4 ed / 4 rd / 3 git / 0 mcp / 3+1 msg | [#98](https://github.com/Open-MBEE/qvts/pull/98) merged |
| [Create QVTS Mass Rollup Examples](https://nasa-jpl-demo.devinenterprise.com/sessions/e9f985e539484c79b232cec027170643) | Open-MBEE/qvts | webapp | ultra | 11-12 08:53 | suspended (inactivity) | 17m | 105.6 † | 72 sh / 13 ed / 13 rd / 5 git / 1 mcp / 6+2 msg | [#99](https://github.com/Open-MBEE/qvts/pull/99) merged |

### git-remote-sync.lean — 2 sessions, 33m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix warnings and errors in git-remote-sync.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/58f12c5014384468bf409d36f326059b) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-13 20:35 | suspended (inactivity) | 21m | 30.5 ‡ | 27 sh / 3 ed / 13 rd / 4 git / 5 mcp / 10+2 msg | [#65](https://github.com/Open-MBEE/git-remote-sync.lean/pull/65) merged |
| [Bump git-remote-sync.lean L4YAML pin to lint-clean commit](https://nasa-jpl-demo.devinenterprise.com/sessions/ef61b5eb42f84376a2bdd7e195c556a0) | Open-MBEE/git-remote-sync.lean | child of 58f12c50 | ultra | 11-13 21:50 | suspended (inactivity) | 11m | 5.7 ‡ | 16 sh / 1 ed / 7 rd / 3 git / 0 mcp / 2+1 msg | [#66](https://github.com/Open-MBEE/git-remote-sync.lean/pull/66) merged |

### (Devin housekeeping) — 1 session, 10m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/6a1e4491d7f44066bf9033d396706315) |  | webapp | normal | 11-13 07:52 | suspended | 10m | 0.0 | 54 sh / 14 ed / 10 rd / 0 git / 44 mcp / 1+2 msg |  |

### (no repository) — 2 sessions, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/f05559a56ffd4a899a609b63934aa80e) |  | automation | ultra | 11-13 00:05 | suspended (inactivity) | 2m | 1.8 ‡ | 4 sh / 0 ed / 0 rd / 0 git / 364 mcp / 2+1 msg |  |
| [Z3 Implementation in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/3993442cdae145069390939327abff87) |  | webapp | ultra | 11-13 19:54 | suspended (inactivity) | 0m | 3.3 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+1 msg |  |

### soil-moisture-dps — 1 session, 1m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 1m | 70.9 † | 11 sh / 2 ed / 1 rd / 0 git / 0 mcp / 0+0 msg |  |

### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/f3d52c206d9741fda4365587e14d17cc) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-13 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
