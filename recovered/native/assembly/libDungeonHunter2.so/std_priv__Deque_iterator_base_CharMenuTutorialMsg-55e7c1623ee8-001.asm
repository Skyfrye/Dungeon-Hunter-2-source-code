; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004562dc, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Deque_iterator_base<CharMenuTutorialMsg>
; alias: _ZNKSt4priv20_Deque_iterator_baseI19CharMenuTutorialMsgE11_M_subtractERKS2_
; demangled: std::priv::_Deque_iterator_base<CharMenuTutorialMsg>::_M_subtract(std::priv::_Deque_iterator_base<CharMenuTutorialMsg> const&) const
; decoder-mode: arm
004562dc  30 00 2d e9                                      push {r4, r5}
004562e0  0c 00 90 e8                                      ldm r0, {r2, r3}
004562e4  08 50 91 e5                                      ldr r5, [r1, #8]
004562e8  00 40 91 e5                                      ldr r4, [r1]
004562ec  02 30 63 e0                                      rsb r3, r3, r2
004562f0  c5 ce 04 e3                                      movw ip, #0x4ec5
004562f4  ec c4 4c e3                                      movt ip, #0xc4ec
004562f8  43 31 a0 e1                                      asr r3, r3, #2
004562fc  9c 03 03 e0                                      mul r3, ip, r3
00456300  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00456304  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00456308  05 20 64 e0                                      rsb r2, r4, r5
0045630c  42 21 a0 e1                                      asr r2, r2, #2
00456310  9c 32 2c e0                                      mla ip, ip, r2, r3
00456314  00 00 61 e0                                      rsb r0, r1, r0
00456318  40 01 a0 e1                                      asr r0, r0, #2
0045631c  01 00 40 e2                                      sub r0, r0, #1
00456320  80 00 8c e0                                      add r0, ip, r0, lsl #1
00456324  30 00 bd e8                                      pop {r4, r5}
00456328  1e ff 2f e1                                      bx lr
