"""Per-function feature extractor for iOS armv7 (ARM mode, stripped) and Android armeabi-v7a (Thumb-2/ARM, symbols).
usage: py -3 -I extract.py ios|android OUT.pkl
Reads binaries only as data (never executes)."""
import sys, struct, pickle
from capstone import *
from capstone.arm import *

S = '<home>/AppData/Local/Temp/claude/C--Users-user-Documents-Projects-Dungeon-Hunter-2-Recomp-DH-sc/92aea28a-441d-487f-b829-7d37b39f798b/scratchpad/'
PRINT = set(range(32, 127)) | {9, 10, 13}


class Img:
    def __init__(s): s.regs = []
    def add(s, va, data): s.regs.append((va, data))
    def read(s, va, n):
        for a, d in s.regs:
            if a <= va < a + len(d): return d[va - a:va - a + n]
        return b''
    def u32(s, va):
        d = s.read(va, 4)
        return struct.unpack('<I', d)[0] if len(d) == 4 else None
    def cstr(s, va):
        for a, d in s.regs:
            if a <= va < a + len(d):
                e = d.find(b'\0', va - a)
                return d[va - a:e] if e >= 0 else None
        return None


def load_ios():
    sys.path.insert(0, S + 'matcher')
    from iosload import IOS
    m = IOS(); img = Img()
    for name, vm, vs, fo, fsz in m.segs:
        if fsz: img.add(vm, m.b[fo:fo + fsz])
    t = m.secs['__text']
    strregs = [(m.secs['__cstring'][0], m.secs['__cstring'][1])]
    b = m.b
    nc = struct.unpack('<I', b[16:20])[0]; off = 28; ind = None; stubs = None
    while nc:
        cmd, cs = struct.unpack('<II', b[off:off + 8])
        if cmd == 0xb:
            f = struct.unpack('<18I', b[off + 8:off + 80]); ind = (f[12], f[13])
        if cmd == 1:
            ns = struct.unpack('<I', b[off + 48:off + 52])[0]; so = off + 56
            for i in range(ns):
                sn = b[so:so + 16].rstrip(b'\0').decode(); ad, sz = struct.unpack('<2I', b[so + 32:so + 40])
                r1 = struct.unpack('<I', b[so + 60:so + 64])[0]
                if sn == '__symbol_stub4': stubs = (ad, sz, r1)
                so += 68
        off += cs; nc -= 1
    imports = {}
    ad, sz, r1 = stubs
    for i in range(sz // 12):
        idx = struct.unpack('<I', b[ind[0] + 4 * (r1 + i):ind[0] + 4 * (r1 + i) + 4])[0]
        if idx < len(m.syms):
            nm = m.syms[idx][0]
            imports[ad + 12 * i] = nm
    return img, t, strregs, imports, m


def ios_starts(img, t, imports):
    base, size, _ = t
    data = img.read(base, size)
    n = size // 4
    words = struct.unpack('<%dI' % n, data[:n * 4])
    starts = set()
    for i, w in enumerate(words):
        a = base + 4 * i
        if (w & 0xffff0000) == 0xe92d0000 and (w & 0x4000): starts.add(a)
        elif w == 0xe52de004: starts.add(a)
        top = w >> 24
        if top == 0xeb or top == 0xfa or top == 0xfb:
            off = w & 0xffffff
            if off & 0x800000: off -= 0x1000000
            tgt = a + 8 + off * 4
            if top == 0xfb: tgt += 2
            tgt &= ~1
            if base <= tgt < base + size and tgt not in imports: starts.add(tgt)
    return sorted(starts)


def load_android():
    from elftools.elf.elffile import ELFFile
    f = ELFFile(open(S + 'android-so/libDungeonHunter2.so', 'rb'))
    img = Img()
    for sec in f.iter_sections():
        if sec['sh_addr'] and sec['sh_type'] != 'SHT_NOBITS' and sec['sh_flags'] & 2:
            img.add(sec['sh_addr'], sec.data())
    ro = f.get_section_by_name('.rodata')
    strregs = [(ro['sh_addr'], ro['sh_size'])]
    syms = []
    st = f.get_section_by_name('.symtab')
    for s in st.iter_symbols():
        if s['st_info']['type'] == 'STT_FUNC' and s['st_size'] > 0 and s['st_shndx'] != 'SHN_UNDEF':
            syms.append((s['st_value'] & ~1, s['st_size'], bool(s['st_value'] & 1), s.name))
    syms = sorted(set(syms))
    byaddr = {}
    for a, sz, thm, nm in syms:
        if a in byaddr: byaddr[a][3].append(nm)
        else: byaddr[a] = (a, sz, thm, [nm])
    syms = [(a, sz, thm, nms) for a, (a, sz, thm, nms) in sorted(byaddr.items())]
    imports = {}
    plt = f.get_section_by_name('.plt'); rp = f.get_section_by_name('.rel.plt'); ds = f.get_section_by_name('.dynsym')
    for i, r in enumerate(rp.iter_relocations()):
        imports[plt['sh_addr'] + 20 + 12 * i] = ds.get_symbol(r['r_info_sym']).name
    return img, strregs, imports, syms, f


def analyze(img, strregs, imports, fstart, fsize, thumb, mdl):
    md = mdl[1] if thumb else mdl[0]
    code = img.read(fstart, fsize)
    strs = []; calls = []; consts = set(); ptrs = set(); ninsn = 0; nbr = 0; regs = {}

    def tr(v):
        if v is None: return
        for a, n in strregs:
            if a <= v < a + n:
                c = img.cstr(v)
                if c and len(c) >= 3 and all(x in PRINT for x in c[:80]):
                    if v == a or img.read(v - 1, 1) == b'\0': strs.append(c.decode('ascii', 'replace'))
                return

    def val(op, pcv):
        if op.type == ARM_OP_IMM: return op.imm
        if op.type == ARM_OP_REG:
            if op.reg == ARM_REG_PC: return pcv
            return regs.get(op.reg)

    for i in md.disasm(code, fstart):
        ninsn += 1
        mn = i.mnemonic
        if mn.startswith("."): continue
        ops = i.operands
        pcv = i.address + 4 if thumb else i.address + 8
        if mn in ('bl', 'blx') and ops and ops[0].type == ARM_OP_IMM:
            calls.append(ops[0].imm & ~1); regs = {}
            continue
        if mn.startswith('b'): nbr += 1
        try:
            if not ops: continue
            if mn.startswith('ldr') and len(ops) == 2 and ops[1].type == ARM_OP_MEM and ops[1].mem.base == ARM_REG_PC and ops[1].mem.index == 0:
                a = (pcv & ~3) + ops[1].mem.disp
                w = img.u32(a)
                regs[ops[0].reg] = w
                if w is not None: consts.add(w); tr(w)
            elif mn in ('movw', 'mov', 'movs', 'mov.w') and len(ops) == 2 and ops[0].type == ARM_OP_REG:
                v = val(ops[1], pcv); regs[ops[0].reg] = v
                if ops[1].type == ARM_OP_IMM: consts.add(ops[1].imm & 0xffffffff)
            elif mn == 'movt' and len(ops) == 2:
                lo = regs.get(ops[0].reg)
                if lo is not None:
                    v = (lo & 0xffff) | ((ops[1].imm & 0xffff) << 16); regs[ops[0].reg] = v; consts.add(v); tr(v); ptrs.add(v)
                else: regs[ops[0].reg] = None
            elif mn.startswith('add') and len(ops) >= 2 and ops[0].type == ARM_OP_REG:
                rd = ops[0].reg
                if len(ops) == 2: a_, b_ = ops[0], ops[1]
                else: a_, b_ = ops[1], ops[2]
                av = val(a_, pcv); bv = val(b_, pcv)
                if av is not None and bv is not None:
                    v = (av + bv) & 0xffffffff; regs[rd] = v; tr(v); ptrs.add(v)
                else: regs[rd] = None
            elif ops[0].type == ARM_OP_REG and mn[:3] in ('ldr', 'sub', 'and', 'orr', 'eor', 'mul', 'lsl', 'lsr', 'asr', 'mvn', 'rsb', 'bic', 'cmp', 'cmn', 'tst', 'mla', 'orn', 'adc', 'sbc'):
                if not mn.startswith(('cmp', 'cmn', 'tst')): regs[ops[0].reg] = None
                if len(ops) >= 2 and ops[-1].type == ARM_OP_IMM and mn[:3] in ('sub', 'and', 'orr', 'eor', 'cmp', 'cmn', 'tst', 'rsb', 'bic') and abs(ops[-1].imm) >= 0x100:
                    consts.add(ops[-1].imm & 0xffffffff)
        except Exception:
            pass
    return dict(start=fstart, size=fsize, thumb=thumb, strs=sorted(set(strs)), calls=calls, consts=consts, ptrs=ptrs, ninsn=ninsn, nbr=nbr)


if __name__ == '__main__':
    which = sys.argv[1]; out = sys.argv[2]
    arm = Cs(CS_ARCH_ARM, CS_MODE_ARM); arm.detail = True; arm.skipdata = True
    th = Cs(CS_ARCH_ARM, CS_MODE_THUMB); th.detail = True; th.skipdata = True
    mdl = (arm, th)
    funcs = []
    if which == 'ios':
        img, t, strregs, imports, m = load_ios()
        starts = ios_starts(img, t, imports)
        end = t[0] + t[1]
        for i, s in enumerate(starts):
            e = starts[i + 1] if i + 1 < len(starts) else end
            funcs.append(analyze(img, strregs, imports, s, e - s, False, mdl))
    else:
        img, strregs, imports, syms, f = load_android()
        for a, sz, thm, nm in syms:
            r = analyze(img, strregs, imports, a, sz, thm, mdl); r['name'] = nm[0]; r['aliases'] = nm[1:]; funcs.append(r)
    pickle.dump(dict(funcs=funcs, imports=imports), open(out, 'wb'))
    print(which, len(funcs), sum(1 for f in funcs if f['strs']), 'with strings')
