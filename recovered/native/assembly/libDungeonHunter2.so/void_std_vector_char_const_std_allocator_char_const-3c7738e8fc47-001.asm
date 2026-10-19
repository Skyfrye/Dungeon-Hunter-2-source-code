; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c90c, declared_size=100, range_size=100, mode=arm
; class-group: void std::vector<char const*, std::allocator<char const*> >
; alias: _ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPS1_EEvT_S6_RKSt20forward_iterator_tag
; demangled: void std::vector<char const*, std::allocator<char const*> >::_M_range_initialize<char const**>(char const**, char const**, std::forward_iterator_tag const&)
; decoder-mode: arm
0048c90c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048c910  02 60 61 e0                                      rsb r6, r1, r2
0048c914  0c d0 4d e2                                      sub sp, sp, #0xc
0048c918  01 50 a0 e1                                      mov r5, r1
0048c91c  02 70 a0 e1                                      mov r7, r2
0048c920  46 11 a0 e1                                      asr r1, r6, #2
0048c924  08 20 8d e2                                      add r2, sp, #8
0048c928  00 40 a0 e1                                      mov r4, r0
0048c92c  04 10 22 e5                                      str r1, [r2, #-4]!
0048c930  08 00 80 e2                                      add r0, r0, #8
0048c934  d8 ff ff eb                                      bl #0x48c89c
0048c938  04 20 9d e5                                      ldr r2, [sp, #4]
0048c93c  07 00 55 e1                                      cmp r5, r7
0048c940  00 30 a0 e1                                      mov r3, r0
0048c944  02 21 80 e0                                      add r2, r0, r2, lsl #2
0048c948  00 00 84 e5                                      str r0, [r4]
0048c94c  08 20 84 e5                                      str r2, [r4, #8]
0048c950  03 00 00 0a                                      beq #0x48c964
0048c954  05 10 a0 e1                                      mov r1, r5
0048c958  06 20 a0 e1                                      mov r2, r6
0048c95c  c1 07 fa eb                                      bl #0x30e868
0048c960  06 30 80 e0                                      add r3, r0, r6
0048c964  04 30 84 e5                                      str r3, [r4, #4]
0048c968  0c d0 8d e2                                      add sp, sp, #0xc
0048c96c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
