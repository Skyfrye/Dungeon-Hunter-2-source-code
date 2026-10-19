import sys
rows=[];tot=0
for l in open(sys.argv[1]):
    p=l.split()
    if len(p)<2: continue
    a,b=[int(x,16) for x in p[0].split('-')]
    rows.append((b-a,l.strip())); tot+=b-a
rows.sort(reverse=True); print('total MB',tot/2**20, 'count',len(rows))
for s,l in rows[:int(sys.argv[2]) if len(sys.argv)>2 else 15]: print(s>>20,l)
