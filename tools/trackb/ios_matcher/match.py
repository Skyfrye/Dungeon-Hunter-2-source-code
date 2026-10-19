"""iOS(armv7 1.0.0, stripped) <-> Android(armeabi-v7a 1.0.2, symbols) function matcher.
usage: py -3 -I match.py and.pkl ios.pkl OUT.pkl
Phase A: shared rare strings (mutual-best, Jaccard). Phase B: vtable slot alignment from matched ctors.
Phase C: call-graph propagation (callee sequences, unique callers) with size/constant signature gate.
Phase D: rare-constant anchors. Confidence: A=string, V=vtable, P=propagated, K=constant."""
import sys, pickle, collections, struct, math

A = pickle.load(open(sys.argv[1], 'rb')); I = pickle.load(open(sys.argv[2], 'rb'))
af, if_ = A['funcs'], I['funcs']
aimp, iimp = A['imports'], I['imports']
aidx = {f['start']: n for n, f in enumerate(af)}
iidx = {f['start']: n for n, f in enumerate(if_)}


def nimp(n):  # normalise import names
    return n[1:] if n.startswith('_') else n


aimpn = {a: n for a, n in aimp.items()}
iimpn = {a: nimp(n) for a, n in iimp.items()}


def callees(f, idx, imp):
    out = []
    for c in f['calls']:
        if c in imp: out.append(('I', imp[c]))
        elif c in idx: out.append(('F', idx[c]))
    return out


for f in af: f['cl'] = callees(f, aidx, aimpn)
for f in if_: f['cl'] = callees(f, iidx, iimpn)
acallers = collections.defaultdict(set); icallers = collections.defaultdict(set)
for n, f in enumerate(af):
    for k, v in f['cl']:
        if k == 'F': acallers[v].add(n)
for n, f in enumerate(if_):
    for k, v in f['cl']:
        if k == 'F': icallers[v].add(n)

match = {}   # a index -> (i index, conf, why)
rev = {}


def sim(a, i):
    fa, fi = af[a], if_[i]
    r = (fi['ninsn'] + 1) / (fa['ninsn'] + 1)
    return r


def sig_ok(a, i, strict=1.0):
    fa, fi = af[a], if_[i]
    na, ni = fa['ninsn'], fi['ninsn']
    if na < 6 and ni < 6: return True
    r = (ni + 3) / (na + 3)
    if not (0.4 / strict <= r <= 2.6 * strict): return False
    return True


def add(a, i, conf, why):
    if a in match or i in rev: return False
    match[a] = (i, conf, why); rev[i] = a
    return True


# ---- Phase A: strings
sa = collections.defaultdict(set); si = collections.defaultdict(set)
for n, f in enumerate(af):
    for s in f['strs']: sa[s].add(n)
for n, f in enumerate(if_):
    for s in f['strs']: si[s].add(n)
cand = collections.defaultdict(float)
for s in set(sa) & set(si):
    na, ni = len(sa[s]), len(si[s])
    if na * ni > 40: continue
    w = 1.0 / (na * ni) * (1 + math.log(len(s) + 1))
    for a in sa[s]:
        for i in si[s]: cand[(a, i)] += w


def jac(a, i):
    x, y = set(af[a]['strs']), set(if_[i]['strs'])
    return len(x & y) / len(x | y)


ranked = sorted(cand.items(), key=lambda kv: -kv[1])
best_a = {}; best_i = {}
for (a, i), sc in ranked:
    best_a.setdefault(a, (i, sc)); best_i.setdefault(i, (a, sc))
nA = 0
for (a, i), sc in ranked:
    if best_a[a][0] == i and best_i[i][0] == a and sig_ok(a, i, 1.5) and jac(a, i) >= 0.34:
        if add(a, i, 'A', 'str'): nA += 1
print('phase A string anchors', nA)


# ---- Phase B: vtables via matched functions' ptr constants
def vt_slots(img_ptrs, funcidx, getu32):
    pass


def load_regions():
    sys.path.insert(0, '<home>/AppData/Local/Temp/claude/C--Users-user-Documents-Projects-Dungeon-Hunter-2-Recomp-DH-sc/92aea28a-441d-487f-b829-7d37b39f798b/scratchpad/matcher')
    import extract
    ai = extract.load_android()[0]
    ii = extract.load_ios()[0]
    return ai, ii


