# Devin session report — Wednesday 2026-11-18

Sessions of Nicolas Rouquette created or active between Wed 2026-11-18 00:00 and Thu 2026-11-19 00:00 (America/Los_Angeles): 51 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Wednesday 2026-11-18

51 sessions across 12 projects, 39h06 of working time, 50 PRs opened.

### SBVR.lean — 12 sessions, 16h55 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 15m | 2191.0 † | 10 sh / 0 ed / 0 rd / 0 git / 71 mcp / 37+2 msg |  |
| [Add SBVR role bindings (21.3.1)](https://nasa-jpl-demo.devinenterprise.com/sessions/22b6843490b74cb5965625a8a32140fb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 3h31 | 119.5 ‡ | 257 sh / 80 ed / 72 rd / 6 git / 17 mcp / 22+13 msg | [#66](https://github.com/Open-MBEE/SBVR.lean/pull/66) merged |
| [Add SBVR objectifications (21.3.7, 14.2.3-4)](https://nasa-jpl-demo.devinenterprise.com/sessions/3cefac96546d4274ba86bccc923456e8) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 2h17 | 59.8 | 193 sh / 64 ed / 52 rd / 1 git / 20 mcp / 14+5 msg | [#65](https://github.com/Open-MBEE/SBVR.lean/pull/65) merged |
| [Add SBVR advices (17.1.3, 18.1.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/0ce2b73e56054880bfad1f2bb0f052eb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h53 | 37.8 ‡ | 110 sh / 28 ed / 41 rd / 4 git / 13 mcp / 17+8 msg | [#61](https://github.com/Open-MBEE/SBVR.lean/pull/61) merged |
| [Add SBVR numbers (15.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/feceeb06357f48a3ae2640e4feeeef32) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 1h45 | 72.5 ‡ | 167 sh / 39 ed / 57 rd / 3 git / 19 mcp / 26+12 msg | [#59](https://github.com/Open-MBEE/SBVR.lean/pull/59) merged |
| [Add SBVR nominalizations (21.3.9)](https://nasa-jpl-demo.devinenterprise.com/sessions/22cbde3e107544fba27d701409900b39) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h42 | 62.5 | 173 sh / 62 ed / 46 rd / 5 git / 3 mcp / 12+5 msg | [#62](https://github.com/Open-MBEE/SBVR.lean/pull/62) merged |
| [Cover SBVR sides, proposition kinds, authority](https://nasa-jpl-demo.devinenterprise.com/sessions/d7a6eac3d07142859f9d4c0795acf5f1) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h29 | 40.1 ‡ | 121 sh / 28 ed / 42 rd / 3 git / 3 mcp / 13+6 msg | [#58](https://github.com/Open-MBEE/SBVR.lean/pull/58) merged |
| [Add SBVR projections and sets (21.3.8, 21.4, 15.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/a9c3e557c2364a498cea23796be4fc93) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h16 | 37.4 ‡ | 107 sh / 22 ed / 37 rd / 3 git / 10 mcp / 15+6 msg | [#60](https://github.com/Open-MBEE/SBVR.lean/pull/60) merged |
| [Add SBVR instantiation formulations (21.3.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/9c68ae35e12641e69cba4662a8e5943f) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h09 | 20.4 | 78 sh / 22 ed / 33 rd / 2 git / 12 mcp / 8+3 msg | [#63](https://github.com/Open-MBEE/SBVR.lean/pull/63) merged |
| [Prove SBVR parse-render theorem, pattern catalogue](https://nasa-jpl-demo.devinenterprise.com/sessions/6edb1762108448f6be8ede324cd67d49) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 1h01 | 42.3 | 148 sh / 42 ed / 33 rd / 2 git / 6 mcp / 10+3 msg | [#64](https://github.com/Open-MBEE/SBVR.lean/pull/64) merged |
| [Add fixtures for set parse/render fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/04ed0d75ad674834ba79eb9971430d1b) | Open-MBEE/SBVR.lean | child of a9c3e557 | ultra | 11-18 20:39 | suspended (inactivity) | 20m | 9.2 ‡ | 21 sh / 4 ed / 8 rd / 4 git / 0 mcp / 2+1 msg | [#70](https://github.com/Open-MBEE/SBVR.lean/pull/70) merged |
| [Draft OMG issues on SBVR chapter 15](https://nasa-jpl-demo.devinenterprise.com/sessions/860d51f9d5644947b837eb4e5e963935) | Open-MBEE/SBVR.lean | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 12m | 17.4 ‡ | 70 sh / 14 ed / 31 rd / 2 git / 0 mcp / 2+1 msg | [#71](https://github.com/Open-MBEE/SBVR.lean/pull/71) merged |

### qvts — 13 sessions, 10h16 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix qvts gh-pages publishing workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/1d8450f164ef48f08fd4d0b31d65cd8e) | Open-MBEE/qvts | webapp | ultra | 11-17 13:46 | running (waiting_for_user) | 27m | 101.5 † | 43 sh / 0 ed / 12 rd / 3 git / 42 mcp / 20+5 msg |  |
| [Explain Unreachable Rows Lower Bound](https://nasa-jpl-demo.devinenterprise.com/sessions/04d0e751908e4d6b91b5ff8762a8adc4) | Open-MBEE/qvts | webapp | ultra | 11-18 12:51 | suspended (inactivity) | 0m | 15.9 ‡ | 5 sh / 0 ed / 4 rd / 0 git / 0 mcp / 4+2 msg |  |
| [Type the metamodel table's names by role](https://nasa-jpl-demo.devinenterprise.com/sessions/a13f38fffd914273b1ff858d17ef7860) | Open-MBEE/qvts | child of 1010d061 | ultra | 11-18 21:21 | suspended (inactivity) | 33m | 14.4 | 69 sh / 29 ed / 26 rd / 2 git / 0 mcp / 3+1 msg | [#124](https://github.com/Open-MBEE/qvts/pull/124) merged |
| [State structural cells in QVTS synthetic values](https://nasa-jpl-demo.devinenterprise.com/sessions/e581f133bb8c42978fdb1b657c710299) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 1h40 | 22.7 | 87 sh / 17 ed / 21 rd / 4 git / 3 mcp / 10+6 msg | [#120](https://github.com/Open-MBEE/qvts/pull/120) merged |
| [Declare followers for QVTS synthetic edit checks](https://nasa-jpl-demo.devinenterprise.com/sessions/94bb4aa015774bd4afee1eaf06cf257b) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 1h32 | 12.1 | 44 sh / 9 ed / 17 rd / 4 git / 0 mcp / 5+3 msg | [#119](https://github.com/Open-MBEE/qvts/pull/119) merged |
| [Generate typed metamodel vocabulary for QVTS synthetic](https://nasa-jpl-demo.devinenterprise.com/sessions/1010d061d4de4008b894ccf99c08bc6f) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 20:11 | suspended (inactivity) | 1h23 | 29.5 | 69 sh / 19 ed / 24 rd / 9 git / 7 mcp / 11+4 msg | [#121](https://github.com/Open-MBEE/qvts/pull/121) merged |
| [Migrate QVTS synthetic core types to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/06a6cee1f9c84b668569557d75659664) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 21:20 | suspended (inactivity) | 1h16 | 22.9 ‡ | 102 sh / 25 ed / 28 rd / 7 git / 0 mcp / 8+3 msg | [#123](https://github.com/Open-MBEE/qvts/pull/123) merged |
| [Fix stale fixed ends in composed QVTS relationships](https://nasa-jpl-demo.devinenterprise.com/sessions/347f628f6b27437ebc4ede419edf45b6) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 20:12 | suspended (inactivity) | 1h07 | 11.9 | 37 sh / 9 ed / 20 rd / 2 git / 0 mcp / 4+2 msg | [#122](https://github.com/Open-MBEE/qvts/pull/122) merged |
| [Migrate QVTS synthetic structures and values to enums](https://nasa-jpl-demo.devinenterprise.com/sessions/4dfa80d49d174d7f992bbded566b81b7) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 22:42 | suspended (inactivity) | 40m | 13.8 | 41 sh / 5 ed / 21 rd / 6 git / 0 mcp / 4+1 msg | [#126](https://github.com/Open-MBEE/qvts/pull/126) merged |
| [Add composed-model admissibility coverage ledger and metric](https://nasa-jpl-demo.devinenterprise.com/sessions/c013b383053246a4a9da522a170e1934) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 36m | 9.2 | 31 sh / 11 ed / 22 rd / 4 git / 0 mcp / 6+2 msg | [#117](https://github.com/Open-MBEE/qvts/pull/117) merged |
| [Migrate QVTS synthetic generator followers to enums](https://nasa-jpl-demo.devinenterprise.com/sessions/3a6aad7d39dd4779b5fb9749a050d46d) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 22:42 | suspended (inactivity) | 30m | 10.1 | 32 sh / 7 ed / 14 rd / 6 git / 0 mcp / 3+1 msg | [#125](https://github.com/Open-MBEE/qvts/pull/125) merged |
| [Widen QVTS model bridge to relationship cells](https://nasa-jpl-demo.devinenterprise.com/sessions/f0128e1eea5840c5b63c26e25171b7b1) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 17m | 8.7 | 30 sh / 9 ed / 12 rd / 4 git / 0 mcp / 3+1 msg | [#116](https://github.com/Open-MBEE/qvts/pull/116) merged |
| [Refresh stale Lean-leg figures in QVTS docs](https://nasa-jpl-demo.devinenterprise.com/sessions/6f1eaa3463d04ea6ac75d6b8633ba4f7) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:48 | suspended (inactivity) | 9m | 2.9 | 14 sh / 2 ed / 5 rd / 3 git / 0 mcp / 2+1 msg | [#118](https://github.com/Open-MBEE/qvts/pull/118) merged |

### L4YAML — 3 sessions, 3h09 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [List L4YAML PRs to Review](https://nasa-jpl-demo.devinenterprise.com/sessions/7782059af52e4a52b99922860986a008) | nasa-jpl/L4YAML | webapp | ultra | 11-18 17:32 | suspended (inactivity) | 1m | 2.1 | 4 sh / 0 ed / 1 rd / 6 git / 6 mcp / 2+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 2h43 | 2060.8 † | 133 sh / 14 ed / 0 rd / 8 git / 6 mcp / 11+2 msg | [#354](https://github.com/nasa-jpl/L4YAML/pull/354) merged, [#355](https://github.com/nasa-jpl/L4YAML/pull/355) merged |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 24m | 132.3 † | 14 sh / 1 ed / 0 rd / 0 git / 0 mcp / 3+1 msg |  |

### prov.lean — 8 sessions, 2h32 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE prov.lean work](https://nasa-jpl-demo.devinenterprise.com/sessions/6cefe1a7b093446e92a78d16dc8350e7) | Open-MBEE/prov.lean | webapp | ultra | 11-17 12:59 | suspended (inactivity) | 5m | 109.5 † | 7 sh / 0 ed / 0 rd / 0 git / 20 mcp / 12+3 msg |  |
| [Add PROV-N semantic rules and extensibility](https://nasa-jpl-demo.devinenterprise.com/sessions/3178ca7374df4bfdbcfae913847d0673) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 53m | 32.3 | 82 sh / 38 ed / 24 rd / 1 git / 3 mcp / 5+2 msg | [#47](https://github.com/Open-MBEE/prov.lean/pull/47) merged |
| [Read remaining PROV-O terms in codec](https://nasa-jpl-demo.devinenterprise.com/sessions/72be6ab708484d2d8a92bcb15f95affb) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 22m | 23.3 | 60 sh / 15 ed / 23 rd / 1 git / 0 mcp / 4+3 msg | [#46](https://github.com/Open-MBEE/prov.lean/pull/46) merged |
| [Define PROV-SEM formula language](https://nasa-jpl-demo.devinenterprise.com/sessions/b20dd77e721e4e77a025ed33e9e89fea) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 19m | 20.4 | 39 sh / 12 ed / 12 rd / 1 git / 5 mcp / 6+1 msg | [#44](https://github.com/Open-MBEE/prov.lean/pull/44) merged |
| [Remove NormalFormOK from weak completeness](https://nasa-jpl-demo.devinenterprise.com/sessions/10a3c0615b70425ebc93e2c7f6575b7f) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 17m | 13.3 | 35 sh / 7 ed / 13 rd / 1 git / 0 mcp / 2+1 msg | [#45](https://github.com/Open-MBEE/prov.lean/pull/45) merged |
| [Check PROV-DM reserved attribute placement](https://nasa-jpl-demo.devinenterprise.com/sessions/35389fe0478a4a56b0bbd82a7420c949) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 12m | 14.7 | 46 sh / 12 ed / 11 rd / 1 git / 0 mcp / 3+3 msg | [#42](https://github.com/Open-MBEE/prov.lean/pull/42) merged |
| [Define PROV-CONSTRAINTS instance equivalence](https://nasa-jpl-demo.devinenterprise.com/sessions/48bf42516c8e40c7968396cf8b030fbf) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 12m | 10.3 | 33 sh / 12 ed / 7 rd / 1 git / 0 mcp / 2+1 msg | [#43](https://github.com/Open-MBEE/prov.lean/pull/43) merged |
| [Prove PROV-SEM soundness of remaining inferences](https://nasa-jpl-demo.devinenterprise.com/sessions/83281d6385044bc7b1740b8e3950c48a) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 9m | 8.0 | 24 sh / 6 ed / 4 rd / 1 git / 0 mcp / 2+1 msg | [#41](https://github.com/Open-MBEE/prov.lean/pull/41) merged |

### engineering-foundation-architecture — 4 sessions, 2h10 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Flexo MMS Architecture Repositories](https://nasa-jpl-demo.devinenterprise.com/sessions/409462df998944fd9dbd3b0e64b57b65) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-18 13:43 | suspended (inactivity) | 20m | 7.4 | 28 sh / 4 ed / 10 rd / 2 git / 0 mcp / 7+2 msg | [#108](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/108) merged |
| [Update leanCurl and TLS repository references](https://nasa-jpl-demo.devinenterprise.com/sessions/285ee1039b66425f868d48bb50fc92e2) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-18 08:45 | suspended (inactivity) | 14m | 6.3 ‡ | 22 sh / 5 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#105](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/105) merged |
| [Repoint EFA MockGateway to TlsServer package](https://nasa-jpl-demo.devinenterprise.com/sessions/b104bb5d70394b2ba037fd6f12f8f5e4) | Open-MBEE/engineering-foundation-architecture | child of 91b42ff1 | ultra | 11-18 08:57 | suspended (inactivity) | 1h21 | 25.1 ‡ | 64 sh / 21 ed / 18 rd / 9 git / 9 mcp / 13+6 msg | [#106](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/106) merged |
| [Fetch public tls-server.lean from github.com on the mirror](https://nasa-jpl-demo.devinenterprise.com/sessions/8a1b0dff8bd44c2d92f13b981e76bce8) | Open-MBEE/engineering-foundation-architecture | child of b104bb5d | ultra | 11-18 12:44 | suspended (inactivity) | 13m | 3.6 ‡ | 12 sh / 3 ed / 3 rd / 2 git / 0 mcp / 2+1 msg | [#107](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/107) merged |

### tasktree.lean — 3 sessions, 1h15 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Build Interactive Lean Work Tracker Extension](https://nasa-jpl-demo.devinenterprise.com/sessions/7cbea5a8f2a2478bb2a3c93e381371ee) | Open-MBEE/tasktree.lean | webapp | ultra | 11-17 13:57 | suspended (inactivity) | 22m | 105.2 † | 40 sh / 8 ed / 12 rd / 7 git / 17 mcp / 17+7 msg | [#1](https://github.com/Open-MBEE/tasktree.lean/pull/1) merged |
| [Make tasktree.lean release workflow run on both GitHub instances](https://nasa-jpl-demo.devinenterprise.com/sessions/0f6cdc5c40f943cba761a6a5afc4f007) | Open-MBEE/engineering-foundation-architecture, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 14:57 | suspended (inactivity) | 34m | 38.5 ‡ | 105 sh / 33 ed / 29 rd / 7 git / 3 mcp / 15+6 msg | [#3](https://github.com/Open-MBEE/tasktree.lean/pull/3) merged, [#4](https://github.com/Open-MBEE/tasktree.lean/pull/4) merged, [#5](https://github.com/Open-MBEE/tasktree.lean/pull/5) merged, [engineering-foundation-architecture #109](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/109) merged |
| [Fix tasktree.lean review findings and live YAML error](https://nasa-jpl-demo.devinenterprise.com/sessions/2926ee8f55d640f19aac391091842a61) | Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 08:15 | suspended (inactivity) | 17m | 18.7 | 51 sh / 15 ed / 27 rd / 10 git / 0 mcp / 5+1 msg | [#2](https://github.com/Open-MBEE/tasktree.lean/pull/2) merged |

### PropertyKindCalculus — 2 sessions, 53m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/a9d98dc15e414418b6aca1c667153f39) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-18 06:01 | suspended (inactivity) | 0m | 1.9 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
| [Add ISO 80000-1 and VIM reference chapter to PKC](https://nasa-jpl-demo.devinenterprise.com/sessions/ebfe9e8ade7b430db3b8fb9d6369cd2f) | nasa-jpl/PropertyKindCalculus | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 53m | 25.2 ‡ | 62 sh / 5 ed / 33 rd / 4 git / 0 mcp / 3+1 msg | [#112](https://github.com/nasa-jpl/PropertyKindCalculus/pull/112) merged |

### face.lean — 2 sessions, 41m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Face.lean SBVR-to-SMT Pilot](https://nasa-jpl-demo.devinenterprise.com/sessions/354975b540f143a79fb6872fd23e2a96) | Open-MBEE/face.lean | webapp | ultra | 11-18 14:11 | suspended (inactivity) | 10m | 14.6 | 49 sh / 5 ed / 15 rd / 3 git / 3 mcp / 13+5 msg | [#50](https://github.com/Open-MBEE/face.lean/pull/50) merged |
| [Port face.lean build workflow to self-hosted runners](https://nasa-jpl-demo.devinenterprise.com/sessions/aaf8d68c8ca543e6ab473926789100c1) | Open-MBEE/face.lean | child of 354975b5 | ultra | 11-18 15:22 | suspended (inactivity) | 31m | 13.9 | 25 sh / 4 ed / 3 rd / 2 git / 0 mcp / 4+2 msg | [#51](https://github.com/Open-MBEE/face.lean/pull/51) merged |

### OpenSysML — 1 session, 37m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 37m | 4868.4 † | ≥14 sh / 3 ed / 4 rd / 2 git / 0 mcp / 2+0 msg |  |

### tls-server.lean — 1 session, 18m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Find TLR Mockup Repository](https://nasa-jpl-demo.devinenterprise.com/sessions/91b42ff1627a47dcab79badf39e6243a) | Open-MBEE/leanCurl, Open-MBEE/tls-server.lean | webapp | ultra | 11-18 08:19 | suspended (inactivity) | 18m | 25.2 ‡ | 62 sh / 26 ed / 15 rd / 10 git / 5 mcp / 21+10 msg | [leanCurl #4](https://github.com/Open-MBEE/leanCurl/pull/4) closed, [#1](https://github.com/Open-MBEE/tls-server.lean/pull/1) merged, [#2](https://github.com/Open-MBEE/tls-server.lean/pull/2) merged, [#3](https://github.com/Open-MBEE/tls-server.lean/pull/3) merged |

### nfr.workboard — 1 session, 11m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Set up nfr.workboard data repository layout](https://nasa-jpl-demo.devinenterprise.com/sessions/1ad77f6fe10a406c97b419296dbf6a97) | Open-MBEE/nfr.workboard, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 07:51 | suspended (inactivity) | 11m | 39.7 ‡ | 40 sh / 10 ed / 5 rd / 6 git / 0 mcp / 5+4 msg | [#1](https://github.com/Open-MBEE/nfr.workboard/pull/1) merged, [#2](https://github.com/Open-MBEE/nfr.workboard/pull/2) merged |

### (no repository) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Nicolas's Daily Devin Report](https://nasa-jpl-demo.devinenterprise.com/sessions/77213d376a3341a992521ff3893d65a7) |  | automation | ultra | 11-18 00:05 | suspended (inactivity) | 4m | 2.5 ‡ | 4 sh / 0 ed / 0 rd / 0 git / 586 mcp / 2+1 msg |  |
