#!/usr/bin/env python3
# RETIRED (Ghidra-era). DO NOT RERUN THIS SCRIPT.
# It parses the old Ghidra text export (param_1, undefined4), not the Hex-Rays export, and it writes whole
# files. A rerun would overwrite hand-maintained source and undo the Hex-Rays corrections made by hand since
# (for example the string-read bodies in src/script_cmd_records.cpp).
# The headers and sources it produced are hand-maintained source now (Track B decision 7):
#   include/pydata-accessors/structs_records.hpp, include/pydata-accessors/script_cmd.hpp,
#   src/structs_records.cpp, src/script_cmd_records.cpp, and the w7_structs_*.hpp/.cpp slices.
# Edit those files directly. This script and slot_decls.py stay in the tree for history only.
"""Generator for the ScriptCmd command classes (include/pydata-accessors/script_cmd.hpp).

Covers ScriptCmd itself and each `Structs::X : ScriptCmd` class in script_cmd.hpp: their destructors
(D2, D1, D0), finalize and read. Source of truth is the Ghidra pseudocode of each queued function,
fetched through gen_structs.collect(). Helpers for the destructor and finalize shapes are shared with
gen_structs.py; read has its own parser because ScriptCmd reads also allocate string buffers.

read shapes accepted (anything else leaves the whole class out, its rows stay queued):
  base     `ScriptCmd::read(stream)` as the first statement (or a thunk to it)
  store    `StreamReader::readAs<T>(stream, this + off)` (T one of TYPES in gen_structs)
  free     `if (field != 0) { CustomFree(); }`
  str      `V = MemoryHintState(len + 1)`, `ptr = V`, `StreamReader::readStringEx(stream, V, len, 0)`,
           `ptr[len] = 0`: a NUL-terminated buffer of `len` bytes, freed before it is replaced when a free
           precedes it
  guard    `if (field == 0) { ...shapes above...; return; }` followed by `CustomFree();`: the original
           frees a non-null field and does not read

The class layout is `ScriptCmd` (int32 at +0x4, from ScriptCmd::read) plus, for each command class,
the words its read stores, the pointers it frees or allocates, and the words the previous hand-written
header declared (the constructor-zeroed words, kept as std::uint32_t). A class is emitted only when all
of its queued functions parse. Freed pointers are void*, string buffers are char*.

Output (whole files, regenerated from the input each run):
  include/pydata-accessors/script_cmd.hpp
  src/script_cmd_records.cpp
New ledger rows replace this generator's rows (source_file pydata-accessors/src/script_cmd_records.cpp).

Run from the repository root:
  python3 port/decomp-reconstruction/pydata-accessors/gen_script_cmd.py --dry-run
  python3 port/decomp-reconstruction/pydata-accessors/gen_script_cmd.py
"""
import argparse
import collections
import csv
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import gen_structs as G  # noqa: E402  (shared parsers and the pseudocode fetch)

HDR = os.path.join(G.CAT, 'include', 'pydata-accessors', 'script_cmd.hpp')
SRC = os.path.join(G.CAT, 'src', 'script_cmd_records.cpp')
SRC_REL = 'pydata-accessors/src/script_cmd_records.cpp'
BASE = 'ScriptCmd'

ALLOC = re.compile(r'^(\w+) = _Znaj15MemoryHintState\(\*\(int \*\)\(param_1 \+ (\w+)\) \+ 1\)$')
PTRSTORE = re.compile(r'^\*\(undefined4 \*\)\(param_1 \+ (\w+)\) = (\w+)$')
RSTR = re.compile(r'^_ZN12StreamReader12readStringExEP11IStreamBasePcy\(param_2,(\w+),'
                  r'\*\(undefined4 \*\)\(param_1 \+ (\w+)\),0\)$')
