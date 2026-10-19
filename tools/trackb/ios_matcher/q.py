import pickle,sys,re
d=pickle.load(open('m.pkl','rb'));af,if_,mt=d['af'],d['if_'],d['match']
pat=sys.argv[1]
for n,f in enumerate(af):
    if re.search(pat,f['name']) or hex(f['start'])==pat:
        m=mt.get(n); print(n,hex(f['start']),f['size'],f['ninsn'],f['name'][:110],'->',(hex(if_[m[0]]['start']),m[1],m[2]) if m else None)
