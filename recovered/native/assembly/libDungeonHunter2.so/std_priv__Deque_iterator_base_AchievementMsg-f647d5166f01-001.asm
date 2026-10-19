; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037fa1c, declared_size=100, range_size=100, mode=arm
; class-group: std::priv::_Deque_iterator_base<AchievementMsg>
; alias: _ZNKSt4priv20_Deque_iterator_baseI14AchievementMsgE11_M_subtractERKS2_
; demangled: std::priv::_Deque_iterator_base<AchievementMsg>::_M_subtract(std::priv::_Deque_iterator_base<AchievementMsg> const&) const
; decoder-mode: arm
0037fa1c  04 40 2d e5                                      str r4, [sp, #-4]!
0037fa20  00 40 90 e5                                      ldr r4, [r0]
0037fa24  04 20 90 e5                                      ldr r2, [r0, #4]
0037fa28  08 c0 91 e5                                      ldr ip, [r1, #8]
0037fa2c  00 30 91 e5                                      ldr r3, [r1]
0037fa30  04 20 62 e0                                      rsb r2, r2, r4
0037fa34  42 21 a0 e1                                      asr r2, r2, #2
0037fa38  0c 30 63 e0                                      rsb r3, r3, ip
0037fa3c  43 31 a0 e1                                      asr r3, r3, #2
0037fa40  02 22 82 e0                                      add r2, r2, r2, lsl #4
0037fa44  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0037fa48  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0037fa4c  03 32 83 e0                                      add r3, r3, r3, lsl #4
0037fa50  02 24 82 e0                                      add r2, r2, r2, lsl #8
0037fa54  03 34 83 e0                                      add r3, r3, r3, lsl #8
0037fa58  00 00 61 e0                                      rsb r0, r1, r0
0037fa5c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0037fa60  00 20 62 e2                                      rsb r2, r2, #0
0037fa64  03 38 83 e0                                      add r3, r3, r3, lsl #16
0037fa68  40 01 a0 e1                                      asr r0, r0, #2
0037fa6c  02 30 63 e0                                      rsb r3, r3, r2
0037fa70  01 00 40 e2                                      sub r0, r0, #1
0037fa74  80 00 83 e0                                      add r0, r3, r0, lsl #1
0037fa78  10 00 bd e8                                      ldm sp!, {r4}
0037fa7c  1e ff 2f e1                                      bx lr
