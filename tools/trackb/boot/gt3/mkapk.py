# GT3: build the debuggable + thread-leak-patched DH2 1.0.2 APK. Run from the worktree root, scratch dir build/own-gt3.
# 1) AndroidManifest.xml: flip android:debuggable (string idx 4 already in the pool) to true -> run-as works (/proc/<pid>/maps, /proc/<pid>/mem)
# 2) libDungeonHunter2.so: replace updateJob_thread::Start2 (0x317e98) and ::Start (0x317ef8) by patch.S (detached pthread_create). The original
#    created a JOINABLE thread per call (attr NULL, never joined) ~60 times/s on the loader thread: 1 MB stack leaked per call -> 32-bit address space full.
# patch.S build:  armv7a-linux-androideabi21-clang -c patch.S -o patch.o ; ld.lld -nostdlib --no-rosegment --section-start=.patchA=0x317e98
#   --section-start=.patchB=0x317ef8 --defsym=pthread_attr_init_plt=0x30e454 --defsym=pthread_attr_setdetachstate_plt=0x30e5f8
#   --defsym=pthread_create_plt=0x30dfe0 patch.o -o patch.elf ; llvm-objcopy -O binary --only-section=.patchA patch.elf pa.bin (and .patchB -> pb.bin)
import zipfile,struct,sys
SRC=__import__("os").path.expanduser("~") + r"/Downloads/Dungeon-Hunter-2-HD-v1-0-2.apk"
zi=zipfile.ZipFile(SRC); man=bytearray(zi.read('AndroidManifest.xml'))
off=8+2772+104+24
while off<len(man):
    t,hs,sz=struct.unpack_from('<HHI',man,off)
    if t==0x102:
        ao,asz,ac=struct.unpack_from('<HHH',man,off+24)
        for i in range(ac):
            a=off+16+ao+i*20
            if struct.unpack_from('<I',man,a+4)[0]==4: struct.pack_into('<I',man,a+16,0xFFFFFFFF)
    off+=sz
lib=bytearray(zi.read('lib/armeabi-v7a/libDungeonHunter2.so'))
pa=open('build/own-gt3/pa.bin','rb').read(); pb=open('build/own-gt3/pb.bin','rb').read()
for addr,p,end in ((0x317e98,pa,0x317ef8),(0x317ef8,pb,0x317f58)):
    assert len(p)<=end-addr; lib[addr:addr+len(p)]=p
    for i in range(addr+len(p),end,4): lib[i:i+4]=b'\x00\x00\xa0\xe1'
zo=zipfile.ZipFile('build/own-gt3/dh2_gt3p_unsigned.apk','w')
for i in zi.infolist():
    if i.filename.startswith('META-INF/'): continue
    d=man if i.filename=='AndroidManifest.xml' else (lib if i.filename=='lib/armeabi-v7a/libDungeonHunter2.so' else zi.read(i.filename))
    zo.writestr(i,bytes(d),compress_type=i.compress_type)
zo.close()
# then: keytool -genkeypair -keystore dbg.jks ... ; apksigner sign --ks dbg.jks --out dh2_gt3p.apk dh2_gt3p_unsigned.apk
