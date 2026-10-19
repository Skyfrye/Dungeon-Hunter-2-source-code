#!/usr/bin/env python3
# RETIRED (Ghidra-era). DO NOT RERUN THIS SCRIPT.
# It parses the old Ghidra text export (param_1, undefined4), not the Hex-Rays export, and it writes whole
# files. A rerun would overwrite hand-maintained source and undo the Hex-Rays corrections made by hand since
# (for example the string-read bodies in src/script_cmd_records.cpp).
# The headers and sources it produced are hand-maintained source now (Track B decision 7):
#   include/pydata-accessors/structs_records.hpp, include/pydata-accessors/script_cmd.hpp,
#   src/structs_records.cpp, src/script_cmd_records.cpp, and the w7_structs_*.hpp/.cpp slices.
# Edit those files directly. This script and slot_decls.py stay in the tree for history only.
"""Generator for the Structs::X record classes: destructors, finalize and read.

Source of truth: the Ghidra pseudocode of every queued Structs::X destructor
(D2, D1, D0), finalize and read (queue.csv owner "Structs"). The pseudocode is
fetched with `tools/decomp_extract.py --address`, which also returns functions
that are already ledgered, so every run sees the whole class set and the
output of a larger run is a superset of the previous one.

Only bodies whose statements are one of these shapes are used; anything else
leaves the class out (its rows stay queued):

  D2 / D1 destructor : optional `*param_1 = <vtable>;`, optional
                       `if (field != 0) { CustomFree(); }` blocks, then the
                       base destructor call as the last statement.
  D0 destructor      : own D1 call, then CustomFree(param_1). Deleting variant.
  finalize           : optional base finalize call and `if (field != 0) {
                       CustomFree(); }` blocks, in listing order.
  read               : optional base read call and StreamReader::readAs<T>
                       stores at fixed offsets, in listing order.

A class is emitted only if its own functions parse, its base is an emitted
class or ScriptCmd (hand-written in script_cmd.hpp), and every base call has a
matching base method. Field names come from the offsets: `m_wN` for word N
(offset 4*N), `m_offN` otherwise. Fields that are freed are `void*`.

Thunks: a function that the decompiler index marks `is_thunk` is a forwarder. Its
ARM listing is one `b #target` (a single pseudocode call of another Structs member
is accepted too, if it names the same target). Ghidra prints the target's body for
a thunk, so that body is never read: the thunk becomes `Base::read(stream)` or
`Base::finalize()` with no statements of its own, and the target (for example
CharacterProperties::read at 0x4f2750, which is owned by the gameplay session and not
queued here) is added so that the base class has the body. A thunk whose target is
not a read or finalize of an ancestor leaves its class out.

Output (whole files, regenerated from the input each run):
  include/pydata-accessors/structs_records.hpp
  src/structs_records.cpp
New ledger rows are appended to ledger.csv for the emitted functions that are
not ledgered yet. Existing rows are never rewritten.

Selection: classes are taken in name order, with their base classes, until the
cumulative number of their functions reaches --through N.

Run from the repository root:
  python3 port/decomp-reconstruction/pydata-accessors/gen_structs.py --through 30
  python3 port/decomp-reconstruction/pydata-accessors/gen_structs.py --dry-run
"""
import argparse
import collections
import csv
import json
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import slot_decls  # noqa: E402  (virtual finalize/read declarations)
ROOT = os.path.abspath(os.path.join(HERE, '..', '..', '..'))
CAT = os.path.join(ROOT, 'port', 'decomp-reconstruction', 'pydata-accessors')
QUEUE = os.path.join(CAT, 'queue.csv')
LEDGER = os.path.join(CAT, 'ledger.csv')
SCRIPT_CMD_HDR = os.path.join(CAT, 'include', 'pydata-accessors', 'script_cmd.hpp')
HDR = os.path.join(CAT, 'include', 'pydata-accessors', 'structs_records.hpp')
SRC = os.path.join(CAT, 'src', 'structs_records.cpp')
SRC_REL = 'pydata-accessors/src/structs_records.cpp'
INDEX = os.path.join(ROOT, 'recovered', 'native', 'decompiled', 'libDungeonHunter2.so', 'function-index.jsonl')
ASM_DIR = os.path.join(ROOT, 'recovered', 'native', 'assembly', 'libDungeonHunter2.so')

