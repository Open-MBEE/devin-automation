# Devin session report — Tuesday 2026-11-10

Sessions of Nicolas Rouquette created or active between Tue 2026-11-10 00:00 and Wed 2026-11-11 00:00 (America/Los_Angeles): 31 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Tuesday 2026-11-10

31 sessions across 13 projects, 68h33 of working time, 35 PRs opened.

### fprime-lean-sysmlv2-example — 5 sessions, 19h55 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | suspended (inactivity) | 9m | 562.6 † | 9 sh / 4 ed / 1 rd / 3 git / 21 mcp / 20+6 msg |  |
| [Add Downlink M0 Architecture Diagram](https://nasa-jpl-demo.devinenterprise.com/sessions/c4fe0be598084357b14813fd5326e998) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-09 12:13 | suspended (inactivity) | 4m | 127.3 † | 10 sh / 6 ed / 0 rd / 0 git / 4 mcp / 4+1 msg |  |
| [Create FACE and MARS Quad-Chart Slide](https://nasa-jpl-demo.devinenterprise.com/sessions/794c21c27af54614a16d3747a9ce6386) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-10 13:43 | suspended (inactivity) | 4m | 4.9 | 22 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |
| [ECR-002: Q1 two readings — evidence, #reading_coverage, then fix](https://nasa-jpl-demo.devinenterprise.com/sessions/d89172028cbe4ef9a871a4bf458fdd3c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:21 | suspended (inactivity) | 11h56 | 246.4 ‡ | 460 sh / 125 ed / 55 rd / 5 git / 9 mcp / 24+11 msg | [#120](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/120) merged |
| [M1 checker engineering with spec lemmas (step 4)](https://nasa-jpl-demo.devinenterprise.com/sessions/b60bb5ce46294a0a88bc1e343383448a) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:12 | suspended (inactivity) | 7h40 | 233.0 | 780 sh / 97 ed / 76 rd / 9 git / 6 mcp / 19+6 msg | [#118](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/118) merged, [#119](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/119) merged |

### OpenSysML — 4 sessions, 18h24 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 17h12 | 4868.4 † | ≥934 sh / 109 ed / 99 rd / 65 git / 52 mcp / 58+18 msg | [#2110](https://github.com/Open-MBEE/OpenSysML/pull/2110) merged, [qvts #74](https://github.com/Open-MBEE/qvts/pull/74) merged, [#2117](https://github.com/Open-MBEE/OpenSysML/pull/2117) merged, [#2121](https://github.com/Open-MBEE/OpenSysML/pull/2121) merged, [qvts #75](https://github.com/Open-MBEE/qvts/pull/75) merged, [#2127](https://github.com/Open-MBEE/OpenSysML/pull/2127) closed |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | suspended (inactivity) | 4m | 182.8 † | 15 sh / 3 ed / 0 rd / 2 git / 8 mcp / 12+5 msg |  |
| [Prepare OpenSysML release/0.13.0 branch and PR to main](https://nasa-jpl-demo.devinenterprise.com/sessions/971fe7f6ece04bd2ae8d582c595bcce5) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-10 08:51 | suspended (inactivity) | 47m | 25.4 ‡ | 68 sh / 2 ed / 18 rd / 8 git / 0 mcp / 12+9 msg | [#2112](https://github.com/Open-MBEE/OpenSysML/pull/2112) closed |
| [Honor position-only sysx:Note edits on source-backed text](https://nasa-jpl-demo.devinenterprise.com/sessions/c18ad5bff7bd466b8460db005afd0a1e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 19m | 33.4 † | 3 sh / 2 ed / 0 rd / 3 git / 0 mcp / 1+0 msg |  |

### qvts — 6 sessions, 13h57 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Assess Lean/Verso QVTS Readiness](https://nasa-jpl-demo.devinenterprise.com/sessions/ff906ec875c14d87a95d3e41422ca547) | Open-MBEE/qvts | webapp | fusion | 10-30 17:01 | suspended (inactivity) | 7h53 | 313.5 † | 3256 sh / 410 ed / 1206 rd / 40 git / 15 mcp / 52+20 msg | [#65](https://github.com/Open-MBEE/qvts/pull/65) merged, [#66](https://github.com/Open-MBEE/qvts/pull/66) merged, [#67](https://github.com/Open-MBEE/qvts/pull/67) merged, [#68](https://github.com/Open-MBEE/qvts/pull/68) merged, [#69](https://github.com/Open-MBEE/qvts/pull/69) merged, [#70](https://github.com/Open-MBEE/qvts/pull/70) merged, [#71](https://github.com/Open-MBEE/qvts/pull/71) merged, [#72](https://github.com/Open-MBEE/qvts/pull/72) merged, [#73](https://github.com/Open-MBEE/qvts/pull/73) merged |
| [Add QVTS synthetic model coverage test plan](https://nasa-jpl-demo.devinenterprise.com/sessions/7459e04e306548f1a6da927a1bb5e437) | Open-MBEE/qvts | webapp | ultra | 11-10 18:53 | suspended (inactivity) | 22m | 139.7 ‡ | 53 sh / 9 ed / 21 rd / 9 git / 23 mcp / 22+7 msg | [#76](https://github.com/Open-MBEE/qvts/pull/76) merged |
| [Add QVTS synthetic recipe table and atlas](https://nasa-jpl-demo.devinenterprise.com/sessions/d604068cc6d4430b982aca056a74c42d) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 19:52 | suspended (inactivity) | 2h40 | 130.2 ‡ | 272 sh / 81 ed / 57 rd / 17 git / 13 mcp / 19+9 msg | [#77](https://github.com/Open-MBEE/qvts/pull/77) merged, [#79](https://github.com/Open-MBEE/qvts/pull/79) merged, [#82](https://github.com/Open-MBEE/qvts/pull/82) merged |
| [Generate QVTS synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/58778dcb6f804bb29a7f426acb0b299c) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 20:45 | suspended (inactivity) | 1h23 | 40.2 ‡ | 115 sh / 32 ed / 19 rd / 5 git / 0 mcp / 7+2 msg | [#78](https://github.com/Open-MBEE/qvts/pull/78) closed |
| [Run QVTS reflection over synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/c6c88808f78b4b9482fe527179b020d2) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:10 | suspended (inactivity) | 51m | 31.6 ‡ | 64 sh / 17 ed / 32 rd / 3 git / 7 mcp / 5+2 msg | [#80](https://github.com/Open-MBEE/qvts/pull/80) closed |
| [Add QVTS synthetic values gate](https://nasa-jpl-demo.devinenterprise.com/sessions/dadb358f17ae48f0a1b089b220a6745b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:54 | suspended (inactivity) | 44m | 71.2 ‡ | 104 sh / 25 ed / 39 rd / 4 git / 0 mcp / 2+1 msg | [#81](https://github.com/Open-MBEE/qvts/pull/81) merged |

### L4YAML — 5 sessions, 13h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Discuss L4YAML Assurance Gap](https://nasa-jpl-demo.devinenterprise.com/sessions/340a0814c47344da91f6de2b7146265b) | nasa-jpl/L4YAML | webapp | ultra | 11-10 22:25 | suspended (inactivity) | 20m | 39.8 ‡ | 91 sh / 1 ed / 16 rd / 3 git / 0 mcp / 14+8 msg |  |
| [Add metagraph experiment documentation](https://nasa-jpl-demo.devinenterprise.com/sessions/bfb0071aeaab4aa58b50b413bca12aba) | nasa-jpl/L4YAML | webapp | ultra | 11-09 18:15 | suspended (inactivity) | 2m | 55.6 † | 8 sh / 1 ed / 1 rd / 0 git / 7 mcp / 10+4 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 8h35 | 2060.8 † | 438 sh / 82 ed / 17 rd / 22 git / 23 mcp / 54+12 msg | [#287](https://github.com/nasa-jpl/L4YAML/pull/287) merged, [#288](https://github.com/nasa-jpl/L4YAML/pull/288) merged, [#289](https://github.com/nasa-jpl/L4YAML/pull/289) merged, [#291](https://github.com/nasa-jpl/L4YAML/pull/291) merged, [#293](https://github.com/nasa-jpl/L4YAML/pull/293) merged, [#294](https://github.com/nasa-jpl/L4YAML/pull/294) merged, [#295](https://github.com/nasa-jpl/L4YAML/pull/295) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 3h58 | 331.8 † | 74 sh / 33 ed / 3 rd / 28 git / 2 mcp / 10+4 msg |  |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 3m | 898.8 † | 0 sh / 0 ed / 0 rd / 1 git / 14 mcp / 4+0 msg |  |

### SBVR.lean — 1 session, 1h21 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add SBVR note reader over OpenSysML sysx:Note exports](https://nasa-jpl-demo.devinenterprise.com/sessions/95335e28a3fc4c5c8156f4659b495a2b) | Open-MBEE/SBVR.lean | child of 4eac7d67 | ultra | 11-10 08:43 | suspended (inactivity) | 1h21 | 61.6 ‡ | 252 sh / 62 ed / 77 rd / 4 git / 10 mcp / 8+4 msg | [#45](https://github.com/Open-MBEE/SBVR.lean/pull/45) merged |

### engineering-foundation-architecture — 1 session, 1h05 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Draft AI Readiness Blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/79caccc7e63d4c8c81cbc46e8d344bcd) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-10 14:43 | suspended (inactivity) | 1h05 | 53.6 ‡ | 150 sh / 49 ed / 53 rd / 3 git / 18 mcp / 21+9 msg | [#71](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/71) merged |

### git-remote-sync.lean — 1 session, 19m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Recover deleted evidence branch](https://nasa-jpl-demo.devinenterprise.com/sessions/cb242389d6be4d27ae8b09c26f81b416) | Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-09 12:31 | suspended (inactivity) | 19m | 33.9 † | 47 sh / 14 ed / 22 rd / 4 git / 7 mcp / 7+3 msg |  |

### mars.lean — 3 sessions, 12m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Summarize mars.lean Formalization Accomplishments](https://nasa-jpl-demo.devinenterprise.com/sessions/16abb368d37449b0ad4b96da1277fb98) | Open-MBEE/mars.lean | webapp | ultra | 11-10 13:39 | suspended (inactivity) | 4m | 4.2 | 17 sh / 0 ed / 14 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Summarize mars.lean Achievements](https://nasa-jpl-demo.devinenterprise.com/sessions/a9e9b4032ff646dabd7881696135d045) | Open-MBEE/mars.lean | webapp | ultra | 11-10 13:42 | suspended (inactivity) | 2m | 3.0 | 16 sh / 0 ed / 10 rd / 0 git / 2 mcp / 5+3 msg |  |
| [Make retimedSimH hold for every tie-break order (route A)](https://nasa-jpl-demo.devinenterprise.com/sessions/56cef766932f4de3b168db27a375294e) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 5m | 31.1 † | 11 sh / 3 ed / 1 rd / 2 git / 4 mcp / 2+1 msg |  |

### (no repository) — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Nicolas Rouquette Daily Report](https://nasa-jpl-demo.devinenterprise.com/sessions/7bc2bc82020d435e85680dcbb41b853e) |  | automation | ultra | 11-10 00:05 | suspended (inactivity) | 5m | 3.2 | 5 sh / 0 ed / 1 rd / 0 git / 580 mcp / 3+1 msg |  |

### soil-moisture-dps — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 5m | 70.9 † | 24 sh / 5 ed / 2 rd / 2 git / 3 mcp / 6+3 msg |  |

### soil-moisture-model — 1 session, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Coordinate Stage-1g Repository Fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/ee9ffef83ce545fe8da2d5601207f816) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-10 13:06 | suspended (inactivity) | 2m | 2.9 | 13 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |

### face.lean — 1 session, 1m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Summarize face.lean Formalization Accomplishments](https://nasa-jpl-demo.devinenterprise.com/sessions/48b6527d50f441458b50666af91f5e02) | Open-MBEE/face.lean | webapp | ultra | 11-10 13:33 | suspended (inactivity) | 1m | 2.1 | 10 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |

### PropertyKindCalculus — 1 session, 1m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/c37ff2ede1384b58a4b8b783e5af5396) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-10 06:01 | suspended (inactivity) | 1m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
