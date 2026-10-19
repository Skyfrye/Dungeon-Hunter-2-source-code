"""iOS-only helper scan: iOS functions unmatched, called by matched iOS functions whose Android partner has fewer/equal F-callees."""
exec(open('twin.py').read().split("if __name__")[0])
import collections,re
rows=collections.defaultdict(list)
for a,(i,c,w) in mt.items():
    fa,fi=af[a],if_[i]
    ia=[v for k,v in fa['cl'] if k=='F']; ii=[v for k,v in fi['cl'] if k=='F']
    un=[v for v in dict.fromkeys(ii) if v not in rev]
    if len(set(ii))>len(set(ia)):
        for v in un: rows[v].append(a)
print('ios unmatched helpers called from matched fns with more callees than android partner:',len(rows))
cat=collections.Counter(); ex=collections.defaultdict(list)
for v,callers in rows.items():
    f=if_[v]
    st=f['strs']
    p=next((s for s in st if s.endswith(('.hpp','.h','.cpp','.inl'))),None)
    key=re.sub(r'.*/(lib/\w+|sources/\w+).*',r'\1',p) if p else 'nostr'
    key=('intrusive_ptr' if p and 'intrusive_ptr' in p else key)
    cat[key]+=1; ex[key].append((hex(f['start']),f['ninsn'],len(callers)))
for k,n in cat.most_common(15): print(n,k,ex[k][:3])
# non-assert helpers: nostr or non-boost, size>=8
big=[(hex(if_[v]['start']),if_[v]['ninsn'],len(c),af[c[0]]['name'][:60]) for v,c in rows.items() if if_[v]['ninsn']>=15 and not any('intrusive_ptr' in s for s in if_[v]['strs'])]
print('non-intrusive_ptr, >=15 insns:',len(big))
for b in sorted(big,key=lambda x:-x[2])[:25]: print(b)
pickle.dump({v:c for v,c in rows.items()},open('helpers.pkl','wb'))
