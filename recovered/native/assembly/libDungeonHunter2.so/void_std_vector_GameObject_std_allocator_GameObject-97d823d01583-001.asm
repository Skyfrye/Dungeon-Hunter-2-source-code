; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050db58, declared_size=100, range_size=100, mode=arm
; class-group: void std::vector<GameObject*, std::allocator<GameObject*> >
; alias: _ZNSt6vectorIP10GameObjectSaIS1_EE19_M_range_initializeIPS1_EEvT_S6_RKSt20forward_iterator_tag
; demangled: void std::vector<GameObject*, std::allocator<GameObject*> >::_M_range_initialize<GameObject**>(GameObject**, GameObject**, std::forward_iterator_tag const&)
; decoder-mode: arm
0050db58  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0050db5c  02 60 61 e0                                      rsb r6, r1, r2
0050db60  0c d0 4d e2                                      sub sp, sp, #0xc
0050db64  01 50 a0 e1                                      mov r5, r1
0050db68  02 70 a0 e1                                      mov r7, r2
0050db6c  46 11 a0 e1                                      asr r1, r6, #2
0050db70  08 20 8d e2                                      add r2, sp, #8
0050db74  00 40 a0 e1                                      mov r4, r0
0050db78  04 10 22 e5                                      str r1, [r2, #-4]!
0050db7c  08 00 80 e2                                      add r0, r0, #8
0050db80  a2 02 fa eb                                      bl #0x38e610
0050db84  04 20 9d e5                                      ldr r2, [sp, #4]
0050db88  07 00 55 e1                                      cmp r5, r7
0050db8c  00 30 a0 e1                                      mov r3, r0
0050db90  02 21 80 e0                                      add r2, r0, r2, lsl #2
0050db94  00 00 84 e5                                      str r0, [r4]
0050db98  08 20 84 e5                                      str r2, [r4, #8]
0050db9c  03 00 00 0a                                      beq #0x50dbb0
0050dba0  05 10 a0 e1                                      mov r1, r5
0050dba4  06 20 a0 e1                                      mov r2, r6
0050dba8  2e 03 f8 eb                                      bl #0x30e868
0050dbac  06 30 80 e0                                      add r3, r0, r6
0050dbb0  04 30 84 e5                                      str r3, [r4, #4]
0050dbb4  0c d0 8d e2                                      add sp, sp, #0xc
0050dbb8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
