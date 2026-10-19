; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005224f8, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<unsigned int>
; alias: _ZNKSt4priv20_Deque_iterator_baseIjE11_M_subtractERKS1_
; demangled: std::priv::_Deque_iterator_base<unsigned int>::_M_subtract(std::priv::_Deque_iterator_base<unsigned int> const&) const
; decoder-mode: arm
005224f8  30 00 2d e9                                      push {r4, r5}
005224fc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00522500  00 50 90 e5                                      ldr r5, [r0]
00522504  04 20 90 e5                                      ldr r2, [r0, #4]
00522508  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0052250c  08 30 91 e5                                      ldr r3, [r1, #8]
00522510  00 10 91 e5                                      ldr r1, [r1]
00522514  05 20 62 e0                                      rsb r2, r2, r5
00522518  04 00 6c e0                                      rsb r0, ip, r4
0052251c  03 30 61 e0                                      rsb r3, r1, r3
00522520  42 21 a0 e1                                      asr r2, r2, #2
00522524  40 01 a0 e1                                      asr r0, r0, #2
00522528  43 31 82 e0                                      add r3, r2, r3, asr #2
0052252c  01 00 40 e2                                      sub r0, r0, #1
00522530  80 02 83 e0                                      add r0, r3, r0, lsl #5
00522534  30 00 bd e8                                      pop {r4, r5}
00522538  1e ff 2f e1                                      bx lr