NUL = re.compile(r'^\*\(undefined \*\)\(\*\(int \*\)\(param_1 \+ (\w+)\) \+ \*\(int \*\)\(param_1 \+ (\w+)\)\) = 0$')
IF_EQ0 = re.compile(r'^if \(\*\(int \*\)\(param_1 \+ (\w+)\) == 0\) \{$')
FREE_CALL = '_Z10CustomFreePv()'
# a CustomFree call whose argument the decompiler did not print is the free of the field tested above
JOIN = re.compile(r'(_Z\w+)\n\s+\(')


def body(text):
    """Statements of a function body, with the wrapped-call line joins undone."""
    return G.body_lines(JOIN.sub(r'\1(', text))


def close_index(lines, i):
    """Index of the '}' that closes the block opened at lines[i] (which ends with '{')."""
    depth = 0
    for k in range(i, len(lines)):
        s = lines[k]
        if s.endswith('{'):
            depth += 1
        if s == '}':
            depth -= 1
            if depth == 0:
                return k
    return None


def parse_read(lines):
    """Ops for a read body: ('base', BASE), ('store', letter, off), ('free', off), ('str', len_off, ptr_off),
    ('guard', off, ops). Returns None if a statement is outside the accepted shapes."""
    ops = []
    i, n = 0, len(lines)
    while i < n:
        s = lines[i]
        if s.startswith('return'):
            if i != n - 1:
                return None
            i += 1
            continue
        m = G.STORE.match(s)
        if m:
            if m.group(1) not in G.TYPES:
                return None
            ops.append(('store', m.group(1), G.num(m.group(2)) if m.group(2) else 0))
            i += 1
            continue
        call = G.parse_call(s)
        if call:
            sym = G.split_sym(call[0])
            if sym == (BASE, 'read') and call[1] in ('', 'param_2'):
                ops.append(('base', BASE))
                i += 1
                continue
            return None
        m = IF_EQ0.match(s)
        if m:
            j = close_index(lines, i)
            if j is None or j + 1 >= n or lines[j + 1:] != [FREE_CALL]:
                return None
            inner = lines[i + 1:j]
            if not inner or not inner[-1].startswith('return'):
                return None
            sub = parse_read(inner[:-1])
            if sub is None:
                return None
            sub.append(('return',))  # the original returns inside the guard, so CustomFree is not reached
            ops.append(('guard', G.num(m.group(1)), sub))
            return ops
        m = G.IF_PTR.match(s)
        if m:
            if i + 2 < n and lines[i + 1] == FREE_CALL and lines[i + 2] == '}':
                ops.append(('free', G.num(m.group(1))))
                i += 3
                continue
            return None
        m = ALLOC.match(s)
        if m and i + 3 < n:
            v, len_off = m.group(1), G.num(m.group(2))
            p = PTRSTORE.match(lines[i + 1])
            r = RSTR.match(lines[i + 2])
            z = NUL.match(lines[i + 3])
            if not (p and r and z):
                return None
            ptr_off = G.num(p.group(1))
            if p.group(2) != v or r.group(1) != v or G.num(r.group(2)) != len_off:
                return None
            if G.num(z.group(1)) != ptr_off or G.num(z.group(2)) != len_off:
                return None
            ops.append(('str', len_off, ptr_off))
            i += 4
            continue
        return None
    return ops


def flat(ops):
    """Every op, guard bodies included."""
    for o in ops or []:
        yield o
        if o[0] == 'guard':
            yield from flat(o[2])


def parse_function(cls, kind, lines):
    """Ops for one queued function of a class, or None."""
    if lines is None:
        return None
    if kind in ('D2', 'D1', 'D0'):
        return G.parse_dtor(cls, kind, lines)
    if kind == 'fin':
        return G.parse_fin(cls, lines)
    return parse_read(lines)


def header_offsets():
    """{class: set of offsets} for the members the current script_cmd.hpp declares."""
    res = {}
    cur = None
    for line in open(HDR, encoding='utf-8').read().splitlines():
        m = re.match(r'^struct (\w+) : ScriptCmd \{', line)
        if m:
            cur = m.group(1)
            res[cur] = set()
            continue
        if cur and line.startswith('};'):
            cur = None
            continue
        m = re.match(r'^\s+\S+ m_(?:w\d+|off\d+) = [^;]*;\s*// \+0x([0-9a-f]+)', line)
        if cur and m:
            res[cur].add(int(m.group(1), 16))
    return res


