# Devin session report — transport. Paste into scripted_tools after replacing the __PLACEHOLDERS__.
# It only pages two Devin tools and saves their raw text; every computation is in the Lean `session-report` exe.
import re, json, asyncio, os, time
START = __START__   # unix seconds, inclusive (local midnight of the first day)
END = __END__       # unix seconds, exclusive (local midnight after the last day)
USER = "__USER__"   # user id whose sessions are reported
TZ = "__TZ__"       # IANA timezone of the report (recorded for the builder)
OUT = "__OUT__"     # raw data file, e.g. /home/ubuntu/report/raw.json
ACTION_TYPES = ["shell_process_started","multi_edit_result","multi_read_result","pr_created","git_pr_checks","git_comment_on_pr",
                "git_view_pr","git_update_pr","git_ci_job_logs","pr_take_over","mcp_tool_call","devin_message","user_message",
                "initial_user_message","web_search","web_get_contents","computer_use"]
NEXT = re.compile(r"after=(\S+) to (?:fetch|keep)")
os.makedirs(os.path.dirname(OUT), exist_ok=True)

async def pages(tool, cap, **args):
    """All lines of a paginated tool; complete=False if a page failed or the page cap was hit."""
    lines, after, n = [], None, 0
    while True:
        try: out = await tool(**dict(args, first=100, **({"after": after} if after else {})))
        except ToolCallError as e: lines.append(f"# error: {e}"); return lines, False
        lines += out.splitlines(); n += 1
        m = NEXT.search(out)
        if not m: return lines, True
        if n >= cap: return lines, False
        after = m.group(1)

search, search_complete = {}, True
for f in (dict(created_after=START, created_before=END), dict(updated_after=START, created_before=END)):
    ls, ok = await pages(tools.devin_session_search, 50, user_ids=[USER], **f)
    search_complete = search_complete and ok
    for l in ls:
        if l.startswith("- "): search[l[2:].split(" | ", 1)[0].strip()] = l
print("sessions:", len(search), "search complete:", search_complete)  # the builder refuses an incomplete search

sem = asyncio.Semaphore(8)
async def fetch(sid):
    async with sem:
        ev = lambda cap, **f: pages(tools.devin_session_events, cap, action="list", session_id=sid, **f)
        st = await ev(400, event_types=["status_update", "devin_suspended", "initial_user_message"])
        prs = await ev(50, event_types=["pr_created"])
        acts = await ev(150, event_types=ACTION_TYPES, created_after=START, created_before=END)
        if not acts[1]:  # too many for one sweep: one sweep per day
            ls, ok, t = [], True, START
            while t < END:
                l, c = await ev(150, event_types=ACTION_TYPES, created_after=t, created_before=min(t + 86400, END))
                ls += l; ok = ok and c; t += 86400
            acts = (ls, ok)
        return dict(id=sid, search=search[sid], status=dict(lines=st[0], complete=st[1]),
                    prs=dict(lines=prs[0], complete=prs[1]), actions=dict(lines=acts[0], complete=acts[1]))
res = await asyncio.gather(*[fetch(s) for s in search], return_exceptions=True)
sessions = [r if isinstance(r, dict) else dict(id=s, search=search[s], error=f"{type(r).__name__}: {r}") for s, r in zip(search, res)]
json.dump(dict(start=START, end=END, user=USER, tz=TZ, collected=int(time.time()), search_complete=search_complete, sessions=sessions), open(OUT, "w"), indent=1, ensure_ascii=False)
print("saved", OUT, "failed:", sum("error" in s for s in sessions),
      "incomplete:", sum(not (s.get("status", {}).get("complete", False) and s.get("prs", {}).get("complete", False) and s.get("actions", {}).get("complete", False)) for s in sessions))
