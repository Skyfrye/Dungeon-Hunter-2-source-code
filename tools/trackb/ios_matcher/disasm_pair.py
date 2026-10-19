"""dis.py ANDROID_ADDR|- IOS_ADDR|- : plain disassembly of one or both sides (for hand checks)."""
import sys;sys.path.insert(0,'.')
import extract,pickle
from capstone import *
d=pickle.load(open('m.pkl','rb'));af,if_,mt=d['af'],d['if_'],d['match']
aidx={f['start']:n for n,f in enumerate(af)}; iidx={f['start']:n for n,f in enumerate(if_)}
for nm,arg in (('and',sys.argv[1]),('ios',sys.argv[2])):
    if arg=='-': continue
    ad=int(arg,16)
    if nm=='and': img=extract.load_android()[0]; f=af[aidx[ad]]
    else: img=extract.load_ios()[0]; f=if_[iidx[ad]]
    md=Cs(CS_ARCH_ARM,CS_MODE_THUMB if f['thumb'] else CS_MODE_ARM); md.skipdata=True
    print(nm,hex(ad),f['size'])
    for x in md.disasm(img.read(ad,f['size']),ad): print('  ',hex(x.address),x.mnemonic,x.op_str)
