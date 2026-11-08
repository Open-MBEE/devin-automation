#!/usr/bin/env python3
"""Devin session report builder: data.json (from collect.py) -> report.json + Markdown.
usage: build.py --kind daily|weekly|monthly --start YYYY-MM-DD --end YYYY-MM-DD(exclusive) [--data F] [--out DIR] [--tz ZONE] [--who NAME]"""
import json, re, datetime as dt, collections, argparse
from zoneinfo import ZoneInfo
ap = argparse.ArgumentParser()
ap.add_argument("--kind", required=True, choices=["daily", "weekly", "monthly"])
ap.add_argument("--start", required=True); ap.add_argument("--end", required=True)
ap.add_argument("--data", default="/home/ubuntu/report/data.json"); ap.add_argument("--out", default="/home/ubuntu/report")
ap.add_argument("--base-url", default="https://nasa-jpl-demo.devinenterprise.com/sessions/", help="session URL prefix of your Devin deployment")
ap.add_argument("--tz", default="America/Los_Angeles"); ap.add_argument("--who", default="Nicolas Rouquette")
ap.add_argument("--group", default="name", choices=["name", "repo"], help="name: forks/mirrors of a repo count as one project (default); repo: owner/repo")
A = ap.parse_args()
TZ = ZoneInfo(A.tz)
d = json.load(open(A.data)); S = d["sessions"]
BASE = A.base_url
def loc(ts): return dt.datetime.fromtimestamp(ts, TZ)
def pts(s): return dt.datetime.strptime(s, "%Y-%m-%d %H:%M:%S").replace(tzinfo=dt.timezone.utc).timestamp()
D0 = dt.date.fromisoformat(A.start); D1 = dt.date.fromisoformat(A.end)
DAYS = [D0 + dt.timedelta(days=i) for i in range((D1 - D0).days)]
START = dt.datetime.combine(D0, dt.time(), TZ).timestamp(); END = dt.datetime.combine(D1, dt.time(), TZ).timestamp()
NOW = min(END, dt.datetime.now(TZ).timestamp())
LABEL = {"daily": f"{D0:%A %Y-%m-%d}", "weekly": f"week {D0:%Y-%m-%d} → {DAYS[-1]:%Y-%m-%d}", "monthly": f"{D0:%B %Y}"}[A.kind]
SLUG = {"daily": D0.isoformat(), "weekly": f"{D0.isoformat()}-week", "monthly": f"{D0:%Y-%m}"}[A.kind]

REPO = re.compile(r"(?:@|\b)((?:Open-MBEE|nasa-jpl|open-mbee)/[\w-]+(?:\.[\w-]+)*)")
def project(s):
    p = s.get("prompt_head", "")
    prs = re.findall(r"github\.com/([\w.-]+/[\w.-]+)/pull/\d+\[(\w+)\]", s.get("pull_requests", ""))
    pr_repos = []
    for r, _ in prs:
        if r not in pr_repos: pr_repos.append(r)
    m = [x.replace("open-mbee/", "Open-MBEE/") for x in REPO.findall(p)]
    if pr_repos:
        cnt = collections.Counter(r for r, _ in prs); best = max(cnt.values())
        cands = [r for r in pr_repos if cnt[r] == best]
        prim = m[0] if (m and m[0] in cands) else cands[0]
    elif m: prim = m[0]
    elif "@repos:" in p: prim = re.search(r"@repos:(\S+)", p).group(1)
    elif "memory refinement" in s["title"].lower(): prim = "(Devin housekeeping)"
    elif "blueprint" in s["title"].lower() or "snapshot" in s["title"].lower(): prim = "(Devin environment)"
    else: prim = "(no repository)"
    if A.group == "name" and "/" in prim: prim = prim.split("/", 1)[1]
    return prim, pr_repos

def working_intervals(s):
    evs = sorted((pts(ts), summ) for ts, summ in s.get("status_events", []))
    out, start = [], None
    for t, summ in evs:
        st = summ.split(":", 1)[-1].strip()
        if st == "working":
            if start is None: start = t
        elif start is not None: out.append((start, t)); start = None
    if start is not None:
        end = NOW if "working" in s.get("status", "") else float(s.get("updated", NOW))
        out.append((start, max(start, end)))
    return out

def per_day_seconds(ivs):
    res = collections.defaultdict(float)
    for a, b in ivs:
        a = max(a, START); b = min(b, END)
        t = a
        while t < b:
            day = loc(t).date()
            nxt = dt.datetime.combine(day + dt.timedelta(days=1), dt.time(), TZ).timestamp()
            e = min(b, nxt); res[day.isoformat()] += e - t; t = e
    return res