# readAs<T> mangled letter -> (C++ type, initializer)
TYPES = {
    'a': ('std::int8_t', '0'),
    'b': ('bool', 'false'),
    's': ('std::int16_t', '0'),
    'j': ('std::uint32_t', '0'),
    'i': ('std::int32_t', '0'),
    'f': ('float', '0.0f'),
}
# Stored types whose meaning is not certain from the listing alone.
UNCERTAIN_TYPES = {'a', 'b'}

DTOR_SUFFIX = {'D2Ev': 'D2', 'D1Ev': 'D1', 'D0Ev': 'D0'}
SYM = re.compile(r'^_ZN7Structs(\d+)(.+)$')
CALL = re.compile(r'^(_ZN[0-9A-Za-z_]+)\((.*)\)$')
NOISE = re.compile(r'^/\*.*\*/$')
DECL = re.compile(r'^[A-Za-z_][\w ]*\*?\s*\w+;$')
VT = re.compile(r'^\*param_1 = (0x[0-9a-f]+|&DAT_[0-9a-f]+)$')
IF_IDX = re.compile(r'^if \(param_1\[(\w+)\] != 0\) \{$')
IF_PTR = re.compile(r'^if \(\*\(int \*\)\(param_1 \+ (\w+)\) != 0\) \{$')
FREE = re.compile(r'^_Z10CustomFreePv\(\)$')
BRANCH = re.compile(r'^([0-9a-f]{8})  (?:[0-9a-f]{2} ){3}[0-9a-f]{2}\s+b #0x([0-9a-f]+)\s*$')
STORE = re.compile(
    r'^_ZN12StreamReader6readAsI(\w)EEvP11IStreamBasePT_\(param_2,\s*param_1(?: \+ (\w+))?\)$')


def num(tok):
    """Ghidra prints offsets as 0x-hex when large and as plain decimal when small."""
    if tok.startswith('0x'):
        return int(tok, 16)
    if tok.isdigit():
        return int(tok, 10)
    raise ValueError(tok)


def split_sym(mangled):
    """(class, kind) for a Structs member symbol, kind in D2/D1/D0/fin/read, or None."""
    m = SYM.match(mangled)
    if not m:
        return None
    n = int(m.group(1))
    rest = m.group(2)
    if len(rest) <= n:
        return None
    cls, suffix = rest[:n], rest[n:]
    if not cls.isidentifier():
        return None
    if suffix in DTOR_SUFFIX:
        return cls, DTOR_SUFFIX[suffix]
    if suffix == '8finalizeEv':
        return cls, 'fin'
    if suffix == '4readEP11IStreamBase':
        return cls, 'read'
    return None


def parse_call(stmt):
    """(mangled, args) for a call statement, or None."""
    m = CALL.match(stmt)
    return (m.group(1), m.group(2).strip()) if m else None


def body_lines(text):
    """Statements between the signature's '{' and the final '}', comments removed."""
    lines = text.splitlines()
    start = None
    for i, l in enumerate(lines):
        if l.strip() == '{' and i > 0:
            prev = [p for p in lines[:i] if p.strip()]
            if prev and prev[-1].rstrip().endswith(')'):
                start = i + 1
                break
    if start is None:
        return None
    end = max((i for i, l in enumerate(lines) if l.strip() == '}'), default=None)
    if end is None or end < start:
        return None
    out = []
    for l in lines[start:end]:
        s = l.strip()
        if s and not NOISE.match(s):
            out.append(s[:-1] if s.endswith(';') else s)
    # leading local declarations carry no behaviour
    while out and DECL.match(out[0] + ';') and not out[0].startswith('return'):
        out.pop(0)
    return out


