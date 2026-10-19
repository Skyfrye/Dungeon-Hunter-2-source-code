#!/usr/bin/env python3
"""Print an original class's vtable slots: byte offset -> method.

  python3 tools/decomp_vtable.py Console
  python3 tools/decomp_vtable.py glitch::video::IVideoDriver

Ghidra writes virtual calls as ``(**(code **)(*obj + 0x98))(obj, ...)``; offset
0x98 here is the byte offset from the vtable's address point, which is slot 2 of
the listing below (Itanium ABI: offset-to-top and typeinfo come first).
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
VT = ROOT / "recovered" / "native" / "symbols" / "libDungeonHunter2.so" / "vtables-001.json"


def main() -> int:
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    want = sys.argv[1]
    hits = [v for v in json.loads(VT.read_text(encoding="utf-8")) if v["demangled"] in (f"vtable for {want}",)]
    if not hits:
        hits = [v for v in json.loads(VT.read_text(encoding="utf-8")) if want in v["demangled"]][:5]
    for v in hits:
        print(f"// {v['demangled']}  ({v['name']}, {v['size']} bytes)")
        point = None
        for e in v["entries"]:
            if point is None and e["offset"] >= 8 and (e["target_symbols"] or e["raw_word"]):
                point = e["offset"]  # address point follows offset-to-top + typeinfo
            if point is None:
                continue
            rel = e["offset"] - point
            target = ", ".join(e["target_symbols"]) or (f"raw 0x{e['raw_word']:x}" if e["raw_word"] else "(null / pure)")
            print(f"  +0x{rel:03x}  {target}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
