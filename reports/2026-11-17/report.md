# Devin session report — Tuesday 2026-11-17

Sessions of Nicolas Rouquette created or active between Tue 2026-11-17 00:00 and Wed 2026-11-18 00:00 (America/Los_Angeles): 24 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Tuesday 2026-11-17

24 sessions across 14 projects, 20h50 of working time, 27 PRs opened.

### L4YAML — 3 sessions, 8h21 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 6h30 | 2060.8 † | 399 sh / 84 ed / 2 rd / 46 git / 7 mcp / 25+8 msg | [#350](https://github.com/nasa-jpl/L4YAML/pull/350) merged, [#351](https://github.com/nasa-jpl/L4YAML/pull/351) merged, [#352](https://github.com/nasa-jpl/L4YAML/pull/352) merged, [#353](https://github.com/nasa-jpl/L4YAML/pull/353) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 0m | 4151.6 † | 2 sh / 0 ed / 0 rd / 3 git / 0 mcp / 1+0 msg |  |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 1h49 | 132.3 † | 80 sh / 19 ed / 27 rd / 14 git / 3 mcp / 13+6 msg | [#349](https://github.com/nasa-jpl/L4YAML/pull/349) merged, [L4YAML.FGM #1](https://github.com/Open-MBEE/L4YAML.FGM/pull/1) merged, [FGM #1](https://github.com/Open-MBEE/FGM/pull/1) merged |

### OpenSysML — 3 sessions, 5h37 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 5h06 | 4868.4 † | ≥176 sh / 33 ed / 22 rd / 24 git / 6 mcp / 15+3 msg |  |
| [Make compliance row 28-name-resolution:81 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/9eae7d55903746d1a212b6005ae0e586) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 29m | 48.5 † | 7 sh / 3 ed / 0 rd / 2 git / 0 mcp / 1+0 msg |  |
| [Make compliance row 18-kerml-function-library:619 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/748cc6cd3fe74a6b9b3f611d8b3374b4) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 1m | 9.5 † | 4 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

### SBVR.lean — 1 session, 1h54 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 1h54 | 2191.0 † | 202 sh / 82 ed / 27 rd / 17 git / 14 mcp / 44+12 msg | [#52](https://github.com/Open-MBEE/SBVR.lean/pull/52) merged, [#54](https://github.com/Open-MBEE/SBVR.lean/pull/54) merged, [#55](https://github.com/Open-MBEE/SBVR.lean/pull/55) merged, [#56](https://github.com/Open-MBEE/SBVR.lean/pull/56) merged, [engineering-foundation-architecture #103](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/103) merged, [#57](https://github.com/Open-MBEE/SBVR.lean/pull/57) merged, [engineering-foundation-architecture #104](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/104) merged |

