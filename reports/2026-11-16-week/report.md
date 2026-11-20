# Devin session report — week 2026-11-16 → 2026-11-22

Sessions of Nicolas Rouquette created or active between Mon 2026-11-16 00:00 and Thu 2026-11-19 15:27 (America/Los_Angeles): 147 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Per-project totals (week 2026-11-16 → 2026-11-22)

| Project | Sessions (created in window) | Working time | ACUs (sessions fully in window) | ACUs ‡ (created in window, still active after) | ACUs † (older sessions, lifetime) | Actions | PRs opened |
|---|---|---|---|---|---|---|---|
| **qvts** | 33 (32) | 44h17 | 378.9 | 266.2 | 21.5 | 3,529 | 35 |
| **OpenSysML** | 15 (7) | 38h29 | 110.8 | 61.7 | 5064.3 | 2,302≥ | 7 |
| **SBVR.lean** | 17 (16) | 30h28 | 702.9 | 74.3 | 2191.0 | 4,345 | 26 |
| **L4YAML** | 8 (4) | 15h30 | 26.2 | 0.0 | 6373.4 | 1,232 | 12 |
| **prov.lean** | 26 (25) | 10h10 | 557.8 | 44.7 | 863.1 | 2,769 | 30 |
| **engineering-foundation-architecture** | 15 (12) | 7h45 | 168.0 | 0.0 | 203.5 | 1,310 | 18 |
| **pacti.lean** | 4 (0) | 2h42 | 0.0 | 0.0 | 262.8 | 136 | 3 |
| **fprime-lean-sysmlv2-example** | 1 (1) | 2h06 | 33.8 | 0.0 | 0.0 | 193 | 1 |
| **git-remote-sync.lean** | 5 (4) | 2h04 | 79.9 | 0.0 | 25.7 | 621 | 7 |
| **tasktree.lean** | 3 (3) | 1h52 | 162.3 | 0.0 | 0.0 | 874 | 6 |
| **PropertyKindCalculus** | 5 (5) | 1h01 | 30.8 | 0.0 | 0.0 | 136 | 2 |
| **face.lean** | 2 (2) | 41m | 28.5 | 0.0 | 0.0 | 126 | 2 |
| **(no repository)** | 7 (7) | 35m | 24.9 | 0.0 | 0.0 | 3,461 | 0 |
| **nfr.workboard** | 1 (1) | 26m | 39.7 | 0.0 | 0.0 | 204 | 3 |
| **tls-server.lean** | 1 (1) | 18m | 25.2 | 0.0 | 0.0 | 140 | 4 |
| **devin-automation** | 1 (1) | 11m | 0.0 | 3.3 | 0.0 | 61 | 0 |
| **(Devin housekeeping)** | 1 (1) | 5m | 0.0 | 0.0 | 0.0 | 91 | 0 |
| **(Devin environment)** | 1 (1) | 4m | 3.4 | 0.0 | 0.0 | 22 | 0 |
| **mars.lean** | 1 (0) | 0m | 0.0 | 0.0 | 3588.7 | 4 | 0 |

## Working time per project per day (hours)

| Project | Mon 16 | Tue 17 | Wed 18 | Thu 19 | Fri 20 | Sat 21 | Sun 22 | Total |
|---|---|---|---|---|---|---|---|---|
| qvts | · | 1.6 | 10.3 | 32.4 | · | · | · | 44.3 |
| OpenSysML | 16.4 | 5.6 | 0.6 | 15.8 | · | · | · | 38.5 |
| SBVR.lean | · | 1.9 | 16.9 | 11.6 | · | · | · | 30.5 |
| L4YAML | 0.1 | 8.4 | 3.2 | 3.9 | · | · | · | 15.5 |
| prov.lean | 0.1 | 0.6 | 2.5 | 7.0 | · | · | · | 10.2 |
| engineering-foundation-architecture | 5.2 | 0.4 | 2.2 | · | · | · | · | 7.8 |
| pacti.lean | 2.4 | 0.3 | · | · | · | · | · | 2.7 |
| fprime-lean-sysmlv2-example | 1.6 | 0.5 | · | · | · | · | · | 2.1 |
| git-remote-sync.lean | · | 0.7 | · | 1.3 | · | · | · | 2.1 |
| tasktree.lean | · | 0.6 | 1.3 | · | · | · | · | 1.9 |
| PropertyKindCalculus | · | · | 0.9 | 0.1 | · | · | · | 1.0 |
| face.lean | · | · | 0.7 | · | · | · | · | 0.7 |
| (no repository) | 0.1 | 0.1 | 0.1 | 0.3 | · | · | · | 0.6 |
| nfr.workboard | · | · | 0.2 | 0.3 | · | · | · | 0.4 |
| tls-server.lean | · | · | 0.3 | · | · | · | · | 0.3 |
| devin-automation | · | · | · | 0.2 | · | · | · | 0.2 |
| (Devin housekeeping) | · | 0.1 | · | · | · | · | · | 0.1 |
| (Devin environment) | · | 0.1 | · | · | · | · | · | 0.1 |
| mars.lean | · | · | · | · | · | · | · | 0.0 |

## Sessions by project

