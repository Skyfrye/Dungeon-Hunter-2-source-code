import sys,pickle,collections
sys.path.insert(0,'.')
from iosload import IOS
m=IOS()
named={x[4]&~1:x[0][1:] for x in m.syms if x[1]&0x0e==0xe and x[2]==1}   # iOS addr -> mangled w/o leading _
d=pickle.load(open(sys.argv[1],'rb'))
af,if_,mt=d['af'],d['if_'],d['match']
aname={}
for n,f in enumerate(af): aname[n]=f['name']
res=collections.Counter(); bad=[]
for a,(i,c,w) in mt.items():
    nm=named.get(if_[i]['start'])
    if nm:
        ok = nm==af[a]['name']
        res[(c,ok)]+=1
        if not ok: bad.append((c,nm[:60],af[a]['name'][:60]))
print(res); print(len(named),'named ios funcs;', sum(1 for i,f in enumerate(if_) if f['start'] in named),'in discovered set')
for b in bad[:15]: print(b)
