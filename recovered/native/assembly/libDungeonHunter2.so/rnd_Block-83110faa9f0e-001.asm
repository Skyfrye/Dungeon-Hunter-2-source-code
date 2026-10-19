; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00489988, declared_size=92, range_size=92, mode=arm
; class-group: rnd::Block
; alias: _ZNK3rnd5Block10IsStraightEv
; demangled: rnd::Block::IsStraight() const
; decoder-mode: arm
00489988  5c 20 90 e5                                      ldr r2, [r0, #0x5c]
0048998c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00489990  02 00 52 e3                                      cmp r2, #2
00489994  03 30 8f e0                                      add r3, pc, r3
00489998  00 00 a0 13                                      movne r0, #0
0048999c  1e ff 2f 11                                      bxne lr
004899a0  a0 21 90 e5                                      ldr r2, [r0, #0x1a0]
004899a4  30 10 9f e5                                      ldr r1, [pc, #0x30]
004899a8  00 c0 92 e5                                      ldr ip, [r2]
004899ac  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004899b0  02 20 93 e7                                      ldr r2, [r3, r2]
004899b4  01 30 93 e7                                      ldr r3, [r3, r1]
004899b8  74 10 90 e5                                      ldr r1, [r0, #0x74]
004899bc  0c 21 92 e7                                      ldr r2, [r2, ip, lsl #2]
004899c0  00 00 91 e5                                      ldr r0, [r1]
004899c4  02 32 93 e7                                      ldr r3, [r3, r2, lsl #4]
004899c8  03 00 50 e1                                      cmp r0, r3
004899cc  00 00 a0 13                                      movne r0, #0
004899d0  01 00 a0 03                                      moveq r0, #1
004899d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004899d8  fc b0 50 00 fc 43 00 00 b8 1b 00 00              .byte 0xfc, 0xb0, 0x50, 0x00, 0xfc, 0x43, 0x00, 0x00, 0xb8, 0x1b, 0x00, 0x00

; FUNCTION 0x004899e4, declared_size=72, range_size=72, mode=arm
; class-group: rnd::Block
; alias: _ZNK3rnd5Block7GetFlagEv
; demangled: rnd::Block::GetFlag() const
; decoder-mode: arm
004899e4  04 40 2d e5                                      str r4, [sp, #-4]!
004899e8  5c c0 90 e5                                      ldr ip, [r0, #0x5c]
004899ec  00 00 5c e3                                      cmp ip, #0
004899f0  00 00 a0 d3                                      movle r0, #0
004899f4  0a 00 00 da                                      ble #0x489a24
004899f8  00 30 a0 e3                                      mov r3, #0
004899fc  00 20 a0 e1                                      mov r2, r0
00489a00  01 40 a0 e3                                      mov r4, #1
00489a04  03 00 a0 e1                                      mov r0, r3
00489a08  74 10 92 e5                                      ldr r1, [r2, #0x74]
00489a0c  01 30 83 e2                                      add r3, r3, #1
00489a10  0c 00 53 e1                                      cmp r3, ip
00489a14  00 10 91 e5                                      ldr r1, [r1]
00489a18  4b 2f 82 e2                                      add r2, r2, #0x12c
00489a1c  14 01 80 e1                                      orr r0, r0, r4, lsl r1
00489a20  f8 ff ff 1a                                      bne #0x489a08
00489a24  10 00 bd e8                                      ldm sp!, {r4}
00489a28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00489aec, declared_size=752, range_size=752, mode=arm
; class-group: rnd::Block
; alias: _ZN3rnd5Block17LinkToOtherBlocksERKSt3mapIPKcPS0_4lstrSaISt4pairIKS3_S4_EEE
; demangled: rnd::Block::LinkToOtherBlocks(std::map<char const*, rnd::Block*, lstr, std::allocator<std::pair<char const* const, rnd::Block*> > > const&)
; decoder-mode: arm
00489aec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00489af0  d8 22 9f e5                                      ldr r2, [pc, #0x2d8]
00489af4  34 d0 4d e2                                      sub sp, sp, #0x34
00489af8  2c 10 8d e5                                      str r1, [sp, #0x2c]
00489afc  02 20 8f e0                                      add r2, pc, r2
00489b00  04 20 8d e5                                      str r2, [sp, #4]
00489b04  0c 00 8d e5                                      str r0, [sp, #0xc]
00489b08  08 30 91 e5                                      ldr r3, [r1, #8]
00489b0c  c0 42 9f e5                                      ldr r4, [pc, #0x2c0]
00489b10  c0 c2 9f e5                                      ldr ip, [pc, #0x2c0]
00489b14  24 30 8d e5                                      str r3, [sp, #0x24]
00489b18  14 40 8d e5                                      str r4, [sp, #0x14]
00489b1c  18 c0 8d e5                                      str ip, [sp, #0x18]
00489b20  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00489b24  24 20 9d e5                                      ldr r2, [sp, #0x24]
00489b28  02 00 51 e1                                      cmp r1, r2
00489b2c  a5 00 00 0a                                      beq #0x489dc8
00489b30  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00489b34  24 10 9d e5                                      ldr r1, [sp, #0x24]
00489b38  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
00489b3c  14 10 91 e5                                      ldr r1, [r1, #0x14]
00489b40  00 00 53 e3                                      cmp r3, #0
00489b44  20 10 8d e5                                      str r1, [sp, #0x20]
00489b48  83 00 00 da                                      ble #0x489d5c
00489b4c  00 20 a0 e3                                      mov r2, #0
00489b50  28 20 8d e5                                      str r2, [sp, #0x28]
00489b54  5c c0 91 e5                                      ldr ip, [r1, #0x5c]
00489b58  00 90 a0 e1                                      mov sb, r0
00489b5c  00 00 5c e3                                      cmp ip, #0
00489b60  77 00 00 da                                      ble #0x489d44
00489b64  28 10 9d e5                                      ldr r1, [sp, #0x28]
00489b68  4b 30 a0 e3                                      mov r3, #0x4b
00489b6c  00 20 a0 e3                                      mov r2, #0
00489b70  93 01 03 e0                                      mul r3, r3, r1
00489b74  1c 20 8d e5                                      str r2, [sp, #0x1c]
00489b78  10 30 8d e5                                      str r3, [sp, #0x10]
00489b7c  20 b0 9d e5                                      ldr fp, [sp, #0x20]
00489b80  7c 60 99 e5                                      ldr r6, [sb, #0x7c]
00489b84  80 20 99 e5                                      ldr r2, [sb, #0x80]
00489b88  02 30 66 e0                                      rsb r3, r6, r2
00489b8c  c3 31 a0 e1                                      asr r3, r3, #3
00489b90  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00489b94  03 11 83 e0                                      add r1, r3, r3, lsl #2
00489b98  4b 0f a0 e3                                      mov r0, #0x12c
00489b9c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00489ba0  90 04 00 e0                                      mul r0, r0, r4
00489ba4  01 14 81 e0                                      add r1, r1, r1, lsl #8
00489ba8  20 40 9d e5                                      ldr r4, [sp, #0x20]
00489bac  01 18 81 e0                                      add r1, r1, r1, lsl #16
00489bb0  60 00 80 e2                                      add r0, r0, #0x60
00489bb4  81 30 83 e0                                      add r3, r3, r1, lsl #1
00489bb8  00 00 84 e0                                      add r0, r4, r0
00489bbc  00 00 53 e3                                      cmp r3, #0
00489bc0  08 00 8d e5                                      str r0, [sp, #8]
00489bc4  56 00 00 0a                                      beq #0x489d24
00489bc8  00 a0 a0 e3                                      mov sl, #0
00489bcc  00 a0 8d e5                                      str sl, [sp]
00489bd0  7c 50 9b e5                                      ldr r5, [fp, #0x7c]
00489bd4  80 70 9b e5                                      ldr r7, [fp, #0x80]
00489bd8  07 30 65 e0                                      rsb r3, r5, r7
00489bdc  c3 31 a0 e1                                      asr r3, r3, #3
00489be0  03 11 83 e0                                      add r1, r3, r3, lsl #2
00489be4  01 12 81 e0                                      add r1, r1, r1, lsl #4
00489be8  01 14 81 e0                                      add r1, r1, r1, lsl #8
00489bec  01 18 81 e0                                      add r1, r1, r1, lsl #16
00489bf0  81 10 83 e0                                      add r1, r3, r1, lsl #1
00489bf4  00 00 51 e3                                      cmp r1, #0
00489bf8  3a 00 00 0a                                      beq #0x489ce8
00489bfc  18 80 a0 e3                                      mov r8, #0x18
00489c00  00 10 a0 e3                                      mov r1, #0
00489c04  98 0a 0a e0                                      mul sl, r8, sl
00489c08  01 40 a0 e1                                      mov r4, r1
00489c0c  09 00 00 ea                                      b #0x489c38
00489c10  07 30 65 e0                                      rsb r3, r5, r7
00489c14  c3 31 a0 e1                                      asr r3, r3, #3
00489c18  04 10 a0 e1                                      mov r1, r4
00489c1c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00489c20  02 22 82 e0                                      add r2, r2, r2, lsl #4
00489c24  02 24 82 e0                                      add r2, r2, r2, lsl #8
00489c28  02 28 82 e0                                      add r2, r2, r2, lsl #16
00489c2c  82 20 83 e0                                      add r2, r3, r2, lsl #1
00489c30  04 00 52 e1                                      cmp r2, r4
00489c34  2a 00 00 9a                                      bls #0x489ce4
00489c38  0a 20 86 e0                                      add r2, r6, sl
00489c3c  10 30 92 e5                                      ldr r3, [r2, #0x10]
00489c40  14 00 92 e5                                      ldr r0, [r2, #0x14]
00489c44  98 51 21 e0                                      mla r1, r8, r1, r5
00489c48  03 00 50 e1                                      cmp r0, r3
00489c4c  01 40 84 e2                                      add r4, r4, #1
00489c50  03 20 60 e0                                      rsb r2, r0, r3
00489c54  ed ff ff 0a                                      beq #0x489c10
00489c58  10 30 91 e5                                      ldr r3, [r1, #0x10]
00489c5c  14 10 91 e5                                      ldr r1, [r1, #0x14]
00489c60  03 30 61 e0                                      rsb r3, r1, r3
00489c64  03 00 52 e1                                      cmp r2, r3
00489c68  e8 ff ff 1a                                      bne #0x489c10
00489c6c  5b 12 fa eb                                      bl #0x30e5e0
00489c70  00 00 50 e3                                      cmp r0, #0
00489c74  e5 ff ff 1a                                      bne #0x489c10
00489c78  74 20 9b e5                                      ldr r2, [fp, #0x74]
00489c7c  04 00 9d e5                                      ldr r0, [sp, #4]
00489c80  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00489c84  14 30 9d e5                                      ldr r3, [sp, #0x14]
00489c88  0c 10 90 e7                                      ldr r1, [r0, ip]
00489c8c  00 00 92 e5                                      ldr r0, [r2]
00489c90  04 c0 9d e5                                      ldr ip, [sp, #4]
00489c94  00 11 91 e7                                      ldr r1, [r1, r0, lsl #2]
00489c98  03 20 9c e7                                      ldr r2, [ip, r3]
00489c9c  74 c0 99 e5                                      ldr ip, [sb, #0x74]
00489ca0  01 22 92 e7                                      ldr r2, [r2, r1, lsl #4]
00489ca4  00 30 9c e5                                      ldr r3, [ip]
00489ca8  02 00 53 e1                                      cmp r3, r2
00489cac  d7 ff ff 1a                                      bne #0x489c10
00489cb0  88 30 99 e5                                      ldr r3, [sb, #0x88]
00489cb4  10 00 9d e5                                      ldr r0, [sp, #0x10]
00489cb8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00489cbc  08 c0 9d e5                                      ldr ip, [sp, #8]
00489cc0  03 20 80 e0                                      add r2, r0, r3
00489cc4  02 21 81 e0                                      add r2, r1, r2, lsl #2
00489cc8  01 30 83 e2                                      add r3, r3, #1
00489ccc  8c c0 82 e5                                      str ip, [r2, #0x8c]
00489cd0  88 30 89 e5                                      str r3, [sb, #0x88]
00489cd4  7c 50 9b e5                                      ldr r5, [fp, #0x7c]
00489cd8  80 70 9b e5                                      ldr r7, [fp, #0x80]
00489cdc  7c 60 99 e5                                      ldr r6, [sb, #0x7c]
00489ce0  ca ff ff ea                                      b #0x489c10
00489ce4  80 20 99 e5                                      ldr r2, [sb, #0x80]
00489ce8  02 30 66 e0                                      rsb r3, r6, r2
00489cec  c3 31 a0 e1                                      asr r3, r3, #3
00489cf0  00 00 9d e5                                      ldr r0, [sp]
00489cf4  03 11 83 e0                                      add r1, r3, r3, lsl #2
00489cf8  01 12 81 e0                                      add r1, r1, r1, lsl #4
00489cfc  01 00 80 e2                                      add r0, r0, #1
00489d00  01 14 81 e0                                      add r1, r1, r1, lsl #8
00489d04  00 00 8d e5                                      str r0, [sp]
00489d08  01 18 81 e0                                      add r1, r1, r1, lsl #16
00489d0c  00 a0 a0 e1                                      mov sl, r0
00489d10  81 10 83 e0                                      add r1, r3, r1, lsl #1
00489d14  01 00 50 e1                                      cmp r0, r1
00489d18  ae ff ff 3a                                      blo #0x489bd8
00489d1c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00489d20  5c c0 91 e5                                      ldr ip, [r1, #0x5c]
00489d24  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00489d28  4b bf 8b e2                                      add fp, fp, #0x12c
00489d2c  01 30 83 e2                                      add r3, r3, #1
00489d30  03 00 5c e1                                      cmp ip, r3
00489d34  1c 30 8d e5                                      str r3, [sp, #0x1c]
00489d38  92 ff ff ca                                      bgt #0x489b88
00489d3c  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00489d40  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00489d44  28 00 9d e5                                      ldr r0, [sp, #0x28]
00489d48  4b 9f 89 e2                                      add sb, sb, #0x12c
00489d4c  01 00 80 e2                                      add r0, r0, #1
00489d50  00 00 53 e1                                      cmp r3, r0
00489d54  28 00 8d e5                                      str r0, [sp, #0x28]
00489d58  7f ff ff ca                                      bgt #0x489b5c
00489d5c  24 40 9d e5                                      ldr r4, [sp, #0x24]
00489d60  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00489d64  00 00 53 e3                                      cmp r3, #0
00489d68  01 00 00 1a                                      bne #0x489d74
00489d6c  05 00 00 ea                                      b #0x489d88
00489d70  02 30 a0 e1                                      mov r3, r2
00489d74  08 20 93 e5                                      ldr r2, [r3, #8]
00489d78  00 00 52 e3                                      cmp r2, #0
00489d7c  fb ff ff 1a                                      bne #0x489d70
00489d80  24 30 8d e5                                      str r3, [sp, #0x24]
00489d84  65 ff ff ea                                      b #0x489b20
00489d88  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00489d8c  04 30 9c e5                                      ldr r3, [ip, #4]
00489d90  0c 20 a0 e1                                      mov r2, ip
00489d94  01 00 00 ea                                      b #0x489da0
00489d98  03 20 a0 e1                                      mov r2, r3
00489d9c  04 30 93 e5                                      ldr r3, [r3, #4]
00489da0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00489da4  02 00 51 e1                                      cmp r1, r2
00489da8  fa ff ff 0a                                      beq #0x489d98
00489dac  24 20 8d e5                                      str r2, [sp, #0x24]
00489db0  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00489db4  24 00 9d e5                                      ldr r0, [sp, #0x24]
00489db8  02 00 53 e1                                      cmp r3, r2
00489dbc  00 30 a0 01                                      moveq r3, r0
00489dc0  24 30 8d e5                                      str r3, [sp, #0x24]
00489dc4  55 ff ff ea                                      b #0x489b20
00489dc8  34 d0 8d e2                                      add sp, sp, #0x34
00489dcc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00489dd0  94 af 50 00 fc 43 00 00 b8 1b 00 00              .byte 0x94, 0xaf, 0x50, 0x00, 0xfc, 0x43, 0x00, 0x00, 0xb8, 0x1b, 0x00, 0x00

; FUNCTION 0x00489f58, declared_size=100, range_size=100, mode=arm
; class-group: rnd::Block
; alias: _ZN3rnd5BlockD1Ev
; demangled: rnd::Block::~Block()
; decoder-mode: arm
00489f58  54 30 9f e5                                      ldr r3, [pc, #0x54]
00489f5c  54 20 9f e5                                      ldr r2, [pc, #0x54]
00489f60  70 40 2d e9                                      push {r4, r5, r6, lr}
00489f64  03 30 8f e0                                      add r3, pc, r3
00489f68  02 20 93 e7                                      ldr r2, [r3, r2]
00489f6c  00 50 a0 e1                                      mov r5, r0
00489f70  00 60 a0 e1                                      mov r6, r0
00489f74  08 20 82 e2                                      add r2, r2, #8
00489f78  27 4d 80 e2                                      add r4, r0, #0x9c0
00489f7c  60 20 85 e4                                      str r2, [r5], #0x60
00489f80  4b 4f 44 e2                                      sub r4, r4, #0x12c
00489f84  1c 00 84 e2                                      add r0, r4, #0x1c
00489f88  e8 27 fa eb                                      bl #0x313f30
00489f8c  05 00 54 e1                                      cmp r4, r5
00489f90  fa ff ff 1a                                      bne #0x489f80
00489f94  34 00 86 e2                                      add r0, r6, #0x34
00489f98  83 26 fa eb                                      bl #0x3139ac
00489f9c  1c 00 86 e2                                      add r0, r6, #0x1c
00489fa0  81 26 fa eb                                      bl #0x3139ac
00489fa4  04 00 86 e2                                      add r0, r6, #4
00489fa8  7f 26 fa eb                                      bl #0x3139ac
00489fac  06 00 a0 e1                                      mov r0, r6
00489fb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00489fb4  2c ab 50 00 1c 3e 00 00                          .byte 0x2c, 0xab, 0x50, 0x00, 0x1c, 0x3e, 0x00, 0x00

; FUNCTION 0x00489fbc, declared_size=28, range_size=28, mode=arm
; class-group: rnd::Block
; alias: _ZN3rnd5BlockD0Ev
; demangled: rnd::Block::~Block()
; decoder-mode: arm
00489fbc  10 40 2d e9                                      push {r4, lr}
00489fc0  00 40 a0 e1                                      mov r4, r0
00489fc4  e3 ff ff eb                                      bl #0x489f58
00489fc8  04 00 a0 e1                                      mov r0, r4
00489fcc  1b 19 fa eb                                      bl #0x310440
00489fd0  04 00 a0 e1                                      mov r0, r4
00489fd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00489fd8, declared_size=100, range_size=100, mode=arm
; class-group: rnd::Block
; alias: _ZN3rnd5BlockD2Ev
; demangled: rnd::Block::~Block()
; decoder-mode: arm
00489fd8  54 30 9f e5                                      ldr r3, [pc, #0x54]
00489fdc  54 20 9f e5                                      ldr r2, [pc, #0x54]
00489fe0  70 40 2d e9                                      push {r4, r5, r6, lr}
00489fe4  03 30 8f e0                                      add r3, pc, r3
00489fe8  02 20 93 e7                                      ldr r2, [r3, r2]
00489fec  00 50 a0 e1                                      mov r5, r0
00489ff0  00 60 a0 e1                                      mov r6, r0
00489ff4  08 20 82 e2                                      add r2, r2, #8
00489ff8  27 4d 80 e2                                      add r4, r0, #0x9c0
00489ffc  60 20 85 e4                                      str r2, [r5], #0x60
0048a000  4b 4f 44 e2                                      sub r4, r4, #0x12c
0048a004  1c 00 84 e2                                      add r0, r4, #0x1c
0048a008  c8 27 fa eb                                      bl #0x313f30
0048a00c  05 00 54 e1                                      cmp r4, r5
0048a010  fa ff ff 1a                                      bne #0x48a000
0048a014  34 00 86 e2                                      add r0, r6, #0x34
0048a018  63 26 fa eb                                      bl #0x3139ac
0048a01c  1c 00 86 e2                                      add r0, r6, #0x1c
0048a020  61 26 fa eb                                      bl #0x3139ac
0048a024  04 00 86 e2                                      add r0, r6, #4
0048a028  5f 26 fa eb                                      bl #0x3139ac
0048a02c  06 00 a0 e1                                      mov r0, r6
0048a030  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048a034  ac aa 50 00 1c 3e 00 00                          .byte 0xac, 0xaa, 0x50, 0x00, 0x1c, 0x3e, 0x00, 0x00

; FUNCTION 0x0048ab34, declared_size=240, range_size=240, mode=arm
; class-group: rnd::Block
; alias: _ZN3rnd5BlockC1Ev
; demangled: rnd::Block::Block()
; decoder-mode: arm
0048ab34  70 40 2d e9                                      push {r4, r5, r6, lr}
0048ab38  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
0048ab3c  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0048ab40  00 30 a0 e1                                      mov r3, r0
0048ab44  06 60 8f e0                                      add r6, pc, r6
0048ab48  02 20 96 e7                                      ldr r2, [r6, r2]
0048ab4c  00 40 a0 e1                                      mov r4, r0
0048ab50  10 10 a0 e3                                      mov r1, #0x10
0048ab54  08 20 82 e2                                      add r2, r2, #8
0048ab58  04 20 83 e4                                      str r2, [r3], #4
0048ab5c  03 00 a0 e1                                      mov r0, r3
0048ab60  14 30 84 e5                                      str r3, [r4, #0x14]
0048ab64  18 30 84 e5                                      str r3, [r4, #0x18]
0048ab68  c3 1a fa eb                                      bl #0x31167c
0048ab6c  14 20 94 e5                                      ldr r2, [r4, #0x14]
0048ab70  00 50 a0 e3                                      mov r5, #0
0048ab74  1c 30 84 e2                                      add r3, r4, #0x1c
0048ab78  00 50 c2 e5                                      strb r5, [r2]
0048ab7c  03 00 a0 e1                                      mov r0, r3
0048ab80  2c 30 84 e5                                      str r3, [r4, #0x2c]
0048ab84  30 30 84 e5                                      str r3, [r4, #0x30]
0048ab88  10 10 a0 e3                                      mov r1, #0x10
0048ab8c  ba 1a fa eb                                      bl #0x31167c
0048ab90  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0048ab94  34 30 84 e2                                      add r3, r4, #0x34
0048ab98  03 00 a0 e1                                      mov r0, r3
0048ab9c  00 50 c2 e5                                      strb r5, [r2]
0048aba0  10 10 a0 e3                                      mov r1, #0x10
0048aba4  44 30 84 e5                                      str r3, [r4, #0x44]
0048aba8  48 30 84 e5                                      str r3, [r4, #0x48]
0048abac  b2 1a fa eb                                      bl #0x31167c
0048abb0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0048abb4  44 c0 94 e5                                      ldr ip, [r4, #0x44]
0048abb8  45 14 a0 e3                                      mov r1, #0x45000000
0048abbc  03 00 96 e7                                      ldr r0, [r6, r3]
0048abc0  ee 19 81 e2                                      add r1, r1, #0x3b8000
0048abc4  01 30 a0 e3                                      mov r3, #1
0048abc8  00 50 cc e5                                      strb r5, [ip]
0048abcc  05 20 a0 e1                                      mov r2, r5
0048abd0  50 10 84 e5                                      str r1, [r4, #0x50]
0048abd4  58 30 84 e5                                      str r3, [r4, #0x58]
0048abd8  4c 10 84 e5                                      str r1, [r4, #0x4c]
0048abdc  54 30 84 e5                                      str r3, [r4, #0x54]
0048abe0  5c 50 84 e5                                      str r5, [r4, #0x5c]
0048abe4  40 00 80 e2                                      add r0, r0, #0x40
0048abe8  60 30 84 e2                                      add r3, r4, #0x60
0048abec  05 10 a0 e1                                      mov r1, r5
0048abf0  4b 2f 82 e2                                      add r2, r2, #0x12c
0048abf4  96 0e 52 e3                                      cmp r2, #0x960
0048abf8  14 00 83 e5                                      str r0, [r3, #0x14]
0048abfc  1c 10 83 e5                                      str r1, [r3, #0x1c]
0048ac00  20 10 83 e5                                      str r1, [r3, #0x20]
0048ac04  24 10 83 e5                                      str r1, [r3, #0x24]
0048ac08  4b 3f 83 e2                                      add r3, r3, #0x12c
0048ac0c  f7 ff ff 1a                                      bne #0x48abf0
0048ac10  04 00 a0 e1                                      mov r0, r4
0048ac14  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048ac18  4c 9f 50 00 1c 3e 00 00 fc 43 00 00              .byte 0x4c, 0x9f, 0x50, 0x00, 0x1c, 0x3e, 0x00, 0x00, 0xfc, 0x43, 0x00, 0x00

; FUNCTION 0x0048ac24, declared_size=240, range_size=240, mode=arm
; class-group: rnd::Block
; alias: _ZN3rnd5BlockC2Ev
; demangled: rnd::Block::Block()
; decoder-mode: arm
0048ac24  70 40 2d e9                                      push {r4, r5, r6, lr}
0048ac28  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
0048ac2c  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0048ac30  00 30 a0 e1                                      mov r3, r0
0048ac34  06 60 8f e0                                      add r6, pc, r6
0048ac38  02 20 96 e7                                      ldr r2, [r6, r2]
0048ac3c  00 40 a0 e1                                      mov r4, r0
0048ac40  10 10 a0 e3                                      mov r1, #0x10
0048ac44  08 20 82 e2                                      add r2, r2, #8
0048ac48  04 20 83 e4                                      str r2, [r3], #4
0048ac4c  03 00 a0 e1                                      mov r0, r3
0048ac50  14 30 84 e5                                      str r3, [r4, #0x14]
0048ac54  18 30 84 e5                                      str r3, [r4, #0x18]
0048ac58  87 1a fa eb                                      bl #0x31167c
0048ac5c  14 20 94 e5                                      ldr r2, [r4, #0x14]
0048ac60  00 50 a0 e3                                      mov r5, #0
0048ac64  1c 30 84 e2                                      add r3, r4, #0x1c
0048ac68  00 50 c2 e5                                      strb r5, [r2]
0048ac6c  03 00 a0 e1                                      mov r0, r3
0048ac70  2c 30 84 e5                                      str r3, [r4, #0x2c]
0048ac74  30 30 84 e5                                      str r3, [r4, #0x30]
0048ac78  10 10 a0 e3                                      mov r1, #0x10
0048ac7c  7e 1a fa eb                                      bl #0x31167c
0048ac80  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0048ac84  34 30 84 e2                                      add r3, r4, #0x34
0048ac88  03 00 a0 e1                                      mov r0, r3
0048ac8c  00 50 c2 e5                                      strb r5, [r2]
0048ac90  10 10 a0 e3                                      mov r1, #0x10
0048ac94  44 30 84 e5                                      str r3, [r4, #0x44]
0048ac98  48 30 84 e5                                      str r3, [r4, #0x48]
0048ac9c  76 1a fa eb                                      bl #0x31167c
0048aca0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0048aca4  44 c0 94 e5                                      ldr ip, [r4, #0x44]
0048aca8  45 14 a0 e3                                      mov r1, #0x45000000
0048acac  03 00 96 e7                                      ldr r0, [r6, r3]
0048acb0  ee 19 81 e2                                      add r1, r1, #0x3b8000
0048acb4  01 30 a0 e3                                      mov r3, #1
0048acb8  00 50 cc e5                                      strb r5, [ip]
0048acbc  05 20 a0 e1                                      mov r2, r5
0048acc0  50 10 84 e5                                      str r1, [r4, #0x50]
0048acc4  58 30 84 e5                                      str r3, [r4, #0x58]
0048acc8  4c 10 84 e5                                      str r1, [r4, #0x4c]
0048accc  54 30 84 e5                                      str r3, [r4, #0x54]
0048acd0  5c 50 84 e5                                      str r5, [r4, #0x5c]
0048acd4  40 00 80 e2                                      add r0, r0, #0x40
0048acd8  60 30 84 e2                                      add r3, r4, #0x60
0048acdc  05 10 a0 e1                                      mov r1, r5
0048ace0  4b 2f 82 e2                                      add r2, r2, #0x12c
0048ace4  96 0e 52 e3                                      cmp r2, #0x960
0048ace8  14 00 83 e5                                      str r0, [r3, #0x14]
0048acec  1c 10 83 e5                                      str r1, [r3, #0x1c]
0048acf0  20 10 83 e5                                      str r1, [r3, #0x20]
0048acf4  24 10 83 e5                                      str r1, [r3, #0x24]
0048acf8  4b 3f 83 e2                                      add r3, r3, #0x12c
0048acfc  f7 ff ff 1a                                      bne #0x48ace0
0048ad00  04 00 a0 e1                                      mov r0, r4
0048ad04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048ad08  5c 9e 50 00 1c 3e 00 00 fc 43 00 00              .byte 0x5c, 0x9e, 0x50, 0x00, 0x1c, 0x3e, 0x00, 0x00, 0xfc, 0x43, 0x00, 0x00