### qvts — 33 sessions, 44h17 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix qvts gh-pages publishing workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/1d8450f164ef48f08fd4d0b31d65cd8e) | Open-MBEE/qvts | webapp | ultra | 11-17 13:46 | running (waiting_for_user) | 1h16 | 101.5 ‡ | 135 sh / 10 ed / 30 rd / 23 git / 107 mcp / 77+25 msg | [#111](https://github.com/Open-MBEE/qvts/pull/111) merged, [#112](https://github.com/Open-MBEE/qvts/pull/112) merged, [#113](https://github.com/Open-MBEE/qvts/pull/113) merged, [#114](https://github.com/Open-MBEE/qvts/pull/114) merged |
| [Open-MBEE/qvts task](https://nasa-jpl-demo.devinenterprise.com/sessions/d8b78a749ee346b88fb67aabfc7b2683) | Open-MBEE/qvts | webapp | ultra | 11-17 09:15 | suspended (inactivity) | 1h01 | 14.3 | 36 sh / 11 ed / 22 rd / 4 git / 3 mcp / 5+2 msg | [#110](https://github.com/Open-MBEE/qvts/pull/110) merged |
| [Add Collapsible QVTS Metrics Groups](https://nasa-jpl-demo.devinenterprise.com/sessions/7c2ed6c5d8504886a1844b7fdb74b4f7) | Open-MBEE/qvts | webapp | ultra | 11-19 10:01 | suspended (inactivity) | 16m | 23.1 | 56 sh / 9 ed / 16 rd / 7 git / 0 mcp / 8+3 msg | [#128](https://github.com/Open-MBEE/qvts/pull/128) merged, [#130](https://github.com/Open-MBEE/qvts/pull/130) merged |
| [Explain Unreachable Rows Lower Bound](https://nasa-jpl-demo.devinenterprise.com/sessions/04d0e751908e4d6b91b5ff8762a8adc4) | Open-MBEE/qvts | webapp | ultra | 11-18 12:51 | suspended (inactivity) | 0m | 15.9 | 5 sh / 0 ed / 4 rd / 0 git / 0 mcp / 4+2 msg |  |
| [Type the metamodel table's names by role](https://nasa-jpl-demo.devinenterprise.com/sessions/a13f38fffd914273b1ff858d17ef7860) | Open-MBEE/qvts | child of 1010d061 | ultra | 11-18 21:21 | suspended (inactivity) | 33m | 14.4 | 69 sh / 29 ed / 26 rd / 2 git / 0 mcp / 3+1 msg | [#124](https://github.com/Open-MBEE/qvts/pull/124) merged |
| [Add QVTS synthetic recipe alternatives to raise coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/d11fe6d92e0742e982cf0854b5981b14) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 08:59 | suspended (inactivity) | 2h31 | 35.8 | 77 sh / 16 ed / 21 rd / 5 git / 12 mcp / 15+5 msg | [#132](https://github.com/Open-MBEE/qvts/pull/132) merged |
| [Derive unnamed-element ids in the Lean observatory](https://nasa-jpl-demo.devinenterprise.com/sessions/06167af0f24844b19e43de1d70519d7b) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 13:01 | running (working) | 2h26 | 28.3 ‡ | 69 sh / 8 ed / 16 rd / 7 git / 0 mcp / 2+1 msg | [#140](https://github.com/Open-MBEE/qvts/pull/140) open |
| [Add Lean gate runner and migrate QVTS pin scripts](https://nasa-jpl-demo.devinenterprise.com/sessions/faa4bbaff0f34f2b81f325caf64ddc28) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 13:01 | running (working) | 2h25 | 20.0 ‡ | 62 sh / 11 ed / 26 rd / 6 git / 0 mcp / 4+2 msg | [#143](https://github.com/Open-MBEE/qvts/pull/143) open |
| [Migrate QVTS composed-model files to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/b9f74e6f74b2447baa271b4800e23243) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 08:59 | suspended (inactivity) | 2h09 | 19.6 | 59 sh / 15 ed / 36 rd / 8 git / 0 mcp / 5+2 msg | [#129](https://github.com/Open-MBEE/qvts/pull/129) merged, [#131](https://github.com/Open-MBEE/qvts/pull/131) merged |
| [State structural cells in QVTS synthetic values](https://nasa-jpl-demo.devinenterprise.com/sessions/e581f133bb8c42978fdb1b657c710299) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 1h40 | 22.7 | 87 sh / 17 ed / 21 rd / 4 git / 3 mcp / 10+6 msg | [#120](https://github.com/Open-MBEE/qvts/pull/120) merged |
| [Declare followers for QVTS synthetic edit checks](https://nasa-jpl-demo.devinenterprise.com/sessions/94bb4aa015774bd4afee1eaf06cf257b) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 1h32 | 12.1 | 44 sh / 9 ed / 17 rd / 4 git / 0 mcp / 5+3 msg | [#119](https://github.com/Open-MBEE/qvts/pull/119) merged |
| [Generate typed metamodel vocabulary for QVTS synthetic](https://nasa-jpl-demo.devinenterprise.com/sessions/1010d061d4de4008b894ccf99c08bc6f) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 20:11 | suspended (inactivity) | 1h23 | 29.5 | 69 sh / 19 ed / 24 rd / 9 git / 7 mcp / 11+4 msg | [#121](https://github.com/Open-MBEE/qvts/pull/121) merged |
| [Migrate QVTS synthetic core types to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/06a6cee1f9c84b668569557d75659664) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 21:20 | suspended (inactivity) | 1h17 | 22.9 | 103 sh / 25 ed / 28 rd / 7 git / 0 mcp / 10+3 msg | [#123](https://github.com/Open-MBEE/qvts/pull/123) merged |
| [Raise QVTS native edit readback coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/fbcfaa660791412db0ea2b21e8de5751) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 1h07 | 17.1 | 58 sh / 11 ed / 17 rd / 4 git / 0 mcp / 8+3 msg | [#135](https://github.com/Open-MBEE/qvts/pull/135) merged |
| [Fix stale fixed ends in composed QVTS relationships](https://nasa-jpl-demo.devinenterprise.com/sessions/347f628f6b27437ebc4ede419edf45b6) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 20:12 | suspended (inactivity) | 1h07 | 11.9 | 37 sh / 9 ed / 20 rd / 2 git / 0 mcp / 4+2 msg | [#122](https://github.com/Open-MBEE/qvts/pull/122) merged |
| [Raise QVTS hand-written Lean observatory coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/6a89e346311d401cbb094a1ce94d8e60) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 54m | 15.1 | 54 sh / 12 ed / 21 rd / 7 git / 0 mcp / 7+3 msg | [#134](https://github.com/Open-MBEE/qvts/pull/134) merged, [#142](https://github.com/Open-MBEE/qvts/pull/142) merged |
| [Migrate QVTS synthetic structures and values to enums](https://nasa-jpl-demo.devinenterprise.com/sessions/4dfa80d49d174d7f992bbded566b81b7) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 22:42 | suspended (inactivity) | 40m | 13.8 | 41 sh / 5 ed / 21 rd / 6 git / 0 mcp / 4+1 msg | [#126](https://github.com/Open-MBEE/qvts/pull/126) merged |
| [Add composed-model admissibility coverage ledger and metric](https://nasa-jpl-demo.devinenterprise.com/sessions/c013b383053246a4a9da522a170e1934) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 36m | 9.2 | 31 sh / 11 ed / 22 rd / 4 git / 0 mcp / 6+2 msg | [#117](https://github.com/Open-MBEE/qvts/pull/117) merged |
| [Migrate QVTS synthetic generator followers to enums](https://nasa-jpl-demo.devinenterprise.com/sessions/3a6aad7d39dd4779b5fb9749a050d46d) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 22:42 | suspended (inactivity) | 30m | 10.1 | 32 sh / 7 ed / 14 rd / 6 git / 0 mcp / 3+1 msg | [#125](https://github.com/Open-MBEE/qvts/pull/125) merged |
| [Fix QVTS spec build after run-time name types](https://nasa-jpl-demo.devinenterprise.com/sessions/d7c612fdbcad40058e820994e2bad17f) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 07:47 | suspended (inactivity) | 25m | 3.2 | 9 sh / 2 ed / 3 rd / 3 git / 0 mcp / 2+1 msg | [#127](https://github.com/Open-MBEE/qvts/pull/127) merged |
| [Widen QVTS model bridge to relationship cells](https://nasa-jpl-demo.devinenterprise.com/sessions/f0128e1eea5840c5b63c26e25171b7b1) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 17m | 8.7 | 30 sh / 9 ed / 12 rd / 4 git / 0 mcp / 3+1 msg | [#116](https://github.com/Open-MBEE/qvts/pull/116) merged |
| [Refresh stale Lean-leg figures in QVTS docs](https://nasa-jpl-demo.devinenterprise.com/sessions/6f1eaa3463d04ea6ac75d6b8633ba4f7) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:48 | suspended (inactivity) | 9m | 2.9 | 14 sh / 2 ed / 5 rd / 3 git / 0 mcp / 2+1 msg | [#118](https://github.com/Open-MBEE/qvts/pull/118) merged |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 5m | 21.5 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [State SysML relationship rows' structural cells](https://nasa-jpl-demo.devinenterprise.com/sessions/586d847f3c804313ba1f26f51ffb1712) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | running (working) | 3h56 | 17.6 ‡ | 62 sh / 24 ed / 10 rd / 5 git / 0 mcp / 6+6 msg | [#141](https://github.com/Open-MBEE/qvts/pull/141) merged |
| [Add isConstant and KerML isDerived synthetic cells](https://nasa-jpl-demo.devinenterprise.com/sessions/50c52f3908784b59adce7d3d538a158c) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | running (working) | 3h25 | 39.3 ‡ | 134 sh / 35 ed / 54 rd / 8 git / 0 mcp / 6+5 msg | [#136](https://github.com/Open-MBEE/qvts/pull/136) merged, [#145](https://github.com/Open-MBEE/qvts/pull/145) open |
| [State KerML co-minted metaclasses in synthetic expectation](https://nasa-jpl-demo.devinenterprise.com/sessions/e47b62b7c553409dac17b44d01e06fd2) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 3h01 | 25.9 | 99 sh / 22 ed / 26 rd / 8 git / 0 mcp / 7+5 msg | [#139](https://github.com/Open-MBEE/qvts/pull/139) merged |
| [Add prefix cells to KerML classifier rows](https://nasa-jpl-demo.devinenterprise.com/sessions/4a3ab787d41f42bd82482db19e9a2a21) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 2h32 | 19.1 | 83 sh / 28 ed / 19 rd / 5 git / 0 mcp / 3+2 msg | [#137](https://github.com/Open-MBEE/qvts/pull/137) merged |
| [State SysML Expression in the synthetic expectation](https://nasa-jpl-demo.devinenterprise.com/sessions/bc542e9dc4a44e9f9cb8e65d0fae431f) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 1h34 | 16.1 | 67 sh / 13 ed / 14 rd / 7 git / 0 mcp / 5+2 msg | [#133](https://github.com/Open-MBEE/qvts/pull/133) merged, [#138](https://github.com/Open-MBEE/qvts/pull/138) merged |
| [Add prefix cells to SysML definition rows](https://nasa-jpl-demo.devinenterprise.com/sessions/fea2957ecfe04471b1461fa8c0c11ccf) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 13.0 ‡ | 56 sh / 9 ed / 10 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add prefix cells to non-occRow SysML usages](https://nasa-jpl-demo.devinenterprise.com/sessions/4d46cac903bd4332acb785e7952f5cb9) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 14.8 ‡ | 60 sh / 16 ed / 17 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Allow KerML second recipes; add KerML Package](https://nasa-jpl-demo.devinenterprise.com/sessions/cf827ded891c460bb755e6ef1685bdbd) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 15.1 ‡ | 54 sh / 26 ed / 13 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add isEnd alternatives to SysML usage rows](https://nasa-jpl-demo.devinenterprise.com/sessions/e9580d6b742246ee947bf48eaf455889) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 16.6 ‡ | 70 sh / 10 ed / 19 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Make aliasIds, isImplied, isImpliedIncluded valued](https://nasa-jpl-demo.devinenterprise.com/sessions/c576ee6ab0a54c0a9307835c3d59c35a) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | suspended (inactivity) | 23m | 15.7 | 53 sh / 2 ed / 16 rd / 3 git / 0 mcp / 7+4 msg | [#144](https://github.com/Open-MBEE/qvts/pull/144) merged |

### OpenSysML — 15 sessions, 38h29 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 19h08 | 4868.4 † | ≥679 sh / 92 ed / 30 rd / 49 git / 9 mcp / 60+15 msg |  |
| [Make compliance row 28-name-resolution:81 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/9eae7d55903746d1a212b6005ae0e586) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 2h13 | 48.5 † | 58 sh / 10 ed / 3 rd / 11 git / 1 mcp / 8+3 msg |  |
| [Make compliance row 15-state-machine:94 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/127f7be0f3b5458cbcf2b6eedaa5f862) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 42m | 23.1 † | 10 sh / 3 ed / 5 rd / 4 git / 6 mcp / 2+1 msg |  |
| [Make compliance row 17-expression-evaluation:25 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/49d0e2e74ead418995773a1f6a0403a1) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (user_request) [archived] | 14m | 37.5 † | 17 sh / 6 ed / 1 rd / 3 git / 0 mcp / 3+1 msg | [#2326](https://github.com/Open-MBEE/OpenSysML/pull/2326) merged |
| [Make compliance row 23-static-typing:29 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/5d48c28b9d274256bebd689770f7a4c3) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 13m | 25.9 † | 37 sh / 2 ed / 8 rd / 0 git / 4 mcp / 17+11 msg |  |
| [Make compliance row 08-instantiation:23 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/7e4ab05d47b540e8b7877c492a54e615) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 5m | 18.6 † | 18 sh / 2 ed / 3 rd / 0 git / 0 mcp / 6+3 msg |  |
| [Make compliance row 18-kerml-function-library:619 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/748cc6cd3fe74a6b9b3f611d8b3374b4) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 1m | 9.5 † | 4 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |
| [Make compliance row 26-usage-prefixes:8 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/e7e976d3e710492d80dc96a4af63d60b) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 0m | 32.8 † | 16 sh / 2 ed / 0 rd / 6 git / 0 mcp / 1+0 msg |  |
| [Fix duplicate FeatureTyping elementId in accept transitions](https://nasa-jpl-demo.devinenterprise.com/sessions/c6d756924da34d8992cba771c1ea1181) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | running (working) | 3h13 | 35.2 ‡ | 159 sh / 35 ed / 28 rd / 13 git / 3 mcp / 9+5 msg | [#2411](https://github.com/Open-MBEE/OpenSysML/pull/2411) open |
| [Reflect six OpenSysML constructs with specified metaclass](https://nasa-jpl-demo.devinenterprise.com/sessions/bab01228433542b7b9f3da921ee46458) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:12 | suspended (inactivity) | 2h28 | 28.6 | 102 sh / 14 ed / 34 rd / 12 git / 5 mcp / 5+2 msg | [#2410](https://github.com/Open-MBEE/OpenSysML/pull/2410) open |
| [Fix two SPARQL versus native disagreeing cells](https://nasa-jpl-demo.devinenterprise.com/sessions/e4992bf060d148e38ae7b1a7f56dfffe) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:12 | suspended (inactivity) | 2h17 | 23.9 | 96 sh / 9 ed / 16 rd / 21 git / 0 mcp / 9+4 msg | [#2413](https://github.com/Open-MBEE/OpenSysML/pull/2413) open |
| [Drop declaredName from reflected ConjugatedPortDefinition](https://nasa-jpl-demo.devinenterprise.com/sessions/7e19ec1a4293400ebc18da775fd28e3d) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 2h12 | 18.1 | 86 sh / 13 ed / 28 rd / 9 git / 0 mcp / 3+1 msg | [#2412](https://github.com/Open-MBEE/OpenSysML/pull/2412) open |
| [Mint elementIds for unidentified OpenSysML elements](https://nasa-jpl-demo.devinenterprise.com/sessions/b529ee82203349ffa2267e5296211e0c) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 2h10 | 24.5 | 95 sh / 13 ed / 31 rd / 9 git / 2 mcp / 4+1 msg | [#2408](https://github.com/Open-MBEE/OpenSysML/pull/2408) open |
| [Drop declaredName from reflected alias Membership](https://nasa-jpl-demo.devinenterprise.com/sessions/8bc8075b9c3743d88d65031ce7d2a054) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 1h46 | 15.7 | 55 sh / 5 ed / 15 rd / 10 git / 5 mcp / 8+3 msg | [#2409](https://github.com/Open-MBEE/OpenSysML/pull/2409) open |
| [Materialize annotation, cross-subsetting and set-relationship elements in OpenS…](https://nasa-jpl-demo.devinenterprise.com/sessions/350772dbcfae486db71b381707fba42d) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 13:46 | running (working) | 1h40 | 26.6 ‡ | 93 sh / 19 ed / 27 rd / 1 git / 0 mcp / 3+2 msg |  |

### SBVR.lean — 17 sessions, 30h28 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 2h22 | 2191.0 † | 212 sh / 82 ed / 27 rd / 23 git / 87 mcp / 85+16 msg | [#52](https://github.com/Open-MBEE/SBVR.lean/pull/52) merged, [#54](https://github.com/Open-MBEE/SBVR.lean/pull/54) merged, [#55](https://github.com/Open-MBEE/SBVR.lean/pull/55) merged, [#56](https://github.com/Open-MBEE/SBVR.lean/pull/56) merged, [engineering-foundation-architecture #103](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/103) merged, [#57](https://github.com/Open-MBEE/SBVR.lean/pull/57) merged, [engineering-foundation-architecture #104](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/104) merged |
| [Close SBVR 21.3.1 role-binding coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/8430ef9557e242c0b2931d35919328d3) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | running (working) | 3h07 | 74.3 ‡ | 244 sh / 59 ed / 61 rd / 5 git / 5 mcp / 6+4 msg | [#77](https://github.com/Open-MBEE/SBVR.lean/pull/77) open |
| [Read SBVR Annex B categorization patterns](https://nasa-jpl-demo.devinenterprise.com/sessions/d44d9940d03748f6921dac9622c635a0) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 2h28 | 68.2 | 145 sh / 37 ed / 28 rd / 5 git / 24 mcp / 12+3 msg | [#73](https://github.com/Open-MBEE/SBVR.lean/pull/73) merged, [#76](https://github.com/Open-MBEE/SBVR.lean/pull/76) merged, [#78](https://github.com/Open-MBEE/SBVR.lean/pull/78) merged, [#79](https://github.com/Open-MBEE/SBVR.lean/pull/79) merged |
| [Close SBVR 21.3.7 objectification coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/8d415eccaf1745569716e0f27bc2183a) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 1h42 | 61.5 | 96 sh / 35 ed / 34 rd / 2 git / 5 mcp / 9+4 msg | [#74](https://github.com/Open-MBEE/SBVR.lean/pull/74) merged |
| [Close SBVR 21.3.9 n-variable question coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/1c6d66aebe4a4607b3929f995438fd9c) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 1h14 | 31.2 | 79 sh / 25 ed / 43 rd / 4 git / 3 mcp / 5+1 msg | [#75](https://github.com/Open-MBEE/SBVR.lean/pull/75) merged |
| [Carry SBVR 15.2 quantities in core](https://nasa-jpl-demo.devinenterprise.com/sessions/6c1a8c373c3448c192c6feed4e476d16) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 43m | 23.0 | 61 sh / 19 ed / 25 rd / 2 git / 5 mcp / 12+3 msg | [#72](https://github.com/Open-MBEE/SBVR.lean/pull/72) merged |
| [Add SBVR role bindings (21.3.1)](https://nasa-jpl-demo.devinenterprise.com/sessions/22b6843490b74cb5965625a8a32140fb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 5h36 | 119.5 | 329 sh / 102 ed / 72 rd / 10 git / 30 mcp / 31+16 msg | [#66](https://github.com/Open-MBEE/SBVR.lean/pull/66) merged |
| [Add SBVR objectifications (21.3.7, 14.2.3-4)](https://nasa-jpl-demo.devinenterprise.com/sessions/3cefac96546d4274ba86bccc923456e8) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 2h17 | 59.8 | 193 sh / 64 ed / 52 rd / 1 git / 20 mcp / 14+5 msg | [#65](https://github.com/Open-MBEE/SBVR.lean/pull/65) merged |
| [Add SBVR advices (17.1.3, 18.1.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/0ce2b73e56054880bfad1f2bb0f052eb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h55 | 37.8 | 115 sh / 29 ed / 42 rd / 5 git / 13 mcp / 22+10 msg | [#61](https://github.com/Open-MBEE/SBVR.lean/pull/61) merged |
| [Add SBVR numbers (15.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/feceeb06357f48a3ae2640e4feeeef32) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 1h45 | 72.5 | 167 sh / 39 ed / 57 rd / 3 git / 19 mcp / 27+13 msg | [#59](https://github.com/Open-MBEE/SBVR.lean/pull/59) merged |
| [Add SBVR nominalizations (21.3.9)](https://nasa-jpl-demo.devinenterprise.com/sessions/22cbde3e107544fba27d701409900b39) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h42 | 62.5 | 173 sh / 62 ed / 46 rd / 5 git / 3 mcp / 12+5 msg | [#62](https://github.com/Open-MBEE/SBVR.lean/pull/62) merged |
| [Cover SBVR sides, proposition kinds, authority](https://nasa-jpl-demo.devinenterprise.com/sessions/d7a6eac3d07142859f9d4c0795acf5f1) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h29 | 40.1 | 121 sh / 28 ed / 42 rd / 3 git / 3 mcp / 13+6 msg | [#58](https://github.com/Open-MBEE/SBVR.lean/pull/58) merged |
| [Add SBVR projections and sets (21.3.8, 21.4, 15.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/a9c3e557c2364a498cea23796be4fc93) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h17 | 37.4 | 110 sh / 22 ed / 38 rd / 3 git / 13 mcp / 20+7 msg | [#60](https://github.com/Open-MBEE/SBVR.lean/pull/60) merged |
| [Add SBVR instantiation formulations (21.3.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/9c68ae35e12641e69cba4662a8e5943f) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h09 | 20.4 | 78 sh / 22 ed / 33 rd / 2 git / 12 mcp / 8+3 msg | [#63](https://github.com/Open-MBEE/SBVR.lean/pull/63) merged |
| [Prove SBVR parse-render theorem, pattern catalogue](https://nasa-jpl-demo.devinenterprise.com/sessions/6edb1762108448f6be8ede324cd67d49) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 1h01 | 42.3 | 148 sh / 42 ed / 33 rd / 2 git / 6 mcp / 10+3 msg | [#64](https://github.com/Open-MBEE/SBVR.lean/pull/64) merged |
| [Add fixtures for set parse/render fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/04ed0d75ad674834ba79eb9971430d1b) | Open-MBEE/SBVR.lean | child of a9c3e557 | ultra | 11-18 20:39 | suspended (inactivity) | 20m | 9.2 | 22 sh / 5 ed / 8 rd / 4 git / 0 mcp / 2+1 msg | [#70](https://github.com/Open-MBEE/SBVR.lean/pull/70) merged |
| [Draft OMG issues on SBVR chapter 15](https://nasa-jpl-demo.devinenterprise.com/sessions/860d51f9d5644947b837eb4e5e963935) | Open-MBEE/SBVR.lean | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 12m | 17.4 | 70 sh / 14 ed / 31 rd / 2 git / 0 mcp / 3+1 msg | [#71](https://github.com/Open-MBEE/SBVR.lean/pull/71) merged |

### L4YAML — 8 sessions, 15h30 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML Pull Requests](https://nasa-jpl-demo.devinenterprise.com/sessions/956b61080c1444a5ac64c4effb79da21) | nasa-jpl/L4YAML | webapp | ultra | 11-12 07:57 | suspended (inactivity) | 4m | 28.7 † | 8 sh / 0 ed / 0 rd / 9 git / 13 mcp / 8+2 msg |  |
| [Harden L4YAML Fork PR Security](https://nasa-jpl-demo.devinenterprise.com/sessions/d26d0b63cf634519b5e45cd1b974ec7e) | nasa-jpl/L4YAML | webapp | ultra | 11-16 10:39 | suspended (inactivity) | 3m | 5.1 | 12 sh / 3 ed / 1 rd / 1 git / 0 mcp / 5+2 msg | [#346](https://github.com/nasa-jpl/L4YAML/pull/346) merged |
| [List L4YAML PRs to Review](https://nasa-jpl-demo.devinenterprise.com/sessions/7782059af52e4a52b99922860986a008) | nasa-jpl/L4YAML | webapp | ultra | 11-18 17:32 | suspended (inactivity) | 1m | 2.1 | 4 sh / 0 ed / 1 rd / 6 git / 6 mcp / 2+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 12h10 | 2060.8 † | 636 sh / 114 ed / 5 rd / 60 git / 13 mcp / 44+11 msg | [#350](https://github.com/nasa-jpl/L4YAML/pull/350) merged, [#351](https://github.com/nasa-jpl/L4YAML/pull/351) merged, [#352](https://github.com/nasa-jpl/L4YAML/pull/352) merged, [#353](https://github.com/nasa-jpl/L4YAML/pull/353) merged, [#354](https://github.com/nasa-jpl/L4YAML/pull/354) merged, [#355](https://github.com/nasa-jpl/L4YAML/pull/355) merged, [#358](https://github.com/nasa-jpl/L4YAML/pull/358) merged, [#359](https://github.com/nasa-jpl/L4YAML/pull/359) open |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 0m | 4151.6 † | 2 sh / 0 ed / 0 rd / 3 git / 0 mcp / 1+0 msg |  |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 2h14 | 132.3 † | 94 sh / 20 ed / 27 rd / 14 git / 3 mcp / 16+7 msg | [#349](https://github.com/nasa-jpl/L4YAML/pull/349) merged, [L4YAML.FGM #1](https://github.com/Open-MBEE/L4YAML.FGM/pull/1) merged, [FGM #1](https://github.com/Open-MBEE/FGM/pull/1) merged |
| [Review L4YAML PR #357 coverage-script removal](https://nasa-jpl-demo.devinenterprise.com/sessions/7a56fcc248b24a9ba15eafbb74b0b2c1) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-19 10:53 | suspended (inactivity) | 31m | 10.0 | 40 sh / 4 ed / 2 rd / 4 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #356 Makefile removal](https://nasa-jpl-demo.devinenterprise.com/sessions/6e6a07305c4448c082ec070b7fe40306) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-19 10:53 | suspended (inactivity) | 23m | 9.1 | 29 sh / 1 ed / 9 rd / 4 git / 0 mcp / 4+2 msg |  |

### prov.lean — 26 sessions, 10h10 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE prov.lean work](https://nasa-jpl-demo.devinenterprise.com/sessions/6cefe1a7b093446e92a78d16dc8350e7) | Open-MBEE/prov.lean | webapp | ultra | 11-17 12:59 | suspended (inactivity) | 41m | 109.5 | 130 sh / 16 ed / 27 rd / 7 git / 35 mcp / 50+20 msg | [#36](https://github.com/Open-MBEE/prov.lean/pull/36) merged, [#38](https://github.com/Open-MBEE/prov.lean/pull/38) merged, [#39](https://github.com/Open-MBEE/prov.lean/pull/39) merged, [#40](https://github.com/Open-MBEE/prov.lean/pull/40) merged |
| [Fix Lean CI Action Restriction](https://nasa-jpl-demo.devinenterprise.com/sessions/8812e34f42cf4381be6288031da7c436) | Open-MBEE/prov.lean | webapp | ultra | 11-17 13:48 | suspended (inactivity) | 4m | 5.2 | 19 sh / 2 ed / 3 rd / 1 git / 0 mcp / 5+1 msg | [#37](https://github.com/Open-MBEE/prov.lean/pull/37) merged |
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 3m | 863.1 † | 9 sh / 2 ed / 0 rd / 0 git / 0 mcp / 6+4 msg |  |
| [Prove derivation and influence normal-form checks](https://nasa-jpl-demo.devinenterprise.com/sessions/777d2ec3d4c142189d19648c753d410e) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 50m | 40.0 | 85 sh / 33 ed / 22 rd / 2 git / 0 mcp / 2+1 msg | [#61](https://github.com/Open-MBEE/prov.lean/pull/61) merged |
| [Add key-unique SemRule and prove lifts](https://nasa-jpl-demo.devinenterprise.com/sessions/fa9d7aab754f488786db11867a3b5ce6) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 39m | 43.6 | 96 sh / 35 ed / 25 rd / 1 git / 0 mcp / 10+7 msg | [#55](https://github.com/Open-MBEE/prov.lean/pull/55) merged |
| [Test failing PROV-O profile path through prov-check](https://nasa-jpl-demo.devinenterprise.com/sessions/dc4d44975fe64b7a8c8d568801261faa) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:14 | suspended (inactivity) | 34m | 25.9 | 89 sh / 19 ed / 35 rd / 7 git / 0 mcp / 21+8 msg | [#52](https://github.com/Open-MBEE/prov.lean/pull/52) merged, [#56](https://github.com/Open-MBEE/prov.lean/pull/56) merged |
| [Prove specialization and mention normal-form checks](https://nasa-jpl-demo.devinenterprise.com/sessions/7c1a8f55407742c3892a8892e9741a95) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 22m | 19.8 | 53 sh / 15 ed / 26 rd / 2 git / 0 mcp / 2+1 msg | [#60](https://github.com/Open-MBEE/prov.lean/pull/60) merged |
| [Prove event and time normal-form checks](https://nasa-jpl-demo.devinenterprise.com/sessions/7e60b250ad9a4b69bb7de8d8af4f33a7) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 20m | 18.0 | 36 sh / 14 ed / 31 rd / 2 git / 0 mcp / 2+1 msg | [#59](https://github.com/Open-MBEE/prov.lean/pull/59) merged |
| [Draft W3C PROV gap write-ups in issues/](https://nasa-jpl-demo.devinenterprise.com/sessions/89a016b29a9e413a929de347a922ad70) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 20m | 23.3 | 82 sh / 9 ed / 29 rd / 1 git / 1 mcp / 5+3 msg | [#53](https://github.com/Open-MBEE/prov.lean/pull/53) merged |
| [Fix normalizer for influence-agree and revision-alternate](https://nasa-jpl-demo.devinenterprise.com/sessions/8a090fc48da24d969d3a1c3efd44a8ca) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 19m | 15.6 | 52 sh / 14 ed / 20 rd / 4 git / 0 mcp / 11+6 msg | [#50](https://github.com/Open-MBEE/prov.lean/pull/50) merged, [#54](https://github.com/Open-MBEE/prov.lean/pull/54) merged |
| [Drop start-event-time from PROV-SEM completeness hypothesis](https://nasa-jpl-demo.devinenterprise.com/sessions/4b9a5c45d711424eb2dff097724f6548) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 15m | 12.8 | 48 sh / 12 ed / 18 rd / 1 git / 0 mcp / 4+2 msg | [#51](https://github.com/Open-MBEE/prov.lean/pull/51) merged |
| [Refresh issues/ drafts against merged main](https://nasa-jpl-demo.devinenterprise.com/sessions/6f4db8b1eb414accb57ae9ce82c63492) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 8m | 5.6 | 23 sh / 2 ed / 17 rd / 1 git / 0 mcp / 2+1 msg | [#58](https://github.com/Open-MBEE/prov.lean/pull/58) merged |
| [Update coverage table for PROV-SEM completeness work](https://nasa-jpl-demo.devinenterprise.com/sessions/10999ef3eb0441d2b20aee3cb6ddd848) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 6m | 5.0 | 23 sh / 4 ed / 16 rd / 1 git / 0 mcp / 2+1 msg | [#57](https://github.com/Open-MBEE/prov.lean/pull/57) merged |
| [Add PROV-N semantic rules and extensibility](https://nasa-jpl-demo.devinenterprise.com/sessions/3178ca7374df4bfdbcfae913847d0673) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 53m | 32.3 | 82 sh / 38 ed / 24 rd / 1 git / 3 mcp / 5+2 msg | [#47](https://github.com/Open-MBEE/prov.lean/pull/47) merged |
| [Cover Inferences 6, 14 and Constraint 50](https://nasa-jpl-demo.devinenterprise.com/sessions/00e0b7bc8c2d47d6b3d583fe91895c63) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | running (waiting_for_user) | 51m | 44.7 ‡ | 106 sh / 38 ed / 36 rd / 8 git / 8 mcp / 17+8 msg | [#64](https://github.com/Open-MBEE/prov.lean/pull/64) open |
| [Complete PROV-CONSTRAINTS instance equivalence coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/9d3ec2af4ff944f6ae03e09bafb909ac) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | suspended (inactivity) | 40m | 20.2 | 52 sh / 12 ed / 16 rd / 5 git / 6 mcp / 13+6 msg | [#65](https://github.com/Open-MBEE/prov.lean/pull/65) merged |
| [Add stricter validity layer for PROV-SEM completeness](https://nasa-jpl-demo.devinenterprise.com/sessions/3e97d14075574f109342c956697b008c) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 09:29 | suspended (inactivity) | 29m | 47.9 | 94 sh / 22 ed / 22 rd / 9 git / 35 mcp / 26+7 msg | [#49](https://github.com/Open-MBEE/prov.lean/pull/49) merged |
| [Prove PROV-SEM weak completeness for SemValid](https://nasa-jpl-demo.devinenterprise.com/sessions/c8e95841e0f7413787c7c51227afd401) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | suspended (inactivity) | 25m | 19.1 | 68 sh / 16 ed / 31 rd / 7 git / 5 mcp / 15+6 msg | [#63](https://github.com/Open-MBEE/prov.lean/pull/63) merged |
| [Read remaining PROV-O terms in codec](https://nasa-jpl-demo.devinenterprise.com/sessions/72be6ab708484d2d8a92bcb15f95affb) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 22m | 23.3 | 60 sh / 15 ed / 23 rd / 1 git / 0 mcp / 4+3 msg | [#46](https://github.com/Open-MBEE/prov.lean/pull/46) merged |
| [Define PROV-SEM formula language](https://nasa-jpl-demo.devinenterprise.com/sessions/b20dd77e721e4e77a025ed33e9e89fea) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 19m | 20.4 | 39 sh / 12 ed / 12 rd / 1 git / 5 mcp / 6+1 msg | [#44](https://github.com/Open-MBEE/prov.lean/pull/44) merged |
| [Remove NormalFormOK from weak completeness](https://nasa-jpl-demo.devinenterprise.com/sessions/10a3c0615b70425ebc93e2c7f6575b7f) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 17m | 13.3 | 35 sh / 7 ed / 13 rd / 1 git / 0 mcp / 2+1 msg | [#45](https://github.com/Open-MBEE/prov.lean/pull/45) merged |
| [Integrate coverage lanes into prov-check and blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/ee4eb330790c4395baf8ecd50f9cfb4c) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 09:29 | suspended (inactivity) | 15m | 15.5 | 57 sh / 10 ed / 19 rd / 2 git / 0 mcp / 2+1 msg | [#48](https://github.com/Open-MBEE/prov.lean/pull/48) merged |
| [Move W3C issue draft into issues/ files](https://nasa-jpl-demo.devinenterprise.com/sessions/6314327a83c945ad8e41f585fa4c9fb6) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | suspended (inactivity) | 13m | 8.6 | 27 sh / 6 ed / 9 rd / 2 git / 0 mcp / 6+2 msg | [#62](https://github.com/Open-MBEE/prov.lean/pull/62) merged |
| [Check PROV-DM reserved attribute placement](https://nasa-jpl-demo.devinenterprise.com/sessions/35389fe0478a4a56b0bbd82a7420c949) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 12m | 14.7 | 46 sh / 12 ed / 11 rd / 1 git / 0 mcp / 3+3 msg | [#42](https://github.com/Open-MBEE/prov.lean/pull/42) merged |
| [Define PROV-CONSTRAINTS instance equivalence](https://nasa-jpl-demo.devinenterprise.com/sessions/48bf42516c8e40c7968396cf8b030fbf) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 12m | 10.3 | 33 sh / 12 ed / 7 rd / 1 git / 0 mcp / 2+1 msg | [#43](https://github.com/Open-MBEE/prov.lean/pull/43) merged |
| [Prove PROV-SEM soundness of remaining inferences](https://nasa-jpl-demo.devinenterprise.com/sessions/83281d6385044bc7b1740b8e3950c48a) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 9m | 8.0 | 24 sh / 6 ed / 4 rd / 1 git / 0 mcp / 2+1 msg | [#41](https://github.com/Open-MBEE/prov.lean/pull/41) merged |

### engineering-foundation-architecture — 15 sessions, 7h45 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Clarify AI Readiness Purpose](https://nasa-jpl-demo.devinenterprise.com/sessions/5b6b278b67a846b9a835146ce5796fd5) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-15 17:19 | suspended (inactivity) | 1h05 | 73.9 † | 147 sh / 44 ed / 45 rd / 11 git / 23 mcp / 28+8 msg | [#86](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/86) merged |
| [Plan SysMLv2 SBVR Tooling](https://nasa-jpl-demo.devinenterprise.com/sessions/bbe86616453249d8a0677d78203a76d3) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-03 12:06 | suspended (inactivity) | 52m | 54.6 † | 59 sh / 7 ed / 12 rd / 8 git / 0 mcp / 25+16 msg | [#88](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/88) merged, [#95](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/95) merged |
| [Add Flexo MMS Architecture Repositories](https://nasa-jpl-demo.devinenterprise.com/sessions/409462df998944fd9dbd3b0e64b57b65) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-18 13:43 | suspended (inactivity) | 20m | 7.4 | 28 sh / 4 ed / 10 rd / 2 git / 0 mcp / 7+2 msg | [#108](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/108) merged |
| [Update leanCurl and TLS repository references](https://nasa-jpl-demo.devinenterprise.com/sessions/285ee1039b66425f868d48bb50fc92e2) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-18 08:45 | suspended (inactivity) | 14m | 6.3 | 22 sh / 5 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#105](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/105) merged |
| [Configure Install Script for Multiple GitHub Hosts](https://nasa-jpl-demo.devinenterprise.com/sessions/6aaa4b30920f4849a8fb31a0330db7b4) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-16 12:21 | suspended (inactivity) | 13m | 12.4 | 24 sh / 7 ed / 2 rd / 11 git / 3 mcp / 18+8 msg | [#89](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/89) merged, [#90](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/90) merged, [#91](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/91) merged, [#92](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/92) merged |
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 11m | 75.0 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Add the whitepaper to the site header bar](https://nasa-jpl-demo.devinenterprise.com/sessions/544325604dd745e7826016a87bb559dd) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 45m | 19.8 | 41 sh / 4 ed / 13 rd / 2 git / 0 mcp / 3+1 msg | [#97](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/97) merged |
| [State R9 in tier 4's one-sentence summary](https://nasa-jpl-demo.devinenterprise.com/sessions/b81ba6680c244d51835408ac51b01045) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 25m | 4.9 | 14 sh / 3 ed / 6 rd / 1 git / 0 mcp / 2+1 msg | [#99](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/99) merged |
| [Explain kinds of quantity and PKC in 1.3.3](https://nasa-jpl-demo.devinenterprise.com/sessions/c2aae4e4cb5647ec988fcd2c833c4c9c) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:55 | suspended (inactivity) | 21m | 8.1 | 26 sh / 1 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#96](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/96) merged |
| [Show provenance across the stack and explain its benefits](https://nasa-jpl-demo.devinenterprise.com/sessions/0d42a400ee984ad2800a4fec67538857) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 16:03 | suspended (inactivity) | 20m | 20.0 | 71 sh / 9 ed / 34 rd / 1 git / 0 mcp / 3+2 msg | [#98](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/98) merged |
| [Rephrase "says what it does not know" as provenance](https://nasa-jpl-demo.devinenterprise.com/sessions/5d86ec802cf64c62aa53bdad3430a1fe) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:10 | suspended (inactivity) | 17m | 9.2 | 38 sh / 7 ed / 18 rd / 1 git / 0 mcp / 8+7 msg | [#94](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/94) merged |
| [Fix the site's whitepaper link and placement](https://nasa-jpl-demo.devinenterprise.com/sessions/bc36e21847854f32ba8d942e8b6a4445) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:09 | suspended (inactivity) | 16m | 5.8 | 24 sh / 5 ed / 4 rd / 2 git / 0 mcp / 3+1 msg | [#93](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/93) merged |
| [Add cyber-security chapter to AI readiness blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/1fc7119c103f48f3afc23ae7aa02d30f) | Open-MBEE/engineering-foundation-architecture | child of 5b6b278b | ultra | 11-16 11:03 | suspended (inactivity) | 45m | 45.4 | 89 sh / 5 ed / 25 rd / 3 git / 35 mcp / 43+13 msg | [#87](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/87) merged |
| [Repoint EFA MockGateway to TlsServer package](https://nasa-jpl-demo.devinenterprise.com/sessions/b104bb5d70394b2ba037fd6f12f8f5e4) | Open-MBEE/engineering-foundation-architecture | child of 91b42ff1 | ultra | 11-18 08:57 | suspended (inactivity) | 1h21 | 25.1 | 64 sh / 21 ed / 18 rd / 9 git / 9 mcp / 13+6 msg | [#106](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/106) merged |
| [Fetch public tls-server.lean from github.com on the mirror](https://nasa-jpl-demo.devinenterprise.com/sessions/8a1b0dff8bd44c2d92f13b981e76bce8) | Open-MBEE/engineering-foundation-architecture | child of b104bb5d | ultra | 11-18 12:44 | suspended (inactivity) | 13m | 3.6 | 12 sh / 3 ed / 3 rd / 2 git / 0 mcp / 2+1 msg | [#107](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/107) merged |

### pacti.lean — 4 sessions, 2h42 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 1h22 | 204.2 † | 33 sh / 10 ed / 6 rd / 7 git / 2 mcp / 13+4 msg | [#31](https://github.com/Open-MBEE/pacti.lean/pull/31) merged, [#32](https://github.com/Open-MBEE/pacti.lean/pull/32) merged |
| [Prove GR(1) integer split never falls back](https://nasa-jpl-demo.devinenterprise.com/sessions/4699594c5c194e649e2117ef272ed589) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 1h10 | 19.0 † | 29 sh / 6 ed / 9 rd / 3 git / 0 mcp / 4+2 msg | [#33](https://github.com/Open-MBEE/pacti.lean/pull/33) merged |
| [Add SMT-LIB gr1_machine section to GR(1) JSON](https://nasa-jpl-demo.devinenterprise.com/sessions/8ed3105b93b0433ea1c59a0baab863bf) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 1m | 22.4 † | 7 sh / 3 ed / 0 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Review pacti.lean PR #20](https://nasa-jpl-demo.devinenterprise.com/sessions/3ed80fb1860a447286307ff974f8707a) | Open-MBEE/pacti.lean | child of 58f12c50 | ultra | 11-14 21:03 | suspended (inactivity) | 7m | 17.1 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

### fprime-lean-sysmlv2-example — 1 session, 2h06 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Define Packet Buffer Algebra Module](https://nasa-jpl-demo.devinenterprise.com/sessions/4cf276f055ad4d8b859f8bfd5b38f5e6) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-16 13:37 | suspended (inactivity) | 2h06 | 33.8 | 114 sh / 22 ed / 34 rd / 3 git / 0 mcp / 20+13 msg | [#122](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/122) merged |

### git-remote-sync.lean — 5 sessions, 2h04 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Sync Branches Before Tagging](https://nasa-jpl-demo.devinenterprise.com/sessions/ed1242ca218545928351c713645feabb) | Open-MBEE/git-remote-sync.lean, Open-MBEE/tasktree.lean | webapp | ultra | 11-19 08:48 | suspended (inactivity) | 49m | 22.9 | 85 sh / 17 ed / 40 rd / 4 git / 0 mcp / 12+5 msg | [#73](https://github.com/Open-MBEE/git-remote-sync.lean/pull/73) merged, [#74](https://github.com/Open-MBEE/git-remote-sync.lean/pull/74) merged, [tasktree.lean #6](https://github.com/Open-MBEE/tasktree.lean/pull/6) merged |
| [Sync tags across remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/215036cfa81740cca3ba8411a0d3c6e6) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-17 11:05 | suspended (inactivity) | 33m | 24.6 | 111 sh / 34 ed / 66 rd / 6 git / 9 mcp / 17+9 msg | [#69](https://github.com/Open-MBEE/git-remote-sync.lean/pull/69) merged, [#70](https://github.com/Open-MBEE/git-remote-sync.lean/pull/70) merged |
| [Implement git-remote-sync Release](https://nasa-jpl-demo.devinenterprise.com/sessions/0ef9f1e01998486785d96e8e7e3c8cd1) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-19 08:42 | suspended (inactivity) | 27m | 28.9 | 66 sh / 13 ed / 52 rd / 4 git / 10 mcp / 16+8 msg | [#72](https://github.com/Open-MBEE/git-remote-sync.lean/pull/72) merged |
| [Fix git-remote-sync release uploads](https://nasa-jpl-demo.devinenterprise.com/sessions/07cccc25a05d47678d22e81763c57bff) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-17 13:34 | suspended (inactivity) | 10m | 3.5 | 21 sh / 4 ed / 1 rd / 4 git / 4 mcp / 5+2 msg | [#71](https://github.com/Open-MBEE/git-remote-sync.lean/pull/71) merged |
| [Support Current Branch Default](https://nasa-jpl-demo.devinenterprise.com/sessions/269fec9073a148178cf67f89a18189ae) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-15 17:10 | suspended (inactivity) | 2m | 25.7 † | 8 sh / 2 ed / 1 rd / 0 git / 4 mcp / 5+1 msg |  |

### tasktree.lean — 3 sessions, 1h52 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Build Interactive Lean Work Tracker Extension](https://nasa-jpl-demo.devinenterprise.com/sessions/7cbea5a8f2a2478bb2a3c93e381371ee) | Open-MBEE/tasktree.lean | webapp | ultra | 11-17 13:57 | suspended (inactivity) | 1h00 | 105.2 | 170 sh / 54 ed / 84 rd / 7 git / 21 mcp / 32+14 msg | [#1](https://github.com/Open-MBEE/tasktree.lean/pull/1) merged |
| [Make tasktree.lean release workflow run on both GitHub instances](https://nasa-jpl-demo.devinenterprise.com/sessions/0f6cdc5c40f943cba761a6a5afc4f007) | Open-MBEE/engineering-foundation-architecture, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 14:57 | suspended (inactivity) | 34m | 38.5 | 105 sh / 33 ed / 29 rd / 7 git / 3 mcp / 17+6 msg | [#3](https://github.com/Open-MBEE/tasktree.lean/pull/3) merged, [#4](https://github.com/Open-MBEE/tasktree.lean/pull/4) merged, [#5](https://github.com/Open-MBEE/tasktree.lean/pull/5) merged, [engineering-foundation-architecture #109](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/109) merged |
| [Fix tasktree.lean review findings and live YAML error](https://nasa-jpl-demo.devinenterprise.com/sessions/2926ee8f55d640f19aac391091842a61) | Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 08:15 | suspended (inactivity) | 17m | 18.7 | 51 sh / 15 ed / 27 rd / 10 git / 0 mcp / 5+1 msg | [#2](https://github.com/Open-MBEE/tasktree.lean/pull/2) merged |

### PropertyKindCalculus — 5 sessions, 1h01 working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/065154dfbba74c60b442cce1243fed73) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-16 06:01 | suspended (inactivity) | 0m | 1.3 | 1 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
| [Remediate PropertyKindCalculus Scan Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/3330babe2d574d94af00602430577c5e) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-19 06:01 | suspended (inactivity) | 0m | 1.1 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/a9d98dc15e414418b6aca1c667153f39) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-18 06:01 | suspended (inactivity) | 0m | 1.9 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/ffed1c3782c14075932496bd4293a2ad) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-17 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
| [Add ISO 80000-1 and VIM reference chapter to PKC](https://nasa-jpl-demo.devinenterprise.com/sessions/ebfe9e8ade7b430db3b8fb9d6369cd2f) | nasa-jpl/PropertyKindCalculus | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 59m | 25.2 | 70 sh / 7 ed / 33 rd / 6 git / 0 mcp / 7+2 msg | [#112](https://github.com/nasa-jpl/PropertyKindCalculus/pull/112) merged, [#113](https://github.com/nasa-jpl/PropertyKindCalculus/pull/113) merged |

### face.lean — 2 sessions, 41m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Face.lean SBVR-to-SMT Pilot](https://nasa-jpl-demo.devinenterprise.com/sessions/354975b540f143a79fb6872fd23e2a96) | Open-MBEE/face.lean | webapp | ultra | 11-18 14:11 | suspended (inactivity) | 10m | 14.6 | 49 sh / 5 ed / 15 rd / 3 git / 3 mcp / 13+5 msg | [#50](https://github.com/Open-MBEE/face.lean/pull/50) merged |
| [Port face.lean build workflow to self-hosted runners](https://nasa-jpl-demo.devinenterprise.com/sessions/aaf8d68c8ca543e6ab473926789100c1) | Open-MBEE/face.lean | child of 354975b5 | ultra | 11-18 15:22 | suspended (inactivity) | 31m | 13.9 | 25 sh / 4 ed / 3 rd / 2 git / 0 mcp / 4+2 msg | [#51](https://github.com/Open-MBEE/face.lean/pull/51) merged |

### (no repository) — 7 sessions, 35m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue Devin Session Work](https://nasa-jpl-demo.devinenterprise.com/sessions/273841e49ee34e0e888a4c28aafbe76f) |  | webapp | ultra | 11-19 11:59 | suspended (inactivity) | 12m | 10.3 | 7 sh / 0 ed / 1 rd / 3 git / 13 mcp / 7+1 msg |  |
| [Generate Weekly Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/4ee3059bc32d4a7895697d4f0ad8dd6d) |  | automation | ultra | 11-16 00:09 | suspended (inactivity) | 5m | 1.9 | 3 sh / 0 ed / 0 rd / 0 git / 1374 mcp / 2+1 msg |  |
| [Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/d905e41b02d341e8943dd77c8f01d169) |  | automation | ultra | 11-17 00:05 | suspended (inactivity) | 4m | 1.8 | 4 sh / 0 ed / 2 rd / 0 git / 396 mcp / 2+1 msg |  |
| [Generate Nicolas's Daily Devin Report](https://nasa-jpl-demo.devinenterprise.com/sessions/77213d376a3341a992521ff3893d65a7) |  | automation | ultra | 11-18 00:05 | suspended (inactivity) | 4m | 2.5 | 4 sh / 0 ed / 0 rd / 0 git / 586 mcp / 2+1 msg |  |
| [Nicolas Rouquette Daily Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/1f6722c027c6406a8ce8d532e3945c38) |  | automation | ultra | 11-19 00:05 | suspended (inactivity) | 3m | 2.0 | 3 sh / 0 ed / 1 rd / 0 git / 485 mcp / 2+1 msg |  |
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/c81e1c3f2280459287802f8df41fd26e) |  | automation | ultra | 11-16 00:05 | suspended (inactivity) | 3m | 1.8 | 3 sh / 0 ed / 0 rd / 0 git / 547 mcp / 2+1 msg |  |
| [Locate Devin API v3 token](https://nasa-jpl-demo.devinenterprise.com/sessions/b77959c53303444f9a43d19e84625eae) |  | webapp | ultra | 11-17 14:03 | suspended (inactivity) | 1m | 4.5 | 4 sh / 0 ed / 1 rd / 0 git / 4 mcp / 3+2 msg |  |

### nfr.workboard — 1 session, 26m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Set up nfr.workboard data repository layout](https://nasa-jpl-demo.devinenterprise.com/sessions/1ad77f6fe10a406c97b419296dbf6a97) | Open-MBEE/nfr.workboard, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 07:51 | suspended (inactivity) | 26m | 39.7 | 97 sh / 31 ed / 12 rd / 8 git / 0 mcp / 14+6 msg | [#1](https://github.com/Open-MBEE/nfr.workboard/pull/1) merged, [#2](https://github.com/Open-MBEE/nfr.workboard/pull/2) merged, [tasktree.lean #7](https://github.com/Open-MBEE/tasktree.lean/pull/7) merged |

### tls-server.lean — 1 session, 18m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Find TLR Mockup Repository](https://nasa-jpl-demo.devinenterprise.com/sessions/91b42ff1627a47dcab79badf39e6243a) | Open-MBEE/leanCurl, Open-MBEE/tls-server.lean | webapp | ultra | 11-18 08:19 | suspended (inactivity) | 18m | 25.2 | 62 sh / 26 ed / 15 rd / 10 git / 5 mcp / 22+10 msg | [leanCurl #4](https://github.com/Open-MBEE/leanCurl/pull/4) closed, [#1](https://github.com/Open-MBEE/tls-server.lean/pull/1) merged, [#2](https://github.com/Open-MBEE/tls-server.lean/pull/2) merged, [#3](https://github.com/Open-MBEE/tls-server.lean/pull/3) merged |

### devin-automation — 1 session, 11m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Keep devin-automation Website Updated](https://nasa-jpl-demo.devinenterprise.com/sessions/c7a14b6341a34d05ac0665757b51e6e4) | Open-MBEE/devin-automation | webapp | ultra | 11-19 15:13 | running (working) | 11m | 3.3 ‡ | 13 sh / 0 ed / 7 rd / 0 git / 38 mcp / 3+2 msg |  |

### (Devin housekeeping) — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/b1d5102c55af45cab722945b4ce0a4c0) |  | webapp | normal | 11-17 12:52 | suspended | 5m | 0.0 | 33 sh / 8 ed / 5 rd / 0 git / 44 mcp / 1+2 msg |  |

### (Devin environment) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix Open-MBEE Blueprint Failure](https://nasa-jpl-demo.devinenterprise.com/sessions/3d66b7b6454a4ddf9c957bcaa71dd1c7) |  | webapp | ultra | 11-17 13:46 | suspended (inactivity) | 4m | 3.4 | 17 sh / 1 ed / 1 rd / 0 git / 0 mcp / 3+1 msg |  |

### mars.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (window) | ACUs | Actions (window) | PRs opened (window) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 0m | 3588.7 † | 2 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

## Day by day

### Monday 2026-11-16

29 sessions across 10 projects, 25h56 of working time, 20 PRs opened.

#### OpenSysML — 7 sessions, 16h23 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 13h23 | 4868.4 † | ≥489 sh / 56 ed / 4 rd / 23 git / 3 mcp / 43+12 msg |  |
| [Make compliance row 28-name-resolution:81 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/9eae7d55903746d1a212b6005ae0e586) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 1h44 | 48.5 † | 51 sh / 7 ed / 3 rd / 9 git / 1 mcp / 7+3 msg |  |
| [Make compliance row 15-state-machine:94 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/127f7be0f3b5458cbcf2b6eedaa5f862) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 42m | 23.1 † | 10 sh / 3 ed / 5 rd / 4 git / 6 mcp / 2+1 msg |  |
| [Make compliance row 17-expression-evaluation:25 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/49d0e2e74ead418995773a1f6a0403a1) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (user_request) [archived] | 14m | 37.5 † | 17 sh / 6 ed / 1 rd / 3 git / 0 mcp / 3+1 msg | [#2326](https://github.com/Open-MBEE/OpenSysML/pull/2326) merged |
| [Make compliance row 23-static-typing:29 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/5d48c28b9d274256bebd689770f7a4c3) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 13m | 25.9 † | 37 sh / 2 ed / 8 rd / 0 git / 4 mcp / 17+11 msg |  |
| [Make compliance row 08-instantiation:23 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/7e4ab05d47b540e8b7877c492a54e615) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 5m | 18.6 † | 18 sh / 2 ed / 3 rd / 0 git / 0 mcp / 6+3 msg |  |
| [Make compliance row 26-usage-prefixes:8 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/e7e976d3e710492d80dc96a4af63d60b) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 0m | 32.8 † | 16 sh / 2 ed / 0 rd / 6 git / 0 mcp / 1+0 msg |  |

#### engineering-foundation-architecture — 10 sessions, 5h13 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Clarify AI Readiness Purpose](https://nasa-jpl-demo.devinenterprise.com/sessions/5b6b278b67a846b9a835146ce5796fd5) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-15 17:19 | suspended (inactivity) | 1h05 | 73.9 † | 147 sh / 44 ed / 45 rd / 11 git / 23 mcp / 28+8 msg | [#86](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/86) merged |
| [Plan SysMLv2 SBVR Tooling](https://nasa-jpl-demo.devinenterprise.com/sessions/bbe86616453249d8a0677d78203a76d3) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-03 12:06 | suspended (inactivity) | 52m | 54.6 † | 59 sh / 7 ed / 12 rd / 8 git / 0 mcp / 25+16 msg | [#88](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/88) merged, [#95](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/95) merged |
| [Configure Install Script for Multiple GitHub Hosts](https://nasa-jpl-demo.devinenterprise.com/sessions/6aaa4b30920f4849a8fb31a0330db7b4) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-16 12:21 | suspended (inactivity) | 13m | 12.4 | 24 sh / 7 ed / 2 rd / 11 git / 3 mcp / 18+8 msg | [#89](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/89) merged, [#90](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/90) merged, [#91](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/91) merged, [#92](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/92) merged |
| [Add the whitepaper to the site header bar](https://nasa-jpl-demo.devinenterprise.com/sessions/544325604dd745e7826016a87bb559dd) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 34m | 19.8 | 41 sh / 4 ed / 13 rd / 2 git / 0 mcp / 3+1 msg | [#97](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/97) merged |
| [State R9 in tier 4's one-sentence summary](https://nasa-jpl-demo.devinenterprise.com/sessions/b81ba6680c244d51835408ac51b01045) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 25m | 4.9 | 14 sh / 3 ed / 6 rd / 1 git / 0 mcp / 2+1 msg | [#99](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/99) merged |
| [Explain kinds of quantity and PKC in 1.3.3](https://nasa-jpl-demo.devinenterprise.com/sessions/c2aae4e4cb5647ec988fcd2c833c4c9c) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:55 | suspended (inactivity) | 21m | 8.1 | 26 sh / 1 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#96](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/96) merged |
| [Show provenance across the stack and explain its benefits](https://nasa-jpl-demo.devinenterprise.com/sessions/0d42a400ee984ad2800a4fec67538857) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 16:03 | suspended (inactivity) | 20m | 20.0 | 71 sh / 9 ed / 34 rd / 1 git / 0 mcp / 3+2 msg | [#98](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/98) merged |
| [Rephrase "says what it does not know" as provenance](https://nasa-jpl-demo.devinenterprise.com/sessions/5d86ec802cf64c62aa53bdad3430a1fe) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:10 | suspended (inactivity) | 17m | 9.2 | 38 sh / 7 ed / 18 rd / 1 git / 0 mcp / 8+7 msg | [#94](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/94) merged |
| [Fix the site's whitepaper link and placement](https://nasa-jpl-demo.devinenterprise.com/sessions/bc36e21847854f32ba8d942e8b6a4445) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:09 | suspended (inactivity) | 16m | 5.8 | 24 sh / 5 ed / 4 rd / 2 git / 0 mcp / 3+1 msg | [#93](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/93) merged |
| [Add cyber-security chapter to AI readiness blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/1fc7119c103f48f3afc23ae7aa02d30f) | Open-MBEE/engineering-foundation-architecture | child of 5b6b278b | ultra | 11-16 11:03 | suspended (inactivity) | 45m | 45.4 | 89 sh / 5 ed / 25 rd / 3 git / 35 mcp / 43+13 msg | [#87](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/87) merged |

#### pacti.lean — 4 sessions, 2h26 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Evaluate GR(1) contract support and examples](https://nasa-jpl-demo.devinenterprise.com/sessions/1a082cb6299b40e98f26087c72a4acdb) | Open-MBEE/mars.lean, Open-MBEE/pacti.lean | webapp | ultra | 11-13 19:46 | suspended (inactivity) | 1h22 | 204.2 † | 33 sh / 10 ed / 6 rd / 7 git / 2 mcp / 13+4 msg | [#31](https://github.com/Open-MBEE/pacti.lean/pull/31) merged, [#32](https://github.com/Open-MBEE/pacti.lean/pull/32) merged |
| [Prove GR(1) integer split never falls back](https://nasa-jpl-demo.devinenterprise.com/sessions/4699594c5c194e649e2117ef272ed589) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 55m | 19.0 † | 29 sh / 6 ed / 9 rd / 3 git / 0 mcp / 4+2 msg | [#33](https://github.com/Open-MBEE/pacti.lean/pull/33) merged |
| [Add SMT-LIB gr1_machine section to GR(1) JSON](https://nasa-jpl-demo.devinenterprise.com/sessions/8ed3105b93b0433ea1c59a0baab863bf) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 1m | 22.4 † | 7 sh / 3 ed / 0 rd / 2 git / 0 mcp / 2+1 msg |  |
| [Review pacti.lean PR #20](https://nasa-jpl-demo.devinenterprise.com/sessions/3ed80fb1860a447286307ff974f8707a) | Open-MBEE/pacti.lean | child of 58f12c50 | ultra | 11-14 21:03 | suspended (inactivity) | 7m | 17.1 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### fprime-lean-sysmlv2-example — 1 session, 1h34 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Define Packet Buffer Algebra Module](https://nasa-jpl-demo.devinenterprise.com/sessions/4cf276f055ad4d8b859f8bfd5b38f5e6) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-16 13:37 | suspended (inactivity) | 1h34 | 33.8 | 114 sh / 22 ed / 34 rd / 3 git / 0 mcp / 20+13 msg | [#122](https://github.com/Open-MBEE/fprime-lean-sysmlv2-example/pull/122) merged |

#### (no repository) — 2 sessions, 8m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Weekly Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/4ee3059bc32d4a7895697d4f0ad8dd6d) |  | automation | ultra | 11-16 00:09 | suspended (inactivity) | 5m | 1.9 | 3 sh / 0 ed / 0 rd / 0 git / 1374 mcp / 2+1 msg |  |
| [Generate Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/c81e1c3f2280459287802f8df41fd26e) |  | automation | ultra | 11-16 00:05 | suspended (inactivity) | 3m | 1.8 | 3 sh / 0 ed / 0 rd / 0 git / 547 mcp / 2+1 msg |  |

#### L4YAML — 1 session, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Harden L4YAML Fork PR Security](https://nasa-jpl-demo.devinenterprise.com/sessions/d26d0b63cf634519b5e45cd1b974ec7e) | nasa-jpl/L4YAML | webapp | ultra | 11-16 10:39 | suspended (inactivity) | 3m | 5.1 | 12 sh / 3 ed / 1 rd / 1 git / 0 mcp / 5+2 msg | [#346](https://github.com/nasa-jpl/L4YAML/pull/346) merged |

#### prov.lean — 1 session, 3m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/prov.lean project](https://nasa-jpl-demo.devinenterprise.com/sessions/f40ced3704e14378b9163fb0bee3a72d) | Open-MBEE/prov.lean | webapp | ultra | 11-11 21:33 | suspended (inactivity) | 3m | 863.1 † | 9 sh / 2 ed / 0 rd / 0 git / 0 mcp / 6+4 msg |  |

#### git-remote-sync.lean — 1 session, 2m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Support Current Branch Default](https://nasa-jpl-demo.devinenterprise.com/sessions/269fec9073a148178cf67f89a18189ae) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-15 17:10 | suspended (inactivity) | 2m | 25.7 † | 8 sh / 2 ed / 1 rd / 0 git / 4 mcp / 5+1 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/065154dfbba74c60b442cce1243fed73) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-16 06:01 | suspended (inactivity) | 0m | 1.3 | 1 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |

#### SBVR.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 0m | 2191.0 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+0 msg |  |

### Tuesday 2026-11-17

24 sessions across 14 projects, 20h50 of working time, 27 PRs opened.

#### L4YAML — 3 sessions, 8h21 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 6h30 | 2060.8 † | 399 sh / 84 ed / 2 rd / 46 git / 7 mcp / 25+8 msg | [#350](https://github.com/nasa-jpl/L4YAML/pull/350) merged, [#351](https://github.com/nasa-jpl/L4YAML/pull/351) merged, [#352](https://github.com/nasa-jpl/L4YAML/pull/352) merged, [#353](https://github.com/nasa-jpl/L4YAML/pull/353) merged |
| [L4YAML 7.7 stream R12: Row 12 item 344 flip (then [82], [210]/[211])](https://nasa-jpl-demo.devinenterprise.com/sessions/49750a06a48d41b1852199f560a0d9fc) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 10-23 10:34 | suspended (inactivity) | 0m | 4151.6 † | 2 sh / 0 ed / 0 rd / 3 git / 0 mcp / 1+0 msg |  |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 1h49 | 132.3 † | 80 sh / 19 ed / 27 rd / 14 git / 3 mcp / 13+6 msg | [#349](https://github.com/nasa-jpl/L4YAML/pull/349) merged, [L4YAML.FGM #1](https://github.com/Open-MBEE/L4YAML.FGM/pull/1) merged, [FGM #1](https://github.com/Open-MBEE/FGM/pull/1) merged |

#### OpenSysML — 3 sessions, 5h37 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 5h06 | 4868.4 † | ≥176 sh / 33 ed / 22 rd / 24 git / 6 mcp / 15+3 msg |  |
| [Make compliance row 28-name-resolution:81 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/9eae7d55903746d1a212b6005ae0e586) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) [archived] | 29m | 48.5 † | 7 sh / 3 ed / 0 rd / 2 git / 0 mcp / 1+0 msg |  |
| [Make compliance row 18-kerml-function-library:619 faithful](https://nasa-jpl-demo.devinenterprise.com/sessions/748cc6cd3fe74a6b9b3f611d8b3374b4) | Open-MBEE/OpenSysML | child of 18ad47ad | ultra | 11-15 06:44 | suspended (inactivity) | 1m | 9.5 † | 4 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

#### SBVR.lean — 1 session, 1h54 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 1h54 | 2191.0 † | 202 sh / 82 ed / 27 rd / 17 git / 14 mcp / 44+12 msg | [#52](https://github.com/Open-MBEE/SBVR.lean/pull/52) merged, [#54](https://github.com/Open-MBEE/SBVR.lean/pull/54) merged, [#55](https://github.com/Open-MBEE/SBVR.lean/pull/55) merged, [#56](https://github.com/Open-MBEE/SBVR.lean/pull/56) merged, [engineering-foundation-architecture #103](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/103) merged, [#57](https://github.com/Open-MBEE/SBVR.lean/pull/57) merged, [engineering-foundation-architecture #104](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/104) merged |

#### qvts — 3 sessions, 1h35 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE/qvts task](https://nasa-jpl-demo.devinenterprise.com/sessions/d8b78a749ee346b88fb67aabfc7b2683) | Open-MBEE/qvts | webapp | ultra | 11-17 09:15 | suspended (inactivity) | 1h01 | 14.3 | 36 sh / 11 ed / 22 rd / 4 git / 3 mcp / 5+2 msg | [#110](https://github.com/Open-MBEE/qvts/pull/110) merged |
| [Fix qvts gh-pages publishing workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/1d8450f164ef48f08fd4d0b31d65cd8e) | Open-MBEE/qvts | webapp | ultra | 11-17 13:46 | running (waiting_for_user) | 28m | 101.5 ‡ | 39 sh / 9 ed / 14 rd / 11 git / 0 mcp / 21+10 msg | [#111](https://github.com/Open-MBEE/qvts/pull/111) merged, [#112](https://github.com/Open-MBEE/qvts/pull/112) merged, [#113](https://github.com/Open-MBEE/qvts/pull/113) merged, [#114](https://github.com/Open-MBEE/qvts/pull/114) merged |
| [Re-record QVTS synthetic ledgers at OpenSysML 2143](https://nasa-jpl-demo.devinenterprise.com/sessions/fa1c25f55b4043c4a3d51f66694b6f24) | Open-MBEE/qvts | child of 7459e04e | ultra | 11-11 21:32 | suspended (inactivity) | 5m | 21.5 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### git-remote-sync.lean — 2 sessions, 44m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Sync tags across remotes](https://nasa-jpl-demo.devinenterprise.com/sessions/215036cfa81740cca3ba8411a0d3c6e6) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-17 11:05 | suspended (inactivity) | 33m | 24.6 | 111 sh / 34 ed / 66 rd / 6 git / 9 mcp / 17+9 msg | [#69](https://github.com/Open-MBEE/git-remote-sync.lean/pull/69) merged, [#70](https://github.com/Open-MBEE/git-remote-sync.lean/pull/70) merged |
| [Fix git-remote-sync release uploads](https://nasa-jpl-demo.devinenterprise.com/sessions/07cccc25a05d47678d22e81763c57bff) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-17 13:34 | suspended (inactivity) | 10m | 3.5 | 21 sh / 4 ed / 1 rd / 4 git / 4 mcp / 5+2 msg | [#71](https://github.com/Open-MBEE/git-remote-sync.lean/pull/71) merged |

#### tasktree.lean — 1 session, 37m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Build Interactive Lean Work Tracker Extension](https://nasa-jpl-demo.devinenterprise.com/sessions/7cbea5a8f2a2478bb2a3c93e381371ee) | Open-MBEE/tasktree.lean | webapp | ultra | 11-17 13:57 | suspended (inactivity) | 37m | 105.2 | 130 sh / 46 ed / 72 rd / 0 git / 4 mcp / 15+7 msg |  |

#### prov.lean — 2 sessions, 34m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE prov.lean work](https://nasa-jpl-demo.devinenterprise.com/sessions/6cefe1a7b093446e92a78d16dc8350e7) | Open-MBEE/prov.lean | webapp | ultra | 11-17 12:59 | suspended (inactivity) | 29m | 109.5 | 103 sh / 16 ed / 27 rd / 7 git / 1 mcp / 21+11 msg | [#36](https://github.com/Open-MBEE/prov.lean/pull/36) merged, [#38](https://github.com/Open-MBEE/prov.lean/pull/38) merged, [#39](https://github.com/Open-MBEE/prov.lean/pull/39) merged, [#40](https://github.com/Open-MBEE/prov.lean/pull/40) merged |
| [Fix Lean CI Action Restriction](https://nasa-jpl-demo.devinenterprise.com/sessions/8812e34f42cf4381be6288031da7c436) | Open-MBEE/prov.lean | webapp | ultra | 11-17 13:48 | suspended (inactivity) | 4m | 5.2 | 19 sh / 2 ed / 3 rd / 1 git / 0 mcp / 5+1 msg | [#37](https://github.com/Open-MBEE/prov.lean/pull/37) merged |

#### fprime-lean-sysmlv2-example — 1 session, 32m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Define Packet Buffer Algebra Module](https://nasa-jpl-demo.devinenterprise.com/sessions/4cf276f055ad4d8b859f8bfd5b38f5e6) | Open-MBEE/fprime-lean-sysmlv2-example | webapp | ultra | 11-16 13:37 | suspended (inactivity) | 32m | 33.8 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### engineering-foundation-architecture — 2 sessions, 21m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Write Endurance Autonomy White Paper](https://nasa-jpl-demo.devinenterprise.com/sessions/1ebeb4597f2a49a5a2c4d37d0e6ae520) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-12 08:08 | suspended (inactivity) | 11m | 75.0 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Add the whitepaper to the site header bar](https://nasa-jpl-demo.devinenterprise.com/sessions/544325604dd745e7826016a87bb559dd) | Open-MBEE/engineering-foundation-architecture | child of 1fc7119c | ultra | 11-16 15:58 | suspended (inactivity) | 10m | 19.8 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### pacti.lean — 1 session, 15m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Prove GR(1) integer split never falls back](https://nasa-jpl-demo.devinenterprise.com/sessions/4699594c5c194e649e2117ef272ed589) | Open-MBEE/pacti.lean | child of 1a082cb6 | ultra | 11-15 21:12 | suspended (inactivity) | 15m | 19.0 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |

#### (no repository) — 2 sessions, 6m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Daily Devin Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/d905e41b02d341e8943dd77c8f01d169) |  | automation | ultra | 11-17 00:05 | suspended (inactivity) | 4m | 1.8 | 4 sh / 0 ed / 2 rd / 0 git / 396 mcp / 2+1 msg |  |
| [Locate Devin API v3 token](https://nasa-jpl-demo.devinenterprise.com/sessions/b77959c53303444f9a43d19e84625eae) |  | webapp | ultra | 11-17 14:03 | suspended (inactivity) | 1m | 4.5 | 4 sh / 0 ed / 1 rd / 0 git / 4 mcp / 3+2 msg |  |

#### (Devin housekeeping) — 1 session, 5m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Nightly memory refinement](https://nasa-jpl-demo.devinenterprise.com/sessions/b1d5102c55af45cab722945b4ce0a4c0) |  | webapp | normal | 11-17 12:52 | suspended | 5m | 0.0 | 33 sh / 8 ed / 5 rd / 0 git / 44 mcp / 1+2 msg |  |

#### (Devin environment) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix Open-MBEE Blueprint Failure](https://nasa-jpl-demo.devinenterprise.com/sessions/3d66b7b6454a4ddf9c957bcaa71dd1c7) |  | webapp | ultra | 11-17 13:46 | suspended (inactivity) | 4m | 3.4 | 17 sh / 1 ed / 1 rd / 0 git / 0 mcp / 3+1 msg |  |

#### PropertyKindCalculus — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/ffed1c3782c14075932496bd4293a2ad) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-17 06:01 | suspended (inactivity) | 0m | 1.2 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |

### Wednesday 2026-11-18

51 sessions across 12 projects, 39h06 of working time, 50 PRs opened.

#### SBVR.lean — 12 sessions, 16h55 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 15m | 2191.0 † | 10 sh / 0 ed / 0 rd / 0 git / 71 mcp / 37+2 msg |  |
| [Add SBVR role bindings (21.3.1)](https://nasa-jpl-demo.devinenterprise.com/sessions/22b6843490b74cb5965625a8a32140fb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 3h31 | 119.5 | 257 sh / 80 ed / 72 rd / 6 git / 17 mcp / 22+13 msg | [#66](https://github.com/Open-MBEE/SBVR.lean/pull/66) merged |
| [Add SBVR objectifications (21.3.7, 14.2.3-4)](https://nasa-jpl-demo.devinenterprise.com/sessions/3cefac96546d4274ba86bccc923456e8) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 2h17 | 59.8 | 193 sh / 64 ed / 52 rd / 1 git / 20 mcp / 14+5 msg | [#65](https://github.com/Open-MBEE/SBVR.lean/pull/65) merged |
| [Add SBVR advices (17.1.3, 18.1.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/0ce2b73e56054880bfad1f2bb0f052eb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h53 | 37.8 | 110 sh / 28 ed / 41 rd / 4 git / 13 mcp / 17+8 msg | [#61](https://github.com/Open-MBEE/SBVR.lean/pull/61) merged |
| [Add SBVR numbers (15.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/feceeb06357f48a3ae2640e4feeeef32) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 1h45 | 72.5 | 167 sh / 39 ed / 57 rd / 3 git / 19 mcp / 26+12 msg | [#59](https://github.com/Open-MBEE/SBVR.lean/pull/59) merged |
| [Add SBVR nominalizations (21.3.9)](https://nasa-jpl-demo.devinenterprise.com/sessions/22cbde3e107544fba27d701409900b39) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h42 | 62.5 | 173 sh / 62 ed / 46 rd / 5 git / 3 mcp / 12+5 msg | [#62](https://github.com/Open-MBEE/SBVR.lean/pull/62) merged |
| [Cover SBVR sides, proposition kinds, authority](https://nasa-jpl-demo.devinenterprise.com/sessions/d7a6eac3d07142859f9d4c0795acf5f1) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h29 | 40.1 | 121 sh / 28 ed / 42 rd / 3 git / 3 mcp / 13+6 msg | [#58](https://github.com/Open-MBEE/SBVR.lean/pull/58) merged |
| [Add SBVR projections and sets (21.3.8, 21.4, 15.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/a9c3e557c2364a498cea23796be4fc93) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h16 | 37.4 | 107 sh / 22 ed / 37 rd / 3 git / 10 mcp / 15+6 msg | [#60](https://github.com/Open-MBEE/SBVR.lean/pull/60) merged |
| [Add SBVR instantiation formulations (21.3.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/9c68ae35e12641e69cba4662a8e5943f) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1h09 | 20.4 | 78 sh / 22 ed / 33 rd / 2 git / 12 mcp / 8+3 msg | [#63](https://github.com/Open-MBEE/SBVR.lean/pull/63) merged |
| [Prove SBVR parse-render theorem, pattern catalogue](https://nasa-jpl-demo.devinenterprise.com/sessions/6edb1762108448f6be8ede324cd67d49) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 1h01 | 42.3 | 148 sh / 42 ed / 33 rd / 2 git / 6 mcp / 10+3 msg | [#64](https://github.com/Open-MBEE/SBVR.lean/pull/64) merged |
| [Add fixtures for set parse/render fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/04ed0d75ad674834ba79eb9971430d1b) | Open-MBEE/SBVR.lean | child of a9c3e557 | ultra | 11-18 20:39 | suspended (inactivity) | 20m | 9.2 | 21 sh / 4 ed / 8 rd / 4 git / 0 mcp / 2+1 msg | [#70](https://github.com/Open-MBEE/SBVR.lean/pull/70) merged |
| [Draft OMG issues on SBVR chapter 15](https://nasa-jpl-demo.devinenterprise.com/sessions/860d51f9d5644947b837eb4e5e963935) | Open-MBEE/SBVR.lean | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 12m | 17.4 | 70 sh / 14 ed / 31 rd / 2 git / 0 mcp / 2+1 msg | [#71](https://github.com/Open-MBEE/SBVR.lean/pull/71) merged |

#### qvts — 13 sessions, 10h16 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix qvts gh-pages publishing workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/1d8450f164ef48f08fd4d0b31d65cd8e) | Open-MBEE/qvts | webapp | ultra | 11-17 13:46 | running (waiting_for_user) | 27m | 101.5 ‡ | 43 sh / 0 ed / 12 rd / 3 git / 42 mcp / 20+5 msg |  |
| [Explain Unreachable Rows Lower Bound](https://nasa-jpl-demo.devinenterprise.com/sessions/04d0e751908e4d6b91b5ff8762a8adc4) | Open-MBEE/qvts | webapp | ultra | 11-18 12:51 | suspended (inactivity) | 0m | 15.9 | 5 sh / 0 ed / 4 rd / 0 git / 0 mcp / 4+2 msg |  |
| [Type the metamodel table's names by role](https://nasa-jpl-demo.devinenterprise.com/sessions/a13f38fffd914273b1ff858d17ef7860) | Open-MBEE/qvts | child of 1010d061 | ultra | 11-18 21:21 | suspended (inactivity) | 33m | 14.4 | 69 sh / 29 ed / 26 rd / 2 git / 0 mcp / 3+1 msg | [#124](https://github.com/Open-MBEE/qvts/pull/124) merged |
| [State structural cells in QVTS synthetic values](https://nasa-jpl-demo.devinenterprise.com/sessions/e581f133bb8c42978fdb1b657c710299) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 1h40 | 22.7 | 87 sh / 17 ed / 21 rd / 4 git / 3 mcp / 10+6 msg | [#120](https://github.com/Open-MBEE/qvts/pull/120) merged |
| [Declare followers for QVTS synthetic edit checks](https://nasa-jpl-demo.devinenterprise.com/sessions/94bb4aa015774bd4afee1eaf06cf257b) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 1h32 | 12.1 | 44 sh / 9 ed / 17 rd / 4 git / 0 mcp / 5+3 msg | [#119](https://github.com/Open-MBEE/qvts/pull/119) merged |
| [Generate typed metamodel vocabulary for QVTS synthetic](https://nasa-jpl-demo.devinenterprise.com/sessions/1010d061d4de4008b894ccf99c08bc6f) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 20:11 | suspended (inactivity) | 1h23 | 29.5 | 69 sh / 19 ed / 24 rd / 9 git / 7 mcp / 11+4 msg | [#121](https://github.com/Open-MBEE/qvts/pull/121) merged |
| [Migrate QVTS synthetic core types to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/06a6cee1f9c84b668569557d75659664) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 21:20 | suspended (inactivity) | 1h16 | 22.9 | 102 sh / 25 ed / 28 rd / 7 git / 0 mcp / 8+3 msg | [#123](https://github.com/Open-MBEE/qvts/pull/123) merged |
| [Fix stale fixed ends in composed QVTS relationships](https://nasa-jpl-demo.devinenterprise.com/sessions/347f628f6b27437ebc4ede419edf45b6) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 20:12 | suspended (inactivity) | 1h07 | 11.9 | 37 sh / 9 ed / 20 rd / 2 git / 0 mcp / 4+2 msg | [#122](https://github.com/Open-MBEE/qvts/pull/122) merged |
| [Migrate QVTS synthetic structures and values to enums](https://nasa-jpl-demo.devinenterprise.com/sessions/4dfa80d49d174d7f992bbded566b81b7) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 22:42 | suspended (inactivity) | 40m | 13.8 | 41 sh / 5 ed / 21 rd / 6 git / 0 mcp / 4+1 msg | [#126](https://github.com/Open-MBEE/qvts/pull/126) merged |
| [Add composed-model admissibility coverage ledger and metric](https://nasa-jpl-demo.devinenterprise.com/sessions/c013b383053246a4a9da522a170e1934) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 36m | 9.2 | 31 sh / 11 ed / 22 rd / 4 git / 0 mcp / 6+2 msg | [#117](https://github.com/Open-MBEE/qvts/pull/117) merged |
| [Migrate QVTS synthetic generator followers to enums](https://nasa-jpl-demo.devinenterprise.com/sessions/3a6aad7d39dd4779b5fb9749a050d46d) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 22:42 | suspended (inactivity) | 30m | 10.1 | 32 sh / 7 ed / 14 rd / 6 git / 0 mcp / 3+1 msg | [#125](https://github.com/Open-MBEE/qvts/pull/125) merged |
| [Widen QVTS model bridge to relationship cells](https://nasa-jpl-demo.devinenterprise.com/sessions/f0128e1eea5840c5b63c26e25171b7b1) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:29 | suspended (inactivity) | 17m | 8.7 | 30 sh / 9 ed / 12 rd / 4 git / 0 mcp / 3+1 msg | [#116](https://github.com/Open-MBEE/qvts/pull/116) merged |
| [Refresh stale Lean-leg figures in QVTS docs](https://nasa-jpl-demo.devinenterprise.com/sessions/6f1eaa3463d04ea6ac75d6b8633ba4f7) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 17:48 | suspended (inactivity) | 9m | 2.9 | 14 sh / 2 ed / 5 rd / 3 git / 0 mcp / 2+1 msg | [#118](https://github.com/Open-MBEE/qvts/pull/118) merged |

#### L4YAML — 3 sessions, 3h09 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [List L4YAML PRs to Review](https://nasa-jpl-demo.devinenterprise.com/sessions/7782059af52e4a52b99922860986a008) | nasa-jpl/L4YAML | webapp | ultra | 11-18 17:32 | suspended (inactivity) | 1m | 2.1 | 4 sh / 0 ed / 1 rd / 6 git / 6 mcp / 2+1 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 2h43 | 2060.8 † | 133 sh / 14 ed / 0 rd / 8 git / 6 mcp / 11+2 msg | [#354](https://github.com/nasa-jpl/L4YAML/pull/354) merged, [#355](https://github.com/nasa-jpl/L4YAML/pull/355) merged |
| [Review L4YAML PR #302 Core schema tag contract](https://nasa-jpl-demo.devinenterprise.com/sessions/710f19297b424689867f224c0f64d9fb) | Open-MBEE/FGM, Open-MBEE/L4YAML.FGM, nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-12 07:59 | suspended (inactivity) | 24m | 132.3 † | 14 sh / 1 ed / 0 rd / 0 git / 0 mcp / 3+1 msg |  |

#### prov.lean — 8 sessions, 2h32 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE prov.lean work](https://nasa-jpl-demo.devinenterprise.com/sessions/6cefe1a7b093446e92a78d16dc8350e7) | Open-MBEE/prov.lean | webapp | ultra | 11-17 12:59 | suspended (inactivity) | 5m | 109.5 | 7 sh / 0 ed / 0 rd / 0 git / 20 mcp / 12+3 msg |  |
| [Add PROV-N semantic rules and extensibility](https://nasa-jpl-demo.devinenterprise.com/sessions/3178ca7374df4bfdbcfae913847d0673) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 53m | 32.3 | 82 sh / 38 ed / 24 rd / 1 git / 3 mcp / 5+2 msg | [#47](https://github.com/Open-MBEE/prov.lean/pull/47) merged |
| [Read remaining PROV-O terms in codec](https://nasa-jpl-demo.devinenterprise.com/sessions/72be6ab708484d2d8a92bcb15f95affb) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 22m | 23.3 | 60 sh / 15 ed / 23 rd / 1 git / 0 mcp / 4+3 msg | [#46](https://github.com/Open-MBEE/prov.lean/pull/46) merged |
| [Define PROV-SEM formula language](https://nasa-jpl-demo.devinenterprise.com/sessions/b20dd77e721e4e77a025ed33e9e89fea) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 19m | 20.4 | 39 sh / 12 ed / 12 rd / 1 git / 5 mcp / 6+1 msg | [#44](https://github.com/Open-MBEE/prov.lean/pull/44) merged |
| [Remove NormalFormOK from weak completeness](https://nasa-jpl-demo.devinenterprise.com/sessions/10a3c0615b70425ebc93e2c7f6575b7f) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 17m | 13.3 | 35 sh / 7 ed / 13 rd / 1 git / 0 mcp / 2+1 msg | [#45](https://github.com/Open-MBEE/prov.lean/pull/45) merged |
| [Check PROV-DM reserved attribute placement](https://nasa-jpl-demo.devinenterprise.com/sessions/35389fe0478a4a56b0bbd82a7420c949) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 12m | 14.7 | 46 sh / 12 ed / 11 rd / 1 git / 0 mcp / 3+3 msg | [#42](https://github.com/Open-MBEE/prov.lean/pull/42) merged |
| [Define PROV-CONSTRAINTS instance equivalence](https://nasa-jpl-demo.devinenterprise.com/sessions/48bf42516c8e40c7968396cf8b030fbf) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 12m | 10.3 | 33 sh / 12 ed / 7 rd / 1 git / 0 mcp / 2+1 msg | [#43](https://github.com/Open-MBEE/prov.lean/pull/43) merged |
| [Prove PROV-SEM soundness of remaining inferences](https://nasa-jpl-demo.devinenterprise.com/sessions/83281d6385044bc7b1740b8e3950c48a) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-18 17:29 | suspended (inactivity) | 9m | 8.0 | 24 sh / 6 ed / 4 rd / 1 git / 0 mcp / 2+1 msg | [#41](https://github.com/Open-MBEE/prov.lean/pull/41) merged |

#### engineering-foundation-architecture — 4 sessions, 2h10 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Add Flexo MMS Architecture Repositories](https://nasa-jpl-demo.devinenterprise.com/sessions/409462df998944fd9dbd3b0e64b57b65) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-18 13:43 | suspended (inactivity) | 20m | 7.4 | 28 sh / 4 ed / 10 rd / 2 git / 0 mcp / 7+2 msg | [#108](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/108) merged |
| [Update leanCurl and TLS repository references](https://nasa-jpl-demo.devinenterprise.com/sessions/285ee1039b66425f868d48bb50fc92e2) | Open-MBEE/engineering-foundation-architecture | webapp | ultra | 11-18 08:45 | suspended (inactivity) | 14m | 6.3 | 22 sh / 5 ed / 9 rd / 1 git / 0 mcp / 2+1 msg | [#105](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/105) merged |
| [Repoint EFA MockGateway to TlsServer package](https://nasa-jpl-demo.devinenterprise.com/sessions/b104bb5d70394b2ba037fd6f12f8f5e4) | Open-MBEE/engineering-foundation-architecture | child of 91b42ff1 | ultra | 11-18 08:57 | suspended (inactivity) | 1h21 | 25.1 | 64 sh / 21 ed / 18 rd / 9 git / 9 mcp / 13+6 msg | [#106](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/106) merged |
| [Fetch public tls-server.lean from github.com on the mirror](https://nasa-jpl-demo.devinenterprise.com/sessions/8a1b0dff8bd44c2d92f13b981e76bce8) | Open-MBEE/engineering-foundation-architecture | child of b104bb5d | ultra | 11-18 12:44 | suspended (inactivity) | 13m | 3.6 | 12 sh / 3 ed / 3 rd / 2 git / 0 mcp / 2+1 msg | [#107](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/107) merged |

#### tasktree.lean — 3 sessions, 1h15 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Build Interactive Lean Work Tracker Extension](https://nasa-jpl-demo.devinenterprise.com/sessions/7cbea5a8f2a2478bb2a3c93e381371ee) | Open-MBEE/tasktree.lean | webapp | ultra | 11-17 13:57 | suspended (inactivity) | 22m | 105.2 | 40 sh / 8 ed / 12 rd / 7 git / 17 mcp / 17+7 msg | [#1](https://github.com/Open-MBEE/tasktree.lean/pull/1) merged |
| [Make tasktree.lean release workflow run on both GitHub instances](https://nasa-jpl-demo.devinenterprise.com/sessions/0f6cdc5c40f943cba761a6a5afc4f007) | Open-MBEE/engineering-foundation-architecture, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 14:57 | suspended (inactivity) | 34m | 38.5 | 105 sh / 33 ed / 29 rd / 7 git / 3 mcp / 15+6 msg | [#3](https://github.com/Open-MBEE/tasktree.lean/pull/3) merged, [#4](https://github.com/Open-MBEE/tasktree.lean/pull/4) merged, [#5](https://github.com/Open-MBEE/tasktree.lean/pull/5) merged, [engineering-foundation-architecture #109](https://github.com/Open-MBEE/engineering-foundation-architecture/pull/109) merged |
| [Fix tasktree.lean review findings and live YAML error](https://nasa-jpl-demo.devinenterprise.com/sessions/2926ee8f55d640f19aac391091842a61) | Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 08:15 | suspended (inactivity) | 17m | 18.7 | 51 sh / 15 ed / 27 rd / 10 git / 0 mcp / 5+1 msg | [#2](https://github.com/Open-MBEE/tasktree.lean/pull/2) merged |

#### PropertyKindCalculus — 2 sessions, 53m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/a9d98dc15e414418b6aca1c667153f39) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-18 06:01 | suspended (inactivity) | 0m | 1.9 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 1+1 msg |  |
| [Add ISO 80000-1 and VIM reference chapter to PKC](https://nasa-jpl-demo.devinenterprise.com/sessions/ebfe9e8ade7b430db3b8fb9d6369cd2f) | nasa-jpl/PropertyKindCalculus | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 53m | 25.2 | 62 sh / 5 ed / 33 rd / 4 git / 0 mcp / 3+1 msg | [#112](https://github.com/nasa-jpl/PropertyKindCalculus/pull/112) merged |

#### face.lean — 2 sessions, 41m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Face.lean SBVR-to-SMT Pilot](https://nasa-jpl-demo.devinenterprise.com/sessions/354975b540f143a79fb6872fd23e2a96) | Open-MBEE/face.lean | webapp | ultra | 11-18 14:11 | suspended (inactivity) | 10m | 14.6 | 49 sh / 5 ed / 15 rd / 3 git / 3 mcp / 13+5 msg | [#50](https://github.com/Open-MBEE/face.lean/pull/50) merged |
| [Port face.lean build workflow to self-hosted runners](https://nasa-jpl-demo.devinenterprise.com/sessions/aaf8d68c8ca543e6ab473926789100c1) | Open-MBEE/face.lean | child of 354975b5 | ultra | 11-18 15:22 | suspended (inactivity) | 31m | 13.9 | 25 sh / 4 ed / 3 rd / 2 git / 0 mcp / 4+2 msg | [#51](https://github.com/Open-MBEE/face.lean/pull/51) merged |

#### OpenSysML — 1 session, 37m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Plan SysMLv2 QVTS Language and Workflows](https://nasa-jpl-demo.devinenterprise.com/sessions/18ad47adf36f44e9b6824a4472f9678d) | Open-MBEE/OpenSysML, Open-MBEE/OpenSysML-Extensions-Library, Open-MBEE/engineering-foundation-architecture, Open-MBEE/qvts | webapp | ultra | 10-26 12:28 | suspended (inactivity) | 37m | 4868.4 † | ≥14 sh / 3 ed / 4 rd / 2 git / 0 mcp / 2+0 msg |  |

#### tls-server.lean — 1 session, 18m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Find TLR Mockup Repository](https://nasa-jpl-demo.devinenterprise.com/sessions/91b42ff1627a47dcab79badf39e6243a) | Open-MBEE/leanCurl, Open-MBEE/tls-server.lean | webapp | ultra | 11-18 08:19 | suspended (inactivity) | 18m | 25.2 | 62 sh / 26 ed / 15 rd / 10 git / 5 mcp / 21+10 msg | [leanCurl #4](https://github.com/Open-MBEE/leanCurl/pull/4) closed, [#1](https://github.com/Open-MBEE/tls-server.lean/pull/1) merged, [#2](https://github.com/Open-MBEE/tls-server.lean/pull/2) merged, [#3](https://github.com/Open-MBEE/tls-server.lean/pull/3) merged |

#### nfr.workboard — 1 session, 11m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Set up nfr.workboard data repository layout](https://nasa-jpl-demo.devinenterprise.com/sessions/1ad77f6fe10a406c97b419296dbf6a97) | Open-MBEE/nfr.workboard, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 07:51 | suspended (inactivity) | 11m | 39.7 | 40 sh / 10 ed / 5 rd / 6 git / 0 mcp / 5+4 msg | [#1](https://github.com/Open-MBEE/nfr.workboard/pull/1) merged, [#2](https://github.com/Open-MBEE/nfr.workboard/pull/2) merged |

#### (no repository) — 1 session, 4m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Generate Nicolas's Daily Devin Report](https://nasa-jpl-demo.devinenterprise.com/sessions/77213d376a3341a992521ff3893d65a7) |  | automation | ultra | 11-18 00:05 | suspended (inactivity) | 4m | 2.5 | 4 sh / 0 ed / 0 rd / 0 git / 586 mcp / 2+1 msg |  |

### Thursday 2026-11-19

71 sessions across 13 projects, 72h59 of working time, 59 PRs opened.

#### qvts — 20 sessions, 32h25 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix qvts gh-pages publishing workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/1d8450f164ef48f08fd4d0b31d65cd8e) | Open-MBEE/qvts | webapp | ultra | 11-17 13:46 | running (waiting_for_user) | 20m | 101.5 ‡ | 53 sh / 1 ed / 4 rd / 9 git / 65 mcp / 36+10 msg |  |
| [Add Collapsible QVTS Metrics Groups](https://nasa-jpl-demo.devinenterprise.com/sessions/7c2ed6c5d8504886a1844b7fdb74b4f7) | Open-MBEE/qvts | webapp | ultra | 11-19 10:01 | suspended (inactivity) | 16m | 23.1 | 56 sh / 9 ed / 16 rd / 7 git / 0 mcp / 8+3 msg | [#128](https://github.com/Open-MBEE/qvts/pull/128) merged, [#130](https://github.com/Open-MBEE/qvts/pull/130) merged |
| [Add QVTS synthetic recipe alternatives to raise coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/d11fe6d92e0742e982cf0854b5981b14) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 08:59 | suspended (inactivity) | 2h31 | 35.8 | 77 sh / 16 ed / 21 rd / 5 git / 12 mcp / 15+5 msg | [#132](https://github.com/Open-MBEE/qvts/pull/132) merged |
| [Derive unnamed-element ids in the Lean observatory](https://nasa-jpl-demo.devinenterprise.com/sessions/06167af0f24844b19e43de1d70519d7b) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 13:01 | running (working) | 2h26 | 28.3 ‡ | 69 sh / 8 ed / 16 rd / 7 git / 0 mcp / 2+1 msg | [#140](https://github.com/Open-MBEE/qvts/pull/140) open |
| [Add Lean gate runner and migrate QVTS pin scripts](https://nasa-jpl-demo.devinenterprise.com/sessions/faa4bbaff0f34f2b81f325caf64ddc28) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 13:01 | running (working) | 2h25 | 20.0 ‡ | 62 sh / 11 ed / 26 rd / 6 git / 0 mcp / 4+2 msg | [#143](https://github.com/Open-MBEE/qvts/pull/143) open |
| [Migrate QVTS composed-model files to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/b9f74e6f74b2447baa271b4800e23243) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 08:59 | suspended (inactivity) | 2h09 | 19.6 | 59 sh / 15 ed / 36 rd / 8 git / 0 mcp / 5+2 msg | [#129](https://github.com/Open-MBEE/qvts/pull/129) merged, [#131](https://github.com/Open-MBEE/qvts/pull/131) merged |
| [Raise QVTS native edit readback coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/fbcfaa660791412db0ea2b21e8de5751) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 1h07 | 17.1 | 58 sh / 11 ed / 17 rd / 4 git / 0 mcp / 8+3 msg | [#135](https://github.com/Open-MBEE/qvts/pull/135) merged |
| [Raise QVTS hand-written Lean observatory coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/6a89e346311d401cbb094a1ce94d8e60) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 54m | 15.1 | 54 sh / 12 ed / 21 rd / 7 git / 0 mcp / 7+3 msg | [#134](https://github.com/Open-MBEE/qvts/pull/134) merged, [#142](https://github.com/Open-MBEE/qvts/pull/142) merged |
| [Fix QVTS spec build after run-time name types](https://nasa-jpl-demo.devinenterprise.com/sessions/d7c612fdbcad40058e820994e2bad17f) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 07:47 | suspended (inactivity) | 25m | 3.2 | 9 sh / 2 ed / 3 rd / 3 git / 0 mcp / 2+1 msg | [#127](https://github.com/Open-MBEE/qvts/pull/127) merged |
| [Migrate QVTS synthetic core types to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/06a6cee1f9c84b668569557d75659664) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 21:20 | suspended (inactivity) | 0m | 22.9 | 1 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+0 msg |  |
| [State SysML relationship rows' structural cells](https://nasa-jpl-demo.devinenterprise.com/sessions/586d847f3c804313ba1f26f51ffb1712) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | running (working) | 3h56 | 17.6 ‡ | 62 sh / 24 ed / 10 rd / 5 git / 0 mcp / 6+6 msg | [#141](https://github.com/Open-MBEE/qvts/pull/141) merged |
| [Add isConstant and KerML isDerived synthetic cells](https://nasa-jpl-demo.devinenterprise.com/sessions/50c52f3908784b59adce7d3d538a158c) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | running (working) | 3h25 | 39.3 ‡ | 134 sh / 35 ed / 54 rd / 8 git / 0 mcp / 6+5 msg | [#136](https://github.com/Open-MBEE/qvts/pull/136) merged, [#145](https://github.com/Open-MBEE/qvts/pull/145) open |
| [State KerML co-minted metaclasses in synthetic expectation](https://nasa-jpl-demo.devinenterprise.com/sessions/e47b62b7c553409dac17b44d01e06fd2) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 3h01 | 25.9 | 99 sh / 22 ed / 26 rd / 8 git / 0 mcp / 7+5 msg | [#139](https://github.com/Open-MBEE/qvts/pull/139) merged |
| [Add prefix cells to KerML classifier rows](https://nasa-jpl-demo.devinenterprise.com/sessions/4a3ab787d41f42bd82482db19e9a2a21) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 2h32 | 19.1 | 83 sh / 28 ed / 19 rd / 5 git / 0 mcp / 3+2 msg | [#137](https://github.com/Open-MBEE/qvts/pull/137) merged |
| [State SysML Expression in the synthetic expectation](https://nasa-jpl-demo.devinenterprise.com/sessions/bc542e9dc4a44e9f9cb8e65d0fae431f) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 1h34 | 16.1 | 67 sh / 13 ed / 14 rd / 7 git / 0 mcp / 5+2 msg | [#133](https://github.com/Open-MBEE/qvts/pull/133) merged, [#138](https://github.com/Open-MBEE/qvts/pull/138) merged |
| [Add prefix cells to SysML definition rows](https://nasa-jpl-demo.devinenterprise.com/sessions/fea2957ecfe04471b1461fa8c0c11ccf) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 13.0 ‡ | 56 sh / 9 ed / 10 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add prefix cells to non-occRow SysML usages](https://nasa-jpl-demo.devinenterprise.com/sessions/4d46cac903bd4332acb785e7952f5cb9) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 14.8 ‡ | 60 sh / 16 ed / 17 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Allow KerML second recipes; add KerML Package](https://nasa-jpl-demo.devinenterprise.com/sessions/cf827ded891c460bb755e6ef1685bdbd) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 15.1 ‡ | 54 sh / 26 ed / 13 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add isEnd alternatives to SysML usage rows](https://nasa-jpl-demo.devinenterprise.com/sessions/e9580d6b742246ee947bf48eaf455889) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h12 | 16.6 ‡ | 70 sh / 10 ed / 19 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Make aliasIds, isImplied, isImpliedIncluded valued](https://nasa-jpl-demo.devinenterprise.com/sessions/c576ee6ab0a54c0a9307835c3d59c35a) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | suspended (inactivity) | 23m | 15.7 | 53 sh / 2 ed / 16 rd / 3 git / 0 mcp / 7+4 msg | [#144](https://github.com/Open-MBEE/qvts/pull/144) merged |

#### OpenSysML — 7 sessions, 15h50 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix duplicate FeatureTyping elementId in accept transitions](https://nasa-jpl-demo.devinenterprise.com/sessions/c6d756924da34d8992cba771c1ea1181) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | running (working) | 3h13 | 35.2 ‡ | 159 sh / 35 ed / 28 rd / 13 git / 3 mcp / 9+5 msg | [#2411](https://github.com/Open-MBEE/OpenSysML/pull/2411) open |
| [Reflect six OpenSysML constructs with specified metaclass](https://nasa-jpl-demo.devinenterprise.com/sessions/bab01228433542b7b9f3da921ee46458) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:12 | suspended (inactivity) | 2h28 | 28.6 | 102 sh / 14 ed / 34 rd / 12 git / 5 mcp / 5+2 msg | [#2410](https://github.com/Open-MBEE/OpenSysML/pull/2410) open |
| [Fix two SPARQL versus native disagreeing cells](https://nasa-jpl-demo.devinenterprise.com/sessions/e4992bf060d148e38ae7b1a7f56dfffe) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:12 | suspended (inactivity) | 2h17 | 23.9 | 96 sh / 9 ed / 16 rd / 21 git / 0 mcp / 9+4 msg | [#2413](https://github.com/Open-MBEE/OpenSysML/pull/2413) open |
| [Drop declaredName from reflected ConjugatedPortDefinition](https://nasa-jpl-demo.devinenterprise.com/sessions/7e19ec1a4293400ebc18da775fd28e3d) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 2h12 | 18.1 | 86 sh / 13 ed / 28 rd / 9 git / 0 mcp / 3+1 msg | [#2412](https://github.com/Open-MBEE/OpenSysML/pull/2412) open |
| [Mint elementIds for unidentified OpenSysML elements](https://nasa-jpl-demo.devinenterprise.com/sessions/b529ee82203349ffa2267e5296211e0c) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 2h10 | 24.5 | 95 sh / 13 ed / 31 rd / 9 git / 2 mcp / 4+1 msg | [#2408](https://github.com/Open-MBEE/OpenSysML/pull/2408) open |
| [Drop declaredName from reflected alias Membership](https://nasa-jpl-demo.devinenterprise.com/sessions/8bc8075b9c3743d88d65031ce7d2a054) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 1h46 | 15.7 | 55 sh / 5 ed / 15 rd / 10 git / 5 mcp / 8+3 msg | [#2409](https://github.com/Open-MBEE/OpenSysML/pull/2409) open |
| [Materialize annotation, cross-subsetting and set-relationship elements in OpenS…](https://nasa-jpl-demo.devinenterprise.com/sessions/350772dbcfae486db71b381707fba42d) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 13:46 | running (working) | 1h40 | 26.6 ‡ | 93 sh / 19 ed / 27 rd / 1 git / 0 mcp / 3+2 msg |  |

#### SBVR.lean — 12 sessions, 11h37 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 12m | 2191.0 † | 0 sh / 0 ed / 0 rd / 6 git / 2 mcp / 3+2 msg |  |
| [Close SBVR 21.3.1 role-binding coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/8430ef9557e242c0b2931d35919328d3) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | running (working) | 3h07 | 74.3 ‡ | 244 sh / 59 ed / 61 rd / 5 git / 5 mcp / 6+4 msg | [#77](https://github.com/Open-MBEE/SBVR.lean/pull/77) open |
| [Read SBVR Annex B categorization patterns](https://nasa-jpl-demo.devinenterprise.com/sessions/d44d9940d03748f6921dac9622c635a0) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 2h28 | 68.2 | 145 sh / 37 ed / 28 rd / 5 git / 24 mcp / 12+3 msg | [#73](https://github.com/Open-MBEE/SBVR.lean/pull/73) merged, [#76](https://github.com/Open-MBEE/SBVR.lean/pull/76) merged, [#78](https://github.com/Open-MBEE/SBVR.lean/pull/78) merged, [#79](https://github.com/Open-MBEE/SBVR.lean/pull/79) merged |
| [Close SBVR 21.3.7 objectification coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/8d415eccaf1745569716e0f27bc2183a) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 1h42 | 61.5 | 96 sh / 35 ed / 34 rd / 2 git / 5 mcp / 9+4 msg | [#74](https://github.com/Open-MBEE/SBVR.lean/pull/74) merged |
| [Close SBVR 21.3.9 n-variable question coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/1c6d66aebe4a4607b3929f995438fd9c) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 1h14 | 31.2 | 79 sh / 25 ed / 43 rd / 4 git / 3 mcp / 5+1 msg | [#75](https://github.com/Open-MBEE/SBVR.lean/pull/75) merged |
| [Carry SBVR 15.2 quantities in core](https://nasa-jpl-demo.devinenterprise.com/sessions/6c1a8c373c3448c192c6feed4e476d16) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 43m | 23.0 | 61 sh / 19 ed / 25 rd / 2 git / 5 mcp / 12+3 msg | [#72](https://github.com/Open-MBEE/SBVR.lean/pull/72) merged |
| [Add SBVR role bindings (21.3.1)](https://nasa-jpl-demo.devinenterprise.com/sessions/22b6843490b74cb5965625a8a32140fb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 2h05 | 119.5 | 72 sh / 22 ed / 0 rd / 4 git / 13 mcp / 9+3 msg |  |
| [Add SBVR advices (17.1.3, 18.1.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/0ce2b73e56054880bfad1f2bb0f052eb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1m | 37.8 | 5 sh / 1 ed / 1 rd / 1 git / 0 mcp / 5+2 msg |  |
| [Add SBVR projections and sets (21.3.8, 21.4, 15.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/a9c3e557c2364a498cea23796be4fc93) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1m | 37.4 | 3 sh / 0 ed / 1 rd / 0 git / 3 mcp / 5+1 msg |  |
| [Add SBVR numbers (15.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/feceeb06357f48a3ae2640e4feeeef32) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 0m | 72.5 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add fixtures for set parse/render fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/04ed0d75ad674834ba79eb9971430d1b) | Open-MBEE/SBVR.lean | child of a9c3e557 | ultra | 11-18 20:39 | suspended (inactivity) | 0m | 9.2 | 1 sh / 1 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Draft OMG issues on SBVR chapter 15](https://nasa-jpl-demo.devinenterprise.com/sessions/860d51f9d5644947b837eb4e5e963935) | Open-MBEE/SBVR.lean | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 0m | 17.4 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+0 msg |  |

#### prov.lean — 17 sessions, 7h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE prov.lean work](https://nasa-jpl-demo.devinenterprise.com/sessions/6cefe1a7b093446e92a78d16dc8350e7) | Open-MBEE/prov.lean | webapp | ultra | 11-17 12:59 | suspended (inactivity) | 6m | 109.5 | 20 sh / 0 ed / 0 rd / 0 git / 14 mcp / 17+6 msg |  |
| [Prove derivation and influence normal-form checks](https://nasa-jpl-demo.devinenterprise.com/sessions/777d2ec3d4c142189d19648c753d410e) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 50m | 40.0 | 85 sh / 33 ed / 22 rd / 2 git / 0 mcp / 2+1 msg | [#61](https://github.com/Open-MBEE/prov.lean/pull/61) merged |
| [Add key-unique SemRule and prove lifts](https://nasa-jpl-demo.devinenterprise.com/sessions/fa9d7aab754f488786db11867a3b5ce6) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 39m | 43.6 | 96 sh / 35 ed / 25 rd / 1 git / 0 mcp / 10+7 msg | [#55](https://github.com/Open-MBEE/prov.lean/pull/55) merged |
| [Test failing PROV-O profile path through prov-check](https://nasa-jpl-demo.devinenterprise.com/sessions/dc4d44975fe64b7a8c8d568801261faa) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:14 | suspended (inactivity) | 34m | 25.9 | 89 sh / 19 ed / 35 rd / 7 git / 0 mcp / 21+8 msg | [#52](https://github.com/Open-MBEE/prov.lean/pull/52) merged, [#56](https://github.com/Open-MBEE/prov.lean/pull/56) merged |
| [Prove specialization and mention normal-form checks](https://nasa-jpl-demo.devinenterprise.com/sessions/7c1a8f55407742c3892a8892e9741a95) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 22m | 19.8 | 53 sh / 15 ed / 26 rd / 2 git / 0 mcp / 2+1 msg | [#60](https://github.com/Open-MBEE/prov.lean/pull/60) merged |
| [Prove event and time normal-form checks](https://nasa-jpl-demo.devinenterprise.com/sessions/7e60b250ad9a4b69bb7de8d8af4f33a7) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 20m | 18.0 | 36 sh / 14 ed / 31 rd / 2 git / 0 mcp / 2+1 msg | [#59](https://github.com/Open-MBEE/prov.lean/pull/59) merged |
| [Draft W3C PROV gap write-ups in issues/](https://nasa-jpl-demo.devinenterprise.com/sessions/89a016b29a9e413a929de347a922ad70) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 20m | 23.3 | 82 sh / 9 ed / 29 rd / 1 git / 1 mcp / 5+3 msg | [#53](https://github.com/Open-MBEE/prov.lean/pull/53) merged |
| [Fix normalizer for influence-agree and revision-alternate](https://nasa-jpl-demo.devinenterprise.com/sessions/8a090fc48da24d969d3a1c3efd44a8ca) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 19m | 15.6 | 52 sh / 14 ed / 20 rd / 4 git / 0 mcp / 11+6 msg | [#50](https://github.com/Open-MBEE/prov.lean/pull/50) merged, [#54](https://github.com/Open-MBEE/prov.lean/pull/54) merged |
| [Drop start-event-time from PROV-SEM completeness hypothesis](https://nasa-jpl-demo.devinenterprise.com/sessions/4b9a5c45d711424eb2dff097724f6548) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 10:08 | suspended (inactivity) | 15m | 12.8 | 48 sh / 12 ed / 18 rd / 1 git / 0 mcp / 4+2 msg | [#51](https://github.com/Open-MBEE/prov.lean/pull/51) merged |
| [Refresh issues/ drafts against merged main](https://nasa-jpl-demo.devinenterprise.com/sessions/6f4db8b1eb414accb57ae9ce82c63492) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 8m | 5.6 | 23 sh / 2 ed / 17 rd / 1 git / 0 mcp / 2+1 msg | [#58](https://github.com/Open-MBEE/prov.lean/pull/58) merged |
| [Update coverage table for PROV-SEM completeness work](https://nasa-jpl-demo.devinenterprise.com/sessions/10999ef3eb0441d2b20aee3cb6ddd848) | Open-MBEE/prov.lean | child of 3e97d140 | ultra | 11-19 11:01 | suspended (inactivity) | 6m | 5.0 | 23 sh / 4 ed / 16 rd / 1 git / 0 mcp / 2+1 msg | [#57](https://github.com/Open-MBEE/prov.lean/pull/57) merged |
| [Cover Inferences 6, 14 and Constraint 50](https://nasa-jpl-demo.devinenterprise.com/sessions/00e0b7bc8c2d47d6b3d583fe91895c63) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | running (waiting_for_user) | 51m | 44.7 ‡ | 106 sh / 38 ed / 36 rd / 8 git / 8 mcp / 17+8 msg | [#64](https://github.com/Open-MBEE/prov.lean/pull/64) open |
| [Complete PROV-CONSTRAINTS instance equivalence coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/9d3ec2af4ff944f6ae03e09bafb909ac) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | suspended (inactivity) | 40m | 20.2 | 52 sh / 12 ed / 16 rd / 5 git / 6 mcp / 13+6 msg | [#65](https://github.com/Open-MBEE/prov.lean/pull/65) merged |
| [Add stricter validity layer for PROV-SEM completeness](https://nasa-jpl-demo.devinenterprise.com/sessions/3e97d14075574f109342c956697b008c) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 09:29 | suspended (inactivity) | 29m | 47.9 | 94 sh / 22 ed / 22 rd / 9 git / 35 mcp / 26+7 msg | [#49](https://github.com/Open-MBEE/prov.lean/pull/49) merged |
| [Prove PROV-SEM weak completeness for SemValid](https://nasa-jpl-demo.devinenterprise.com/sessions/c8e95841e0f7413787c7c51227afd401) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | suspended (inactivity) | 25m | 19.1 | 68 sh / 16 ed / 31 rd / 7 git / 5 mcp / 15+6 msg | [#63](https://github.com/Open-MBEE/prov.lean/pull/63) merged |
| [Integrate coverage lanes into prov-check and blueprint](https://nasa-jpl-demo.devinenterprise.com/sessions/ee4eb330790c4395baf8ecd50f9cfb4c) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 09:29 | suspended (inactivity) | 15m | 15.5 | 57 sh / 10 ed / 19 rd / 2 git / 0 mcp / 2+1 msg | [#48](https://github.com/Open-MBEE/prov.lean/pull/48) merged |
| [Move W3C issue draft into issues/ files](https://nasa-jpl-demo.devinenterprise.com/sessions/6314327a83c945ad8e41f585fa4c9fb6) | Open-MBEE/prov.lean | child of 6cefe1a7 | ultra | 11-19 13:57 | suspended (inactivity) | 13m | 8.6 | 27 sh / 6 ed / 9 rd / 2 git / 0 mcp / 6+2 msg | [#62](https://github.com/Open-MBEE/prov.lean/pull/62) merged |

#### L4YAML — 4 sessions, 3h56 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML Pull Requests](https://nasa-jpl-demo.devinenterprise.com/sessions/956b61080c1444a5ac64c4effb79da21) | nasa-jpl/L4YAML | webapp | ultra | 11-12 07:57 | suspended (inactivity) | 4m | 28.7 † | 8 sh / 0 ed / 0 rd / 9 git / 13 mcp / 8+2 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 2h56 | 2060.8 † | 104 sh / 16 ed / 3 rd / 6 git / 0 mcp / 8+1 msg | [#358](https://github.com/nasa-jpl/L4YAML/pull/358) merged, [#359](https://github.com/nasa-jpl/L4YAML/pull/359) open |
| [Review L4YAML PR #357 coverage-script removal](https://nasa-jpl-demo.devinenterprise.com/sessions/7a56fcc248b24a9ba15eafbb74b0b2c1) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-19 10:53 | suspended (inactivity) | 31m | 10.0 | 40 sh / 4 ed / 2 rd / 4 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #356 Makefile removal](https://nasa-jpl-demo.devinenterprise.com/sessions/6e6a07305c4448c082ec070b7fe40306) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-19 10:53 | suspended (inactivity) | 23m | 9.1 | 29 sh / 1 ed / 9 rd / 4 git / 0 mcp / 4+2 msg |  |

#### git-remote-sync.lean — 2 sessions, 1h17 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Sync Branches Before Tagging](https://nasa-jpl-demo.devinenterprise.com/sessions/ed1242ca218545928351c713645feabb) | Open-MBEE/git-remote-sync.lean, Open-MBEE/tasktree.lean | webapp | ultra | 11-19 08:48 | suspended (inactivity) | 49m | 22.9 | 85 sh / 17 ed / 40 rd / 4 git / 0 mcp / 12+5 msg | [#73](https://github.com/Open-MBEE/git-remote-sync.lean/pull/73) merged, [#74](https://github.com/Open-MBEE/git-remote-sync.lean/pull/74) merged, [tasktree.lean #6](https://github.com/Open-MBEE/tasktree.lean/pull/6) merged |
| [Implement git-remote-sync Release](https://nasa-jpl-demo.devinenterprise.com/sessions/0ef9f1e01998486785d96e8e7e3c8cd1) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-19 08:42 | suspended (inactivity) | 27m | 28.9 | 66 sh / 13 ed / 52 rd / 4 git / 10 mcp / 16+8 msg | [#72](https://github.com/Open-MBEE/git-remote-sync.lean/pull/72) merged |

#### (no repository) — 2 sessions, 16m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue Devin Session Work](https://nasa-jpl-demo.devinenterprise.com/sessions/273841e49ee34e0e888a4c28aafbe76f) |  | webapp | ultra | 11-19 11:59 | suspended (inactivity) | 12m | 10.3 | 7 sh / 0 ed / 1 rd / 3 git / 13 mcp / 7+1 msg |  |
| [Nicolas Rouquette Daily Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/1f6722c027c6406a8ce8d532e3945c38) |  | automation | ultra | 11-19 00:05 | suspended (inactivity) | 3m | 2.0 | 3 sh / 0 ed / 1 rd / 0 git / 485 mcp / 2+1 msg |  |

#### nfr.workboard — 1 session, 15m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Set up nfr.workboard data repository layout](https://nasa-jpl-demo.devinenterprise.com/sessions/1ad77f6fe10a406c97b419296dbf6a97) | Open-MBEE/nfr.workboard, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 07:51 | suspended (inactivity) | 15m | 39.7 | 57 sh / 21 ed / 7 rd / 2 git / 0 mcp / 9+2 msg | [tasktree.lean #7](https://github.com/Open-MBEE/tasktree.lean/pull/7) merged |

#### devin-automation — 1 session, 11m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Keep devin-automation Website Updated](https://nasa-jpl-demo.devinenterprise.com/sessions/c7a14b6341a34d05ac0665757b51e6e4) | Open-MBEE/devin-automation | webapp | ultra | 11-19 15:13 | running (working) | 11m | 3.3 ‡ | 13 sh / 0 ed / 7 rd / 0 git / 38 mcp / 3+2 msg |  |

#### PropertyKindCalculus — 2 sessions, 7m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Scan Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/3330babe2d574d94af00602430577c5e) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-19 06:01 | suspended (inactivity) | 0m | 1.1 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
| [Add ISO 80000-1 and VIM reference chapter to PKC](https://nasa-jpl-demo.devinenterprise.com/sessions/ebfe9e8ade7b430db3b8fb9d6369cd2f) | nasa-jpl/PropertyKindCalculus | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 6m | 25.2 | 8 sh / 2 ed / 0 rd / 2 git / 0 mcp / 4+1 msg | [#113](https://github.com/nasa-jpl/PropertyKindCalculus/pull/113) merged |

#### mars.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 0m | 3588.7 † | 2 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

#### tls-server.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Find TLR Mockup Repository](https://nasa-jpl-demo.devinenterprise.com/sessions/91b42ff1627a47dcab79badf39e6243a) | Open-MBEE/leanCurl, Open-MBEE/tls-server.lean | webapp | ultra | 11-18 08:19 | suspended (inactivity) | 0m | 25.2 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+0 msg |  |

#### tasktree.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Make tasktree.lean release workflow run on both GitHub instances](https://nasa-jpl-demo.devinenterprise.com/sessions/0f6cdc5c40f943cba761a6a5afc4f007) | Open-MBEE/engineering-foundation-architecture, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 14:57 | suspended (inactivity) | 0m | 38.5 | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+0 msg |  |

### Friday 2026-11-20

_No session activity._

### Saturday 2026-11-21

_No session activity._

### Sunday 2026-11-22

_No session activity._
