"""Owner C2 probe: can the original build the swamp king's visual object (collada database + anim set) in Unicorn?"""
import struct
import stubs
from chain import Chain, World, ChainError, DATA_ROOT, M32
from chains.charprops import BOOTS as _B
from chains.combat import ai_world

BOSS_ROW = 358      # character_properties_pyarraynames.bin: "SwampKing"

# ---- libc FILE model over the real data folder (the glitch CReadFile uses stdio)
_files: dict[int, list] = {}


def _resolve(path: str):
    p = path.replace("\\", "/")
    for cand in (DATA_ROOT / p, DATA_ROOT / "data" / p, DATA_ROOT / p.split("data/", 1)[-1]):
        if cand.is_file():
            return cand
    return None


def _fopen(m, a):
    path = stubs._cstr(m, a[0]).decode("latin1")
    f = _resolve(path)
    LOG.append(("fopen", path, f is not None))
    if f is None:
        return 0
    h = m.heap_alloc(16)
    _files[h] = [f.read_bytes(), 0]
    return h


def _fread(m, a):
    buf, sz, n, h = a[:4]
    d = _files[h]
    want = sz * n
    chunk = d[0][d[1]:d[1] + want]
    m.write_mem(buf, chunk)
    d[1] += len(chunk)
    return len(chunk) // sz if sz else 0


def _fseek(m, a):
    d = _files[a[0]]
    off = struct.unpack("<i", struct.pack("<I", a[1]))[0]
    d[1] = off if a[2] == 0 else (d[1] + off if a[2] == 1 else len(d[0]) + off)
    return 0


LOG: list = []
stubs.MODELS["fopen"] = _fopen
stubs.MODELS["fread"] = _fread
stubs.MODELS["fseek"] = _fseek
stubs.MODELS["ftell"] = lambda m, a: _files[a[0]][1]
stubs.MODELS["rewind"] = lambda m, a: _files[a[0]].__setitem__(1, 0)
stubs.MODELS["fclose"] = lambda m, a: 0


def run_probe(w: World):
    out = {}
    (c, ai, props), = ai_world(w, [BOSS_ROW])
    fs = w.call("_ZN6glitch2io16createFileSystemEv", fatal=False)
    out["fs"] = fs is not None and fs != 0
    dev = w.heap(0x140, "@skip")
    w.put_u32(dev + 0x34, fs or 0)
    w.call("_ZN6glitch4core6detail12_GLOBAL__N_120initSharedStringHeapEb", 1, ret="void", fatal=False)
    drv = w.call("_ZN6glitch5video16createNullDriverEPNS_7IDeviceE", dev, fatal=False)
    out["drv"] = drv
    w.put_u32(dev + 0x10, drv or 0)
    appdev = w.u32(w.m.orig.syms["_ZN9SingletonI11ApplicationE6s_instE"] + 0x10)
    out["appdev"] = appdev
    w.put_u32(appdev + 0x10, drv or 0)
    if drv:
        out["drv_sm"] = (w.u32(drv + 216), w.u32(drv + 220), w.u32(drv + 228))
        sm = w.u32(drv + 216)
        out["sm_vt"] = w.u32(sm) if sm else 0
        ob = w.heap(16, "@skip")
        r = w.call("_ZN6glitch5video18CNullShaderManager12createShaderEPKc", ob, sm, w.cstr("77"), fatal=False)
        out["sh"] = (w.u32(ob), str([(l.name[:50], l.status, l.detail[:200]) for l in w.log[-1:]]))
    mgr = w.heap(0x40, "@skip")
    w.call("_ZN6glitch7collada15CResFileManagerC1EPNS_7IDeviceE", mgr, dev, ret="void", fatal=False)
    nm = w.call(w.fn("Character", "GetCharModelName"), c, fatal=False)
    w.call("_ZN10GameObject15SetVisualObjectEPKcS1_b", c, nm, 0, 1, fatal=False, ret="void")
    from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_R2, UC_ARM_REG_R11, UC_ARM_REG_R12
    uc = w.m.uc
    r2 = uc.reg_read(UC_ARM_REG_R2); r11 = uc.reg_read(UC_ARM_REG_R11)
    try:
        out["regs"] = (hex(r2), hex(r11), [hex(x) for x in w.words(r2 - 0x20, 20)] if r2 > 0x1000 else None, [hex(x) for x in w.words(r11, 4)])
    except Exception as e:
        out["regs"] = str(e)
    out["log"] = str([(l.name[:60], l.status, l.detail[:520]) for l in w.log if l.status != "ok"][-3:])
    out["files"] = str(LOG[-5:])
    off = 0x2d8 if w.side == "orig" else w.field_offset("GameObject", "m_visualObject")
    out["visual"] = w.u32(c + off) != 0
    return out


CHAINS = [Chain("swk_probe", "pydata", run_probe, "swamp king: build the visual object through SetVisualObject", compare_heap=False, budget=2_000_000_000)]
