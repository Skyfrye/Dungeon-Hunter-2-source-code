import pickle,sys
sys.path.insert(0,'.')
import extract
A=pickle.load(open('and.pkl','rb'))['funcs']
ai=extract.load_android()[0]
n=0
for f in A:
    if 'C2E' in f['name'] and f['size']>40 and n<6:
        n+=1
        print(f['name'],hex(f['start']),f['thumb'],f['size'])
        for p in sorted(f['ptrs'])[:6]: print('  ptr',hex(p),[hex(ai.u32(p+4*k) or 0) for k in range(4)])
        print('  consts',[hex(c) for c in sorted(f['consts'])[:8]])