def script_classes():
    return sorted(set(re.findall(r'^struct (\w+) : ScriptCmd \{', open(HDR, encoding='utf-8').read(), flags=re.M)))


def dtor_ops(p):
    """Op list for a parsed D2/D1/D0 destructor (see gen_structs.parse_dtor)."""
    if 'deleting' in p:
        return [('deleting',)]
    ops = [('free', off) for off in p['frees']]
    if p['base'] is not None:
        ops.append(('base', p['base']))
    return ops


def analyse(funcs, text, fwd, names):
    """({class: info} for classes whose queued functions all parse, reasons for the others)."""
    reasons = collections.Counter()
    info = {}
    for cls in names:
        c = {'addr': {}, 'ops': {}, 'thunk': {}}
        ok = True
        for kind in ('D2', 'D1', 'D0', 'fin', 'read'):
            if (cls, kind) not in funcs:
                continue
            addr, mangled = funcs[(cls, kind)]
            c['addr'][kind] = (addr, mangled)
            if addr in fwd:
                # a thunk forwards to ScriptCmd's function of the same kind (finalize or read)
                res = fwd[addr]
                if kind not in ('fin', 'read') or res is None or res[1] != (BASE, kind):
                    ok = False
                    reasons['thunk %s' % kind] += 1
                    break
                c['thunk'][kind] = (res[0], BASE)
                c['ops'][kind] = [('base', BASE)]
                continue
            lines = body(text.get(addr, ''))
            if kind in ('D2', 'D1', 'D0'):
                p = G.parse_dtor(cls, kind, lines) if lines is not None else None
                ops = dtor_ops(p) if p is not None else None
            else:
                ops = parse_function(cls, kind, lines)
            if ops is None or any(o[0] == 'base' and o[1] != BASE for o in ops):
                ok = False
                break
            c['ops'][kind] = ops
        if not ok:
            reasons['unparsed function'] += 1
            continue
        if 'D2' not in c['ops'] and 'D1' not in c['ops']:
            reasons['no destructor'] += 1
            continue
        if 'D2' in c['ops'] and 'D1' in c['ops'] and c['ops']['D2'] != c['ops']['D1']:
            reasons['D1 differs from D2'] += 1
            continue
        info[cls] = c
    return info, reasons


def layout(c, header_offs):
    """(stores {off: letter}, pointer fields {off: type}, freed offsets, ctor-only offsets), or None
    when a word is typed two ways. Ctor-only words are the offsets the previous header declared."""
    stores, strp, frees = {}, set(), set()
    for kind in ('D2', 'D1', 'D0', 'fin', 'read'):
        for o in flat(c['ops'].get(kind)):
            if o[0] == 'store':
                if stores.get(o[2], o[1]) != o[1]:
                    return None
                stores[o[2]] = o[1]
            elif o[0] == 'free':
                frees.add(o[1])
            elif o[0] == 'str':
                strp.add(o[2])
    if any(off in stores for off in frees | strp):
        return None
    ptrs = {off: 'void*' for off in frees}
    ptrs.update({off: 'char*' for off in strp})
    ctor_only = set(header_offs) - set(stores) - set(ptrs)
    return stores, ptrs, frees, ctor_only


