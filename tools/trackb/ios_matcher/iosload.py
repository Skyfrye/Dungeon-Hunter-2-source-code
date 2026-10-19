import struct,re
P=__import__("os").path.expanduser("~") + '/AppData/Local/Temp/claude/C--Users-user-Documents-Projects-Dungeon-Hunter-2-Recomp-DH-sc/92aea28a-441d-487f-b829-7d37b39f798b/scratchpad/ios-x/Payload/dungeonhunter2iPad.app/dungeonhunter2iPad'
class IOS:
    def __init__(s):
        s.b=open(P,'rb').read()
        b=s.b
        nc=struct.unpack('<I',b[16:20])[0]
        off=28; s.secs={}; s.segs=[]
        for _ in range(nc):
            cmd,cs=struct.unpack('<II',b[off:off+8])
            if cmd==1:
                name=b[off+8:off+24].rstrip(b'\0').decode();vm,vs,fo,fsz=struct.unpack('<4I',b[off+24:off+40]);ns=struct.unpack('<I',b[off+48:off+52])[0]
                s.segs.append((name,vm,vs,fo,fsz))
                so=off+56
                for i in range(ns):
                    sn=b[so:so+16].rstrip(b'\0').decode();ad,sz2,o=struct.unpack('<3I',b[so+32:so+44]);s.secs[sn]=(ad,sz2,o);so+=68
            elif cmd==2:
                s.symoff,s.nsyms,s.stroff,s.strsize=struct.unpack('<4I',b[off+8:off+24])
            off+=cs
        s.syms=[]
        for i in range(s.nsyms):
            n_strx,n_type,n_sect,n_desc,n_value=struct.unpack('<IBBHI',b[s.symoff+12*i:s.symoff+12*i+12])
            nm=b[s.stroff+n_strx:b.index(b'\0',s.stroff+n_strx)].decode(errors='replace')
            s.syms.append((nm,n_type,n_sect,n_desc,n_value))
    def va2off(s,va):
        for name,vm,vs,fo,fsz in s.segs:
            if vm<=va<vm+fsz and fsz: return fo+va-vm
        return None
    def read(s,va,n):
        o=s.va2off(va); return s.b[o:o+n]
    def cstr(s,va):
        o=s.va2off(va)
        if o is None: return None
        e=s.b.find(b'\0',o); return s.b[o:e]
if __name__=='__main__':
    m=IOS()
    ds=[x for x in m.syms if x[1]&0x0e==0xe]
    print(len(ds)); 
    for x in ds[:15]: print(x[0],hex(x[4]),x[3])
    print(sum(1 for x in ds if x[3]&8),'thumb defs')
    print(m.read(0x2384,32).hex())
