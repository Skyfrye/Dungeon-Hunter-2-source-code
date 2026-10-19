"""Per-second peak/RMS of a 44.1 kHz stereo 16-bit WAV (the runner's --audio-wav dump). usage: wav_levels.py file.wav [seconds-per-row]"""
import sys, struct, array, math
b=open(sys.argv[1],'rb').read(); step=float(sys.argv[2]) if len(sys.argv)>2 else 1.0
a=array.array('h'); a.frombytes(b[44:len(b)-((len(b)-44)%2)])
fr=len(a)//2; n=int(44100*step); print('seconds',round(fr/44100,2),'frames',fr)
for i in range(0,fr,n):
    seg=a[2*i:2*min(fr,i+n)]
    if not seg: break
    pk=max(abs(x) for x in seg)/32768; rms=math.sqrt(sum(x*x for x in seg)/len(seg))/32768
    print('%6.1fs peak %.3f rms %.4f %s'%(i/44100,pk,rms,'#'*int(rms*200)))
