import subprocess,sys,struct,re,time
ADB=r"<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/platform-tools/adb.exe"
S=['-s','emulator-5592']
PKG='com.gameloft.android.GAND.GloftD2SS'
def sh(c): return subprocess.run([ADB]+S+['exec-out',c],capture_output=True).stdout
def pid(): return sh('pidof '+PKG).decode().strip()
def regions(p):
    out=sh('run-as %s cat /proc/%s/maps'%(PKG,p)).decode()
    R=[]
    for l in out.split('\n'):
        f=l.split()
        if len(f)<2 or f[1]!='rw-p': continue
        if len(f)>5 and not f[5].startswith('[anon:libc_malloc') and not f[5].startswith('[heap'): continue
        a,b=[int(x,16) for x in f[0].split('-')]
        if b-a>128*2**20: continue
        R.append((a,b))
    return R
def dump(p):
    res={}
    for a,b in regions(p):
        d=sh("run-as %s sh -c 'dd if=/proc/%s/mem bs=4096 skip=%d count=%d 2>/dev/null'"%(PKG,p,a//4096,(b-a)//4096))
        res[a]=d
    return res
def find(res,xr,yr,zr):
    hits=[]
    for a,d in res.items():
        n=len(d)//4
        if n<3: continue
        fl=struct.unpack('<%df'%n,d[:n*4])
        for i in range(n-2):
            y=fl[i+1]
            if yr[0]<y<yr[1]:
                x=fl[i]
                if xr[0]<x<xr[1]:
                    z=fl[i+2]
                    if zr[0]<z<zr[1]: hits.append((a+i*4,x,y,z))
    return hits
if __name__=='__main__':
    t=time.time(); p=pid(); res=dump(p); print('dumped',sum(len(v) for v in res.values())>>20,'MB',time.time()-t)
    for h in find(res,(-22000,-9000),(11000,13000),(200,300)): print(hex(h[0]),h[1:])
