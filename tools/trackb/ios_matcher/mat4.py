exec(open('twin.py').read().split("if __name__")[0])
A=[0x50d198,0x50cdb0,0x50d49c,0x50d2c0]; I=[0x1a8840,0x1a89d4,0x1a8c9c,0x1a907c]
print('rows android Universe,Frustum3,FrustumBox,Box ; cols ios',[hex(x) for x in I])
for a in A:
    print(hex(a),af[a:=aidx[a]]['ninsn'],af[a]['nbr'],[round(score(a,iidx[i]),2) for i in I],sorted(c for c in af[a]['consts'] if 0<c<0x1000)[:12],[v for k,v in af[a]['cl'] if k=='I'])
for i in I:
    f=if_[iidx[i]];print(hex(i),f['ninsn'],f['nbr'],sorted(c for c in f['consts'] if 0<c<0x1000)[:12],[v for k,v in f['cl'] if k=='I'],[hex(if_[v]['start']) for k,v in f['cl'] if k=='F'])
for a in A:
    f=af[aidx[a]];print(hex(a),[hex(af[v]['start']) for k,v in f['cl'] if k=='F'])