### qvts — 3 sessions, 1h35 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/qvts task](https://nasa-jpl-demo.devinenterprise.com/sessions/d8b78a749ee346b88fb67aabfc7b2683) | Open-MBEE/qvts | webapp | ultra | 11-17 09:15 | suspended (inactivity) | 1h01 | 14.3 | 36 sh / 11 ed / 22 rd / 4 git / 3 mcp / 5+2 msg | [#110](https://github.com/Open-MBEE/qvts/pull/110) merged |
| [Fix qvts gh-pages publishing workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/1d8450f164ef48f08fd4d0b31d65cd8e) | Open-MBEE/qvts | webapp | ultra | 11-17 13:46 | running (waiting_for_user) | 28m | 101.5 ‡ | 39 sh / 9 ed / 14 rd / 11 git / 0 mcp / 21+10 msg | [#111](https://github.com/Open-MBEE/qvts/pull/111) merged, [#112](https://github.com/Open-MBEE/qvts/pull/112) merged, [#113](https://github.com/Open-MBEE/qvts/pull/113) merged, [#114](https://github.com/Open-MBEE/qvts/pull/114) merged |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 5m | 21.5 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

### git-remote-sync.lean — 2 sessions, 44m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Sync tags across remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/215036cfa81740cca3ba8411a0d3c6e6) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-17 11:05 | suspended (inactivity) | 33m | 24.6 | 111 sh / 34 ed / 66 rd / 6 git / 9 mcp / 17+9 msg | [#69](https://github.com/Open-MBEE/git-remote-sync.lean/pull/69) merged, [#70](https://github.com/Open-MBEE/git-remote-sync.lean/pull/70) merged |
| [Fix git-remote-sync release uploads](https://nasa-jpl-demo.devinenterprise.com/sessions/07cccc25a05d47678d22e81763c57bff) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-17 13:34 | suspended (inactivity) | 10m | 3.5 | 21 sh / 4 ed / 1 rd / 4 git / 4 mcp / 5+2 msg | [#71](https://github.com/Open-MBEE/git-remote-sync.lean/pull/71) merged |

### tasktree.lean — 1 session, 37m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Build Interactive Lean Work Tracker Extension](https://nasa-jpl-demo.devinenterprise.com/sessions/7cbea5a8f2a2478bb2a3c93e381371ee) | Open-MBEE/tasktree.lean | webapp | ultra | 11-17 13:57 | suspended (inactivity) | 37m | 105.2 ‡ | 130 sh / 46 ed / 72 rd / 0 git / 4 mcp / 15+7 msg |  |

### prov.lean — 2 sessions, 34m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE prov.lean work](https://nasa-jpl-demo.devinenterprise.com/sessions/6cefe1a7b093446e92a78d16dc8350e7) | Open-MBEE/prov.lean | webapp | ultra | 11-17 12:59 | suspended (inactivity) | 29m | 109.5 ‡ | 103 sh / 16 ed / 27 rd / 7 git / 1 mcp / 21+11 msg | [#36](https://github.com/Open-MBEE/prov.lean/pull/36) merged, [#38](https://github.com/Open-MBEE/prov.lean/pull/38) merged, [#39](https://github.com/Open-MBEE/prov.lean/pull/39) merged, [#40](https://github.com/Open-MBEE/prov.lean/pull/40) merged |
| [Fix Lean CI Action Restriction](https://nasa-jpl-demo.devinenterprise.com/sessions/8812e34f42cf4381be6288031da7c436) | Open-MBEE/prov.lean | webapp | ultra | 11-17 13:48 | suspended (inactivity) | 4m | 5.2 | 19 sh / 2 ed / 3 rd / 1 git / 0 mcp / 5+1 msg | [#37](https://github.com/Open-MBEE/prov.lean/pull/37) merged |

### fprime-lean-sysmlv2-example — 1 session, 32m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Define Packet Buffer Algebra Module](https://nasa-jpl-demo.devinenterprise.com/sessions/4cf276f055ad4d8b859f8bfd5b38f5e6) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-16 13:37 | suspended (inactivity) | 32m | 33.8 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

### engineering-foundation-architecture — 2 sessions, 21m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 11m | 75.0 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Add the whitepaper to the site header bar](https://nasa-jpl-demo.devinenterprise.com/sessions/544325604dd745e7826016a87bb559dd) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 10m | 19.8 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

### pacti.lean — 1 session, 15m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove GR(1) integer split never falls back](https://nasa-jpl-demo.devinenterprise.com/sessions/4699594c5c194e649e2117ef272ed589) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 15m | 19.0 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

### (no repository) — 2 sessions, 6m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/d905e41b02d341e8943dd77c8f01d169) |  | automation | ultra | 11-17 00:05 | suspended (inactivity) | 4m | 1.8 | 4 sh / 0 ed / 2 rd / 0 git / 396 mcp / 2+1 msg |  |
| [Locate Devin API v3 token](https://nasa-jpl-demo.devinenterprise.com/sessions/b77959c53303444f9a43d19e84625eae) |  | webapp | ultra | 11-17 14:03 | suspended (inactivity) | 1m | 4.5 ‡ | 4 sh / 0 ed / 1 rd / 0 git / 4 mcp / 3+2 msg |  |

### (Devin housekeeping) — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/b1d5102c55af45cab722945b4ce0a4c0) |  | webapp | normal | 11-17 12:52 | suspended | 5m | 0.0 | 33 sh / 8 ed / 5 rd / 0 git / 44 mcp / 1+2 msg |  |

### (Devin environment) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix Open-MBEE Blueprint Failure](https://nasa-jpl-demo.devinenterprise.com/sessions/3d66b7b6454a4ddf9c957bcaa71dd1c7) |  | webapp | ultra | 11-17 13:46 | suspended (inactivity) | 4m | 3.4 | 17 sh / 1 ed / 1 rd / 0 git / 0 mcp / 3+1 msg |  |

### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/ffed1c3782c14075932496bd4293a2ad) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-17 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
