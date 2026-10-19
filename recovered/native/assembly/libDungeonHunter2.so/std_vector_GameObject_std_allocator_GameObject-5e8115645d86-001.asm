; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038e680, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<GameObject*, std::allocator<GameObject*> >
; alias: _ZNSt6vectorIP10GameObjectSaIS1_EEC1ERKS3_
; demangled: std::vector<GameObject*, std::allocator<GameObject*> >::vector(std::vector<GameObject*, std::allocator<GameObject*> > const&)
; decoder-mode: arm
0038e680  30 40 2d e9                                      push {r4, r5, lr}
0038e684  01 50 a0 e1                                      mov r5, r1
0038e688  00 30 95 e5                                      ldr r3, [r5]
0038e68c  04 10 91 e5                                      ldr r1, [r1, #4]
0038e690  0c d0 4d e2                                      sub sp, sp, #0xc
0038e694  00 40 a0 e1                                      mov r4, r0
0038e698  01 10 63 e0                                      rsb r1, r3, r1
0038e69c  00 c0 a0 e3                                      mov ip, #0
0038e6a0  41 11 a0 e1                                      asr r1, r1, #2
0038e6a4  08 20 8d e2                                      add r2, sp, #8
0038e6a8  04 10 22 e5                                      str r1, [r2, #-4]!
0038e6ac  00 c0 84 e5                                      str ip, [r4]
0038e6b0  04 c0 84 e5                                      str ip, [r4, #4]
0038e6b4  08 c0 a0 e5                                      str ip, [r0, #8]!
0038e6b8  d4 ff ff eb                                      bl #0x38e610
0038e6bc  04 20 9d e5                                      ldr r2, [sp, #4]
0038e6c0  00 00 84 e5                                      str r0, [r4]
0038e6c4  04 00 84 e5                                      str r0, [r4, #4]
0038e6c8  02 21 80 e0                                      add r2, r0, r2, lsl #2
0038e6cc  08 20 84 e5                                      str r2, [r4, #8]
0038e6d0  06 00 95 e8                                      ldm r5, {r1, r2}
0038e6d4  00 30 a0 e1                                      mov r3, r0
0038e6d8  02 00 51 e1                                      cmp r1, r2
0038e6dc  03 00 00 0a                                      beq #0x38e6f0
0038e6e0  02 50 61 e0                                      rsb r5, r1, r2
0038e6e4  05 20 a0 e1                                      mov r2, r5
0038e6e8  5e 00 fe eb                                      bl #0x30e868
0038e6ec  05 30 80 e0                                      add r3, r0, r5
0038e6f0  04 30 84 e5                                      str r3, [r4, #4]
0038e6f4  04 00 a0 e1                                      mov r0, r4
0038e6f8  0c d0 8d e2                                      add sp, sp, #0xc
0038e6fc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003f1980, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<GameObject*, std::allocator<GameObject*> >
; alias: _ZNSt6vectorIP10GameObjectSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.17
; demangled: std::vector<GameObject*, std::allocator<GameObject*> >::_M_insert_overflow(GameObject**, GameObject* const&, std::__true_type const&, unsigned int, bool) [clone .clone.17]
; decoder-mode: arm
003f1980  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003f1984  00 40 a0 e1                                      mov r4, r0
003f1988  00 30 94 e5                                      ldr r3, [r4]
003f198c  04 00 90 e5                                      ldr r0, [r0, #4]
003f1990  01 60 a0 e1                                      mov r6, r1
003f1994  0c d0 4d e2                                      sub sp, sp, #0xc
003f1998  00 30 63 e0                                      rsb r3, r3, r0
003f199c  43 31 a0 e1                                      asr r3, r3, #2
003f19a0  01 00 53 e3                                      cmp r3, #1
003f19a4  03 10 83 20                                      addhs r1, r3, r3
003f19a8  01 10 83 32                                      addlo r1, r3, #1
003f19ac  07 01 71 e3                                      cmn r1, #0xc0000001
003f19b0  02 70 a0 e1                                      mov r7, r2
003f19b4  1b 00 00 8a                                      bhi #0x3f1a28
003f19b8  01 00 53 e1                                      cmp r3, r1
003f19bc  19 00 00 8a                                      bhi #0x3f1a28
003f19c0  08 20 8d e2                                      add r2, sp, #8
003f19c4  04 10 22 e5                                      str r1, [r2, #-4]!
003f19c8  08 00 84 e2                                      add r0, r4, #8
003f19cc  0f 73 fe eb                                      bl #0x38e610
003f19d0  00 10 94 e5                                      ldr r1, [r4]
003f19d4  00 50 a0 e1                                      mov r5, r0
003f19d8  01 60 56 e0                                      subs r6, r6, r1
003f19dc  00 60 a0 01                                      moveq r6, r0
003f19e0  14 00 00 1a                                      bne #0x3f1a38
003f19e4  00 30 97 e5                                      ldr r3, [r7]
003f19e8  04 30 86 e4                                      str r3, [r6], #4
003f19ec  00 00 94 e5                                      ldr r0, [r4]
003f19f0  08 10 94 e5                                      ldr r1, [r4, #8]
003f19f4  00 00 50 e3                                      cmp r0, #0
003f19f8  04 00 00 0a                                      beq #0x3f1a10
003f19fc  01 10 60 e0                                      rsb r1, r0, r1
003f1a00  03 10 c1 e3                                      bic r1, r1, #3
003f1a04  80 00 51 e3                                      cmp r1, #0x80
003f1a08  08 00 00 8a                                      bhi #0x3f1a30
003f1a0c  3b 5d 0c eb                                      bl #0x708f00
003f1a10  04 30 9d e5                                      ldr r3, [sp, #4]
003f1a14  60 00 84 e8                                      stm r4, {r5, r6}
003f1a18  03 51 85 e0                                      add r5, r5, r3, lsl #2
003f1a1c  08 50 84 e5                                      str r5, [r4, #8]
003f1a20  0c d0 8d e2                                      add sp, sp, #0xc
003f1a24  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003f1a28  03 11 e0 e3                                      mvn r1, #0xc0000000
003f1a2c  e3 ff ff ea                                      b #0x3f19c0
003f1a30  82 7a fc eb                                      bl #0x310440
003f1a34  f5 ff ff ea                                      b #0x3f1a10
003f1a38  06 20 a0 e1                                      mov r2, r6
003f1a3c  3d 71 fc eb                                      bl #0x30df38
003f1a40  06 60 80 e0                                      add r6, r0, r6
003f1a44  e6 ff ff ea                                      b #0x3f19e4

; FUNCTION 0x004a2024, declared_size=204, range_size=204, mode=arm
; class-group: std::vector<GameObject*, std::allocator<GameObject*> >
; alias: _ZNSt6vectorIP10GameObjectSaIS1_EE7reserveEj
; demangled: std::vector<GameObject*, std::allocator<GameObject*> >::reserve(unsigned int)
; decoder-mode: arm
004a2024  70 40 2d e9                                      push {r4, r5, r6, lr}
004a2028  00 40 a0 e1                                      mov r4, r0
004a202c  00 20 90 e5                                      ldr r2, [r0]
004a2030  08 00 90 e5                                      ldr r0, [r0, #8]
004a2034  08 d0 4d e2                                      sub sp, sp, #8
004a2038  04 10 8d e5                                      str r1, [sp, #4]
004a203c  00 00 62 e0                                      rsb r0, r2, r0
004a2040  40 01 51 e1                                      cmp r1, r0, asr #2
004a2044  19 00 00 9a                                      bls #0x4a20b0
004a2048  07 01 71 e3                                      cmn r1, #0xc0000001
004a204c  19 00 00 8a                                      bhi #0x4a20b8
004a2050  04 30 94 e5                                      ldr r3, [r4, #4]
004a2054  00 00 52 e3                                      cmp r2, #0
004a2058  03 50 62 e0                                      rsb r5, r2, r3
004a205c  45 51 a0 e1                                      asr r5, r5, #2
004a2060  1b 00 00 0a                                      beq #0x4a20d4
004a2064  04 10 8d e2                                      add r1, sp, #4
004a2068  04 00 a0 e1                                      mov r0, r4
004a206c  dd ff ff eb                                      bl #0x4a1fe8
004a2070  00 60 a0 e1                                      mov r6, r0
004a2074  00 00 94 e5                                      ldr r0, [r4]
004a2078  08 10 94 e5                                      ldr r1, [r4, #8]
004a207c  00 00 50 e3                                      cmp r0, #0
004a2080  04 00 00 0a                                      beq #0x4a2098
004a2084  01 10 60 e0                                      rsb r1, r0, r1
004a2088  03 10 c1 e3                                      bic r1, r1, #3
004a208c  80 00 51 e3                                      cmp r1, #0x80
004a2090  0d 00 00 8a                                      bhi #0x4a20cc
004a2094  99 9b 09 eb                                      bl #0x708f00
004a2098  04 30 9d e5                                      ldr r3, [sp, #4]
004a209c  05 51 86 e0                                      add r5, r6, r5, lsl #2
004a20a0  04 50 84 e5                                      str r5, [r4, #4]
004a20a4  03 31 86 e0                                      add r3, r6, r3, lsl #2
004a20a8  08 30 84 e5                                      str r3, [r4, #8]
004a20ac  00 60 84 e5                                      str r6, [r4]
004a20b0  08 d0 8d e2                                      add sp, sp, #8
004a20b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004a20b8  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
004a20bc  00 00 8f e0                                      add r0, pc, r0
004a20c0  5e 9b 09 eb                                      bl #0x708e40
004a20c4  00 20 94 e5                                      ldr r2, [r4]
004a20c8  e0 ff ff ea                                      b #0x4a2050
004a20cc  db b8 f9 eb                                      bl #0x310440
004a20d0  f0 ff ff ea                                      b #0x4a2098
004a20d4  08 20 8d e2                                      add r2, sp, #8
004a20d8  04 10 32 e5                                      ldr r1, [r2, #-4]!
004a20dc  08 00 84 e2                                      add r0, r4, #8
004a20e0  4a b1 fb eb                                      bl #0x38e610
004a20e4  00 60 a0 e1                                      mov r6, r0
004a20e8  ea ff ff ea                                      b #0x4a2098
; mapping-symbol data/literal pool
004a20ec  ac c3 41 00                                      .byte 0xac, 0xc3, 0x41, 0x00
