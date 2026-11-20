# Devin session report — Monday 2026-11-09

Sessions of Nicolas Rouquette created or active between Mon 2026-11-09 00:00 and Tue 2026-11-10 00:00 (America/Los_Angeles): 31 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Monday 2026-11-09

31 sessions across 13 projects, 67h44 of working time, 61 PRs opened.

### OpenSysML — 4 sessions, 17h39 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 6h31 | 4868.4 † | ≥423 sh / 67 ed / 4 rd / 32 git / 19 mcp / 18+4 msg | [qvts #57](https://github.com/Open-MBEE/qvts/pull/57) merged, [#2070](https://github.com/Open-MBEE/OpenSysML/pull/2070) merged, [qvts #58](https://github.com/Open-MBEE/qvts/pull/58) merged, [#2088](https://github.com/Open-MBEE/OpenSysML/pull/2088) merged, [#2091](https://github.com/Open-MBEE/OpenSysML/pull/2091) merged, [#2093](https://github.com/Open-MBEE/OpenSysML/pull/2093) merged |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | suspended (inactivity) | 4h58 | 182.8 † | 270 sh / 35 ed / 77 rd / 20 git / 8 mcp / 18+10 msg | [#2071](https://github.com/Open-MBEE/OpenSysML/pull/2071) merged |
| [Honor position-only sysx:Note edits on source-backed text](https://nasa-jpl-demo.devinenterprise.com/sessions/c18ad5bff7bd466b8460db005afd0a1e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 3h44 | 33.4 ‡ | 114 sh / 18 ed / 26 rd / 20 git / 9 mcp / 2+1 msg | [#2090](https://github.com/Open-MBEE/OpenSysML/pull/2090) merged |
| [Leave sysx:-typed nodes uncarried in sysml -sync](https://nasa-jpl-demo.devinenterprise.com/sessions/35fe61f8565a40429b37c892ce4b1a2e) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-09 20:15 | suspended (inactivity) | 2h26 | 21.9 | 88 sh / 11 ed / 32 rd / 19 git / 9 mcp / 3+1 msg | [#2089](https://github.com/Open-MBEE/OpenSysML/pull/2089) merged |

### fprime-lean-sysmlv2-example — 5 sessions, 17h32 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Downlink M0 Architecture Diagram](https://nasa-jpl-demo.devinenterprise.com/sessions/c4fe0be598084357b14813fd5326e998) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-09 12:13 | suspended (inactivity) | 7h11 | 127.3 ‡ | 260 sh / 62 ed / 56 rd / 15 git / 4 mcp / 28+14 msg | [#111](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/111) merged, [#112](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/112) merged, [#113](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/113) merged, [#115](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/115) merged, [#117](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/117) merged |
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | suspended (inactivity) | 8m | 562.6 † | 12 sh / 4 ed / 0 rd / 0 git / 8 mcp / 12+4 msg |  |
| [M1 refinement theorem: fine verdict from coarse (step 3)](https://nasa-jpl-demo.devinenterprise.com/sessions/07afd2af868d456d856260d372a79b6b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-09 11:08 | suspended (inactivity) | 4h39 | 47.0 | 151 sh / 31 ed / 19 rd / 1 git / 8 mcp / 4+1 msg | [#114](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/114) merged |
| [M1 order factorisation lemmas; fidelity-limit record (step 3′)](https://nasa-jpl-demo.devinenterprise.com/sessions/2429c2384b5c4be298f161cb4b7530ed) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-09 19:56 | suspended (inactivity) | 3h49 | 114.2 ‡ | 162 sh / 33 ed / 25 rd / 3 git / 4 mcp / 5+1 msg | [#116](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/116) merged |
| [M1 facts: simulate once, check over trace literals (step 1)](https://nasa-jpl-demo.devinenterprise.com/sessions/9762b7a9801b472598539ce3b5e2f325) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-08 16:59 | suspended (inactivity) | 1h43 | 69.8 † | 28 sh / 5 ed / 3 rd / 1 git / 7 mcp / 4+3 msg |  |

### qvts — 1 session, 13h04 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Assess Lean/Verso QVTS Readiness](https://nasa-jpl-demo.devinenterprise.com/sessions/ff906ec875c14d87a95d3e41422ca547) | Open-MBEE/qvts | webapp | fusion | 10-30 17:01 | suspended (inactivity) | 13h04 | 313.5 † | 6284 sh / 1032 ed / 2549 rd / 13 git / 0 mcp / 24+1 msg | [#59](https://github.com/Open-MBEE/qvts/pull/59) merged, [#60](https://github.com/Open-MBEE/qvts/pull/60) merged, [#61](https://github.com/Open-MBEE/qvts/pull/61) merged, [#62](https://github.com/Open-MBEE/qvts/pull/62) merged, [#63](https://github.com/Open-MBEE/qvts/pull/63) merged, [#64](https://github.com/Open-MBEE/qvts/pull/64) merged |

### L4YAML — 6 sessions, 12h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add metagraph experiment documentation](https://nasa-jpl-demo.devinenterprise.com/sessions/bfb0071aeaab4aa58b50b413bca12aba) | nasa-jpl/L4YAML | webapp | ultra | 11-09 18:15 | suspended (inactivity) | 53m | 55.6 ‡ | 111 sh / 19 ed / 32 rd / 19 git / 7 mcp / 21+8 msg | [#279](https://github.com/nasa-jpl/L4YAML/pull/279) closed, [#280](https://github.com/nasa-jpl/L4YAML/pull/280) merged, [#284](https://github.com/nasa-jpl/L4YAML/pull/284) merged |
| [Clarify YAML Grammar Ambiguity](https://nasa-jpl-demo.devinenterprise.com/sessions/ac39e286391042c5abec6e4fa1ae29a4) | nasa-jpl/L4YAML | webapp | ultra | 11-09 21:33 | suspended (inactivity) | 2m | 3.5 ‡ | 9 sh / 0 ed / 2 rd / 1 git / 0 mcp / 2+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 5h31 | 2060.8 † | 358 sh / 54 ed / 3 rd / 13 git / 14 mcp / 38+6 msg | [#276](https://github.com/nasa-jpl/L4YAML/pull/276) merged, [#277](https://github.com/nasa-jpl/L4YAML/pull/277) merged, [#278](https://github.com/nasa-jpl/L4YAML/pull/278) merged, [#281](https://github.com/nasa-jpl/L4YAML/pull/281) merged, [#286](https://github.com/nasa-jpl/L4YAML/pull/286) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 4h06 | 331.8 † | 149 sh / 44 ed / 2 rd / 12 git / 4 mcp / 8+4 msg | [#282](https://github.com/nasa-jpl/L4YAML/pull/282) merged, [#285](https://github.com/nasa-jpl/L4YAML/pull/285) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 1h34 | 4151.6 † | 101 sh / 8 ed / 2 rd / 6 git / 5 mcp / 6+3 msg | [#283](https://github.com/nasa-jpl/L4YAML/pull/283) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 5m | 898.8 † | 10 sh / 2 ed / 0 rd / 1 git / 21 mcp / 7+2 msg |  |

### mars.lean — 4 sessions, 2h57 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 5m | 3588.7 † | 12 sh / 0 ed / 0 rd / 0 git / 6 mcp / 14+4 msg |  |
| [Make retimedSimH hold for every tie-break order (route A)](https://nasa-jpl-demo.devinenterprise.com/sessions/56cef766932f4de3b168db27a375294e) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 1h33 | 31.1 ‡ | 90 sh / 15 ed / 39 rd / 2 git / 3 mcp / 4+1 msg | [#331](https://github.com/Open-MBEE/mars.lean/pull/331) merged |
| [Check the Python MARS simulator's own log against the contracts](https://nasa-jpl-demo.devinenterprise.com/sessions/aca360f11d9941809015ca233a35bfef) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 10:52 | suspended (inactivity) | 53m | 39.0 | 80 sh / 22 ed / 32 rd / 6 git / 9 mcp / 3+1 msg | [#330](https://github.com/Open-MBEE/mars.lean/pull/330) merged |
| [Prove PremH for all H.netH runs and settle navH_sa_open](https://nasa-jpl-demo.devinenterprise.com/sessions/bbbc7b98295d44bb815c9292bd5c43a3) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-09 10:52 | suspended (inactivity) | 25m | 18.3 | 73 sh / 16 ed / 22 rd / 2 git / 0 mcp / 4+2 msg | [#329](https://github.com/Open-MBEE/mars.lean/pull/329) merged |

### soil-moisture-workflows — 2 sessions, 1h47 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix soil-moisture CI workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/a3a98b66aaba486384ce1ee9109622e7) | Open-MBEE/git-remote-sync.lean, Open-MBEE/html-to-pdf.lean, Open-MBEE/prov.lean, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-09 08:53 | suspended (inactivity) | 1h46 | 411.0 ‡ | 261 sh / 70 ed / 57 rd / 24 git / 52 mcp / 55+25 msg | [#43](https://github.com/Open-MBEE/soil-moisture-workflows/pull/43) merged, [#44](https://github.com/Open-MBEE/soil-moisture-workflows/pull/44) merged, [soil-moisture-model #46](https://github.com/Open-MBEE/soil-moisture-model/pull/46) merged, [soil-moisture-dps #14](https://github.com/Open-MBEE/soil-moisture-dps/pull/14) merged, [soil-moisture-dps #15](https://github.com/Open-MBEE/soil-moisture-dps/pull/15) merged, [soil-moisture-dps #16](https://github.com/Open-MBEE/soil-moisture-dps/pull/16) merged, [html-to-pdf.lean #1](https://github.com/Open-MBEE/html-to-pdf.lean/pull/1) merged, [soil-moisture-model #47](https://github.com/Open-MBEE/soil-moisture-model/pull/47) merged, [prov.lean #19](https://github.com/Open-MBEE/prov.lean/pull/19) merged, [git-remote-sync.lean #62](https://github.com/Open-MBEE/git-remote-sync.lean/pull/62) merged, [html-to-pdf.lean #2](https://github.com/Open-MBEE/html-to-pdf.lean/pull/2) merged, [git-remote-sync.lean #63](https://github.com/Open-MBEE/git-remote-sync.lean/pull/63) merged, [#45](https://github.com/Open-MBEE/soil-moisture-workflows/pull/45) merged, [soil-moisture-model #48](https://github.com/Open-MBEE/soil-moisture-model/pull/48) merged, [soil-moisture-dps #17](https://github.com/Open-MBEE/soil-moisture-dps/pull/17) merged |
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | suspended (inactivity) | 1m | 425.1 † | 8 sh / 3 ed / 1 rd / 1 git / 0 mcp / 2+1 msg | [soil-moisture-dps #13](https://github.com/Open-MBEE/soil-moisture-dps/pull/13) merged |

### git-remote-sync.lean — 2 sessions, 45m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Recover deleted evidence branch](https://nasa-jpl-demo.devinenterprise.com/sessions/cb242389d6be4d27ae8b09c26f81b416) | Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-09 12:31 | suspended (inactivity) | 23m | 33.9 ‡ | 75 sh / 19 ed / 36 rd / 3 git / 0 mcp / 7+4 msg | [#64](https://github.com/Open-MBEE/git-remote-sync.lean/pull/64) merged |
| [Synchronize Repositories Across Remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/f2f5f981cea9449b9406434c84f4a2fa) | Open-MBEE/git-remote-sync.lean, Open-MBEE/integration | webapp | ultra | 10-19 22:04 | suspended (inactivity) | 22m | 705.1 † | 52 sh / 18 ed / 31 rd / 4 git / 6 mcp / 24+8 msg | [#60](https://github.com/Open-MBEE/git-remote-sync.lean/pull/60) merged, [#61](https://github.com/Open-MBEE/git-remote-sync.lean/pull/61) merged |

### devin-automation — 1 session, 42m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily and Weekly Session Reports](https://nasa-jpl-demo.devinenterprise.com/sessions/438880735ee9439eb71a124cbe26cd23) | Open-MBEE/devin-automation | webapp | ultra | 11-08 12:39 | suspended (inactivity) | 42m | 123.2 † | 47 sh / 15 ed / 14 rd / 11 git / 1096 mcp / 24+12 msg | [#4](https://github.com/Open-MBEE/devin-automation/pull/4) merged, [#5](https://github.com/Open-MBEE/devin-automation/pull/5) merged, [#6](https://github.com/Open-MBEE/devin-automation/pull/6) merged |

### SBVR.lean — 1 session, 20m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 20m | 2191.0 † | 48 sh / 17 ed / 10 rd / 11 git / 3 mcp / 16+5 msg | [prov.lean #18](https://github.com/Open-MBEE/prov.lean/pull/18) merged, [PropertyKindCalculus #110](https://github.com/nasa-jpl/PropertyKindCalculus/pull/110) merged |

### mars — 1 session, 16m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix the Python MARS Endurance example at HEAD](https://nasa-jpl-demo.devinenterprise.com/sessions/54a6071a70944d8ea7c5b31ecd9dbf62) | Open-MBEE/mars | child of 1fbba99f | ultra | 11-09 18:20 | suspended (inactivity) | 16m | 21.0 ‡ | 62 sh / 10 ed / 26 rd / 3 git / 4 mcp / 9+3 msg | [#1](https://github.com/Open-MBEE/mars/pull/1) merged |

### (Devin housekeeping) — 1 session, 12m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/f33bed3778e34258bce772c42fb1f43b) |  | webapp | normal | 11-09 14:32 | suspended | 12m | 0.0 | 60 sh / 18 ed / 4 rd / 0 git / 96 mcp / 5+4 msg |  |

### (no repository) — 2 sessions, 12m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Weekly Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/17a9dcc27f434f16a64096768a488837) |  | automation | ultra | 11-09 00:09 | suspended (inactivity) | 6m | 3.4 | 8 sh / 0 ed / 1 rd / 0 git / 1091 mcp / 3+1 msg |  |
| [Produce Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/ce85f16734894a2d8f6f7b7e754aadae) |  | automation | ultra | 11-09 00:05 | suspended (inactivity) | 5m | 3.5 | 7 sh / 0 ed / 0 rd / 0 git / 476 mcp / 3+1 msg |  |

### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/21d888e3f4914a51bbf855217cd9ef77) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-09 06:01 | suspended (inactivity) | 0m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
