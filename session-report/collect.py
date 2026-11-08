# Devin session report — collector. Paste into scripted_tools (it calls Devin tools). Edit START/END/USER/OUT.
import re, json, asyncio, os
START = __START__     # unix seconds, inclusive (local midnight of the first day)
END = __END__         # unix seconds, exclusive (local midnight after the last day)
USER = "__USER__"     # user id whose sessions are reported
OUT = "__OUT__"       # where to write the raw data

os.makedirs(os.path.dirname(OUT), exist_ok=True)
EV = re.compile(r"^\[(event-\w+)\] (\d{4}-\d\d-\d\d \d\d:\d\d:\d\d) UTC (<<<|>>>) (\w+) \((\w+)\): ?(.*)$")
ACTION_TYPES = ["shell_process_started","multi_edit_result","multi_read_result","pr_created","git_pr_checks","git_comment_on_pr",
                "git_view_pr","git_update_pr","git_ci_job_logs","pr_take_over","mcp_tool_call","devin_message","user_message",
                "initial_user_message","web_search","web_get_contents","computer_use"]
sessions = {}
async def search(**f):
    after = None
    while True:
        a = dict(user_ids=[USER], first=100, **f)
        if after: a["after"] = after
        out = await tools.devin_session_search(**a)
        for line in out.splitlines():
            if not line.startswith("- "): continue
            parts = [p.strip() for p in line[2:].split(" | ")]
            d = {"id": parts[0], "title": parts[1]}
            for p in parts[2:]:
                if "=" in p: k, v = p.split("=", 1); d[k] = v
                elif p.startswith("status"): d["status"] = p
            sessions[d["id"]] = d
        m = re.search(r"after=(\S+) to fetch", out)
        if not m: break
        after = m.group(1)
await asyncio.gather(search(created_after=START, created_before=END), search(updated_after=START, created_before=END))
print("sessions:", len(sessions))
async def events(sid, cap=150, **filt):
    res, after, pages, complete = [], None, 0, True
    while True:
        a = dict(action="list", session_id=sid, first=100, **filt)
        if after: a["after"] = after
        try: out = await tools.devin_session_events(**a)
        except ToolCallError: complete = False; break
        for line in out.splitlines():
            m = EV.match(line)
            if m: res.append({"ts": m.group(2), "type": m.group(4), "sum": m.group(6)[:200]})
        m = re.search(r"after=(\S+) to (?:fetch|keep)", out); pages += 1
        if not m: break
        if pages >= cap: complete = False; break
        after = m.group(1)
    return res, complete
def bucket(acts):
    counts, per_day = {}, {}
    for e in acts:
        counts[e["type"]] = counts.get(e["type"], 0) + 1
        per_day.setdefault(e["ts"][:10], {}); per_day[e["ts"][:10]][e["type"]] = per_day[e["ts"][:10]].get(e["type"], 0) + 1
    return counts, per_day
sem = asyncio.Semaphore(8)
async def enrich(sid, d):
    async with sem:
        st, c1 = await events(sid, cap=400, event_types=["status_update", "devin_suspended", "initial_user_message"])
        prs, _ = await events(sid, cap=50, event_types=["pr_created"])
        acts, c2 = await events(sid, event_types=ACTION_TYPES, created_after=START, created_before=END)
        if not c2:  # too big for one sweep: per-day sweeps
            acts, c2 = [], True
            t = START
            while t < END:
                ev, c = await events(sid, event_types=ACTION_TYPES, created_after=t, created_before=min(t + 86400, END))
                acts += ev; c2 = c2 and c; t += 86400
    d["status_events"] = [(e["ts"], e["sum"]) for e in st if e["type"] in ("status_update", "devin_suspended")]
    first = [e for e in st if e["type"] == "initial_user_message"]
    d["prompt_head"] = first[0]["sum"] if first else ""
    d["pr_created"] = [(e["ts"], re.search(r"https?://\S+", e["sum"]).group(0)) for e in prs if "http" in e["sum"]]
    d["action_counts"], d["actions_per_day"] = bucket([e for e in acts if e["type"] in ACTION_TYPES])
    d["complete"] = c1 and c2
    print("done", sid[:8], len(st), len(acts), d["complete"])
await asyncio.gather(*[enrich(s, d) for s, d in sessions.items()], return_exceptions=True)
json.dump({"start": START, "end": END, "user": USER, "sessions": sessions}, open(OUT, "w"), indent=1)
print("saved", OUT)
