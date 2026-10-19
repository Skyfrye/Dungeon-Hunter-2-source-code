import sys; sys.argv=[sys.argv[0]]+sys.argv[1:]
exec(open('twin.py').read().split("if __name__")[0])
def show(addr):
    a=aidx[addr]; print('ANDROID',hex(addr),af[a]['name'][:80],af[a]['ninsn'])
    for c in sorted(acallers[a]):
        m=mt.get(c); print('  caller',hex(af[c]['start']),af[c]['name'][:80],'->',(hex(if_[m[0]]['start']),m[1]) if m else None)
        print('    calls:',[ (hex(af[v]['start']) if k=='F' else v) for k,v in af[c]['cl']][:30])
        if m: print('    ios calls:',[ (hex(if_[v]['start']) if k=='F' else v) for k,v in if_[m[0]]['cl']][:30])
for x in sys.argv[1:]: show(int(x,16))