def parse_dtor(cls, kind, lines):
    """Ops for a D2/D1 destructor: ('free', off) in order, then base (cls, kind) or None."""
    if kind == 'D0':
        if len(lines) == 2 and lines[1] == '_Z10CustomFreePv(param_1)':
            call = parse_call(lines[0])
            if call and split_sym(call[0]) == (cls, 'D1') and call[1] in ('', 'param_1'):
                return {'deleting': True}
        return None
    frees, base, vt, cond, cond_freed = [], None, None, None, False
    for s in lines:
        if s.startswith('return'):
            continue
        if s == '}':
            if cond is None or not cond_freed:
                return None
            cond, cond_freed = None, False
            continue
        if cond is not None:
            if FREE.match(s) and not cond_freed:
                frees.append(cond)
                cond_freed = True
                continue
            return None
        if base is not None:
            return None  # the base destructor must be the last statement
        m = VT.match(s)
        if m:
            if vt is not None or frees:
                return None
            vt = m.group(1)
            continue
        m = IF_IDX.match(s)
        if m:
            cond = num(m.group(1)) * 4
            continue
        m = IF_PTR.match(s)
        if m:
            cond = num(m.group(1))
            continue
        call = parse_call(s)
        if call:
            sym = split_sym(call[0])
            if sym and sym[1] in ('D1', 'D2') and sym[0] != cls and call[1] in ('', 'param_1'):
                base = sym[0]
                continue
        return None
    if cond is not None:
        return None
    return {'frees': frees, 'base': base, 'vt': vt}


def parse_fin(cls, lines):
    ops, cond, cond_freed = [], None, False
    for s in lines:
        if s.startswith('return'):
            continue
        if s == '}':
            if cond is None or not cond_freed:
                return None
            cond, cond_freed = None, False
            continue
        if cond is not None:
            if FREE.match(s) and not cond_freed:
                ops.append(('free', cond))
                cond_freed = True
                continue
            return None
        m = IF_IDX.match(s)
        if m:
            cond = num(m.group(1)) * 4
            continue
        m = IF_PTR.match(s)
        if m:
            cond = num(m.group(1))
            continue
        call = parse_call(s)
        if call:
            sym = split_sym(call[0])
            if sym and sym[1] == 'fin' and sym[0] != cls and call[1] in ('', 'param_1'):
                ops.append(('base', sym[0]))
                continue
        return None
    if cond is not None:
        return None
    return ops


def parse_read(cls, lines):
    ops = []
    for s in lines:
        if s.startswith('return'):
            continue
        m = STORE.match(s)
        if m:
            off = num(m.group(2)) if m.group(2) else 0
            if m.group(1) not in TYPES:
                return None
            ops.append(('store', m.group(1), off))
            continue
        call = parse_call(s)
        if call:
            sym = split_sym(call[0])
            if sym and sym[1] == 'read' and sym[0] != cls and call[1] in ('', 'param_2'):
                ops.append(('base', sym[0]))
                continue
        return None
    return ops


def fetch_pseudo(addrs):
    """{address int: body text} via tools/decomp_extract.py --address."""
    cmd = [sys.executable, os.path.join(ROOT, 'tools', 'decomp_extract.py')]
    for a in addrs:
        cmd += ['--address', '0x%x' % a]
    out = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True, check=True).stdout
    parts = re.split(r'^// ===== elf_address=(0x[0-9a-f]+) size=\d+ symbol=\S+\n', out, flags=re.M)
    res = {}
    for i in range(1, len(parts) - 1, 2):
        res.setdefault(int(parts[i], 16), parts[i + 1])
    return res


def script_cmd_classes():
    txt = open(SCRIPT_CMD_HDR, encoding='utf-8').read()
    return set(re.findall(r'^struct (\w+) : ScriptCmd \{', txt, flags=re.M)) | {'ScriptCmd'}


