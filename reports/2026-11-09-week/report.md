# Devin session report — week 2026-11-09 → 2026-11-15

Sessions of Nicolas Rouquette created or active between Mon 2026-11-09 00:00 and Mon 2026-11-16 00:00 (America/Los_Angeles): 126 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Per-project totals (week 2026-11-09 → 2026-11-15)

| Project | Sessions (created in window) | Working time | ACUs (sessions fully in window) | ACUs ‡ (created in window, still active after) | ACUs † (older sessions, lifetime) | Actions | PRs opened |
|---|---|---|---|---|---|---|---|
| **OpenSysML** | 17 (15) | 137h37 | 137.6 | 248.8 | 5051.2 | 10,180≥ | 59 |
| **L4YAML** | 16 (11) | 83h27 | 69.7 | 299.7 | 8021.7 | 8,773 | 62 |
| **fprime-lean-sysmlv2-example** | 8 (6) | 40h40 | 772.7 | 0.0 | 632.4 | 2,952 | 11 |
| **qvts** | 13 (12) | 35h17 | 468.0 | 232.4 | 313.5 | 17,860 | 35 |
| **pacti.lean** | 22 (22) | 22h05 | 381.1 | 291.8 | 0.0 | 2,972 | 24 |
| **prov.lean** | 2 (2) | 11h31 | 13.0 | 863.1 | 0.0 | 2,635 | 15 |
| **SBVR.lean** | 2 (1) | 6h30 | 0.0 | 61.6 | 2191.0 | 1,756 | 20 |
| **soil-moisture-workflows** | 2 (1) | 6h05 | 0.0 | 411.0 | 425.1 | 1,336 | 24 |
| **engineering-foundation-architecture** | 6 (6) | 3h19 | 91.5 | 169.5 | 0.0 | 817 | 8 |
| **mars.lean** | 6 (5) | 3h09 | 95.5 | 0.0 | 3588.7 | 543 | 3 |
| **git-remote-sync.lean** | 5 (4) | 2h00 | 39.6 | 56.2 | 705.1 | 598 | 7 |
| **soil-moisture-model** | 4 (3) | 1h29 | 9.2 | 10.8 | 225.9 | 153 | 2 |
| **html-to-pdf.lean** | 1 (1) | 55m | 13.8 | 0.0 | 0.0 | 88 | 1 |
| **devin-automation** | 1 (0) | 42m | 0.0 | 0.0 | 123.2 | 1,207 | 3 |
| **(no repository)** | 9 (9) | 34m | 17.6 | 5.1 | 0.0 | 4,253 | 0 |
| **(Devin housekeeping)** | 2 (2) | 23m | 0.0 | 0.0 | 0.0 | 306 | 0 |
| **mars** | 1 (1) | 16m | 0.0 | 21.0 | 0.0 | 114 | 1 |
| **soil-moisture-dps** | 1 (0) | 6m | 0.0 | 0.0 | 70.9 | 56 | 0 |
| **PropertyKindCalculus** | 7 (7) | 3m | 9.7 | 0.0 | 0.0 | 23 | 0 |
| **face.lean** | 1 (1) | 1m | 2.1 | 0.0 | 0.0 | 17 | 0 |

## Working time per project per day (hours)

| Project | Mon 09 | Tue 10 | Wed 11 | Thu 12 | Fri 13 | Sat 14 | Sun 15 | Total |
|---|---|---|---|---|---|---|---|---|
| OpenSysML | 17.7 | 18.4 | 13.6 | 17.1 | 11.7 | 17.2 | 41.9 | 137.6 |
| L4YAML | 12.2 | 13.0 | 2.5 | 7.4 | 2.9 | 22.4 | 23.0 | 83.5 |
| fprime-lean-sysmlv2-example | 17.5 | 19.9 | 3.2 | · | · | · | · | 40.7 |
| qvts | 13.1 | 14.0 | 5.6 | 2.0 | 0.7 | · | · | 35.3 |
| pacti.lean | · | · | · | · | 2.2 | 14.9 | 4.9 | 22.1 |
| prov.lean | · | · | 1.0 | 1.9 | 1.0 | 1.9 | 5.8 | 11.5 |
| SBVR.lean | 0.3 | 1.4 | 1.0 | 2.4 | · | 0.6 | 0.9 | 6.5 |
| soil-moisture-workflows | 1.8 | · | · | · | 4.3 | · | · | 6.1 |
| engineering-foundation-architecture | · | 1.1 | 0.9 | 0.5 | · | 0.1 | 0.7 | 3.3 |
| mars.lean | 3.0 | 0.2 | · | · | · | · | · | 3.2 |
| git-remote-sync.lean | 0.8 | 0.3 | · | · | 0.6 | · | 0.4 | 2.0 |
| soil-moisture-model | · | · | 0.2 | · | 1.2 | · | · | 1.5 |
| html-to-pdf.lean | · | · | · | · | 0.9 | · | · | 0.9 |
| devin-automation | 0.7 | · | · | · | · | · | · | 0.7 |
| (no repository) | 0.2 | 0.1 | · | 0.1 | 0.1 | 0.1 | · | 0.6 |
| (Devin housekeeping) | 0.2 | · | · | · | 0.2 | · | · | 0.4 |
| mars | 0.3 | · | · | · | · | · | · | 0.3 |
| soil-moisture-dps | · | 0.1 | · | · | · | · | · | 0.1 |
| PropertyKindCalculus | · | · | · | · | · | · | · | 0.1 |
| face.lean | · | · | · | · | · | · | · | 0.0 |

## Sessions by project

