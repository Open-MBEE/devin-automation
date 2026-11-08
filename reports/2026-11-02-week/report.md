# Devin session report — week 2026-11-02 → 2026-11-08

Sessions of Nicolas Rouquette created or active between Mon 2026-11-02 00:00 and Sun 2026-11-08 13:34 (America/Los_Angeles): 73 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by UTC day. Sessions marked ≥ hit the event-page cap, so their counts are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Per-project totals (week 2026-11-02 → 2026-11-08)

| Project | Sessions (created in window) | Working time | ACUs (sessions fully in window) | ACUs ‡ (created in window, still active after) | ACUs † (older sessions, lifetime) | Actions | PRs opened |
|---|---|---|---|---|---|---|---|
| **OpenSysML** | 2 (1) | 107h07 | 0.0 | 36.7 | 2689.9 | 11,207 | 48 |
| **fprime-lean-sysmlv2-example** | 24 (24) | 70h00 | 1239.9 | 405.3 | 0.0 | 7,304 | 35 |
| **L4YAML** | 6 (3) | 59h01 | 175.1 | 538.6 | 4609.4 | 7,093 | 63 |
| **mars.lean** | 4 (3) | 36h31 | 121.1 | 0.0 | 3526.2 | 10,487 | 102 |
| **soil-moisture-model** | 6 (5) | 34h17 | 124.5 | 132.1 | 216.9 | 7,318 | 62 |
| **soil-moisture-workflows** | 5 (5) | 10h35 | 140.3 | 343.7 | 0.0 | 2,811 | 21 |
| **git-remote-sync.lean** | 1 (0) | 2h26 | 0.0 | 0.0 | 649.9 | 767 | 9 |
| **engineering-foundation-architecture** | 4 (4) | 1h53 | 81.7 | 0.0 | 0.0 | 360 | 7 |
| **PropertyKindCalculus** | 8 (8) | 1h19 | 21.5 | 0.0 | 0.0 | 91 | 1 |
| **(no repository)** | 5 (5) | 1h10 | 14.3 | 9.2 | 0.0 | 596 | 0 |
| **soil-moisture-dps** | 1 (1) | 1h01 | 43.1 | 0.0 | 0.0 | 294 | 2 |
| **(Devin environment)** | 2 (2) | 30m | 16.7 | 0.0 | 0.0 | 77 | 0 |
| **pacti.lean** | 1 (1) | 10m | 10.1 | 0.0 | 0.0 | 41 | 1 |
| **certified-learned-surrogates** | 1 (0) | 9m | 0.0 | 0.0 | 20.3 | 97 | 4 |
| **calm** | 1 (1) | 9m | 9.0 | 0.0 | 0.0 | 86 | 1 |
| **(Devin housekeeping)** | 1 (1) | 9m | 0.0 | 0.0 | 0.0 | 153 | 0 |
| **fcheck** | 1 (1) | 6m | 4.4 | 0.0 | 0.0 | 29 | 1 |

## Working time per project per day (hours)

| Project | Mon 02 | Tue 03 | Wed 04 | Thu 05 | Fri 06 | Sat 07 | Sun 08 | Total |
|---|---|---|---|---|---|---|---|---|
| OpenSysML | 18.1 | 11.5 | 15.3 | 10.8 | 18.4 | 16.9 | 16.2 | 107.1 |
| fprime-lean-sysmlv2-example | 3.0 | 22.5 | 16.0 | 5.0 | 15.0 | 3.6 | 4.9 | 70.0 |
| L4YAML | 8.5 | 6.4 | 7.0 | 2.7 | 13.2 | 11.9 | 9.3 | 59.0 |
| mars.lean | 6.8 | 8.2 | 11.7 | 0.1 | 5.2 | 0.3 | 4.2 | 36.5 |
| soil-moisture-model | 3.9 | · | 13.6 | 3.1 | 8.4 | 1.5 | 3.8 | 34.3 |
| soil-moisture-workflows | 0.1 | · | · | · | 5.6 | 3.7 | 1.3 | 10.6 |
| git-remote-sync.lean | 2.4 | · | · | · | · | · | · | 2.4 |
| engineering-foundation-architecture | · | 1.2 | 0.7 | · | · | · | · | 1.9 |
| PropertyKindCalculus | · | · | · | · | 1.3 | · | · | 1.3 |
| (no repository) | · | 0.1 | · | 0.1 | · | · | 1.0 | 1.2 |
| soil-moisture-dps | · | · | · | · | · | · | 1.0 | 1.0 |
| (Devin environment) | · | 0.5 | · | · | · | · | · | 0.5 |
| pacti.lean | · | · | · | · | · | · | 0.2 | 0.2 |
| certified-learned-surrogates | 0.1 | · | 0.1 | · | · | · | · | 0.2 |
| calm | · | · | · | · | 0.2 | · | · | 0.2 |
| (Devin housekeeping) | · | · | 0.2 | · | · | · | · | 0.2 |
| fcheck | · | 0.1 | · | · | · | · | · | 0.1 |

## Sessions by project

### OpenSysML — 2 sessions, 107h07 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 104h32 | 2689.9 † | 9151 sh / 865 ed / 238 rd / 434 git / 68 mcp / 200+54 msg | [qvts #40](https://github.com/Open-MBEE/qvts/pull/40) merged, [qvts #41](https://github.com/Open-MBEE/qvts/pull/41) merged, [#1849](https://github.com/Open-MBEE/OpenSysML/pull/1849) merged, [#1855](https://github.com/Open-MBEE/OpenSysML/pull/1855) merged, [qvts #42](https://github.com/Open-MBEE/qvts/pull/42) merged, [#1862](https://github.com/Open-MBEE/OpenSysML/pull/1862) merged, [#1865](https://github.com/Open-MBEE/OpenSysML/pull/1865) merged, [#1873](https://github.com/Open-MBEE/OpenSysML/pull/1873) merged, [#1874](https://github.com/Open-MBEE/OpenSysML/pull/1874) merged, [#1876](https://github.com/Open-MBEE/OpenSysML/pull/1876) merged, [#1881](https://github.com/Open-MBEE/OpenSysML/pull/1881) merged, [#1882](https://github.com/Open-MBEE/OpenSysML/pull/1882) merged, [qvts #43](https://github.com/Open-MBEE/qvts/pull/43) merged, [#1883](https://github.com/Open-MBEE/OpenSysML/pull/1883) merged, [qvts #44](https://github.com/Open-MBEE/qvts/pull/44) merged, [OpenSysML-Extensions-Library #19](https://github.com/Open-MBEE/OpenSysML-Extensions-Library/pull/19) merged, [#1889](https://github.com/Open-MBEE/OpenSysML/pull/1889) merged, [qvts #45](https://github.com/Open-MBEE/qvts/pull/45) merged, [#1892](https://github.com/Open-MBEE/OpenSysML/pull/1892) merged, [qvts #46](https://github.com/Open-MBEE/qvts/pull/46) merged, [qvts #47](https://github.com/Open-MBEE/qvts/pull/47) merged, [#1930](https://github.com/Open-MBEE/OpenSysML/pull/1930) merged, [qvts #48](https://github.com/Open-MBEE/qvts/pull/48) merged, [#1942](https://github.com/Open-MBEE/OpenSysML/pull/1942) merged, [#1943](https://github.com/Open-MBEE/OpenSysML/pull/1943) merged, [#1946](https://github.com/Open-MBEE/OpenSysML/pull/1946) merged, [qvts #49](https://github.com/Open-MBEE/qvts/pull/49) merged, [#1973](https://github.com/Open-MBEE/OpenSysML/pull/1973) merged, [#1990](https://github.com/Open-MBEE/OpenSysML/pull/1990) merged, [qvts #50](https://github.com/Open-MBEE/qvts/pull/50) merged, [#2016](https://github.com/Open-MBEE/OpenSysML/pull/2016) merged, [qvts #51](https://github.com/Open-MBEE/qvts/pull/51) merged, [#2017](https://github.com/Open-MBEE/OpenSysML/pull/2017) merged, [qvts #52](https://github.com/Open-MBEE/qvts/pull/52) merged, [#2019](https://github.com/Open-MBEE/OpenSysML/pull/2019) merged, [#2031](https://github.com/Open-MBEE/OpenSysML/pull/2031) merged, [qvts #53](https://github.com/Open-MBEE/qvts/pull/53) merged, [#2037](https://github.com/Open-MBEE/OpenSysML/pull/2037) merged, [#2045](https://github.com/Open-MBEE/OpenSysML/pull/2045) merged, [qvts #54](https://github.com/Open-MBEE/qvts/pull/54) merged, [#2054](https://github.com/Open-MBEE/OpenSysML/pull/2054) merged, [qvts #55](https://github.com/Open-MBEE/qvts/pull/55) merged, [#2057](https://github.com/Open-MBEE/OpenSysML/pull/2057) merged, [#2059](https://github.com/Open-MBEE/OpenSysML/pull/2059) merged, [#2060](https://github.com/Open-MBEE/OpenSysML/pull/2060) merged, [#2061](https://github.com/Open-MBEE/OpenSysML/pull/2061) merged, [#2063](https://github.com/Open-MBEE/OpenSysML/pull/2063) open |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | running (working) | 2h34 | 36.7 ‡ | 167 sh / 25 ed / 44 rd / 4 git / 8 mcp / 3+1 msg | [#2064](https://github.com/Open-MBEE/OpenSysML/pull/2064) open |

