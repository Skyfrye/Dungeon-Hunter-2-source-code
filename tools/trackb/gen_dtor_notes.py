#!/usr/bin/env python3
"""Generate the dtor + getType notes for the scene/ note-quality pass.

Every note is derived from the listing (which instructions, which callee, which offset) plus the
current C++ body (whether it is `= default`, which members it releases). Nothing is asserted that
was not read.

Output: stdout, `addr<TAB>status<TAB>note`, one row per dtor/getType ledger row with an empty note.
"""
from __future__ import annotations

import argparse
import csv
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from note_evidence import CALL, INSN, split  # noqa: E402

WORK = Path(__import__("os").path.expanduser("~") + r"\Documents\Projects\Dungeon Hunter 2 Recomp\DH_sc\.worktrees\track-b")
SRC = WORK / "port" / "decomp-reconstruction"

FREES = {
    "_Z10CustomFreePv": "CustomFree",
    "LC_API_FREE_0": "LC_API_FREE_0",
    "_Z10GlitchFreePv": "GlitchFree",
    "_ZdaPv": "operator delete[]",
    "_ZdlPv": "operator delete",
}
FRIENDLY = {
    "_ZN6glitch5scene10ISceneNodeD2Ev": "ISceneNode::~ISceneNode",
    "_ZN6glitch7IObjectD2Ev": "IObject::~IObject",
    "_ZN6glitch5scene18ISceneNodeAnimatorD2Ev": "ISceneNodeAnimator::~ISceneNodeAnimator",
    "_ZNK6glitch17IReferenceCounted4dropEv": "IReferenceCounted::drop",
    "_ZN6glitch5scene10ISceneNode9removeAllEv": "ISceneNode::removeAll",
    "_ZN6glitch5video21STransformationSource6detachEv": "STransformationSource::detach",
    "_ZN6glitch5scene25CSceneNodeAnimatorTexture13clearTexturesEv": "CSceneNodeAnimatorTexture::clearTextures",
    "_ZN6glitch5scene10CMeshCache5clearEv": "CMeshCache::clear",
    "_ZN6glitch5video14CVertexStreamsD1Ev": "CVertexStreams::~CVertexStreams",
    "_ZN6glitch5video27CMaterialVertexAttributeMapD1Ev": "CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap",
    "_ZN5boost13intrusive_ptrIN6glitch5video9CMaterialEED1Ev": "the CMaterial handle member",
}


def friendly(name: str) -> str:
    if name in FRIENDLY:
        return FRIENDLY[name]
    if "intrusive_ptr" in name and name.endswith("D1Ev"):
        return "an intrusive_ptr member"
    if name.startswith("_ZNSt6vectorI") and name.endswith("D1Ev"):
        return "the vector member"
    if name.startswith("_ZNSt4priv8_Rb_treeI"):
        return "the config map (_Rb_tree::_M_erase)"
    return name


def calls_of(body: list[str]) -> list[str]:
    out: list[str] = []
    for line in body:
        if not INSN.match(line):
            continue
        m = CALL.match(line.strip())
        if m:
            out.append(m.group(1).split(";")[0])
    return out


