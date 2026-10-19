"""Compare the vox decoders' output (host runner --audio-selftest with DH2_SELFTEST_DUMP=<dir>) with a reference decode of every .wav
(PCM: the data chunk; MS IMA ADPCM: the standard block decoder). usage: audio_ref_check.py <sounds dir> <dump dir>"""
import struct, sys, os
IDX=[-1,-1,-1,-1,2,4,6,8]
STEP=[7,8,9,10,11,12,13,14,16,17,19,21,23,25,28,31,34,37,41,45,50,55,60,66,73,80,88,97,107,118,130,143,157,173,190,209,230,253,279,307,337,371,408,449,494,544,598,658,724,796,876,963,1060,1166,1282,1411,1552,1707,1878,2066,2272,2499,2749,3024,3327,3660,4026,4428,4871,5358,5894,6484,7132,7845,8630,9493,10442,11487,12635,13899,15289,16818,18500,20350,22385,24623,27086,29794,32767]
def nib(c,n,st):
    p,i=st; s=STEP[i]; d=s>>3
    if n&1:d+=s>>2
    if n&2:d+=s>>1
    if n&4:d+=s
    p=max(-32768,min(32767,p-d if n&8 else p+d)); i=max(0,min(88,i+IDX[n&7])); st[0]=p; st[1]=i; return p
def parse(b):
    pos=12; fmt=None; data=b''; fact=None
    while pos+8<=len(b):
        cid=b[pos:pos+4]; sz=struct.unpack('<I',b[pos+4:pos+8])[0]; body=b[pos+8:pos+8+sz]
        if cid==b'fmt ': fmt=struct.unpack('<HHIIHH',body[:16])
        elif cid==b'data': data+=body
        elif cid==b'fact': fact=struct.unpack('<I',body[:4])[0]
        pos+=8+sz+(sz&1)
    return fmt,data,fact
def ima(fmt,data):
    tag,ch,rate,_,align,bits=fmt; out=bytearray()
    for o in range(0,len(data)-len(data)%align,align):
        blk=data[o:o+align]; st=[]; chans=[[] for _ in range(ch)]
        for c in range(ch):
            p,i=struct.unpack('<hB',blk[4*c:4*c+3]); st.append([p,i]); chans[c].append(p)
        body=blk[4*ch:]
        for k in range(0,len(body),4*ch):
            for c in range(ch):
                for j in range(4):
                    byte=body[k+4*c+j]
                    chans[c].append(nib(None,byte&15,st[c])); chans[c].append(nib(None,byte>>4,st[c]))
        n=min(len(x) for x in chans)
        for t in range(n):
            for c in range(ch): out+=struct.pack('<h',chans[c][t])
    return bytes(out)
sd,dd=sys.argv[1:3]; bad=0;n=0
for f in sorted(os.listdir(sd)):
    if not f.endswith('.wav'): continue
    fmt,data,fact=parse(open(os.path.join(sd,f),'rb').read())
    got=open(os.path.join(dd,f+'.raw'),'rb').read()
    ref=data if fmt[0]==1 else ima(fmt,data)
    if fmt[0]!=1 and fact: ref=ref[:fact*fmt[1]*2]
    m=min(len(ref),len(got)); same=ref[:m]==got[:m]; n+=1
    if not same or abs(len(ref)-len(got))>fmt[1]*2*4096:
        bad+=1; first=next((i for i in range(m) if ref[i]!=got[i]),-1)
        print('DIFF',f,'tag',fmt[0],'ref',len(ref),'got',len(got),'first diff at byte',first)
print(n,'files compared,',bad,'differ')