aimg, iimg = load_regions()


def slots(img, base, funcidx, mx=200):
    out = []
    for k in range(mx):
        w = img.u32(base + 4 * k)
        if w is None: break
        w2 = w & ~1
        if w2 in funcidx: out.append(funcidx[w2])
        elif w == 0 and k < 2: out.append(None)  # offset-to-top / rtti
        else: break
    return out


def load_got():
    import extract
    from elftools.elf.elffile import ELFFile
    f = ELFFile(open(extract.S + 'android-so/libDungeonHunter2.so', 'rb'))
    ds = f.get_section_by_name('.dynsym'); got = {}
    for r in f.get_section_by_name('.rel.dyn').iter_relocations():
        if r['r_info_type'] in (21, 2):
            sv = ds.get_symbol(r['r_info_sym'])['st_value'] if r['r_info_sym'] else 0
            if sv: got[r['r_offset']] = sv
    return got, f.get_section_by_name('.got')['sh_addr']


GOT, GOTBASE = load_got()


def vtable_candidates(f, img, funcidx, android):
    res = []; seen = set()
    if android:
        for c in f['consts']:
            if c % 4 == 0 and 0 < c < 0x4c68 and img.u32(GOTBASE + c):
                v = img.u32(GOTBASE + c)
                for b in (v + 8, v):
                    if b in seen: continue
                    s = slots(img, b, funcidx)
                    if len([x for x in s if x is not None]) >= 3: res.append((b, s)); seen.add(b); break
    else:
        for p in f['ptrs'] | f['consts']:
            if p % 4: continue
            s = slots(img, p, funcidx)
            if len([x for x in s if x is not None]) >= 3: res.append((p, s))
    return res


nB = 0
seenvt = set()
changed = True
rounds = 0
while changed and rounds < 3:
    changed = False; rounds += 1
    for a, (i, c, w) in list(match.items()):
        va = vtable_candidates(af[a], aimg, aidx, True); vi = vtable_candidates(if_[i], iimg, iidx, False)
        if len(va) == 1 and len(vi) == 1:
            if (va[0][0], vi[0][0]) in seenvt: continue
            seenvt.add((va[0][0], vi[0][0]))
            sa_, si_ = va[0][1], vi[0][1]
            if abs(len(sa_) - len(si_)) > 8: continue
            for x, y in zip(sa_, si_):
                if x is not None and y is not None and sig_ok(x, y, 2):
                    if add(x, y, 'V', 'vtable'): nB += 1; changed = True
print('phase B vtable', nB)


# ---- Phase C: call graph propagation
def align(ca, ci):
    """pair callee sequences. exact length -> positional; else anchor on matched + gap-equal."""
    pairs = []
    fa = [x for x in ca if x[0] == 'F']; fi = [x for x in ci if x[0] == 'F']
    # collapse duplicates keeping order
    def dedup(l):
        o = []
        for x in l:
            if x not in o: o.append(x)
        return o
    fa, fi = dedup(fa), dedup(fi)
    if len(fa) == len(fi):
        pairs += [(x[1], y[1]) for x, y in zip(fa, fi)]
    else:
        # use matched anchors to split into gaps
        ia = {x[1]: n for n, x in enumerate(fa)}
        last = (-1, -1); segs = []
        anchors = []
        for n, x in enumerate(fa):
            m_ = match.get(x[1])
            if m_:
                for k, y in enumerate(fi):
                    if y[1] == m_[0]: anchors.append((n, k))
        anchors.append((len(fa), len(fi)))
        pa, pi = -1, -1
        for n, k in anchors:
            ga = fa[pa + 1:n]; gi = fi[pi + 1:k]
            if len(ga) == len(gi) and ga:
                pairs += [(x[1], y[1]) for x, y in zip(ga, gi)]
            pa, pi = n, k
    return pairs



