import pickle,sys,collections
d=pickle.load(open(sys.argv[1],'rb'));af,if_,mt=d['af'],d['if_'],d['match']
agree=collections.Counter();tot=collections.Counter();bad=collections.defaultdict(list)
for a,(i,c,w) in mt.items():
    if c=='A': continue
    sa,si=set(af[a]['strs']),set(if_[i]['strs'])
    if sa and si:
        tot[c]+=1
        if sa&si: agree[c]+=1
        else: bad[c].append((af[a]['name'][:50],list(sa)[:1],list(si)[:1]))
for c in tot: print(c,tot[c],agree[c],'%.0f%%'%(100*agree[c]/tot[c]))
for c in bad:
    for b in bad[c][:3]: print(c,b)
