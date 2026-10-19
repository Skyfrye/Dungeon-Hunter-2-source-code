; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00456298, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<TutorialMsg>
; alias: _ZNKSt4priv20_Deque_iterator_baseI11TutorialMsgE11_M_subtractERKS2_
; demangled: std::priv::_Deque_iterator_base<TutorialMsg>::_M_subtract(std::priv::_Deque_iterator_base<TutorialMsg> const&) const
; decoder-mode: arm
00456298  30 00 2d e9                                      push {r4, r5}
0045629c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
004562a0  00 50 90 e5                                      ldr r5, [r0]
004562a4  04 20 90 e5                                      ldr r2, [r0, #4]
004562a8  0c 40 90 e5                                      ldr r4, [r0, #0xc]
004562ac  08 30 91 e5                                      ldr r3, [r1, #8]
004562b0  00 10 91 e5                                      ldr r1, [r1]
004562b4  05 20 62 e0                                      rsb r2, r2, r5
004562b8  04 00 6c e0                                      rsb r0, ip, r4
004562bc  03 30 61 e0                                      rsb r3, r1, r3
004562c0  c2 21 a0 e1                                      asr r2, r2, #3
004562c4  40 01 a0 e1                                      asr r0, r0, #2
004562c8  c3 31 82 e0                                      add r3, r2, r3, asr #3
004562cc  01 00 40 e2                                      sub r0, r0, #1
004562d0  00 02 83 e0                                      add r0, r3, r0, lsl #4
004562d4  30 00 bd e8                                      pop {r4, r5}
004562d8  1e ff 2f e1                                      bx lr
