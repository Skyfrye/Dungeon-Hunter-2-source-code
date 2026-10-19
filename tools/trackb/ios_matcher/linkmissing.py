exec(open('twin.py').read().split("if __name__")[0])
import csv
P=__import__("os").path.expanduser("~") + '/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b/reports/decomp-reconstruction/android-link-missing.csv'
rows=[r for r in csv.DictReader(open(P,encoding='utf-8')) if r['android_category'] in('original-not-reconstructed','original-partial-row')]
stat=collections.Counter(); out=[]
for r in rows:
    ad=int(r['address'],16); a=aidx.get(ad)
    if a is None: stat['no-android-func']+=1; out.append((r['symbol'][:60],'?','no sym size')); continue
    m=mt.get(a)
    if m: stat['matched-'+m[1]]+=1; out.append((r['symbol'][:60],hex(if_[m[0]]['start']),m[1],af[a]['ninsn'],if_[m[0]]['ninsn'])); continue
    nm,na,nb,res=twin(ad)
    if res and res[0][0]>=0.45: stat['twin-candidate']+=1; out.append((r['symbol'][:60],res[0][1],'twin %.2f'%res[0][0],na,res[0][2]))
    elif na<8: stat['tiny']+=1; out.append((r['symbol'][:60],'-','tiny',na,0))
    else: stat['none']+=1; out.append((r['symbol'][:60],'-','none',na,0))
print(len(rows),dict(stat))
for o in out: print(o)