def load_index():
    """({address: row}, {mangled name: address}) from the decompiler's function index."""
    by_addr, by_name = {}, {}
    with open(INDEX, encoding='utf-8') as f:
        for line in f:
            r = json.loads(line)
            a = int(r['elf_address'], 16)
            by_addr[a] = r
            by_name.setdefault(r['name'], a)
    return by_addr, by_name


def branch_targets(addrs):
    """{address: target} for the single `b #target` at each address, from the ARM listing."""
    want = {'%08x' % a for a in addrs}
    res = {}
    for name in sorted(os.listdir(ASM_DIR)):
        if not name.endswith('.asm'):
            continue
        with open(os.path.join(ASM_DIR, name), encoding='utf-8', errors='replace') as f:
            for line in f:
                if ' b #0x' not in line:
                    continue
                m = BRANCH.match(line)
                if m and m.group(1) in want:
                    res[int(m.group(1), 16)] = int(m.group(2), 16)
    return res


def thunk_target(addr, lines, branch, by_addr, by_name):
    """(target address, (class, kind)) that the thunk at addr forwards to, or None.

    The listing is authoritative. A pseudocode body that is one call of a Structs member is
    accepted too, and must name the same target when both exist. The thunk's own body is never
    used: Ghidra prints the target's body there.
    """
    found = set()
    if addr in branch:
        found.add(branch[addr])
    stmts = [s for s in (lines or []) if not s.startswith('return')]
    if len(stmts) == 1:
        call = parse_call(stmts[0])
        if call and call[0] in by_name:
            found.add(by_name[call[0]])
    if len(found) != 1:
        return None
    t = found.pop()
    name = by_addr.get(t, {}).get('name')
    return t, (split_sym(name) if name else None)


def forward_ops(cls, kind, res):
    """[('base', T)] for a read or finalize thunk that forwards to T's read or finalize, else None."""
    if res is None or res[1] is None or kind not in ('read', 'fin'):
        return None
    tcls, tkind = res[1]
    if tkind != kind or tcls == cls:
        return None
    return [('base', tcls)]


def collect():
    """Queued Structs destructor, finalize and read functions, their pseudocode and thunk targets.

    Returns (funcs, text, fwd, cands). cands holds the read and finalize targets of thunks that are
    not queued (CharacterProperties::read at 0x4f2750 is one: it is owned by the gameplay session).
    resolve() decides which of them are generated.
    """
    by_addr, by_name = load_index()
    funcs = {}  # (cls, kind) -> (addr, mangled)
    for r in csv.DictReader(open(QUEUE, encoding='utf-8')):
        if r['owner'] != 'Structs':
            continue
        sym = split_sym(r['name'])
        if sym:
            funcs[sym] = (int(r['elf_address'], 16), r['name'])
    queued = {a for a, _ in funcs.values()}
    thunks = sorted(a for a in queued if by_addr.get(a, {}).get('is_thunk'))
    text = fetch_pseudo(sorted(queued))
    branch = branch_targets(thunks)
    fwd = {a: thunk_target(a, body_lines(text.get(a, '')), branch, by_addr, by_name) for a in thunks}
    cands = {}
    for a in thunks:
        res = fwd[a]
        if res is None or res[1] is None or res[1][1] not in ('read', 'fin'):
            continue
        key = res[1]
        if key in funcs or key in cands or by_addr[res[0]].get('is_thunk'):
            continue
        cands[key] = (res[0], by_addr[res[0]]['name'])
    if cands:
        text.update(fetch_pseudo(sorted(a for a, _ in cands.values())))
    return funcs, text, fwd, cands


def resolve(funcs, text, own, fwd, cands):
    """Add each candidate target only when it keeps every emitted class and an emitted forwarder
    needs it. A target whose body does not parse (or whose class then drops out) is not added, so
    no class that was emitted without it is lost. Returns (funcs, info, reasons)."""
    info, reasons = analyse(funcs, text, own, fwd)
    alive, _, _ = check_classes(info, own)
    for key in sorted(cands):
        trial = dict(funcs)
        trial[key] = cands[key]
        t_info, t_reasons = analyse(trial, text, own, fwd)
        t_alive, _, _ = check_classes(t_info, own)
        needed = any(('base', key[0]) in (t_info[c].get(key[1]) or []) for c in t_alive)
        if needed and key[0] in t_alive and alive <= t_alive:
            funcs, info, reasons, alive = trial, t_info, t_reasons, t_alive
    return funcs, info, reasons


