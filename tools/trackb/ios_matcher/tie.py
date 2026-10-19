exec(open('twin.py').read().split("if __name__")[0])
import csv,glob,re
rows=[]
for p in glob.glob(__import__("os").path.expanduser("~") + '/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b/port/decomp-reconstruction/*/ledger.csv'):
    for r in csv.DictReader(open(p,encoding='utf-8')):
        if r['status']=='partial': r['_p']=p.split('/')[-2]; rows.append(r)
kw=re.compile(r'(unknown|unidentified|unresolved|not identified|unclear|not known|undetermined|constant at|table at|dword_|byte_|flt_|off_)',re.I)
excl=re.compile(r'(header|layout|not declared|no declaration|undeclared|not in tree)',re.I)
c=0
for r in rows:
    n=r['notes']
    if not kw.search(n): continue
    ad=int(r['elf_address'],16); a=aidx.get(ad)
    m=mt.get(a) if a is not None else None
    if not m: continue
    c+=1
    print(r['_p'],r['elf_address'],r['symbol'][:55],'|',m[1],hex(if_[m[0]]['start']),af[a]['ninsn'],if_[m[0]]['ninsn'],'| excl' if excl.search(n) else '')
    mm=kw.search(n); s=max(0,mm.start()-120); print('    ',n[s:mm.end()+160].replace('\n',' '))
print(c)
