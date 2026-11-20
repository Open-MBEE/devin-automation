# Devin session report — Thursday 2026-11-12

Sessions of Nicolas Rouquette created or active between Thu 2026-11-12 00:00 and Fri 2026-11-13 00:00 (America/Los_Angeles): 17 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Thursday 2026-11-12

17 sessions across 8 projects, 31h22 of working time, 31 PRs opened.

### OpenSysML — 2 sessions, 17h05 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 17h03 | 4868.4 † | ≥820 sh / 90 ed / 42 rd / 50 git / 24 mcp / 51+6 msg | [#2172](https://github.com/Open-MBEE/OpenSysML/pull/2172) merged, [#2173](https://github.com/Open-MBEE/OpenSysML/pull/2173) merged, [#2175](https://github.com/Open-MBEE/OpenSysML/pull/2175) merged, [qvts #93](https://github.com/Open-MBEE/qvts/pull/93) merged, [#2180](https://github.com/Open-MBEE/OpenSysML/pull/2180) merged, [#2190](https://github.com/Open-MBEE/OpenSysML/pull/2190) merged, [qvts #97](https://github.com/Open-MBEE/qvts/pull/97) merged, [#2194](https://github.com/Open-MBEE/OpenSysML/pull/2194) merged |
| [Prepare OpenSysML release/0.13.0 branch and PR to main](https://nasa-jpl-demo.devinenterprise.com/sessions/971fe7f6ece04bd2ae8d582c595bcce5) | Open-MBEE/OpenSysML | child of 4eac7d67 | ultra | 11-10 08:51 | suspended (inactivity) | 1m | 25.4 † | 6 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

### L4YAML — 7 sessions, 7h22 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML Pull Requests](https://nasa-jpl-demo.devinenterprise.com/sessions/956b61080c1444a5ac64c4effb79da21) | nasa-jpl/L4YAML | webapp | ultra | 11-12 07:57 | suspended (inactivity) | 6m | 28.7 ‡ | 7 sh / 1 ed / 5 rd / 5 git / 13 mcp / 7+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 4h32 | 2060.8 † | 549 sh / 95 ed / 1 rd / 18 git / 11 mcp / 35+8 msg | [#303](https://github.com/nasa-jpl/L4YAML/pull/303) merged, [#304](https://github.com/nasa-jpl/L4YAML/pull/304) merged, [#305](https://github.com/nasa-jpl/L4YAML/pull/305) merged, [#306](https://github.com/nasa-jpl/L4YAML/pull/306) merged, [#308](https://github.com/nasa-jpl/L4YAML/pull/308) merged |
| [Review L4YAML PR #290 embedded-NUL FFI fix](https://nasa-jpl-demo.devinenterprise.com/sessions/1c8e22c9f5024f27914303ad72a771cc) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 52m | 24.9 ‡ | 126 sh / 1 ed / 29 rd / 5 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 35m | 132.3 ‡ | 105 sh / 3 ed / 14 rd / 4 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #292 safe_dump scalar escaping](https://nasa-jpl-demo.devinenterprise.com/sessions/181a9450515546b38406c05906edf410) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 28m | 25.6 ‡ | 78 sh / 1 ed / 17 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #300 Core numeric spellings](https://nasa-jpl-demo.devinenterprise.com/sessions/d7659a10c36746deae97ff26be7e62a2) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 28m | 15.3 ‡ | 59 sh / 1 ed / 17 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Review L4YAML PR #299 explicit Core tags](https://nasa-jpl-demo.devinenterprise.com/sessions/d8c29e5a929e4a64881d356d2a70fb1e) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 19m | 27.9 ‡ | 76 sh / 1 ed / 11 rd / 6 git / 0 mcp / 2+1 msg |  |

### SBVR.lean — 2 sessions, 2h21 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 2h21 | 2191.0 † | 338 sh / 110 ed / 89 rd / 25 git / 25 mcp / 75+39 msg | [engineering-foundation-architecture #78](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/78) merged, [leanCurl #2](https://github.com/Open-MBEE/leanCurl/pull/2) merged, [engineering-foundation-architecture #79](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/79) merged, [leanCurl #3](https://github.com/Open-MBEE/leanCurl/pull/3) merged, [engineering-foundation-architecture #80](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/80) merged, [engineering-foundation-architecture #81](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/81) merged, [#46](https://github.com/Open-MBEE/SBVR.lean/pull/46) merged |
| [Add SBVR note reader over OpenSysML sysx:Note exports](https://nasa-jpl-demo.devinenterprise.com/sessions/95335e28a3fc4c5c8156f4659b495a2b) | Open-MBEE/SBVR.lean | child of 4eac7d67 | ultra | 11-10 08:43 | suspended (inactivity) | 0m | 61.6 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+1 msg |  |

### qvts — 2 sessions, 2h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Create QVTS Mass Rollup Examples](https://nasa-jpl-demo.devinenterprise.com/sessions/e9f985e539484c79b232cec027170643) | Open-MBEE/qvts | webapp | ultra | 11-12 08:53 | suspended (inactivity) | 1h55 | 105.6 ‡ | 304 sh / 78 ed / 106 rd / 9 git / 20 mcp / 26+8 msg | [#92](https://github.com/Open-MBEE/qvts/pull/92) merged, [#94](https://github.com/Open-MBEE/qvts/pull/94) merged, [#95](https://github.com/Open-MBEE/qvts/pull/95) merged, [#96](https://github.com/Open-MBEE/qvts/pull/96) merged |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 5m | 21.5 † | 6 sh / 2 ed / 2 rd / 0 git / 0 mcp / 2+1 msg |  |

### prov.lean — 1 session, 1h56 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 1h56 | 863.1 † | 189 sh / 83 ed / 35 rd / 12 git / 0 mcp / 20+6 msg | [#22](https://github.com/Open-MBEE/prov.lean/pull/22) merged, [#23](https://github.com/Open-MBEE/prov.lean/pull/23) merged, [#24](https://github.com/Open-MBEE/prov.lean/pull/24) merged, [#25](https://github.com/Open-MBEE/prov.lean/pull/25) merged |

### engineering-foundation-architecture — 1 session, 32m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 32m | 75.0 ‡ | 84 sh / 21 ed / 5 rd / 13 git / 0 mcp / 45+22 msg | [#77](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/77) merged, [#82](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/82) merged, [#83](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/83) merged |

### (no repository) — 1 session, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/61a9e27713ac41a1b0d107b29a5ad67e) |  | automation | ultra | 11-12 00:05 | suspended (inactivity) | 3m | 1.6 | 3 sh / 0 ed / 0 rd / 0 git / 405 mcp / 2+1 msg |  |

### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/aa4c7c412f78477094c16d6c2c1f565a) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-12 06:01 | suspended (inactivity) | 0m | 1.4 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
