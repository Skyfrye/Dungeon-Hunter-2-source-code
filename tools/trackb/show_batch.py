#!/usr/bin/env python3
"""Print one planned batch: its functions, then their Hex-Rays pseudocode.

  py -3 tools/trackb/show_batch.py e1 e1-net-transport-CNetPlayerManager-0
  py -3 tools/trackb/show_batch.py e1 <batch-id> --list      # functions only

The first argument names reports/decomp-reconstruction/trackb-batches/<wave>.json.
"""
import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def main() -> int:
    if len(sys.argv) < 3:
        print(__doc__)
        return 2
    wave, bid = sys.argv[1], sys.argv[2]
    batches = json.loads((ROOT / "reports" / "decomp-reconstruction" / "trackb-batches" / f"{wave}.json").read_text(encoding="utf-8"))
    b = next((x for x in batches if x["id"] == bid), None)
    if b is None:
        print(f"no batch {bid} in {wave}")
        return 1
    print(f"// batch {b['id']}  category={b['category']}  owner={b['owner']}  part {b['part'] + 1} of {b['parts']}")
    for f in b["functions"]:
        print(f"//   {f['address']}  {f['bytes']:6}  {f['demangled']}")
    if "--list" in sys.argv:
        return 0
    args = [sys.executable, str(ROOT / "tools" / "decomp_extract.py")]
    for f in b["functions"]:
        args += ["--address", f["address"]]
    sys.stdout.flush()
    return subprocess.call(args)


if __name__ == "__main__":
    raise SystemExit(main())
