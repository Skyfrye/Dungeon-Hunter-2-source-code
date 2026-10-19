; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050f158, declared_size=124, range_size=124, mode=arm
; class-group: PolyStat* std::priv
; alias: _ZNSt4priv6__copyIP8PolyStatS2_iEET0_T_S4_S3_RKSt26random_access_iterator_tagPT1_
; demangled: PolyStat* std::priv::__copy<PolyStat*, PolyStat*, int>(PolyStat*, PolyStat*, PolyStat*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0050f158  01 30 60 e0                                      rsb r3, r0, r1
0050f15c  43 31 a0 e1                                      asr r3, r3, #2
0050f160  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0050f164  83 81 83 e0                                      add r8, r3, r3, lsl #3
0050f168  00 40 a0 e1                                      mov r4, r0
0050f16c  08 83 88 e0                                      add r8, r8, r8, lsl #6
0050f170  02 70 a0 e1                                      mov r7, r2
0050f174  88 81 83 e0                                      add r8, r3, r8, lsl #3
0050f178  88 87 88 e0                                      add r8, r8, r8, lsl #15
0050f17c  88 81 83 e0                                      add r8, r3, r8, lsl #3
0050f180  00 80 68 e2                                      rsb r8, r8, #0
0050f184  00 00 58 e3                                      cmp r8, #0
0050f188  0f 00 00 da                                      ble #0x50f1cc
0050f18c  02 50 a0 e1                                      mov r5, r2
0050f190  08 60 a0 e1                                      mov r6, r8
0050f194  04 00 55 e1                                      cmp r5, r4
0050f198  05 00 a0 e1                                      mov r0, r5
0050f19c  02 00 00 0a                                      beq #0x50f1ac
0050f1a0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0050f1a4  10 20 94 e5                                      ldr r2, [r4, #0x10]
0050f1a8  0c 06 f8 eb                                      bl #0x3109e0
0050f1ac  18 30 94 e5                                      ldr r3, [r4, #0x18]
0050f1b0  01 60 56 e2                                      subs r6, r6, #1
0050f1b4  1c 40 84 e2                                      add r4, r4, #0x1c
0050f1b8  18 30 85 e5                                      str r3, [r5, #0x18]
0050f1bc  1c 50 85 e2                                      add r5, r5, #0x1c
0050f1c0  f3 ff ff 1a                                      bne #0x50f194
0050f1c4  1c 30 a0 e3                                      mov r3, #0x1c
0050f1c8  93 78 27 e0                                      mla r7, r3, r8, r7
0050f1cc  07 00 a0 e1                                      mov r0, r7
0050f1d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0051041c, declared_size=128, range_size=128, mode=arm
; class-group: PolyStat* std::priv
; alias: _ZNSt4priv7__ucopyIP8PolyStatS2_iEET0_T_S4_S3_RKSt26random_access_iterator_tagPT1_
; demangled: PolyStat* std::priv::__ucopy<PolyStat*, PolyStat*, int>(PolyStat*, PolyStat*, PolyStat*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0051041c  01 30 60 e0                                      rsb r3, r0, r1
00510420  43 31 a0 e1                                      asr r3, r3, #2
00510424  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00510428  83 71 83 e0                                      add r7, r3, r3, lsl #3
0051042c  00 50 a0 e1                                      mov r5, r0
00510430  07 73 87 e0                                      add r7, r7, r7, lsl #6
00510434  02 80 a0 e1                                      mov r8, r2
00510438  87 71 83 e0                                      add r7, r3, r7, lsl #3
0051043c  87 77 87 e0                                      add r7, r7, r7, lsl #15
00510440  87 71 83 e0                                      add r7, r3, r7, lsl #3
00510444  00 70 67 e2                                      rsb r7, r7, #0
00510448  00 00 57 e3                                      cmp r7, #0
0051044c  07 60 a0 c1                                      movgt r6, r7
00510450  02 40 a0 c1                                      movgt r4, r2
00510454  0e 00 00 da                                      ble #0x510494
00510458  10 40 84 e5                                      str r4, [r4, #0x10]
0051045c  14 40 84 e5                                      str r4, [r4, #0x14]
00510460  04 00 a0 e1                                      mov r0, r4
00510464  14 10 95 e5                                      ldr r1, [r5, #0x14]
00510468  10 20 95 e5                                      ldr r2, [r5, #0x10]
0051046c  9d 04 f8 eb                                      bl #0x3116e8
00510470  18 30 95 e5                                      ldr r3, [r5, #0x18]
00510474  01 60 56 e2                                      subs r6, r6, #1
00510478  1c 50 85 e2                                      add r5, r5, #0x1c
0051047c  18 30 84 e5                                      str r3, [r4, #0x18]
00510480  1c 40 84 e2                                      add r4, r4, #0x1c
00510484  f3 ff ff 1a                                      bne #0x510458
00510488  1c 00 a0 e3                                      mov r0, #0x1c
0051048c  90 87 20 e0                                      mla r0, r0, r7, r8
00510490  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00510494  02 00 a0 e1                                      mov r0, r2
00510498  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
