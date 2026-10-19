; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c8fc, declared_size=212, range_size=212, mode=arm
; class-group: std::vector<std::pair<PFFloor::InvalidNode*, PFGInnerNode*>, std::allocator<std::pair<PFFloor::InvalidNode*, PFGInnerNode*> > >
; alias: _ZNSt6vectorISt4pairIPN7PFFloor11InvalidNodeEP12PFGInnerNodeESaIS6_EE18_M_insert_overflowEPS6_RKS6_RKSt11__true_typejb.clone.3
; demangled: std::vector<std::pair<PFFloor::InvalidNode*, PFGInnerNode*>, std::allocator<std::pair<PFFloor::InvalidNode*, PFGInnerNode*> > >::_M_insert_overflow(std::pair<PFFloor::InvalidNode*, PFGInnerNode*>*, std::pair<PFFloor::InvalidNode*, PFGInnerNode*> const&, std::__true_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
0051c8fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051c900  00 40 a0 e1                                      mov r4, r0
0051c904  00 30 94 e5                                      ldr r3, [r4]
0051c908  04 00 90 e5                                      ldr r0, [r0, #4]
0051c90c  01 70 a0 e1                                      mov r7, r1
0051c910  08 d0 4d e2                                      sub sp, sp, #8
0051c914  00 30 63 e0                                      rsb r3, r3, r0
0051c918  c3 31 a0 e1                                      asr r3, r3, #3
0051c91c  01 00 53 e3                                      cmp r3, #1
0051c920  03 10 83 20                                      addhs r1, r3, r3
0051c924  01 10 83 32                                      addlo r1, r3, #1
0051c928  1e 02 71 e3                                      cmn r1, #0xe0000001
0051c92c  02 60 a0 e1                                      mov r6, r2
0051c930  1e 00 00 8a                                      bhi #0x51c9b0
0051c934  01 00 53 e1                                      cmp r3, r1
0051c938  1c 00 00 8a                                      bhi #0x51c9b0
0051c93c  08 20 8d e2                                      add r2, sp, #8
0051c940  04 10 22 e5                                      str r1, [r2, #-4]!
0051c944  08 00 84 e2                                      add r0, r4, #8
0051c948  81 ff ff eb                                      bl #0x51c754
0051c94c  00 10 94 e5                                      ldr r1, [r4]
0051c950  00 50 a0 e1                                      mov r5, r0
0051c954  01 70 57 e0                                      subs r7, r7, r1
0051c958  00 70 a0 01                                      moveq r7, r0
0051c95c  17 00 00 1a                                      bne #0x51c9c0
0051c960  00 30 96 e5                                      ldr r3, [r6]
0051c964  08 80 87 e2                                      add r8, r7, #8
0051c968  00 30 87 e5                                      str r3, [r7]
0051c96c  04 30 96 e5                                      ldr r3, [r6, #4]
0051c970  04 30 87 e5                                      str r3, [r7, #4]
0051c974  00 00 94 e5                                      ldr r0, [r4]
0051c978  08 10 94 e5                                      ldr r1, [r4, #8]
0051c97c  00 00 50 e3                                      cmp r0, #0
0051c980  04 00 00 0a                                      beq #0x51c998
0051c984  01 10 60 e0                                      rsb r1, r0, r1
0051c988  07 10 c1 e3                                      bic r1, r1, #7
0051c98c  80 00 51 e3                                      cmp r1, #0x80
0051c990  08 00 00 8a                                      bhi #0x51c9b8
0051c994  59 b1 07 eb                                      bl #0x708f00
0051c998  04 30 9d e5                                      ldr r3, [sp, #4]
0051c99c  20 01 84 e8                                      stm r4, {r5, r8}
0051c9a0  83 51 85 e0                                      add r5, r5, r3, lsl #3
0051c9a4  08 50 84 e5                                      str r5, [r4, #8]
0051c9a8  08 d0 8d e2                                      add sp, sp, #8
0051c9ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051c9b0  0e 12 e0 e3                                      mvn r1, #0xe0000000
0051c9b4  e0 ff ff ea                                      b #0x51c93c
0051c9b8  a0 ce f7 eb                                      bl #0x310440
0051c9bc  f5 ff ff ea                                      b #0x51c998
0051c9c0  07 20 a0 e1                                      mov r2, r7
0051c9c4  5b c5 f7 eb                                      bl #0x30df38
0051c9c8  07 70 80 e0                                      add r7, r0, r7
0051c9cc  e3 ff ff ea                                      b #0x51c960