GROUPS = {"shell": ["shell_process_started"], "edits": ["multi_edit_result"], "reads": ["multi_read_result"],
          "git": ["pr_created", "git_pr_checks", "git_comment_on_pr", "git_view_pr", "git_update_pr", "git_ci_job_logs", "pr_take_over"],
          "mcp": ["mcp_tool_call"], "devin_msgs": ["devin_message"], "user_msgs": ["user_message", "initial_user_message"],
          "web": ["web_search", "web_get_contents", "computer_use"]}
def grp(counts): return {g: sum(counts.get(t, 0) for t in ts) for g, ts in GROUPS.items()}
def total(a): return sum(a.values()) - a["user_msgs"]

rows = []
for sid, s in S.items():
    prim, pr_repos = project(s)
    created = float(s["created"])
    wd = per_day_seconds(working_intervals(s))
    apd = {}
    for day_utc, c in s.get("actions_per_day", {}).items():
        t = pts(day_utc + " 12:00:00")
        if START - 43200 <= t < END + 43200:
            k = loc(t).date().isoformat()
            if k in {x.isoformat() for x in DAYS}: apd[k] = grp(c)
    states = dict(re.findall(r"(https://github\.com/[\w./-]+/pull/\d+)\[(\w+)\]", s.get("pull_requests", "")))
    prs_created = [dict(ts=pts(ts), day=loc(pts(ts)).date().isoformat(), url=u, repo=re.search(r"github\.com/([\w.-]+/[\w.-]+)/pull", u).group(1),
                        num=u.rstrip("/").split("/")[-1], state=states.get(u, "?")) for ts, u in s.get("pr_created", []) if START <= pts(ts) < END]
    r = dict(id=sid, url=BASE + sid, title=s["title"], project=prim, pr_repos=pr_repos, origin=s.get("origin"), mode=s.get("devin_mode"),
             status=s.get("status", ""), parent=s.get("parent_session_id"), category=s.get("category"), created=created,
             created_in_window=START <= created < END, acus=float(s.get("acus_consumed", 0) or 0), working=dict(wd),
             acus_scope=("older" if created < START else "spills" if (float(s.get("updated", created)) >= END or "running" in s.get("status", "")) else "in"),
             repos=sorted(set(pr_repos) | ({m0} if (m0 := next(iter(REPO.findall(s.get("prompt_head", ""))), None)) else set())),
             actions_by_day=apd, prs_created=prs_created, actions_capped=not s.get("complete", True))
    if r["created_in_window"] or sum(wd.values()) >= 60 or any(total(a) for a in apd.values()) or prs_created: rows.append(r)
rows.sort(key=lambda r: (r["project"], -r["acus"]))
# ---------------- Tables (the YAML export reads these; see schemas/session-report/*.yaml)
def _wsum(r, days=None): return sum(v for k, v in r["working"].items() if days is None or k in days)
def _asum(r, days=None): return {g: sum(a[g] for k, a in r["actions_by_day"].items() if days is None or k in days) for g in GROUPS}
def _prs(r, days=None): return [p for p in r["prs_created"] if days is None or p["day"] in days]
def _iso(ts): return loc(ts).isoformat(timespec="seconds")
ALLD = {x.isoformat() for x in DAYS}
SCOPE = {"in": "inWindow", "spills": "spillsPast", "older": "older"}
ACT = {"shell": "shell", "edits": "edits", "reads": "reads", "git": "git", "mcp": "mcp", "devin_msgs": "devin_messages", "user_msgs": "user_messages", "web": "web"}
def _acts(a): return {ACT[g]: int(a[g]) for g in GROUPS}
byp = collections.defaultdict(list)
for r in rows: byp[r["project"]].append(r)
tables = dict(
    report=dict(kind=A.kind, label=LABEL, who=A.who, timezone=A.tz, start=_iso(START), end=_iso(END), generated=_iso(NOW),
                days=[x.isoformat() for x in DAYS], sessions=len(rows), projects=len(byp)),
    project_totals=[dict(project=p, sessions=len(g), sessions_created=sum(r["created_in_window"] for r in g),
                         working_seconds=int(round(sum(_wsum(r, ALLD) for r in g))),
                         acus_in_window=sum(r["acus"] for r in g if r["acus_scope"] == "in"),
                         acus_spilling=sum(r["acus"] for r in g if r["acus_scope"] == "spills"),
                         acus_older=sum(r["acus"] for r in g if r["acus_scope"] == "older"),
                         actions=sum(total(_asum(r, ALLD)) for r in g), actions_capped=any(r["actions_capped"] for r in g),
                         prs_opened=sum(len(_prs(r, ALLD)) for r in g))
                    for p, g in sorted(byp.items(), key=lambda kv: -sum(_wsum(r, ALLD) for r in kv[1]))],
    working_by_day=[dict(project=p, day=x.isoformat(), working_seconds=int(round(sum(r["working"].get(x.isoformat(), 0) for r in g))))
                    for p, g in sorted(byp.items()) for x in DAYS if sum(r["working"].get(x.isoformat(), 0) for r in g) >= 1],
    sessions=[dict(session_id=r["id"], url=r["url"], title=r["title"], project=r["project"], repos=r["repos"], origin=r["origin"] or "unknown",
                   parent_session_id=r["parent"], mode=r["mode"], status=r["status"], created=_iso(r["created"]),
                   created_in_window=r["created_in_window"], acus=r["acus"], acus_scope=SCOPE[r["acus_scope"]],
                   working_seconds=int(round(_wsum(r, ALLD))), **_acts(_asum(r, ALLD)), actions_capped=r["actions_capped"],
                   prs_opened=[dict(url=p["url"], repo=p["repo"], number=int(p["num"]), state=p["state"], day=p["day"]) for p in _prs(r, ALLD)])
              for r in rows],
    session_days=[dict(day=x.isoformat(), session_id=r["id"], project=r["project"],
                       working_seconds=int(round(r["working"].get(x.isoformat(), 0))), **_acts(_asum(r, {x.isoformat()})),
                       prs_opened=len(_prs(r, {x.isoformat()})))
                  for r in rows for x in DAYS
                  if r["working"].get(x.isoformat(), 0) >= 1 or total(_asum(r, {x.isoformat()})) or _prs(r, {x.isoformat()})],
)
json.dump(dict(kind=A.kind, label=LABEL, who=A.who, tz=A.tz, start=START, end=END, now=NOW, days=[x.isoformat() for x in DAYS], rows=rows, tables=tables),
          open(f"{A.out}/report-{SLUG}.json", "w"), indent=1, ensure_ascii=False)  # L4YAML reads this as YAML: no JSON surrogate-pair escapes

