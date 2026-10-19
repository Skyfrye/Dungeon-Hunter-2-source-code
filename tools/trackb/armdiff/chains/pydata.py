"""Chains over the pydata readers: real *_pyarray.bin / *_pyarraynames.bin files through Arrays::X::read."""
import re

from chain import Chain, Boot, World, init_array
from chains.common import load_pydata

IGN = (r"m_memberNames",)      # the reconstruction keeps the names in pydata::NameTable{names,size}: compared as values below


def boot_init(w: World) -> None:
    """The original's static initialisers (.init_array) and nothing else: the state before any game code ran."""
    n, bad = init_array(w.env, w.m.orig, w)
    w.faults += bad


def member_names(w: World) -> dict:
    """The member-name table of every Arrays class, as lists of strings. The original keeps a char** in
    m_memberNames and the count in Arrays::X::size; the reconstruction keeps pydata::NameTable{names, size}."""
    out = {}
    for name in sorted(w.m.orig.syms):
        mo = re.fullmatch(r"_ZN6Arrays(\d+)(\w+?)13m_memberNamesE", name)
        if not mo or len(mo.group(2)) != int(mo.group(1)):
            continue
        cls = mo.group(2)
        a = w.sym(name)
        names_ptr = w.u32(a)
        if w.side == "recon":
            count = w.u32(a + 4)
        else:
            sz = w.m.orig.syms.get(f"_ZN6Arrays{len(cls)}{cls}4sizeE")
            count = w.u32(sz) if sz else 0
        items = []
        if names_ptr and 0 < count < 4096:
            for i in range(count):
                p = w.u32(names_ptr + 4 * i)
                s = bytearray()
                while p:
                    c = w.u8(p + len(s))
                    if c == 0:
                        break
                    s.append(c)
                items.append(bytes(s).decode("latin1"))
        out[f"names:{cls}"] = items
    return out


def run_small(w: World):
    files = ["ai_factions_pyarray.bin", "ai_factions_pyarraynames.bin"]
    load_pydata(w, files)
    return member_names(w)


def run_all(w: World):
    load_pydata(w)
    return member_names(w)


def run_control(w: World):
    """Negative control: the reconstruction side reads a file with one flipped byte. The harness must report it."""
    from chains.common import PYDATA_DIR, make_stream, pydata_plan
    for f, readers in pydata_plan():
        if f != "ai_factions_pyarray.bin":
            continue
        data = bytearray((PYDATA_DIR / f).read_bytes())
        if w.side == "recon":
            data[len(data) // 2 + 1] ^= 0x01
        sb = make_stream(w, bytes(data))
        for sym in readers:
            w.call(sym, sb, ret="void")
    return {}


BOOTS = [Boot("init", boot_init, "static initialisers of the original only")]
CHAINS = [
    Chain("pydata_ai_factions", "init", run_small, "ai_factions pyarray + names through StreamBuffer and Arrays readers", ignore_globals=IGN),
    Chain("pydata_read_all", "init", run_all, "all 70 pydata files through every Arrays::X::read/readNames/skipNames", ignore_globals=IGN),
    Chain("control_flipped_byte", "init", run_control, "negative control: one flipped input byte on the reconstruction side must be reported",
          ignore_globals=IGN),
]
