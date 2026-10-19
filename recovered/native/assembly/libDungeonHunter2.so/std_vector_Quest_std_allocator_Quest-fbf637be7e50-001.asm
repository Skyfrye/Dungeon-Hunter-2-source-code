; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046b368, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<Quest*, std::allocator<Quest*> >
; alias: _ZNSt6vectorIP5QuestSaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<Quest*, std::allocator<Quest*> >::_M_fill_insert_aux(Quest**, unsigned int, Quest* const&, std::__false_type const&)
; decoder-mode: arm
0046b368  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0046b36c  00 c0 90 e5                                      ldr ip, [r0]
0046b370  03 50 a0 e1                                      mov r5, r3
0046b374  14 d0 4d e2                                      sub sp, sp, #0x14
0046b378  0c 00 53 e1                                      cmp r3, ip
0046b37c  00 40 a0 e1                                      mov r4, r0
0046b380  01 60 a0 e1                                      mov r6, r1
0046b384  02 30 a0 e1                                      mov r3, r2
0046b388  04 70 90 35                                      ldrlo r7, [r0, #4]
0046b38c  0a 00 00 3a                                      blo #0x46b3bc
0046b390  04 70 90 e5                                      ldr r7, [r0, #4]
0046b394  07 00 55 e1                                      cmp r5, r7
0046b398  07 00 00 2a                                      bhs #0x46b3bc
0046b39c  00 c0 95 e5                                      ldr ip, [r5]
0046b3a0  10 30 8d e2                                      add r3, sp, #0x10
0046b3a4  08 c0 23 e5                                      str ip, [r3, #-8]!
0046b3a8  0c c0 8d e2                                      add ip, sp, #0xc
0046b3ac  00 c0 8d e5                                      str ip, [sp]
0046b3b0  ec ff ff eb                                      bl #0x46b368
0046b3b4  14 d0 8d e2                                      add sp, sp, #0x14
0046b3b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0046b3bc  07 20 66 e0                                      rsb r2, r6, r7
0046b3c0  42 81 a0 e1                                      asr r8, r2, #2
0046b3c4  08 00 53 e1                                      cmp r3, r8
0046b3c8  1c 00 00 2a                                      bhs #0x46b440
0046b3cc  03 81 a0 e1                                      lsl r8, r3, #2
0046b3d0  07 30 68 e0                                      rsb r3, r8, r7
0046b3d4  07 00 53 e1                                      cmp r3, r7
0046b3d8  07 a0 a0 01                                      moveq sl, r7
0046b3dc  05 00 00 0a                                      beq #0x46b3f8
0046b3e0  03 10 a0 e1                                      mov r1, r3
0046b3e4  07 20 63 e0                                      rsb r2, r3, r7
0046b3e8  07 00 a0 e1                                      mov r0, r7
0046b3ec  03 a0 a0 e1                                      mov sl, r3
0046b3f0  1c 8d fa eb                                      bl #0x30e868
0046b3f4  04 30 94 e5                                      ldr r3, [r4, #4]
0046b3f8  0a 20 66 e0                                      rsb r2, r6, sl
0046b3fc  08 30 83 e0                                      add r3, r3, r8
0046b400  00 00 52 e3                                      cmp r2, #0
0046b404  04 30 84 e5                                      str r3, [r4, #4]
0046b408  02 00 00 da                                      ble #0x46b418
0046b40c  07 00 62 e0                                      rsb r0, r2, r7
0046b410  06 10 a0 e1                                      mov r1, r6
0046b414  c7 8a fa eb                                      bl #0x30df38
0046b418  48 81 a0 e1                                      asr r8, r8, #2
0046b41c  00 00 58 e3                                      cmp r8, #0
0046b420  e3 ff ff da                                      ble #0x46b3b4
0046b424  00 20 a0 e3                                      mov r2, #0
0046b428  00 10 95 e5                                      ldr r1, [r5]
0046b42c  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0046b430  01 20 82 e2                                      add r2, r2, #1
0046b434  08 00 52 e1                                      cmp r2, r8
0046b438  fa ff ff 1a                                      bne #0x46b428
0046b43c  dc ff ff ea                                      b #0x46b3b4
0046b440  03 30 68 e0                                      rsb r3, r8, r3
0046b444  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0046b448  00 00 5a e3                                      cmp sl, #0
0046b44c  03 01 87 e0                                      add r0, r7, r3, lsl #2
0046b450  05 00 00 da                                      ble #0x46b46c
0046b454  00 10 a0 e3                                      mov r1, #0
0046b458  00 c0 95 e5                                      ldr ip, [r5]
0046b45c  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0046b460  01 10 81 e2                                      add r1, r1, #1
0046b464  0a 00 51 e1                                      cmp r1, sl
0046b468  fa ff ff 1a                                      bne #0x46b458
0046b46c  07 00 56 e1                                      cmp r6, r7
0046b470  04 00 84 e5                                      str r0, [r4, #4]
0046b474  02 00 00 0a                                      beq #0x46b484
0046b478  06 10 a0 e1                                      mov r1, r6
0046b47c  f9 8c fa eb                                      bl #0x30e868
0046b480  04 00 94 e5                                      ldr r0, [r4, #4]
0046b484  08 01 80 e0                                      add r0, r0, r8, lsl #2
0046b488  00 00 58 e3                                      cmp r8, #0
0046b48c  04 00 84 e5                                      str r0, [r4, #4]
0046b490  c7 ff ff da                                      ble #0x46b3b4
0046b494  00 30 a0 e3                                      mov r3, #0
0046b498  00 20 95 e5                                      ldr r2, [r5]
0046b49c  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0046b4a0  01 30 83 e2                                      add r3, r3, #1
0046b4a4  03 00 58 e1                                      cmp r8, r3
0046b4a8  fa ff ff 1a                                      bne #0x46b498
0046b4ac  c0 ff ff ea                                      b #0x46b3b4

; FUNCTION 0x0046b4b0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<Quest*, std::allocator<Quest*> >
; alias: _ZNSt6vectorIP5QuestSaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<Quest*, std::allocator<Quest*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0046b4b0  70 40 2d e9                                      push {r4, r5, r6, lr}
0046b4b4  14 00 90 e8                                      ldm r0, {r2, r4}
0046b4b8  ff 3f 0f e3                                      movw r3, #0xffff
0046b4bc  ff 3f 43 e3                                      movt r3, #0x3fff
0046b4c0  04 40 62 e0                                      rsb r4, r2, r4
0046b4c4  44 41 a0 e1                                      asr r4, r4, #2
0046b4c8  03 30 64 e0                                      rsb r3, r4, r3
0046b4cc  01 00 53 e1                                      cmp r3, r1
0046b4d0  01 50 a0 e1                                      mov r5, r1
0046b4d4  08 00 00 3a                                      blo #0x46b4fc
0046b4d8  05 00 54 e1                                      cmp r4, r5
0046b4dc  04 00 84 20                                      addhs r0, r4, r4
0046b4e0  05 00 84 30                                      addlo r0, r4, r5
0046b4e4  07 01 70 e3                                      cmn r0, #0xc0000001
0046b4e8  01 00 00 8a                                      bhi #0x46b4f4
0046b4ec  04 00 50 e1                                      cmp r0, r4
0046b4f0  00 00 00 2a                                      bhs #0x46b4f8
0046b4f4  03 01 e0 e3                                      mvn r0, #0xc0000000
0046b4f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0046b4fc  08 00 9f e5                                      ldr r0, [pc, #8]
0046b500  00 00 8f e0                                      add r0, pc, r0
0046b504  4d 76 0a eb                                      bl #0x708e40
0046b508  f2 ff ff ea                                      b #0x46b4d8
; mapping-symbol data/literal pool
0046b50c  68 2f 45 00                                      .byte 0x68, 0x2f, 0x45, 0x00

; FUNCTION 0x0046c048, declared_size=284, range_size=284, mode=arm
; class-group: std::vector<Quest*, std::allocator<Quest*> >
; alias: _ZNSt6vectorIP5QuestSaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<Quest*, std::allocator<Quest*> >::_M_fill_insert(Quest**, unsigned int, Quest* const&)
; decoder-mode: arm
0046c048  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0046c04c  00 60 52 e2                                      subs r6, r2, #0
0046c050  14 d0 4d e2                                      sub sp, sp, #0x14
0046c054  00 40 a0 e1                                      mov r4, r0
0046c058  01 70 a0 e1                                      mov r7, r1
0046c05c  03 50 a0 e1                                      mov r5, r3
0046c060  28 00 00 0a                                      beq #0x46c108
0046c064  00 50 90 e9                                      ldmib r0, {ip, lr}
0046c068  0e c0 6c e0                                      rsb ip, ip, lr
0046c06c  4c 01 56 e1                                      cmp r6, ip, asr #2
0046c070  26 00 00 9a                                      bls #0x46c110
0046c074  06 10 a0 e1                                      mov r1, r6
0046c078  0c fd ff eb                                      bl #0x46b4b0
0046c07c  10 20 8d e2                                      add r2, sp, #0x10
0046c080  00 10 a0 e1                                      mov r1, r0
0046c084  08 00 22 e5                                      str r0, [r2, #-8]!
0046c088  08 00 84 e2                                      add r0, r4, #8
0046c08c  c9 48 ff eb                                      bl #0x43e3b8
0046c090  00 10 94 e5                                      ldr r1, [r4]
0046c094  00 80 a0 e1                                      mov r8, r0
0046c098  01 a0 57 e0                                      subs sl, r7, r1
0046c09c  00 00 a0 01                                      moveq r0, r0
0046c0a0  2b 00 00 1a                                      bne #0x46c154
0046c0a4  06 20 a0 e1                                      mov r2, r6
0046c0a8  00 30 a0 e3                                      mov r3, #0
0046c0ac  00 10 95 e5                                      ldr r1, [r5]
0046c0b0  01 20 52 e2                                      subs r2, r2, #1
0046c0b4  03 10 80 e7                                      str r1, [r0, r3]
0046c0b8  04 30 83 e2                                      add r3, r3, #4
0046c0bc  fa ff ff 1a                                      bne #0x46c0ac
0046c0c0  04 30 94 e5                                      ldr r3, [r4, #4]
0046c0c4  06 61 80 e0                                      add r6, r0, r6, lsl #2
0046c0c8  07 50 53 e0                                      subs r5, r3, r7
0046c0cc  1a 00 00 1a                                      bne #0x46c13c
0046c0d0  00 00 94 e5                                      ldr r0, [r4]
0046c0d4  08 10 94 e5                                      ldr r1, [r4, #8]
0046c0d8  00 00 50 e3                                      cmp r0, #0
0046c0dc  04 00 00 0a                                      beq #0x46c0f4
0046c0e0  01 10 60 e0                                      rsb r1, r0, r1
0046c0e4  03 10 c1 e3                                      bic r1, r1, #3
0046c0e8  80 00 51 e3                                      cmp r1, #0x80
0046c0ec  0b 00 00 8a                                      bhi #0x46c120
0046c0f0  82 73 0a eb                                      bl #0x708f00
0046c0f4  08 30 9d e5                                      ldr r3, [sp, #8]
0046c0f8  00 80 84 e5                                      str r8, [r4]
0046c0fc  04 60 84 e5                                      str r6, [r4, #4]
0046c100  03 81 88 e0                                      add r8, r8, r3, lsl #2
0046c104  08 80 84 e5                                      str r8, [r4, #8]
0046c108  14 d0 8d e2                                      add sp, sp, #0x14
0046c10c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0046c110  0c c0 8d e2                                      add ip, sp, #0xc
0046c114  00 c0 8d e5                                      str ip, [sp]
0046c118  92 fc ff eb                                      bl #0x46b368
0046c11c  f9 ff ff ea                                      b #0x46c108
0046c120  c6 90 fa eb                                      bl #0x310440
0046c124  08 30 9d e5                                      ldr r3, [sp, #8]
0046c128  00 80 84 e5                                      str r8, [r4]
0046c12c  04 60 84 e5                                      str r6, [r4, #4]
0046c130  03 81 88 e0                                      add r8, r8, r3, lsl #2
0046c134  08 80 84 e5                                      str r8, [r4, #8]
0046c138  f2 ff ff ea                                      b #0x46c108
0046c13c  06 00 a0 e1                                      mov r0, r6
0046c140  07 10 a0 e1                                      mov r1, r7
0046c144  05 20 a0 e1                                      mov r2, r5
0046c148  7a 87 fa eb                                      bl #0x30df38
0046c14c  05 60 80 e0                                      add r6, r0, r5
0046c150  de ff ff ea                                      b #0x46c0d0
0046c154  0a 20 a0 e1                                      mov r2, sl
0046c158  76 87 fa eb                                      bl #0x30df38
0046c15c  0a 00 80 e0                                      add r0, r0, sl
0046c160  cf ff ff ea                                      b #0x46c0a4

; FUNCTION 0x0046c164, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<Quest*, std::allocator<Quest*> >
; alias: _ZNSt6vectorIP5QuestSaIS1_EE6resizeEjRKS1_
; demangled: std::vector<Quest*, std::allocator<Quest*> >::resize(unsigned int, Quest* const&)
; decoder-mode: arm
0046c164  30 00 2d e9                                      push {r4, r5}
0046c168  04 40 90 e5                                      ldr r4, [r0, #4]
0046c16c  00 50 90 e5                                      ldr r5, [r0]
0046c170  02 30 a0 e1                                      mov r3, r2
0046c174  04 20 65 e0                                      rsb r2, r5, r4
0046c178  42 21 a0 e1                                      asr r2, r2, #2
0046c17c  02 00 51 e1                                      cmp r1, r2
0046c180  04 00 00 2a                                      bhs #0x46c198
0046c184  01 51 85 e0                                      add r5, r5, r1, lsl #2
0046c188  04 00 55 e1                                      cmp r5, r4
0046c18c  04 50 80 15                                      strne r5, [r0, #4]
0046c190  30 00 bd e8                                      pop {r4, r5}
0046c194  1e ff 2f e1                                      bx lr
0046c198  01 20 62 e0                                      rsb r2, r2, r1
0046c19c  04 10 a0 e1                                      mov r1, r4
0046c1a0  30 00 bd e8                                      pop {r4, r5}
0046c1a4  a7 ff ff ea                                      b #0x46c048