def analyse(funcs, text, own_classes, fwd):
    """Return classes {name: info} and reasons for classes left out.

    fwd maps each thunk address to its resolved target (see thunk_target), or None when unknown.
    """
    reasons = collections.Counter()
    info = {}
    names = sorted({c for c, _ in funcs})
    for cls in names:
        if cls in own_classes:
            reasons['in script_cmd.hpp'] += 1
            continue
        if (cls, 'D2') not in funcs and (cls, 'D1') not in funcs:
            reasons['no destructor'] += 1
            continue
        c = {'name': cls, 'addr': {}, 'parsed': {}, 'why': [], 'thunk': {}}
        ok = True
        for kind in ('D2', 'D1', 'D0', 'fin', 'read'):
            if (cls, kind) not in funcs:
                continue
            addr, mangled = funcs[(cls, kind)]
            c['addr'][kind] = (addr, mangled)
            if addr in fwd:
                ops = forward_ops(cls, kind, fwd[addr])
                if ops is None:
                    c['why'].append('thunk ' + kind)
                    ok = False
                    continue
                c['thunk'][kind] = (fwd[addr][0], fwd[addr][1][0])
                c['parsed'][kind] = ops
                continue
            lines = body_lines(text.get(addr, ''))
            if lines is None:
                c['why'].append('no body ' + kind)
                ok = False
                continue
            if kind in ('D2', 'D1'):
                p = parse_dtor(cls, kind, lines)
            elif kind == 'D0':
                p = parse_dtor(cls, kind, lines)
            elif kind == 'fin':
                p = parse_fin(cls, lines)
            else:
                p = parse_read(cls, lines)
            if p is None:
                c['why'].append('shape ' + kind)
                ok = False
                continue
            c['parsed'][kind] = p
        if not ok:
            reasons['unparsed function'] += 1
            continue
        d2 = c['parsed'].get('D2')
        d1 = c['parsed'].get('D1')
        if d2 is None and d1 is None:
            reasons['no destructor'] += 1
            continue
        proto = d2 if d2 is not None else d1
        c['dtor_differs'] = d1 is not None and d2 is not None and d1 != d2
        if c['dtor_differs']:
            c['why'].append('D1 differs from D2')
        c['base'] = proto.get('base')
        c['vt'] = proto.get('vt')
        c['frees'] = list(proto.get('frees', []))
        c['fin'] = c['parsed'].get('fin')
        c['read'] = c['parsed'].get('read')
        info[cls] = c
    return info, reasons


def class_fields(c):
    """({offset: type letter} from read stores, set of freed offsets) or None on a conflict."""
    stores = {}
    for o in (c.get('read') or []):
        if o[0] == 'store':
            if o[2] in stores and stores[o[2]] != o[1]:
                return None
            stores[o[2]] = o[1]
    frees = set(c['frees'])
    for o in (c.get('fin') or []):
        if o[0] == 'free':
            frees.add(o[1])
    if any(off in stores for off in frees):
        return None
    return stores, frees


