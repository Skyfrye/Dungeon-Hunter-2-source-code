"""twin.py ANDROID_ADDR... : find iOS standalone twin of an Android function through matched callers/callees.
Candidates = iOS callees of the iOS partner of each matched Android caller (and iOS callers of the partner of matched callees),
scored by size/constant/import/call-count similarity."""
import pickle,sys,collections
d=pickle.load(open('m.pkl','rb'));af,if_,mt=d['af'],d['if_'],d['match']
aidx={f['start']:n for n,f in enumerate(af)}; iidx={f['start']:n for n,f in enumerate(if_)}
rev={i:a for a,(i,c,w) in mt.items()}
acallers=collections.defaultdict(set);icallers=collections.defaultdict(set)
for n,f in enumerate(af):
    for k,v in f['cl']:
        if k=='F': acallers[v].add(n)
for n,f in enumerate(if_):
    for k,v in f['cl']:
        if k=='F': icallers[v].add(n)
def feat(f):
    cs=frozenset(c for c in f['consts'] if 0<c<0x1000 or 0x10000000<=c<0xfff00000)
    return cs,collections.Counter(n for k,n in f['cl'] if k=='I')
def score(a,i):
    fa,fi=af[a],if_[i];na,ni=fa['ninsn'],fi['ninsn']
    r=min(na,ni)/max(na,ni) if max(na,ni) else 1
    ca,ia=feat(fa);ci,ii=feat(fi)
    cj=len(ca&ci)/len(ca|ci) if (ca|ci) else .5
    ik=set(ia)|set(ii)
    ij=(sum(min(ia[k],ii[k]) for k in ik)/sum(max(ia[k],ii[k]) for k in ik)) if ik else .5
    nA,nI=len(fa['cl']),len(fi['cl']);cs=min(nA,nI)/max(nA,nI) if max(nA,nI) else 1
    return .3*r+.35*cj+.2*ij+.15*cs
def twin(addr,verbose=True):
    a=aidx[addr]; fa=af[a]
    cand=collections.defaultdict(list)
    for c in acallers[a]:
        if c in mt:
            ic=mt[c][0]
            for k,v in if_[ic]['cl']:
                if k=='F': cand[v].append(('caller %s'%af[c]['name'][:40],mt[c][1]))
    for k,v in fa['cl']:
        pass
    # callees of a that are matched -> iOS callers of their partner
    for k,v in fa['cl']:
        if k=='F' and v in mt:
            for ic in icallers[mt[v][0]]: cand[ic].append(('callee-partner',mt[v][1]))
    out=sorted(((score(a,i),i) for i in cand if i not in rev),reverse=True)[:3]
    res=[(sc,hex(if_[i]['start']),if_[i]['ninsn'],if_[i]['nbr'],len(cand[i])) for sc,i in out]
    return fa['name'],fa['ninsn'],fa['nbr'],res
if __name__=='__main__':
    for x in sys.argv[1:]:
        print(twin(int(x,16)))
