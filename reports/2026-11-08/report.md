# Devin session report — Sunday 2026-11-08

Sessions of Nicolas Rouquette created or active between Sun 2026-11-08 00:00 and Sun 2026-11-08 14:15 (America/Los_Angeles): 21 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Sunday 2026-11-08

21 sessions across 11 projects, 43h33 of working time, 40 PRs opened.

### OpenSysML — 2 sessions, 17h29 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | running (working) | 14h15 | 2712.7 † | 1051 sh / 114 ed / 5 rd / 61 git / 23 mcp / 23+6 msg | [#2057](https://github.com/Open-MBEE/OpenSysML/pull/2057) merged, [#2059](https://github.com/Open-MBEE/OpenSysML/pull/2059) merged, [#2060](https://github.com/Open-MBEE/OpenSysML/pull/2060) merged, [#2061](https://github.com/Open-MBEE/OpenSysML/pull/2061) merged, [#2063](https://github.com/Open-MBEE/OpenSysML/pull/2063) open, [qvts #56](https://github.com/Open-MBEE/qvts/pull/56) open |
| [Add comment serialization support in OpenSysML](https://nasa-jpl-demo.devinenterprise.com/sessions/4eac7d670b61499ea2a95a5babd91b78) | Open-MBEE/OpenSysML | webapp | ultra | 11-08 11:00 | running (working) | 3h14 | 42.0 ‡ | 182 sh / 30 ed / 44 rd / 11 git / 13 mcp / 6+2 msg | [#2064](https://github.com/Open-MBEE/OpenSysML/pull/2064) merged, [#2065](https://github.com/Open-MBEE/OpenSysML/pull/2065) open |

### L4YAML — 4 sessions, 9h40 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | running (working) | 4h14 | 564.9 † | 422 sh / 103 ed / 23 rd / 11 git / 14 mcp / 32+10 msg | [#262](https://github.com/nasa-jpl/L4YAML/pull/262) merged, [#267](https://github.com/nasa-jpl/L4YAML/pull/267) merged, [#271](https://github.com/nasa-jpl/L4YAML/pull/271) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 3h07 | 3356.8 † | 233 sh / 16 ed / 10 rd / 11 git / 17 mcp / 36+20 msg | [#264](https://github.com/nasa-jpl/L4YAML/pull/264) merged, [#265](https://github.com/nasa-jpl/L4YAML/pull/265) merged, [#268](https://github.com/nasa-jpl/L4YAML/pull/268) merged, [#270](https://github.com/nasa-jpl/L4YAML/pull/270) merged |
| [Land [211] explicit-only in L4YAML (Row 19)](https://nasa-jpl-demo.devinenterprise.com/sessions/12a32597e3554be1aeeb264f49263290) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-06 09:50 | suspended (inactivity) | 2h06 | 165.4 † | 138 sh / 20 ed / 3 rd / 23 git / 13 mcp / 29+12 msg | [#263](https://github.com/nasa-jpl/L4YAML/pull/263) merged, [#266](https://github.com/nasa-jpl/L4YAML/pull/266) merged, [#269](https://github.com/nasa-jpl/L4YAML/pull/269) merged |
| [Complete parse_iff_grammar proof](https://nasa-jpl-demo.devinenterprise.com/sessions/24a21977a04949ee91f5ae4088aa3058) | nasa-jpl/L4YAML | child of fb0431c8 | ultra | 10-23 08:56 | suspended (inactivity) | 11m | 674.1 † | 14 sh / 3 ed / 0 rd / 4 git / 47 mcp / 16+3 msg |  |

### fprime-lean-sysmlv2-example — 3 sessions, 5h32 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | running (waiting_for_user) | 6m | 370.5 † | 13 sh / 2 ed / 0 rd / 1 git / 13 mcp / 15+5 msg |  |
| [Realize overflow in full: M1 time refinement r=4](https://nasa-jpl-demo.devinenterprise.com/sessions/72924cd7c7f94fc7b262db29ed4b1e38) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-08 09:42 | running (working) | 4h30 | 49.5 ‡ | 218 sh / 28 ed / 44 rd / 3 git / 6 mcp / 7+3 msg | [#107](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/107) open |
| [Q11: M1 packets = 5, measure time-refinement cost](https://nasa-jpl-demo.devinenterprise.com/sessions/225a0e60d25a402dafedef75ff57f5f6) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-07 22:09 | suspended (inactivity) | 55m | 48.4 † | 89 sh / 8 ed / 6 rd / 2 git / 4 mcp / 6+2 msg | [#106](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/106) merged |

### mars.lean — 4 sessions, 4h14 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 1h16 | 3526.2 † | 149 sh / 61 ed / 16 rd / 13 git / 26 mcp / 32+13 msg | [PropertyKindCalculus #108](https://github.com/nasa-jpl/PropertyKindCalculus/pull/108) merged, [#321](https://github.com/Open-MBEE/mars.lean/pull/321) merged, [#322](https://github.com/Open-MBEE/mars.lean/pull/322) merged, [#323](https://github.com/Open-MBEE/mars.lean/pull/323) merged, [#324](https://github.com/Open-MBEE/mars.lean/pull/324) merged |
| [Read OpenSysML api-json back into the SysML Doc](https://nasa-jpl-demo.devinenterprise.com/sessions/42e0d0ccad3644b191264d6da75ee7cc) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 1h51 | 88.7 | 214 sh / 55 ed / 38 rd / 6 git / 6 mcp / 14+8 msg | [#326](https://github.com/Open-MBEE/mars.lean/pull/326) merged, [#328](https://github.com/Open-MBEE/mars.lean/pull/328) open |
| [Prove netH pivot agreement and back Refines by RetimedSim](https://nasa-jpl-demo.devinenterprise.com/sessions/179399d47385472b9993bb5615abaac5) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 40m | 13.3 | 72 sh / 7 ed / 20 rd / 3 git / 0 mcp / 4+2 msg | [#327](https://github.com/Open-MBEE/mars.lean/pull/327) merged |
| [Map OpenTelemetry causal-event logs onto MARS traces](https://nasa-jpl-demo.devinenterprise.com/sessions/6580a307e0154b1193ffa4022d7f40ff) | Open-MBEE/mars.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 26m | 24.4 | 71 sh / 28 ed / 21 rd / 3 git / 6 mcp / 6+2 msg | [#325](https://github.com/Open-MBEE/mars.lean/pull/325) merged |

### soil-moisture-model — 1 session, 3h11 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Update soil-moisture-model diagrams for workflows changes](https://nasa-jpl-demo.devinenterprise.com/sessions/7a547429b3074d47bc16b7a4d568ef95) | Open-MBEE/soil-moisture-model, nasa-jpl/PropertyKindCalculus | webapp | ultra | 11-07 10:19 | suspended (inactivity) | 3h11 | 145.4 † | 137 sh / 52 ed / 4 rd / 12 git / 11 mcp / 16+4 msg | [#43](https://github.com/Open-MBEE/soil-moisture-model/pull/43) merged, [PropertyKindCalculus #109](https://github.com/nasa-jpl/PropertyKindCalculus/pull/109) merged, [#44](https://github.com/Open-MBEE/soil-moisture-model/pull/44) merged |

### devin-automation — 1 session, 1h14 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily and Weekly Session Reports](https://nasa-jpl-demo.devinenterprise.com/sessions/438880735ee9439eb71a124cbe26cd23) | Open-MBEE/devin-automation | webapp | ultra | 11-08 12:39 | running (working) | 1h14 | 44.2 ‡ | 70 sh / 19 ed / 13 rd / 2 git / 4639 mcp / 16+9 msg | [#1](https://github.com/Open-MBEE/devin-automation/pull/1) open |

### soil-moisture-dps — 1 session, 1h01 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Switch sm-dps wrappers to sm_dps/sm_bridge and sweep workflows docs](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdd25bdcf3444f1ba742d0266f952c4) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | child of 7a547429 | ultra | 11-08 08:15 | suspended (inactivity) | 1h01 | 56.8 | 222 sh / 52 ed / 60 rd / 6 git / 0 mcp / 4+1 msg | [#9](https://github.com/Open-MBEE/soil-moisture-dps/pull/9) merged, [soil-moisture-workflows #39](https://github.com/Open-MBEE/soil-moisture-workflows/pull/39) open, [#11](https://github.com/Open-MBEE/soil-moisture-dps/pull/11) open |

### soil-moisture-workflows — 2 sessions, 54m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue soil-moisture-dps work](https://nasa-jpl-demo.devinenterprise.com/sessions/949f5b59507e4e7d99ee2ffd4b56f213) | Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 19:48 | suspended (inactivity) | 41m | 385.7 † | 203 sh / 48 ed / 51 rd / 5 git / 12 mcp / 10+3 msg | [#41](https://github.com/Open-MBEE/soil-moisture-workflows/pull/41) merged, [soil-moisture-dps #10](https://github.com/Open-MBEE/soil-moisture-dps/pull/10) open |
| [Modularize leanCurl for a PR](https://nasa-jpl-demo.devinenterprise.com/sessions/d0c10b32b08144028e87fd0607dbbb1a) | Open-MBEE/leanCurl, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-workflows | webapp | ultra | 11-06 20:06 | suspended (inactivity) | 12m | 65.3 † | 36 sh / 8 ed / 6 rd / 4 git / 6 mcp / 15+4 msg | [#40](https://github.com/Open-MBEE/soil-moisture-workflows/pull/40) merged |

### pacti.lean — 1 session, 10m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add exact LP oracle for Farkas certificates in pacti.lean](https://nasa-jpl-demo.devinenterprise.com/sessions/e9ff3fd767d04034858f645f63773867) | Open-MBEE/pacti.lean | child of 1fbba99f | ultra | 11-08 10:22 | suspended (inactivity) | 10m | 10.1 | 25 sh / 9 ed / 3 rd / 1 git / 0 mcp / 3+1 msg | [#5](https://github.com/Open-MBEE/pacti.lean/pull/5) merged |

### (no repository) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Find inflection-point session link](https://nasa-jpl-demo.devinenterprise.com/sessions/4510463cea924ec4b35fdbbc8381594c) |  | webapp | ultra | 11-08 12:27 | suspended (inactivity) | 4m | 5.0 | 12 sh / 0 ed / 0 rd / 0 git / 513 mcp / 2+1 msg |  |

### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus scan findings](https://nasa-jpl-demo.devinenterprise.com/sessions/85b1ad601c9c433fa0e50cf98797ca68) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-08 06:01 | suspended (inactivity) | 0m | 1.1 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
