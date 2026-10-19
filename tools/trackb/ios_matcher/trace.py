"""trace.py and|ios ADDR : compact event trace of a function (calls with partner names, vcalls, strings, big immediates, branches).
Annotates iOS calls with the matched Android symbol (from m.pkl) and Android calls with symbol names."""
import sys, pickle
sys.path.insert(0, '<home>/AppData/Local/Temp/claude/C--Users-user-Documents-Projects-Dungeon-Hunter-2-Recomp-DH-sc/92aea28a-441d-487f-b829-7d37b39f798b/scratchpad/matcher')
import extract
from capstone import *
from capstone.arm import *

d = pickle.load(open('m.pkl', 'rb')) if len(sys.argv) < 4 else pickle.load(open(sys.argv[3], 'rb'))
af, if_, mt = d['af'], d['if_'], d['match']
aidx = {f['start']: n for n, f in enumerate(af)}; iidx = {f['start']: n for n, f in enumerate(if_)}
rev = {i: a for a, (i, c, w) in mt.items()}


def run(which, addr, maxev=400):
    if which == 'and':
        img, strregs, imports, syms, f = extract.load_android(); fn = af[aidx[addr]]
        name = lambda t: af[aidx[t]]['name'][:60] if t in aidx else imports.get(t, hex(t))
    else:
        img, t, strregs, imports, m = extract.load_ios(); fn = if_[iidx[addr]]
        def name(t):
            if t in imports: return imports[t]
            if t in iidx:
                i = iidx[t]
                return ('~' + af[rev[i]]['name'][:55]) if i in rev else 'ios_%x' % t
            return hex(t)
    md = Cs(CS_ARCH_ARM, CS_MODE_THUMB if fn['thumb'] else CS_MODE_ARM); md.detail = True; md.skipdata = True
    ev = []; regs = {}; lastldr = {}
    for i in md.disasm(img.read(fn['start'], fn['size']), fn['start']):
        mn = i.mnemonic
        if mn.startswith('.'): continue
        ops = i.operands; pcv = i.address + (4 if fn['thumb'] else 8)
        a = '%x' % i.address
        if mn in ('bl', 'blx') and ops and ops[0].type == ARM_OP_IMM:
            ev.append((a, 'CALL ' + name(ops[0].imm & ~1))); regs = {}; continue
        if mn == 'blx' and ops and ops[0].type == ARM_OP_REG:
            lo = lastldr.get(ops[0].reg); ev.append((a, 'VCALL ' + (('+0x%x' % lo) if lo is not None else '?'))); continue
        if mn.startswith('b') and ops and ops[0].type == ARM_OP_IMM:
            ev.append((a, '%s -> %x' % (mn, ops[0].imm))); continue
        try:
            if mn.startswith('ldr') and ops and ops[1].type == ARM_OP_MEM:
                if ops[1].mem.base == ARM_REG_PC:
                    w = img.u32((pcv & ~3) + ops[1].mem.disp); regs[ops[0].reg] = w
                elif ops[1].mem.index == 0:
                    lastldr[ops[0].reg] = ops[1].mem.disp; regs[ops[0].reg] = None
                    if ops[1].mem.disp >= 0x10 or ops[1].mem.disp == 0: pass
                else: regs[ops[0].reg] = None
            elif mn in ('movw', 'mov') and len(ops) == 2 and ops[0].type == ARM_OP_REG:
                if ops[1].type == ARM_OP_IMM:
                    regs[ops[0].reg] = ops[1].imm & 0xffffffff
                    if (ops[1].imm & 0xffffffff) >= 0x100: ev.append((a, 'IMM %#x' % (ops[1].imm & 0xffffffff)))
                else: regs[ops[0].reg] = regs.get(ops[1].reg)
            elif mn == 'movt':
                lo = regs.get(ops[0].reg)
                if lo is not None:
                    v = (lo & 0xffff) | ((ops[1].imm & 0xffff) << 16); regs[ops[0].reg] = v
                    ev.append((a, 'IMM32 %#x' % v)); _s(img, v, strregs, ev, a)
            elif mn.startswith('add') and len(ops) >= 2 and ops[0].type == ARM_OP_REG:
                x = ops[1] if len(ops) == 3 else ops[0]; y = ops[2] if len(ops) == 3 else ops[1]
                gx = pcv if (x.type == ARM_OP_REG and x.reg == ARM_REG_PC) else (regs.get(x.reg) if x.type == ARM_OP_REG else x.imm)
                gy = pcv if (y.type == ARM_OP_REG and y.reg == ARM_REG_PC) else (regs.get(y.reg) if y.type == ARM_OP_REG else y.imm)
                if gx is not None and gy is not None:
                    v = (gx + gy) & 0xffffffff; regs[ops[0].reg] = v; _s(img, v, strregs, ev, a)
                else: regs[ops[0].reg] = None
            elif mn.startswith('cmp') and len(ops) == 2 and ops[1].type == ARM_OP_IMM:
                ev.append((a, 'CMP #%d' % ops[1].imm))
            elif ops and ops[0].type == ARM_OP_REG and mn[:3] in ('sub', 'and', 'orr', 'eor', 'mul', 'lsl', 'lsr', 'asr', 'mvn', 'rsb', 'bic', 'mla'):
                regs[ops[0].reg] = None
        except Exception:
            pass
        if mn.startswith('ldr') and ops and ops[1].type == ARM_OP_MEM and ops[1].mem.base == ARM_REG_PC:
            w = regs.get(ops[0].reg)
            if w is not None and (w >= 0x1000 or w) and False: pass
    print(which, hex(addr), fn.get('name', ''), 'insns', fn['ninsn'], 'size', fn['size'])
    for e in ev[:maxev]: print(' ', e[0], e[1])


def _s(img, v, strregs, ev, a):
    for s_, n in strregs:
        if s_ <= v < s_ + n:
            c = img.cstr(v)
            if c and len(c) >= 2 and all(32 <= x < 127 for x in c[:100]): ev.append((a, 'STR ' + repr(c[:100].decode())))


run(sys.argv[1], int(sys.argv[2], 16))
