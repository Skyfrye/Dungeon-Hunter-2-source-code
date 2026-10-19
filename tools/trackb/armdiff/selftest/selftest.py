#!/usr/bin/env python3
"""armdiff self-test: the comparison must call faithful clones equal and deliberately wrong clones different.

    py -3 tools/trackb/armdiff/selftest/selftest.py

Runs run.py with --unit controls.cpp over seven functions of the original library and checks the verdicts:
two faithful clones must match, five wrong clones (wrong return value, wrong offset, extra increment, a missing
store, an extra library call) must mismatch. Exit status 0 only if all seven verdicts are as expected.
"""
from __future__ import annotations

import csv
import subprocess
import sys
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
RUN = HERE.parent / "run.py"

EXPECT = {
    0x3C932C: ("match", "CharAnimator::ANIM_GetStepIndex() const, faithful clone"),
    0x364400: ("match", "AnimApplicator::SetCallback, faithful clone"),
    0x3C9444: ("mismatch", "ANIM_SkipNextStep adds 2 instead of 1"),
    0x3C946C: ("mismatch", "ANIM_SetStep stores into the next field"),
    0x3C948C: ("mismatch", "ANIM_StopLoop never sets the flag at +0x4a"),
    0x3649D8: ("mismatch", "AnimationSet::Update calls operator new"),
    0x36621C: ("mismatch", "Animator::getType returns 12, original 11"),
}


def main() -> int:
    with tempfile.TemporaryDirectory() as td:
        out = Path(td) / "selftest.csv"
        cmd = [sys.executable, str(RUN), "--unit", str(HERE / "controls.cpp"), "--cases", "32", "--csv", str(out)]
        for a in EXPECT:
            cmd += ["--address", hex(a)]
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0 or not out.exists():
            print(r.stdout[-2000:])
            print(r.stderr[-2000:])
            print("selftest: run.py failed")
            return 2
        rows = {int(x["address"], 16): x for x in csv.DictReader(out.open(encoding="utf-8"))}
    bad = 0
    for addr, (want, what) in EXPECT.items():
        row = rows.get(addr)
        got = row["result"] if row else "missing"
        ok = got == want
        bad += 0 if ok else 1
        detail = (row["reason_or_difference"][:90] if row else "")
        print(f"{'ok  ' if ok else 'FAIL'} 0x{addr:x} expected {want:8s} got {got:8s} {what}  [{detail}]")
    print("selftest:", "PASS" if bad == 0 else f"{bad} unexpected verdicts")
    return 0 if bad == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