### fprime-lean-sysmlv2-example — 24 sessions, 70h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 2h50 | 367.5 ‡ | 261 sh / 64 ed / 80 rd / 43 git / 123 mcp / 122+32 msg | [#71](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/71) closed, [#73](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/73) merged, [#85](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/85) merged, [#86](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/86) merged, [#87](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/87) merged, [#88](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/88) merged, [#100](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/100) merged |
| [ECR-001: refused return is a lost packet, K4 sentence, record](https://nasa-jpl-demo.devinenterprise.com/sessions/968089eb086c474c98f74435031494cf) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 12:25 | suspended (inactivity) | 11h12 | 183.3 | 946 sh / 169 ed / 145 rd / 5 git / 4 mcp / 18+6 msg | [#103](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/103) merged, [#104](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/104) merged |
| [Add F´ retransmit, non-waiting SendFile, M1 file capacity (F5)](https://nasa-jpl-demo.devinenterprise.com/sessions/2fff7fe2690f45478145383e1b054d5e) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 13:19 | suspended (inactivity) | 8h22 | 170.7 | 359 sh / 84 ed / 76 rd / 15 git / 0 mcp / 16+6 msg | [#97](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/97) merged, [#98](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/98) merged |
| [Add M1 channel depth, backfill, overflow scenarios (F3)](https://nasa-jpl-demo.devinenterprise.com/sessions/1802fd673bdf4c728ae31c366c5b5c67) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 14:32 | suspended (inactivity) | 6h21 | 93.5 | 233 sh / 45 ed / 48 rd / 5 git / 0 mcp / 14+5 msg | [#90](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/90) merged |
| [Add M1 SBVR, transfer theorems, FACE refinement, views (F4)](https://nasa-jpl-demo.devinenterprise.com/sessions/8f816cb2dcec4d0ea5ad04e938d81571) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 06:48 | suspended (inactivity) | 5h55 | 110.1 | 324 sh / 65 ed / 35 rd / 13 git / 0 mcp / 14+6 msg | [#96](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/96) merged |
| [Realize overflow in full: M1 time refinement r=4](https://nasa-jpl-demo.devinenterprise.com/sessions/72924cd7c7f94fc7b262db29ed4b1e38) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-08 09:42 | running (working) | 3h50 | 37.8 ‡ | 154 sh / 22 ed / 37 rd / 0 git / 4 mcp / 5+3 msg |  |
| [F6: M1 sender C5 per packet, F´ Repeater refusal, overflow realized](https://nasa-jpl-demo.devinenterprise.com/sessions/a8ea6924994943ce84a29543845128cf) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 08:15 | suspended (inactivity) | 3h13 | 54.9 | 152 sh / 29 ed / 56 rd / 4 git / 0 mcp / 5+1 msg | [#101](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/101) merged, [#102](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/102) merged |
| [Move mars/lean to Downlink/M1/mars as Downlink.M1 (L4a)](https://nasa-jpl-demo.devinenterprise.com/sessions/0cd17b5d4c4f4645bbc7cb644ce91d5b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 05:59 | suspended (inactivity) | 3h12 | 29.6 | 138 sh / 27 ed / 57 rd / 3 git / 0 mcp / 8+3 msg | [#80](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/80) merged |
| [Add M0 SBVR + FACE for capacity, queueing, retransmit (F2)](https://nasa-jpl-demo.devinenterprise.com/sessions/7250126e396340ce9ab48178e85b20f0) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 21:19 | suspended (inactivity) | 3h09 | 68.1 | 146 sh / 35 ed / 37 rd / 4 git / 5 mcp / 3+1 msg | [#91](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/91) merged |
| [Model F´ file-queue rule: K3 counts waiting files (Q9)](https://nasa-jpl-demo.devinenterprise.com/sessions/a1a889ee01544f3eb5126cefd11e7e7c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 23:40 | suspended (inactivity) | 2h53 | 63.5 | 239 sh / 57 ed / 56 rd / 13 git / 0 mcp / 10+3 msg | [#99](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/99) merged |
| [Q11: M1 packets = 5, measure time-refinement cost](https://nasa-jpl-demo.devinenterprise.com/sessions/225a0e60d25a402dafedef75ff57f5f6) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-07 22:09 | suspended (inactivity) | 2h45 | 48.4 | 216 sh / 26 ed / 45 rd / 2 git / 4 mcp / 7+3 msg | [#106](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/106) merged |
| [Create Downlink/M0/mars from mars/lean (L3a)](https://nasa-jpl-demo.devinenterprise.com/sessions/931e8ec34bf544218e29613de866b430) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 2h31 | 25.9 | 96 sh / 25 ed / 22 rd / 5 git / 0 mcp / 7+3 msg | [#76](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/76) merged, [#79](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/79) merged |
| [Create Downlink/M1/architecture, Downlink/docs, Downlink/tools (L6)](https://nasa-jpl-demo.devinenterprise.com/sessions/c8241a619f50465fa8e5ef4a3e3d42ce) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 10:58 | suspended (inactivity) | 2h21 | 42.0 | 139 sh / 20 ed / 29 rd / 4 git / 0 mcp / 7+2 msg | [#84](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/84) merged |
| [Mechanise ECR-001 status coverage check in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/c0ac59f0c41049c5aa85b8a8c38a271b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 22:56 | suspended (inactivity) | 1h57 | 30.2 | 138 sh / 25 ed / 18 rd / 3 git / 5 mcp / 4+1 msg | [#105](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/105) merged |
| [Add Downlink/M1/sbvr requirements refining M0 (L4b)](https://nasa-jpl-demo.devinenterprise.com/sessions/aaef36dba3cc427ab7710e7b60080909) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 10:58 | suspended (inactivity) | 1h50 | 58.7 | 193 sh / 28 ed / 46 rd / 8 git / 0 mcp / 7+3 msg | [#83](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/83) merged |
| [Create Downlink/M1/face refining the M0 case (L5)](https://nasa-jpl-demo.devinenterprise.com/sessions/8d5f864c5cdc47f29f88727f2725d0d5) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 11:15 | suspended (inactivity) | 1h27 | 35.8 | 169 sh / 47 ed / 48 rd / 14 git / 0 mcp / 9+3 msg | [#81](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/81) merged, [#82](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/82) merged |
| [Add Downlink/M0/sbvr requirements and correspondence (L3b)](https://nasa-jpl-demo.devinenterprise.com/sessions/c2949a419ed04408b2068beb2e2ddf9d) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 05:59 | suspended (inactivity) | 1h17 | 55.2 | 171 sh / 72 ed / 49 rd / 10 git / 0 mcp / 9+4 msg | [#78](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/78) merged |
| [Move F´ root to common/fprime, Downlink components (L7)](https://nasa-jpl-demo.devinenterprise.com/sessions/145eb99d994048ecab540718b9d9bc7e) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 08:31 | suspended (inactivity) | 53m | 31.0 | 119 sh / 27 ed / 30 rd / 7 git / 5 mcp / 9+3 msg | [#93](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/93) merged |
| [Add Downlink/M0/face requirement-level case (L3c)](https://nasa-jpl-demo.devinenterprise.com/sessions/13ae34276ee74e1aad2fb532b47dbafa) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 05:59 | suspended (inactivity) | 52m | 26.2 | 96 sh / 17 ed / 39 rd / 6 git / 0 mcp / 9+3 msg | [#77](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/77) merged |
| [Add M0 capacity, queueing, throughput, retransmit (F1)](https://nasa-jpl-demo.devinenterprise.com/sessions/28a18b43a9314f7a9458824324ff447c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 14:32 | suspended (inactivity) | 51m | 41.3 | 68 sh / 28 ed / 27 rd / 6 git / 0 mcp / 4+2 msg | [#89](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/89) merged |
| [Split theory and CLI out of lean/ (L2)](https://nasa-jpl-demo.devinenterprise.com/sessions/83174c8f0c5c4c91804d1a760bc1947c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 47m | 25.1 | 90 sh / 17 ed / 22 rd / 7 git / 1 mcp / 6+3 msg | [#75](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/75) merged |
| [Move JobSystem under JobSystem/ (L8)](https://nasa-jpl-demo.devinenterprise.com/sessions/7910b336d6864261864dcd3f2dc77975) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 08:31 | suspended (inactivity) | 39m | 23.2 | 90 sh / 19 ed / 22 rd / 6 git / 0 mcp / 7+3 msg | [#92](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/92) merged, [#94](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/94) merged |
| [Finish layout: README pass and LAYOUT.md record (L9)](https://nasa-jpl-demo.devinenterprise.com/sessions/4acc09a5855645a8b68bce9087dfd88d) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 10:26 | suspended (inactivity) | 31m | 12.5 | 51 sh / 9 ed / 15 rd / 4 git / 4 mcp / 4+1 msg | [#95](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/95) merged |
| [Move Downlink runs to Downlink/M1/tests/runs (L1)](https://nasa-jpl-demo.devinenterprise.com/sessions/75685d1af13a4f34a27d333c6d75e250) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 10m | 10.6 | 41 sh / 8 ed / 15 rd / 4 git / 0 mcp / 6+2 msg | [#74](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/74) merged |

### L4YAML — 6 sessions, 59h01 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML PR 232](https://nasa-jpl-demo.devinenterprise.com/sessions/92bd1b953ac248de8df35275701e4c80) | nasa-jpl/L4YAML | webapp | ultra | 11-04 14:35 | suspended (inactivity) | 21m | 9.8 | 26 sh / 0 ed / 5 rd / 5 git / 0 mcp / 4+2 msg |  |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 19h50 | 3356.8 † | 1315 sh / 217 ed / 41 rd / 93 git / 112 mcp / 170+65 msg | [#207](https://github.com/nasa-jpl/L4YAML/pull/207) merged, [#215](https://github.com/nasa-jpl/L4YAML/pull/215) merged, [#216](https://github.com/nasa-jpl/L4YAML/pull/216) merged, [#218](https://github.com/nasa-jpl/L4YAML/pull/218) merged, [#223](https://github.com/nasa-jpl/L4YAML/pull/223) merged, [#225](https://github.com/nasa-jpl/L4YAML/pull/225) merged, [#227](https://github.com/nasa-jpl/L4YAML/pull/227) merged, [#229](https://github.com/nasa-jpl/L4YAML/pull/229) merged, [#231](https://github.com/nasa-jpl/L4YAML/pull/231) merged, [#233](https://github.com/nasa-jpl/L4YAML/pull/233) merged, [#234](https://github.com/nasa-jpl/L4YAML/pull/234) merged, [#236](https://github.com/nasa-jpl/L4YAML/pull/236) merged, [#237](https://github.com/nasa-jpl/L4YAML/pull/237) merged, [#239](https://github.com/nasa-jpl/L4YAML/pull/239) merged, [#240](https://github.com/nasa-jpl/L4YAML/pull/240) merged, [#244](https://github.com/nasa-jpl/L4YAML/pull/244) merged, [#246](https://github.com/nasa-jpl/L4YAML/pull/246) merged, [#247](https://github.com/nasa-jpl/L4YAML/pull/247) merged, [#249](https://github.com/nasa-jpl/L4YAML/pull/249) merged, [#250](https://github.com/nasa-jpl/L4YAML/pull/250) merged, [#251](https://github.com/nasa-jpl/L4YAML/pull/251) merged, [#264](https://github.com/nasa-jpl/L4YAML/pull/264) merged, [#265](https://github.com/nasa-jpl/L4YAML/pull/265) merged, [#268](https://github.com/nasa-jpl/L4YAML/pull/268) merged, [#270](https://github.com/nasa-jpl/L4YAML/pull/270) merged |
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 15h19 | 578.5 † | 1114 sh / 387 ed / 309 rd / 151 git / 3 mcp / 153+54 msg | [#208](https://github.com/nasa-jpl/L4YAML/pull/208) merged, [#209](https://github.com/nasa-jpl/L4YAML/pull/209) merged, [#210](https://github.com/nasa-jpl/L4YAML/pull/210) merged, [#211](https://github.com/nasa-jpl/L4YAML/pull/211) merged, [#212](https://github.com/nasa-jpl/L4YAML/pull/212) merged, [#213](https://github.com/nasa-jpl/L4YAML/pull/213) merged, [#214](https://github.com/nasa-jpl/L4YAML/pull/214) merged, [#217](https://github.com/nasa-jpl/L4YAML/pull/217) merged, [#219](https://github.com/nasa-jpl/L4YAML/pull/219) merged, [#220](https://github.com/nasa-jpl/L4YAML/pull/220) merged, [#221](https://github.com/nasa-jpl/L4YAML/pull/221) merged, [#222](https://github.com/nasa-jpl/L4YAML/pull/222) merged, [#224](https://github.com/nasa-jpl/L4YAML/pull/224) merged, [#226](https://github.com/nasa-jpl/L4YAML/pull/226) merged, [#228](https://github.com/nasa-jpl/L4YAML/pull/228) merged, [#230](https://github.com/nasa-jpl/L4YAML/pull/230) merged, [#235](https://github.com/nasa-jpl/L4YAML/pull/235) merged, [#238](https://github.com/nasa-jpl/L4YAML/pull/238) merged, [#241](https://github.com/nasa-jpl/L4YAML/pull/241) merged, [#243](https://github.com/nasa-jpl/L4YAML/pull/243) merged |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | running (working) | 14h13 | 538.6 ‡ | 1378 sh / 336 ed / 170 rd / 33 git / 34 mcp / 87+30 msg | [#242](https://github.com/nasa-jpl/L4YAML/pull/242) merged, [#245](https://github.com/nasa-jpl/L4YAML/pull/245) merged, [#253](https://github.com/nasa-jpl/L4YAML/pull/253) merged, [#254](https://github.com/nasa-jpl/L4YAML/pull/254) merged, [#255](https://github.com/nasa-jpl/L4YAML/pull/255) merged, [#257](https://github.com/nasa-jpl/L4YAML/pull/257) merged, [#258](https://github.com/nasa-jpl/L4YAML/pull/258) merged, [#259](https://github.com/nasa-jpl/L4YAML/pull/259) merged, [#260](https://github.com/nasa-jpl/L4YAML/pull/260) merged, [#261](https://github.com/nasa-jpl/L4YAML/pull/261) merged, [#262](https://github.com/nasa-jpl/L4YAML/pull/262) merged, [#267](https://github.com/nasa-jpl/L4YAML/pull/267) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 8h16 | 165.4 | 366 sh / 43 ed / 13 rd / 43 git / 16 mcp / 51+19 msg | [#248](https://github.com/nasa-jpl/L4YAML/pull/248) merged, [#252](https://github.com/nasa-jpl/L4YAML/pull/252) merged, [#256](https://github.com/nasa-jpl/L4YAML/pull/256) merged, [#263](https://github.com/nasa-jpl/L4YAML/pull/263) merged, [#266](https://github.com/nasa-jpl/L4YAML/pull/266) merged, [#269](https://github.com/nasa-jpl/L4YAML/pull/269) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 59m | 674.1 † | 69 sh / 9 ed / 5 rd / 22 git / 214 mcp / 99+24 msg |  |

### mars.lean — 4 sessions, 36h31 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 33h34 | 3526.2 † | 6547 sh / 2366 ed / 232 rd / 340 git / 41 mcp / 397+82 msg | [#232](https://github.com/Open-MBEE/mars.lean/pull/232) merged, [#233](https://github.com/Open-MBEE/mars.lean/pull/233) merged, [#234](https://github.com/Open-MBEE/mars.lean/pull/234) merged, [#235](https://github.com/Open-MBEE/mars.lean/pull/235) merged, [#236](https://github.com/Open-MBEE/mars.lean/pull/236) merged, [#237](https://github.com/Open-MBEE/mars.lean/pull/237) merged, [#238](https://github.com/Open-MBEE/mars.lean/pull/238) merged, [#239](https://github.com/Open-MBEE/mars.lean/pull/239) merged, [#240](https://github.com/Open-MBEE/mars.lean/pull/240) merged, [#241](https://github.com/Open-MBEE/mars.lean/pull/241) merged, [#242](https://github.com/Open-MBEE/mars.lean/pull/242) merged, [#243](https://github.com/Open-MBEE/mars.lean/pull/243) merged, [#244](https://github.com/Open-MBEE/mars.lean/pull/244) merged, [#245](https://github.com/Open-MBEE/mars.lean/pull/245) merged, [#246](https://github.com/Open-MBEE/mars.lean/pull/246) merged, [#247](https://github.com/Open-MBEE/mars.lean/pull/247) merged, [#248](https://github.com/Open-MBEE/mars.lean/pull/248) merged, [#249](https://github.com/Open-MBEE/mars.lean/pull/249) merged, [#250](https://github.com/Open-MBEE/mars.lean/pull/250) merged, [#251](https://github.com/Open-MBEE/mars.lean/pull/251) merged, [#252](https://github.com/Open-MBEE/mars.lean/pull/252) merged, [#253](https://github.com/Open-MBEE/mars.lean/pull/253) merged, [#254](https://github.com/Open-MBEE/mars.lean/pull/254) merged, [#255](https://github.com/Open-MBEE/mars.lean/pull/255) merged, [#256](https://github.com/Open-MBEE/mars.lean/pull/256) merged, [#257](https://github.com/Open-MBEE/mars.lean/pull/257) merged, [#258](https://github.com/Open-MBEE/mars.lean/pull/258) merged, [#259](https://github.com/Open-MBEE/mars.lean/pull/259) merged, [#260](https://github.com/Open-MBEE/mars.lean/pull/260) merged, [#261](https://github.com/Open-MBEE/mars.lean/pull/261) merged, [#262](https://github.com/Open-MBEE/mars.lean/pull/262) merged, [#263](https://github.com/Open-MBEE/mars.lean/pull/263) merged, [#264](https://github.com/Open-MBEE/mars.lean/pull/264) merged, [#265](https://github.com/Open-MBEE/mars.lean/pull/265) merged, [#266](https://github.com/Open-MBEE/mars.lean/pull/266) merged, [#267](https://github.com/Open-MBEE/mars.lean/pull/267) merged, [#268](https://github.com/Open-MBEE/mars.lean/pull/268) merged, [#269](https://github.com/Open-MBEE/mars.lean/pull/269) merged, [#270](https://github.com/Open-MBEE/mars.lean/pull/270) merged, [#271](https://github.com/Open-MBEE/mars.lean/pull/271) merged, [#272](https://github.com/Open-MBEE/mars.lean/pull/272) merged, [#273](https://github.com/Open-MBEE/mars.lean/pull/273) merged, [#274](https://github.com/Open-MBEE/mars.lean/pull/274) merged, [#275](https://github.com/Open-MBEE/mars.lean/pull/275) merged, [#276](https://github.com/Open-MBEE/mars.lean/pull/276) merged, [#277](https://github.com/Open-MBEE/mars.lean/pull/277) merged, [#278](https://github.com/Open-MBEE/mars.lean/pull/278) merged, [#279](https://github.com/Open-MBEE/mars.lean/pull/279) merged, [#280](https://github.com/Open-MBEE/mars.lean/pull/280) merged, [#281](https://github.com/Open-MBEE/mars.lean/pull/281) merged, [#282](https://github.com/Open-MBEE/mars.lean/pull/282) merged, [#283](https://github.com/Open-MBEE/mars.lean/pull/283) merged, [#284](https://github.com/Open-MBEE/mars.lean/pull/284) merged, [#285](https://github.com/Open-MBEE/mars.lean/pull/285) merged, [#286](https://github.com/Open-MBEE/mars.lean/pull/286) merged, [#287](https://github.com/Open-MBEE/mars.lean/pull/287) merged, [#288](https://github.com/Open-MBEE/mars.lean/pull/288) merged, [#289](https://github.com/Open-MBEE/mars.lean/pull/289) merged, [#290](https://github.com/Open-MBEE/mars.lean/pull/290) merged, [#291](https://github.com/Open-MBEE/mars.lean/pull/291) merged, [#292](https://github.com/Open-MBEE/mars.lean/pull/292) merged, [#293](https://github.com/Open-MBEE/mars.lean/pull/293) merged, [#294](https://github.com/Open-MBEE/mars.lean/pull/294) merged, [#295](https://github.com/Open-MBEE/mars.lean/pull/295) merged, [#296](https://github.com/Open-MBEE/mars.lean/pull/296) merged, [#297](https://github.com/Open-MBEE/mars.lean/pull/297) merged, [#298](https://github.com/Open-MBEE/mars.lean/pull/298) merged, [#299](https://github.com/Open-MBEE/mars.lean/pull/299) merged, [#300](https://github.com/Open-MBEE/mars.lean/pull/300) merged, [#301](https://github.com/Open-MBEE/mars.lean/pull/301) merged, [#302](https://github.com/Open-MBEE/mars.lean/pull/302) merged, [#303](https://github.com/Open-MBEE/mars.lean/pull/303) merged, [#304](https://github.com/Open-MBEE/mars.lean/pull/304) merged, [#305](https://github.com/Open-MBEE/mars.lean/pull/305) merged, [#306](https://github.com/Open-MBEE/mars.lean/pull/306) merged, [#307](https://github.com/Open-MBEE/mars.lean/pull/307) merged, [#308](https://github.com/Open-MBEE/mars.lean/pull/308) merged, [#309](https://github.com/Open-MBEE/mars.lean/pull/309) merged, [#310](https://github.com/Open-MBEE/mars.lean/pull/310) merged, [#311](https://github.com/Open-MBEE/mars.lean/pull/311) merged, [#312](https://github.com/Open-MBEE/mars.lean/pull/312) merged, [#313](https://github.com/Open-MBEE/mars.lean/pull/313) merged, [#314](https://github.com/Open-MBEE/mars.lean/pull/314) merged, [#315](https://github.com/Open-MBEE/mars.lean/pull/315) merged, [#316](https://github.com/Open-MBEE/mars.lean/pull/316) merged, [pacti.lean #1](https://github.com/Open-MBEE/pacti.lean/pull/1) merged, [#317](https://github.com/Open-MBEE/mars.lean/pull/317) merged, [pacti.lean #2](https://github.com/Open-MBEE/pacti.lean/pull/2) merged, [pacti.lean #3](https://github.com/Open-MBEE/pacti.lean/pull/3) merged, [#318](https://github.com/Open-MBEE/mars.lean/pull/318) merged, [pacti.lean #4](https://github.com/Open-MBEE/pacti.lean/pull/4) merged, [#319](https://github.com/Open-MBEE/mars.lean/pull/319) merged, [#320](https://github.com/Open-MBEE/mars.lean/pull/320) merged, [PropertyKindCalculus #108](https://github.com/nasa-jpl/PropertyKindCalculus/pull/108) merged, [#321](https://github.com/Open-MBEE/mars.lean/pull/321) merged, [#322](https://github.com/Open-MBEE/mars.lean/pull/322) merged, [#323](https://github.com/Open-MBEE/mars.lean/pull/323) merged, [#324](https://github.com/Open-MBEE/mars.lean/pull/324) merged |
| [Read OpenSysML api-json back into the SysML Doc](https://nasa-jpl-demo.devinenterprise.com/sessions/42e0d0ccad3644b191264d6da75ee7cc) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 1h49 | 83.4 | 210 sh / 54 ed / 38 rd / 5 git / 3 mcp / 13+8 msg | [#326](https://github.com/Open-MBEE/mars.lean/pull/326) merged, [#328](https://github.com/Open-MBEE/mars.lean/pull/328) open |
| [Prove netH pivot agreement and back Refines by RetimedSim](https://nasa-jpl-demo.devinenterprise.com/sessions/179399d47385472b9993bb5615abaac5) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 40m | 13.3 | 72 sh / 7 ed / 20 rd / 3 git / 0 mcp / 4+2 msg | [#327](https://github.com/Open-MBEE/mars.lean/pull/327) merged |
| [Map OpenTelemetry causal-event logs onto MARS traces](https://nasa-jpl-demo.devinenterprise.com/sessions/6580a307e0154b1193ffa4022d7f40ff) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 26m | 24.4 | 71 sh / 28 ed / 21 rd / 3 git / 6 mcp / 6+2 msg | [#325](https://github.com/Open-MBEE/mars.lean/pull/325) merged |

### soil-moisture-model — 6 sessions, 34h17 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 24h45 | 216.9 † | 4257 sh / 578 ed / 1019 rd / 170 git / 18 mcp / 153+90 msg | [soil-moisture-dps #7](https://github.com/Open-MBEE/soil-moisture-dps/pull/7) merged, [soil-moisture-workflows #3](https://github.com/Open-MBEE/soil-moisture-workflows/pull/3) merged, [soil-moisture-workflows #4](https://github.com/Open-MBEE/soil-moisture-workflows/pull/4) merged, [soil-moisture-workflows #6](https://github.com/Open-MBEE/soil-moisture-workflows/pull/6) merged, [#7](https://github.com/Open-MBEE/soil-moisture-model/pull/7) closed, [soil-moisture-workflows #7](https://github.com/Open-MBEE/soil-moisture-workflows/pull/7) closed, [#8](https://github.com/Open-MBEE/soil-moisture-model/pull/8) merged, [#9](https://github.com/Open-MBEE/soil-moisture-model/pull/9) merged, [#10](https://github.com/Open-MBEE/soil-moisture-model/pull/10) merged, [#11](https://github.com/Open-MBEE/soil-moisture-model/pull/11) merged, [#12](https://github.com/Open-MBEE/soil-moisture-model/pull/12) merged, [#13](https://github.com/Open-MBEE/soil-moisture-model/pull/13) merged, [#14](https://github.com/Open-MBEE/soil-moisture-model/pull/14) merged, [#15](https://github.com/Open-MBEE/soil-moisture-model/pull/15) merged, [#16](https://github.com/Open-MBEE/soil-moisture-model/pull/16) merged, [#17](https://github.com/Open-MBEE/soil-moisture-model/pull/17) merged, [#18](https://github.com/Open-MBEE/soil-moisture-model/pull/18) merged, [#19](https://github.com/Open-MBEE/soil-moisture-model/pull/19) merged, [#20](https://github.com/Open-MBEE/soil-moisture-model/pull/20) merged, [#21](https://github.com/Open-MBEE/soil-moisture-model/pull/21) merged, [#22](https://github.com/Open-MBEE/soil-moisture-model/pull/22) merged, [#23](https://github.com/Open-MBEE/soil-moisture-model/pull/23) merged, [soil-moisture-workflows #8](https://github.com/Open-MBEE/soil-moisture-workflows/pull/8) merged, [soil-moisture-workflows #9](https://github.com/Open-MBEE/soil-moisture-workflows/pull/9) merged, [soil-moisture-workflows #10](https://github.com/Open-MBEE/soil-moisture-workflows/pull/10) merged, [soil-moisture-workflows #11](https://github.com/Open-MBEE/soil-moisture-workflows/pull/11) merged, [soil-moisture-workflows #12](https://github.com/Open-MBEE/soil-moisture-workflows/pull/12) merged, [soil-moisture-workflows #13](https://github.com/Open-MBEE/soil-moisture-workflows/pull/13) merged, [soil-moisture-workflows #14](https://github.com/Open-MBEE/soil-moisture-workflows/pull/14) merged, [soil-moisture-workflows #15](https://github.com/Open-MBEE/soil-moisture-workflows/pull/15) merged, [soil-moisture-workflows #16](https://github.com/Open-MBEE/soil-moisture-workflows/pull/16) merged, [soil-moisture-workflows #17](https://github.com/Open-MBEE/soil-moisture-workflows/pull/17) merged, [soil-moisture-workflows #18](https://github.com/Open-MBEE/soil-moisture-workflows/pull/18) merged, [#24](https://github.com/Open-MBEE/soil-moisture-model/pull/24) merged, [#25](https://github.com/Open-MBEE/soil-moisture-model/pull/25) merged, [#26](https://github.com/Open-MBEE/soil-moisture-model/pull/26) merged, [#27](https://github.com/Open-MBEE/soil-moisture-model/pull/27) merged, [soil-moisture-workflows #19](https://github.com/Open-MBEE/soil-moisture-workflows/pull/19) merged, [PropertyKindCalculus #105](https://github.com/nasa-jpl/PropertyKindCalculus/pull/105) merged, [#28](https://github.com/Open-MBEE/soil-moisture-model/pull/28) merged, [#29](https://github.com/Open-MBEE/soil-moisture-model/pull/29) merged, [#30](https://github.com/Open-MBEE/soil-moisture-model/pull/30) merged, [soil-moisture-workflows #20](https://github.com/Open-MBEE/soil-moisture-workflows/pull/20) merged, [#31](https://github.com/Open-MBEE/soil-moisture-model/pull/31) merged, [#35](https://github.com/Open-MBEE/soil-moisture-model/pull/35) merged, [soil-moisture-dps #8](https://github.com/Open-MBEE/soil-moisture-dps/pull/8) merged |
| [Update soil-moisture-model diagrams for workflows changes](https://nasa-jpl-demo.devinenterprise.com/sessions/7a547429b3074d47bc16b7a4d568ef95) | Open-MBEE/soil-moisture-model, nasa-jpl/PropertyKindCalculus | webapp | ultra | 11-07 10:19 | running (working) | 5h10 | 132.1 ‡ | 265 sh / 71 ed / 21 rd / 31 git / 16 mcp / 39+11 msg | [#39](https://github.com/Open-MBEE/soil-moisture-model/pull/39) merged, [#40](https://github.com/Open-MBEE/soil-moisture-model/pull/40) merged, [#41](https://github.com/Open-MBEE/soil-moisture-model/pull/41) merged, [PropertyKindCalculus #107](https://github.com/nasa-jpl/PropertyKindCalculus/pull/107) merged, [#42](https://github.com/Open-MBEE/soil-moisture-model/pull/42) merged, [#43](https://github.com/Open-MBEE/soil-moisture-model/pull/43) merged, [PropertyKindCalculus #109](https://github.com/nasa-jpl/PropertyKindCalculus/pull/109) merged, [#44](https://github.com/Open-MBEE/soil-moisture-model/pull/44) open |
| [Document the Modular Workflow Blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/bd861de0d6924c3bbb6f6108621605a6) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-06 19:58 | suspended (inactivity) | 1h15 | 17.3 | 77 sh / 15 ed / 34 rd / 2 git / 0 mcp / 4+2 msg | [#37](https://github.com/Open-MBEE/soil-moisture-model/pull/37) merged |
| [Fix Open-MBEE soil moisture model warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/b08e0a3ae5364a43bdc2d513b8e1a01a) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-06 14:21 | suspended (inactivity) | 1h09 | 34.7 | 114 sh / 15 ed / 34 rd / 4 git / 0 mcp / 11+3 msg | [#36](https://github.com/Open-MBEE/soil-moisture-model/pull/36) merged, [#38](https://github.com/Open-MBEE/soil-moisture-model/pull/38) merged |
| [Formalize PKC Quantities and Contracts](https://nasa-jpl-demo.devinenterprise.com/sessions/b5d9e169d79f4f749afaec2f0edbc76d) | Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 10:02 | suspended (inactivity) | 1h01 | 53.4 | 117 sh / 31 ed / 56 rd / 19 git / 0 mcp / 18+7 msg | [#32](https://github.com/Open-MBEE/soil-moisture-model/pull/32) merged, [#33](https://github.com/Open-MBEE/soil-moisture-model/pull/33) merged, [#34](https://github.com/Open-MBEE/soil-moisture-model/pull/34) merged, [soil-moisture-workflows #23](https://github.com/Open-MBEE/soil-moisture-workflows/pull/23) merged |
| [Fix soil-moisture-model CI pages error](https://nasa-jpl-demo.devinenterprise.com/sessions/3c5e2f846e614ae3aebcc9ebb3dad9e6) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-02 12:29 | suspended (inactivity) | 54m | 19.1 | 86 sh / 11 ed / 20 rd / 2 git / 0 mcp / 6+1 msg | [#6](https://github.com/Open-MBEE/soil-moisture-model/pull/6) merged |

### soil-moisture-workflows — 5 sessions, 10h35 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | running (working) | 8h10 | 343.7 ‡ | 1401 sh / 357 ed / 354 rd / 30 git / 41 mcp / 29+9 msg | [#27](https://github.com/Open-MBEE/soil-moisture-workflows/pull/27) merged, [#28](https://github.com/Open-MBEE/soil-moisture-workflows/pull/28) merged, [#29](https://github.com/Open-MBEE/soil-moisture-workflows/pull/29) merged, [#30](https://github.com/Open-MBEE/soil-moisture-workflows/pull/30) merged, [#31](https://github.com/Open-MBEE/soil-moisture-workflows/pull/31) merged, [#32](https://github.com/Open-MBEE/soil-moisture-workflows/pull/32) merged, [#33](https://github.com/Open-MBEE/soil-moisture-workflows/pull/33) merged, [#34](https://github.com/Open-MBEE/soil-moisture-workflows/pull/34) merged, [#35](https://github.com/Open-MBEE/soil-moisture-workflows/pull/35) merged, [#36](https://github.com/Open-MBEE/soil-moisture-workflows/pull/36) merged, [#37](https://github.com/Open-MBEE/soil-moisture-workflows/pull/37) merged, [#41](https://github.com/Open-MBEE/soil-moisture-workflows/pull/41) ? |
| [Fix Warnings and Errors in soil-moisture-workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/eaa0ba4c69844113a5fa6a571bb2720b) | Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 11:07 | suspended (inactivity) | 48m | 50.9 | 120 sh / 21 ed / 16 rd / 9 git / 6 mcp / 20+8 msg | [#21](https://github.com/Open-MBEE/soil-moisture-workflows/pull/21) merged, [#22](https://github.com/Open-MBEE/soil-moisture-workflows/pull/22) merged, [#24](https://github.com/Open-MBEE/soil-moisture-workflows/pull/24) merged, [#25](https://github.com/Open-MBEE/soil-moisture-workflows/pull/25) merged, [#26](https://github.com/Open-MBEE/soil-moisture-workflows/pull/26) merged |
| [Modularize leanCurl for a PR](https://nasa-jpl-demo.devinenterprise.com/sessions/d0c10b32b08144028e87fd0607dbbb1a) | Open-MBEE/leanCurl, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 20:06 | suspended (inactivity) | 47m | 65.3 | 125 sh / 33 ed / 23 rd / 26 git / 21 mcp / 33+11 msg | [leanCurl #1](https://github.com/Open-MBEE/leanCurl/pull/1) merged, [#40](https://github.com/Open-MBEE/soil-moisture-workflows/pull/40) merged |
| [Fix soil-moisture-workflows CI](https://nasa-jpl-demo.devinenterprise.com/sessions/724cdd4cc442457ca2b79fd5d647957c) | Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-02 14:49 | suspended (inactivity) | 4m | 5.7 | 16 sh / 3 ed / 8 rd / 1 git / 0 mcp / 2+1 msg | [#5](https://github.com/Open-MBEE/soil-moisture-workflows/pull/5) merged |
| [Update sm-workflows blueprint for the Lean migration](https://nasa-jpl-demo.devinenterprise.com/sessions/8bf54e0e3af44f8994d80df8f1c06719) | Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-07 10:24 | suspended (inactivity) | 44m | 18.4 | 61 sh / 13 ed / 27 rd / 5 git / 0 mcp / 10+3 msg | [#38](https://github.com/Open-MBEE/soil-moisture-workflows/pull/38) merged |

### git-remote-sync.lean — 1 session, 2h26 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Synchronize Repositories Across Remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/f2f5f981cea9449b9406434c84f4a2fa) | Open-MBEE/git-remote-sync.lean, Open-MBEE/integration | webapp | ultra | 10-19 22:04 | suspended (inactivity) | 2h26 | 649.9 † | 366 sh / 128 ed / 101 rd / 71 git / 9 mcp / 88+36 msg | [#51](https://github.com/Open-MBEE/git-remote-sync.lean/pull/51) merged, [#52](https://github.com/Open-MBEE/git-remote-sync.lean/pull/52) merged, [#53](https://github.com/Open-MBEE/git-remote-sync.lean/pull/53) merged, [#54](https://github.com/Open-MBEE/git-remote-sync.lean/pull/54) merged, [#55](https://github.com/Open-MBEE/git-remote-sync.lean/pull/55) merged, [#56](https://github.com/Open-MBEE/git-remote-sync.lean/pull/56) merged, [#57](https://github.com/Open-MBEE/git-remote-sync.lean/pull/57) merged, [#58](https://github.com/Open-MBEE/git-remote-sync.lean/pull/58) merged, [#59](https://github.com/Open-MBEE/git-remote-sync.lean/pull/59) merged |

### engineering-foundation-architecture — 4 sessions, 1h53 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 SBVR Tooling](https://nasa-jpl-demo.devinenterprise.com/sessions/bbe86616453249d8a0677d78203a76d3) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-03 12:06 | suspended (inactivity) | 11m | 9.1 | 33 sh / 5 ed / 11 rd / 2 git / 0 mcp / 5+1 msg | [#67](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/67) open |
| [Map SBVR Commands to Gaps](https://nasa-jpl-demo.devinenterprise.com/sessions/e12802b453a94c36bb631524727acd43) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-03 08:49 | suspended (inactivity) | 3m | 15.1 | 14 sh / 2 ed / 5 rd / 3 git / 0 mcp / 3+1 msg | [#64](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/64) merged |
| [EFA dashboard: per-level FACE cases in the manifest](https://nasa-jpl-demo.devinenterprise.com/sessions/10d212bde0424cf8bd5cfac858d88dd7) | Open-MBEE/engineering-foundation-architecture | child of a8a1adef | ultra | 11-03 10:58 | suspended (inactivity) | 56m | 48.8 | 119 sh / 37 ed / 33 rd / 20 git / 0 mcp / 15+2 msg | [#65](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/65) merged, [#66](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/66) merged, [#68](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/68) merged, [#69](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/69) merged |
| [Fix assurance-dashboard verdictFields doc-comment parsing](https://nasa-jpl-demo.devinenterprise.com/sessions/b88b65241237426e8beef79f60a1ea33) | Open-MBEE/engineering-foundation-architecture | child of a8a1adef | ultra | 11-04 13:19 | suspended (inactivity) | 41m | 8.7 | 28 sh / 5 ed / 6 rd / 5 git / 5 mcp / 4+1 msg | [#70](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/70) merged |

### PropertyKindCalculus — 8 sessions, 1h19 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix PropertyKindCalculus Errors and Warnings](https://nasa-jpl-demo.devinenterprise.com/sessions/0355d4ab7b1b4730a122d4ed3901731e) | nasa-jpl/PropertyKindCalculus | webapp | ultra | 11-06 08:01 | suspended (user_request) [archived] | 1h16 | 12.5 | 43 sh / 6 ed / 9 rd / 4 git / 0 mcp / 3+1 msg | [#106](https://github.com/nasa-jpl/PropertyKindCalculus/pull/106) merged |
| [Remediate PropertyKindCalculus Scan Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/54e653be46324440b1fe73c07fc27198) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-03 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/02b9ba2534ec43adb82a7a12f9fdae67) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-04 06:01 | suspended (inactivity) | 0m | 1.5 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/02ac1c1f6af5404a927639bad3182191) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-02 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/f371196f62954d02803e61912eb2a8c7) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-05 06:01 | suspended (inactivity) | 0m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus scan findings](https://nasa-jpl-demo.devinenterprise.com/sessions/85b1ad601c9c433fa0e50cf98797ca68) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-08 06:01 | suspended (inactivity) | 0m | 1.1 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/667f2029c4d1433193fe6d47ec605751) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-07 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/70040b2df480453f90c4e2e8f87bacc5) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-06 06:01 | suspended (inactivity) | 0m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

### (no repository) — 5 sessions, 1h10 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily and Weekly Session Reports](https://nasa-jpl-demo.devinenterprise.com/sessions/438880735ee9439eb71a124cbe26cd23) |  | webapp | ultra | 11-08 12:39 | running (working) | 55m | 4.3 ‡ | 3 sh / 0 ed / 0 rd / 0 git / 11 mcp / 2+1 msg |  |
| [Fix inconsistent timestamp matching in truncate_images](https://nasa-jpl-demo.devinenterprise.com/sessions/63ade6c5b93a48fe94b3f1ace4ca592a) |  | webapp | ultra | 11-03 17:42 | suspended (inactivity) | 4m | 3.4 | 10 sh / 0 ed / 6 rd / 0 git / 0 mcp / 4+2 msg |  |
| [Find inflection-point session link](https://nasa-jpl-demo.devinenterprise.com/sessions/4510463cea924ec4b35fdbbc8381594c) |  | webapp | ultra | 11-08 12:27 | running (waiting_for_user) | 4m | 4.9 ‡ | 12 sh / 0 ed / 0 rd / 0 git / 513 mcp / 2+1 msg |  |
| [Draft Strategic Lessons-Learned Message](https://nasa-jpl-demo.devinenterprise.com/sessions/dc4f7902f00f4772859b88cffb38546b) |  | webapp | ultra | 11-05 14:30 | suspended (inactivity) | 4m | 8.0 | 10 sh / 0 ed / 3 rd / 0 git / 0 mcp / 11+9 msg |  |
| [Debug tlr_sbs.py initial value](https://nasa-jpl-demo.devinenterprise.com/sessions/106ba97b6b28429ca31c8f94e25f83dc) |  | webapp | ultra | 11-04 09:39 | suspended (inactivity) | 2m | 2.9 | 5 sh / 0 ed / 2 rd / 0 git / 0 mcp / 2+1 msg |  |

### soil-moisture-dps — 1 session, 1h01 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 1h01 | 43.1 | 182 sh / 47 ed / 58 rd / 4 git / 0 mcp / 3+1 msg | [#9](https://github.com/Open-MBEE/soil-moisture-dps/pull/9) merged, [soil-moisture-workflows #39](https://github.com/Open-MBEE/soil-moisture-workflows/pull/39) open |

### (Devin environment) — 2 sessions, 30m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Diagnose Blueprint Snapshot Failures](https://nasa-jpl-demo.devinenterprise.com/sessions/3dda3bde690d4ca6923c03331fb82e28) |  | webapp | ultra | 11-03 12:13 | suspended (inactivity) | 21m | 10.3 | 34 sh / 2 ed / 5 rd / 0 git / 0 mcp / 3+1 msg |  |
| [Fix Open-MBEE blueprint failures](https://nasa-jpl-demo.devinenterprise.com/sessions/c9171c3398ab459b85605a6cc3020bb7) |  | webapp | ultra | 11-03 12:50 | suspended (inactivity) | 9m | 6.4 | 22 sh / 1 ed / 8 rd / 0 git / 0 mcp / 2+1 msg |  |

### pacti.lean — 1 session, 10m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Add exact LP oracle for Farkas certificates in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/e9ff3fd767d04034858f645f63773867) | Open-MBEE/pacti.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 10m | 10.1 | 25 sh / 9 ed / 3 rd / 1 git / 0 mcp / 3+1 msg | [#5](https://github.com/Open-MBEE/pacti.lean/pull/5) merged |

### certified-learned-surrogates — 1 session, 9m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Gauge Amina’s Proposal Interest](https://nasa-jpl-demo.devinenterprise.com/sessions/78a813cdaac24cb88eef3215ac6c655a) | Open-MBEE/certified-learned-surrogates | webapp | fusion | 10-30 15:13 | suspended (inactivity) [archived] | 9m | 20.3 † | 51 sh / 9 ed / 16 rd / 5 git / 3 mcp / 13+6 msg | [#2](https://github.com/Open-MBEE/certified-learned-surrogates/pull/2) merged, [#3](https://github.com/Open-MBEE/certified-learned-surrogates/pull/3) merged, [#4](https://github.com/Open-MBEE/certified-learned-surrogates/pull/4) closed, [#5](https://github.com/Open-MBEE/certified-learned-surrogates/pull/5) closed |

### calm — 1 session, 9m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Read valid modes from config.yaml](https://nasa-jpl-demo.devinenterprise.com/sessions/085325f0a0a249ba8c7a59b8514d1fae) | Open-MBEE/calm | webapp | ultra | 11-06 15:59 | suspended (inactivity) | 9m | 9.0 | 32 sh / 11 ed / 35 rd / 2 git / 0 mcp / 6+4 msg | [#2](https://github.com/Open-MBEE/calm/pull/2) open |

### (Devin housekeeping) — 1 session, 9m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/08fcc9e0d2fb48c8966630c93df2f060) |  | webapp | normal | 11-04 07:32 | suspended | 9m | 0.0 | 64 sh / 15 ed / 8 rd / 0 git / 62 mcp / 4+2 msg |  |

### fcheck — 1 session, 6m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Document F' Lean4 Verification](https://nasa-jpl-demo.devinenterprise.com/sessions/969fa9d7c75745bd898d55a089d2ebda) | Open-MBEE/fcheck | webapp | ultra | 11-03 13:42 | suspended (inactivity) | 6m | 4.4 | 22 sh / 2 ed / 1 rd / 1 git / 0 mcp / 3+1 msg | [#1](https://github.com/Open-MBEE/fcheck/pull/1) closed |

## Day by day

### Monday 2026-11-02

15 sessions across 9 projects, 42h48 of working time, 73 PRs opened.

#### OpenSysML — 1 session, 18h03 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 18h03 | 2689.9 † | 997 sh / 159 ed / 117 rd / 81 git / 0 mcp / 36+9 msg | [qvts #40](https://github.com/Open-MBEE/qvts/pull/40) merged, [qvts #41](https://github.com/Open-MBEE/qvts/pull/41) merged, [#1849](https://github.com/Open-MBEE/OpenSysML/pull/1849) merged, [#1855](https://github.com/Open-MBEE/OpenSysML/pull/1855) merged, [qvts #42](https://github.com/Open-MBEE/qvts/pull/42) merged, [#1862](https://github.com/Open-MBEE/OpenSysML/pull/1862) merged, [#1865](https://github.com/Open-MBEE/OpenSysML/pull/1865) merged, [#1873](https://github.com/Open-MBEE/OpenSysML/pull/1873) merged, [#1874](https://github.com/Open-MBEE/OpenSysML/pull/1874) merged, [#1876](https://github.com/Open-MBEE/OpenSysML/pull/1876) merged, [#1881](https://github.com/Open-MBEE/OpenSysML/pull/1881) merged, [#1882](https://github.com/Open-MBEE/OpenSysML/pull/1882) merged, [qvts #43](https://github.com/Open-MBEE/qvts/pull/43) merged, [#1883](https://github.com/Open-MBEE/OpenSysML/pull/1883) merged |

#### L4YAML — 3 sessions, 8h28 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 6h46 | 578.5 † | 439 sh / 182 ed / 101 rd / 66 git / 0 mcp / 63+22 msg | [#208](https://github.com/nasa-jpl/L4YAML/pull/208) merged, [#209](https://github.com/nasa-jpl/L4YAML/pull/209) merged, [#210](https://github.com/nasa-jpl/L4YAML/pull/210) merged, [#211](https://github.com/nasa-jpl/L4YAML/pull/211) merged, [#212](https://github.com/nasa-jpl/L4YAML/pull/212) merged, [#213](https://github.com/nasa-jpl/L4YAML/pull/213) merged, [#214](https://github.com/nasa-jpl/L4YAML/pull/214) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 1h42 | 3356.8 † | 166 sh / 37 ed / 3 rd / 7 git / 19 mcp / 16+4 msg | [#207](https://github.com/nasa-jpl/L4YAML/pull/207) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 0m | 674.1 † | 1 sh / 0 ed / 0 rd / 6 git / 10 mcp / 6+1 msg |  |

#### mars.lean — 1 session, 6h47 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 6h47 | 3526.2 † | 1822 sh / 690 ed / 59 rd / 136 git / 2 mcp / 129+23 msg | [#232](https://github.com/Open-MBEE/mars.lean/pull/232) merged, [#233](https://github.com/Open-MBEE/mars.lean/pull/233) merged, [#234](https://github.com/Open-MBEE/mars.lean/pull/234) merged, [#235](https://github.com/Open-MBEE/mars.lean/pull/235) merged, [#236](https://github.com/Open-MBEE/mars.lean/pull/236) merged, [#237](https://github.com/Open-MBEE/mars.lean/pull/237) merged, [#238](https://github.com/Open-MBEE/mars.lean/pull/238) merged, [#239](https://github.com/Open-MBEE/mars.lean/pull/239) merged, [#240](https://github.com/Open-MBEE/mars.lean/pull/240) merged, [#241](https://github.com/Open-MBEE/mars.lean/pull/241) merged, [#242](https://github.com/Open-MBEE/mars.lean/pull/242) merged, [#243](https://github.com/Open-MBEE/mars.lean/pull/243) merged, [#244](https://github.com/Open-MBEE/mars.lean/pull/244) merged, [#245](https://github.com/Open-MBEE/mars.lean/pull/245) merged, [#246](https://github.com/Open-MBEE/mars.lean/pull/246) merged, [#247](https://github.com/Open-MBEE/mars.lean/pull/247) merged, [#248](https://github.com/Open-MBEE/mars.lean/pull/248) merged, [#249](https://github.com/Open-MBEE/mars.lean/pull/249) merged, [#250](https://github.com/Open-MBEE/mars.lean/pull/250) merged, [#251](https://github.com/Open-MBEE/mars.lean/pull/251) merged, [#252](https://github.com/Open-MBEE/mars.lean/pull/252) merged, [#253](https://github.com/Open-MBEE/mars.lean/pull/253) merged, [#254](https://github.com/Open-MBEE/mars.lean/pull/254) merged, [#255](https://github.com/Open-MBEE/mars.lean/pull/255) merged, [#256](https://github.com/Open-MBEE/mars.lean/pull/256) merged, [#257](https://github.com/Open-MBEE/mars.lean/pull/257) merged, [#258](https://github.com/Open-MBEE/mars.lean/pull/258) merged, [#259](https://github.com/Open-MBEE/mars.lean/pull/259) merged, [#260](https://github.com/Open-MBEE/mars.lean/pull/260) merged |

#### soil-moisture-model — 2 sessions, 3h52 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 2h57 | 216.9 † | 1290 sh / 249 ed / 361 rd / 46 git / 8 mcp / 33+21 msg | [soil-moisture-dps #7](https://github.com/Open-MBEE/soil-moisture-dps/pull/7) merged, [soil-moisture-workflows #3](https://github.com/Open-MBEE/soil-moisture-workflows/pull/3) merged, [soil-moisture-workflows #4](https://github.com/Open-MBEE/soil-moisture-workflows/pull/4) merged, [soil-moisture-workflows #6](https://github.com/Open-MBEE/soil-moisture-workflows/pull/6) merged |
| [Fix soil-moisture-model CI pages error](https://nasa-jpl-demo.devinenterprise.com/sessions/3c5e2f846e614ae3aebcc9ebb3dad9e6) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-02 12:29 | suspended (inactivity) | 54m | 19.1 | 86 sh / 11 ed / 20 rd / 2 git / 0 mcp / 6+1 msg | [#6](https://github.com/Open-MBEE/soil-moisture-model/pull/6) merged |

#### fprime-lean-sysmlv2-example — 4 sessions, 2h59 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 45m | 367.5 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [#71](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/71) closed, [#73](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/73) merged |
| [Create Downlink/M0/mars from mars/lean (L3a)](https://nasa-jpl-demo.devinenterprise.com/sessions/931e8ec34bf544218e29613de866b430) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 1h19 | 25.9 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [#76](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/76) merged |
| [Split theory and CLI out of lean/ (L2)](https://nasa-jpl-demo.devinenterprise.com/sessions/83174c8f0c5c4c91804d1a760bc1947c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 44m | 25.1 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [#75](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/75) merged |
| [Move Downlink runs to Downlink/M1/tests/runs (L1)](https://nasa-jpl-demo.devinenterprise.com/sessions/75685d1af13a4f34a27d333c6d75e250) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 10m | 10.6 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [#74](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/74) merged |

#### git-remote-sync.lean — 1 session, 2h26 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Synchronize Repositories Across Remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/f2f5f981cea9449b9406434c84f4a2fa) | Open-MBEE/git-remote-sync.lean, Open-MBEE/integration | webapp | ultra | 10-19 22:04 | suspended (inactivity) | 2h26 | 649.9 † | 283 sh / 103 ed / 68 rd / 60 git / 9 mcp / 73+31 msg | [#51](https://github.com/Open-MBEE/git-remote-sync.lean/pull/51) merged, [#52](https://github.com/Open-MBEE/git-remote-sync.lean/pull/52) merged, [#53](https://github.com/Open-MBEE/git-remote-sync.lean/pull/53) merged, [#54](https://github.com/Open-MBEE/git-remote-sync.lean/pull/54) merged, [#55](https://github.com/Open-MBEE/git-remote-sync.lean/pull/55) merged, [#56](https://github.com/Open-MBEE/git-remote-sync.lean/pull/56) merged, [#57](https://github.com/Open-MBEE/git-remote-sync.lean/pull/57) merged, [#58](https://github.com/Open-MBEE/git-remote-sync.lean/pull/58) merged, [#59](https://github.com/Open-MBEE/git-remote-sync.lean/pull/59) merged |

#### certified-learned-surrogates — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Gauge Amina’s Proposal Interest](https://nasa-jpl-demo.devinenterprise.com/sessions/78a813cdaac24cb88eef3215ac6c655a) | Open-MBEE/certified-learned-surrogates | webapp | fusion | 10-30 15:13 | suspended (inactivity) [archived] | 5m | 20.3 † | 36 sh / 5 ed / 12 rd / 2 git / 3 mcp / 6+3 msg | [#2](https://github.com/Open-MBEE/certified-learned-surrogates/pull/2) merged, [#3](https://github.com/Open-MBEE/certified-learned-surrogates/pull/3) merged |

#### soil-moisture-workflows — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix soil-moisture-workflows CI](https://nasa-jpl-demo.devinenterprise.com/sessions/724cdd4cc442457ca2b79fd5d647957c) | Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-02 14:49 | suspended (inactivity) | 4m | 5.7 | 15 sh / 3 ed / 8 rd / 1 git / 0 mcp / 2+1 msg | [#5](https://github.com/Open-MBEE/soil-moisture-workflows/pull/5) merged |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/02ac1c1f6af5404a927639bad3182191) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-02 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

### Tuesday 2026-11-03

29 sessions across 12 projects, 50h37 of working time, 70 PRs opened.

#### fprime-lean-sysmlv2-example — 13 sessions, 22h32 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 1h14 | 367.5 ‡ | 142 sh / 38 ed / 66 rd / 29 git / 37 mcp / 53+16 msg | [#85](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/85) merged, [#86](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/86) merged, [#87](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/87) merged, [#88](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/88) merged |
| [Add M1 channel depth, backfill, overflow scenarios (F3)](https://nasa-jpl-demo.devinenterprise.com/sessions/1802fd673bdf4c728ae31c366c5b5c67) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 14:32 | suspended (inactivity) | 5h27 | 93.5 | 89 sh / 16 ed / 34 rd / 0 git / 0 mcp / 1+1 msg | [#90](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/90) merged |
| [Move mars/lean to Downlink/M1/mars as Downlink.M1 (L4a)](https://nasa-jpl-demo.devinenterprise.com/sessions/0cd17b5d4c4f4645bbc7cb644ce91d5b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 05:59 | suspended (inactivity) | 3h12 | 29.6 | 138 sh / 27 ed / 57 rd / 3 git / 0 mcp / 8+3 msg | [#80](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/80) merged |
| [Add M0 SBVR + FACE for capacity, queueing, retransmit (F2)](https://nasa-jpl-demo.devinenterprise.com/sessions/7250126e396340ce9ab48178e85b20f0) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 21:19 | suspended (inactivity) | 2h41 | 68.1 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [#91](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/91) merged |
| [Create Downlink/M1/architecture, Downlink/docs, Downlink/tools (L6)](https://nasa-jpl-demo.devinenterprise.com/sessions/c8241a619f50465fa8e5ef4a3e3d42ce) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 10:58 | suspended (inactivity) | 2h21 | 42.0 | 139 sh / 20 ed / 29 rd / 4 git / 0 mcp / 7+2 msg | [#84](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/84) merged |
| [Add Downlink/M1/sbvr requirements refining M0 (L4b)](https://nasa-jpl-demo.devinenterprise.com/sessions/aaef36dba3cc427ab7710e7b60080909) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 10:58 | suspended (inactivity) | 1h50 | 58.7 | 193 sh / 28 ed / 46 rd / 8 git / 0 mcp / 7+3 msg | [#83](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/83) merged |
| [Create Downlink/M1/face refining the M0 case (L5)](https://nasa-jpl-demo.devinenterprise.com/sessions/8d5f864c5cdc47f29f88727f2725d0d5) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 11:15 | suspended (inactivity) | 1h27 | 35.8 | 169 sh / 47 ed / 48 rd / 14 git / 0 mcp / 9+3 msg | [#81](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/81) merged, [#82](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/82) merged |
| [Add Downlink/M0/sbvr requirements and correspondence (L3b)](https://nasa-jpl-demo.devinenterprise.com/sessions/c2949a419ed04408b2068beb2e2ddf9d) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 05:59 | suspended (inactivity) | 1h17 | 55.2 | 171 sh / 72 ed / 49 rd / 10 git / 0 mcp / 9+4 msg | [#78](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/78) merged |
| [Create Downlink/M0/mars from mars/lean (L3a)](https://nasa-jpl-demo.devinenterprise.com/sessions/931e8ec34bf544218e29613de866b430) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 1h12 | 25.9 | 96 sh / 25 ed / 22 rd / 5 git / 0 mcp / 7+3 msg | [#79](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/79) merged |
| [Add Downlink/M0/face requirement-level case (L3c)](https://nasa-jpl-demo.devinenterprise.com/sessions/13ae34276ee74e1aad2fb532b47dbafa) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 05:59 | suspended (inactivity) | 52m | 26.2 | 96 sh / 17 ed / 39 rd / 6 git / 0 mcp / 9+3 msg | [#77](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/77) merged |
| [Add M0 capacity, queueing, throughput, retransmit (F1)](https://nasa-jpl-demo.devinenterprise.com/sessions/28a18b43a9314f7a9458824324ff447c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 14:32 | suspended (inactivity) | 51m | 41.3 | 68 sh / 28 ed / 27 rd / 6 git / 0 mcp / 4+2 msg | [#89](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/89) merged |
| [Split theory and CLI out of lean/ (L2)](https://nasa-jpl-demo.devinenterprise.com/sessions/83174c8f0c5c4c91804d1a760bc1947c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 3m | 25.1 | 90 sh / 17 ed / 22 rd / 7 git / 1 mcp / 6+3 msg |  |
| [Move Downlink runs to Downlink/M1/tests/runs (L1)](https://nasa-jpl-demo.devinenterprise.com/sessions/75685d1af13a4f34a27d333c6d75e250) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-02 21:08 | suspended (inactivity) | 0m | 10.6 | 41 sh / 8 ed / 15 rd / 4 git / 0 mcp / 6+2 msg |  |

#### OpenSysML — 1 session, 11h31 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 11h31 | 2689.9 † | 2028 sh / 177 ed / 55 rd / 109 git / 4 mcp / 50+14 msg | [qvts #44](https://github.com/Open-MBEE/qvts/pull/44) merged, [OpenSysML-Extensions-Library #19](https://github.com/Open-MBEE/OpenSysML-Extensions-Library/pull/19) merged, [#1889](https://github.com/Open-MBEE/OpenSysML/pull/1889) merged, [qvts #45](https://github.com/Open-MBEE/qvts/pull/45) merged, [#1892](https://github.com/Open-MBEE/OpenSysML/pull/1892) merged, [qvts #46](https://github.com/Open-MBEE/qvts/pull/46) merged |

#### mars.lean — 1 session, 8h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 8h13 | 3526.2 † | 1589 sh / 632 ed / 13 rd / 82 git / 0 mcp / 78+9 msg | [#261](https://github.com/Open-MBEE/mars.lean/pull/261) merged, [#262](https://github.com/Open-MBEE/mars.lean/pull/262) merged, [#263](https://github.com/Open-MBEE/mars.lean/pull/263) merged, [#264](https://github.com/Open-MBEE/mars.lean/pull/264) merged, [#265](https://github.com/Open-MBEE/mars.lean/pull/265) merged, [#266](https://github.com/Open-MBEE/mars.lean/pull/266) merged, [#267](https://github.com/Open-MBEE/mars.lean/pull/267) merged, [#268](https://github.com/Open-MBEE/mars.lean/pull/268) merged, [#269](https://github.com/Open-MBEE/mars.lean/pull/269) merged, [#270](https://github.com/Open-MBEE/mars.lean/pull/270) merged, [#271](https://github.com/Open-MBEE/mars.lean/pull/271) merged, [#272](https://github.com/Open-MBEE/mars.lean/pull/272) merged, [#273](https://github.com/Open-MBEE/mars.lean/pull/273) merged, [#274](https://github.com/Open-MBEE/mars.lean/pull/274) merged, [#275](https://github.com/Open-MBEE/mars.lean/pull/275) merged, [#276](https://github.com/Open-MBEE/mars.lean/pull/276) merged, [#277](https://github.com/Open-MBEE/mars.lean/pull/277) merged, [#278](https://github.com/Open-MBEE/mars.lean/pull/278) merged, [#279](https://github.com/Open-MBEE/mars.lean/pull/279) merged, [#280](https://github.com/Open-MBEE/mars.lean/pull/280) merged, [#281](https://github.com/Open-MBEE/mars.lean/pull/281) merged, [#282](https://github.com/Open-MBEE/mars.lean/pull/282) merged, [#283](https://github.com/Open-MBEE/mars.lean/pull/283) merged, [#284](https://github.com/Open-MBEE/mars.lean/pull/284) merged, [#285](https://github.com/Open-MBEE/mars.lean/pull/285) merged, [#286](https://github.com/Open-MBEE/mars.lean/pull/286) merged, [#287](https://github.com/Open-MBEE/mars.lean/pull/287) merged, [#288](https://github.com/Open-MBEE/mars.lean/pull/288) merged, [#289](https://github.com/Open-MBEE/mars.lean/pull/289) merged |

#### L4YAML — 3 sessions, 6h25 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 3h29 | 578.5 † | 287 sh / 87 ed / 78 rd / 49 git / 1 mcp / 44+16 msg | [#217](https://github.com/nasa-jpl/L4YAML/pull/217) merged, [#219](https://github.com/nasa-jpl/L4YAML/pull/219) merged, [#220](https://github.com/nasa-jpl/L4YAML/pull/220) merged, [#221](https://github.com/nasa-jpl/L4YAML/pull/221) merged, [#222](https://github.com/nasa-jpl/L4YAML/pull/222) merged, [#224](https://github.com/nasa-jpl/L4YAML/pull/224) merged, [#226](https://github.com/nasa-jpl/L4YAML/pull/226) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 2h44 | 3356.8 † | 95 sh / 10 ed / 5 rd / 13 git / 19 mcp / 16+6 msg | [#215](https://github.com/nasa-jpl/L4YAML/pull/215) merged, [#216](https://github.com/nasa-jpl/L4YAML/pull/216) merged, [#218](https://github.com/nasa-jpl/L4YAML/pull/218) merged, [#223](https://github.com/nasa-jpl/L4YAML/pull/223) merged, [#225](https://github.com/nasa-jpl/L4YAML/pull/225) merged, [#227](https://github.com/nasa-jpl/L4YAML/pull/227) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 11m | 674.1 † | 4 sh / 0 ed / 0 rd / 6 git / 35 mcp / 15+4 msg |  |

#### engineering-foundation-architecture — 3 sessions, 1h11 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 SBVR Tooling](https://nasa-jpl-demo.devinenterprise.com/sessions/bbe86616453249d8a0677d78203a76d3) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-03 12:06 | suspended (inactivity) | 11m | 9.1 | 33 sh / 5 ed / 11 rd / 2 git / 0 mcp / 5+1 msg | [#67](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/67) open |
| [Map SBVR Commands to Gaps](https://nasa-jpl-demo.devinenterprise.com/sessions/e12802b453a94c36bb631524727acd43) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-03 08:49 | suspended (inactivity) | 3m | 15.1 | 14 sh / 2 ed / 5 rd / 3 git / 0 mcp / 3+1 msg | [#64](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/64) merged |
| [EFA dashboard: per-level FACE cases in the manifest](https://nasa-jpl-demo.devinenterprise.com/sessions/10d212bde0424cf8bd5cfac858d88dd7) | Open-MBEE/engineering-foundation-architecture | child of a8a1adef | ultra | 11-03 10:58 | suspended (inactivity) | 56m | 48.8 | 119 sh / 37 ed / 33 rd / 20 git / 0 mcp / 15+2 msg | [#65](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/65) merged, [#66](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/66) merged, [#68](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/68) merged, [#69](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/69) merged |

#### (Devin environment) — 2 sessions, 30m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Diagnose Blueprint Snapshot Failures](https://nasa-jpl-demo.devinenterprise.com/sessions/3dda3bde690d4ca6923c03331fb82e28) |  | webapp | ultra | 11-03 12:13 | suspended (inactivity) | 21m | 10.3 | 34 sh / 2 ed / 5 rd / 0 git / 0 mcp / 3+1 msg |  |
| [Fix Open-MBEE blueprint failures](https://nasa-jpl-demo.devinenterprise.com/sessions/c9171c3398ab459b85605a6cc3020bb7) |  | webapp | ultra | 11-03 12:50 | suspended (inactivity) | 9m | 6.4 | 22 sh / 1 ed / 8 rd / 0 git / 0 mcp / 2+1 msg |  |

#### fcheck — 1 session, 6m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document F' Lean4 Verification](https://nasa-jpl-demo.devinenterprise.com/sessions/969fa9d7c75745bd898d55a089d2ebda) | Open-MBEE/fcheck | webapp | ultra | 11-03 13:42 | suspended (inactivity) | 6m | 4.4 | 22 sh / 2 ed / 1 rd / 1 git / 0 mcp / 3+1 msg | [#1](https://github.com/Open-MBEE/fcheck/pull/1) closed |

#### (no repository) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix inconsistent timestamp matching in truncate_images](https://nasa-jpl-demo.devinenterprise.com/sessions/63ade6c5b93a48fe94b3f1ace4ca592a) |  | webapp | ultra | 11-03 17:42 | suspended (inactivity) | 4m | 3.4 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Scan Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/54e653be46324440b1fe73c07fc27198) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-03 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

#### soil-moisture-workflows — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix soil-moisture-workflows CI](https://nasa-jpl-demo.devinenterprise.com/sessions/724cdd4cc442457ca2b79fd5d647957c) | Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-02 14:49 | suspended (inactivity) | 0m | 5.7 | 1 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### git-remote-sync.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Synchronize Repositories Across Remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/f2f5f981cea9449b9406434c84f4a2fa) | Open-MBEE/git-remote-sync.lean, Open-MBEE/integration | webapp | ultra | 10-19 22:04 | suspended (inactivity) | 0m | 649.9 † | 83 sh / 25 ed / 33 rd / 11 git / 0 mcp / 15+5 msg |  |

#### soil-moisture-model — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 0m | 216.9 † | 68 sh / 3 ed / 12 rd / 1 git / 0 mcp / 3+0 msg |  |

### Wednesday 2026-11-04

22 sessions across 10 projects, 64h30 of working time, 85 PRs opened.

#### fprime-lean-sysmlv2-example — 9 sessions, 15h57 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 21m | 367.5 ‡ | 43 sh / 12 ed / 7 rd / 7 git / 48 mcp / 28+4 msg |  |
| [Add M1 SBVR, transfer theorems, FACE refinement, views (F4)](https://nasa-jpl-demo.devinenterprise.com/sessions/8f816cb2dcec4d0ea5ad04e938d81571) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 06:48 | suspended (inactivity) | 5h55 | 110.1 | 324 sh / 65 ed / 35 rd / 13 git / 0 mcp / 14+6 msg | [#96](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/96) merged |
| [Add F´ retransmit, non-waiting SendFile, M1 file capacity (F5)](https://nasa-jpl-demo.devinenterprise.com/sessions/2fff7fe2690f45478145383e1b054d5e) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 13:19 | suspended (inactivity) | 5h54 | 170.7 | 156 sh / 39 ed / 65 rd / 0 git / 0 mcp / 2+1 msg | [#97](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/97) merged, [#98](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/98) merged |
| [Add M1 channel depth, backfill, overflow scenarios (F3)](https://nasa-jpl-demo.devinenterprise.com/sessions/1802fd673bdf4c728ae31c366c5b5c67) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 14:32 | suspended (inactivity) | 53m | 93.5 | 144 sh / 29 ed / 14 rd / 5 git / 0 mcp / 13+4 msg |  |
| [Move F´ root to common/fprime, Downlink components (L7)](https://nasa-jpl-demo.devinenterprise.com/sessions/145eb99d994048ecab540718b9d9bc7e) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 08:31 | suspended (inactivity) | 53m | 31.0 | 119 sh / 27 ed / 30 rd / 7 git / 5 mcp / 9+3 msg | [#93](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/93) merged |
| [Move JobSystem under JobSystem/ (L8)](https://nasa-jpl-demo.devinenterprise.com/sessions/7910b336d6864261864dcd3f2dc77975) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 08:31 | suspended (inactivity) | 39m | 23.2 | 90 sh / 19 ed / 22 rd / 6 git / 0 mcp / 7+3 msg | [#92](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/92) merged, [#94](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/94) merged |
| [Finish layout: README pass and LAYOUT.md record (L9)](https://nasa-jpl-demo.devinenterprise.com/sessions/4acc09a5855645a8b68bce9087dfd88d) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 10:26 | suspended (inactivity) | 31m | 12.5 | 51 sh / 9 ed / 15 rd / 4 git / 4 mcp / 4+1 msg | [#95](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/95) merged |
| [Add M0 SBVR + FACE for capacity, queueing, retransmit (F2)](https://nasa-jpl-demo.devinenterprise.com/sessions/7250126e396340ce9ab48178e85b20f0) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-03 21:19 | suspended (inactivity) | 28m | 68.1 | 146 sh / 35 ed / 37 rd / 4 git / 5 mcp / 3+1 msg |  |
| [Model F´ file-queue rule: K3 counts waiting files (Q9)](https://nasa-jpl-demo.devinenterprise.com/sessions/a1a889ee01544f3eb5126cefd11e7e7c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 23:40 | suspended (inactivity) | 19m | 63.5 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### OpenSysML — 1 session, 15h18 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 15h18 | 2689.9 † | 1021 sh / 84 ed / 12 rd / 36 git / 2 mcp / 16+5 msg | [qvts #47](https://github.com/Open-MBEE/qvts/pull/47) merged, [#1930](https://github.com/Open-MBEE/OpenSysML/pull/1930) merged, [qvts #48](https://github.com/Open-MBEE/qvts/pull/48) merged, [#1942](https://github.com/Open-MBEE/OpenSysML/pull/1942) merged, [#1943](https://github.com/Open-MBEE/OpenSysML/pull/1943) merged, [#1946](https://github.com/Open-MBEE/OpenSysML/pull/1946) merged, [qvts #49](https://github.com/Open-MBEE/qvts/pull/49) merged |

#### soil-moisture-model — 1 session, 13h36 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 13h36 | 216.9 † | 1429 sh / 146 ed / 447 rd / 48 git / 0 mcp / 38+30 msg | [#7](https://github.com/Open-MBEE/soil-moisture-model/pull/7) closed, [soil-moisture-workflows #7](https://github.com/Open-MBEE/soil-moisture-workflows/pull/7) closed, [#8](https://github.com/Open-MBEE/soil-moisture-model/pull/8) merged, [#9](https://github.com/Open-MBEE/soil-moisture-model/pull/9) merged, [#10](https://github.com/Open-MBEE/soil-moisture-model/pull/10) merged, [#11](https://github.com/Open-MBEE/soil-moisture-model/pull/11) merged, [#12](https://github.com/Open-MBEE/soil-moisture-model/pull/12) merged, [#13](https://github.com/Open-MBEE/soil-moisture-model/pull/13) merged, [#14](https://github.com/Open-MBEE/soil-moisture-model/pull/14) merged, [#15](https://github.com/Open-MBEE/soil-moisture-model/pull/15) merged, [#16](https://github.com/Open-MBEE/soil-moisture-model/pull/16) merged, [#17](https://github.com/Open-MBEE/soil-moisture-model/pull/17) merged, [#18](https://github.com/Open-MBEE/soil-moisture-model/pull/18) merged, [#19](https://github.com/Open-MBEE/soil-moisture-model/pull/19) merged, [#20](https://github.com/Open-MBEE/soil-moisture-model/pull/20) merged, [#21](https://github.com/Open-MBEE/soil-moisture-model/pull/21) merged, [#22](https://github.com/Open-MBEE/soil-moisture-model/pull/22) merged, [#23](https://github.com/Open-MBEE/soil-moisture-model/pull/23) merged, [soil-moisture-workflows #8](https://github.com/Open-MBEE/soil-moisture-workflows/pull/8) merged, [soil-moisture-workflows #9](https://github.com/Open-MBEE/soil-moisture-workflows/pull/9) merged, [soil-moisture-workflows #10](https://github.com/Open-MBEE/soil-moisture-workflows/pull/10) merged, [soil-moisture-workflows #11](https://github.com/Open-MBEE/soil-moisture-workflows/pull/11) merged, [soil-moisture-workflows #12](https://github.com/Open-MBEE/soil-moisture-workflows/pull/12) merged, [soil-moisture-workflows #13](https://github.com/Open-MBEE/soil-moisture-workflows/pull/13) merged, [soil-moisture-workflows #14](https://github.com/Open-MBEE/soil-moisture-workflows/pull/14) merged, [soil-moisture-workflows #15](https://github.com/Open-MBEE/soil-moisture-workflows/pull/15) merged, [soil-moisture-workflows #16](https://github.com/Open-MBEE/soil-moisture-workflows/pull/16) merged, [soil-moisture-workflows #17](https://github.com/Open-MBEE/soil-moisture-workflows/pull/17) merged, [soil-moisture-workflows #18](https://github.com/Open-MBEE/soil-moisture-workflows/pull/18) merged, [#24](https://github.com/Open-MBEE/soil-moisture-model/pull/24) merged, [#25](https://github.com/Open-MBEE/soil-moisture-model/pull/25) merged, [#26](https://github.com/Open-MBEE/soil-moisture-model/pull/26) merged, [#27](https://github.com/Open-MBEE/soil-moisture-model/pull/27) merged, [soil-moisture-workflows #19](https://github.com/Open-MBEE/soil-moisture-workflows/pull/19) merged, [PropertyKindCalculus #105](https://github.com/nasa-jpl/PropertyKindCalculus/pull/105) merged, [#28](https://github.com/Open-MBEE/soil-moisture-model/pull/28) merged, [#29](https://github.com/Open-MBEE/soil-moisture-model/pull/29) merged, [#30](https://github.com/Open-MBEE/soil-moisture-model/pull/30) merged |

#### mars.lean — 1 session, 11h40 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 11h40 | 3526.2 † | 1937 sh / 585 ed / 4 rd / 44 git / 7 mcp / 82+19 msg | [#290](https://github.com/Open-MBEE/mars.lean/pull/290) merged, [#291](https://github.com/Open-MBEE/mars.lean/pull/291) merged, [#292](https://github.com/Open-MBEE/mars.lean/pull/292) merged, [#293](https://github.com/Open-MBEE/mars.lean/pull/293) merged, [#294](https://github.com/Open-MBEE/mars.lean/pull/294) merged, [#295](https://github.com/Open-MBEE/mars.lean/pull/295) merged, [#296](https://github.com/Open-MBEE/mars.lean/pull/296) merged, [#297](https://github.com/Open-MBEE/mars.lean/pull/297) merged, [#298](https://github.com/Open-MBEE/mars.lean/pull/298) merged, [#299](https://github.com/Open-MBEE/mars.lean/pull/299) merged, [#300](https://github.com/Open-MBEE/mars.lean/pull/300) merged, [#301](https://github.com/Open-MBEE/mars.lean/pull/301) merged, [#302](https://github.com/Open-MBEE/mars.lean/pull/302) merged, [#303](https://github.com/Open-MBEE/mars.lean/pull/303) merged, [#304](https://github.com/Open-MBEE/mars.lean/pull/304) merged, [#305](https://github.com/Open-MBEE/mars.lean/pull/305) merged, [#306](https://github.com/Open-MBEE/mars.lean/pull/306) merged, [#307](https://github.com/Open-MBEE/mars.lean/pull/307) merged, [#308](https://github.com/Open-MBEE/mars.lean/pull/308) merged |

#### L4YAML — 4 sessions, 7h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML PR 232](https://nasa-jpl-demo.devinenterprise.com/sessions/92bd1b953ac248de8df35275701e4c80) | nasa-jpl/L4YAML | webapp | ultra | 11-04 14:35 | suspended (inactivity) | 10m | 9.8 | 20 sh / 0 ed / 5 rd / 3 git / 0 mcp / 2+1 msg |  |
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 4h05 | 578.5 † | 284 sh / 81 ed / 93 rd / 24 git / 0 mcp / 27+10 msg | [#228](https://github.com/nasa-jpl/L4YAML/pull/228) merged, [#230](https://github.com/nasa-jpl/L4YAML/pull/230) merged, [#235](https://github.com/nasa-jpl/L4YAML/pull/235) merged, [#238](https://github.com/nasa-jpl/L4YAML/pull/238) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 2h35 | 3356.8 † | 262 sh / 41 ed / 4 rd / 20 git / 14 mcp / 46+15 msg | [#229](https://github.com/nasa-jpl/L4YAML/pull/229) merged, [#231](https://github.com/nasa-jpl/L4YAML/pull/231) merged, [#233](https://github.com/nasa-jpl/L4YAML/pull/233) merged, [#234](https://github.com/nasa-jpl/L4YAML/pull/234) merged, [#236](https://github.com/nasa-jpl/L4YAML/pull/236) merged, [#237](https://github.com/nasa-jpl/L4YAML/pull/237) merged, [#239](https://github.com/nasa-jpl/L4YAML/pull/239) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 8m | 674.1 † | 13 sh / 0 ed / 0 rd / 1 git / 50 mcp / 28+6 msg |  |

#### engineering-foundation-architecture — 1 session, 41m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix assurance-dashboard verdictFields doc-comment parsing](https://nasa-jpl-demo.devinenterprise.com/sessions/b88b65241237426e8beef79f60a1ea33) | Open-MBEE/engineering-foundation-architecture | child of a8a1adef | ultra | 11-04 13:19 | suspended (inactivity) | 41m | 8.7 | 28 sh / 5 ed / 6 rd / 5 git / 5 mcp / 4+1 msg | [#70](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/70) merged |

#### (Devin housekeeping) — 1 session, 9m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/08fcc9e0d2fb48c8966630c93df2f060) |  | webapp | normal | 11-04 07:32 | suspended | 9m | 0.0 | 64 sh / 15 ed / 8 rd / 0 git / 62 mcp / 4+2 msg |  |

#### certified-learned-surrogates — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Gauge Amina’s Proposal Interest](https://nasa-jpl-demo.devinenterprise.com/sessions/78a813cdaac24cb88eef3215ac6c655a) | Open-MBEE/certified-learned-surrogates | webapp | fusion | 10-30 15:13 | suspended (inactivity) [archived] | 4m | 20.3 † | 15 sh / 4 ed / 4 rd / 3 git / 0 mcp / 7+3 msg | [#4](https://github.com/Open-MBEE/certified-learned-surrogates/pull/4) closed, [#5](https://github.com/Open-MBEE/certified-learned-surrogates/pull/5) closed |

#### (no repository) — 2 sessions, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Debug tlr_sbs.py initial value](https://nasa-jpl-demo.devinenterprise.com/sessions/106ba97b6b28429ca31c8f94e25f83dc) |  | webapp | ultra | 11-04 09:39 | suspended (inactivity) | 2m | 2.9 | 5 sh / 0 ed / 2 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Fix inconsistent timestamp matching in truncate_images](https://nasa-jpl-demo.devinenterprise.com/sessions/63ade6c5b93a48fe94b3f1ace4ca592a) |  | webapp | ultra | 11-03 17:42 | suspended (inactivity) | 0m | 3.4 | 10 sh / 0 ed / 6 rd / 0 git / 0 mcp / 4+2 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/02b9ba2534ec43adb82a7a12f9fdae67) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-04 06:01 | suspended (inactivity) | 0m | 1.5 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

### Thursday 2026-11-05

12 sessions across 7 projects, 21h48 of working time, 10 PRs opened.

#### OpenSysML — 1 session, 10h48 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 10h48 | 2689.9 † | 724 sh / 70 ed / 6 rd / 77 git / 0 mcp / 21+6 msg | [#1973](https://github.com/Open-MBEE/OpenSysML/pull/1973) merged, [#1990](https://github.com/Open-MBEE/OpenSysML/pull/1990) merged |

#### fprime-lean-sysmlv2-example — 3 sessions, 5h02 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 1m | 367.5 ‡ | 5 sh / 4 ed / 0 rd / 1 git / 14 mcp / 8+2 msg |  |
| [Model F´ file-queue rule: K3 counts waiting files (Q9)](https://nasa-jpl-demo.devinenterprise.com/sessions/a1a889ee01544f3eb5126cefd11e7e7c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 23:40 | suspended (inactivity) | 2h33 | 63.5 | 238 sh / 56 ed / 56 rd / 13 git / 0 mcp / 9+3 msg | [#99](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/99) merged |
| [Add F´ retransmit, non-waiting SendFile, M1 file capacity (F5)](https://nasa-jpl-demo.devinenterprise.com/sessions/2fff7fe2690f45478145383e1b054d5e) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 13:19 | suspended (inactivity) | 2h28 | 170.7 | 203 sh / 45 ed / 11 rd / 15 git / 0 mcp / 14+5 msg |  |

#### soil-moisture-model — 1 session, 3h05 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 3h05 | 216.9 † | 1065 sh / 129 ed / 145 rd / 60 git / 0 mcp / 56+31 msg |  |

#### L4YAML — 4 sessions, 2h39 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | running (working) | 1h27 | 538.6 ‡ | 158 sh / 43 ed / 34 rd / 1 git / 0 mcp / 2+1 msg | [#242](https://github.com/nasa-jpl/L4YAML/pull/242) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 34m | 3356.8 † | 91 sh / 19 ed / 4 rd / 10 git / 13 mcp / 17+7 msg | [#240](https://github.com/nasa-jpl/L4YAML/pull/240) merged |
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 32m | 578.5 † | 62 sh / 29 ed / 22 rd / 6 git / 0 mcp / 10+2 msg | [#241](https://github.com/nasa-jpl/L4YAML/pull/241) merged, [#243](https://github.com/nasa-jpl/L4YAML/pull/243) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 5m | 674.1 † | 14 sh / 2 ed / 4 rd / 0 git / 13 mcp / 10+3 msg |  |

#### mars.lean — 1 session, 6m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 6m | 3526.2 † | 442 sh / 172 ed / 8 rd / 21 git / 0 mcp / 25+5 msg | [#309](https://github.com/Open-MBEE/mars.lean/pull/309) merged, [#310](https://github.com/Open-MBEE/mars.lean/pull/310) merged, [#311](https://github.com/Open-MBEE/mars.lean/pull/311) merged |

#### (no repository) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Draft Strategic Lessons-Learned Message](https://nasa-jpl-demo.devinenterprise.com/sessions/dc4f7902f00f4772859b88cffb38546b) |  | webapp | ultra | 11-05 14:30 | suspended (inactivity) | 4m | 8.0 | 10 sh / 0 ed / 3 rd / 0 git / 0 mcp / 11+9 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/f371196f62954d02803e61912eb2a8c7) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-05 06:01 | suspended (inactivity) | 0m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

### Friday 2026-11-06

23 sessions across 8 projects, 67h11 of working time, 55 PRs opened.

#### OpenSysML — 1 session, 18h22 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 18h22 | 2689.9 † | 1685 sh / 135 ed / 15 rd / 33 git / 0 mcp / 21+5 msg | [qvts #50](https://github.com/Open-MBEE/qvts/pull/50) merged, [#2016](https://github.com/Open-MBEE/OpenSysML/pull/2016) merged, [qvts #51](https://github.com/Open-MBEE/qvts/pull/51) merged, [#2017](https://github.com/Open-MBEE/OpenSysML/pull/2017) merged, [qvts #52](https://github.com/Open-MBEE/qvts/pull/52) merged, [#2019](https://github.com/Open-MBEE/OpenSysML/pull/2019) merged |

#### fprime-lean-sysmlv2-example — 5 sessions, 14h58 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 18m | 367.5 ‡ | 21 sh / 4 ed / 6 rd / 4 git / 3 mcp / 9+3 msg | [#100](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/100) merged |
| [ECR-001: refused return is a lost packet, K4 sentence, record](https://nasa-jpl-demo.devinenterprise.com/sessions/968089eb086c474c98f74435031494cf) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 12:25 | suspended (inactivity) | 10h22 | 183.3 | 346 sh / 57 ed / 64 rd / 0 git / 0 mcp / 2+1 msg | [#103](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/103) merged, [#104](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/104) merged |
| [F6: M1 sender C5 per packet, F´ Repeater refusal, overflow realized](https://nasa-jpl-demo.devinenterprise.com/sessions/a8ea6924994943ce84a29543845128cf) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 08:15 | suspended (inactivity) | 3h13 | 54.9 | 152 sh / 29 ed / 56 rd / 4 git / 0 mcp / 5+1 msg | [#101](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/101) merged, [#102](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/102) merged |
| [Mechanise ECR-001 status coverage check in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/c0ac59f0c41049c5aa85b8a8c38a271b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 22:56 | suspended (inactivity) | 1h03 | 30.2 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Model F´ file-queue rule: K3 counts waiting files (Q9)](https://nasa-jpl-demo.devinenterprise.com/sessions/a1a889ee01544f3eb5126cefd11e7e7c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-04 23:40 | suspended (inactivity) | 1m | 63.5 | 1 sh / 1 ed / 0 rd / 0 git / 0 mcp / 1+0 msg |  |

#### L4YAML — 6 sessions, 13h14 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML PR 232](https://nasa-jpl-demo.devinenterprise.com/sessions/92bd1b953ac248de8df35275701e4c80) | nasa-jpl/L4YAML | webapp | ultra | 11-04 14:35 | suspended (inactivity) | 10m | 9.8 | 6 sh / 0 ed / 0 rd / 2 git / 0 mcp / 2+1 msg |  |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 8h43 | 3356.8 † | 425 sh / 89 ed / 14 rd / 25 git / 21 mcp / 27+7 msg | [#244](https://github.com/nasa-jpl/L4YAML/pull/244) merged, [#246](https://github.com/nasa-jpl/L4YAML/pull/246) merged, [#247](https://github.com/nasa-jpl/L4YAML/pull/247) merged, [#249](https://github.com/nasa-jpl/L4YAML/pull/249) merged, [#250](https://github.com/nasa-jpl/L4YAML/pull/250) merged, [#251](https://github.com/nasa-jpl/L4YAML/pull/251) merged |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | running (working) | 2h08 | 538.6 ‡ | 79 sh / 22 ed / 5 rd / 7 git / 0 mcp / 8+4 msg | [#245](https://github.com/nasa-jpl/L4YAML/pull/245) merged, [#253](https://github.com/nasa-jpl/L4YAML/pull/253) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 1h31 | 165.4 | 76 sh / 3 ed / 7 rd / 4 git / 0 mcp / 6+3 msg | [#248](https://github.com/nasa-jpl/L4YAML/pull/248) merged, [#252](https://github.com/nasa-jpl/L4YAML/pull/252) merged |
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 20m | 578.5 † | 42 sh / 8 ed / 15 rd / 6 git / 2 mcp / 9+4 msg |  |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 20m | 674.1 † | 15 sh / 2 ed / 0 rd / 4 git / 27 mcp / 13+4 msg |  |

#### soil-moisture-model — 4 sessions, 8h23 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 5h04 | 216.9 † | 358 sh / 46 ed / 48 rd / 13 git / 10 mcp / 17+6 msg | [soil-moisture-workflows #20](https://github.com/Open-MBEE/soil-moisture-workflows/pull/20) merged, [#31](https://github.com/Open-MBEE/soil-moisture-model/pull/31) merged, [#35](https://github.com/Open-MBEE/soil-moisture-model/pull/35) merged, [soil-moisture-dps #8](https://github.com/Open-MBEE/soil-moisture-dps/pull/8) merged |
| [Document the Modular Workflow Blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/bd861de0d6924c3bbb6f6108621605a6) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-06 19:58 | suspended (inactivity) | 1h15 | 17.3 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [#37](https://github.com/Open-MBEE/soil-moisture-model/pull/37) merged |
| [Fix Open-MBEE soil moisture model warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/b08e0a3ae5364a43bdc2d513b8e1a01a) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-06 14:21 | suspended (inactivity) | 1h02 | 34.7 | 95 sh / 11 ed / 30 rd / 3 git / 0 mcp / 4+1 msg | [#36](https://github.com/Open-MBEE/soil-moisture-model/pull/36) merged |
| [Formalize PKC Quantities and Contracts](https://nasa-jpl-demo.devinenterprise.com/sessions/b5d9e169d79f4f749afaec2f0edbc76d) | Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 10:02 | suspended (inactivity) | 1h01 | 53.4 | 117 sh / 31 ed / 56 rd / 19 git / 0 mcp / 18+7 msg | [#32](https://github.com/Open-MBEE/soil-moisture-model/pull/32) merged, [#33](https://github.com/Open-MBEE/soil-moisture-model/pull/33) merged, [#34](https://github.com/Open-MBEE/soil-moisture-model/pull/34) merged, [soil-moisture-workflows #23](https://github.com/Open-MBEE/soil-moisture-workflows/pull/23) merged |

#### soil-moisture-workflows — 3 sessions, 5h35 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | running (working) | 4h11 | 343.7 ‡ | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [#27](https://github.com/Open-MBEE/soil-moisture-workflows/pull/27) merged, [#28](https://github.com/Open-MBEE/soil-moisture-workflows/pull/28) merged, [#29](https://github.com/Open-MBEE/soil-moisture-workflows/pull/29) merged, [#30](https://github.com/Open-MBEE/soil-moisture-workflows/pull/30) merged, [#31](https://github.com/Open-MBEE/soil-moisture-workflows/pull/31) merged, [#32](https://github.com/Open-MBEE/soil-moisture-workflows/pull/32) merged |
| [Fix Warnings and Errors in soil-moisture-workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/eaa0ba4c69844113a5fa6a571bb2720b) | Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 11:07 | suspended (inactivity) | 48m | 50.9 | 71 sh / 9 ed / 10 rd / 5 git / 0 mcp / 6+2 msg | [#21](https://github.com/Open-MBEE/soil-moisture-workflows/pull/21) merged, [#22](https://github.com/Open-MBEE/soil-moisture-workflows/pull/22) merged, [#24](https://github.com/Open-MBEE/soil-moisture-workflows/pull/24) merged, [#25](https://github.com/Open-MBEE/soil-moisture-workflows/pull/25) merged, [#26](https://github.com/Open-MBEE/soil-moisture-workflows/pull/26) merged |
| [Modularize leanCurl for a PR](https://nasa-jpl-demo.devinenterprise.com/sessions/d0c10b32b08144028e87fd0607dbbb1a) | Open-MBEE/leanCurl, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 20:06 | suspended (inactivity) | 34m | 65.3 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg | [leanCurl #1](https://github.com/Open-MBEE/leanCurl/pull/1) merged |

#### mars.lean — 1 session, 5h10 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 5h10 | 3526.2 † | 553 sh / 203 ed / 118 rd / 41 git / 0 mcp / 37+8 msg | [#312](https://github.com/Open-MBEE/mars.lean/pull/312) merged, [#313](https://github.com/Open-MBEE/mars.lean/pull/313) merged, [#314](https://github.com/Open-MBEE/mars.lean/pull/314) merged, [#315](https://github.com/Open-MBEE/mars.lean/pull/315) merged, [#316](https://github.com/Open-MBEE/mars.lean/pull/316) merged, [pacti.lean #1](https://github.com/Open-MBEE/pacti.lean/pull/1) merged, [#317](https://github.com/Open-MBEE/mars.lean/pull/317) merged, [pacti.lean #2](https://github.com/Open-MBEE/pacti.lean/pull/2) merged, [pacti.lean #3](https://github.com/Open-MBEE/pacti.lean/pull/3) merged, [#318](https://github.com/Open-MBEE/mars.lean/pull/318) merged |

#### PropertyKindCalculus — 2 sessions, 1h17 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix PropertyKindCalculus Errors and Warnings](https://nasa-jpl-demo.devinenterprise.com/sessions/0355d4ab7b1b4730a122d4ed3901731e) | nasa-jpl/PropertyKindCalculus | webapp | ultra | 11-06 08:01 | suspended (user_request) [archived] | 1h16 | 12.5 | 43 sh / 6 ed / 9 rd / 4 git / 0 mcp / 3+1 msg | [#106](https://github.com/nasa-jpl/PropertyKindCalculus/pull/106) merged |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/70040b2df480453f90c4e2e8f87bacc5) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-06 06:01 | suspended (inactivity) | 0m | 1.3 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |

#### calm — 1 session, 9m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Read valid modes from config.yaml](https://nasa-jpl-demo.devinenterprise.com/sessions/085325f0a0a249ba8c7a59b8514d1fae) | Open-MBEE/calm | webapp | ultra | 11-06 15:59 | suspended (inactivity) | 9m | 9.0 | 5 sh / 0 ed / 9 rd / 0 git / 0 mcp / 1+1 msg | [#2](https://github.com/Open-MBEE/calm/pull/2) open |

### Saturday 2026-11-07

21 sessions across 8 projects, 37h56 of working time, 31 PRs opened.

#### OpenSysML — 1 session, 16h54 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 16h54 | 2689.9 † | 1459 sh / 79 ed / 24 rd / 36 git / 33 mcp / 29+8 msg | [#2031](https://github.com/Open-MBEE/OpenSysML/pull/2031) merged, [qvts #53](https://github.com/Open-MBEE/qvts/pull/53) merged, [#2037](https://github.com/Open-MBEE/OpenSysML/pull/2037) merged, [#2045](https://github.com/Open-MBEE/OpenSysML/pull/2045) merged, [qvts #54](https://github.com/Open-MBEE/qvts/pull/54) merged, [#2054](https://github.com/Open-MBEE/OpenSysML/pull/2054) merged, [qvts #55](https://github.com/Open-MBEE/qvts/pull/55) merged |

#### L4YAML — 5 sessions, 11h54 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | running (working) | 6h47 | 538.6 ‡ | 402 sh / 110 ed / 44 rd / 10 git / 11 mcp / 26+10 msg | [#254](https://github.com/nasa-jpl/L4YAML/pull/254) merged, [#255](https://github.com/nasa-jpl/L4YAML/pull/255) merged, [#257](https://github.com/nasa-jpl/L4YAML/pull/257) merged, [#258](https://github.com/nasa-jpl/L4YAML/pull/258) merged, [#259](https://github.com/nasa-jpl/L4YAML/pull/259) merged, [#260](https://github.com/nasa-jpl/L4YAML/pull/260) merged, [#261](https://github.com/nasa-jpl/L4YAML/pull/261) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 4h38 | 165.4 | 152 sh / 20 ed / 3 rd / 13 git / 3 mcp / 15+4 msg | [#256](https://github.com/nasa-jpl/L4YAML/pull/256) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 23m | 3356.8 † | 43 sh / 5 ed / 1 rd / 7 git / 9 mcp / 12+6 msg |  |
| [L4YAML S9: Rule 9 scripts-in-Lean — phase 0 gate, flip_census/repin, flip libra…](https://nasa-jpl-demo.devinenterprise.com/sessions/f72df23f71f14b68831ef6d191062662) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-01 14:08 | suspended (inactivity) | 5m | 578.5 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 0m | 674.1 † | 8 sh / 2 ed / 1 rd / 1 git / 32 mcp / 11+3 msg |  |

#### soil-moisture-workflows — 4 sessions, 3h39 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | running (working) | 2h55 | 343.7 ‡ | 1328 sh / 339 ed / 344 rd / 29 git / 41 mcp / 28+8 msg | [#33](https://github.com/Open-MBEE/soil-moisture-workflows/pull/33) merged, [#34](https://github.com/Open-MBEE/soil-moisture-workflows/pull/34) merged, [#35](https://github.com/Open-MBEE/soil-moisture-workflows/pull/35) merged, [#36](https://github.com/Open-MBEE/soil-moisture-workflows/pull/36) merged, [#37](https://github.com/Open-MBEE/soil-moisture-workflows/pull/37) merged |
| [Modularize leanCurl for a PR](https://nasa-jpl-demo.devinenterprise.com/sessions/d0c10b32b08144028e87fd0607dbbb1a) | Open-MBEE/leanCurl, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 20:06 | suspended (inactivity) | 0m | 65.3 | 89 sh / 25 ed / 17 rd / 22 git / 15 mcp / 18+7 msg |  |
| [Fix Warnings and Errors in soil-moisture-workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/eaa0ba4c69844113a5fa6a571bb2720b) | Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 11:07 | suspended (inactivity) | 0m | 50.9 | 49 sh / 12 ed / 6 rd / 4 git / 6 mcp / 14+6 msg |  |
| [Update sm-workflows blueprint for the Lean migration](https://nasa-jpl-demo.devinenterprise.com/sessions/8bf54e0e3af44f8994d80df8f1c06719) | Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-07 10:24 | suspended (inactivity) | 44m | 18.4 | 61 sh / 13 ed / 27 rd / 5 git / 0 mcp / 10+3 msg | [#38](https://github.com/Open-MBEE/soil-moisture-workflows/pull/38) merged |

#### fprime-lean-sysmlv2-example — 4 sessions, 3h37 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 2m | 367.5 ‡ | 31 sh / 3 ed / 0 rd / 0 git / 8 mcp / 6+1 msg |  |
| [Q11: M1 packets = 5, measure time-refinement cost](https://nasa-jpl-demo.devinenterprise.com/sessions/225a0e60d25a402dafedef75ff57f5f6) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-07 22:09 | suspended (inactivity) | 1h50 | 48.4 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Mechanise ECR-001 status coverage check in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/c0ac59f0c41049c5aa85b8a8c38a271b) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 22:56 | suspended (inactivity) | 54m | 30.2 | 138 sh / 25 ed / 18 rd / 3 git / 5 mcp / 4+1 msg | [#105](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/105) merged |
| [ECR-001: refused return is a lost packet, K4 sentence, record](https://nasa-jpl-demo.devinenterprise.com/sessions/968089eb086c474c98f74435031494cf) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-06 12:25 | suspended (inactivity) | 49m | 183.3 | 600 sh / 112 ed / 81 rd / 5 git / 4 mcp / 16+5 msg |  |

#### soil-moisture-model — 4 sessions, 1h31 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Update soil-moisture-model diagrams for workflows changes](https://nasa-jpl-demo.devinenterprise.com/sessions/7a547429b3074d47bc16b7a4d568ef95) | Open-MBEE/soil-moisture-model, nasa-jpl/PropertyKindCalculus | webapp | ultra | 11-07 10:19 | running (working) | 1h24 | 132.1 ‡ | 38 sh / 4 ed / 17 rd / 11 git / 5 mcp / 10+3 msg | [#39](https://github.com/Open-MBEE/soil-moisture-model/pull/39) merged, [#40](https://github.com/Open-MBEE/soil-moisture-model/pull/40) merged, [#41](https://github.com/Open-MBEE/soil-moisture-model/pull/41) merged, [PropertyKindCalculus #107](https://github.com/nasa-jpl/PropertyKindCalculus/pull/107) merged, [#42](https://github.com/Open-MBEE/soil-moisture-model/pull/42) merged |
| [Fix Open-MBEE soil moisture model warnings and errors](https://nasa-jpl-demo.devinenterprise.com/sessions/b08e0a3ae5364a43bdc2d513b8e1a01a) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-06 14:21 | suspended (inactivity) | 7m | 34.7 | 19 sh / 4 ed / 4 rd / 1 git / 0 mcp / 7+2 msg | [#38](https://github.com/Open-MBEE/soil-moisture-model/pull/38) merged |
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 0m | 216.9 † | 47 sh / 5 ed / 6 rd / 2 git / 0 mcp / 6+2 msg |  |
| [Document the Modular Workflow Blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/bd861de0d6924c3bbb6f6108621605a6) | Open-MBEE/soil-moisture-model | webapp | ultra | 11-06 19:58 | suspended (inactivity) | 0m | 17.3 | 77 sh / 15 ed / 34 rd / 2 git / 0 mcp / 4+2 msg |  |

#### mars.lean — 1 session, 18m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 18m | 3526.2 † | 50 sh / 23 ed / 10 rd / 3 git / 6 mcp / 12+4 msg | [pacti.lean #4](https://github.com/Open-MBEE/pacti.lean/pull/4) merged, [#319](https://github.com/Open-MBEE/mars.lean/pull/319) merged, [#320](https://github.com/Open-MBEE/mars.lean/pull/320) merged |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/667f2029c4d1433193fe6d47ec605751) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-07 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |

#### calm — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Read valid modes from config.yaml](https://nasa-jpl-demo.devinenterprise.com/sessions/085325f0a0a249ba8c7a59b8514d1fae) | Open-MBEE/calm | webapp | ultra | 11-06 15:59 | suspended (inactivity) | 0m | 9.0 | 27 sh / 11 ed / 26 rd / 2 git / 0 mcp / 5+3 msg |  |

### Sunday 2026-11-08

21 sessions across 10 projects, 41h48 of working time, 33 PRs opened.

#### OpenSysML — 2 sessions, 16h09 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 13h34 | 2689.9 † | 1237 sh / 161 ed / 9 rd / 62 git / 29 mcp / 27+7 msg | [#2057](https://github.com/Open-MBEE/OpenSysML/pull/2057) merged, [#2059](https://github.com/Open-MBEE/OpenSysML/pull/2059) merged, [#2060](https://github.com/Open-MBEE/OpenSysML/pull/2060) merged, [#2061](https://github.com/Open-MBEE/OpenSysML/pull/2061) merged, [#2063](https://github.com/Open-MBEE/OpenSysML/pull/2063) open |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | running (working) | 2h34 | 36.7 ‡ | 167 sh / 25 ed / 44 rd / 4 git / 8 mcp / 3+1 msg | [#2064](https://github.com/Open-MBEE/OpenSysML/pull/2064) open |

#### L4YAML — 4 sessions, 9h18 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | running (working) | 3h49 | 538.6 ‡ | 739 sh / 161 ed / 87 rd / 15 git / 23 mcp / 51+15 msg | [#262](https://github.com/nasa-jpl/L4YAML/pull/262) merged, [#267](https://github.com/nasa-jpl/L4YAML/pull/267) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 3h07 | 3356.8 † | 233 sh / 16 ed / 10 rd / 11 git / 17 mcp / 36+20 msg | [#264](https://github.com/nasa-jpl/L4YAML/pull/264) merged, [#265](https://github.com/nasa-jpl/L4YAML/pull/265) merged, [#268](https://github.com/nasa-jpl/L4YAML/pull/268) merged, [#270](https://github.com/nasa-jpl/L4YAML/pull/270) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 2h06 | 165.4 | 138 sh / 20 ed / 3 rd / 26 git / 13 mcp / 30+12 msg | [#263](https://github.com/nasa-jpl/L4YAML/pull/263) merged, [#266](https://github.com/nasa-jpl/L4YAML/pull/266) merged, [#269](https://github.com/nasa-jpl/L4YAML/pull/269) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 14m | 674.1 † | 14 sh / 3 ed / 0 rd / 4 git / 47 mcp / 16+3 msg |  |

#### fprime-lean-sysmlv2-example — 3 sessions, 4h52 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 6m | 367.5 ‡ | 19 sh / 3 ed / 1 rd / 2 git / 13 mcp / 18+6 msg |  |
| [Realize overflow in full: M1 time refinement r=4](https://nasa-jpl-demo.devinenterprise.com/sessions/72924cd7c7f94fc7b262db29ed4b1e38) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-08 09:42 | running (working) | 3h50 | 37.8 ‡ | 154 sh / 22 ed / 37 rd / 0 git / 4 mcp / 5+3 msg |  |
| [Q11: M1 packets = 5, measure time-refinement cost](https://nasa-jpl-demo.devinenterprise.com/sessions/225a0e60d25a402dafedef75ff57f5f6) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-07 22:09 | suspended (inactivity) | 55m | 48.4 | 216 sh / 26 ed / 45 rd / 2 git / 4 mcp / 7+3 msg | [#106](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/106) merged |

#### mars.lean — 4 sessions, 4h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 1h16 | 3526.2 † | 154 sh / 61 ed / 20 rd / 13 git / 26 mcp / 34+14 msg | [PropertyKindCalculus #108](https://github.com/nasa-jpl/PropertyKindCalculus/pull/108) merged, [#321](https://github.com/Open-MBEE/mars.lean/pull/321) merged, [#322](https://github.com/Open-MBEE/mars.lean/pull/322) merged, [#323](https://github.com/Open-MBEE/mars.lean/pull/323) merged, [#324](https://github.com/Open-MBEE/mars.lean/pull/324) merged |
| [Read OpenSysML api-json back into the SysML Doc](https://nasa-jpl-demo.devinenterprise.com/sessions/42e0d0ccad3644b191264d6da75ee7cc) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 1h49 | 83.4 | 210 sh / 54 ed / 38 rd / 5 git / 3 mcp / 13+8 msg | [#326](https://github.com/Open-MBEE/mars.lean/pull/326) merged, [#328](https://github.com/Open-MBEE/mars.lean/pull/328) open |
| [Prove netH pivot agreement and back Refines by RetimedSim](https://nasa-jpl-demo.devinenterprise.com/sessions/179399d47385472b9993bb5615abaac5) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 40m | 13.3 | 72 sh / 7 ed / 20 rd / 3 git / 0 mcp / 4+2 msg | [#327](https://github.com/Open-MBEE/mars.lean/pull/327) merged |
| [Map OpenTelemetry causal-event logs onto MARS traces](https://nasa-jpl-demo.devinenterprise.com/sessions/6580a307e0154b1193ffa4022d7f40ff) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 26m | 24.4 | 71 sh / 28 ed / 21 rd / 3 git / 6 mcp / 6+2 msg | [#325](https://github.com/Open-MBEE/mars.lean/pull/325) merged |

#### soil-moisture-model — 1 session, 3h46 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Update soil-moisture-model diagrams for workflows changes](https://nasa-jpl-demo.devinenterprise.com/sessions/7a547429b3074d47bc16b7a4d568ef95) | Open-MBEE/soil-moisture-model, nasa-jpl/PropertyKindCalculus | webapp | ultra | 11-07 10:19 | running (working) | 3h46 | 132.1 ‡ | 227 sh / 67 ed / 4 rd / 20 git / 11 mcp / 29+8 msg | [#43](https://github.com/Open-MBEE/soil-moisture-model/pull/43) merged, [PropertyKindCalculus #109](https://github.com/nasa-jpl/PropertyKindCalculus/pull/109) merged, [#44](https://github.com/Open-MBEE/soil-moisture-model/pull/44) open |

#### soil-moisture-workflows — 2 sessions, 1h16 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | running (working) | 1h03 | 343.7 ‡ | 73 sh / 18 ed / 10 rd / 1 git / 0 mcp / 1+1 msg | [#41](https://github.com/Open-MBEE/soil-moisture-workflows/pull/41) ? |
| [Modularize leanCurl for a PR](https://nasa-jpl-demo.devinenterprise.com/sessions/d0c10b32b08144028e87fd0607dbbb1a) | Open-MBEE/leanCurl, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 20:06 | suspended (inactivity) | 12m | 65.3 | 36 sh / 8 ed / 6 rd / 4 git / 6 mcp / 15+4 msg | [#40](https://github.com/Open-MBEE/soil-moisture-workflows/pull/40) merged |

#### soil-moisture-dps — 1 session, 1h01 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 1h01 | 43.1 | 182 sh / 47 ed / 58 rd / 4 git / 0 mcp / 3+1 msg | [#9](https://github.com/Open-MBEE/soil-moisture-dps/pull/9) merged, [soil-moisture-workflows #39](https://github.com/Open-MBEE/soil-moisture-workflows/pull/39) open |

#### (no repository) — 2 sessions, 59m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily and Weekly Session Reports](https://nasa-jpl-demo.devinenterprise.com/sessions/438880735ee9439eb71a124cbe26cd23) |  | webapp | ultra | 11-08 12:39 | running (working) | 55m | 4.3 ‡ | 3 sh / 0 ed / 0 rd / 0 git / 11 mcp / 2+1 msg |  |
| [Find inflection-point session link](https://nasa-jpl-demo.devinenterprise.com/sessions/4510463cea924ec4b35fdbbc8381594c) |  | webapp | ultra | 11-08 12:27 | running (waiting_for_user) | 4m | 4.9 ‡ | 12 sh / 0 ed / 0 rd / 0 git / 513 mcp / 2+1 msg |  |

#### pacti.lean — 1 session, 10m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add exact LP oracle for Farkas certificates in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/e9ff3fd767d04034858f645f63773867) | Open-MBEE/pacti.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 10m | 10.1 | 25 sh / 9 ed / 3 rd / 1 git / 0 mcp / 3+1 msg | [#5](https://github.com/Open-MBEE/pacti.lean/pull/5) merged |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus scan findings](https://nasa-jpl-demo.devinenterprise.com/sessions/85b1ad601c9c433fa0e50cf98797ca68) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-08 06:01 | suspended (inactivity) | 0m | 1.1 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
