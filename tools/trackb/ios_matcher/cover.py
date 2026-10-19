exec(open('twin.py').read().split("if __name__")[0])
import csv,glob,re
L={}
for p in glob.glob('<home>/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b/port/decomp-reconstruction/*/ledger.csv'):
    for r in csv.DictReader(open(p,encoding='utf-8')):
        try: L[int(r['elf_address'],16)]=r['status']
        except: pass
print('ledger rows',len(L),collections.Counter(L.values()))
def lib(n): return bool(re.match(r'_ZN?K?(St|Ss|Sa|Sb|So|Si)|_ZN?K?\d*(stlp|std|__gnu|boost)|_STL|stlp',n))
tot=len(af);m=len(mt)
print('android funcs',tot,'matched',m,'%.1f%%'%(100*m/tot))
nt=[n for n,f in enumerate(af) if f['ninsn']>=12]
print('nontrivial(>=12 insns)',len(nt),'matched',sum(1 for n in nt if n in mt),'%.1f%%'%(100*sum(1 for n in nt if n in mt)/len(nt)))
nl=[n for n in nt if not lib(af[n]['name'])]
print('nontrivial non-stl/boost',len(nl),'matched',sum(1 for n in nl if n in mt),'%.1f%%'%(100*sum(1 for n in nl if n in mt)/len(nl)))
by=collections.Counter(c for (_,c,_) in mt.values()); print('by conf',dict(by))
for st in ('reconstructed','partial','skipped'):
    ns=[n for n,f in enumerate(af) if L.get(f['start'])==st]
    nsn=[n for n in ns if af[n]['ninsn']>=12]
    print(st,len(ns),'matched',sum(1 for n in ns if n in mt),'| nontrivial',len(nsn),'matched',sum(1 for n in nsn if n in mt),'%.1f%%'%(100*sum(1 for n in nsn if n in mt)/max(1,len(nsn))))
print('ios funcs',len(if_),'matched',len(rev),'%.1f%%'%(100*len(rev)/len(if_)))
# string-bearing android functions
sb=[n for n,f in enumerate(af) if f['strs']]
print('android funcs with strings',len(sb),'matched',sum(1 for n in sb if n in mt))
