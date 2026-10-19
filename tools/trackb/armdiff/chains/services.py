"""Engine services a chain needs that the headless emulator does not have: a file system that serves the real game
data folder, and the text pack (StringManager). Both sides get the same service; the stream objects it hands out are
StreamBuffers of that side's own implementation (the file system object itself is a fake whose vtable slots are
Python models)."""
from __future__ import annotations

import struct

import stubs
from chain import World, M32, DATA_ROOT
from unicorn.arm_const import UC_ARM_REG_LR

FS_VT_CLOSE = 0x78 // 4
FS_VT_OPEN = 0x90 // 4
FS_VT_SLOTS = 64
ORIG_DEVICE_OFF = 0x10          # Application::m_device
ORIG_STRINGMGR_OFF = 0x34       # Application::m_stringManager
DEVICE_FS_OFF = 0x34            # device -> file system
APP_SYM = "_ZN9SingletonI11ApplicationE6s_instE"
opened: list[str] = []


def _build_stream(m, data: bytes, recon: bool) -> int:
    sym = "_ZTV12StreamBuffer"
    vt = (m.recon.syms[sym] if recon and sym in m.recon.syms else m.orig.syms[sym]) + 8
    obj = m.heap_alloc(0x30)
    blk = m.heap_alloc(max(len(data), 1))
    m.write_mem(blk, data)
    vec = m.heap_alloc(8)
    m.write_mem(vec, struct.pack("<II", blk, 0))
    # vptr, read pos, write pos, Buffer{block size, vector begin/end/cap, size, sized flag}
    m.write_mem(obj, struct.pack("<I", vt) + bytes(4) + struct.pack("<QQ", 0, len(data)) +
                struct.pack("<IIIIII", len(data) or 1, vec, vec + 8, vec + 8, len(data), 1))
    return obj


@stubs.stub("chain_fs_open")
def _fs_open(m, a):
    path = stubs._cstr(m, a[1]).decode("latin1")
    opened.append(path)
    if m.trace:
        m.trace[-1] = ("chain_fs_open", (path,))             # compare the file asked for, not where its name lives
    f = DATA_ROOT / "data" / path
    if not f.is_file():
        return 0
    lr = m.uc.reg_read(UC_ARM_REG_LR)
    return _build_stream(m, f.read_bytes(), bool(m.recon is not None and m.recon.contains(lr)))


@stubs.stub("chain_fs_exists")
def _fs_exists(m, a):
    path = stubs._cstr(m, a[1]).decode("latin1")
    if m.trace:
        m.trace[-1] = ("chain_fs_exists", (path,))
    return 1 if (DATA_ROOT / "data" / path).is_file() else 0


@stubs.stub("chain_fs_close")
def _fs_close(m, a):
    if m.trace:
        m.trace[-1] = ("chain_fs_close", ())
    return None


@stubs.stub("chain_fs_unimpl")
def _fs_unimpl(m, a):
    raise stubs.Unmodeled("file system method not modelled by the chain harness")


