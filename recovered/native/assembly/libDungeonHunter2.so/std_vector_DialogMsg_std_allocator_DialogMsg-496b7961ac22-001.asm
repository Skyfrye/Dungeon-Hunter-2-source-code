; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004339b8, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt6vectorI9DialogMsgSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<DialogMsg, std::allocator<DialogMsg> >::_M_clear_after_move()
; decoder-mode: arm
004339b8  70 40 2d e9                                      push {r4, r5, r6, lr}
004339bc  04 40 90 e5                                      ldr r4, [r0, #4]
004339c0  00 50 90 e5                                      ldr r5, [r0]
004339c4  00 60 a0 e1                                      mov r6, r0
004339c8  05 00 54 e1                                      cmp r4, r5
004339cc  05 00 00 0a                                      beq #0x4339e8
004339d0  4c 40 44 e2                                      sub r4, r4, #0x4c
004339d4  04 00 a0 e1                                      mov r0, r4
004339d8  34 b1 fb eb                                      bl #0x31feb0
004339dc  04 00 55 e1                                      cmp r5, r4
004339e0  fa ff ff 1a                                      bne #0x4339d0
004339e4  00 40 96 e5                                      ldr r4, [r6]
004339e8  00 00 54 e3                                      cmp r4, #0
004339ec  08 10 96 e5                                      ldr r1, [r6, #8]
004339f0  11 00 00 0a                                      beq #0x433a3c
004339f4  01 10 64 e0                                      rsb r1, r4, r1
004339f8  41 11 a0 e1                                      asr r1, r1, #2
004339fc  81 10 81 e0                                      add r1, r1, r1, lsl #1
00433a00  81 11 81 e0                                      add r1, r1, r1, lsl #3
00433a04  81 34 a0 e1                                      lsl r3, r1, #9
00433a08  03 10 61 e0                                      rsb r1, r1, r3
00433a0c  01 19 81 e0                                      add r1, r1, r1, lsl #18
00433a10  00 10 61 e2                                      rsb r1, r1, #0
00433a14  4c 30 a0 e3                                      mov r3, #0x4c
00433a18  93 01 01 e0                                      mul r1, r3, r1
00433a1c  80 00 51 e3                                      cmp r1, #0x80
00433a20  02 00 00 8a                                      bhi #0x433a30
00433a24  04 00 a0 e1                                      mov r0, r4
00433a28  70 40 bd e8                                      pop {r4, r5, r6, lr}
00433a2c  33 55 0b ea                                      b #0x708f00
00433a30  04 00 a0 e1                                      mov r0, r4
00433a34  70 40 bd e8                                      pop {r4, r5, r6, lr}
00433a38  80 72 fb ea                                      b #0x310440
00433a3c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00433bd4, declared_size=300, range_size=300, mode=arm
; class-group: std::vector<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt6vectorI9DialogMsgSaIS0_EE9push_backERKS0_
; demangled: std::vector<DialogMsg, std::allocator<DialogMsg> >::push_back(DialogMsg const&)
; decoder-mode: arm
00433bd4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00433bd8  00 40 a0 e1                                      mov r4, r0
00433bdc  08 50 94 e5                                      ldr r5, [r4, #8]
00433be0  04 00 90 e5                                      ldr r0, [r0, #4]
00433be4  08 d0 4d e2                                      sub sp, sp, #8
00433be8  01 60 a0 e1                                      mov r6, r1
00433bec  05 00 50 e1                                      cmp r0, r5
00433bf0  05 00 00 0a                                      beq #0x433c0c
00433bf4  e8 ff ff eb                                      bl #0x433b9c
00433bf8  04 30 94 e5                                      ldr r3, [r4, #4]
00433bfc  4c 30 83 e2                                      add r3, r3, #0x4c
00433c00  04 30 84 e5                                      str r3, [r4, #4]
00433c04  08 d0 8d e2                                      add sp, sp, #8
00433c08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00433c0c  00 20 94 e5                                      ldr r2, [r4]
00433c10  d7 30 05 e3                                      movw r3, #0x50d7
00433c14  5e 33 40 e3                                      movt r3, #0x35e
00433c18  05 20 62 e0                                      rsb r2, r2, r5
00433c1c  42 21 a0 e1                                      asr r2, r2, #2
00433c20  82 20 82 e0                                      add r2, r2, r2, lsl #1
00433c24  82 21 82 e0                                      add r2, r2, r2, lsl #3
00433c28  82 14 a0 e1                                      lsl r1, r2, #9
00433c2c  01 20 62 e0                                      rsb r2, r2, r1
00433c30  02 29 82 e0                                      add r2, r2, r2, lsl #18
00433c34  00 20 62 e2                                      rsb r2, r2, #0
00433c38  01 00 52 e3                                      cmp r2, #1
00433c3c  02 10 82 20                                      addhs r1, r2, r2
00433c40  01 10 82 32                                      addlo r1, r2, #1
00433c44  03 00 51 e1                                      cmp r1, r3
00433c48  29 00 00 9a                                      bls #0x433cf4
00433c4c  d7 10 05 e3                                      movw r1, #0x50d7
00433c50  5e 13 40 e3                                      movt r1, #0x35e
00433c54  08 20 8d e2                                      add r2, sp, #8
00433c58  04 10 22 e5                                      str r1, [r2, #-4]!
00433c5c  08 00 84 e2                                      add r0, r4, #8
00433c60  76 ff ff eb                                      bl #0x433a40
00433c64  00 a0 94 e5                                      ldr sl, [r4]
00433c68  00 80 a0 e1                                      mov r8, r0
00433c6c  05 90 6a e0                                      rsb sb, sl, r5
00433c70  49 91 a0 e1                                      asr sb, sb, #2
00433c74  89 90 89 e0                                      add sb, sb, sb, lsl #1
00433c78  89 91 89 e0                                      add sb, sb, sb, lsl #3
00433c7c  89 34 a0 e1                                      lsl r3, sb, #9
00433c80  03 90 69 e0                                      rsb sb, sb, r3
00433c84  09 99 89 e0                                      add sb, sb, sb, lsl #18
00433c88  00 90 69 e2                                      rsb sb, sb, #0
00433c8c  00 00 59 e3                                      cmp sb, #0
00433c90  00 90 a0 d1                                      movle sb, r0
00433c94  09 00 00 da                                      ble #0x433cc0
00433c98  09 70 a0 e1                                      mov r7, sb
00433c9c  00 50 a0 e3                                      mov r5, #0
00433ca0  05 00 88 e0                                      add r0, r8, r5
00433ca4  05 10 8a e0                                      add r1, sl, r5
00433ca8  bb ff ff eb                                      bl #0x433b9c
00433cac  01 70 57 e2                                      subs r7, r7, #1
00433cb0  4c 50 85 e2                                      add r5, r5, #0x4c
00433cb4  f9 ff ff 1a                                      bne #0x433ca0
00433cb8  4c 30 a0 e3                                      mov r3, #0x4c
00433cbc  93 89 29 e0                                      mla sb, r3, sb, r8
00433cc0  06 10 a0 e1                                      mov r1, r6
00433cc4  09 00 a0 e1                                      mov r0, sb
00433cc8  b3 ff ff eb                                      bl #0x433b9c
00433ccc  04 00 a0 e1                                      mov r0, r4
00433cd0  38 ff ff eb                                      bl #0x4339b8
00433cd4  04 30 9d e5                                      ldr r3, [sp, #4]
00433cd8  4c 20 a0 e3                                      mov r2, #0x4c
00433cdc  4c 90 89 e2                                      add sb, sb, #0x4c
00433ce0  92 83 23 e0                                      mla r3, r2, r3, r8
00433ce4  00 80 84 e5                                      str r8, [r4]
00433ce8  08 30 84 e5                                      str r3, [r4, #8]
00433cec  04 90 84 e5                                      str sb, [r4, #4]
00433cf0  c3 ff ff ea                                      b #0x433c04
00433cf4  01 00 52 e1                                      cmp r2, r1
00433cf8  d5 ff ff 9a                                      bls #0x433c54
00433cfc  d2 ff ff ea                                      b #0x433c4c

; FUNCTION 0x0045c0e8, declared_size=132, range_size=132, mode=arm
; class-group: std::vector<DialogMsg, std::allocator<DialogMsg> >
; alias: _ZNSt6vectorI9DialogMsgSaIS0_EED1Ev
; demangled: std::vector<DialogMsg, std::allocator<DialogMsg> >::~vector()
; decoder-mode: arm
0045c0e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0045c0ec  04 50 90 e5                                      ldr r5, [r0, #4]
0045c0f0  00 60 90 e5                                      ldr r6, [r0]
0045c0f4  00 40 a0 e1                                      mov r4, r0
0045c0f8  06 00 55 e1                                      cmp r5, r6
0045c0fc  04 00 00 0a                                      beq #0x45c114
0045c100  4c 50 45 e2                                      sub r5, r5, #0x4c
0045c104  05 00 a0 e1                                      mov r0, r5
0045c108  68 0f fb eb                                      bl #0x31feb0
0045c10c  05 00 56 e1                                      cmp r6, r5
0045c110  fa ff ff 1a                                      bne #0x45c100
0045c114  00 00 94 e5                                      ldr r0, [r4]
0045c118  00 00 50 e3                                      cmp r0, #0
0045c11c  0d 00 00 0a                                      beq #0x45c158
0045c120  08 10 94 e5                                      ldr r1, [r4, #8]
0045c124  01 10 60 e0                                      rsb r1, r0, r1
0045c128  41 11 a0 e1                                      asr r1, r1, #2
0045c12c  81 10 81 e0                                      add r1, r1, r1, lsl #1
0045c130  81 11 81 e0                                      add r1, r1, r1, lsl #3
0045c134  81 34 a0 e1                                      lsl r3, r1, #9
0045c138  03 10 61 e0                                      rsb r1, r1, r3
0045c13c  01 19 81 e0                                      add r1, r1, r1, lsl #18
0045c140  00 10 61 e2                                      rsb r1, r1, #0
0045c144  4c 30 a0 e3                                      mov r3, #0x4c
0045c148  93 01 01 e0                                      mul r1, r3, r1
0045c14c  80 00 51 e3                                      cmp r1, #0x80
0045c150  02 00 00 8a                                      bhi #0x45c160
0045c154  69 b3 0a eb                                      bl #0x708f00
0045c158  04 00 a0 e1                                      mov r0, r4
0045c15c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0045c160  b6 d0 fa eb                                      bl #0x310440
0045c164  04 00 a0 e1                                      mov r0, r4
0045c168  70 80 bd e8                                      pop {r4, r5, r6, pc}
