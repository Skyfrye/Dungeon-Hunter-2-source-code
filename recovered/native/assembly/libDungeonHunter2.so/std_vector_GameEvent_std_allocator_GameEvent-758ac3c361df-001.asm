; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004799bc, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<GameEvent*, std::allocator<GameEvent*> >
; alias: _ZNSt6vectorIP9GameEventSaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<GameEvent*, std::allocator<GameEvent*> >::_M_fill_insert_aux(GameEvent**, unsigned int, GameEvent* const&, std::__false_type const&)
; decoder-mode: arm
004799bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004799c0  00 c0 90 e5                                      ldr ip, [r0]
004799c4  03 50 a0 e1                                      mov r5, r3
004799c8  14 d0 4d e2                                      sub sp, sp, #0x14
004799cc  0c 00 53 e1                                      cmp r3, ip
004799d0  00 40 a0 e1                                      mov r4, r0
004799d4  01 60 a0 e1                                      mov r6, r1
004799d8  02 30 a0 e1                                      mov r3, r2
004799dc  04 70 90 35                                      ldrlo r7, [r0, #4]
004799e0  0a 00 00 3a                                      blo #0x479a10
004799e4  04 70 90 e5                                      ldr r7, [r0, #4]
004799e8  07 00 55 e1                                      cmp r5, r7
004799ec  07 00 00 2a                                      bhs #0x479a10
004799f0  00 c0 95 e5                                      ldr ip, [r5]
004799f4  10 30 8d e2                                      add r3, sp, #0x10
004799f8  08 c0 23 e5                                      str ip, [r3, #-8]!
004799fc  0c c0 8d e2                                      add ip, sp, #0xc
00479a00  00 c0 8d e5                                      str ip, [sp]
00479a04  ec ff ff eb                                      bl #0x4799bc
00479a08  14 d0 8d e2                                      add sp, sp, #0x14
00479a0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00479a10  07 20 66 e0                                      rsb r2, r6, r7
00479a14  42 81 a0 e1                                      asr r8, r2, #2
00479a18  08 00 53 e1                                      cmp r3, r8
00479a1c  1c 00 00 2a                                      bhs #0x479a94
00479a20  03 81 a0 e1                                      lsl r8, r3, #2
00479a24  07 30 68 e0                                      rsb r3, r8, r7
00479a28  07 00 53 e1                                      cmp r3, r7
00479a2c  07 a0 a0 01                                      moveq sl, r7
00479a30  05 00 00 0a                                      beq #0x479a4c
00479a34  03 10 a0 e1                                      mov r1, r3
00479a38  07 20 63 e0                                      rsb r2, r3, r7
00479a3c  07 00 a0 e1                                      mov r0, r7
00479a40  03 a0 a0 e1                                      mov sl, r3
00479a44  87 53 fa eb                                      bl #0x30e868
00479a48  04 30 94 e5                                      ldr r3, [r4, #4]
00479a4c  0a 20 66 e0                                      rsb r2, r6, sl
00479a50  08 30 83 e0                                      add r3, r3, r8
00479a54  00 00 52 e3                                      cmp r2, #0
00479a58  04 30 84 e5                                      str r3, [r4, #4]
00479a5c  02 00 00 da                                      ble #0x479a6c
00479a60  07 00 62 e0                                      rsb r0, r2, r7
00479a64  06 10 a0 e1                                      mov r1, r6
00479a68  32 51 fa eb                                      bl #0x30df38
00479a6c  48 81 a0 e1                                      asr r8, r8, #2
00479a70  00 00 58 e3                                      cmp r8, #0
00479a74  e3 ff ff da                                      ble #0x479a08
00479a78  00 20 a0 e3                                      mov r2, #0
00479a7c  00 10 95 e5                                      ldr r1, [r5]
00479a80  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00479a84  01 20 82 e2                                      add r2, r2, #1
00479a88  08 00 52 e1                                      cmp r2, r8
00479a8c  fa ff ff 1a                                      bne #0x479a7c
00479a90  dc ff ff ea                                      b #0x479a08
00479a94  03 30 68 e0                                      rsb r3, r8, r3
00479a98  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00479a9c  00 00 5a e3                                      cmp sl, #0
00479aa0  03 01 87 e0                                      add r0, r7, r3, lsl #2
00479aa4  05 00 00 da                                      ble #0x479ac0
00479aa8  00 10 a0 e3                                      mov r1, #0
00479aac  00 c0 95 e5                                      ldr ip, [r5]
00479ab0  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00479ab4  01 10 81 e2                                      add r1, r1, #1
00479ab8  0a 00 51 e1                                      cmp r1, sl
00479abc  fa ff ff 1a                                      bne #0x479aac
00479ac0  07 00 56 e1                                      cmp r6, r7
00479ac4  04 00 84 e5                                      str r0, [r4, #4]
00479ac8  02 00 00 0a                                      beq #0x479ad8
00479acc  06 10 a0 e1                                      mov r1, r6
00479ad0  64 53 fa eb                                      bl #0x30e868
00479ad4  04 00 94 e5                                      ldr r0, [r4, #4]
00479ad8  08 01 80 e0                                      add r0, r0, r8, lsl #2
00479adc  00 00 58 e3                                      cmp r8, #0
00479ae0  04 00 84 e5                                      str r0, [r4, #4]
00479ae4  c7 ff ff da                                      ble #0x479a08
00479ae8  00 30 a0 e3                                      mov r3, #0
00479aec  00 20 95 e5                                      ldr r2, [r5]
00479af0  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00479af4  01 30 83 e2                                      add r3, r3, #1
00479af8  03 00 58 e1                                      cmp r8, r3
00479afc  fa ff ff 1a                                      bne #0x479aec
00479b00  c0 ff ff ea                                      b #0x479a08

; FUNCTION 0x00479b04, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<GameEvent*, std::allocator<GameEvent*> >
; alias: _ZNSt6vectorIP9GameEventSaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<GameEvent*, std::allocator<GameEvent*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00479b04  70 40 2d e9                                      push {r4, r5, r6, lr}
00479b08  14 00 90 e8                                      ldm r0, {r2, r4}
00479b0c  ff 3f 0f e3                                      movw r3, #0xffff
00479b10  ff 3f 43 e3                                      movt r3, #0x3fff
00479b14  04 40 62 e0                                      rsb r4, r2, r4
00479b18  44 41 a0 e1                                      asr r4, r4, #2
00479b1c  03 30 64 e0                                      rsb r3, r4, r3
00479b20  01 00 53 e1                                      cmp r3, r1
00479b24  01 50 a0 e1                                      mov r5, r1
00479b28  08 00 00 3a                                      blo #0x479b50
00479b2c  05 00 54 e1                                      cmp r4, r5
00479b30  04 00 84 20                                      addhs r0, r4, r4
00479b34  05 00 84 30                                      addlo r0, r4, r5
00479b38  07 01 70 e3                                      cmn r0, #0xc0000001
00479b3c  01 00 00 8a                                      bhi #0x479b48
00479b40  04 00 50 e1                                      cmp r0, r4
00479b44  00 00 00 2a                                      bhs #0x479b4c
00479b48  03 01 e0 e3                                      mvn r0, #0xc0000000
00479b4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00479b50  08 00 9f e5                                      ldr r0, [pc, #8]
00479b54  00 00 8f e0                                      add r0, pc, r0
00479b58  b8 3c 0a eb                                      bl #0x708e40
00479b5c  f2 ff ff ea                                      b #0x479b2c
; mapping-symbol data/literal pool
00479b60  14 49 44 00                                      .byte 0x14, 0x49, 0x44, 0x00

; FUNCTION 0x00479cac, declared_size=72, range_size=72, mode=arm
; class-group: std::vector<GameEvent*, std::allocator<GameEvent*> >
; alias: _ZNSt6vectorIP9GameEventSaIS1_EEC1Ej.clone.1
; demangled: std::vector<GameEvent*, std::allocator<GameEvent*> >::vector(unsigned int) [clone .clone.1]
; decoder-mode: arm
00479cac  10 40 2d e9                                      push {r4, lr}
00479cb0  08 d0 4d e2                                      sub sp, sp, #8
00479cb4  00 40 a0 e1                                      mov r4, r0
00479cb8  00 10 a0 e3                                      mov r1, #0
00479cbc  08 20 8d e2                                      add r2, sp, #8
00479cc0  04 10 22 e5                                      str r1, [r2, #-4]!
00479cc4  00 10 84 e5                                      str r1, [r4]
00479cc8  04 10 84 e5                                      str r1, [r4, #4]
00479ccc  08 10 a0 e5                                      str r1, [r0, #8]!
00479cd0  a3 ff ff eb                                      bl #0x479b64
00479cd4  04 30 9d e5                                      ldr r3, [sp, #4]
00479cd8  00 00 84 e5                                      str r0, [r4]
00479cdc  04 00 84 e5                                      str r0, [r4, #4]
00479ce0  03 01 80 e0                                      add r0, r0, r3, lsl #2
00479ce4  08 00 84 e5                                      str r0, [r4, #8]
00479ce8  04 00 a0 e1                                      mov r0, r4
00479cec  08 d0 8d e2                                      add sp, sp, #8
00479cf0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00479d1c, declared_size=252, range_size=252, mode=arm
; class-group: std::vector<GameEvent*, std::allocator<GameEvent*> >
; alias: _ZNSt6vectorIP9GameEventSaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<GameEvent*, std::allocator<GameEvent*> >::_M_fill_insert(GameEvent**, unsigned int, GameEvent* const&)
; decoder-mode: arm
00479d1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00479d20  00 60 52 e2                                      subs r6, r2, #0
00479d24  10 d0 4d e2                                      sub sp, sp, #0x10
00479d28  00 40 a0 e1                                      mov r4, r0
00479d2c  01 70 a0 e1                                      mov r7, r1
00479d30  03 50 a0 e1                                      mov r5, r3
00479d34  27 00 00 0a                                      beq #0x479dd8
00479d38  00 50 90 e9                                      ldmib r0, {ip, lr}
00479d3c  0e c0 6c e0                                      rsb ip, ip, lr
00479d40  4c 01 56 e1                                      cmp r6, ip, asr #2
00479d44  25 00 00 9a                                      bls #0x479de0
00479d48  06 10 a0 e1                                      mov r1, r6
00479d4c  6c ff ff eb                                      bl #0x479b04
00479d50  08 90 84 e2                                      add sb, r4, #8
00479d54  10 20 8d e2                                      add r2, sp, #0x10
00479d58  00 10 a0 e1                                      mov r1, r0
00479d5c  08 00 22 e5                                      str r0, [r2, #-8]!
00479d60  09 00 a0 e1                                      mov r0, sb
00479d64  7e ff ff eb                                      bl #0x479b64
00479d68  00 10 94 e5                                      ldr r1, [r4]
00479d6c  00 80 a0 e1                                      mov r8, r0
00479d70  01 a0 57 e0                                      subs sl, r7, r1
00479d74  00 00 a0 01                                      moveq r0, r0
00479d78  1c 00 00 1a                                      bne #0x479df0
00479d7c  06 20 a0 e1                                      mov r2, r6
00479d80  00 30 a0 e3                                      mov r3, #0
00479d84  00 10 95 e5                                      ldr r1, [r5]
00479d88  01 20 52 e2                                      subs r2, r2, #1
00479d8c  03 10 80 e7                                      str r1, [r0, r3]
00479d90  04 30 83 e2                                      add r3, r3, #4
00479d94  fa ff ff 1a                                      bne #0x479d84
00479d98  04 50 94 e5                                      ldr r5, [r4, #4]
00479d9c  06 61 80 e0                                      add r6, r0, r6, lsl #2
00479da0  07 50 55 e0                                      subs r5, r5, r7
00479da4  15 00 00 1a                                      bne #0x479e00
00479da8  00 30 94 e5                                      ldr r3, [r4]
00479dac  08 20 94 e5                                      ldr r2, [r4, #8]
00479db0  09 00 a0 e1                                      mov r0, sb
00479db4  03 10 a0 e1                                      mov r1, r3
00479db8  02 30 63 e0                                      rsb r3, r3, r2
00479dbc  43 21 a0 e1                                      asr r2, r3, #2
00479dc0  82 ff ff eb                                      bl #0x479bd0
00479dc4  08 30 9d e5                                      ldr r3, [sp, #8]
00479dc8  00 80 84 e5                                      str r8, [r4]
00479dcc  04 60 84 e5                                      str r6, [r4, #4]
00479dd0  03 81 88 e0                                      add r8, r8, r3, lsl #2
00479dd4  08 80 84 e5                                      str r8, [r4, #8]
00479dd8  10 d0 8d e2                                      add sp, sp, #0x10
00479ddc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00479de0  0c c0 8d e2                                      add ip, sp, #0xc
00479de4  00 c0 8d e5                                      str ip, [sp]
00479de8  f3 fe ff eb                                      bl #0x4799bc
00479dec  f9 ff ff ea                                      b #0x479dd8
00479df0  0a 20 a0 e1                                      mov r2, sl
00479df4  4f 50 fa eb                                      bl #0x30df38
00479df8  0a 00 80 e0                                      add r0, r0, sl
00479dfc  de ff ff ea                                      b #0x479d7c
00479e00  06 00 a0 e1                                      mov r0, r6
00479e04  07 10 a0 e1                                      mov r1, r7
00479e08  05 20 a0 e1                                      mov r2, r5
00479e0c  49 50 fa eb                                      bl #0x30df38
00479e10  05 60 80 e0                                      add r6, r0, r5
00479e14  e3 ff ff ea                                      b #0x479da8

; FUNCTION 0x00479e18, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<GameEvent*, std::allocator<GameEvent*> >
; alias: _ZNSt6vectorIP9GameEventSaIS1_EE6resizeEjRKS1_
; demangled: std::vector<GameEvent*, std::allocator<GameEvent*> >::resize(unsigned int, GameEvent* const&)
; decoder-mode: arm
00479e18  30 00 2d e9                                      push {r4, r5}
00479e1c  04 40 90 e5                                      ldr r4, [r0, #4]
00479e20  00 50 90 e5                                      ldr r5, [r0]
00479e24  02 30 a0 e1                                      mov r3, r2
00479e28  04 20 65 e0                                      rsb r2, r5, r4
00479e2c  42 21 a0 e1                                      asr r2, r2, #2
00479e30  02 00 51 e1                                      cmp r1, r2
00479e34  04 00 00 2a                                      bhs #0x479e4c
00479e38  01 51 85 e0                                      add r5, r5, r1, lsl #2
00479e3c  04 00 55 e1                                      cmp r5, r4
00479e40  04 50 80 15                                      strne r5, [r0, #4]
00479e44  30 00 bd e8                                      pop {r4, r5}
00479e48  1e ff 2f e1                                      bx lr
00479e4c  01 20 62 e0                                      rsb r2, r2, r1
00479e50  04 10 a0 e1                                      mov r1, r4
00479e54  30 00 bd e8                                      pop {r4, r5}
00479e58  af ff ff ea                                      b #0x479d1c