def check_classes(info, own_classes):
    """Fixed point over base dependencies, field typing and base-offset overlap.

    A read or finalize that calls `T::method` must name a strict ancestor T of the
    class, and some emitted class from T up the chain must declare the method. The
    call is written qualified, so an intermediate class without the method is fine.
    """
    reasons = collections.Counter()
    alive = set(info)

    def ancestors(cls):
        b = info[cls]['base']
        while b is not None and b in info:
            yield b
            b = info[b]['base']

    def has_method(cls, kind):
        a = cls
        while a is not None and a in info:
            if a in alive and info[a].get(kind) is not None:
                return True
            a = info[a]['base']
        return False

    while True:
        changed = False
        fields = {}
        for cls in sorted(alive):
            f = class_fields(info[cls])
            if f is None:
                alive.discard(cls)
                reasons['field conflict'] += 1
                changed = True
            else:
                fields[cls] = f
        for cls in sorted(alive):
            c = info[cls]
            base = c['base']
            why = None
            if base is not None and base not in own_classes and base not in alive:
                why = 'base not emitted'
            if why is None:
                for kind in ('fin', 'read'):
                    for o in (c.get(kind) or []):
                        if o[0] != 'base':
                            continue
                        t = o[1]
                        if t not in list(ancestors(cls)) or not has_method(t, kind):
                            why = 'base %s call unavailable' % kind
            if why is None and base is not None and base not in own_classes:
                # a derived class must not redefine any offset of its ancestors
                anc = set()
                for a in ancestors(cls):
                    if a in alive and a in fields:
                        anc |= set(fields[a][0]) | fields[a][1]
                if (set(fields[cls][0]) | fields[cls][1]) & anc:
                    why = 'field overlaps base'
            if why is not None:
                alive.discard(cls)
                reasons[why] += 1
                changed = True
        if not changed:
            break
    return alive, {c: class_fields(info[c]) for c in alive}, reasons


def function_count(info, cls):
    return len(info[cls]['addr'])


def select(info, alive, through):
    chosen, total = set(), 0
    for cls in sorted(alive):
        if cls in chosen:
            continue
        group = []
        c = cls
        while c is not None and c in alive and c not in chosen:
            group.append(c)
            c = info[c]['base']
        if not group:
            continue
        cost = sum(function_count(info, g) for g in group)
        if total + cost > through and chosen:
            break
        for g in group:
            chosen.add(g)
        total += cost
    return chosen, total


