import sys,pickle,collections
sys.path.insert(0,'.')
from iosload import IOS
m=IOS()
d=pickle.load(open(sys.argv[1],'rb'))
af,if_,mt=d['af'],d['if_'],d['match']
an={f['name']:n for n,f in enumerate(af)}
iidx={f['start']:n for n,f in enumerate(if_)}
rev={i:a for a,(i,c,w) in mt.items()}
tot=0;insets=0;found=0;right=0
for x in m.syms:
    if x[1]&0x0e!=0xe: continue
    nm=x[0][1:]; tot+= 1
    if nm in an:
        insets+=1
        i=iidx.get(x[4]&~1)
        if i is not None and i in rev:
            found+=1; right+= rev[i]==an[nm]
print('ios defined',tot,'name also in android',insets,'ios func discovered&matched',found,'correct',right)
print(collections.Counter(mt[rev[iidx[x[4]&~1]]][1] for x in m.syms if x[1]&0x0e==0xe and iidx.get(x[4]&~1) in rev and x[0][1:] in an and rev[iidx[x[4]&~1]]==an[x[0][1:]]))