def emit(info, layouts, base_ops):
    names = sorted(k for k in info if k != BASE)
    h = []
    h.append('#pragma once')
    h.append('')
    h.append('// ScriptCmd base and one class per GetNewScriptCmdDataInstance<T> target (generated by')
    h.append('// gen_script_cmd.py; do not hand-edit). Member m_wN is the word at offset 4*N. Words that the')
    h.append('// constructor zeroes keep std::uint32_t; words a read stores take the read type; pointers that are')
    h.append('// freed are void*, string buffers are char*.')
    h.append('#include <cstdint>')
    h.append('')
    h.append('#include "pydata-accessors/deps/stream_reader.hpp"')
    h.append('')
    h.append('namespace Structs {')
    h.append('')
    h.append('class ScriptCmd {')
    h.append('public:')
    h.append('    virtual ~ScriptCmd();')
    h.append('    virtual void finalize();')
    h.append('    virtual void read(IStreamBase* stream);')
    h.append('    std::int32_t m_w1 = 0;  // +0x4')
    h.append('};')
    h.append('')
    for cls in names:
        c = info[cls]
        stores, ptrs, frees, ctor_only = layouts[cls]
        methods = []
        if 'D2' in c['addr'] or 'D1' in c['addr']:
            methods.append('    ~%s() override;' % cls)
        if 'fin' in c['addr']:
            methods.append('    void finalize() override;')
        if 'read' in c['addr']:
            methods.append('    void read(IStreamBase* stream) override;')
        h.append('struct %s : ScriptCmd {' % cls)
        h += methods
        for off in sorted(set(stores) | set(ptrs) | ctor_only):
            if off in ptrs:
                t, init = ptrs[off], 'nullptr'
            elif off in stores:
                t, init = G.TYPES[stores[off]][0], G.TYPES[stores[off]][1]
            else:
                t, init = 'std::uint32_t', '0'
            h.append('    %s %s = %s;  // +0x%x' % (t, G.member_name(off), init, off))
        h.append('};')
        h.append('')
    h.append('template <class T>')
    h.append('ScriptCmd* GetNewScriptCmdDataInstance();')
    h.append('')
    h.append('// Deleting destructors (D0) of ScriptCmd and the classes above.')
    h.append('void DeletingDestructor(ScriptCmd* self);')
    for cls in names:
        if 'D0' in info[cls]['addr']:
            h.append('void DeletingDestructor(%s* self);' % cls)
    h.append('')
    h.append('}  // namespace Structs')
    h.append('')

    s = []
    s.append('// Structs::ScriptCmd and the ScriptCmd command classes: destructors, finalize and read')
    s.append('// (generated by gen_script_cmd.py).')
    s.append('#include "pydata-accessors/script_cmd.hpp"')
    s.append('')
    s.append('namespace Structs {')
    s.append('')
    for cls in [BASE] + names:
        c = info[cls]
        stores, ptrs, frees, _ = layouts[cls]
        ops_d = c['ops']
        if 'D2' in c['addr'] or 'D1' in c['addr']:
            for k in ('D2', 'D1'):
                if k in c['addr']:
                    s.append('// 0x%x %s' % c['addr'][k])
            if c.get('dtor_differs'):
                s.append('// NOTE: D1 and D2 bodies differ; the destructor below is the D2 body.')
            s.append('%s::~%s() {' % (cls, cls))
            for o in flat(ops_d.get('D2', ops_d.get('D1'))):
                if o[0] == 'free':
                    s.append('    if (%s != nullptr) CustomFree(%s);  // +0x%x' % (G.member_name(o[1]), G.member_name(o[1]), o[1]))
            s.append('}')
            s.append('')
        if 'D0' in c['addr']:
            s.append('// 0x%x %s' % c['addr']['D0'])
            s.append('void DeletingDestructor(%s* self) {' % cls)
            s.append('    self->%s::~%s();' % (cls, cls))
            s.append('    CustomFree(self);')
            s.append('}')
            s.append('')
        if 'fin' in c['addr']:
            s.append('// 0x%x %s' % c['addr']['fin'])
            if 'fin' in c['thunk']:
                s.append(G.thunk_comment(c['thunk']['fin'], 'finalize'))
            s.append('void %s::finalize() {' % cls)
            for o in c['ops']['fin']:
                if o[0] == 'base':
                    s.append('    %s::finalize();' % BASE)
                elif o[0] == 'free':
                    s.append('    if (%s != nullptr) CustomFree(%s);  // +0x%x' % (G.member_name(o[1]), G.member_name(o[1]), o[1]))
            s.append('}')
            s.append('')
        if 'read' in c['addr']:
            s.append('// 0x%x %s' % c['addr']['read'])
            if 'read' in c['thunk']:
                s.append(G.thunk_comment(c['thunk']['read'], 'read'))
            s.append('void %s::read(IStreamBase* stream) {' % cls)
            emit_read(s, c['ops']['read'], ind='    ')
            s.append('}')
            s.append('')
    s.append('}  // namespace Structs')
    s.append('')
    return '\n'.join(h), '\n'.join(s)