def scan_vtables(img, regs_va, funcidx):
    vts = []
    for va, n in regs_va:
        k = 0
        while k < n // 4:
            w = img.u32(va + 4 * k)
            if w is not None and (w & ~1) in funcidx:
                j = k
                while j < n // 4 and (img.u32(va + 4 * j) or 0) & ~1 in funcidx: j += 1
                if j - k >= 3: vts.append((va + 4 * k, [funcidx[img.u32(va + 4 * q) & ~1] for q in range(k, j)]))
                k = j + 1
            else: k += 1
    return vts


def vt_regions_android():
    import extract
    from elftools.elf.elffile import ELFFile
    f = ELFFile(open(extract.S + 'android-so/libDungeonHunter2.so', 'rb'))
    s_ = f.get_section_by_name('.data.rel.ro'); return [(s_['sh_addr'], s_['sh_size'])]


def vt_regions_ios():
    import extract
    from iosload import IOS
    m = IOS()
    return [(m.secs[n][0], m.secs[n][1]) for n in ('__const',) if n in m.secs] + [(m.secs['__data'][0], m.secs['__data'][1])]


AVT = scan_vtables(aimg, vt_regions_android(), aidx)
IVT = scan_vtables(iimg, vt_regions_ios(), iidx)
print('vtables found android', len(AVT), 'ios', len(IVT))
amem = collections.defaultdict(list); imem = collections.defaultdict(list)
for vi_, (b, sl) in enumerate(AVT):
    for k, x in enumerate(sl): amem[x].append((vi_, k))
for vi_, (b, sl) in enumerate(IVT):
    for k, x in enumerate(sl): imem[x].append((vi_, k))
vtpaired = set()


def phaseVT():
    n = 0
    votes = collections.Counter()
    for a, (i, c, w) in match.items():
        for (va_, ka) in amem.get(a, []):
            for (vi_, ki) in imem.get(i, []):
                if ka == ki: votes[(va_, vi_)] += 1
    for (va_, vi_), v in votes.most_common():
        if v < 2 or (va_, vi_) in vtpaired: continue
        sa_, si_ = AVT[va_][1], IVT[vi_][1]
        if abs(len(sa_) - len(si_)) > 6: continue
        vtpaired.add((va_, vi_))
        for x, y in zip(sa_, si_):
            if sig_ok(x, y, 2) and add(x, y, 'V', 'vtable-vote'): n += 1
    return n

def phaseC():
  nC = 0
  for rnd in range(12):
      ch = 0
      for a, (i, c, w) in list(match.items()):
          fa, fi = af[a], if_[i]
          for x, y in align(fa['cl'], fi['cl']):
              if x in match or y in rev: continue
              if not sig_ok(x, y, 1.0): continue
              if add(x, y, 'P', 'callee'): ch += 1
          # callers: unique unmatched caller on both sides
          ua = [x for x in acallers[a] if x not in match]; ui = [y for y in icallers[i] if y not in rev]
          if len(ua) == 1 and len(ui) == 1 and len(acallers[a]) == len(icallers[i]) and sig_ok(ua[0], ui[0], 1.0):
              if add(ua[0], ui[0], 'P', 'caller'): ch += 1
      # unique-caller reverse: unmatched callee called only by matched fn, same index in positional align
      nC += ch

      if not ch: break
  return nC



def feat(f):
    k = f.get('_k')
    if k is None:
        cs = frozenset(c for c in f['consts'] if 0 < c < 0x1000 or c >= 0x10000000 and c < 0xfff00000)
        im = collections.Counter(n for kk, n in f['cl'] if kk == 'I')
        k = f['_k'] = (cs, im)
    return k


def score(a, i):
    fa, fi = af[a], if_[i]
    na, ni = fa['ninsn'], fi['ninsn']
    if max(na, ni) < 8: return 0
    r = min(na, ni) / max(na, ni)
    ca, ia = feat(fa); ci_, ii = feat(fi)
    cj = len(ca & ci_) / len(ca | ci_) if (ca | ci_) else 0.5
    ik = set(ia) | set(ii)
    ij = (sum(min(ia[k], ii[k]) for k in ik) / sum(max(ia[k], ii[k]) for k in ik)) if ik else 0.5
    ncA, ncI = len(fa['cl']), len(fi['cl'])
    cs_ = min(ncA, ncI) / max(ncA, ncI) if max(ncA, ncI) else 1
    return 0.3 * r + 0.35 * cj + 0.2 * ij + 0.15 * cs_


