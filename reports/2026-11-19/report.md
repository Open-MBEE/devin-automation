# Devin session report — Thursday 2026-11-19

Sessions of Nicolas Rouquette created or active between Thu 2026-11-19 00:00 and Thu 2026-11-19 15:56 (America/Los_Angeles): 71 sessions.

How to read the numbers:

- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.
- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.
- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.
- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by local day. Sessions marked ≥ hit the event-page cap or had a failed fetch, so their counts and PR lists are lower bounds.
- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.

## Thursday 2026-11-19

71 sessions across 13 projects, 78h52 of working time, 59 PRs opened.

### qvts — 20 sessions, 36h21 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix qvts gh-pages publishing workflow](https://nasa-jpl-demo.devinenterprise.com/sessions/1d8450f164ef48f08fd4d0b31d65cd8e) | Open-MBEE/qvts | webapp | ultra | 11-17 13:46 | running (waiting_for_user) | 20m | 101.5 † | 53 sh / 1 ed / 4 rd / 9 git / 65 mcp / 36+10 msg |  |
| [Add Collapsible QVTS Metrics Groups](https://nasa-jpl-demo.devinenterprise.com/sessions/7c2ed6c5d8504886a1844b7fdb74b4f7) | Open-MBEE/qvts | webapp | ultra | 11-19 10:01 | suspended (inactivity) | 16m | 23.1 | 56 sh / 9 ed / 16 rd / 7 git / 0 mcp / 8+3 msg | [#128](https://github.com/Open-MBEE/qvts/pull/128) merged, [#130](https://github.com/Open-MBEE/qvts/pull/130) merged |
| [Derive unnamed-element ids in the Lean observatory](https://nasa-jpl-demo.devinenterprise.com/sessions/06167af0f24844b19e43de1d70519d7b) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 13:01 | running (working) | 2h55 | 28.3 ‡ | 69 sh / 8 ed / 16 rd / 7 git / 0 mcp / 2+1 msg | [#140](https://github.com/Open-MBEE/qvts/pull/140) open |
| [Add Lean gate runner and migrate QVTS pin scripts](https://nasa-jpl-demo.devinenterprise.com/sessions/faa4bbaff0f34f2b81f325caf64ddc28) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 13:01 | running (working) | 2h55 | 20.0 ‡ | 62 sh / 11 ed / 26 rd / 6 git / 0 mcp / 4+2 msg | [#143](https://github.com/Open-MBEE/qvts/pull/143) open |
| [Add QVTS synthetic recipe alternatives to raise coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/d11fe6d92e0742e982cf0854b5981b14) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 08:59 | suspended (inactivity) | 2h31 | 35.8 | 77 sh / 16 ed / 21 rd / 5 git / 12 mcp / 15+5 msg | [#132](https://github.com/Open-MBEE/qvts/pull/132) merged |
| [Migrate QVTS composed-model files to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/b9f74e6f74b2447baa271b4800e23243) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 08:59 | suspended (inactivity) | 2h09 | 19.6 | 59 sh / 15 ed / 36 rd / 8 git / 0 mcp / 5+2 msg | [#129](https://github.com/Open-MBEE/qvts/pull/129) merged, [#131](https://github.com/Open-MBEE/qvts/pull/131) merged |
| [Raise QVTS native edit readback coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/fbcfaa660791412db0ea2b21e8de5751) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 1h07 | 17.1 | 58 sh / 11 ed / 17 rd / 4 git / 0 mcp / 8+3 msg | [#135](https://github.com/Open-MBEE/qvts/pull/135) merged |
| [Raise QVTS hand-written Lean observatory coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/6a89e346311d401cbb094a1ce94d8e60) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 54m | 15.1 | 54 sh / 12 ed / 21 rd / 7 git / 0 mcp / 7+3 msg | [#134](https://github.com/Open-MBEE/qvts/pull/134) merged, [#142](https://github.com/Open-MBEE/qvts/pull/142) merged |
| [Fix QVTS spec build after run-time name types](https://nasa-jpl-demo.devinenterprise.com/sessions/d7c612fdbcad40058e820994e2bad17f) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-19 07:47 | suspended (inactivity) | 25m | 3.2 | 9 sh / 2 ed / 3 rd / 3 git / 0 mcp / 2+1 msg | [#127](https://github.com/Open-MBEE/qvts/pull/127) merged |
| [Migrate QVTS synthetic core types to vocabulary enums](https://nasa-jpl-demo.devinenterprise.com/sessions/06a6cee1f9c84b668569557d75659664) | Open-MBEE/qvts | child of 1d8450f1 | ultra | 11-18 21:20 | suspended (inactivity) | 0m | 22.9 † | 1 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+0 msg |  |
| [State SysML relationship rows' structural cells](https://nasa-jpl-demo.devinenterprise.com/sessions/586d847f3c804313ba1f26f51ffb1712) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | running (working) | 4h26 | 17.6 ‡ | 62 sh / 24 ed / 10 rd / 5 git / 0 mcp / 6+6 msg | [#141](https://github.com/Open-MBEE/qvts/pull/141) merged |
| [Add isConstant and KerML isDerived synthetic cells](https://nasa-jpl-demo.devinenterprise.com/sessions/50c52f3908784b59adce7d3d538a158c) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | running (working) | 3h55 | 39.3 ‡ | 134 sh / 35 ed / 54 rd / 8 git / 0 mcp / 6+5 msg | [#136](https://github.com/Open-MBEE/qvts/pull/136) merged, [#145](https://github.com/Open-MBEE/qvts/pull/145) open |
| [State KerML co-minted metaclasses in synthetic expectation](https://nasa-jpl-demo.devinenterprise.com/sessions/e47b62b7c553409dac17b44d01e06fd2) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 3h01 | 25.9 | 99 sh / 22 ed / 26 rd / 8 git / 0 mcp / 7+5 msg | [#139](https://github.com/Open-MBEE/qvts/pull/139) merged |
| [Add prefix cells to KerML classifier rows](https://nasa-jpl-demo.devinenterprise.com/sessions/4a3ab787d41f42bd82482db19e9a2a21) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 2h32 | 19.1 | 83 sh / 28 ed / 19 rd / 5 git / 0 mcp / 3+2 msg | [#137](https://github.com/Open-MBEE/qvts/pull/137) merged |
| [Add prefix cells to SysML definition rows](https://nasa-jpl-demo.devinenterprise.com/sessions/fea2957ecfe04471b1461fa8c0c11ccf) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h42 | 13.0 ‡ | 56 sh / 9 ed / 10 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Allow KerML second recipes; add KerML Package](https://nasa-jpl-demo.devinenterprise.com/sessions/cf827ded891c460bb755e6ef1685bdbd) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h42 | 15.1 ‡ | 54 sh / 26 ed / 13 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add prefix cells to non-occRow SysML usages](https://nasa-jpl-demo.devinenterprise.com/sessions/4d46cac903bd4332acb785e7952f5cb9) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h42 | 14.8 ‡ | 60 sh / 16 ed / 17 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add isEnd alternatives to SysML usage rows](https://nasa-jpl-demo.devinenterprise.com/sessions/e9580d6b742246ee947bf48eaf455889) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | running (working) | 1h41 | 16.6 ‡ | 70 sh / 10 ed / 19 rd / 0 git / 0 mcp / 1+1 msg |  |
| [State SysML Expression in the synthetic expectation](https://nasa-jpl-demo.devinenterprise.com/sessions/bc542e9dc4a44e9f9cb8e65d0fae431f) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 11:30 | suspended (inactivity) | 1h34 | 16.1 | 67 sh / 13 ed / 14 rd / 7 git / 0 mcp / 5+2 msg | [#133](https://github.com/Open-MBEE/qvts/pull/133) merged, [#138](https://github.com/Open-MBEE/qvts/pull/138) merged |
| [Make aliasIds, isImplied, isImpliedIncluded valued](https://nasa-jpl-demo.devinenterprise.com/sessions/c576ee6ab0a54c0a9307835c3d59c35a) | Open-MBEE/qvts | child of d11fe6d9 | ultra | 11-19 14:14 | suspended (inactivity) | 23m | 15.7 | 53 sh / 2 ed / 16 rd / 3 git / 0 mcp / 7+4 msg | [#144](https://github.com/Open-MBEE/qvts/pull/144) merged |

### OpenSysML — 7 sessions, 16h49 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Fix duplicate FeatureTyping elementId in accept transitions](https://nasa-jpl-demo.devinenterprise.com/sessions/c6d756924da34d8992cba771c1ea1181) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | running (working) | 3h42 | 35.2 ‡ | 159 sh / 35 ed / 28 rd / 13 git / 3 mcp / 9+5 msg | [#2411](https://github.com/Open-MBEE/OpenSysML/pull/2411) open |
| [Reflect six OpenSysML constructs with specified metaclass](https://nasa-jpl-demo.devinenterprise.com/sessions/bab01228433542b7b9f3da921ee46458) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:12 | suspended (inactivity) | 2h28 | 28.6 | 102 sh / 14 ed / 34 rd / 12 git / 5 mcp / 5+2 msg | [#2410](https://github.com/Open-MBEE/OpenSysML/pull/2410) open |
| [Fix two SPARQL versus native disagreeing cells](https://nasa-jpl-demo.devinenterprise.com/sessions/e4992bf060d148e38ae7b1a7f56dfffe) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:12 | suspended (inactivity) | 2h17 | 23.9 | 96 sh / 9 ed / 16 rd / 21 git / 0 mcp / 9+4 msg | [#2413](https://github.com/Open-MBEE/OpenSysML/pull/2413) open |
| [Drop declaredName from reflected ConjugatedPortDefinition](https://nasa-jpl-demo.devinenterprise.com/sessions/7e19ec1a4293400ebc18da775fd28e3d) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 2h12 | 18.1 | 86 sh / 13 ed / 28 rd / 9 git / 0 mcp / 3+1 msg | [#2412](https://github.com/Open-MBEE/OpenSysML/pull/2412) open |
| [Materialize annotation, cross-subsetting and set-relationship elements in OpenS…](https://nasa-jpl-demo.devinenterprise.com/sessions/350772dbcfae486db71b381707fba42d) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 13:46 | running (working) | 2h10 | 26.6 ‡ | 93 sh / 19 ed / 27 rd / 1 git / 0 mcp / 3+2 msg |  |
| [Mint elementIds for unidentified OpenSysML elements](https://nasa-jpl-demo.devinenterprise.com/sessions/b529ee82203349ffa2267e5296211e0c) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 2h10 | 24.5 | 95 sh / 13 ed / 31 rd / 9 git / 2 mcp / 4+1 msg | [#2408](https://github.com/Open-MBEE/OpenSysML/pull/2408) open |
| [Drop declaredName from reflected alias Membership](https://nasa-jpl-demo.devinenterprise.com/sessions/8bc8075b9c3743d88d65031ce7d2a054) | Open-MBEE/OpenSysML | child of 1d8450f1 | ultra | 11-19 12:11 | suspended (inactivity) | 1h46 | 15.7 | 55 sh / 5 ed / 15 rd / 10 git / 5 mcp / 8+3 msg | [#2409](https://github.com/Open-MBEE/OpenSysML/pull/2409) open |

### SBVR.lean — 12 sessions, 12h06 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [SBVR Remaining Work](https://nasa-jpl-demo.devinenterprise.com/sessions/6130c0278b22490f97ac13ac80b69e13) | Open-MBEE/SBVR.lean, Open-MBEE/engineering-foundation-architecture, Open-MBEE/face.lean, Open-MBEE/fprime, Open-MBEE/fprime-lean-sysmlv2-example, Open-MBEE/html-to-pdf.lean, Open-MBEE/leanCurl, Open-MBEE/mars.lean, Open-MBEE/prov.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-23 11:33 | suspended (inactivity) | 12m | 2191.0 † | 0 sh / 0 ed / 0 rd / 6 git / 2 mcp / 3+2 msg |  |
| [Close SBVR 21.3.1 role-binding coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/8430ef9557e242c0b2931d35919328d3) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | running (working) | 3h36 | 74.3 ‡ | 244 sh / 59 ed / 61 rd / 5 git / 5 mcp / 6+4 msg | [#77](https://github.com/Open-MBEE/SBVR.lean/pull/77) open |
| [Read SBVR Annex B categorization patterns](https://nasa-jpl-demo.devinenterprise.com/sessions/d44d9940d03748f6921dac9622c635a0) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 2h28 | 68.2 | 145 sh / 37 ed / 28 rd / 5 git / 24 mcp / 12+3 msg | [#73](https://github.com/Open-MBEE/SBVR.lean/pull/73) merged, [#76](https://github.com/Open-MBEE/SBVR.lean/pull/76) merged, [#78](https://github.com/Open-MBEE/SBVR.lean/pull/78) merged, [#79](https://github.com/Open-MBEE/SBVR.lean/pull/79) merged |
| [Close SBVR 21.3.7 objectification coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/8d415eccaf1745569716e0f27bc2183a) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 1h42 | 61.5 | 96 sh / 35 ed / 34 rd / 2 git / 5 mcp / 9+4 msg | [#74](https://github.com/Open-MBEE/SBVR.lean/pull/74) merged |
| [Close SBVR 21.3.9 n-variable question coverage](https://nasa-jpl-demo.devinenterprise.com/sessions/1c6d66aebe4a4607b3929f995438fd9c) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 1h14 | 31.2 | 79 sh / 25 ed / 43 rd / 4 git / 3 mcp / 5+1 msg | [#75](https://github.com/Open-MBEE/SBVR.lean/pull/75) merged |
| [Carry SBVR 15.2 quantities in core](https://nasa-jpl-demo.devinenterprise.com/sessions/6c1a8c373c3448c192c6feed4e476d16) | Open-MBEE/SBVR.lean | child of 273841e4 | ultra | 11-19 12:01 | suspended (inactivity) | 43m | 23.0 | 61 sh / 19 ed / 25 rd / 2 git / 5 mcp / 12+3 msg | [#72](https://github.com/Open-MBEE/SBVR.lean/pull/72) merged |
| [Add SBVR role bindings (21.3.1)](https://nasa-jpl-demo.devinenterprise.com/sessions/22b6843490b74cb5965625a8a32140fb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 2h05 | 119.5 † | 72 sh / 22 ed / 0 rd / 4 git / 13 mcp / 9+3 msg |  |
| [Add SBVR advices (17.1.3, 18.1.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/0ce2b73e56054880bfad1f2bb0f052eb) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1m | 37.8 † | 5 sh / 1 ed / 1 rd / 1 git / 0 mcp / 5+2 msg |  |
| [Add SBVR projections and sets (21.3.8, 21.4, 15.4)](https://nasa-jpl-demo.devinenterprise.com/sessions/a9c3e557c2364a498cea23796be4fc93) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:30 | suspended (inactivity) | 1m | 37.4 † | 3 sh / 0 ed / 1 rd / 0 git / 3 mcp / 5+1 msg |  |
| [Add SBVR numbers (15.3)](https://nasa-jpl-demo.devinenterprise.com/sessions/feceeb06357f48a3ae2640e4feeeef32) | Open-MBEE/SBVR.lean | child of 6130c027 | ultra | 11-18 17:31 | suspended (inactivity) | 0m | 72.5 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+1 msg |  |
| [Add fixtures for set parse/render fixes](https://nasa-jpl-demo.devinenterprise.com/sessions/04ed0d75ad674834ba79eb9971430d1b) | Open-MBEE/SBVR.lean | child of a9c3e557 | ultra | 11-18 20:39 | suspended (inactivity) | 0m | 9.2 † | 1 sh / 1 ed / 0 rd / 0 git / 0 mcp / 0+0 msg |  |
| [Draft OMG issues on SBVR chapter 15](https://nasa-jpl-demo.devinenterprise.com/sessions/860d51f9d5644947b837eb4e5e963935) | Open-MBEE/SBVR.lean | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 0m | 17.4 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+0 msg |  |

### prov.lean — 17 sessions, 7h00 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Open-MBEE prov.lean work](https://nasa-jpl-demo.devinenterprise.com/sessions/6cefe1a7b093446e92a78d16dc8350e7) | Open-MBEE/prov.lean | webapp | ultra | 11-17 12:59 | suspended (inactivity) | 6m | 109.5 † | 20 sh / 0 ed / 0 rd / 0 git / 14 mcp / 17+6 msg |  |
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

### L4YAML — 4 sessions, 3h56 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Review L4YAML Pull Requests](https://nasa-jpl-demo.devinenterprise.com/sessions/956b61080c1444a5ac64c4effb79da21) | nasa-jpl/L4YAML | webapp | ultra | 11-12 07:57 | suspended (inactivity) | 4m | 28.7 † | 8 sh / 0 ed / 0 rd / 9 git / 13 mcp / 8+2 msg |  |
| [Prove S3 scanner-output obligations for parse_iff_grammar](https://nasa-jpl-demo.devinenterprise.com/sessions/6661ae5b28ed42c8aa23bc799e21b980) | nasa-jpl/L4YAML | child of 24a21977 | ultra | 11-05 09:31 | suspended (inactivity) | 2h56 | 2060.8 † | 104 sh / 16 ed / 3 rd / 6 git / 0 mcp / 8+1 msg | [#358](https://github.com/nasa-jpl/L4YAML/pull/358) merged, [#359](https://github.com/nasa-jpl/L4YAML/pull/359) open |
| [Review L4YAML PR #357 coverage-script removal](https://nasa-jpl-demo.devinenterprise.com/sessions/7a56fcc248b24a9ba15eafbb74b0b2c1) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-19 10:53 | suspended (inactivity) | 31m | 10.0 | 40 sh / 4 ed / 2 rd / 4 git / 0 mcp / 4+2 msg |  |
| [Review L4YAML PR #356 Makefile removal](https://nasa-jpl-demo.devinenterprise.com/sessions/6e6a07305c4448c082ec070b7fe40306) | nasa-jpl/L4YAML | child of 956b6108 | ultra | 11-19 10:53 | suspended (inactivity) | 23m | 9.1 | 29 sh / 1 ed / 9 rd / 4 git / 0 mcp / 4+2 msg |  |

### git-remote-sync.lean — 2 sessions, 1h17 working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Sync Branches Before Tagging](https://nasa-jpl-demo.devinenterprise.com/sessions/ed1242ca218545928351c713645feabb) | Open-MBEE/git-remote-sync.lean, Open-MBEE/tasktree.lean | webapp | ultra | 11-19 08:48 | suspended (inactivity) | 49m | 22.9 | 85 sh / 17 ed / 40 rd / 4 git / 0 mcp / 12+5 msg | [#73](https://github.com/Open-MBEE/git-remote-sync.lean/pull/73) merged, [#74](https://github.com/Open-MBEE/git-remote-sync.lean/pull/74) merged, [tasktree.lean #6](https://github.com/Open-MBEE/tasktree.lean/pull/6) merged |
| [Implement git-remote-sync Release](https://nasa-jpl-demo.devinenterprise.com/sessions/0ef9f1e01998486785d96e8e7e3c8cd1) | Open-MBEE/git-remote-sync.lean | webapp | ultra | 11-19 08:42 | suspended (inactivity) | 27m | 28.9 | 66 sh / 13 ed / 52 rd / 4 git / 10 mcp / 16+8 msg | [#72](https://github.com/Open-MBEE/git-remote-sync.lean/pull/72) merged |

### devin-automation — 1 session, 41m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Keep devin-automation Website Updated](https://nasa-jpl-demo.devinenterprise.com/sessions/c7a14b6341a34d05ac0665757b51e6e4) | Open-MBEE/devin-automation | webapp | ultra | 11-19 15:13 | running (working) | 41m | 3.3 ‡ | 13 sh / 0 ed / 7 rd / 0 git / 38 mcp / 3+2 msg |  |

### (no repository) — 2 sessions, 16m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Continue Devin Session Work](https://nasa-jpl-demo.devinenterprise.com/sessions/273841e49ee34e0e888a4c28aafbe76f) |  | webapp | ultra | 11-19 11:59 | suspended (inactivity) | 12m | 10.3 | 7 sh / 0 ed / 1 rd / 3 git / 13 mcp / 7+1 msg |  |
| [Nicolas Rouquette Daily Session Report](https://nasa-jpl-demo.devinenterprise.com/sessions/1f6722c027c6406a8ce8d532e3945c38) |  | automation | ultra | 11-19 00:05 | suspended (inactivity) | 3m | 2.0 | 3 sh / 0 ed / 1 rd / 0 git / 485 mcp / 2+1 msg |  |

### nfr.workboard — 1 session, 15m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Set up nfr.workboard data repository layout](https://nasa-jpl-demo.devinenterprise.com/sessions/1ad77f6fe10a406c97b419296dbf6a97) | Open-MBEE/nfr.workboard, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 07:51 | suspended (inactivity) | 15m | 39.7 † | 57 sh / 21 ed / 7 rd / 2 git / 0 mcp / 9+2 msg | [tasktree.lean #7](https://github.com/Open-MBEE/tasktree.lean/pull/7) merged |

### PropertyKindCalculus — 2 sessions, 7m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Remediate PropertyKindCalculus Scan Findings](https://nasa-jpl-demo.devinenterprise.com/sessions/3330babe2d574d94af00602430577c5e) | nasa-jpl/PropertyKindCalculus | automation | ultra | 11-19 06:01 | suspended (inactivity) | 0m | 1.1 | 0 sh / 0 ed / 0 rd / 0 git / 1 mcp / 2+1 msg |  |
| [Add ISO 80000-1 and VIM reference chapter to PKC](https://nasa-jpl-demo.devinenterprise.com/sessions/ebfe9e8ade7b430db3b8fb9d6369cd2f) | nasa-jpl/PropertyKindCalculus | child of feceeb06 | ultra | 11-18 22:03 | suspended (inactivity) | 6m | 25.2 † | 8 sh / 2 ed / 0 rd / 2 git / 0 mcp / 4+1 msg | [#113](https://github.com/nasa-jpl/PropertyKindCalculus/pull/113) merged |

### mars.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Formalize Mars Model in Lean](https://nasa-jpl-demo.devinenterprise.com/sessions/1fbba99fbf8446d3a9ffe2110715fac4) | Open-MBEE/mars, Open-MBEE/mars.lean, Open-MBEE/pacti.lean, nasa-jpl/PropertyKindCalculus | webapp | ultra | 10-21 20:06 | suspended (inactivity) | 0m | 3588.7 † | 2 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+1 msg |  |

### tls-server.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Find TLR Mockup Repository](https://nasa-jpl-demo.devinenterprise.com/sessions/91b42ff1627a47dcab79badf39e6243a) | Open-MBEE/leanCurl, Open-MBEE/tls-server.lean | webapp | ultra | 11-18 08:19 | suspended (inactivity) | 0m | 25.2 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 1+0 msg |  |

### tasktree.lean — 1 session, 0m working

| Session | Repos | Kind | Mode | Created | Status | Working (day) | ACUs | Actions (day) | PRs opened (day) |
|---|---|---|---|---|---|---|---|---|---|
| [Make tasktree.lean release workflow run on both GitHub instances](https://nasa-jpl-demo.devinenterprise.com/sessions/0f6cdc5c40f943cba761a6a5afc4f007) | Open-MBEE/engineering-foundation-architecture, Open-MBEE/tasktree.lean | child of 7cbea5a8 | ultra | 11-18 14:57 | suspended (inactivity) | 0m | 38.5 † | 0 sh / 0 ed / 0 rd / 0 git / 0 mcp / 2+0 msg |  |