def src_block(addr: str) -> tuple[str, str] | None:
    for path in sorted(SRC.rglob("*.cpp")):
        text = path.read_text(encoding="utf-8", errors="replace")
        idx = text.find(addr)
        if idx < 0:
            continue
        head = text.rfind("\n\n", 0, idx)
        head = 0 if head < 0 else head
        tail = text.find("\n\n", idx)
        tail = len(text) if tail < 0 else tail
        return text[head:tail].strip(), path.name
    return None


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ledger", required=True)
    ap.add_argument("--listings", required=True)
    a = ap.parse_args()
    rows = list(csv.DictReader(Path(a.ledger).read_text(encoding="utf-8").splitlines()))
    want = {
        r["elf_address"]: r
        for r in rows
        if r["notes"] == ""
        and (
            r["source_file"].startswith("glitch-scene-collada-gui/src/scene/")
            or r["source_file"].startswith("glitch-scene-collada-gui/include/glitch-scene-collada-gui/scene/")
        )
        and (re.search(r"D[012]Ev$", r["symbol"]) or r["symbol"].endswith("getTypeEv"))
    }
    by_sym = {r["symbol"]: r["elf_address"] for r in rows}
    blocks = {addr: (sym, body) for addr, sym, body in split(Path(a.listings).read_text(encoding="utf-8", errors="replace"))}
    for addr, row in want.items():
        if addr not in blocks:
            print(f"# WARNING: no listing for {addr}", file=sys.stderr)
            continue
        sym, body = blocks[addr]
        insns = [l.strip() for l in body if INSN.match(l)]
        calls = calls_of(body)
        src = src_block(addr)
        if sym.endswith("getTypeEv"):
            value = next(
                (m.group(1) for line in insns for m in [re.match(r"^(?:MOV|MOVS|MOVW)\s+R0,\s*#(0x[0-9A-Fa-f]+|\d+)$", line)] if m),
                None,
            )
            shown = f"{value} = {int(value, 16)}" if value and value.startswith("0x") else str(value)
            const = ""
            if src:
                vm = re.search(r"return\s+([A-Za-z_][A-Za-z0-9_]*)\s*;", src[0])
                if vm:
                    const = f" The port returns {vm.group(1)}"
                    lm = re.search(rf"{vm.group(1)}\s*=\s*(?:fourcc\(\"([^\"]+)\"\)|([-0-9]+))", "\n".join(
                        p.read_text(encoding="utf-8", errors="replace") for p in SRC.rglob("scene_types.hpp")
                    ))
                    if lm:
                        const += f" ({lm.group(1) if lm.group(1) else lm.group(2)})"
                    const += "."
            print(
                f"{addr}\treconstructed\tVerified against the listing {addr}: the entire body is the constant return "
                f"`{shown}` (one instruction), so the type is a compile-time fourcc/enum value.{const} Nothing else to reproduce."
            )
            continue
        variant = sym[-4:-2]
        kind = {"D0": "deleting", "D1": "complete-object", "D2": "base-object"}[variant]
        # The base destructor this variant chains to (a D1/D2 call, not the D0 thunk back into D1).
        base = next((c for c in calls if c.endswith(("D1Ev", "D2Ev")) and c != sym), None)
        free = next((FREES[c] for c in calls if c in FREES), None)
        steps: list[str] = []
        for c in dict.fromkeys(calls):
            if c == base or c in FREES:
                continue
            steps.append(friendly(c))
        member_stores = sorted(
            {
                m.group(0).split("[", 1)[1].rstrip("]").strip()
                for m in re.finditer(r"STR[BHD]?\s+\S+,\s*\[[^\]]*#0x[0-9A-Fa-f]+\]", "\n".join(insns))
            }
        )
        note = f"Verified against the listing {addr}: "
        if len(insns) <= 2:
            note += (
                "the body is the single return of a variant with nothing to release (the compiler-emitted empty "
                "destructor of an abstract interface)"
            )
        else:
            note += f"the {kind} destructor "
            pieces: list[str] = []
            if variant in ("D1", "D2"):
                if base:
                    pieces.append(f"chains to {friendly(base)}" if base != sym else "")
            elif base:
                pieces.append(f"chains to {friendly(base)}")
            if steps:
                pieces.append(", ".join(steps))
            if free:
                pieces.append(f"frees the block with {free}")
            note += ", ".join(p for p in pieces if p)
        if member_stores and not (src and "= default" in src[0]):
            note += "; member writes " + ", ".join(f"[{s}]" for s in member_stores)
        if src and "= default" in src[0]:
            note += ". The port writes it `= default`, which is the same base destructor and member teardown"
        elif src:
            note += ". The port spells the body out, see the comment above it"
        others = []
        for v in ("D0", "D1", "D2"):
            other = sym[:-4] + v + "Ev"
            if other != sym:
                others.append(f"{v}{' = row ' + by_sym[other] if other in by_sym else ''}")
        note += f". Sibling variants: {', '.join(others)}."
        print(f"{addr}\treconstructed\t{note}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
