import glob,os,sys
from PIL import Image
import numpy as np
def ts(f):
    b=os.path.basename(f)[2:12]; return int(b[0:2])*3600+int(b[2:4])*60+int(b[4:6])+int(b[7:10])/1000
def fmt(t): return '%02d:%02d:%05.2f'%(t//3600,(t%3600)//60,t%60)
t0,t1,T0=sys.argv[1],sys.argv[2],sys.argv[3]
T0=int(T0[:2])*3600+int(T0[2:4])*60+float(T0[4:])
fs=sorted(glob.glob('rec/s_*.png')); fs=[f for f in fs if t0<=os.path.basename(f)[2:8]<=t1]
state=None; last=None
for f in fs:
    try: a=np.asarray(Image.open(f).convert('RGB')).astype(int)
    except: continue
    band=a[0:140,300:1000]
    g=((band[:,:,1]>150)&(band[:,:,1]>band[:,:,0]+60)&(band[:,:,1]>band[:,:,2]+25)).sum()
    hp=(a[88,200:520,0]>170).sum()
    t=ts(f)
    vis=g>250
    if state is None or vis!=state:
        print(fmt(t),'T0%+.2f'%(t-T0),'BOSS','visible' if vis else 'gone','(g=%d hp=%d)'%(g,hp)); state=vis