def emit_read(out, ops, ind):
    for o in ops:
        if o[0] == 'base':
            out.append(ind + '%s::read(stream);' % BASE)
        elif o[0] == 'store':
            out.append(ind + '%s = StreamReader::readAs<%s>(stream);  // +0x%x' % (
                G.member_name(o[2]), G.TYPES[o[1]][0], o[2]))
        elif o[0] == 'free':
            out.append(ind + 'if (%s != nullptr) CustomFree(%s);  // +0x%x' % (
                G.member_name(o[1]), G.member_name(o[1]), o[1]))
        elif o[0] == 'str':
            ln, pt = G.member_name(o[1]), G.member_name(o[2])
            out.append(ind + '%s = static_cast<char*>(MemoryHintState(static_cast<std::size_t>(%s) + 1));  // +0x%x, length +0x%x' % (
                pt, ln, o[2], o[1]))
            out.append(ind + 'StreamReader::readStringEx(stream, %s, %s, 0);' % (pt, ln))
            out.append(ind + '%s[%s] = \'\\0\';' % (pt, ln))
        elif o[0] == 'return':
            out.append(ind + 'return;')
        elif o[0] == 'guard':
            pt = G.member_name(o[1])
            out.append(ind + 'if (%s == nullptr) {  // +0x%x' % (pt, o[1]))
            emit_read(out, o[2], ind + '    ')
            out.append(ind + '}')
            out.append(ind + 'CustomFree(%s);' % pt)


def ledger_rows(info, layouts):
    rows = []
    for cls in [BASE] + sorted(k for k in info if k != BASE):
        c = info[cls]
        stores = layouts[cls][0]
        uncertain = any(t in G.UNCERTAIN_TYPES for t in stores.values())
        for kind in ('D2', 'D1', 'D0', 'fin', 'read'):
            if kind not in c['addr']:
                continue
            addr, mangled = c['addr'][kind]
            status, note = 'reconstructed', ''
            if kind == 'D2':
                note = 'record destructor (C++ ~%s): frees %d field(s), base ScriptCmd' % (cls, len(layouts[cls][2]))
            elif kind == 'D1':
                note = 'base-object destructor, same body as the D2 destructor of %s' % cls
                if c.get('dtor_differs'):
                    status, note = 'partial', note + '; D1 and D2 bodies differ'
            elif kind == 'D0':
                note = 'deleting destructor: D1 then CustomFree'
            elif kind == 'fin':
                ops = c['ops']['fin']
                n = sum(1 for o in ops if o[0] == 'free')
                note = 'finalize: %s, frees %d field(s)' % (
                    'calls ScriptCmd::finalize' if any(o[0] == 'base' for o in ops) else 'no base call', n)
            else:
                ops = c['ops']['read']
                n = sum(1 for o in flat(ops) if o[0] == 'store')
                strs = sum(1 for o in flat(ops) if o[0] == 'str')
                note = 'read: calls ScriptCmd::read, %d readAs store(s)%s' % (
                    n, ', %d string buffer(s) read with NUL' % strs if strs else '')
                if uncertain:
                    status = 'partial'
                    note += '; a bool or int8 field is stored, its type is inferred'
            if kind in c['thunk']:
                taddr, tcls = c['thunk'][kind]
                note = 'thunk, b 0x%x: forwards to %s::%s' % (taddr, tcls, 'finalize' if kind == 'fin' else 'read')
            rows.append((addr, mangled, status, note))
    return rows


def write_ledger(rows):
    lines = open(G.LEDGER, encoding='utf-8').read().splitlines()
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
    with open(G.LEDGER, 'w', encoding='utf-8', newline='') as f:
        f.write('\n'.join(out) + '\n')
    return len(rows)