def phaseE(thr=0.62, margin=0.08, tag='E'):
    n = 0
    cand = collections.defaultdict(dict)
    for a, (i, c, w) in match.items():
        for srcA, srcI in ((set(x for k, x in af[a]['cl'] if k == 'F'), set(x for k, x in if_[i]['cl'] if k == 'F')),
                           (acallers[a], icallers[i])):
            ua = [x for x in srcA if x not in match]; ui = [y for y in srcI if y not in rev]
            if not ua or not ui or len(ua) > 10 or len(ui) > 10: continue
            for x in ua:
                for y in ui:
                    cand[x][y] = score(x, y)
    pairs = []
    for x, d in cand.items():
        srt = sorted(d.items(), key=lambda kv: -kv[1])
        if srt[0][1] >= thr and (len(srt) == 1 or srt[0][1] - srt[1][1] >= margin): pairs.append((srt[0][1], x, srt[0][0]))
    # mutual check
    byy = collections.defaultdict(list)
    for sc, x, y in pairs: byy[y].append((sc, x))
    for sc, x, y in sorted(pairs, reverse=True):
        if len(byy[y]) == 1 or max(byy[y])[1] == x:
            if add(x, y, tag, 'neighbor-score %.2f' % sc): n += 1
    return n


for outer in range(8):
    nv = phaseVT(); nc = phaseC(); ne = phaseE()
    print('outer', outer, 'vt', nv, 'callgraph', nc, 'neighbor', ne)
    if not nv and not nc and not ne: break

# ---- Phase D: rare constants (32-bit values >= 0x10000, not addresses) unique on both sides
ca = collections.defaultdict(set); ci = collections.defaultdict(set)
for n, f in enumerate(af):
    for c in f['consts']:
        if c >= 0x10000 and c not in (0xffffffff,) and not (0x8000 < c < 0x2000000 and False): ca[c].add(n)
for n, f in enumerate(if_):
    for c in f['consts']:
        if c >= 0x10000: ci[c].add(n)
nD = 0
for c in set(ca) & set(ci):
    if len(ca[c]) == 1 and len(ci[c]) == 1:
        a, = ca[c]; i, = ci[c]
        # require magic-looking constant (float exponent range or large), and size sig
        if c > 0x1000000 and not (0x2000000 <= c < 0x80000000 and False) and sig_ok(a, i, 0.9):
            if add(a, i, 'K', 'const %#x' % c): nD += 1
print('phase D constants', nD)
# propagate again after D
for rnd in range(6):
    ch = 0
    for a, (i, c, w) in list(match.items()):
        fa, fi = af[a], if_[i]
        for x, y in align(fa['cl'], fi['cl']):
            if x in match or y in rev: continue
            if sig_ok(x, y, 1.0) and add(x, y, 'P', 'callee'): ch += 1
    if not ch: break
    print(' post-D round', rnd, ch)

# low-confidence tier L (reported separately)
for rnd in range(6):
    ne = phaseE(0.5, 0.04, 'L'); print(' L tier round', rnd, ne)
    if not ne: break
cnt = collections.Counter(c for (_, c, _) in match.values())
print('total matched', len(match), dict(cnt))
pickle.dump(dict(match=match, af=[{k: v for k, v in f.items() if k not in ('ptrs', '_k')} for f in af], if_=[{k: v for k, v in f.items() if k not in ('ptrs', '_k')} for f in if_]), open(sys.argv[3], 'wb'))

if len(sys.argv) > 4:
    k = 0
    for a, (i, c, w) in match.items():
        if ('C2E' in af[a]['name'] or 'C1E' in af[a]['name']) and k < 5:
            k += 1
            print(af[a]['name'], hex(if_[i]['start']))
            print('  and', [(hex(b), len(s)) for b, s in vtable_candidates(af[a], aimg, aidx, True)], [hex(c_) for c_ in sorted(af[a]['consts']) if c_ < 0x4c68 and c_ % 4 == 0 and c_ > 0][:6])
            print('  ios', [(hex(b), len(s)) for b, s in vtable_candidates(if_[i], iimg, iidx, False)], [hex(p) for p in sorted(if_[i]['ptrs'])][:6])
