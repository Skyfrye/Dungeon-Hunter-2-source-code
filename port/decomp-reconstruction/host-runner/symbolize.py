"""Symbolize a host runner crash report.

    python host-runner/symbolize.py <exe> <log> [addr2line]

Reads the "[crash] #N rva 0x..." lines of a runner log (game.log) and, for the guard-page heap build (dh2_win_headless_ph), the
"[heap] alloc #N rva 0x..." / "[heap] free #N rva 0x..." lines that say where the faulting block was allocated and freed, and prints the
function and source line of each frame with addr2line, using the PE preferred image base of the exe (addr2line addresses are
image-base relative for PE files). Only the last report in the log is shown.
"""
import re
import shutil
import struct
import subprocess
import sys

exe, log = sys.argv[1], sys.argv[2]
tool = sys.argv[3] if len(sys.argv) > 3 else (shutil.which("addr2line") or "addr2line")
with open(exe, "rb") as f:
    data = f.read(4096)
pe = struct.unpack_from("<I", data, 0x3C)[0]
image_base = struct.unpack_from("<Q", data, pe + 24 + 24)[0]   # optional header (PE32+): ImageBase at +24
text = open(log, errors="replace").read()
start = text.rfind("[crash] exception")
if start < 0:
    sys.exit("no crash report in " + log)
text = text[start:]
frames = [(m.group(1), m.group(2), int(m.group(3), 16)) for m in re.finditer(r"\[(crash|heap)\] (#|alloc #|free #)(\d+) rva", text) if False]
frames = []
for m in re.finditer(r"\[(crash|heap)\] (#|alloc #|free #)(\d+) rva (0x[0-9a-f]+)", text):
    tag = {"#": "crash", "alloc #": "alloc", "free #": "free"}[m.group(2)]
    frames.append((tag, int(m.group(3)), int(m.group(4), 16)))
for line in re.findall(r"\[(?:crash|heap)\] (?:access violation|address|exception)[^\n]*", text):
    print(line)
out = subprocess.run([tool, "-f", "-C", "-p", "-e", exe] + [hex(image_base + f[2]) for f in frames], capture_output=True, text=True).stdout.splitlines()
last = None
for (tag, idx, _), line in zip(frames, out):
    if tag != last:
        print("-- %s --" % {"crash": "crash stack", "alloc": "block allocated at", "free": "block freed at"}[tag])
        last = tag
    print("#%d %s" % (idx, line))
