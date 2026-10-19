import glob,os,sys
from PIL import Image
import numpy as np
def ts(f):
    b=os.path.basename(f)[2:12]; h,m,s,ms=int(b[0:2]),int(b[2:4]),int(b[4:6]),int(b[7:10]); return h*3600+m*60+s+ms/1000
t0,t1=sys.argv[1],sys.argv[2]
fs=sorted(glob.glob('rec/s_*.png')); fs=[f for f in fs if t0<=os.path.basename(f)[2:8]<=t1]
prev_hp=None; prev_lab=None; rows=[]
for f in fs:
    try: a=np.asarray(Image.open(f).convert('RGB')).astype(int)
    except: continue
    hp=(a[88,200:520,0]>170).sum(); lab=((a[190:216,550:780].min(axis=2)>200)).sum()>150
    rows.append((ts(f),hp,lab))
T0=None
for t,hp,lab in rows:
    if T0 is None and hp>50: T0=t; print('T0 (first HUD)',round(t,2))
    if T0 is None: continue
    if prev_hp is not None and hp<prev_hp-40: print('HIT   +%.2f s  hp %d->%d'%(t-T0,prev_hp,hp))
    if prev_lab is not None and lab!=prev_lab: print('LABEL %s +%.2f s'%('on ' if lab else 'off',t-T0))
    prev_hp=hp; prev_lab=lab
