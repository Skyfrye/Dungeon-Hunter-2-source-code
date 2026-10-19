; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c834, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<PFGInnerEdge*, std::allocator<PFGInnerEdge*> >
; alias: _ZNSt6vectorIP12PFGInnerEdgeSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.2
; demangled: std::vector<PFGInnerEdge*, std::allocator<PFGInnerEdge*> >::_M_insert_overflow(PFGInnerEdge**, PFGInnerEdge* const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
0051c834  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0051c838  00 40 a0 e1                                      mov r4, r0
0051c83c  00 30 94 e5                                      ldr r3, [r4]
0051c840  04 00 90 e5                                      ldr r0, [r0, #4]
0051c844  01 60 a0 e1                                      mov r6, r1
0051c848  0c d0 4d e2                                      sub sp, sp, #0xc
0051c84c  00 30 63 e0                                      rsb r3, r3, r0
0051c850  43 31 a0 e1                                      asr r3, r3, #2
0051c854  01 00 53 e3                                      cmp r3, #1
0051c858  03 10 83 20                                      addhs r1, r3, r3
0051c85c  01 10 83 32                                      addlo r1, r3, #1
0051c860  07 01 71 e3                                      cmn r1, #0xc0000001
0051c864  02 70 a0 e1                                      mov r7, r2
0051c868  1b 00 00 8a                                      bhi #0x51c8dc
0051c86c  01 00 53 e1                                      cmp r3, r1
0051c870  19 00 00 8a                                      bhi #0x51c8dc
0051c874  08 20 8d e2                                      add r2, sp, #8
0051c878  04 10 22 e5                                      str r1, [r2, #-4]!
0051c87c  08 00 84 e2                                      add r0, r4, #8
0051c880  cf ff ff eb                                      bl #0x51c7c4
0051c884  00 10 94 e5                                      ldr r1, [r4]
0051c888  00 50 a0 e1                                      mov r5, r0
0051c88c  01 60 56 e0                                      subs r6, r6, r1
0051c890  00 60 a0 01                                      moveq r6, r0
0051c894  14 00 00 1a                                      bne #0x51c8ec
0051c898  00 30 97 e5                                      ldr r3, [r7]
0051c89c  04 30 86 e4                                      str r3, [r6], #4
0051c8a0  00 00 94 e5                                      ldr r0, [r4]
0051c8a4  08 10 94 e5                                      ldr r1, [r4, #8]
0051c8a8  00 00 50 e3                                      cmp r0, #0
0051c8ac  04 00 00 0a                                      beq #0x51c8c4
0051c8b0  01 10 60 e0                                      rsb r1, r0, r1
0051c8b4  03 10 c1 e3                                      bic r1, r1, #3
0051c8b8  80 00 51 e3                                      cmp r1, #0x80
0051c8bc  08 00 00 8a                                      bhi #0x51c8e4
0051c8c0  8e b1 07 eb                                      bl #0x708f00
0051c8c4  04 30 9d e5                                      ldr r3, [sp, #4]
0051c8c8  60 00 84 e8                                      stm r4, {r5, r6}
0051c8cc  03 51 85 e0                                      add r5, r5, r3, lsl #2
0051c8d0  08 50 84 e5                                      str r5, [r4, #8]
0051c8d4  0c d0 8d e2                                      add sp, sp, #0xc
0051c8d8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0051c8dc  03 11 e0 e3                                      mvn r1, #0xc0000000
0051c8e0  e3 ff ff ea                                      b #0x51c874
0051c8e4  d5 ce f7 eb                                      bl #0x310440
0051c8e8  f5 ff ff ea                                      b #0x51c8c4
0051c8ec  06 20 a0 e1                                      mov r2, r6
0051c8f0  90 c5 f7 eb                                      bl #0x30df38
0051c8f4  06 60 80 e0                                      add r6, r0, r6
0051c8f8  e6 ff ff ea                                      b #0x51c898
