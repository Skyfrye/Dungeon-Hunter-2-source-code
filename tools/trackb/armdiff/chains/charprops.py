"""Character stat sheets: CharProperties built from the real CharacterTable / ClassTable rows."""
from chain import Chain, Boot, World, init_array
from chains.common import load_pydata

CHARPROPS_SIZE = 0xe34


def boot_pydata(w: World) -> None:
    n, bad = init_array(w.env, w.m.orig, w)
    w.faults += bad
    load_pydata(w)


def table_size(w: World, cls: str) -> int:
    return w.u32(w.sym(f"_ZN6Arrays{len(cls)}{cls}4sizeE"))


def new_props(w: World, name: str):
    cp = w.heap(CHARPROPS_SIZE, "CharProperties")
    w.call("_ZN14CharPropertiesC1Ev", cp, ret="void")
    w.root(name, cp)
    return cp


def run_load_base(w: World):
    cp = new_props(w, "cp")
    n = table_size(w, "CharacterTable")
    out = {"rows": n}
    for i in range(n):
        w.call(w.fn("CharProperties", "LoadBaseProperties"), cp, i, ret="void", fatal=False)
    return out


BOOTS = [Boot("pydata", boot_pydata, "static initialisers + every real pydata table read by the original")]
CHAINS = [Chain("charprops_load_base", "pydata", run_load_base, "CharProperties ctor + LoadBaseProperties for every CharacterTable row")]