### OpenSysML — 17 sessions, 137h37 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 106h13 | 4868.4 † | ≥5553 sh / 824 ed / 312 rd / 342 git / 220 mcp / 309+53 msg | [qvts #57](https://github.com/Open-MBEE/qvts/pull/57) merged, [#2070](https://github.com/Open-MBEE/OpenSysML/pull/2070) merged, [qvts #58](https://github.com/Open-MBEE/qvts/pull/58) merged, [#2088](https://github.com/Open-MBEE/OpenSysML/pull/2088) merged, [#2091](https://github.com/Open-MBEE/OpenSysML/pull/2091) merged, [#2093](https://github.com/Open-MBEE/OpenSysML/pull/2093) merged, [#2110](https://github.com/Open-MBEE/OpenSysML/pull/2110) merged, [qvts #74](https://github.com/Open-MBEE/qvts/pull/74) merged, [#2117](https://github.com/Open-MBEE/OpenSysML/pull/2117) merged, [#2121](https://github.com/Open-MBEE/OpenSysML/pull/2121) merged, [qvts #75](https://github.com/Open-MBEE/qvts/pull/75) merged, [#2127](https://github.com/Open-MBEE/OpenSysML/pull/2127) closed, [#2135](https://github.com/Open-MBEE/OpenSysML/pull/2135) merged, [#2143](https://github.com/Open-MBEE/OpenSysML/pull/2143) merged, [qvts #86](https://github.com/Open-MBEE/qvts/pull/86) merged, [#2161](https://github.com/Open-MBEE/OpenSysML/pull/2161) merged, [#2164](https://github.com/Open-MBEE/OpenSysML/pull/2164) merged, [qvts #91](https://github.com/Open-MBEE/qvts/pull/91) merged, [#2172](https://github.com/Open-MBEE/OpenSysML/pull/2172) merged, [#2173](https://github.com/Open-MBEE/OpenSysML/pull/2173) merged, [#2175](https://github.com/Open-MBEE/OpenSysML/pull/2175) merged, [qvts #93](https://github.com/Open-MBEE/qvts/pull/93) merged, [#2180](https://github.com/Open-MBEE/OpenSysML/pull/2180) merged, [#2190](https://github.com/Open-MBEE/OpenSysML/pull/2190) merged, [qvts #97](https://github.com/Open-MBEE/qvts/pull/97) merged, [#2194](https://github.com/Open-MBEE/OpenSysML/pull/2194) merged, [qvts #100](https://github.com/Open-MBEE/qvts/pull/100) merged, [#2215](https://github.com/Open-MBEE/OpenSysML/pull/2215) merged, [#2216](https://github.com/Open-MBEE/OpenSysML/pull/2216) merged, [qvts #101](https://github.com/Open-MBEE/qvts/pull/101) merged, [#2220](https://github.com/Open-MBEE/OpenSysML/pull/2220) merged, [#2221](https://github.com/Open-MBEE/OpenSysML/pull/2221) merged, [#2222](https://github.com/Open-MBEE/OpenSysML/pull/2222) merged, [qvts #102](https://github.com/Open-MBEE/qvts/pull/102) merged, [qvts #103](https://github.com/Open-MBEE/qvts/pull/103) merged, [#2234](https://github.com/Open-MBEE/OpenSysML/pull/2234) merged, [qvts #104](https://github.com/Open-MBEE/qvts/pull/104) merged, [#2242](https://github.com/Open-MBEE/OpenSysML/pull/2242) merged, [#2245](https://github.com/Open-MBEE/OpenSysML/pull/2245) merged, [qvts #105](https://github.com/Open-MBEE/qvts/pull/105) merged, [#2259](https://github.com/Open-MBEE/OpenSysML/pull/2259) merged, [#2260](https://github.com/Open-MBEE/OpenSysML/pull/2260) merged, [#2261](https://github.com/Open-MBEE/OpenSysML/pull/2261) merged, [#2266](https://github.com/Open-MBEE/OpenSysML/pull/2266) merged, [#2268](https://github.com/Open-MBEE/OpenSysML/pull/2268) merged, [#2270](https://github.com/Open-MBEE/OpenSysML/pull/2270) merged, [#2278](https://github.com/Open-MBEE/OpenSysML/pull/2278) merged |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | suspended (inactivity) | 5h03 | 182.8 † | 285 sh / 38 ed / 77 rd / 22 git / 16 mcp / 30+15 msg | [#2071](https://github.com/Open-MBEE/OpenSysML/pull/2071) merged |
| [Make compliance row 17-expression-evaluation:25 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/49d0e2e74ead418995773a1f6a0403a1) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (user_request) [archived] | 3h13 | 37.5 ‡ | 128 sh / 17 ed / 31 rd / 18 git / 7 mcp / 7+2 msg | [#2274](https://github.com/Open-MBEE/OpenSysML/pull/2274) merged |
| [Make compliance row 28-name-resolution:69 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/5793d98799964d8db0a603483611aa16) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (user_request) [archived] | 2h50 | 40.6 ‡ | 182 sh / 39 ed / 72 rd / 17 git / 2 mcp / 5+1 msg | [#2275](https://github.com/Open-MBEE/OpenSysML/pull/2275) merged |
| [Make compliance row 26-usage-prefixes:8 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/e7e976d3e710492d80dc96a4af63d60b) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 2h46 | 32.8 ‡ | 121 sh / 19 ed / 20 rd / 5 git / 0 mcp / 4+1 msg | [#2279](https://github.com/Open-MBEE/OpenSysML/pull/2279) merged |
| [Make compliance row 28-name-resolution:71 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/f8b30d9a7cc94f7ea41fb1ab647eef47) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 2h17 | 22.3 | 89 sh / 15 ed / 30 rd / 7 git / 10 mcp / 7+3 msg | [#2276](https://github.com/Open-MBEE/OpenSysML/pull/2276) merged |
| [Make compliance row 28-name-resolution:81 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/9eae7d55903746d1a212b6005ae0e586) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 2h07 | 48.5 ‡ | 108 sh / 23 ed / 23 rd / 4 git / 8 mcp / 5+2 msg | [#2277](https://github.com/Open-MBEE/OpenSysML/pull/2277) merged |
| [Make compliance row 28-name-resolution:120 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/4bb54d932d8b4f468fb4b8276dfb05cf) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h38 | 16.3 | 71 sh / 10 ed / 33 rd / 5 git / 5 mcp / 3+1 msg | [#2271](https://github.com/Open-MBEE/OpenSysML/pull/2271) merged |
| [Make compliance row 15-state-machine:94 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/127f7be0f3b5458cbcf2b6eedaa5f862) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h34 | 23.1 ‡ | 87 sh / 19 ed / 25 rd / 5 git / 5 mcp / 3+1 msg | [#2272](https://github.com/Open-MBEE/OpenSysML/pull/2272) merged |
| [Make compliance row 28-name-resolution:68 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/36b9c9155ecc4f16916998b7350e71bb) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h24 | 18.3 | 97 sh / 19 ed / 31 rd / 6 git / 0 mcp / 3+1 msg | [#2273](https://github.com/Open-MBEE/OpenSysML/pull/2273) merged |
| [Make compliance row 08-instantiation:23 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/7e4ab05d47b540e8b7877c492a54e615) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 47m | 18.6 ‡ | 57 sh / 14 ed / 21 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Audit approximate spec-compliance rows for feasibility](https://nasa-jpl-demo.devinenterprise.com/sessions/e92fc6eb62514a0690cd00b9dd2ee5d4) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 05:15 | suspended (user_request) [archived] | 10m | 12.3 ‡ | 47 sh / 0 ed / 7 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Make compliance row 23-static-typing:29 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/5d48c28b9d274256bebd689770f7a4c3) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 6m | 25.9 ‡ | 32 sh / 0 ed / 8 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Make compliance row 18-kerml-function-library:619 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/748cc6cd3fe74a6b9b3f611d8b3374b4) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 3m | 9.5 ‡ | 25 sh / 0 ed / 7 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Honor position-only sysx:Note edits on source-backed text](https://nasa-jpl-demo.devinenterprise.com/sessions/c18ad5bff7bd466b8460db005afd0a1e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 4h03 | 33.4 | 117 sh / 20 ed / 26 rd / 23 git / 9 mcp / 3+1 msg | [#2090](https://github.com/Open-MBEE/OpenSysML/pull/2090) merged |
| [Leave sysx:-typed nodes uncarried in sysml -sync](https://nasa-jpl-demo.devinenterprise.com/sessions/35fe61f8565a40429b37c892ce4b1a2e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 2h26 | 21.9 | 88 sh / 11 ed / 32 rd / 19 git / 9 mcp / 3+1 msg | [#2089](https://github.com/Open-MBEE/OpenSysML/pull/2089) merged |
| [Prepare OpenSysML release/0.13.0 branch and PR to main](https://nasa-jpl-demo.devinenterprise.com/sessions/971fe7f6ece04bd2ae8d582c595bcce5) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-10 08:51 | suspended (inactivity) | 49m | 25.4 | 74 sh / 2 ed / 18 rd / 8 git / 0 mcp / 14+10 msg | [#2112](https://github.com/Open-MBEE/OpenSysML/pull/2112) closed |

### L4YAML — 16 sessions, 83h27 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Add metagraph experiment documentation](https://nasa-jpl-demo.devinenterprise.com/sessions/bfb0071aeaab4aa58b50b413bca12aba) | nasa-jpl/L4YAML | webapp | ultra | 11-09 18:15 | suspended (inactivity) | 56m | 55.6 ‡ | 119 sh / 20 ed / 33 rd / 19 git / 14 mcp / 33+12 msg | [#279](https://github.com/nasa-jpl/L4YAML/pull/279) closed, [#280](https://github.com/nasa-jpl/L4YAML/pull/280) merged, [#284](https://github.com/nasa-jpl/L4YAML/pull/284) merged |
| [Discuss L4YAML Assurance Gap](https://nasa-jpl-demo.devinenterprise.com/sessions/340a0814c47344da91f6de2b7146265b) | nasa-jpl/L4YAML | webapp | ultra | 11-10 22:25 | suspended (inactivity) | 45m | 39.8 ‡ | 150 sh / 2 ed / 30 rd / 9 git / 0 mcp / 22+12 msg |  |
| [Review L4YAML Pull Requests](https://nasa-jpl-demo.devinenterprise.com/sessions/956b61080c1444a5ac64c4effb79da21) | nasa-jpl/L4YAML | webapp | ultra | 11-12 07:57 | suspended (inactivity) | 6m | 28.7 ‡ | 7 sh / 1 ed / 5 rd / 5 git / 13 mcp / 7+1 msg |  |
| [Clarify YAML Grammar Ambiguity](https://nasa-jpl-demo.devinenterprise.com/sessions/ac39e286391042c5abec6e4fa1ae29a4) | nasa-jpl/L4YAML | webapp | ultra | 11-09 21:33 | suspended (inactivity) | 2m | 3.5 | 9 sh / 0 ed / 2 rd / 1 git / 0 mcp / 2+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 33h55 | 2060.8 † | 2755 sh / 452 ed / 47 rd / 120 git / 57 mcp / 222+58 msg | [#276](https://github.com/nasa-jpl/L4YAML/pull/276) merged, [#277](https://github.com/nasa-jpl/L4YAML/pull/277) merged, [#278](https://github.com/nasa-jpl/L4YAML/pull/278) merged, [#281](https://github.com/nasa-jpl/L4YAML/pull/281) merged, [#286](https://github.com/nasa-jpl/L4YAML/pull/286) merged, [#287](https://github.com/nasa-jpl/L4YAML/pull/287) merged, [#288](https://github.com/nasa-jpl/L4YAML/pull/288) merged, [#289](https://github.com/nasa-jpl/L4YAML/pull/289) merged, [#291](https://github.com/nasa-jpl/L4YAML/pull/291) merged, [#293](https://github.com/nasa-jpl/L4YAML/pull/293) merged, [#294](https://github.com/nasa-jpl/L4YAML/pull/294) merged, [#295](https://github.com/nasa-jpl/L4YAML/pull/295) merged, [#297](https://github.com/nasa-jpl/L4YAML/pull/297) merged, [#298](https://github.com/nasa-jpl/L4YAML/pull/298) merged, [#301](https://github.com/nasa-jpl/L4YAML/pull/301) merged, [#303](https://github.com/nasa-jpl/L4YAML/pull/303) merged, [#304](https://github.com/nasa-jpl/L4YAML/pull/304) merged, [#305](https://github.com/nasa-jpl/L4YAML/pull/305) merged, [#306](https://github.com/nasa-jpl/L4YAML/pull/306) merged, [#308](https://github.com/nasa-jpl/L4YAML/pull/308) merged, [#310](https://github.com/nasa-jpl/L4YAML/pull/310) merged, [#311](https://github.com/nasa-jpl/L4YAML/pull/311) merged, [#321](https://github.com/nasa-jpl/L4YAML/pull/321) merged, [#325](https://github.com/nasa-jpl/L4YAML/pull/325) merged, [#328](https://github.com/nasa-jpl/L4YAML/pull/328) merged, [#331](https://github.com/nasa-jpl/L4YAML/pull/331) merged, [#336](https://github.com/nasa-jpl/L4YAML/pull/336) merged, [#339](https://github.com/nasa-jpl/L4YAML/pull/339) merged, [#341](https://github.com/nasa-jpl/L4YAML/pull/341) merged, [#343](https://github.com/nasa-jpl/L4YAML/pull/343) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 29h52 | 4151.6 † | 2024 sh / 381 ed / 40 rd / 199 git / 35 mcp / 106+57 msg | [#283](https://github.com/nasa-jpl/L4YAML/pull/283) merged, [#312](https://github.com/nasa-jpl/L4YAML/pull/312) merged, [#315](https://github.com/nasa-jpl/L4YAML/pull/315) merged, [#317](https://github.com/nasa-jpl/L4YAML/pull/317) merged, [#319](https://github.com/nasa-jpl/L4YAML/pull/319) merged, [#320](https://github.com/nasa-jpl/L4YAML/pull/320) merged, [#322](https://github.com/nasa-jpl/L4YAML/pull/322) merged, [#323](https://github.com/nasa-jpl/L4YAML/pull/323) merged, [#324](https://github.com/nasa-jpl/L4YAML/pull/324) merged, [#326](https://github.com/nasa-jpl/L4YAML/pull/326) merged, [#327](https://github.com/nasa-jpl/L4YAML/pull/327) merged, [#329](https://github.com/nasa-jpl/L4YAML/pull/329) merged, [#330](https://github.com/nasa-jpl/L4YAML/pull/330) merged, [#332](https://github.com/nasa-jpl/L4YAML/pull/332) merged, [#333](https://github.com/nasa-jpl/L4YAML/pull/333) merged, [#334](https://github.com/nasa-jpl/L4YAML/pull/334) merged, [#335](https://github.com/nasa-jpl/L4YAML/pull/335) merged, [#337](https://github.com/nasa-jpl/L4YAML/pull/337) merged, [#340](https://github.com/nasa-jpl/L4YAML/pull/340) merged, [#344](https://github.com/nasa-jpl/L4YAML/pull/344) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 10h30 | 331.8 † | 421 sh / 121 ed / 20 rd / 52 git / 6 mcp / 48+26 msg | [#282](https://github.com/nasa-jpl/L4YAML/pull/282) merged, [#285](https://github.com/nasa-jpl/L4YAML/pull/285) merged, [#313](https://github.com/nasa-jpl/L4YAML/pull/313) merged, [#316](https://github.com/nasa-jpl/L4YAML/pull/316) merged, [#318](https://github.com/nasa-jpl/L4YAML/pull/318) merged |
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 5m | 578.7 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Clear Lean lint warnings in L4YAML Serialization proofs](https://nasa-jpl-demo.devinenterprise.com/sessions/000613653ae24ba19d3b12da1d9b61d4) | nasa-jpl/L4YAML | child of 58f12c50 | ultra | 11-13 21:14 | suspended (inactivity) | 20m | 7.8 | 27 sh / 2 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#309](https://github.com/nasa-jpl/L4YAML/pull/309) merged |
| [Clear remaining L4YAML library lint warnings](https://nasa-jpl-demo.devinenterprise.com/sessions/99f7fa8d7ce24f6db8cc67d056ed20a6) | nasa-jpl/L4YAML | child of 58f12c50 | ultra | 11-14 11:48 | suspended (inactivity) | 20m | 7.8 | 33 sh / 1 ed / 9 rd / 2 git / 0 mcp / 3+1 msg | [#314](https://github.com/nasa-jpl/L4YAML/pull/314) merged |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 2h32 | 132.3 ‡ | 203 sh / 11 ed / 17 rd / 12 git / 0 mcp / 13+6 msg |  |
| [Review L4YAML PR #290 embedded-NUL FFI fix](https://nasa-jpl-demo.devinenterprise.com/sessions/1c8e22c9f5024f27914303ad72a771cc) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 56m | 24.9 | 140 sh / 2 ed / 29 rd / 8 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #292 safe_dump scalar escaping](https://nasa-jpl-demo.devinenterprise.com/sessions/181a9450515546b38406c05906edf410) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 33m | 25.6 | 93 sh / 1 ed / 17 rd / 3 git / 0 mcp / 8+4 msg |  |
| [Review L4YAML PR #300 Core numeric spellings](https://nasa-jpl-demo.devinenterprise.com/sessions/d7659a10c36746deae97ff26be7e62a2) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 30m | 15.3 ‡ | 66 sh / 1 ed / 19 rd / 3 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #299 explicit Core tags](https://nasa-jpl-demo.devinenterprise.com/sessions/d8c29e5a929e4a64881d356d2a70fb1e) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 27m | 27.9 ‡ | 95 sh / 1 ed / 12 rd / 9 git / 0 mcp / 8+4 msg |  |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 1h31 | 898.8 † | 87 sh / 24 ed / 8 rd / 21 git / 113 mcp / 43+14 msg | [#338](https://github.com/nasa-jpl/L4YAML/pull/338) merged, [#342](https://github.com/nasa-jpl/L4YAML/pull/342) merged |

### fprime-lean-sysmlv2-example — 8 sessions, 40h40 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Downlink M0 Architecture Diagram](https://nasa-jpl-demo.devinenterprise.com/sessions/c4fe0be598084357b14813fd5326e998) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-09 12:13 | suspended (inactivity) | 7h21 | 127.3 | 270 sh / 68 ed / 56 rd / 15 git / 8 mcp / 32+15 msg | [#111](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/111) merged, [#112](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/112) merged, [#113](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/113) merged, [#115](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/115) merged, [#117](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/117) merged |
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | suspended (inactivity) | 19m | 562.6 † | 22 sh / 9 ed / 1 rd / 3 git / 31 mcp / 33+10 msg |  |
| [Create FACE and MARS Quad-Chart Slide](https://nasa-jpl-demo.devinenterprise.com/sessions/794c21c27af54614a16d3747a9ce6386) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-10 13:43 | suspended (inactivity) | 4m | 4.9 | 22 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |
| [ECR-002: Q1 two readings — evidence, #reading_coverage, then fix](https://nasa-jpl-demo.devinenterprise.com/sessions/d89172028cbe4ef9a871a4bf458fdd3c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:21 | suspended (inactivity) | 15h03 | 246.4 | 609 sh / 164 ed / 63 rd / 11 git / 16 mcp / 31+12 msg | [#120](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/120) merged, [#121](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/121) merged |
| [M1 checker engineering with spec lemmas (step 4)](https://nasa-jpl-demo.devinenterprise.com/sessions/b60bb5ce46294a0a88bc1e343383448a) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:12 | suspended (inactivity) | 7h40 | 233.0 | 780 sh / 97 ed / 76 rd / 9 git / 6 mcp / 19+6 msg | [#118](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/118) merged, [#119](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/119) merged |
| [M1 refinement theorem: fine verdict from coarse (step 3)](https://nasa-jpl-demo.devinenterprise.com/sessions/07afd2af868d456d856260d372a79b6b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-09 11:08 | suspended (inactivity) | 4h39 | 47.0 | 151 sh / 31 ed / 19 rd / 1 git / 8 mcp / 4+1 msg | [#114](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/114) merged |
| [M1 order factorisation lemmas; fidelity-limit record (step 3′)](https://nasa-jpl-demo.devinenterprise.com/sessions/2429c2384b5c4be298f161cb4b7530ed) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-09 19:56 | suspended (inactivity) | 3h49 | 114.2 | 162 sh / 33 ed / 25 rd / 3 git / 4 mcp / 5+1 msg | [#116](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/116) merged |
| [M1 facts: simulate once, check over trace literals (step 1)](https://nasa-jpl-demo.devinenterprise.com/sessions/9762b7a9801b472598539ce3b5e2f325) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-08 16:59 | suspended (inactivity) | 1h43 | 69.8 † | 28 sh / 5 ed / 3 rd / 1 git / 7 mcp / 4+3 msg |  |

### qvts — 13 sessions, 35h17 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Assess Lean/Verso QVTS Readiness](https://nasa-jpl-demo.devinenterprise.com/sessions/ff906ec875c14d87a95d3e41422ca547) | Open-MBEE/qvts | webapp | fusion | 10-30 17:01 | suspended (inactivity) | 20h57 | 313.5 † | 9540 sh / 1442 ed / 3755 rd / 53 git / 15 mcp / 76+21 msg | [#59](https://github.com/Open-MBEE/qvts/pull/59) merged, [#60](https://github.com/Open-MBEE/qvts/pull/60) merged, [#61](https://github.com/Open-MBEE/qvts/pull/61) merged, [#62](https://github.com/Open-MBEE/qvts/pull/62) merged, [#63](https://github.com/Open-MBEE/qvts/pull/63) merged, [#64](https://github.com/Open-MBEE/qvts/pull/64) merged, [#65](https://github.com/Open-MBEE/qvts/pull/65) merged, [#66](https://github.com/Open-MBEE/qvts/pull/66) merged, [#67](https://github.com/Open-MBEE/qvts/pull/67) merged, [#68](https://github.com/Open-MBEE/qvts/pull/68) merged, [#69](https://github.com/Open-MBEE/qvts/pull/69) merged, [#70](https://github.com/Open-MBEE/qvts/pull/70) merged, [#71](https://github.com/Open-MBEE/qvts/pull/71) merged, [#72](https://github.com/Open-MBEE/qvts/pull/72) merged, [#73](https://github.com/Open-MBEE/qvts/pull/73) merged |
| [Create QVTS Mass Rollup Examples](https://nasa-jpl-demo.devinenterprise.com/sessions/e9f985e539484c79b232cec027170643) | Open-MBEE/qvts | webapp | ultra | 11-12 08:53 | suspended (inactivity) | 2h12 | 105.6 | 376 sh / 91 ed / 119 rd / 14 git / 21 mcp / 32+10 msg | [#92](https://github.com/Open-MBEE/qvts/pull/92) merged, [#94](https://github.com/Open-MBEE/qvts/pull/94) merged, [#95](https://github.com/Open-MBEE/qvts/pull/95) merged, [#96](https://github.com/Open-MBEE/qvts/pull/96) merged, [#99](https://github.com/Open-MBEE/qvts/pull/99) merged |
| [Add QVTS synthetic model coverage test plan](https://nasa-jpl-demo.devinenterprise.com/sessions/7459e04e306548f1a6da927a1bb5e437) | Open-MBEE/qvts | webapp | ultra | 11-10 18:53 | suspended (inactivity) | 33m | 139.7 ‡ | 64 sh / 10 ed / 21 rd / 10 git / 57 mcp / 44+11 msg | [#76](https://github.com/Open-MBEE/qvts/pull/76) merged |
| [Fix Open-MBEE/qvts warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/4bc4bb5a8c694d3b89f73446082bb1d9) | Open-MBEE/qvts | webapp | ultra | 11-13 10:02 | suspended (inactivity) | 23m | 6.3 | 28 sh / 4 ed / 4 rd / 3 git / 0 mcp / 3+1 msg | [#98](https://github.com/Open-MBEE/qvts/pull/98) merged |
| [Add QVTS synthetic recipe table and atlas](https://nasa-jpl-demo.devinenterprise.com/sessions/d604068cc6d4430b982aca056a74c42d) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 19:52 | suspended (inactivity) | 2h49 | 130.2 | 289 sh / 85 ed / 65 rd / 19 git / 17 mcp / 26+12 msg | [#77](https://github.com/Open-MBEE/qvts/pull/77) merged, [#79](https://github.com/Open-MBEE/qvts/pull/79) merged, [#82](https://github.com/Open-MBEE/qvts/pull/82) merged |
| [Add QVTS synthetic values gate](https://nasa-jpl-demo.devinenterprise.com/sessions/dadb358f17ae48f0a1b089b220a6745b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:54 | suspended (inactivity) | 1h50 | 71.2 ‡ | 198 sh / 56 ed / 59 rd / 14 git / 3 mcp / 17+8 msg | [#81](https://github.com/Open-MBEE/qvts/pull/81) merged, [#83](https://github.com/Open-MBEE/qvts/pull/83) merged |
| [Generate QVTS synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/58778dcb6f804bb29a7f426acb0b299c) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 20:45 | suspended (inactivity) | 1h35 | 40.2 | 141 sh / 38 ed / 23 rd / 5 git / 1 mcp / 11+5 msg | [#78](https://github.com/Open-MBEE/qvts/pull/78) closed |
| [Add QVTS synthetic composition operators](https://nasa-jpl-demo.devinenterprise.com/sessions/baf179ebff68484e8c12e9bfece3ea5e) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 17:28 | suspended (inactivity) | 1h15 | 42.0 | 159 sh / 41 ed / 43 rd / 2 git / 3 mcp / 7+2 msg | [#88](https://github.com/Open-MBEE/qvts/pull/88) merged |
| [Add QVTS synthetic edits gate](https://nasa-jpl-demo.devinenterprise.com/sessions/42b2d477bd7e4824ae7115c707fe10c4) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 08:23 | suspended (inactivity) | 1h00 | 83.1 | 179 sh / 40 ed / 48 rd / 4 git / 7 mcp / 8+2 msg | [#84](https://github.com/Open-MBEE/qvts/pull/84) merged, [#85](https://github.com/Open-MBEE/qvts/pull/85) merged |
| [Run QVTS reflection over synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/c6c88808f78b4b9482fe527179b020d2) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:10 | suspended (inactivity) | 56m | 31.6 | 84 sh / 18 ed / 36 rd / 5 git / 8 mcp / 11+5 msg | [#80](https://github.com/Open-MBEE/qvts/pull/80) closed |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 54m | 21.5 ‡ | 88 sh / 9 ed / 35 rd / 5 git / 0 mcp / 6+2 msg | [#90](https://github.com/Open-MBEE/qvts/pull/90) merged |
| [Add QVTS synthetic nightly tiers workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/dff306134f4e424e9044a0edd96ca1f1) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 20:56 | suspended (inactivity) | 35m | 18.3 | 64 sh / 16 ed / 35 rd / 1 git / 0 mcp / 2+1 msg | [#89](https://github.com/Open-MBEE/qvts/pull/89) merged |
| [Fold measured figures into QVTS coverage plan](https://nasa-jpl-demo.devinenterprise.com/sessions/ef2935ede9be4aafab6e59719a3a865b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 17:28 | suspended (inactivity) | 12m | 10.7 | 29 sh / 3 ed / 8 rd / 2 git / 0 mcp / 5+3 msg | [#87](https://github.com/Open-MBEE/qvts/pull/87) merged |

### pacti.lean — 22 sessions, 22h05 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 1h53 | 204.2 ‡ | 186 sh / 28 ed / 32 rd / 22 git / 58 mcp / 66+21 msg | [#6](https://github.com/Open-MBEE/pacti.lean/pull/6) merged, [#7](https://github.com/Open-MBEE/pacti.lean/pull/7) merged, [#10](https://github.com/Open-MBEE/pacti.lean/pull/10) merged |
| [Wire GR(1) simplify into compose and quotient](https://nasa-jpl-demo.devinenterprise.com/sessions/170d3e53292b4fdf8c4846906ac8f9e7) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 20:49 | suspended (inactivity) | 3h55 | 41.4 | 162 sh / 31 ed / 38 rd / 6 git / 0 mcp / 7+3 msg | [#26](https://github.com/Open-MBEE/pacti.lean/pull/26) merged |
| [Add GR(1) simplify parity to pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/42c142026d914c9cbd8b9471fe31d105) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 17:17 | suspended (inactivity) | 3h37 | 52.7 | 212 sh / 26 ed / 71 rd / 2 git / 8 mcp / 10+3 msg | [#18](https://github.com/Open-MBEE/pacti.lean/pull/18) merged |
| [Add GR(1) contract operations parity](https://nasa-jpl-demo.devinenterprise.com/sessions/ea0180c9739b4849bc0a3552be154aed) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 17:17 | suspended (inactivity) | 2h43 | 44.2 | 151 sh / 29 ed / 52 rd / 3 git / 3 mcp / 9+4 msg | [#17](https://github.com/Open-MBEE/pacti.lean/pull/17) merged, [#23](https://github.com/Open-MBEE/pacti.lean/pull/23) merged |
| [Add SMT-LIB gr1_machine section to GR(1) JSON](https://nasa-jpl-demo.devinenterprise.com/sessions/8ed3105b93b0433ea1c59a0baab863bf) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 1h03 | 22.4 ‡ | 66 sh / 18 ed / 28 rd / 3 git / 0 mcp / 2+1 msg | [#30](https://github.com/Open-MBEE/pacti.lean/pull/30) merged |
| [Finish GR(1) CAVE eliminations in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/60f6fe90545041498d82d29add293dad) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-13 21:38 | suspended (inactivity) | 54m | 35.3 | 92 sh / 30 ed / 34 rd / 2 git / 0 mcp / 3+1 msg | [#9](https://github.com/Open-MBEE/pacti.lean/pull/9) merged |
| [Wire exact integer elimination into GR(1) operations](https://nasa-jpl-demo.devinenterprise.com/sessions/8435c0edaf494affb49de63f837786a0) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 14:21 | suspended (inactivity) | 52m | 29.0 ‡ | 90 sh / 25 ed / 38 rd / 2 git / 3 mcp / 5+1 msg | [#28](https://github.com/Open-MBEE/pacti.lean/pull/28) merged |
| [Add divisibility atom to GR(1) cores](https://nasa-jpl-demo.devinenterprise.com/sessions/48585ba7711c465d87e0b56777852bf5) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 11:53 | suspended (inactivity) | 46m | 32.6 | 104 sh / 33 ed / 29 rd / 2 git / 3 mcp / 4+1 msg | [#27](https://github.com/Open-MBEE/pacti.lean/pull/27) merged |
| [Add exact integer elimination for GR(1)](https://nasa-jpl-demo.devinenterprise.com/sessions/ed2cccabe0104932927859bab4b96650) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 21:09 | suspended (inactivity) | 30m | 19.9 | 44 sh / 18 ed / 17 rd / 2 git / 0 mcp / 3+1 msg | [#21](https://github.com/Open-MBEE/pacti.lean/pull/21) merged |
| [Add GR(1) int sorts to JSON reader](https://nasa-jpl-demo.devinenterprise.com/sessions/0b2cbab65491493485443c9d22a0132d) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 21:21 | suspended (inactivity) | 25m | 17.7 | 71 sh / 22 ed / 41 rd / 2 git / 0 mcp / 4+1 msg | [#22](https://github.com/Open-MBEE/pacti.lean/pull/22) merged |
| [Prove GR(1) integer split never falls back](https://nasa-jpl-demo.devinenterprise.com/sessions/4699594c5c194e649e2117ef272ed589) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 21m | 19.0 ‡ | 29 sh / 4 ed / 28 rd / 3 git / 0 mcp / 2+1 msg | [#29](https://github.com/Open-MBEE/pacti.lean/pull/29) merged |
| [Add GR(1) JSON interchange to pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/edbfb851340e48cd8190992246d08f68) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 13:45 | suspended (inactivity) | 19m | 18.6 | 60 sh / 10 ed / 16 rd / 3 git / 3 mcp / 4+1 msg | [#14](https://github.com/Open-MBEE/pacti.lean/pull/14) merged |
| [Add GR(1) rename, printing, behavior parity](https://nasa-jpl-demo.devinenterprise.com/sessions/777b1a05b955461ba35d255c7acd4f8c) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 17:17 | suspended (inactivity) | 19m | 20.3 | 68 sh / 16 ed / 32 rd / 5 git / 0 mcp / 3+1 msg | [#16](https://github.com/Open-MBEE/pacti.lean/pull/16) merged |
| [Shift liveness targets in GR(1) Term.implies](https://nasa-jpl-demo.devinenterprise.com/sessions/2e47d271843849e99e90080efa57f170) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 10:01 | suspended (inactivity) | 18m | 3.3 | 12 sh / 3 ed / 5 rd / 3 git / 0 mcp / 2+1 msg | [#11](https://github.com/Open-MBEE/pacti.lean/pull/11) merged |
| [Design GR(1) int variable support](https://nasa-jpl-demo.devinenterprise.com/sessions/de5a7e57f73b48f79e0fedecc8389431) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 20:49 | suspended (inactivity) | 17m | 10.9 | 35 sh / 1 ed / 34 rd / 0 git / 2 mcp / 4+2 msg |  |
| [Add GR(1) window theory to pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/9a4a152d555d41f3a194a039ebc2dc82) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-13 20:16 | suspended (inactivity) | 14m | 12.9 | 32 sh / 9 ed / 15 rd / 1 git / 0 mcp / 2+1 msg | [#8](https://github.com/Open-MBEE/pacti.lean/pull/8) merged |
| [Prove GR(1) ranking lemma in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/27dfa6f80433406f9c63b70f3e701d42) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 13:08 | suspended (inactivity) | 11m | 10.9 | 22 sh / 9 ed / 3 rd / 3 git / 0 mcp / 6+2 msg | [#12](https://github.com/Open-MBEE/pacti.lean/pull/12) merged |
| [Update GR(1) concept doc for ranking lemma](https://nasa-jpl-demo.devinenterprise.com/sessions/91ee239703ab47d29258d0554f2b6d44) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 13:45 | suspended (inactivity) | 8m | 15.2 | 24 sh / 2 ed / 13 rd / 2 git / 10 mcp / 10+3 msg | [#13](https://github.com/Open-MBEE/pacti.lean/pull/13) merged |
| [Bound normal-form conjunctions in GR(1) simplify](https://nasa-jpl-demo.devinenterprise.com/sessions/75df9525cf01424ca475ae4550dee948) | Open-MBEE/pacti.lean | child of 42c14202 | ultra | 11-14 22:00 | suspended (inactivity) | 1h42 | 30.7 | 103 sh / 29 ed / 32 rd / 1 git / 6 mcp / 13+7 msg | [#25](https://github.com/Open-MBEE/pacti.lean/pull/25) merged |
| [Review pacti.lean PR #20](https://nasa-jpl-demo.devinenterprise.com/sessions/3ed80fb1860a447286307ff974f8707a) | Open-MBEE/pacti.lean | child of 58f12c50 | ultra | 11-14 21:03 | suspended (inactivity) | 1h08 | 17.1 ‡ | 56 sh / 14 ed / 19 rd / 5 git / 0 mcp / 8+4 msg | [#24](https://github.com/Open-MBEE/pacti.lean/pull/24) merged |
| [Add invariant induction lemma to pacti.lean GR1](https://nasa-jpl-demo.devinenterprise.com/sessions/3bb6383c83c344c89633d5acbe83ed8a) | Open-MBEE/pacti.lean | child of 91ee2397 | ultra | 11-14 20:33 | suspended (inactivity) | 10m | 7.5 | 21 sh / 5 ed / 15 rd / 1 git / 0 mcp / 3+1 msg | [#19](https://github.com/Open-MBEE/pacti.lean/pull/19) merged |
| [Fix stale statements in pacti.lean CONCEPT-GR1](https://nasa-jpl-demo.devinenterprise.com/sessions/68e0127436e3440aa8644c969cdebf7b) | Open-MBEE/pacti.lean | child of 91ee2397 | ultra | 11-14 14:46 | suspended (inactivity) | 8m | 7.1 | 22 sh / 4 ed / 9 rd / 1 git / 0 mcp / 3+1 msg | [#15](https://github.com/Open-MBEE/pacti.lean/pull/15) merged |

### prov.lean — 2 sessions, 11h31 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 11h26 | 863.1 ‡ | 1534 sh / 658 ed / 205 rd / 85 git / 33 mcp / 108+24 msg | [#21](https://github.com/Open-MBEE/prov.lean/pull/21) merged, [#22](https://github.com/Open-MBEE/prov.lean/pull/22) merged, [#23](https://github.com/Open-MBEE/prov.lean/pull/23) merged, [#24](https://github.com/Open-MBEE/prov.lean/pull/24) merged, [#25](https://github.com/Open-MBEE/prov.lean/pull/25) merged, [#26](https://github.com/Open-MBEE/prov.lean/pull/26) merged, [#27](https://github.com/Open-MBEE/prov.lean/pull/27) merged, [#28](https://github.com/Open-MBEE/prov.lean/pull/28) merged, [#29](https://github.com/Open-MBEE/prov.lean/pull/29) merged, [#30](https://github.com/Open-MBEE/prov.lean/pull/30) merged, [#31](https://github.com/Open-MBEE/prov.lean/pull/31) merged, [#32](https://github.com/Open-MBEE/prov.lean/pull/32) merged, [#33](https://github.com/Open-MBEE/prov.lean/pull/33) merged, [#34](https://github.com/Open-MBEE/prov.lean/pull/34) merged, [#35](https://github.com/Open-MBEE/prov.lean/pull/35) merged |
| [Investigate prov.lean CI failure](https://nasa-jpl-demo.devinenterprise.com/sessions/f13c4c213e6945d7ba1384cf655ae0b6) | Open-MBEE/prov.lean | webapp | ultra | 11-13 10:36 | suspended (inactivity) | 5m | 13.0 | 7 sh / 0 ed / 2 rd / 0 git / 0 mcp / 3+2 msg |  |

### SBVR.lean — 2 sessions, 6h30 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 5h07 | 2191.0 † | 708 sh / 236 ed / 177 rd / 52 git / 40 mcp / 121+53 msg | [prov.lean #18](https://github.com/Open-MBEE/prov.lean/pull/18) merged, [PropertyKindCalculus #110](https://github.com/nasa-jpl/PropertyKindCalculus/pull/110) merged, [html-to-pdf.lean #3](https://github.com/Open-MBEE/html-to-pdf.lean/pull/3) merged, [engineering-foundation-architecture #74](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/74) merged, [prov.lean #20](https://github.com/Open-MBEE/prov.lean/pull/20) merged, [engineering-foundation-architecture #75](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/75) merged, [engineering-foundation-architecture #76](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/76) merged, [engineering-foundation-architecture #78](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/78) merged, [leanCurl #2](https://github.com/Open-MBEE/leanCurl/pull/2) merged, [engineering-foundation-architecture #79](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/79) merged, [leanCurl #3](https://github.com/Open-MBEE/leanCurl/pull/3) merged, [engineering-foundation-architecture #80](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/80) merged, [engineering-foundation-architecture #81](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/81) merged, [#46](https://github.com/Open-MBEE/SBVR.lean/pull/46) merged, [#47](https://github.com/Open-MBEE/SBVR.lean/pull/47) merged, [#48](https://github.com/Open-MBEE/SBVR.lean/pull/48) merged, [#49](https://github.com/Open-MBEE/SBVR.lean/pull/49) merged, [#50](https://github.com/Open-MBEE/SBVR.lean/pull/50) merged, [#51](https://github.com/Open-MBEE/SBVR.lean/pull/51) merged |
| [Add SBVR note reader over OpenSysML sysx:Note exports](https://nasa-jpl-demo.devinenterprise.com/sessions/95335e28a3fc4c5c8156f4659b495a2b) | Open-MBEE/SBVR.lean | child of 4eac7d67 | ultra | 11-10 08:43 | suspended (inactivity) | 1h22 | 61.6 ‡ | 256 sh / 62 ed / 77 rd / 4 git / 10 mcp / 13+7 msg | [#45](https://github.com/Open-MBEE/SBVR.lean/pull/45) merged |

### soil-moisture-workflows — 2 sessions, 6h05 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix soil-moisture CI workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/a3a98b66aaba486384ce1ee9109622e7) | Open-MBEE/git-remote-sync.lean, Open-MBEE/html-to-pdf.lean, Open-MBEE/prov.lean, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-09 08:53 | suspended (inactivity) | 6h04 | 411.0 ‡ | 753 sh / 232 ed / 77 rd / 69 git / 71 mcp / 119+41 msg | [#43](https://github.com/Open-MBEE/soil-moisture-workflows/pull/43) merged, [#44](https://github.com/Open-MBEE/soil-moisture-workflows/pull/44) merged, [soil-moisture-model #46](https://github.com/Open-MBEE/soil-moisture-model/pull/46) merged, [soil-moisture-dps #14](https://github.com/Open-MBEE/soil-moisture-dps/pull/14) merged, [soil-moisture-dps #15](https://github.com/Open-MBEE/soil-moisture-dps/pull/15) merged, [soil-moisture-dps #16](https://github.com/Open-MBEE/soil-moisture-dps/pull/16) merged, [html-to-pdf.lean #1](https://github.com/Open-MBEE/html-to-pdf.lean/pull/1) merged, [soil-moisture-model #47](https://github.com/Open-MBEE/soil-moisture-model/pull/47) merged, [prov.lean #19](https://github.com/Open-MBEE/prov.lean/pull/19) merged, [git-remote-sync.lean #62](https://github.com/Open-MBEE/git-remote-sync.lean/pull/62) merged, [html-to-pdf.lean #2](https://github.com/Open-MBEE/html-to-pdf.lean/pull/2) merged, [git-remote-sync.lean #63](https://github.com/Open-MBEE/git-remote-sync.lean/pull/63) merged, [#45](https://github.com/Open-MBEE/soil-moisture-workflows/pull/45) merged, [soil-moisture-model #48](https://github.com/Open-MBEE/soil-moisture-model/pull/48) merged, [soil-moisture-dps #17](https://github.com/Open-MBEE/soil-moisture-dps/pull/17) merged, [#46](https://github.com/Open-MBEE/soil-moisture-workflows/pull/46) merged, [soil-moisture-model #49](https://github.com/Open-MBEE/soil-moisture-model/pull/49) merged, [soil-moisture-model #51](https://github.com/Open-MBEE/soil-moisture-model/pull/51) merged, [soil-moisture-model #52](https://github.com/Open-MBEE/soil-moisture-model/pull/52) merged, [soil-moisture-dps #18](https://github.com/Open-MBEE/soil-moisture-dps/pull/18) merged, [#47](https://github.com/Open-MBEE/soil-moisture-workflows/pull/47) merged, [#48](https://github.com/Open-MBEE/soil-moisture-workflows/pull/48) merged, [#49](https://github.com/Open-MBEE/soil-moisture-workflows/pull/49) merged |
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | suspended (inactivity) | 1m | 425.1 † | 8 sh / 3 ed / 1 rd / 1 git / 0 mcp / 2+1 msg | [soil-moisture-dps #13](https://github.com/Open-MBEE/soil-moisture-dps/pull/13) merged |

### engineering-foundation-architecture — 6 sessions, 3h19 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Draft AI Readiness Blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/79caccc7e63d4c8c81cbc46e8d344bcd) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-10 14:43 | suspended (inactivity) | 1h05 | 53.6 | 150 sh / 49 ed / 53 rd / 3 git / 18 mcp / 21+9 msg | [#71](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/71) merged |
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 42m | 75.0 ‡ | 84 sh / 21 ed / 5 rd / 13 git / 0 mcp / 45+22 msg | [#77](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/77) merged, [#82](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/82) merged, [#83](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/83) merged |
| [Write SBVR Requirements White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/900e867e05764334a74bccd12e60de87) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-11 11:30 | suspended (inactivity) | 28m | 28.6 | 64 sh / 6 ed / 13 rd / 3 git / 0 mcp / 26+16 msg | [#72](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/72) merged |
| [Clarify AI Readiness Purpose](https://nasa-jpl-demo.devinenterprise.com/sessions/5b6b278b67a846b9a835146ce5796fd5) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-15 17:19 | suspended (inactivity) | 28m | 73.9 ‡ | 63 sh / 4 ed / 15 rd / 2 git / 0 mcp / 12+7 msg | [#85](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/85) merged |
| [SBVR Proofs and Verification Obligations](https://nasa-jpl-demo.devinenterprise.com/sessions/0c119cb9eb4d4ce3b100e54496fa1fd7) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-11 19:32 | suspended (inactivity) | 24m | 20.7 ‡ | 57 sh / 6 ed / 5 rd / 6 git / 0 mcp / 12+6 msg | [#73](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/73) merged |
| [Fix `ci-pages.sh` `--publish` support](https://nasa-jpl-demo.devinenterprise.com/sessions/859231125f1443bc9d8448871c0df0f0) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-15 17:15 | suspended (inactivity) | 9m | 9.2 | 28 sh / 10 ed / 3 rd / 5 git / 9 mcp / 6+1 msg | [#84](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/84) merged |

### mars.lean — 6 sessions, 3h09 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 5m | 3588.7 † | 12 sh / 0 ed / 0 rd / 0 git / 6 mcp / 14+4 msg |  |
| [Summarize mars.lean Formalization Accomplishments](https://nasa-jpl-demo.devinenterprise.com/sessions/16abb368d37449b0ad4b96da1277fb98) | Open-MBEE/mars.lean | webapp | ultra | 11-10 13:39 | suspended (inactivity) | 4m | 4.2 | 17 sh / 0 ed / 14 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Summarize mars.lean Achievements](https://nasa-jpl-demo.devinenterprise.com/sessions/a9e9b4032ff646dabd7881696135d045) | Open-MBEE/mars.lean | webapp | ultra | 11-10 13:42 | suspended (inactivity) | 2m | 3.0 | 16 sh / 0 ed / 10 rd / 0 git / 2 mcp / 5+3 msg |  |
| [Make retimedSimH hold for every tie-break order (route A)](https://nasa-jpl-demo.devinenterprise.com/sessions/56cef766932f4de3b168db27a375294e) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 1h38 | 31.1 | 101 sh / 18 ed / 40 rd / 4 git / 7 mcp / 6+2 msg | [#331](https://github.com/Open-MBEE/mars.lean/pull/331) merged |
| [Check the Python MARS simulator's own log against the contracts](https://nasa-jpl-demo.devinenterprise.com/sessions/aca360f11d9941809015ca233a35bfef) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 10:52 | suspended (inactivity) | 53m | 39.0 | 80 sh / 22 ed / 32 rd / 6 git / 9 mcp / 3+1 msg | [#330](https://github.com/Open-MBEE/mars.lean/pull/330) merged |
| [Prove PremH for all H.netH runs and settle navH_sa_open](https://nasa-jpl-demo.devinenterprise.com/sessions/bbbc7b98295d44bb815c9292bd5c43a3) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 10:52 | suspended (inactivity) | 25m | 18.3 | 73 sh / 16 ed / 22 rd / 2 git / 0 mcp / 4+2 msg | [#329](https://github.com/Open-MBEE/mars.lean/pull/329) merged |

### git-remote-sync.lean — 5 sessions, 2h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Recover deleted evidence branch](https://nasa-jpl-demo.devinenterprise.com/sessions/cb242389d6be4d27ae8b09c26f81b416) | Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-09 12:31 | suspended (inactivity) | 42m | 33.9 | 122 sh / 33 ed / 58 rd / 7 git / 7 mcp / 14+7 msg | [#64](https://github.com/Open-MBEE/git-remote-sync.lean/pull/64) merged |
| [Support Current Branch Default](https://nasa-jpl-demo.devinenterprise.com/sessions/269fec9073a148178cf67f89a18189ae) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-15 17:10 | suspended (inactivity) | 22m | 25.7 ‡ | 57 sh / 14 ed / 29 rd / 5 git / 3 mcp / 15+9 msg | [#67](https://github.com/Open-MBEE/git-remote-sync.lean/pull/67) merged, [#68](https://github.com/Open-MBEE/git-remote-sync.lean/pull/68) merged |
| [Synchronize Repositories Across Remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/f2f5f981cea9449b9406434c84f4a2fa) | Open-MBEE/git-remote-sync.lean, Open-MBEE/integration | webapp | ultra | 10-19 22:04 | suspended (inactivity) | 22m | 705.1 † | 52 sh / 18 ed / 31 rd / 4 git / 6 mcp / 24+8 msg | [#60](https://github.com/Open-MBEE/git-remote-sync.lean/pull/60) merged, [#61](https://github.com/Open-MBEE/git-remote-sync.lean/pull/61) merged |
| [Fix warnings and errors in git-remote-sync.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/58f12c5014384468bf409d36f326059b) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-13 20:35 | suspended (inactivity) | 21m | 30.5 ‡ | 27 sh / 3 ed / 13 rd / 4 git / 10 mcp / 13+2 msg | [#65](https://github.com/Open-MBEE/git-remote-sync.lean/pull/65) merged |
| [Bump git-remote-sync.lean L4YAML pin to lint-clean commit](https://nasa-jpl-demo.devinenterprise.com/sessions/ef61b5eb42f84376a2bdd7e195c556a0) | Open-MBEE/git-remote-sync.lean | child of 58f12c50 | ultra | 11-13 21:50 | suspended (inactivity) | 12m | 5.7 | 16 sh / 1 ed / 7 rd / 3 git / 0 mcp / 2+1 msg | [#66](https://github.com/Open-MBEE/git-remote-sync.lean/pull/66) merged |

### soil-moisture-model — 4 sessions, 1h29 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Module Inventory Section](https://nasa-jpl-demo.devinenterprise.com/sessions/53fa8bc4c29f47b8b7ff3e2dfd62bc89) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-13 12:50 | suspended (inactivity) | 47m | 10.8 ‡ | 42 sh / 8 ed / 21 rd / 2 git / 0 mcp / 4+2 msg | [#50](https://github.com/Open-MBEE/soil-moisture-model/pull/50) merged |
| [Fix all soil-moisture-model warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/bd6255fd25e54fc0b00488e20d401903) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-13 20:09 | suspended (inactivity) | 26m | 6.3 | 32 sh / 8 ed / 11 rd / 1 git / 0 mcp / 2+1 msg | [#53](https://github.com/Open-MBEE/soil-moisture-model/pull/53) merged |
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 13m | 225.9 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Coordinate Stage-1g Repository Fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/ee9ffef83ce545fe8da2d5601207f816) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-10 13:06 | suspended (inactivity) | 2m | 2.9 | 13 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |

### html-to-pdf.lean — 1 session, 55m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Silence WeasyPrint CSS warnings in html-to-pdf](https://nasa-jpl-demo.devinenterprise.com/sessions/6bdc38ccb90146fa8c8e9d84d736c0e0) | Open-MBEE/html-to-pdf.lean | child of 58f12c50 | ultra | 11-13 21:14 | suspended (inactivity) | 55m | 13.8 | 55 sh / 15 ed / 15 rd / 1 git / 0 mcp / 2+1 msg | [#4](https://github.com/Open-MBEE/html-to-pdf.lean/pull/4) merged |

### devin-automation — 1 session, 42m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily and Weekly Session Reports](https://nasa-jpl-demo.devinenterprise.com/sessions/438880735ee9439eb71a124cbe26cd23) | Open-MBEE/devin-automation | webapp | ultra | 11-08 12:39 | suspended (inactivity) | 42m | 123.2 † | 47 sh / 15 ed / 14 rd / 11 git / 1096 mcp / 24+12 msg | [#4](https://github.com/Open-MBEE/devin-automation/pull/4) merged, [#5](https://github.com/Open-MBEE/devin-automation/pull/5) merged, [#6](https://github.com/Open-MBEE/devin-automation/pull/6) merged |

### (no repository) — 9 sessions, 34m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Weekly Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/17a9dcc27f434f16a64096768a488837) |  | automation | ultra | 11-09 00:09 | suspended (inactivity) | 6m | 3.4 | 8 sh / 0 ed / 1 rd / 0 git / 1091 mcp / 3+1 msg |  |
| [Generate Nicolas Rouquette Daily Report](https://nasa-jpl-demo.devinenterprise.com/sessions/7bc2bc82020d435e85680dcbb41b853e) |  | automation | ultra | 11-10 00:05 | suspended (inactivity) | 5m | 3.2 | 5 sh / 0 ed / 1 rd / 0 git / 580 mcp / 3+1 msg |  |
| [Produce Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/ce85f16734894a2d8f6f7b7e754aadae) |  | automation | ultra | 11-09 00:05 | suspended (inactivity) | 5m | 3.5 | 7 sh / 0 ed / 0 rd / 0 git / 476 mcp / 3+1 msg |  |
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/b545b6215b284a8d90d341247481212f) |  | automation | ultra | 11-14 00:05 | suspended (inactivity) | 3m | 2.2 | 4 sh / 0 ed / 0 rd / 0 git / 293 mcp / 2+1 msg |  |
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/61a9e27713ac41a1b0d107b29a5ad67e) |  | automation | ultra | 11-12 00:05 | suspended (inactivity) | 3m | 1.6 | 3 sh / 0 ed / 0 rd / 0 git / 405 mcp / 2+1 msg |  |
| [Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/f05559a56ffd4a899a609b63934aa80e) |  | automation | ultra | 11-13 00:05 | suspended (inactivity) | 2m | 1.8 ‡ | 4 sh / 0 ed / 0 rd / 0 git / 364 mcp / 2+1 msg |  |
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/f3c72ef6f0a64d9290ea1a8612fadd59) |  | automation | ultra | 11-15 00:05 | suspended (inactivity) | 2m | 1.7 | 4 sh / 0 ed / 0 rd / 0 git / 521 mcp / 2+1 msg |  |
| [Generate Nicolas Rouquette’s daily Devin session report](https://nasa-jpl-demo.devinenterprise.com/sessions/eb03a35de28d444eaa36b43d573ab0bd) |  | automation | ultra | 11-11 00:05 | suspended (inactivity) | 2m | 1.8 | 4 sh / 0 ed / 1 rd / 0 git / 461 mcp / 2+1 msg |  |
| [Z3 Implementation in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/3993442cdae145069390939327abff87) |  | webapp | ultra | 11-13 19:54 | suspended (inactivity) | 0m | 3.3 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+1 msg |  |

### (Devin housekeeping) — 2 sessions, 23m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/f33bed3778e34258bce772c42fb1f43b) |  | webapp | normal | 11-09 14:32 | suspended | 12m | 0.0 | 60 sh / 18 ed / 4 rd / 0 git / 96 mcp / 5+4 msg |  |
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/6a1e4491d7f44066bf9033d396706315) |  | webapp | normal | 11-13 07:52 | suspended | 10m | 0.0 | 54 sh / 14 ed / 10 rd / 0 git / 44 mcp / 1+2 msg |  |

### mars — 1 session, 16m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix the Python MARS Endurance example at HEAD](https://nasa-jpl-demo.devinenterprise.com/sessions/54a6071a70944d8ea7c5b31ecd9dbf62) | Open-MBEE/mars | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 16m | 21.0 ‡ | 62 sh / 10 ed / 26 rd / 3 git / 4 mcp / 9+3 msg | [#1](https://github.com/Open-MBEE/mars/pull/1) merged |

### soil-moisture-dps — 1 session, 6m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 6m | 70.9 † | 35 sh / 7 ed / 3 rd / 2 git / 3 mcp / 6+3 msg |  |

### PropertyKindCalculus — 7 sessions, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/c37ff2ede1384b58a4b8b783e5af5396) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-10 06:01 | suspended (inactivity) | 1m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/702df1df574a4e539d45f7818fc0f8ba) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-15 06:01 | suspended (inactivity) | 0m | 1.4 | 1 sh / 0 ed / 0 rd / 0 git / 2 mcp / 1+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/dafb51b3aaf94028a5d97dd2fe9a36a2) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-11 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/f3d52c206d9741fda4365587e14d17cc) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-13 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/21d888e3f4914a51bbf855217cd9ef77) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-09 06:01 | suspended (inactivity) | 0m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/0b29a7bbc15545e78ae6920b83e22fc4) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-14 06:01 | suspended (inactivity) | 0m | 1.6 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/aa4c7c412f78477094c16d6c2c1f565a) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-12 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |

### face.lean — 1 session, 1m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Summarize face.lean Formalization Accomplishments](https://nasa-jpl-demo.devinenterprise.com/sessions/48b6527d50f441458b50666af91f5e02) | Open-MBEE/face.lean | webapp | ultra | 11-10 13:33 | suspended (inactivity) | 1m | 2.1 | 10 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |

## Day by day

### Monday 2026-11-09

31 sessions across 13 projects, 67h44 of working time, 61 PRs opened.

#### OpenSysML — 4 sessions, 17h39 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 6h31 | 4868.4 † | ≥423 sh / 67 ed / 4 rd / 32 git / 19 mcp / 18+4 msg | [qvts #57](https://github.com/Open-MBEE/qvts/pull/57) merged, [#2070](https://github.com/Open-MBEE/OpenSysML/pull/2070) merged, [qvts #58](https://github.com/Open-MBEE/qvts/pull/58) merged, [#2088](https://github.com/Open-MBEE/OpenSysML/pull/2088) merged, [#2091](https://github.com/Open-MBEE/OpenSysML/pull/2091) merged, [#2093](https://github.com/Open-MBEE/OpenSysML/pull/2093) merged |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | suspended (inactivity) | 4h58 | 182.8 † | 270 sh / 35 ed / 77 rd / 20 git / 8 mcp / 18+10 msg | [#2071](https://github.com/Open-MBEE/OpenSysML/pull/2071) merged |
| [Honor position-only sysx:Note edits on source-backed text](https://nasa-jpl-demo.devinenterprise.com/sessions/c18ad5bff7bd466b8460db005afd0a1e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 3h44 | 33.4 | 114 sh / 18 ed / 26 rd / 20 git / 9 mcp / 2+1 msg | [#2090](https://github.com/Open-MBEE/OpenSysML/pull/2090) merged |
| [Leave sysx:-typed nodes uncarried in sysml -sync](https://nasa-jpl-demo.devinenterprise.com/sessions/35fe61f8565a40429b37c892ce4b1a2e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 2h26 | 21.9 | 88 sh / 11 ed / 32 rd / 19 git / 9 mcp / 3+1 msg | [#2089](https://github.com/Open-MBEE/OpenSysML/pull/2089) merged |

#### fprime-lean-sysmlv2-example — 5 sessions, 17h32 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Downlink M0 Architecture Diagram](https://nasa-jpl-demo.devinenterprise.com/sessions/c4fe0be598084357b14813fd5326e998) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-09 12:13 | suspended (inactivity) | 7h11 | 127.3 | 260 sh / 62 ed / 56 rd / 15 git / 4 mcp / 28+14 msg | [#111](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/111) merged, [#112](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/112) merged, [#113](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/113) merged, [#115](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/115) merged, [#117](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/117) merged |
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | suspended (inactivity) | 8m | 562.6 † | 12 sh / 4 ed / 0 rd / 0 git / 8 mcp / 12+4 msg |  |
| [M1 refinement theorem: fine verdict from coarse (step 3)](https://nasa-jpl-demo.devinenterprise.com/sessions/07afd2af868d456d856260d372a79b6b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-09 11:08 | suspended (inactivity) | 4h39 | 47.0 | 151 sh / 31 ed / 19 rd / 1 git / 8 mcp / 4+1 msg | [#114](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/114) merged |
| [M1 order factorisation lemmas; fidelity-limit record (step 3′)](https://nasa-jpl-demo.devinenterprise.com/sessions/2429c2384b5c4be298f161cb4b7530ed) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-09 19:56 | suspended (inactivity) | 3h49 | 114.2 | 162 sh / 33 ed / 25 rd / 3 git / 4 mcp / 5+1 msg | [#116](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/116) merged |
| [M1 facts: simulate once, check over trace literals (step 1)](https://nasa-jpl-demo.devinenterprise.com/sessions/9762b7a9801b472598539ce3b5e2f325) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-08 16:59 | suspended (inactivity) | 1h43 | 69.8 † | 28 sh / 5 ed / 3 rd / 1 git / 7 mcp / 4+3 msg |  |

#### qvts — 1 session, 13h04 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Assess Lean/Verso QVTS Readiness](https://nasa-jpl-demo.devinenterprise.com/sessions/ff906ec875c14d87a95d3e41422ca547) | Open-MBEE/qvts | webapp | fusion | 10-30 17:01 | suspended (inactivity) | 13h04 | 313.5 † | 6284 sh / 1032 ed / 2549 rd / 13 git / 0 mcp / 24+1 msg | [#59](https://github.com/Open-MBEE/qvts/pull/59) merged, [#60](https://github.com/Open-MBEE/qvts/pull/60) merged, [#61](https://github.com/Open-MBEE/qvts/pull/61) merged, [#62](https://github.com/Open-MBEE/qvts/pull/62) merged, [#63](https://github.com/Open-MBEE/qvts/pull/63) merged, [#64](https://github.com/Open-MBEE/qvts/pull/64) merged |

#### L4YAML — 6 sessions, 12h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add metagraph experiment documentation](https://nasa-jpl-demo.devinenterprise.com/sessions/bfb0071aeaab4aa58b50b413bca12aba) | nasa-jpl/L4YAML | webapp | ultra | 11-09 18:15 | suspended (inactivity) | 53m | 55.6 ‡ | 111 sh / 19 ed / 32 rd / 19 git / 7 mcp / 21+8 msg | [#279](https://github.com/nasa-jpl/L4YAML/pull/279) closed, [#280](https://github.com/nasa-jpl/L4YAML/pull/280) merged, [#284](https://github.com/nasa-jpl/L4YAML/pull/284) merged |
| [Clarify YAML Grammar Ambiguity](https://nasa-jpl-demo.devinenterprise.com/sessions/ac39e286391042c5abec6e4fa1ae29a4) | nasa-jpl/L4YAML | webapp | ultra | 11-09 21:33 | suspended (inactivity) | 2m | 3.5 | 9 sh / 0 ed / 2 rd / 1 git / 0 mcp / 2+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 5h31 | 2060.8 † | 358 sh / 54 ed / 3 rd / 13 git / 14 mcp / 38+6 msg | [#276](https://github.com/nasa-jpl/L4YAML/pull/276) merged, [#277](https://github.com/nasa-jpl/L4YAML/pull/277) merged, [#278](https://github.com/nasa-jpl/L4YAML/pull/278) merged, [#281](https://github.com/nasa-jpl/L4YAML/pull/281) merged, [#286](https://github.com/nasa-jpl/L4YAML/pull/286) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 4h06 | 331.8 † | 149 sh / 44 ed / 2 rd / 12 git / 4 mcp / 8+4 msg | [#282](https://github.com/nasa-jpl/L4YAML/pull/282) merged, [#285](https://github.com/nasa-jpl/L4YAML/pull/285) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 1h34 | 4151.6 † | 101 sh / 8 ed / 2 rd / 6 git / 5 mcp / 6+3 msg | [#283](https://github.com/nasa-jpl/L4YAML/pull/283) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 5m | 898.8 † | 10 sh / 2 ed / 0 rd / 1 git / 21 mcp / 7+2 msg |  |

#### mars.lean — 4 sessions, 2h57 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 5m | 3588.7 † | 12 sh / 0 ed / 0 rd / 0 git / 6 mcp / 14+4 msg |  |
| [Make retimedSimH hold for every tie-break order (route A)](https://nasa-jpl-demo.devinenterprise.com/sessions/56cef766932f4de3b168db27a375294e) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 1h33 | 31.1 | 90 sh / 15 ed / 39 rd / 2 git / 3 mcp / 4+1 msg | [#331](https://github.com/Open-MBEE/mars.lean/pull/331) merged |
| [Check the Python MARS simulator's own log against the contracts](https://nasa-jpl-demo.devinenterprise.com/sessions/aca360f11d9941809015ca233a35bfef) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 10:52 | suspended (inactivity) | 53m | 39.0 | 80 sh / 22 ed / 32 rd / 6 git / 9 mcp / 3+1 msg | [#330](https://github.com/Open-MBEE/mars.lean/pull/330) merged |
| [Prove PremH for all H.netH runs and settle navH_sa_open](https://nasa-jpl-demo.devinenterprise.com/sessions/bbbc7b98295d44bb815c9292bd5c43a3) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 10:52 | suspended (inactivity) | 25m | 18.3 | 73 sh / 16 ed / 22 rd / 2 git / 0 mcp / 4+2 msg | [#329](https://github.com/Open-MBEE/mars.lean/pull/329) merged |

#### soil-moisture-workflows — 2 sessions, 1h47 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix soil-moisture CI workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/a3a98b66aaba486384ce1ee9109622e7) | Open-MBEE/git-remote-sync.lean, Open-MBEE/html-to-pdf.lean, Open-MBEE/prov.lean, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-09 08:53 | suspended (inactivity) | 1h46 | 411.0 ‡ | 261 sh / 70 ed / 57 rd / 24 git / 52 mcp / 55+25 msg | [#43](https://github.com/Open-MBEE/soil-moisture-workflows/pull/43) merged, [#44](https://github.com/Open-MBEE/soil-moisture-workflows/pull/44) merged, [soil-moisture-model #46](https://github.com/Open-MBEE/soil-moisture-model/pull/46) merged, [soil-moisture-dps #14](https://github.com/Open-MBEE/soil-moisture-dps/pull/14) merged, [soil-moisture-dps #15](https://github.com/Open-MBEE/soil-moisture-dps/pull/15) merged, [soil-moisture-dps #16](https://github.com/Open-MBEE/soil-moisture-dps/pull/16) merged, [html-to-pdf.lean #1](https://github.com/Open-MBEE/html-to-pdf.lean/pull/1) merged, [soil-moisture-model #47](https://github.com/Open-MBEE/soil-moisture-model/pull/47) merged, [prov.lean #19](https://github.com/Open-MBEE/prov.lean/pull/19) merged, [git-remote-sync.lean #62](https://github.com/Open-MBEE/git-remote-sync.lean/pull/62) merged, [html-to-pdf.lean #2](https://github.com/Open-MBEE/html-to-pdf.lean/pull/2) merged, [git-remote-sync.lean #63](https://github.com/Open-MBEE/git-remote-sync.lean/pull/63) merged, [#45](https://github.com/Open-MBEE/soil-moisture-workflows/pull/45) merged, [soil-moisture-model #48](https://github.com/Open-MBEE/soil-moisture-model/pull/48) merged, [soil-moisture-dps #17](https://github.com/Open-MBEE/soil-moisture-dps/pull/17) merged |
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | suspended (inactivity) | 1m | 425.1 † | 8 sh / 3 ed / 1 rd / 1 git / 0 mcp / 2+1 msg | [soil-moisture-dps #13](https://github.com/Open-MBEE/soil-moisture-dps/pull/13) merged |

#### git-remote-sync.lean — 2 sessions, 45m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Recover deleted evidence branch](https://nasa-jpl-demo.devinenterprise.com/sessions/cb242389d6be4d27ae8b09c26f81b416) | Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-09 12:31 | suspended (inactivity) | 23m | 33.9 | 75 sh / 19 ed / 36 rd / 3 git / 0 mcp / 7+4 msg | [#64](https://github.com/Open-MBEE/git-remote-sync.lean/pull/64) merged |
| [Synchronize Repositories Across Remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/f2f5f981cea9449b9406434c84f4a2fa) | Open-MBEE/git-remote-sync.lean, Open-MBEE/integration | webapp | ultra | 10-19 22:04 | suspended (inactivity) | 22m | 705.1 † | 52 sh / 18 ed / 31 rd / 4 git / 6 mcp / 24+8 msg | [#60](https://github.com/Open-MBEE/git-remote-sync.lean/pull/60) merged, [#61](https://github.com/Open-MBEE/git-remote-sync.lean/pull/61) merged |

#### devin-automation — 1 session, 42m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily and Weekly Session Reports](https://nasa-jpl-demo.devinenterprise.com/sessions/438880735ee9439eb71a124cbe26cd23) | Open-MBEE/devin-automation | webapp | ultra | 11-08 12:39 | suspended (inactivity) | 42m | 123.2 † | 47 sh / 15 ed / 14 rd / 11 git / 1096 mcp / 24+12 msg | [#4](https://github.com/Open-MBEE/devin-automation/pull/4) merged, [#5](https://github.com/Open-MBEE/devin-automation/pull/5) merged, [#6](https://github.com/Open-MBEE/devin-automation/pull/6) merged |

#### SBVR.lean — 1 session, 20m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 20m | 2191.0 † | 48 sh / 17 ed / 10 rd / 11 git / 3 mcp / 16+5 msg | [prov.lean #18](https://github.com/Open-MBEE/prov.lean/pull/18) merged, [PropertyKindCalculus #110](https://github.com/nasa-jpl/PropertyKindCalculus/pull/110) merged |

#### mars — 1 session, 16m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix the Python MARS Endurance example at HEAD](https://nasa-jpl-demo.devinenterprise.com/sessions/54a6071a70944d8ea7c5b31ecd9dbf62) | Open-MBEE/mars | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 16m | 21.0 ‡ | 62 sh / 10 ed / 26 rd / 3 git / 4 mcp / 9+3 msg | [#1](https://github.com/Open-MBEE/mars/pull/1) merged |

#### (Devin housekeeping) — 1 session, 12m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/f33bed3778e34258bce772c42fb1f43b) |  | webapp | normal | 11-09 14:32 | suspended | 12m | 0.0 | 60 sh / 18 ed / 4 rd / 0 git / 96 mcp / 5+4 msg |  |

#### (no repository) — 2 sessions, 12m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Weekly Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/17a9dcc27f434f16a64096768a488837) |  | automation | ultra | 11-09 00:09 | suspended (inactivity) | 6m | 3.4 | 8 sh / 0 ed / 1 rd / 0 git / 1091 mcp / 3+1 msg |  |
| [Produce Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/ce85f16734894a2d8f6f7b7e754aadae) |  | automation | ultra | 11-09 00:05 | suspended (inactivity) | 5m | 3.5 | 7 sh / 0 ed / 0 rd / 0 git / 476 mcp / 3+1 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/21d888e3f4914a51bbf855217cd9ef77) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-09 06:01 | suspended (inactivity) | 0m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

### Tuesday 2026-11-10

31 sessions across 13 projects, 68h33 of working time, 35 PRs opened.

#### fprime-lean-sysmlv2-example — 5 sessions, 19h55 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | suspended (inactivity) | 9m | 562.6 † | 9 sh / 4 ed / 1 rd / 3 git / 21 mcp / 20+6 msg |  |
| [Add Downlink M0 Architecture Diagram](https://nasa-jpl-demo.devinenterprise.com/sessions/c4fe0be598084357b14813fd5326e998) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-09 12:13 | suspended (inactivity) | 4m | 127.3 | 10 sh / 6 ed / 0 rd / 0 git / 4 mcp / 4+1 msg |  |
| [Create FACE and MARS Quad-Chart Slide](https://nasa-jpl-demo.devinenterprise.com/sessions/794c21c27af54614a16d3747a9ce6386) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-10 13:43 | suspended (inactivity) | 4m | 4.9 | 22 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |
| [ECR-002: Q1 two readings — evidence, #reading_coverage, then fix](https://nasa-jpl-demo.devinenterprise.com/sessions/d89172028cbe4ef9a871a4bf458fdd3c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:21 | suspended (inactivity) | 11h56 | 246.4 | 460 sh / 125 ed / 55 rd / 5 git / 9 mcp / 24+11 msg | [#120](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/120) merged |
| [M1 checker engineering with spec lemmas (step 4)](https://nasa-jpl-demo.devinenterprise.com/sessions/b60bb5ce46294a0a88bc1e343383448a) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:12 | suspended (inactivity) | 7h40 | 233.0 | 780 sh / 97 ed / 76 rd / 9 git / 6 mcp / 19+6 msg | [#118](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/118) merged, [#119](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/119) merged |

#### OpenSysML — 4 sessions, 18h24 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 17h12 | 4868.4 † | ≥934 sh / 109 ed / 99 rd / 65 git / 52 mcp / 58+18 msg | [#2110](https://github.com/Open-MBEE/OpenSysML/pull/2110) merged, [qvts #74](https://github.com/Open-MBEE/qvts/pull/74) merged, [#2117](https://github.com/Open-MBEE/OpenSysML/pull/2117) merged, [#2121](https://github.com/Open-MBEE/OpenSysML/pull/2121) merged, [qvts #75](https://github.com/Open-MBEE/qvts/pull/75) merged, [#2127](https://github.com/Open-MBEE/OpenSysML/pull/2127) closed |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | suspended (inactivity) | 4m | 182.8 † | 15 sh / 3 ed / 0 rd / 2 git / 8 mcp / 12+5 msg |  |
| [Prepare OpenSysML release/0.13.0 branch and PR to main](https://nasa-jpl-demo.devinenterprise.com/sessions/971fe7f6ece04bd2ae8d582c595bcce5) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-10 08:51 | suspended (inactivity) | 47m | 25.4 | 68 sh / 2 ed / 18 rd / 8 git / 0 mcp / 12+9 msg | [#2112](https://github.com/Open-MBEE/OpenSysML/pull/2112) closed |
| [Honor position-only sysx:Note edits on source-backed text](https://nasa-jpl-demo.devinenterprise.com/sessions/c18ad5bff7bd466b8460db005afd0a1e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 19m | 33.4 | 3 sh / 2 ed / 0 rd / 3 git / 0 mcp / 1+0 msg |  |

#### qvts — 6 sessions, 13h57 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Assess Lean/Verso QVTS Readiness](https://nasa-jpl-demo.devinenterprise.com/sessions/ff906ec875c14d87a95d3e41422ca547) | Open-MBEE/qvts | webapp | fusion | 10-30 17:01 | suspended (inactivity) | 7h53 | 313.5 † | 3256 sh / 410 ed / 1206 rd / 40 git / 15 mcp / 52+20 msg | [#65](https://github.com/Open-MBEE/qvts/pull/65) merged, [#66](https://github.com/Open-MBEE/qvts/pull/66) merged, [#67](https://github.com/Open-MBEE/qvts/pull/67) merged, [#68](https://github.com/Open-MBEE/qvts/pull/68) merged, [#69](https://github.com/Open-MBEE/qvts/pull/69) merged, [#70](https://github.com/Open-MBEE/qvts/pull/70) merged, [#71](https://github.com/Open-MBEE/qvts/pull/71) merged, [#72](https://github.com/Open-MBEE/qvts/pull/72) merged, [#73](https://github.com/Open-MBEE/qvts/pull/73) merged |
| [Add QVTS synthetic model coverage test plan](https://nasa-jpl-demo.devinenterprise.com/sessions/7459e04e306548f1a6da927a1bb5e437) | Open-MBEE/qvts | webapp | ultra | 11-10 18:53 | suspended (inactivity) | 22m | 139.7 ‡ | 53 sh / 9 ed / 21 rd / 9 git / 23 mcp / 22+7 msg | [#76](https://github.com/Open-MBEE/qvts/pull/76) merged |
| [Add QVTS synthetic recipe table and atlas](https://nasa-jpl-demo.devinenterprise.com/sessions/d604068cc6d4430b982aca056a74c42d) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 19:52 | suspended (inactivity) | 2h40 | 130.2 | 272 sh / 81 ed / 57 rd / 17 git / 13 mcp / 19+9 msg | [#77](https://github.com/Open-MBEE/qvts/pull/77) merged, [#79](https://github.com/Open-MBEE/qvts/pull/79) merged, [#82](https://github.com/Open-MBEE/qvts/pull/82) merged |
| [Generate QVTS synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/58778dcb6f804bb29a7f426acb0b299c) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 20:45 | suspended (inactivity) | 1h23 | 40.2 | 115 sh / 32 ed / 19 rd / 5 git / 0 mcp / 7+2 msg | [#78](https://github.com/Open-MBEE/qvts/pull/78) closed |
| [Run QVTS reflection over synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/c6c88808f78b4b9482fe527179b020d2) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:10 | suspended (inactivity) | 51m | 31.6 | 64 sh / 17 ed / 32 rd / 3 git / 7 mcp / 5+2 msg | [#80](https://github.com/Open-MBEE/qvts/pull/80) closed |
| [Add QVTS synthetic values gate](https://nasa-jpl-demo.devinenterprise.com/sessions/dadb358f17ae48f0a1b089b220a6745b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:54 | suspended (inactivity) | 44m | 71.2 ‡ | 104 sh / 25 ed / 39 rd / 4 git / 0 mcp / 2+1 msg | [#81](https://github.com/Open-MBEE/qvts/pull/81) merged |

#### L4YAML — 5 sessions, 13h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Discuss L4YAML Assurance Gap](https://nasa-jpl-demo.devinenterprise.com/sessions/340a0814c47344da91f6de2b7146265b) | nasa-jpl/L4YAML | webapp | ultra | 11-10 22:25 | suspended (inactivity) | 20m | 39.8 ‡ | 91 sh / 1 ed / 16 rd / 3 git / 0 mcp / 14+8 msg |  |
| [Add metagraph experiment documentation](https://nasa-jpl-demo.devinenterprise.com/sessions/bfb0071aeaab4aa58b50b413bca12aba) | nasa-jpl/L4YAML | webapp | ultra | 11-09 18:15 | suspended (inactivity) | 2m | 55.6 ‡ | 8 sh / 1 ed / 1 rd / 0 git / 7 mcp / 10+4 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 8h35 | 2060.8 † | 438 sh / 82 ed / 17 rd / 22 git / 23 mcp / 54+12 msg | [#287](https://github.com/nasa-jpl/L4YAML/pull/287) merged, [#288](https://github.com/nasa-jpl/L4YAML/pull/288) merged, [#289](https://github.com/nasa-jpl/L4YAML/pull/289) merged, [#291](https://github.com/nasa-jpl/L4YAML/pull/291) merged, [#293](https://github.com/nasa-jpl/L4YAML/pull/293) merged, [#294](https://github.com/nasa-jpl/L4YAML/pull/294) merged, [#295](https://github.com/nasa-jpl/L4YAML/pull/295) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 3h58 | 331.8 † | 74 sh / 33 ed / 3 rd / 28 git / 2 mcp / 10+4 msg |  |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 3m | 898.8 † | 0 sh / 0 ed / 0 rd / 1 git / 14 mcp / 4+0 msg |  |

#### SBVR.lean — 1 session, 1h21 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add SBVR note reader over OpenSysML sysx:Note exports](https://nasa-jpl-demo.devinenterprise.com/sessions/95335e28a3fc4c5c8156f4659b495a2b) | Open-MBEE/SBVR.lean | child of 4eac7d67 | ultra | 11-10 08:43 | suspended (inactivity) | 1h21 | 61.6 ‡ | 252 sh / 62 ed / 77 rd / 4 git / 10 mcp / 8+4 msg | [#45](https://github.com/Open-MBEE/SBVR.lean/pull/45) merged |

#### engineering-foundation-architecture — 1 session, 1h05 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Draft AI Readiness Blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/79caccc7e63d4c8c81cbc46e8d344bcd) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-10 14:43 | suspended (inactivity) | 1h05 | 53.6 | 150 sh / 49 ed / 53 rd / 3 git / 18 mcp / 21+9 msg | [#71](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/71) merged |

#### git-remote-sync.lean — 1 session, 19m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Recover deleted evidence branch](https://nasa-jpl-demo.devinenterprise.com/sessions/cb242389d6be4d27ae8b09c26f81b416) | Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-09 12:31 | suspended (inactivity) | 19m | 33.9 | 47 sh / 14 ed / 22 rd / 4 git / 7 mcp / 7+3 msg |  |

#### mars.lean — 3 sessions, 12m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Summarize mars.lean Formalization Accomplishments](https://nasa-jpl-demo.devinenterprise.com/sessions/16abb368d37449b0ad4b96da1277fb98) | Open-MBEE/mars.lean | webapp | ultra | 11-10 13:39 | suspended (inactivity) | 4m | 4.2 | 17 sh / 0 ed / 14 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Summarize mars.lean Achievements](https://nasa-jpl-demo.devinenterprise.com/sessions/a9e9b4032ff646dabd7881696135d045) | Open-MBEE/mars.lean | webapp | ultra | 11-10 13:42 | suspended (inactivity) | 2m | 3.0 | 16 sh / 0 ed / 10 rd / 0 git / 2 mcp / 5+3 msg |  |
| [Make retimedSimH hold for every tie-break order (route A)](https://nasa-jpl-demo.devinenterprise.com/sessions/56cef766932f4de3b168db27a375294e) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 5m | 31.1 | 11 sh / 3 ed / 1 rd / 2 git / 4 mcp / 2+1 msg |  |

#### (no repository) — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Nicolas Rouquette Daily Report](https://nasa-jpl-demo.devinenterprise.com/sessions/7bc2bc82020d435e85680dcbb41b853e) |  | automation | ultra | 11-10 00:05 | suspended (inactivity) | 5m | 3.2 | 5 sh / 0 ed / 1 rd / 0 git / 580 mcp / 3+1 msg |  |

#### soil-moisture-dps — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 5m | 70.9 † | 24 sh / 5 ed / 2 rd / 2 git / 3 mcp / 6+3 msg |  |

#### soil-moisture-model — 1 session, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Coordinate Stage-1g Repository Fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/ee9ffef83ce545fe8da2d5601207f816) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-10 13:06 | suspended (inactivity) | 2m | 2.9 | 13 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |

#### face.lean — 1 session, 1m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Summarize face.lean Formalization Accomplishments](https://nasa-jpl-demo.devinenterprise.com/sessions/48b6527d50f441458b50666af91f5e02) | Open-MBEE/face.lean | webapp | ultra | 11-10 13:33 | suspended (inactivity) | 1m | 2.1 | 10 sh / 0 ed / 5 rd / 0 git / 0 mcp / 2+1 msg |  |

#### PropertyKindCalculus — 1 session, 1m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/c37ff2ede1384b58a4b8b783e5af5396) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-10 06:01 | suspended (inactivity) | 1m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

### Wednesday 2026-11-11

25 sessions across 10 projects, 27h58 of working time, 25 PRs opened.

#### OpenSysML — 1 session, 13h37 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 13h37 | 4868.4 † | ≥667 sh / 114 ed / 12 rd / 45 git / 8 mcp / 36+0 msg | [#2135](https://github.com/Open-MBEE/OpenSysML/pull/2135) merged, [#2143](https://github.com/Open-MBEE/OpenSysML/pull/2143) merged, [qvts #86](https://github.com/Open-MBEE/qvts/pull/86) merged, [#2161](https://github.com/Open-MBEE/OpenSysML/pull/2161) merged, [#2164](https://github.com/Open-MBEE/OpenSysML/pull/2164) merged, [qvts #91](https://github.com/Open-MBEE/qvts/pull/91) merged |

#### qvts — 10 sessions, 5h34 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add QVTS synthetic model coverage test plan](https://nasa-jpl-demo.devinenterprise.com/sessions/7459e04e306548f1a6da927a1bb5e437) | Open-MBEE/qvts | webapp | ultra | 11-10 18:53 | suspended (inactivity) | 10m | 139.7 ‡ | 11 sh / 1 ed / 0 rd / 1 git / 34 mcp / 22+4 msg |  |
| [Add QVTS synthetic composition operators](https://nasa-jpl-demo.devinenterprise.com/sessions/baf179ebff68484e8c12e9bfece3ea5e) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 17:28 | suspended (inactivity) | 1h15 | 42.0 | 159 sh / 41 ed / 43 rd / 2 git / 3 mcp / 7+2 msg | [#88](https://github.com/Open-MBEE/qvts/pull/88) merged |
| [Add QVTS synthetic values gate](https://nasa-jpl-demo.devinenterprise.com/sessions/dadb358f17ae48f0a1b089b220a6745b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:54 | suspended (inactivity) | 1h05 | 71.2 ‡ | 94 sh / 31 ed / 20 rd / 10 git / 3 mcp / 15+7 msg | [#83](https://github.com/Open-MBEE/qvts/pull/83) merged |
| [Add QVTS synthetic edits gate](https://nasa-jpl-demo.devinenterprise.com/sessions/42b2d477bd7e4824ae7115c707fe10c4) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 08:23 | suspended (inactivity) | 1h00 | 83.1 | 179 sh / 40 ed / 48 rd / 4 git / 7 mcp / 8+2 msg | [#84](https://github.com/Open-MBEE/qvts/pull/84) merged, [#85](https://github.com/Open-MBEE/qvts/pull/85) merged |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 49m | 21.5 ‡ | 82 sh / 7 ed / 33 rd / 5 git / 0 mcp / 4+1 msg | [#90](https://github.com/Open-MBEE/qvts/pull/90) merged |
| [Add QVTS synthetic nightly tiers workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/dff306134f4e424e9044a0edd96ca1f1) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 20:56 | suspended (inactivity) | 35m | 18.3 | 64 sh / 16 ed / 35 rd / 1 git / 0 mcp / 2+1 msg | [#89](https://github.com/Open-MBEE/qvts/pull/89) merged |
| [Fold measured figures into QVTS coverage plan](https://nasa-jpl-demo.devinenterprise.com/sessions/ef2935ede9be4aafab6e59719a3a865b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 17:28 | suspended (inactivity) | 12m | 10.7 | 29 sh / 3 ed / 8 rd / 2 git / 0 mcp / 5+3 msg | [#87](https://github.com/Open-MBEE/qvts/pull/87) merged |
| [Generate QVTS synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/58778dcb6f804bb29a7f426acb0b299c) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 20:45 | suspended (inactivity) | 11m | 40.2 | 26 sh / 6 ed / 4 rd / 0 git / 1 mcp / 4+3 msg |  |
| [Add QVTS synthetic recipe table and atlas](https://nasa-jpl-demo.devinenterprise.com/sessions/d604068cc6d4430b982aca056a74c42d) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 19:52 | suspended (inactivity) | 8m | 130.2 | 17 sh / 4 ed / 8 rd / 2 git / 4 mcp / 7+3 msg |  |
| [Run QVTS reflection over synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/c6c88808f78b4b9482fe527179b020d2) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:10 | suspended (inactivity) | 4m | 31.6 | 20 sh / 1 ed / 4 rd / 2 git / 1 mcp / 6+3 msg |  |

#### fprime-lean-sysmlv2-example — 3 sessions, 3h12 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Downlink M0 Architecture Diagram](https://nasa-jpl-demo.devinenterprise.com/sessions/c4fe0be598084357b14813fd5326e998) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-09 12:13 | suspended (inactivity) | 5m | 127.3 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | suspended (inactivity) | 0m | 562.6 † | 1 sh / 1 ed / 0 rd / 0 git / 2 mcp / 1+0 msg |  |
| [ECR-002: Q1 two readings — evidence, #reading_coverage, then fix](https://nasa-jpl-demo.devinenterprise.com/sessions/d89172028cbe4ef9a871a4bf458fdd3c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:21 | suspended (inactivity) | 3h06 | 246.4 | 149 sh / 39 ed / 8 rd / 6 git / 7 mcp / 7+1 msg | [#121](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/121) merged |

#### L4YAML — 3 sessions, 2h29 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Discuss L4YAML Assurance Gap](https://nasa-jpl-demo.devinenterprise.com/sessions/340a0814c47344da91f6de2b7146265b) | nasa-jpl/L4YAML | webapp | ultra | 11-10 22:25 | suspended (inactivity) | 24m | 39.8 ‡ | 59 sh / 1 ed / 14 rd / 6 git / 0 mcp / 8+4 msg |  |
| [Add metagraph experiment documentation](https://nasa-jpl-demo.devinenterprise.com/sessions/bfb0071aeaab4aa58b50b413bca12aba) | nasa-jpl/L4YAML | webapp | ultra | 11-09 18:15 | suspended (inactivity) | 0m | 55.6 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+0 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 2h04 | 2060.8 † | 135 sh / 33 ed / 2 rd / 6 git / 3 mcp / 18+6 msg | [#297](https://github.com/nasa-jpl/L4YAML/pull/297) merged, [#298](https://github.com/nasa-jpl/L4YAML/pull/298) merged, [#301](https://github.com/nasa-jpl/L4YAML/pull/301) merged |

#### SBVR.lean — 2 sessions, 57m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 56m | 2191.0 † | 152 sh / 35 ed / 23 rd / 8 git / 6 mcp / 11+2 msg | [html-to-pdf.lean #3](https://github.com/Open-MBEE/html-to-pdf.lean/pull/3) merged, [engineering-foundation-architecture #74](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/74) merged, [prov.lean #20](https://github.com/Open-MBEE/prov.lean/pull/20) merged, [engineering-foundation-architecture #75](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/75) merged, [engineering-foundation-architecture #76](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/76) merged |
| [Add SBVR note reader over OpenSysML sysx:Note exports](https://nasa-jpl-demo.devinenterprise.com/sessions/95335e28a3fc4c5c8156f4659b495a2b) | Open-MBEE/SBVR.lean | child of 4eac7d67 | ultra | 11-10 08:43 | suspended (inactivity) | 1m | 61.6 ‡ | 4 sh / 0 ed / 0 rd / 0 git / 0 mcp / 4+2 msg |  |

#### prov.lean — 1 session, 57m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 57m | 863.1 ‡ | 93 sh / 47 ed / 27 rd / 2 git / 0 mcp / 4+2 msg | [#21](https://github.com/Open-MBEE/prov.lean/pull/21) merged |

#### engineering-foundation-architecture — 2 sessions, 52m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Write SBVR Requirements White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/900e867e05764334a74bccd12e60de87) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-11 11:30 | suspended (inactivity) | 28m | 28.6 | 64 sh / 6 ed / 13 rd / 3 git / 0 mcp / 26+16 msg | [#72](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/72) merged |
| [SBVR Proofs and Verification Obligations](https://nasa-jpl-demo.devinenterprise.com/sessions/0c119cb9eb4d4ce3b100e54496fa1fd7) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-11 19:32 | suspended (inactivity) | 24m | 20.7 ‡ | 57 sh / 6 ed / 5 rd / 6 git / 0 mcp / 12+6 msg | [#73](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/73) merged |

#### soil-moisture-model — 1 session, 13m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 13m | 225.9 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

#### (no repository) — 1 session, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Nicolas Rouquette’s daily Devin session report](https://nasa-jpl-demo.devinenterprise.com/sessions/eb03a35de28d444eaa36b43d573ab0bd) |  | automation | ultra | 11-11 00:05 | suspended (inactivity) | 2m | 1.8 | 4 sh / 0 ed / 1 rd / 0 git / 461 mcp / 2+1 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/dafb51b3aaf94028a5d97dd2fe9a36a2) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-11 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

### Thursday 2026-11-12

17 sessions across 8 projects, 31h22 of working time, 31 PRs opened.

#### OpenSysML — 2 sessions, 17h05 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 17h03 | 4868.4 † | ≥820 sh / 90 ed / 42 rd / 50 git / 24 mcp / 51+6 msg | [#2172](https://github.com/Open-MBEE/OpenSysML/pull/2172) merged, [#2173](https://github.com/Open-MBEE/OpenSysML/pull/2173) merged, [#2175](https://github.com/Open-MBEE/OpenSysML/pull/2175) merged, [qvts #93](https://github.com/Open-MBEE/qvts/pull/93) merged, [#2180](https://github.com/Open-MBEE/OpenSysML/pull/2180) merged, [#2190](https://github.com/Open-MBEE/OpenSysML/pull/2190) merged, [qvts #97](https://github.com/Open-MBEE/qvts/pull/97) merged, [#2194](https://github.com/Open-MBEE/OpenSysML/pull/2194) merged |
| [Prepare OpenSysML release/0.13.0 branch and PR to main](https://nasa-jpl-demo.devinenterprise.com/sessions/971fe7f6ece04bd2ae8d582c595bcce5) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-10 08:51 | suspended (inactivity) | 1m | 25.4 | 6 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

#### L4YAML — 7 sessions, 7h22 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML Pull Requests](https://nasa-jpl-demo.devinenterprise.com/sessions/956b61080c1444a5ac64c4effb79da21) | nasa-jpl/L4YAML | webapp | ultra | 11-12 07:57 | suspended (inactivity) | 6m | 28.7 ‡ | 7 sh / 1 ed / 5 rd / 5 git / 13 mcp / 7+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 4h32 | 2060.8 † | 549 sh / 95 ed / 1 rd / 18 git / 11 mcp / 35+8 msg | [#303](https://github.com/nasa-jpl/L4YAML/pull/303) merged, [#304](https://github.com/nasa-jpl/L4YAML/pull/304) merged, [#305](https://github.com/nasa-jpl/L4YAML/pull/305) merged, [#306](https://github.com/nasa-jpl/L4YAML/pull/306) merged, [#308](https://github.com/nasa-jpl/L4YAML/pull/308) merged |
| [Review L4YAML PR #290 embedded-NUL FFI fix](https://nasa-jpl-demo.devinenterprise.com/sessions/1c8e22c9f5024f27914303ad72a771cc) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 52m | 24.9 | 126 sh / 1 ed / 29 rd / 5 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 35m | 132.3 ‡ | 105 sh / 3 ed / 14 rd / 4 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #292 safe_dump scalar escaping](https://nasa-jpl-demo.devinenterprise.com/sessions/181a9450515546b38406c05906edf410) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 28m | 25.6 | 78 sh / 1 ed / 17 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #300 Core numeric spellings](https://nasa-jpl-demo.devinenterprise.com/sessions/d7659a10c36746deae97ff26be7e62a2) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 28m | 15.3 ‡ | 59 sh / 1 ed / 17 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #299 explicit Core tags](https://nasa-jpl-demo.devinenterprise.com/sessions/d8c29e5a929e4a64881d356d2a70fb1e) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 19m | 27.9 ‡ | 76 sh / 1 ed / 11 rd / 6 git / 0 mcp / 2+1 msg |  |

#### SBVR.lean — 2 sessions, 2h21 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 2h21 | 2191.0 † | 338 sh / 110 ed / 89 rd / 25 git / 25 mcp / 75+39 msg | [engineering-foundation-architecture #78](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/78) merged, [leanCurl #2](https://github.com/Open-MBEE/leanCurl/pull/2) merged, [engineering-foundation-architecture #79](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/79) merged, [leanCurl #3](https://github.com/Open-MBEE/leanCurl/pull/3) merged, [engineering-foundation-architecture #80](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/80) merged, [engineering-foundation-architecture #81](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/81) merged, [#46](https://github.com/Open-MBEE/SBVR.lean/pull/46) merged |
| [Add SBVR note reader over OpenSysML sysx:Note exports](https://nasa-jpl-demo.devinenterprise.com/sessions/95335e28a3fc4c5c8156f4659b495a2b) | Open-MBEE/SBVR.lean | child of 4eac7d67 | ultra | 11-10 08:43 | suspended (inactivity) | 0m | 61.6 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+1 msg |  |

#### qvts — 2 sessions, 2h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Create QVTS Mass Rollup Examples](https://nasa-jpl-demo.devinenterprise.com/sessions/e9f985e539484c79b232cec027170643) | Open-MBEE/qvts | webapp | ultra | 11-12 08:53 | suspended (inactivity) | 1h55 | 105.6 | 304 sh / 78 ed / 106 rd / 9 git / 20 mcp / 26+8 msg | [#92](https://github.com/Open-MBEE/qvts/pull/92) merged, [#94](https://github.com/Open-MBEE/qvts/pull/94) merged, [#95](https://github.com/Open-MBEE/qvts/pull/95) merged, [#96](https://github.com/Open-MBEE/qvts/pull/96) merged |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 5m | 21.5 ‡ | 6 sh / 2 ed / 2 rd / 0 git / 0 mcp / 2+1 msg |  |

#### prov.lean — 1 session, 1h56 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 1h56 | 863.1 ‡ | 189 sh / 83 ed / 35 rd / 12 git / 0 mcp / 20+6 msg | [#22](https://github.com/Open-MBEE/prov.lean/pull/22) merged, [#23](https://github.com/Open-MBEE/prov.lean/pull/23) merged, [#24](https://github.com/Open-MBEE/prov.lean/pull/24) merged, [#25](https://github.com/Open-MBEE/prov.lean/pull/25) merged |

#### engineering-foundation-architecture — 1 session, 32m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 32m | 75.0 ‡ | 84 sh / 21 ed / 5 rd / 13 git / 0 mcp / 45+22 msg | [#77](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/77) merged, [#82](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/82) merged, [#83](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/83) merged |

#### (no repository) — 1 session, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/61a9e27713ac41a1b0d107b29a5ad67e) |  | automation | ultra | 11-12 00:05 | suspended (inactivity) | 3m | 1.6 | 3 sh / 0 ed / 0 rd / 0 git / 405 mcp / 2+1 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/aa4c7c412f78477094c16d6c2c1f565a) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-12 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |

### Friday 2026-11-13

26 sessions across 13 projects, 25h45 of working time, 31 PRs opened.

#### OpenSysML — 1 session, 11h44 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 11h44 | 4868.4 † | ≥696 sh / 129 ed / 8 rd / 44 git / 21 mcp / 50+4 msg | [qvts #100](https://github.com/Open-MBEE/qvts/pull/100) merged, [#2215](https://github.com/Open-MBEE/OpenSysML/pull/2215) merged, [#2216](https://github.com/Open-MBEE/OpenSysML/pull/2216) merged, [qvts #101](https://github.com/Open-MBEE/qvts/pull/101) merged, [#2220](https://github.com/Open-MBEE/OpenSysML/pull/2220) merged, [#2221](https://github.com/Open-MBEE/OpenSysML/pull/2221) merged, [#2222](https://github.com/Open-MBEE/OpenSysML/pull/2222) merged, [qvts #102](https://github.com/Open-MBEE/qvts/pull/102) merged |

#### soil-moisture-workflows — 1 session, 4h18 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix soil-moisture CI workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/a3a98b66aaba486384ce1ee9109622e7) | Open-MBEE/git-remote-sync.lean, Open-MBEE/html-to-pdf.lean, Open-MBEE/prov.lean, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-09 08:53 | suspended (inactivity) | 4h18 | 411.0 ‡ | 492 sh / 162 ed / 20 rd / 45 git / 19 mcp / 64+16 msg | [#46](https://github.com/Open-MBEE/soil-moisture-workflows/pull/46) merged, [soil-moisture-model #49](https://github.com/Open-MBEE/soil-moisture-model/pull/49) merged, [soil-moisture-model #51](https://github.com/Open-MBEE/soil-moisture-model/pull/51) merged, [soil-moisture-model #52](https://github.com/Open-MBEE/soil-moisture-model/pull/52) merged, [soil-moisture-dps #18](https://github.com/Open-MBEE/soil-moisture-dps/pull/18) merged, [#47](https://github.com/Open-MBEE/soil-moisture-workflows/pull/47) merged, [#48](https://github.com/Open-MBEE/soil-moisture-workflows/pull/48) merged, [#49](https://github.com/Open-MBEE/soil-moisture-workflows/pull/49) merged |

#### L4YAML — 7 sessions, 2h52 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 1h36 | 2060.8 † | 148 sh / 29 ed / 0 rd / 8 git / 0 mcp / 9+1 msg | [#310](https://github.com/nasa-jpl/L4YAML/pull/310) merged, [#311](https://github.com/nasa-jpl/L4YAML/pull/311) merged |
| [Clear Lean lint warnings in L4YAML Serialization proofs](https://nasa-jpl-demo.devinenterprise.com/sessions/000613653ae24ba19d3b12da1d9b61d4) | nasa-jpl/L4YAML | child of 58f12c50 | ultra | 11-13 21:14 | suspended (inactivity) | 20m | 7.8 | 27 sh / 2 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#309](https://github.com/nasa-jpl/L4YAML/pull/309) merged |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 42m | 132.3 ‡ | 26 sh / 3 ed / 0 rd / 1 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #290 embedded-NUL FFI fix](https://nasa-jpl-demo.devinenterprise.com/sessions/1c8e22c9f5024f27914303ad72a771cc) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 4m | 24.9 | 14 sh / 1 ed / 0 rd / 3 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #292 safe_dump scalar escaping](https://nasa-jpl-demo.devinenterprise.com/sessions/181a9450515546b38406c05906edf410) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 3m | 25.6 | 13 sh / 0 ed / 0 rd / 1 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #299 explicit Core tags](https://nasa-jpl-demo.devinenterprise.com/sessions/d8c29e5a929e4a64881d356d2a70fb1e) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 2m | 27.9 ‡ | 8 sh / 0 ed / 0 rd / 1 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #300 Core numeric spellings](https://nasa-jpl-demo.devinenterprise.com/sessions/d7659a10c36746deae97ff26be7e62a2) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 1m | 15.3 ‡ | 7 sh / 0 ed / 2 rd / 1 git / 0 mcp / 2+1 msg |  |

#### pacti.lean — 3 sessions, 2h14 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 1h04 | 204.2 ‡ | 96 sh / 22 ed / 27 rd / 4 git / 6 mcp / 13+4 msg | [#6](https://github.com/Open-MBEE/pacti.lean/pull/6) merged, [#7](https://github.com/Open-MBEE/pacti.lean/pull/7) merged |
| [Finish GR(1) CAVE eliminations in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/60f6fe90545041498d82d29add293dad) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-13 21:38 | suspended (inactivity) | 54m | 35.3 | 92 sh / 30 ed / 34 rd / 2 git / 0 mcp / 3+1 msg | [#9](https://github.com/Open-MBEE/pacti.lean/pull/9) merged |
| [Add GR(1) window theory to pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/9a4a152d555d41f3a194a039ebc2dc82) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-13 20:16 | suspended (inactivity) | 14m | 12.9 | 32 sh / 9 ed / 15 rd / 1 git / 0 mcp / 2+1 msg | [#8](https://github.com/Open-MBEE/pacti.lean/pull/8) merged |

#### soil-moisture-model — 2 sessions, 1h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Module Inventory Section](https://nasa-jpl-demo.devinenterprise.com/sessions/53fa8bc4c29f47b8b7ff3e2dfd62bc89) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-13 12:50 | suspended (inactivity) | 47m | 10.8 ‡ | 42 sh / 8 ed / 21 rd / 2 git / 0 mcp / 4+2 msg | [#50](https://github.com/Open-MBEE/soil-moisture-model/pull/50) merged |
| [Fix all soil-moisture-model warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/bd6255fd25e54fc0b00488e20d401903) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-13 20:09 | suspended (inactivity) | 26m | 6.3 | 32 sh / 8 ed / 11 rd / 1 git / 0 mcp / 2+1 msg | [#53](https://github.com/Open-MBEE/soil-moisture-model/pull/53) merged |

#### prov.lean — 2 sessions, 58m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 53m | 863.1 ‡ | 89 sh / 43 ed / 24 rd / 22 git / 9 mcp / 18+3 msg | [#26](https://github.com/Open-MBEE/prov.lean/pull/26) merged |
| [Investigate prov.lean CI failure](https://nasa-jpl-demo.devinenterprise.com/sessions/f13c4c213e6945d7ba1384cf655ae0b6) | Open-MBEE/prov.lean | webapp | ultra | 11-13 10:36 | suspended (inactivity) | 5m | 13.0 | 7 sh / 0 ed / 2 rd / 0 git / 0 mcp / 3+2 msg |  |

#### html-to-pdf.lean — 1 session, 55m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Silence WeasyPrint CSS warnings in html-to-pdf](https://nasa-jpl-demo.devinenterprise.com/sessions/6bdc38ccb90146fa8c8e9d84d736c0e0) | Open-MBEE/html-to-pdf.lean | child of 58f12c50 | ultra | 11-13 21:14 | suspended (inactivity) | 55m | 13.8 | 55 sh / 15 ed / 15 rd / 1 git / 0 mcp / 2+1 msg | [#4](https://github.com/Open-MBEE/html-to-pdf.lean/pull/4) merged |

#### qvts — 2 sessions, 41m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix Open-MBEE/qvts warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/4bc4bb5a8c694d3b89f73446082bb1d9) | Open-MBEE/qvts | webapp | ultra | 11-13 10:02 | suspended (inactivity) | 23m | 6.3 | 28 sh / 4 ed / 4 rd / 3 git / 0 mcp / 3+1 msg | [#98](https://github.com/Open-MBEE/qvts/pull/98) merged |
| [Create QVTS Mass Rollup Examples](https://nasa-jpl-demo.devinenterprise.com/sessions/e9f985e539484c79b232cec027170643) | Open-MBEE/qvts | webapp | ultra | 11-12 08:53 | suspended (inactivity) | 17m | 105.6 | 72 sh / 13 ed / 13 rd / 5 git / 1 mcp / 6+2 msg | [#99](https://github.com/Open-MBEE/qvts/pull/99) merged |

#### git-remote-sync.lean — 2 sessions, 33m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix warnings and errors in git-remote-sync.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/58f12c5014384468bf409d36f326059b) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-13 20:35 | suspended (inactivity) | 21m | 30.5 ‡ | 27 sh / 3 ed / 13 rd / 4 git / 5 mcp / 10+2 msg | [#65](https://github.com/Open-MBEE/git-remote-sync.lean/pull/65) merged |
| [Bump git-remote-sync.lean L4YAML pin to lint-clean commit](https://nasa-jpl-demo.devinenterprise.com/sessions/ef61b5eb42f84376a2bdd7e195c556a0) | Open-MBEE/git-remote-sync.lean | child of 58f12c50 | ultra | 11-13 21:50 | suspended (inactivity) | 11m | 5.7 | 16 sh / 1 ed / 7 rd / 3 git / 0 mcp / 2+1 msg | [#66](https://github.com/Open-MBEE/git-remote-sync.lean/pull/66) merged |

#### (Devin housekeeping) — 1 session, 10m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/6a1e4491d7f44066bf9033d396706315) |  | webapp | normal | 11-13 07:52 | suspended | 10m | 0.0 | 54 sh / 14 ed / 10 rd / 0 git / 44 mcp / 1+2 msg |  |

#### (no repository) — 2 sessions, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/f05559a56ffd4a899a609b63934aa80e) |  | automation | ultra | 11-13 00:05 | suspended (inactivity) | 2m | 1.8 ‡ | 4 sh / 0 ed / 0 rd / 0 git / 364 mcp / 2+1 msg |  |
| [Z3 Implementation in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/3993442cdae145069390939327abff87) |  | webapp | ultra | 11-13 19:54 | suspended (inactivity) | 0m | 3.3 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+1 msg |  |

#### soil-moisture-dps — 1 session, 1m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 1m | 70.9 † | 11 sh / 2 ed / 1 rd / 0 git / 0 mcp / 0+0 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/f3d52c206d9741fda4365587e14d17cc) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-13 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |

### Saturday 2026-11-14

32 sessions across 9 projects, 57h10 of working time, 50 PRs opened.

#### L4YAML — 9 sessions, 22h26 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 12h14 | 4151.6 † | 1082 sh / 152 ed / 20 rd / 67 git / 23 mcp / 53+27 msg | [#312](https://github.com/nasa-jpl/L4YAML/pull/312) merged, [#315](https://github.com/nasa-jpl/L4YAML/pull/315) merged, [#317](https://github.com/nasa-jpl/L4YAML/pull/317) merged, [#319](https://github.com/nasa-jpl/L4YAML/pull/319) merged, [#320](https://github.com/nasa-jpl/L4YAML/pull/320) merged, [#322](https://github.com/nasa-jpl/L4YAML/pull/322) merged, [#323](https://github.com/nasa-jpl/L4YAML/pull/323) merged, [#324](https://github.com/nasa-jpl/L4YAML/pull/324) merged, [#326](https://github.com/nasa-jpl/L4YAML/pull/326) merged, [#327](https://github.com/nasa-jpl/L4YAML/pull/327) merged, [#329](https://github.com/nasa-jpl/L4YAML/pull/329) merged, [#330](https://github.com/nasa-jpl/L4YAML/pull/330) merged, [#332](https://github.com/nasa-jpl/L4YAML/pull/332) merged |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 5h55 | 2060.8 † | 487 sh / 62 ed / 16 rd / 24 git / 0 mcp / 36+15 msg | [#321](https://github.com/nasa-jpl/L4YAML/pull/321) merged, [#325](https://github.com/nasa-jpl/L4YAML/pull/325) merged, [#328](https://github.com/nasa-jpl/L4YAML/pull/328) merged, [#331](https://github.com/nasa-jpl/L4YAML/pull/331) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 2h24 | 331.8 † | 198 sh / 44 ed / 15 rd / 12 git / 0 mcp / 30+18 msg | [#313](https://github.com/nasa-jpl/L4YAML/pull/313) merged, [#316](https://github.com/nasa-jpl/L4YAML/pull/316) merged, [#318](https://github.com/nasa-jpl/L4YAML/pull/318) merged |
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 5m | 578.7 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Clear remaining L4YAML library lint warnings](https://nasa-jpl-demo.devinenterprise.com/sessions/99f7fa8d7ce24f6db8cc67d056ed20a6) | nasa-jpl/L4YAML | child of 58f12c50 | ultra | 11-14 11:48 | suspended (inactivity) | 20m | 7.8 | 33 sh / 1 ed / 9 rd / 2 git / 0 mcp / 3+1 msg | [#314](https://github.com/nasa-jpl/L4YAML/pull/314) merged |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 1h13 | 132.3 ‡ | 66 sh / 5 ed / 3 rd / 5 git / 0 mcp / 7+3 msg |  |
| [Review L4YAML PR #299 explicit Core tags](https://nasa-jpl-demo.devinenterprise.com/sessions/d8c29e5a929e4a64881d356d2a70fb1e) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 5m | 27.9 ‡ | 11 sh / 0 ed / 1 rd / 2 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #292 safe_dump scalar escaping](https://nasa-jpl-demo.devinenterprise.com/sessions/181a9450515546b38406c05906edf410) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 0m | 25.6 | 2 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 7m | 898.8 † | 11 sh / 4 ed / 0 rd / 3 git / 48 mcp / 18+6 msg |  |

#### OpenSysML — 1 session, 17h10 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 17h10 | 4868.4 † | ≥1085 sh / 181 ed / 33 rd / 42 git / 24 mcp / 43+4 msg | [qvts #103](https://github.com/Open-MBEE/qvts/pull/103) merged, [#2234](https://github.com/Open-MBEE/OpenSysML/pull/2234) merged, [qvts #104](https://github.com/Open-MBEE/qvts/pull/104) merged, [#2242](https://github.com/Open-MBEE/OpenSysML/pull/2242) merged, [#2245](https://github.com/Open-MBEE/OpenSysML/pull/2245) merged, [qvts #105](https://github.com/Open-MBEE/qvts/pull/105) merged, [#2259](https://github.com/Open-MBEE/OpenSysML/pull/2259) merged, [#2260](https://github.com/Open-MBEE/OpenSysML/pull/2260) merged |

#### pacti.lean — 16 sessions, 14h55 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 33m | 204.2 ‡ | 70 sh / 6 ed / 4 rd / 10 git / 37 mcp / 36+13 msg | [#10](https://github.com/Open-MBEE/pacti.lean/pull/10) merged |
| [Add GR(1) simplify parity to pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/42c142026d914c9cbd8b9471fe31d105) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 17:17 | suspended (inactivity) | 3h37 | 52.7 | 212 sh / 26 ed / 71 rd / 2 git / 8 mcp / 10+3 msg | [#18](https://github.com/Open-MBEE/pacti.lean/pull/18) merged |
| [Wire GR(1) simplify into compose and quotient](https://nasa-jpl-demo.devinenterprise.com/sessions/170d3e53292b4fdf8c4846906ac8f9e7) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 20:49 | suspended (inactivity) | 3h10 | 41.4 | 77 sh / 14 ed / 22 rd / 0 git / 0 mcp / 3+2 msg |  |
| [Add GR(1) contract operations parity](https://nasa-jpl-demo.devinenterprise.com/sessions/ea0180c9739b4849bc0a3552be154aed) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 17:17 | suspended (inactivity) | 2h27 | 44.2 | 141 sh / 28 ed / 51 rd / 2 git / 3 mcp / 6+3 msg | [#17](https://github.com/Open-MBEE/pacti.lean/pull/17) merged, [#23](https://github.com/Open-MBEE/pacti.lean/pull/23) merged |
| [Add exact integer elimination for GR(1)](https://nasa-jpl-demo.devinenterprise.com/sessions/ed2cccabe0104932927859bab4b96650) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 21:09 | suspended (inactivity) | 30m | 19.9 | 44 sh / 18 ed / 17 rd / 2 git / 0 mcp / 3+1 msg | [#21](https://github.com/Open-MBEE/pacti.lean/pull/21) merged |
| [Add GR(1) int sorts to JSON reader](https://nasa-jpl-demo.devinenterprise.com/sessions/0b2cbab65491493485443c9d22a0132d) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 21:21 | suspended (inactivity) | 25m | 17.7 | 71 sh / 22 ed / 41 rd / 2 git / 0 mcp / 4+1 msg | [#22](https://github.com/Open-MBEE/pacti.lean/pull/22) merged |
| [Add GR(1) JSON interchange to pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/edbfb851340e48cd8190992246d08f68) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 13:45 | suspended (inactivity) | 19m | 18.6 | 60 sh / 10 ed / 16 rd / 3 git / 3 mcp / 4+1 msg | [#14](https://github.com/Open-MBEE/pacti.lean/pull/14) merged |
| [Add GR(1) rename, printing, behavior parity](https://nasa-jpl-demo.devinenterprise.com/sessions/777b1a05b955461ba35d255c7acd4f8c) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 17:17 | suspended (inactivity) | 19m | 20.3 | 68 sh / 16 ed / 32 rd / 5 git / 0 mcp / 3+1 msg | [#16](https://github.com/Open-MBEE/pacti.lean/pull/16) merged |
| [Shift liveness targets in GR(1) Term.implies](https://nasa-jpl-demo.devinenterprise.com/sessions/2e47d271843849e99e90080efa57f170) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 10:01 | suspended (inactivity) | 18m | 3.3 | 12 sh / 3 ed / 5 rd / 3 git / 0 mcp / 2+1 msg | [#11](https://github.com/Open-MBEE/pacti.lean/pull/11) merged |
| [Design GR(1) int variable support](https://nasa-jpl-demo.devinenterprise.com/sessions/de5a7e57f73b48f79e0fedecc8389431) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 20:49 | suspended (inactivity) | 17m | 10.9 | 35 sh / 1 ed / 34 rd / 0 git / 2 mcp / 4+2 msg |  |
| [Prove GR(1) ranking lemma in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/27dfa6f80433406f9c63b70f3e701d42) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 13:08 | suspended (inactivity) | 11m | 10.9 | 22 sh / 9 ed / 3 rd / 3 git / 0 mcp / 6+2 msg | [#12](https://github.com/Open-MBEE/pacti.lean/pull/12) merged |
| [Update GR(1) concept doc for ranking lemma](https://nasa-jpl-demo.devinenterprise.com/sessions/91ee239703ab47d29258d0554f2b6d44) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 13:45 | suspended (inactivity) | 8m | 15.2 | 24 sh / 2 ed / 13 rd / 2 git / 10 mcp / 10+3 msg | [#13](https://github.com/Open-MBEE/pacti.lean/pull/13) merged |
| [Bound normal-form conjunctions in GR(1) simplify](https://nasa-jpl-demo.devinenterprise.com/sessions/75df9525cf01424ca475ae4550dee948) | Open-MBEE/pacti.lean | child of 42c14202 | ultra | 11-14 22:00 | suspended (inactivity) | 1h21 | 30.7 | 84 sh / 27 ed / 30 rd / 1 git / 0 mcp / 2+1 msg | [#25](https://github.com/Open-MBEE/pacti.lean/pull/25) merged |
| [Review pacti.lean PR #20](https://nasa-jpl-demo.devinenterprise.com/sessions/3ed80fb1860a447286307ff974f8707a) | Open-MBEE/pacti.lean | child of 58f12c50 | ultra | 11-14 21:03 | suspended (inactivity) | 54m | 17.1 ‡ | 44 sh / 9 ed / 16 rd / 3 git / 0 mcp / 5+3 msg | [#24](https://github.com/Open-MBEE/pacti.lean/pull/24) merged |
| [Add invariant induction lemma to pacti.lean GR1](https://nasa-jpl-demo.devinenterprise.com/sessions/3bb6383c83c344c89633d5acbe83ed8a) | Open-MBEE/pacti.lean | child of 91ee2397 | ultra | 11-14 20:33 | suspended (inactivity) | 10m | 7.5 | 18 sh / 5 ed / 14 rd / 1 git / 0 mcp / 2+1 msg | [#19](https://github.com/Open-MBEE/pacti.lean/pull/19) merged |
| [Fix stale statements in pacti.lean CONCEPT-GR1](https://nasa-jpl-demo.devinenterprise.com/sessions/68e0127436e3440aa8644c969cdebf7b) | Open-MBEE/pacti.lean | child of 91ee2397 | ultra | 11-14 14:46 | suspended (inactivity) | 8m | 7.1 | 22 sh / 4 ed / 9 rd / 1 git / 0 mcp / 3+1 msg | [#15](https://github.com/Open-MBEE/pacti.lean/pull/15) merged |

#### prov.lean — 1 session, 1h53 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 1h53 | 863.1 ‡ | 337 sh / 175 ed / 57 rd / 15 git / 12 mcp / 34+3 msg | [#27](https://github.com/Open-MBEE/prov.lean/pull/27) merged, [#28](https://github.com/Open-MBEE/prov.lean/pull/28) merged, [#29](https://github.com/Open-MBEE/prov.lean/pull/29) merged, [#30](https://github.com/Open-MBEE/prov.lean/pull/30) merged |

#### SBVR.lean — 1 session, 33m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 33m | 2191.0 † | 64 sh / 30 ed / 28 rd / 2 git / 6 mcp / 7+3 msg | [#47](https://github.com/Open-MBEE/SBVR.lean/pull/47) merged, [#48](https://github.com/Open-MBEE/SBVR.lean/pull/48) merged |

#### engineering-foundation-architecture — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 5m | 75.0 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### (no repository) — 1 session, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/b545b6215b284a8d90d341247481212f) |  | automation | ultra | 11-14 00:05 | suspended (inactivity) | 3m | 2.2 | 4 sh / 0 ed / 0 rd / 0 git / 293 mcp / 2+1 msg |  |

#### git-remote-sync.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix warnings and errors in git-remote-sync.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/58f12c5014384468bf409d36f326059b) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-13 20:35 | suspended (inactivity) | 0m | 30.5 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 5 mcp / 3+0 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/0b29a7bbc15545e78ae6920b83e22fc4) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-14 06:01 | suspended (inactivity) | 0m | 1.6 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |

### Sunday 2026-11-15

35 sessions across 9 projects, 77h42 of working time, 42 PRs opened.

#### OpenSysML — 13 sessions, 41h55 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 22h52 | 4868.4 † | ≥928 sh / 134 ed / 114 rd / 64 git / 72 mcp / 53+17 msg | [#2261](https://github.com/Open-MBEE/OpenSysML/pull/2261) merged, [#2266](https://github.com/Open-MBEE/OpenSysML/pull/2266) merged, [#2268](https://github.com/Open-MBEE/OpenSysML/pull/2268) merged, [#2270](https://github.com/Open-MBEE/OpenSysML/pull/2270) merged, [#2278](https://github.com/Open-MBEE/OpenSysML/pull/2278) merged |
| [Make compliance row 17-expression-evaluation:25 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/49d0e2e74ead418995773a1f6a0403a1) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (user_request) [archived] | 3h13 | 37.5 ‡ | 128 sh / 17 ed / 31 rd / 18 git / 7 mcp / 7+2 msg | [#2274](https://github.com/Open-MBEE/OpenSysML/pull/2274) merged |
| [Make compliance row 28-name-resolution:69 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/5793d98799964d8db0a603483611aa16) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (user_request) [archived] | 2h50 | 40.6 ‡ | 182 sh / 39 ed / 72 rd / 17 git / 2 mcp / 5+1 msg | [#2275](https://github.com/Open-MBEE/OpenSysML/pull/2275) merged |
| [Make compliance row 26-usage-prefixes:8 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/e7e976d3e710492d80dc96a4af63d60b) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 2h46 | 32.8 ‡ | 121 sh / 19 ed / 20 rd / 5 git / 0 mcp / 4+1 msg | [#2279](https://github.com/Open-MBEE/OpenSysML/pull/2279) merged |
| [Make compliance row 28-name-resolution:71 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/f8b30d9a7cc94f7ea41fb1ab647eef47) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 2h17 | 22.3 | 89 sh / 15 ed / 30 rd / 7 git / 10 mcp / 7+3 msg | [#2276](https://github.com/Open-MBEE/OpenSysML/pull/2276) merged |
| [Make compliance row 28-name-resolution:81 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/9eae7d55903746d1a212b6005ae0e586) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 2h07 | 48.5 ‡ | 108 sh / 23 ed / 23 rd / 4 git / 8 mcp / 5+2 msg | [#2277](https://github.com/Open-MBEE/OpenSysML/pull/2277) merged |
| [Make compliance row 28-name-resolution:120 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/4bb54d932d8b4f468fb4b8276dfb05cf) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h38 | 16.3 | 71 sh / 10 ed / 33 rd / 5 git / 5 mcp / 3+1 msg | [#2271](https://github.com/Open-MBEE/OpenSysML/pull/2271) merged |
| [Make compliance row 15-state-machine:94 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/127f7be0f3b5458cbcf2b6eedaa5f862) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h34 | 23.1 ‡ | 87 sh / 19 ed / 25 rd / 5 git / 5 mcp / 3+1 msg | [#2272](https://github.com/Open-MBEE/OpenSysML/pull/2272) merged |
| [Make compliance row 28-name-resolution:68 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/36b9c9155ecc4f16916998b7350e71bb) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h24 | 18.3 | 97 sh / 19 ed / 31 rd / 6 git / 0 mcp / 3+1 msg | [#2273](https://github.com/Open-MBEE/OpenSysML/pull/2273) merged |
| [Make compliance row 08-instantiation:23 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/7e4ab05d47b540e8b7877c492a54e615) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 47m | 18.6 ‡ | 57 sh / 14 ed / 21 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Audit approximate spec-compliance rows for feasibility](https://nasa-jpl-demo.devinenterprise.com/sessions/e92fc6eb62514a0690cd00b9dd2ee5d4) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 05:15 | suspended (user_request) [archived] | 10m | 12.3 ‡ | 47 sh / 0 ed / 7 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Make compliance row 23-static-typing:29 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/5d48c28b9d274256bebd689770f7a4c3) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 6m | 25.9 ‡ | 32 sh / 0 ed / 8 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Make compliance row 18-kerml-function-library:619 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/748cc6cd3fe74a6b9b3f611d8b3374b4) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 3m | 9.5 ‡ | 25 sh / 0 ed / 7 rd / 0 git / 0 mcp / 2+1 msg |  |

#### L4YAML — 4 sessions, 23h02 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 16h04 | 4151.6 † | 841 sh / 221 ed / 18 rd / 126 git / 7 mcp / 47+27 msg | [#333](https://github.com/nasa-jpl/L4YAML/pull/333) merged, [#334](https://github.com/nasa-jpl/L4YAML/pull/334) merged, [#335](https://github.com/nasa-jpl/L4YAML/pull/335) merged, [#337](https://github.com/nasa-jpl/L4YAML/pull/337) merged, [#340](https://github.com/nasa-jpl/L4YAML/pull/340) merged, [#344](https://github.com/nasa-jpl/L4YAML/pull/344) merged |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 5h41 | 2060.8 † | 640 sh / 97 ed / 8 rd / 29 git / 6 mcp / 32+10 msg | [#336](https://github.com/nasa-jpl/L4YAML/pull/336) merged, [#339](https://github.com/nasa-jpl/L4YAML/pull/339) merged, [#341](https://github.com/nasa-jpl/L4YAML/pull/341) merged, [#343](https://github.com/nasa-jpl/L4YAML/pull/343) merged |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 1m | 132.3 ‡ | 6 sh / 0 ed / 0 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 1h15 | 898.8 † | 66 sh / 18 ed / 8 rd / 16 git / 30 mcp / 14+6 msg | [#338](https://github.com/nasa-jpl/L4YAML/pull/338) merged, [#342](https://github.com/nasa-jpl/L4YAML/pull/342) merged |

#### prov.lean — 1 session, 5h45 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 5h45 | 863.1 ‡ | 826 sh / 310 ed / 62 rd / 34 git / 12 mcp / 32+10 msg | [#31](https://github.com/Open-MBEE/prov.lean/pull/31) merged, [#32](https://github.com/Open-MBEE/prov.lean/pull/32) merged, [#33](https://github.com/Open-MBEE/prov.lean/pull/33) merged, [#34](https://github.com/Open-MBEE/prov.lean/pull/34) merged, [#35](https://github.com/Open-MBEE/prov.lean/pull/35) merged |

#### pacti.lean — 10 sessions, 4h55 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 14m | 204.2 ‡ | 20 sh / 0 ed / 1 rd / 8 git / 15 mcp / 17+4 msg |  |
| [Add SMT-LIB gr1_machine section to GR(1) JSON](https://nasa-jpl-demo.devinenterprise.com/sessions/8ed3105b93b0433ea1c59a0baab863bf) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 1h03 | 22.4 ‡ | 66 sh / 18 ed / 28 rd / 3 git / 0 mcp / 2+1 msg | [#30](https://github.com/Open-MBEE/pacti.lean/pull/30) merged |
| [Wire exact integer elimination into GR(1) operations](https://nasa-jpl-demo.devinenterprise.com/sessions/8435c0edaf494affb49de63f837786a0) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 14:21 | suspended (inactivity) | 52m | 29.0 ‡ | 90 sh / 25 ed / 38 rd / 2 git / 3 mcp / 5+1 msg | [#28](https://github.com/Open-MBEE/pacti.lean/pull/28) merged |
| [Add divisibility atom to GR(1) cores](https://nasa-jpl-demo.devinenterprise.com/sessions/48585ba7711c465d87e0b56777852bf5) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 11:53 | suspended (inactivity) | 46m | 32.6 | 104 sh / 33 ed / 29 rd / 2 git / 3 mcp / 4+1 msg | [#27](https://github.com/Open-MBEE/pacti.lean/pull/27) merged |
| [Wire GR(1) simplify into compose and quotient](https://nasa-jpl-demo.devinenterprise.com/sessions/170d3e53292b4fdf8c4846906ac8f9e7) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 20:49 | suspended (inactivity) | 44m | 41.4 | 85 sh / 17 ed / 16 rd / 6 git / 0 mcp / 4+1 msg | [#26](https://github.com/Open-MBEE/pacti.lean/pull/26) merged |
| [Prove GR(1) integer split never falls back](https://nasa-jpl-demo.devinenterprise.com/sessions/4699594c5c194e649e2117ef272ed589) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 21m | 19.0 ‡ | 29 sh / 4 ed / 28 rd / 3 git / 0 mcp / 2+1 msg | [#29](https://github.com/Open-MBEE/pacti.lean/pull/29) merged |
| [Add GR(1) contract operations parity](https://nasa-jpl-demo.devinenterprise.com/sessions/ea0180c9739b4849bc0a3552be154aed) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-14 17:17 | suspended (inactivity) | 15m | 44.2 | 10 sh / 1 ed / 1 rd / 1 git / 0 mcp / 3+1 msg |  |
| [Bound normal-form conjunctions in GR(1) simplify](https://nasa-jpl-demo.devinenterprise.com/sessions/75df9525cf01424ca475ae4550dee948) | Open-MBEE/pacti.lean | child of 42c14202 | ultra | 11-14 22:00 | suspended (inactivity) | 21m | 30.7 | 19 sh / 2 ed / 2 rd / 0 git / 6 mcp / 11+6 msg |  |
| [Review pacti.lean PR #20](https://nasa-jpl-demo.devinenterprise.com/sessions/3ed80fb1860a447286307ff974f8707a) | Open-MBEE/pacti.lean | child of 58f12c50 | ultra | 11-14 21:03 | suspended (inactivity) | 14m | 17.1 ‡ | 12 sh / 5 ed / 3 rd / 2 git / 0 mcp / 3+1 msg |  |
| [Add invariant induction lemma to pacti.lean GR1](https://nasa-jpl-demo.devinenterprise.com/sessions/3bb6383c83c344c89633d5acbe83ed8a) | Open-MBEE/pacti.lean | child of 91ee2397 | ultra | 11-14 20:33 | suspended (inactivity) | 0m | 7.5 | 3 sh / 0 ed / 1 rd / 0 git / 0 mcp / 1+0 msg |  |

#### SBVR.lean — 1 session, 55m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 55m | 2191.0 † | 106 sh / 44 ed / 27 rd / 6 git / 0 mcp / 12+4 msg | [#49](https://github.com/Open-MBEE/SBVR.lean/pull/49) merged, [#50](https://github.com/Open-MBEE/SBVR.lean/pull/50) merged, [#51](https://github.com/Open-MBEE/SBVR.lean/pull/51) merged |

#### engineering-foundation-architecture — 3 sessions, 43m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Clarify AI Readiness Purpose](https://nasa-jpl-demo.devinenterprise.com/sessions/5b6b278b67a846b9a835146ce5796fd5) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-15 17:19 | suspended (inactivity) | 28m | 73.9 ‡ | 63 sh / 4 ed / 15 rd / 2 git / 0 mcp / 12+7 msg | [#85](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/85) merged |
| [Fix `ci-pages.sh` `--publish` support](https://nasa-jpl-demo.devinenterprise.com/sessions/859231125f1443bc9d8448871c0df0f0) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-15 17:15 | suspended (inactivity) | 9m | 9.2 | 28 sh / 10 ed / 3 rd / 5 git / 9 mcp / 6+1 msg | [#84](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/84) merged |
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 5m | 75.0 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### git-remote-sync.lean — 1 session, 22m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Support Current Branch Default](https://nasa-jpl-demo.devinenterprise.com/sessions/269fec9073a148178cf67f89a18189ae) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-15 17:10 | suspended (inactivity) | 22m | 25.7 ‡ | 57 sh / 14 ed / 29 rd / 5 git / 3 mcp / 15+9 msg | [#67](https://github.com/Open-MBEE/git-remote-sync.lean/pull/67) merged, [#68](https://github.com/Open-MBEE/git-remote-sync.lean/pull/68) merged |

#### (no repository) — 1 session, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/f3c72ef6f0a64d9290ea1a8612fadd59) |  | automation | ultra | 11-15 00:05 | suspended (inactivity) | 2m | 1.7 | 4 sh / 0 ed / 0 rd / 0 git / 521 mcp / 2+1 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/702df1df574a4e539d45f7818fc0f8ba) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-15 06:01 | suspended (inactivity) | 0m | 1.4 | 1 sh / 0 ed / 0 rd / 0 git / 2 mcp / 1+1 msg |  |
