# Summarizes a run_levels.sh output folder: one Markdown row per level (loads / walkable / fights / loot / exits) and every assert, crash and
# sanitizer report found in the level's logs (deduplicated by location; the runner's own files are left out).
# usage: py -3 level_report.py <out dir>
import collections
import os
import re
import sys

root = sys.argv[1]
rows = []
reports = collections.OrderedDict()


def stat(lines, tag):
    for l in lines:
        if l.startswith("[levelstat] " + tag + " "):
            return dict(re.findall(r"(\w+)=(\S+)", l))
    return None


def num(d, k):
    try:
        return int(float(d.get(k, "0"))) if d else 0
    except ValueError:
        return 0


for name in sorted(os.listdir(root)):
    d = os.path.join(root, name)
    con = os.path.join(d, "console.txt")
    if not os.path.isfile(con):
        continue
    lines = open(con, encoding="latin1").read().splitlines()
    logp = os.path.join(d, "game.log")
    log = open(logp, encoding="latin1").read().splitlines() if os.path.isfile(logp) else []
    exitcode = next((l.split()[1] for l in lines if l.startswith("exit ")), "running")
    loaded, explore, hunt, loot, ex = (stat(lines, t) for t in ("loaded", "explore", "hunt", "loot", "exit"))
    target = name.replace("_mlx", ".mlx").replace("_rule_xml", ".rule.xml")
    if loaded is None:
        loads = "NO"
    elif loaded.get("level") != target:
        loads = "as " + loaded.get("level", "-")
    elif loaded.get("loadStep") == "38" and loaded.get("hero") == "yes":
        loads = "yes"
    else:
        loads = "step " + loaded.get("loadStep", "?")
    walked = sum(num(s, "walked") for s in (explore, hunt, loot, ex))
    kills = sum(num(s, "kills") for s in (hunt, loot, ex))
    deaths = sum(num(s, "deaths") for s in (explore, hunt, loot, ex))
    last = ex or loot or hunt or explore
    fights = f"{num(loaded, 'enemiesAlive')} enemies, {kills} kills, {deaths} deaths" if loaded else "-"
    lootc = (f"{num(loaded, 'lootLeft')} containers/drops; items {num(loaded, 'items')} -> {num(last, 'items')}, gold {num(loaded, 'gold')} -> {num(last, 'gold')}"
             if loaded and last else "-")
    route = "-"
    if ex:
        route = f"{ex.get('route', '-')} (reached/skipped/waypoints), exits {num(loaded, 'exits')}"
        if ex.get("level") != loaded.get("level"):
            route += f", left to {ex.get('level')}"
    found = []
    crash = [l for l in lines if l.startswith("[crash]")]
    if crash:
        found.append("CRASH " + crash[0][8:])
    for l in log:
        if "host-runner/" in l:
            continue
        m = re.search(r"(runtime error: .*|ASSERT\(.*\) FAILED.*)", l)
        if m:
            loc = re.sub(r".*decomp-reconstruction/", "", l.split(": runtime error")[0]) if "runtime error" in l else m.group(1)
            if "freetype" in loc or "misaligned" in l:
                continue
            key = loc[:160]
            reports.setdefault(key, set()).add(name)
            found.append(key)
        m = re.search(r"SUMMARY: AddressSanitizer: (.*)", l)
        if m:
            key = "ASan " + re.sub(r"\S*decomp-reconstruction/", "", m.group(1))[:160]
            reports.setdefault(key, set()).add(name)
            found.append(key)
    rows.append((target, loads, walked if loaded else "-", fights, lootc, route, exitcode, len(set(found))))

print("| level | loads | walked | fights | loot | route / exits | exit | reports |")
print("| --- | --- | --- | --- | --- | --- | --- | --- |")
for r in rows:
    print("| " + " | ".join(str(x) for x in r) + " |")
print()
for key, names in reports.items():
    print(f"- {key}  [{len(names)} levels: {', '.join(sorted(names)[:5])}{' ...' if len(names) > 5 else ''}]")
