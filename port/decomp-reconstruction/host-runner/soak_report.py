# Deduplicates the findings of a run_levels.sh soak folder: every ASan report, UBSan runtime error, ASSERT and runner crash, keyed by its top
# frames inside the reconstruction (the first three game frames of the stack, or the source location of a UBSan line). One line per key with the
# runs that hit it, then a per-run summary (exit code, last levelstat).
# usage: py -3 soak_report.py <out dir> [--stacks]
import collections
import os
import re
import sys

root = sys.argv[1]
show_stacks = "--stacks" in sys.argv
findings = collections.OrderedDict()   # key -> {"runs": set, "kind": str, "stack": [..]}
runs = []

frame_re = re.compile(r"^\s*#\d+ 0x[0-9a-f]+ in (.*?) (?:\S*decomp-reconstruction/)?(\S+?):(\d+)")


def game_frames(lines, start):
    out = []
    for l in lines[start + 1:start + 60]:
        m = frame_re.match(l)
        if not m:
            if out and not l.strip().startswith("#"):
                break
            continue
        fn, path, line = m.group(1), m.group(2), m.group(3)
        if "llvm-mingw" in path or "/c++/" in path or "host-runner/" in path or path.startswith("C:\\") or "compiler-rt" in path:
            continue
        out.append(f"{fn.split('(')[0]} ({path.split('/')[-1]}:{line})")
        if len(out) == 3:
            break
    return out


def add(key, kind, run, stack):
    e = findings.setdefault(key, {"runs": set(), "kind": kind, "stack": stack})
    e["runs"].add(run)


for name in sorted(os.listdir(root)):
    d = os.path.join(root, name)
    con = os.path.join(d, "console.txt")
    if not os.path.isfile(con):
        continue
    clines = open(con, encoding="latin1").read().splitlines()
    log = open(os.path.join(d, "game.log"), encoding="latin1").read().splitlines() if os.path.isfile(os.path.join(d, "game.log")) else []
    for i, l in enumerate(log):
        if "AddressSanitizer failed to allocate" in l or "AddressSanitizer: out of memory" in l:
            add("environment: out of commit memory (Windows error 1455; the emulators of other owners hold most of the commit charge)", "env", name, [])
        elif "ERROR: AddressSanitizer:" in l:
            kind = re.search(r"AddressSanitizer: (\S+)", l).group(1)
            stack = game_frames(log, i)
            add(kind + " @ " + " <- ".join(stack[:3]), "ASan", name, stack)
        elif "runtime error:" in l and "host-runner/" not in l:
            loc = re.sub(r".*decomp-reconstruction/", "", l.split(": runtime error")[0])
            if "freetype" in loc or "misaligned" in l:
                continue
            add("UBSan " + loc + ": " + l.split("runtime error: ")[1][:90], "UBSan", name, [])
        elif "ASSERT(" in l and "FAILED" in l:
            add(l.strip()[:160], "ASSERT", name, [])
    crash = [l for l in clines if l.startswith("[crash]")]
    if crash and not any("AddressSanitizer" in l for l in log):
        add("crash " + crash[0][8:80], "crash", name, crash[2:6])
    exitcode = next((l.split()[1] for l in clines if l.startswith("exit ")), "running")
    last = next((l for l in reversed(clines) if l.startswith("[levelstat]")), "")
    runs.append((name, exitcode, last[12:200]))

print(f"## {len(findings)} distinct findings over {len(runs)} runs\n")
for key, e in findings.items():
    print(f"- [{e['kind']}] {key}  ({len(e['runs'])} runs: {', '.join(sorted(e['runs'])[:4])}{' ...' if len(e['runs']) > 4 else ''})")
    if show_stacks and e["stack"]:
        for s in e["stack"]:
            print(f"    {s}")
print()
for name, code, last in runs:
    print(f"{name}: exit {code} | {last}")