def install_files(w: World) -> int:
    """A fake FileSystemBase (vtable +0x78 closeFile, +0x90 openResource) reachable as Application::m_device->+0x34,
    set in the original's and in the reconstruction's Application instance. Returns the device address."""
    m = w.m
    w.neuter("_ZN13DebugSwitches4loadEv")             # the debug-switch file reader needs more of the file system than this fake
    vt = w.alloc_service(4 * FS_VT_SLOTS)
    words = [m.stub_for("chain_fs_unimpl")] * FS_VT_SLOTS
    close_slot, open_slot = FS_VT_CLOSE, FS_VT_OPEN
    if w.side == "recon":
        # the reconstruction's CFileSystem base declares fewer virtual slots than the original's, so openResource and
        # closeFile sit at other vtable offsets; find them in the vtable clang built for FileSystemWin32
        img = m.recon
        base = img.syms["_ZTV15FileSystemWin32"] + 8
        for i in range(FS_VT_SLOTS):
            tgt = m.read_u32(base + 4 * i)
            if tgt == img.syms.get("_ZN15FileSystemWin3212openResourceEPKc"):
                open_slot = i
            elif tgt == img.syms.get("_ZN15FileSystemWin329closeFileERP11IFileStream"):
                close_slot = i
    words[close_slot] = m.stub_for("chain_fs_close")
    words[open_slot] = m.stub_for("chain_fs_open")
    extra = (("openFile", 0x88 // 4, "chain_fs_open", "_ZN15FileSystemWin328openFileEPKcbb"),
             ("doesResourceExists", 0xac // 4, "chain_fs_exists", "_ZN14FileSystemBase18doesResourceExistsEPKc"),
             ("doesFileExists", 0xa8 // 4, "chain_fs_exists", "_ZN14FileSystemBase14doesFileExistsEPKc"))
    for _nm, oslot, stub_name, rsym in extra:
        slot = oslot
        if w.side == "recon":
            img = m.recon
            base = img.syms["_ZTV15FileSystemWin32"] + 8
            slot = next((i for i in range(FS_VT_SLOTS) if m.read_u32(base + 4 * i) == img.syms.get(rsym)), oslot)
        words[slot] = m.stub_for(stub_name)
    w.write(vt, struct.pack(f"<{FS_VT_SLOTS}I", *words))
    fs = w.alloc_service(8, struct.pack("<II", vt, 0))
    dev = w.alloc_service(0x80)
    w.put_u32(dev + DEVICE_FS_OFF, fs)
    set_app_field(w, "m_device", ORIG_DEVICE_OFF, dev)
    return dev


def set_app_field(w: World, name: str, orig_off: int, value: int) -> None:
    m = w.m
    oa = m.orig.syms[APP_SYM]
    w.put_u32(oa + orig_off, value)
    if w.side == "recon" and APP_SYM in m.recon.syms:
        w.put_u32(m.recon.syms[APP_SYM] + w.field_offset("Application", name), value)


def install_strings(w: World, pack: int = 0) -> int:
    """A StringManager with the English pack loaded from the real text files, installed as Application::m_stringManager."""
    sm = w.heap(0x7d8, "@skip")
    w.call("_ZN13StringManagerC1Ev", sm, ret="void")
    set_app_field(w, "m_stringManager", ORIG_STRINGMGR_OFF, sm)
    w.neuter("_ZN13DebugSwitches4loadEv")
    w.call(w.fn("StringManager", "preloadPack"), sm, pack, mask=0xFF)
    w.call(w.fn("StringManager", "switchPack"), sm, pack, 0, mask=0xFF)
    return sm


def install_constants(w: World) -> int:
    """Application::m_pyDataConstants, loaded from the real *_pycst.bin files through the original Load() state machine."""
    pc = w.heap(0x24, "@skip")
    w.call(w.fn("PyDataConstants", "PyDataConstants", nth=0) if False else "_ZN15PyDataConstantsC1EP19DataReloaderManager", pc, 0, ret="void")
    set_app_field(w, "m_pyDataConstants", 0x2c, pc)
    load = w.fn("PyDataConstants", "Load")
    for _ in range(80):
        if w.call(load, pc) != 0:
            break
    return pc


def install_savegame_manager(w: World) -> int:
    """Application::m_savegameManager: a SavegameManager built by its constructor (options table empty)."""
    sm = w.heap(0x58, "@skip")
    w.call("_ZN15SavegameManagerC1Ev", sm, ret="void")
    set_app_field(w, "m_savegameManager", 0x4c, sm)
    return sm


def install_object_manager(w: World) -> int:
    """Application::m_objectManager: an ObjectManager built by its constructor (no level objects)."""
    om = w.heap(0x1b0, "@skip")
    w.call("_ZN13ObjectManagerC1Ev", om, ret="void")
    set_app_field(w, "m_objectManager", 0x38, om)
    return om


def install_lua_manager(w: World) -> int:
    """Application::m_luaManager: a LuaManager built by its constructor (the Lua VM is the original's in both worlds)."""
    lm = w.heap(0x1c, "@skip")
    w.call("_ZN10LuaManagerC1Ev", lm, ret="void")
    set_app_field(w, "m_luaManager", 0x3c, lm)
    return lm