def member_name(off):
    return 'm_w%d' % (off // 4) if off % 4 == 0 else 'm_off%d' % off


def cpp_type(letter):
    return TYPES[letter][0] if letter else 'void*'


def thunk_comment(target, method):
    """Comment line for a forwarder: the original `b` target and the class it forwards to.

    target is (address, class) as stored in info[cls]['thunk'][kind].
    """
    addr, tcls = target
    return '// thunk: b 0x%x, forwards to %s::%s' % (addr, tcls, method)


def ancestor_declares(info, chosen, cls, key):
    """True when an emitted ancestor of cls (or ScriptCmd) already declares the slot virtual."""
    b = info[cls]['base']
    while b is not None:
        if b == 'ScriptCmd':
            return True
        if b in chosen and info[b].get(key) is not None:
            return True
        b = info[b]['base'] if b in info else None
    return False


def emit(info, fields, chosen, own_classes):
    order = []
    seen = set()

    def visit(cls):
        if cls in seen or cls not in chosen:
            return
        base = info[cls]['base']
        if base is not None and base in chosen:
            visit(base)
        seen.add(cls)
        order.append(cls)

    for cls in sorted(chosen):
        visit(cls)

    h = []
    h.append('#pragma once')
    h.append('')
    h.append('// Structs::X record classes generated by gen_structs.py (do not hand-edit without')
    h.append('// updating the generator). Each class holds the words its read and finalize store')
    h.append('// and the pointers they free; names are m_wN (word N) or m_offN for unaligned offsets.')
    h.append('#include <cstdint>')
    h.append('')
    h.append('#include "pydata-accessors/deps/stream_reader.hpp"')
    h.append('#include "pydata-accessors/script_cmd.hpp"')
    h.append('')
    h.append('namespace Structs {')
    h.append('')
    for cls in order:
        c = info[cls]
        base = c['base']
        bases = ' : public %s' % base if base else ''
        h.append('class %s%s {' % (cls, bases))
        h.append('public:')
        if base:
            h.append('    ~%s() override;' % cls)
        else:
            h.append('    virtual ~%s();' % cls)
        if c.get('fin') is not None:
            h.append(slot_decls.declare_line('finalize', ancestor_declares(info, chosen, cls, 'fin')))
        if c.get('read') is not None:
            h.append(slot_decls.declare_line('read', ancestor_declares(info, chosen, cls, 'read')))
        stores, frees = fields[cls]
        for off in sorted(set(stores) | frees):
            if off in stores:
                t = TYPES[stores[off]][0]
                init = TYPES[stores[off]][1]
            else:
                t, init = 'void*', 'nullptr'
            h.append('    %s %s = %s;  // +0x%x' % (t, member_name(off), init, off))
        h.append('};')
        h.append('')
    h.append('// Deleting destructors (D0) of the classes above.')
    for cls in order:
        h.append('void DeletingDestructor(%s* self);' % cls)
    h.append('')
    h.append('}  // namespace Structs')
    h.append('')

    s = []
    s.append('// Structs::X destructors, finalize and read (generated by gen_structs.py).')
    s.append('#include "pydata-accessors/structs_records.hpp"')
    s.append('')
    s.append('namespace Structs {')
    s.append('')
    for cls in order:
        c = info[cls]
        base = c['base']
        stores, frees = fields[cls]
        d2 = c['addr'].get('D2')
        d1 = c['addr'].get('D1')
        d0 = c['addr'].get('D0')
        if d2 or d1:
            if d2:
                s.append('// 0x%x %s' % (d2[0], d2[1]))
            if d1:
                s.append('// 0x%x %s' % (d1[0], d1[1]))
            if d1 and d2 and c.get('dtor_differs'):
                s.append('// NOTE: D1 and D2 bodies differ; the destructor below is the D2 body.')
            s.append('%s::~%s() {' % (cls, cls))
            for off in sorted(frees):
                s.append('    if (%s != nullptr) CustomFree(%s);  // +0x%x' % (member_name(off), member_name(off), off))
            s.append('}')
            s.append('')
        if d0:
            s.append('// 0x%x %s' % (d0[0], d0[1]))
            s.append('void DeletingDestructor(%s* self) {' % cls)
            s.append('    self->%s::~%s();' % (cls, cls))
            s.append('    CustomFree(self);')
            s.append('}')
            s.append('')
        if c.get('fin') is not None:
            a, mangled = c['addr']['fin']
            s.append('// 0x%x %s' % (a, mangled))
            if 'fin' in c['thunk']:
                s.append(thunk_comment(c['thunk']['fin'], 'finalize'))
            s.append('void %s::finalize() {' % cls)
            for o in c['fin']:
                if o[0] == 'base':
                    s.append('    %s::finalize();' % o[1])
                else:
                    s.append('    if (%s != nullptr) CustomFree(%s);  // +0x%x' % (member_name(o[1]), member_name(o[1]), o[1]))
            s.append('}')
            s.append('')
        if c.get('read') is not None:
            a, mangled = c['addr']['read']
            s.append('// 0x%x %s' % (a, mangled))
            if 'read' in c['thunk']:
                s.append(thunk_comment(c['thunk']['read'], 'read'))
            s.append('void %s::read(IStreamBase* stream) {' % cls)
            for o in c['read']:
                if o[0] == 'base':
                    s.append('    %s::read(stream);' % o[1])
                else:
                    t = TYPES[o[1]][0]
                    s.append('    %s = StreamReader::readAs<%s>(stream);  // +0x%x' % (member_name(o[2]), t, o[2]))
            s.append('}')
            s.append('')
    s.append('}  // namespace Structs')
    s.append('')
    return '\n'.join(h), '\n'.join(s)


def ledger_rows(info, fields, chosen):
    """Rows for every emitted function: (addr, symbol, status, notes)."""
    rows = []
    for cls in sorted(chosen):
        c = info[cls]
        stores, frees = fields[cls]
        uncertain = any(t in UNCERTAIN_TYPES for t in stores.values())
        for kind in ('D2', 'D1', 'D0', 'fin', 'read'):
            if kind not in c['addr']:
                continue
            addr, mangled = c['addr'][kind]
            status, note = 'reconstructed', ''
            if kind == 'D2':
                note = 'record destructor (C++ ~%s): frees %d field(s), base %s' % (
                    cls, len(c['frees']), c['base'] or 'none')
            elif kind == 'D1':
                note = 'base-object destructor, same body as the D2 destructor of %s' % cls
                if c.get('dtor_differs'):
                    status, note = 'partial', note + '; D1 and D2 bodies differ'
            elif kind == 'D0':
                note = 'deleting destructor: D1 then CustomFree'
            elif kind == 'fin':
                ops = c['fin']
                calls = [o[1] for o in ops if o[0] == 'base']
                n = sum(1 for o in ops if o[0] == 'free')
                note = 'finalize: %s, frees %d field(s)' % (
                    ('calls %s::finalize' % calls[0]) if calls else 'no base call', n)
            else:
                ops = c['read']
                calls = [o[1] for o in ops if o[0] == 'base']
                n = sum(1 for o in ops if o[0] == 'store')
                note = 'read: %s, %d readAs store(s) at fixed offsets' % (
                    ('calls %s::read' % calls[0]) if calls else 'no base call', n)
                if uncertain:
                    status = 'partial'
                    note += '; a bool or int8 field is stored, its type is inferred'
            if kind in c['thunk']:
                taddr, tcls = c['thunk'][kind]
                note = 'thunk, b 0x%x: forwards to %s::%s' % (
                    taddr, tcls, 'finalize' if kind == 'fin' else 'read')
            rows.append((addr, mangled, status, note))
    return rows


def write_ledger(rows):
    """Replace this generator's rows (source_file == SRC_REL) and keep every other row as written."""
    if os.path.exists(LEDGER):
        lines = open(LEDGER, encoding='utf-8').read().splitlines()
    else:
        lines = ['elf_address,symbol,status,source_file,notes']
    header, body = lines[0], lines[1:]
    keep = []
    for line in body:
        fields = next(csv.reader([line]))
        if len(fields) > 3 and fields[3] == SRC_REL:
            continue
        keep.append(line)
    import io
    buf = io.StringIO()
    w = csv.writer(buf, lineterminator='\n')
    for addr, mangled, status, note in rows:
        w.writerow(['0x%x' % addr, mangled, status, SRC_REL, note])
    out = [header] + keep + buf.getvalue().splitlines()
    with open(LEDGER, 'w', encoding='utf-8', newline='') as f:
        f.write('\n'.join(out) + '\n')
    return len(rows)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--through', type=int, default=30,
                    help='emit classes (with bases) until the cumulative function count reaches N')
    ap.add_argument('--dry-run', action='store_true', help='print the selection and reasons; write nothing')
    a = ap.parse_args()

    own = script_cmd_classes()
    funcs, text, fwd, cands = collect()
    funcs, info, reasons = resolve(funcs, text, own, fwd, cands)
    alive, fields, more = check_classes(info, own)
    reasons.update(more)
    chosen, total = select(info, alive, a.through)
    print('classes parsed %d, emitted-eligible %d, selected %d (%d functions)'
          % (len(info), len(alive), len(chosen), total), file=sys.stderr)
    for k, v in reasons.most_common():
        print('  left out: %s x%d' % (k, v), file=sys.stderr)
    if a.dry_run:
        return 0
    rows = ledger_rows(info, fields, chosen)
    hdr, src = emit(info, fields, chosen, own)
    os.makedirs(os.path.dirname(HDR), exist_ok=True)
    os.makedirs(os.path.dirname(SRC), exist_ok=True)
    open(HDR, 'w', encoding='utf-8').write(hdr)
    open(SRC, 'w', encoding='utf-8').write(src)
    n = write_ledger(rows)
    print('wrote %s and %s; %d ledger rows for generated functions'
          % (os.path.relpath(HDR, ROOT), os.path.relpath(SRC, ROOT), n), file=sys.stderr)
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
