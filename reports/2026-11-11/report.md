# Devin session report — Wednesday 2026-11-11

Sessions of Nicolas Rouquette created or active between Wed 2026-11-11 00:00 and Thu 2026-11-12 00:00 (America/Los_Angeles): 25 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Wednesday 2026-11-11

25 sessions across 10 projects, 27h58 of working time, 25 PRs opened.

### OpenSysML — 1 session, 13h37 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 13h37 | 4868.4 † | ≥667 sh / 114 ed / 12 rd / 45 git / 8 mcp / 36+0 msg | [#2135](https://github.com/Open-MBEE/OpenSysML/pull/2135) merged, [#2143](https://github.com/Open-MBEE/OpenSysML/pull/2143) merged, [qvts #86](https://github.com/Open-MBEE/qvts/pull/86) merged, [#2161](https://github.com/Open-MBEE/OpenSysML/pull/2161) merged, [#2164](https://github.com/Open-MBEE/OpenSysML/pull/2164) merged, [qvts #91](https://github.com/Open-MBEE/qvts/pull/91) merged |

### qvts — 10 sessions, 5h34 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add QVTS synthetic model coverage test plan](https://nasa-jpl-demo.devinenterprise.com/sessions/7459e04e306548f1a6da927a1bb5e437) | Open-MBEE/qvts | webapp | ultra | 11-10 18:53 | suspended (inactivity) | 10m | 139.7 † | 11 sh / 1 ed / 0 rd / 1 git / 34 mcp / 22+4 msg |  |
| [Add QVTS synthetic composition operators](https://nasa-jpl-demo.devinenterprise.com/sessions/baf179ebff68484e8c12e9bfece3ea5e) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 17:28 | suspended (inactivity) | 1h15 | 42.0 | 159 sh / 41 ed / 43 rd / 2 git / 3 mcp / 7+2 msg | [#88](https://github.com/Open-MBEE/qvts/pull/88) merged |
| [Add QVTS synthetic values gate](https://nasa-jpl-demo.devinenterprise.com/sessions/dadb358f17ae48f0a1b089b220a6745b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:54 | suspended (inactivity) | 1h05 | 71.2 † | 94 sh / 31 ed / 20 rd / 10 git / 3 mcp / 15+7 msg | [#83](https://github.com/Open-MBEE/qvts/pull/83) merged |
| [Add QVTS synthetic edits gate](https://nasa-jpl-demo.devinenterprise.com/sessions/42b2d477bd7e4824ae7115c707fe10c4) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 08:23 | suspended (inactivity) | 1h00 | 83.1 | 179 sh / 40 ed / 48 rd / 4 git / 7 mcp / 8+2 msg | [#84](https://github.com/Open-MBEE/qvts/pull/84) merged, [#85](https://github.com/Open-MBEE/qvts/pull/85) merged |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 49m | 21.5 ‡ | 82 sh / 7 ed / 33 rd / 5 git / 0 mcp / 4+1 msg | [#90](https://github.com/Open-MBEE/qvts/pull/90) merged |
| [Add QVTS synthetic nightly tiers workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/dff306134f4e424e9044a0edd96ca1f1) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 20:56 | suspended (inactivity) | 35m | 18.3 ‡ | 64 sh / 16 ed / 35 rd / 1 git / 0 mcp / 2+1 msg | [#89](https://github.com/Open-MBEE/qvts/pull/89) merged |
| [Fold measured figures into QVTS coverage plan](https://nasa-jpl-demo.devinenterprise.com/sessions/ef2935ede9be4aafab6e59719a3a865b) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 17:28 | suspended (inactivity) | 12m | 10.7 | 29 sh / 3 ed / 8 rd / 2 git / 0 mcp / 5+3 msg | [#87](https://github.com/Open-MBEE/qvts/pull/87) merged |
| [Generate QVTS synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/58778dcb6f804bb29a7f426acb0b299c) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 20:45 | suspended (inactivity) | 11m | 40.2 † | 26 sh / 6 ed / 4 rd / 0 git / 1 mcp / 4+3 msg |  |
| [Add QVTS synthetic recipe table and atlas](https://nasa-jpl-demo.devinenterprise.com/sessions/d604068cc6d4430b982aca056a74c42d) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 19:52 | suspended (inactivity) | 8m | 130.2 † | 17 sh / 4 ed / 8 rd / 2 git / 4 mcp / 7+3 msg |  |
| [Run QVTS reflection over synthetic complete model](https://nasa-jpl-demo.devinenterprise.com/sessions/c6c88808f78b4b9482fe527179b020d2) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-10 22:10 | suspended (inactivity) | 4m | 31.6 † | 20 sh / 1 ed / 4 rd / 2 git / 1 mcp / 6+3 msg |  |

### fprime-lean-sysmlv2-example — 3 sessions, 3h12 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Downlink M0 Architecture Diagram](https://nasa-jpl-demo.devinenterprise.com/sessions/c4fe0be598084357b14813fd5326e998) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-09 12:13 | suspended (inactivity) | 5m | 127.3 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Plan fprime-lean-sysmlv2-example structure](https://nasa-jpl-demo.devinenterprise.com/sessions/a8a1adef279a4c009e8e3cd7e4a0a115) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-02 20:18 | suspended (inactivity) | 0m | 562.6 † | 1 sh / 1 ed / 0 rd / 0 git / 2 mcp / 1+0 msg |  |
| [ECR-002: Q1 two readings — evidence, #reading_coverage, then fix](https://nasa-jpl-demo.devinenterprise.com/sessions/d89172028cbe4ef9a871a4bf458fdd3c) | Open-MBEE/fprime-lean-sysmlv2-example | child of a8a1adef | ultra | 11-10 08:21 | suspended (inactivity) | 3h06 | 246.4 † | 149 sh / 39 ed / 8 rd / 6 git / 7 mcp / 7+1 msg | [#121](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/121) merged |

### L4YAML — 3 sessions, 2h29 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Discuss L4YAML Assurance Gap](https://nasa-jpl-demo.devinenterprise.com/sessions/340a0814c47344da91f6de2b7146265b) | nasa-jpl/L4YAML | webapp | ultra | 11-10 22:25 | suspended (inactivity) | 24m | 39.8 † | 59 sh / 1 ed / 14 rd / 6 git / 0 mcp / 8+4 msg |  |
| [Add metagraph experiment documentation](https://nasa-jpl-demo.devinenterprise.com/sessions/bfb0071aeaab4aa58b50b413bca12aba) | nasa-jpl/L4YAML | webapp | ultra | 11-09 18:15 | suspended (inactivity) | 0m | 55.6 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+0 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 2h04 | 2060.8 † | 135 sh / 33 ed / 2 rd / 6 git / 3 mcp / 18+6 msg | [#297](https://github.com/nasa-jpl/L4YAML/pull/297) merged, [#298](https://github.com/nasa-jpl/L4YAML/pull/298) merged, [#301](https://github.com/nasa-jpl/L4YAML/pull/301) merged |

### SBVR.lean — 2 sessions, 57m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 56m | 2191.0 † | 152 sh / 35 ed / 23 rd / 8 git / 6 mcp / 11+2 msg | [html-to-pdf.lean #3](https://github.com/Open-MBEE/html-to-pdf.lean/pull/3) merged, [engineering-foundation-architecture #74](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/74) merged, [prov.lean #20](https://github.com/Open-MBEE/prov.lean/pull/20) merged, [engineering-foundation-architecture #75](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/75) merged, [engineering-foundation-architecture #76](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/76) merged |
| [Add SBVR note reader over OpenSysML sysx:Note exports](https://nasa-jpl-demo.devinenterprise.com/sessions/95335e28a3fc4c5c8156f4659b495a2b) | Open-MBEE/SBVR.lean | child of 4eac7d67 | ultra | 11-10 08:43 | suspended (inactivity) | 1m | 61.6 † | 4 sh / 0 ed / 0 rd / 0 git / 0 mcp / 4+2 msg |  |

### prov.lean — 1 session, 57m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 57m | 863.1 ‡ | 93 sh / 47 ed / 27 rd / 2 git / 0 mcp / 4+2 msg | [#21](https://github.com/Open-MBEE/prov.lean/pull/21) merged |

### engineering-foundation-architecture — 2 sessions, 52m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Write SBVR Requirements White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/900e867e05764334a74bccd12e60de87) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-11 11:30 | suspended (inactivity) | 28m | 28.6 | 64 sh / 6 ed / 13 rd / 3 git / 0 mcp / 26+16 msg | [#72](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/72) merged |
| [SBVR Proofs and Verification Obligations](https://nasa-jpl-demo.devinenterprise.com/sessions/0c119cb9eb4d4ce3b100e54496fa1fd7) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-11 19:32 | suspended (inactivity) | 24m | 20.7 ‡ | 57 sh / 6 ed / 5 rd / 6 git / 0 mcp / 12+6 msg | [#73](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/73) merged |

### soil-moisture-model — 1 session, 13m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Document Soil Moisture Algorithm Modules](https://nasa-jpl-demo.devinenterprise.com/sessions/dcdff6db65d44f4386c0402429c625fe) | Open-MBEE/sm-smap-nisar-demo, Open-MBEE/soil-moisture-dps, Open-MBEE/soil-moisture-model, Open-MBEE/soil-moisture-workflows, nasa-jpl/PropertyKindCalculus | webapp | fusion | 11-01 21:09 | suspended (inactivity) | 13m | 225.9 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

### (no repository) — 1 session, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Nicolas Rouquette’s daily Devin session report](https://nasa-jpl-demo.devinenterprise.com/sessions/eb03a35de28d444eaa36b43d573ab0bd) |  | automation | ultra | 11-11 00:05 | suspended (inactivity) | 2m | 1.8 | 4 sh / 0 ed / 1 rd / 0 git / 461 mcp / 2+1 msg |  |

### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/dafb51b3aaf94028a5d97dd2fe9a36a2) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-11 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 2 mcp / 2+1 msg |  |