def pseudo_events(text):
    """Ordered events of a pseudocode body: R (readAs letter, off), F (free off), G (guard off), A (alloc
    length off), S (readString), B (base read/finalize), RET, X (CustomFree with no argument)."""
    ev, lines = [], []
    for l in JOIN.sub(r'\1(', text).splitlines():
        s_ = l.strip()
        if s_ and not s_.startswith('/*') and s_ not in ('{', '}'):
            lines.append(s_[:-1] if s_.endswith(';') else s_)
    skip = set()
    for i, l in enumerate(lines):
        if i in skip:
            continue
        m = G.STORE.match(l)
        if m:
            ev.append(('R', m.group(1), G.num(m.group(2)) if m.group(2) else 0))
            continue
        nxt = lines[i + 1] if i + 1 < len(lines) else ''
        m = re.match(r'^if \(param_1\[(\w+)\] != 0\) \{$', l)
        if m and 'CustomFree' in nxt:
            ev.append(('F', G.num(m.group(1)) * 4))
            skip.add(i + 1)
            continue
        m = G.IF_PTR.match(l)
        if m and 'CustomFree' in nxt:
            ev.append(('F', G.num(m.group(1))))
            skip.add(i + 1)
            continue
        m = IF_EQ0.match(l)
        if m:
            ev.append(('G', G.num(m.group(1))))
            continue
        m = ALLOC.match(l)
        if m:
            ev.append(('A', G.num(m.group(2))))
            continue
        if l.startswith('_ZN12StreamReader12readStringEx'):
            ev.append(('S', None))
            continue
        if l.startswith('return'):
            ev.append(('RET',))
            continue
        if l.startswith('_Z10CustomFreePv'):
            ev.append(('X',))
            continue
        call = G.parse_call(l)
        if call and G.split_sym(call[0]) and G.split_sym(call[0])[1] in ('read', 'fin'):
            ev.append(('B', G.split_sym(call[0])[1]))
    return ev


def cpp_events(body):
    """The same event kinds read back from an emitted body."""
    def off(n):
        m = re.match(r'm_w(\d+)$', n)
        return 4 * int(m.group(1)) if m else int(re.match(r'm_off(\d+)$', n).group(1))
    tomap = {'std::int32_t': 'i', 'std::uint32_t': 'j', 'std::int16_t': 's', 'float': 'f',
             'std::int8_t': 'a', 'bool': 'b'}
    ev = []
    for l in body:
        s_ = l.strip()
        m = re.match(r'^(m_\w+) = StreamReader::readAs<([\w:]+)>', s_)
        if m:
            ev.append(('R', tomap.get(m.group(2), '?'), off(m.group(1))))
            continue
        m = re.match(r'^if \((m_\w+) != nullptr\) CustomFree', s_)
        if m:
            ev.append(('F', off(m.group(1))))
            continue
        m = re.match(r'^if \((m_\w+) == nullptr\) \{', s_)
        if m:
            ev.append(('G', off(m.group(1))))
            continue
        m = re.match(r'^(m_\w+) = static_cast<char\*>\(MemoryHintState\(static_cast<std::size_t>\((m_\w+)\) \+ 1\)\)', s_)
        if m:
            ev.append(('A', off(m.group(2))))
            continue
        if s_.startswith('StreamReader::readStringEx'):
            ev.append(('S', None))
            continue
        if s_.startswith('return'):
            ev.append(('RET',))
            continue
        if re.match(r'^CustomFree\((m_\w+|self)\);$', s_):
            ev.append(('X',))
            continue
        if s_.endswith('::read(stream);') or s_.endswith('::finalize();'):
            ev.append(('B', 'read' if 'read' in s_ else 'fin'))
    return ev