# ---------------- Markdown
def hms(sec):
    h, m = divmod(int(sec // 60), 60); return f"{h}h{m:02d}" if h else f"{m}m"
def short(x, n=80): return x if len(x) <= n else x[:n-1] + "…"
def acts_str(a): return f"{a['shell']} sh / {a['edits']} ed / {a['reads']} rd / {a['git']} git / {a['mcp']} mcp / {a['devin_msgs']}+{a['user_msgs']} msg"
def wsum(r, days=None): return sum(v for k, v in r["working"].items() if days is None or k in days)
def asum(r, days=None): return {g: sum(a[g] for k, a in r["actions_by_day"].items() if days is None or k in days) for g in GROUPS}
def prs_in(r, days=None): return [p for p in r["prs_created"] if days is None or p["day"] in days]
def kind(r): return ("child of " + r["parent"][:8]) if r["parent"] else r["origin"]
def pr_md(ps, proj): return ", ".join(f"[{'' if p['repo'].split('/')[-1] == proj.split('/')[-1] else p['repo'].split('/')[1] + ' '}#{p['num']}]({p['url']}) {p['state']}" for p in ps)

L = [f"# Devin session report — {LABEL}\n",
     f"Sessions of {A.who} created or active between {loc(START):%a %Y-%m-%d %H:%M} and {loc(NOW):%a %Y-%m-%d %H:%M} ({A.tz}): {len(rows)} sessions.\n",
     "How to read the numbers:\n",
     "- **ACUs** are the session's lifetime total as reported by the API (there is no per-day ACU breakdown). † = session created before the window, ‡ = session created in the window but still active after it; in both cases the ACUs are not attributable to the window alone. Only unmarked sessions' ACUs are fully inside it.",
     "- **Projects** group all forks/mirrors of a repository under its name (e.g. nasa-jpl/L4YAML and Open-MBEE/L4YAML); the repositories involved are listed per session.",
     "- **Working time** = sum of the intervals between a `status: working` event and the next `blocked`/`finished`/`suspended` event, clipped to the window and split at local midnight. This is VM time while Devin was actually running; sleeping and waiting-for-you time is excluded.",
     "- **Actions** = event counts in the window: `sh` shell commands, `ed` file-edit batches, `rd` file-read batches, `git` PR/CI operations, `mcp` MCP/Devin-API tool calls, `msg` Devin+user messages; bucketed by UTC day. Sessions marked ≥ hit the event-page cap, so their counts are lower bounds.",
     "- The API does not expose VM size/performance class. `mode` is the agent mode (ultra/normal/fusion), not the VM.\n"]

def session_table(rs, proj, days, head):
    out = [f"| Session | Repos | Kind | Mode | Created | Status | Working ({head}) | ACUs | Actions ({head}) | PRs opened ({head}) |", "|---|---|---|---|---|---|---|---|---|---|"]
    for r in sorted(rs, key=lambda r: (r["parent"] or "", -wsum(r, days))):
        acu = f"{r['acus']:.1f}" + {"in": "", "spills": " ‡", "older": " †"}[r["acus_scope"]]
        out.append(f"| [{short(r['title'])}]({r['url']}) | {', '.join(r['repos'])} | {kind(r)} | {r['mode']} | {loc(r['created']):%m-%d %H:%M} | {r['status']} | {hms(wsum(r, days))} | {acu} | {'≥' if r['actions_capped'] else ''}{acts_str(asum(r, days))} | {pr_md(prs_in(r, days), proj)} |")
    return out

def grouped(rs, days):
    by = collections.defaultdict(list)
    for r in rs: by[r["project"]].append(r)
    return sorted(by.items(), key=lambda kv: -sum(wsum(r, days) for r in kv[1]))

def day_section(day, level="##"):
    iso = day.isoformat(); days = {iso}
    rs = [r for r in rows if r["working"].get(iso, 0) >= 60 or total(r["actions_by_day"].get(iso, {g: 0 for g in GROUPS})) or prs_in(r, days)]
    out = [f"{level} {day:%A %Y-%m-%d}\n"]
    if not rs: return out + ["_No session activity._\n"]
    by = grouped(rs, days)
    out.append(f"{len(rs)} sessions across {len(by)} projects, {hms(sum(r['working'].get(iso, 0) for r in rs))} of working time, {sum(len(prs_in(r, days)) for r in rs)} PRs opened.\n")
    for proj, g in by:
        out.append(f"{level}# {proj} — {len(g)} session{'s' if len(g) != 1 else ''}, {hms(sum(r['working'].get(iso, 0) for r in g))} working\n")
        out += session_table(g, proj, days, "day") + [""]
    return out

if A.kind == "daily":
    L += day_section(D0)
else:
    alld = {x.isoformat() for x in DAYS}
    by = grouped(rows, alld)
    L.append(f"## Per-project totals ({LABEL})\n")
    L.append("| Project | Sessions (created in window) | Working time | ACUs (sessions fully in window) | ACUs ‡ (created in window, still active after) | ACUs † (older sessions, lifetime) | Actions | PRs opened |")
    L.append("|---|---|---|---|---|---|---|---|")
    def acu(g, sc): return sum(r["acus"] for r in g if r["acus_scope"] == sc)
    for proj, g in by:
        new = [r for r in g if r["created_in_window"]]
        L.append(f"| **{proj}** | {len(g)} ({len(new)}) | {hms(sum(wsum(r, alld) for r in g))} | {acu(g, 'in'):.1f} | {acu(g, 'spills'):.1f} | {acu(g, 'older'):.1f} | {sum(total(asum(r, alld)) for r in g):,}{'≥' if any(r['actions_capped'] for r in g) else ''} | {sum(len(prs_in(r, alld)) for r in g)} |")
    L.append("")
    # period columns: days for a week, ISO weeks for a month
    if len(DAYS) <= 10: cols = [(f"{x:%a %d}", {x.isoformat()}) for x in DAYS]
    else:
        wk = collections.OrderedDict()
        for x in DAYS: wk.setdefault(f"wk {x.isocalendar()[1]}", set()).add(x.isoformat())
        cols = list(wk.items())
    L.append(f"## Working time per project per {'day' if len(DAYS) <= 10 else 'ISO week'} (hours)\n")
    L.append("| Project | " + " | ".join(c for c, _ in cols) + " | Total |"); L.append("|---|" + "---|" * (len(cols) + 1))
    for proj, g in by:
        cells = [sum(wsum(r, ds) for r in g) / 3600 for _, ds in cols]
        L.append(f"| {proj} | " + " | ".join(f"{c:.1f}" if c >= 0.05 else "·" for c in cells) + f" | {sum(cells):.1f} |")
    L.append("")
    L.append("## Sessions by project\n")
    for proj, g in by:
        L.append(f"### {proj} — {len(g)} session{'s' if len(g) != 1 else ''}, {hms(sum(wsum(r, alld) for r in g))} working\n")
        L += session_table(g, proj, alld, "window") + [""]
    L.append("## Day by day\n")
    for x in DAYS: L += day_section(x, "###")
open(f"{A.out}/devin-report-{SLUG}.md", "w").write("\n".join(L))
print(f"wrote {A.out}/devin-report-{SLUG}.md and report-{SLUG}.json: {len(rows)} sessions")