def check():
    """Compare each ledgered body with its pseudocode event sequence. Thunks are checked by the listing."""
    text_cpp = open(SRC, encoding='utf-8').read()
    rows = [r for r in csv.DictReader(open(G.LEDGER, encoding='utf-8')) if r['source_file'] == SRC_REL]
    addrs = {int(r['elf_address'], 16): r for r in rows}
    pseudo = G.fetch_pseudo(sorted(addrs))
    blocks, pending, cur = {}, [], None
    for line in text_cpp.splitlines():
        m = re.match(r'^// 0x([0-9a-f]+) (\S+)$', line)
        if m:
            pending.append(int(m.group(1), 16))
            continue
        if cur is None:
            if pending and line.endswith('{') and not line.startswith('//'):
                cur = list(pending)
                pending = []
                for a in cur:
                    blocks[a] = []
            continue
        if line == '}':
            cur = None
            continue
        for a in cur:
            blocks[a].append(line)
    bad = checked = 0
    for a, r in sorted(addrs.items()):
        if a not in blocks or 'thunk' in r['notes']:
            continue
        p = pseudo_events(pseudo.get(a, ''))
        c = cpp_events(blocks[a])
        while p and p[-1][0] == 'RET':
            p.pop()
        while c and c[-1][0] == 'RET':
            c.pop()
        checked += 1
        if p != c:
            bad += 1
            print('MISMATCH 0x%x %s\n  pseudo %s\n  cpp    %s' % (a, r['symbol'], p, c), file=sys.stderr)
    print('check: %d bodies compared, %d mismatches' % (checked, bad), file=sys.stderr)
    return 1 if bad else 0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--dry-run', action='store_true', help='print the accepted classes and reasons; write nothing')
    ap.add_argument('--check', action='store_true', help='compare the emitted bodies with the pseudocode events')
    a = ap.parse_args()
    if a.check:
        return check()
    names = script_classes()
    if BASE in names:
        names.remove(BASE)
    offs = header_offsets()
    funcs, text, _, _ = G.collect()
    # thunk targets come from the ARM listing only: Ghidra prints the target's body for a thunk
    by_addr, _ = G.load_index()
    thunks = sorted(a for (c, k), (a, _) in funcs.items() if by_addr.get(a, {}).get('is_thunk'))
    fwd = {a: (t, G.split_sym(by_addr[t]['name']) if t in by_addr else None)
           for a, t in G.branch_targets(thunks).items()}
    funcs = {k: v for k, v in funcs.items() if k[0] in set(names) | {BASE}}
    info, reasons = analyse(funcs, text, fwd, [BASE] + names)
    layouts = {}
    for cls in sorted(info):
        # ScriptCmd's read stores the int32 at +0x4; derived classes must not reuse that word
        base_offs = set() if cls == BASE else {4}
        lay = layout(info[cls], set() if cls == BASE else offs.get(cls, set()) - base_offs)
        if lay is None:
            reasons['field conflict'] += 1
            info.pop(cls)
            continue
        if any(o in base_offs for o in set(lay[0]) | set(lay[1]) | lay[2]):
            reasons['field overlaps ScriptCmd'] += 1
            info.pop(cls)
            continue
        layouts[cls] = lay
    for cls in names:
        if cls not in info:
            # left out: keep the class as a plain struct with the words the previous header declared
            info[cls] = {'addr': {}, 'ops': {}, 'thunk': {}}
            layouts[cls] = ({}, {}, set(), offs.get(cls, set()) - {4})
    print('script classes %d, accepted %d' % (len(names) + 1, sum(1 for c in names if info[c]['addr'])), file=sys.stderr)
    for k, v in reasons.most_common():
        print('  left out: %s x%d' % (k, v), file=sys.stderr)
    if a.dry_run:
        return 0
    if BASE not in info:
        print('ScriptCmd base does not parse; nothing written', file=sys.stderr)
        return 1
    rows = ledger_rows(info, layouts)
    hdr, src = emit(info, layouts, None)
    open(HDR, 'w', encoding='utf-8').write(hdr)
    open(SRC, 'w', encoding='utf-8').write(src)
    n = write_ledger(rows)
    print('wrote script_cmd.hpp and script_cmd_records.cpp; %d ledger rows' % n, file=sys.stderr)
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
