; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00429c18, declared_size=4, range_size=4, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD6UpdateEv
; demangled: MenuDebugHUD::Update()
; decoder-mode: arm
00429c18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00429cd4, declared_size=176, range_size=176, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD12LoadFromFileEv
; demangled: MenuDebugHUD::LoadFromFile()
; decoder-mode: arm
00429cd4  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00429cd8  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00429cdc  70 40 2d e9                                      push {r4, r5, r6, lr}
00429ce0  02 20 8f e0                                      add r2, pc, r2
00429ce4  03 30 92 e7                                      ldr r3, [r2, r3]
00429ce8  08 d0 4d e2                                      sub sp, sp, #8
00429cec  00 50 a0 e1                                      mov r5, r0
00429cf0  10 30 93 e5                                      ldr r3, [r3, #0x10]
00429cf4  34 40 93 e5                                      ldr r4, [r3, #0x34]
00429cf8  00 00 54 e3                                      cmp r4, #0
00429cfc  12 00 00 0a                                      beq #0x429d4c
00429d00  78 10 9f e5                                      ldr r1, [pc, #0x78]
00429d04  00 30 94 e5                                      ldr r3, [r4]
00429d08  04 00 a0 e1                                      mov r0, r4
00429d0c  01 10 92 e7                                      ldr r1, [r2, r1]
00429d10  00 20 a0 e3                                      mov r2, #0
00429d14  00 10 91 e5                                      ldr r1, [r1]
00429d18  0f e0 a0 e1                                      mov lr, pc
00429d1c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00429d20  00 30 50 e2                                      subs r3, r0, #0
00429d24  08 00 00 0a                                      beq #0x429d4c
00429d28  04 30 8d e5                                      str r3, [sp, #4]
00429d2c  ee 31 fc eb                                      bl #0x3364ec
00429d30  16 00 50 e3                                      cmp r0, #0x16
00429d34  06 00 00 0a                                      beq #0x429d54
00429d38  04 00 a0 e1                                      mov r0, r4
00429d3c  00 30 94 e5                                      ldr r3, [r4]
00429d40  04 10 8d e2                                      add r1, sp, #4
00429d44  0f e0 a0 e1                                      mov lr, pc
00429d48  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00429d4c  08 d0 8d e2                                      add sp, sp, #8
00429d50  70 80 bd e8                                      pop {r4, r5, r6, pc}
00429d54  00 60 a0 e3                                      mov r6, #0
00429d58  04 00 9d e5                                      ldr r0, [sp, #4]
00429d5c  ae ff ff eb                                      bl #0x429c1c
00429d60  01 60 86 e2                                      add r6, r6, #1
00429d64  16 00 56 e3                                      cmp r6, #0x16
00429d68  e0 00 c5 e5                                      strb r0, [r5, #0xe0]
00429d6c  01 50 85 e2                                      add r5, r5, #1
00429d70  f8 ff ff 1a                                      bne #0x429d58
00429d74  ef ff ff ea                                      b #0x429d38
; mapping-symbol data/literal pool
00429d78  b0 ad 56 00 f4 37 00 00 34 4c 00 00              .byte 0xb0, 0xad, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x34, 0x4c, 0x00, 0x00

; FUNCTION 0x00429e40, declared_size=120, range_size=120, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD7SetTextEPKc
; demangled: MenuDebugHUD::SetText(char const*)
; decoder-mode: arm
00429e40  70 40 2d e9                                      push {r4, r5, r6, lr}
00429e44  04 30 90 e5                                      ldr r3, [r0, #4]
00429e48  00 50 a0 e1                                      mov r5, r0
00429e4c  01 60 a0 e1                                      mov r6, r1
00429e50  00 00 53 e3                                      cmp r3, #0
00429e54  16 00 00 0a                                      beq #0x429eb4
00429e58  f8 40 80 e2                                      add r4, r0, #0xf8
00429e5c  04 00 a0 e1                                      mov r0, r4
00429e60  ba f7 ff eb                                      bl #0x427d50
00429e64  00 00 50 e3                                      cmp r0, #0
00429e68  11 00 00 0a                                      beq #0x429eb4
00429e6c  00 00 56 e3                                      cmp r6, #0
00429e70  0c 00 00 0a                                      beq #0x429ea8
00429e74  04 00 a0 e1                                      mov r0, r4
00429e78  04 50 95 e5                                      ldr r5, [r5, #4]
00429e7c  b3 f7 ff eb                                      bl #0x427d50
00429e80  00 30 a0 e3                                      mov r3, #0
00429e84  00 10 a0 e1                                      mov r1, r0
00429e88  06 20 a0 e1                                      mov r2, r6
00429e8c  05 00 a0 e1                                      mov r0, r5
00429e90  12 fd 0d eb                                      bl #0x7a92e0
00429e94  04 00 a0 e1                                      mov r0, r4
00429e98  ac f7 ff eb                                      bl #0x427d50
00429e9c  01 30 a0 e3                                      mov r3, #1
00429ea0  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
00429ea4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00429ea8  04 00 a0 e1                                      mov r0, r4
00429eac  a7 f7 ff eb                                      bl #0x427d50
00429eb0  9b 60 c0 e5                                      strb r6, [r0, #0x9b]
00429eb4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00429f4c, declared_size=244, range_size=244, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD4InitEv
; demangled: MenuDebugHUD::Init()
; decoder-mode: arm
00429f4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00429f50  00 40 a0 e1                                      mov r4, r0
00429f54  cc 0a 00 eb                                      bl #0x42ca8c
00429f58  04 10 a0 e1                                      mov r1, r4
00429f5c  cc 13 00 eb                                      bl #0x42ee94
00429f60  04 50 94 e5                                      ldr r5, [r4, #4]
00429f64  00 00 55 e3                                      cmp r5, #0
00429f68  2e 00 00 0a                                      beq #0x42a028
00429f6c  04 00 a0 e1                                      mov r0, r4
00429f70  35 e0 ff eb                                      bl #0x42204c
00429f74  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00429f78  00 30 a0 e1                                      mov r3, r0
00429f7c  05 20 a0 e1                                      mov r2, r5
00429f80  01 10 8f e0                                      add r1, pc, r1
00429f84  f8 00 84 e2                                      add r0, r4, #0xf8
00429f88  44 f7 ff eb                                      bl #0x427ca0
00429f8c  04 00 a0 e1                                      mov r0, r4
00429f90  04 50 94 e5                                      ldr r5, [r4, #4]
00429f94  2c e0 ff eb                                      bl #0x42204c
00429f98  90 10 9f e5                                      ldr r1, [pc, #0x90]
00429f9c  00 30 a0 e1                                      mov r3, r0
00429fa0  05 20 a0 e1                                      mov r2, r5
00429fa4  01 10 8f e0                                      add r1, pc, r1
00429fa8  56 0f 84 e2                                      add r0, r4, #0x158
00429fac  3b f7 ff eb                                      bl #0x427ca0
00429fb0  04 00 a0 e1                                      mov r0, r4
00429fb4  04 50 94 e5                                      ldr r5, [r4, #4]
00429fb8  23 e0 ff eb                                      bl #0x42204c
00429fbc  70 10 9f e5                                      ldr r1, [pc, #0x70]
00429fc0  00 30 a0 e1                                      mov r3, r0
00429fc4  05 20 a0 e1                                      mov r2, r5
00429fc8  01 10 8f e0                                      add r1, pc, r1
00429fcc  4a 0f 84 e2                                      add r0, r4, #0x128
00429fd0  32 f7 ff eb                                      bl #0x427ca0
00429fd4  04 00 a0 e1                                      mov r0, r4
00429fd8  04 50 94 e5                                      ldr r5, [r4, #4]
00429fdc  1a e0 ff eb                                      bl #0x42204c
00429fe0  50 10 9f e5                                      ldr r1, [pc, #0x50]
00429fe4  00 30 a0 e1                                      mov r3, r0
00429fe8  05 20 a0 e1                                      mov r2, r5
00429fec  01 10 8f e0                                      add r1, pc, r1
00429ff0  62 0f 84 e2                                      add r0, r4, #0x188
00429ff4  29 f7 ff eb                                      bl #0x427ca0
00429ff8  04 00 a0 e1                                      mov r0, r4
00429ffc  04 50 94 e5                                      ldr r5, [r4, #4]
0042a000  11 e0 ff eb                                      bl #0x42204c
0042a004  30 10 9f e5                                      ldr r1, [pc, #0x30]
0042a008  00 30 a0 e1                                      mov r3, r0
0042a00c  05 20 a0 e1                                      mov r2, r5
0042a010  6e 0f 84 e2                                      add r0, r4, #0x1b8
0042a014  01 10 8f e0                                      add r1, pc, r1
0042a018  20 f7 ff eb                                      bl #0x427ca0
0042a01c  04 00 a0 e1                                      mov r0, r4
0042a020  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042a024  2a ff ff ea                                      b #0x429cd4
0042a028  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a02c  90 ed 49 00 b4 f9 49 00 a0 f9 49 00 94 f9 49 00  .byte 0x90, 0xed, 0x49, 0x00, 0xb4, 0xf9, 0x49, 0x00, 0xa0, 0xf9, 0x49, 0x00, 0x94, 0xf9, 0x49, 0x00
0042a03c  84 f9 49 00                                      .byte 0x84, 0xf9, 0x49, 0x00

; FUNCTION 0x0042a1f8, declared_size=324, range_size=324, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD10SaveToFileEv
; demangled: MenuDebugHUD::SaveToFile()
; decoder-mode: arm
0042a1f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a1fc  18 41 9f e5                                      ldr r4, [pc, #0x118]
0042a200  18 31 9f e5                                      ldr r3, [pc, #0x118]
0042a204  10 d0 4d e2                                      sub sp, sp, #0x10
0042a208  04 40 8f e0                                      add r4, pc, r4
0042a20c  03 30 94 e7                                      ldr r3, [r4, r3]
0042a210  00 60 a0 e1                                      mov r6, r0
0042a214  10 30 93 e5                                      ldr r3, [r3, #0x10]
0042a218  34 50 93 e5                                      ldr r5, [r3, #0x34]
0042a21c  00 00 55 e3                                      cmp r5, #0
0042a220  28 00 00 0a                                      beq #0x42a2c8
0042a224  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
0042a228  00 30 95 e5                                      ldr r3, [r5]
0042a22c  05 00 a0 e1                                      mov r0, r5
0042a230  02 10 94 e7                                      ldr r1, [r4, r2]
0042a234  01 20 a0 e3                                      mov r2, #1
0042a238  00 10 91 e5                                      ldr r1, [r1]
0042a23c  0f e0 a0 e1                                      mov lr, pc
0042a240  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0042a244  00 30 50 e2                                      subs r3, r0, #0
0042a248  1e 00 00 0a                                      beq #0x42a2c8
0042a24c  10 10 8d e2                                      add r1, sp, #0x10
0042a250  16 20 a0 e3                                      mov r2, #0x16
0042a254  08 20 21 e5                                      str r2, [r1, #-8]!
0042a258  0c 30 8d e5                                      str r3, [sp, #0xc]
0042a25c  00 c0 93 e5                                      ldr ip, [r3]
0042a260  04 20 a0 e3                                      mov r2, #4
0042a264  00 30 a0 e3                                      mov r3, #0
0042a268  0f e0 a0 e1                                      mov lr, pc
0042a26c  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0042a270  04 00 50 e3                                      cmp r0, #4
0042a274  15 00 00 0a                                      beq #0x42a2d0
0042a278  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0042a27c  03 30 94 e7                                      ldr r3, [r4, r3]
0042a280  00 30 93 e5                                      ldr r3, [r3]
0042a284  02 00 53 e3                                      cmp r3, #2
0042a288  20 00 00 0a                                      beq #0x42a310
0042a28c  01 00 53 e3                                      cmp r3, #1
0042a290  11 00 00 0a                                      beq #0x42a2dc
0042a294  00 40 a0 e3                                      mov r4, #0
0042a298  e0 10 d6 e5                                      ldrb r1, [r6, #0xe0]
0042a29c  01 40 84 e2                                      add r4, r4, #1
0042a2a0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0042a2a4  b6 fe ff eb                                      bl #0x429d84
0042a2a8  16 00 54 e3                                      cmp r4, #0x16
0042a2ac  01 60 86 e2                                      add r6, r6, #1
0042a2b0  f8 ff ff 1a                                      bne #0x42a298
0042a2b4  05 00 a0 e1                                      mov r0, r5
0042a2b8  00 30 95 e5                                      ldr r3, [r5]
0042a2bc  0c 10 8d e2                                      add r1, sp, #0xc
0042a2c0  0f e0 a0 e1                                      mov lr, pc
0042a2c4  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0042a2c8  10 d0 8d e2                                      add sp, sp, #0x10
0042a2cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042a2d0  00 00 51 e3                                      cmp r1, #0
0042a2d4  ee ff ff 0a                                      beq #0x42a294
0042a2d8  e6 ff ff ea                                      b #0x42a278
0042a2dc  48 00 9f e5                                      ldr r0, [pc, #0x48]
0042a2e0  48 10 9f e5                                      ldr r1, [pc, #0x48]
0042a2e4  48 20 9f e5                                      ldr r2, [pc, #0x48]
0042a2e8  00 00 94 e7                                      ldr r0, [r4, r0]
0042a2ec  44 30 9f e5                                      ldr r3, [pc, #0x44]
0042a2f0  74 c0 a0 e3                                      mov ip, #0x74
0042a2f4  01 10 8f e0                                      add r1, pc, r1
0042a2f8  02 20 8f e0                                      add r2, pc, r2
0042a2fc  03 30 8f e0                                      add r3, pc, r3
0042a300  a8 00 80 e2                                      add r0, r0, #0xa8
0042a304  00 c0 8d e5                                      str ip, [sp]
0042a308  3d 8f fb eb                                      bl #0x30e004
0042a30c  e0 ff ff ea                                      b #0x42a294
0042a310  00 30 a0 e3                                      mov r3, #0
0042a314  00 30 83 e5                                      str r3, [r3]
0042a318  dd ff ff ea                                      b #0x42a294
; mapping-symbol data/literal pool
0042a31c  88 a8 56 00 f4 37 00 00 34 4c 00 00 c0 39 00 00  .byte 0x88, 0xa8, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x34, 0x4c, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0042a32c  c0 19 00 00 e4 40 49 00 a8 41 49 00 44 5a 49 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xe4, 0x40, 0x49, 0x00, 0xa8, 0x41, 0x49, 0x00, 0x44, 0x5a, 0x49, 0x00

; FUNCTION 0x0042a33c, declared_size=140, range_size=140, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUDD1Ev
; demangled: MenuDebugHUD::~MenuDebugHUD()
; decoder-mode: arm
0042a33c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0042a340  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0042a344  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a348  03 30 8f e0                                      add r3, pc, r3
0042a34c  02 20 93 e7                                      ldr r2, [r3, r2]
0042a350  00 40 a0 e1                                      mov r4, r0
0042a354  08 20 82 e2                                      add r2, r2, #8
0042a358  b8 21 80 e4                                      str r2, [r0], #0x1b8
0042a35c  a6 c1 ff eb                                      bl #0x41a9fc
0042a360  62 0f 84 e2                                      add r0, r4, #0x188
0042a364  a4 c1 ff eb                                      bl #0x41a9fc
0042a368  56 0f 84 e2                                      add r0, r4, #0x158
0042a36c  a2 c1 ff eb                                      bl #0x41a9fc
0042a370  4a 0f 84 e2                                      add r0, r4, #0x128
0042a374  a0 c1 ff eb                                      bl #0x41a9fc
0042a378  f8 00 84 e2                                      add r0, r4, #0xf8
0042a37c  9e c1 ff eb                                      bl #0x41a9fc
0042a380  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0042a384  00 00 53 e3                                      cmp r3, #0
0042a388  08 00 00 0a                                      beq #0x42a3b0
0042a38c  c8 50 84 e2                                      add r5, r4, #0xc8
0042a390  05 00 a0 e1                                      mov r0, r5
0042a394  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
0042a398  e8 1d ff eb                                      bl #0x3f1b40
0042a39c  00 30 a0 e3                                      mov r3, #0
0042a3a0  d4 50 84 e5                                      str r5, [r4, #0xd4]
0042a3a4  d8 30 84 e5                                      str r3, [r4, #0xd8]
0042a3a8  d0 50 84 e5                                      str r5, [r4, #0xd0]
0042a3ac  cc 30 84 e5                                      str r3, [r4, #0xcc]
0042a3b0  04 00 a0 e1                                      mov r0, r4
0042a3b4  6e e1 ff eb                                      bl #0x422974
0042a3b8  04 00 a0 e1                                      mov r0, r4
0042a3bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a3c0  48 a7 56 00 d0 12 00 00                          .byte 0x48, 0xa7, 0x56, 0x00, 0xd0, 0x12, 0x00, 0x00

; FUNCTION 0x0042a3c8, declared_size=28, range_size=28, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUDD0Ev
; demangled: MenuDebugHUD::~MenuDebugHUD()
; decoder-mode: arm
0042a3c8  10 40 2d e9                                      push {r4, lr}
0042a3cc  00 40 a0 e1                                      mov r4, r0
0042a3d0  d9 ff ff eb                                      bl #0x42a33c
0042a3d4  04 00 a0 e1                                      mov r0, r4
0042a3d8  18 98 fb eb                                      bl #0x310440
0042a3dc  04 00 a0 e1                                      mov r0, r4
0042a3e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042a3e4, declared_size=140, range_size=140, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUDD2Ev
; demangled: MenuDebugHUD::~MenuDebugHUD()
; decoder-mode: arm
0042a3e4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0042a3e8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0042a3ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a3f0  03 30 8f e0                                      add r3, pc, r3
0042a3f4  02 20 93 e7                                      ldr r2, [r3, r2]
0042a3f8  00 40 a0 e1                                      mov r4, r0
0042a3fc  08 20 82 e2                                      add r2, r2, #8
0042a400  b8 21 80 e4                                      str r2, [r0], #0x1b8
0042a404  7c c1 ff eb                                      bl #0x41a9fc
0042a408  62 0f 84 e2                                      add r0, r4, #0x188
0042a40c  7a c1 ff eb                                      bl #0x41a9fc
0042a410  56 0f 84 e2                                      add r0, r4, #0x158
0042a414  78 c1 ff eb                                      bl #0x41a9fc
0042a418  4a 0f 84 e2                                      add r0, r4, #0x128
0042a41c  76 c1 ff eb                                      bl #0x41a9fc
0042a420  f8 00 84 e2                                      add r0, r4, #0xf8
0042a424  74 c1 ff eb                                      bl #0x41a9fc
0042a428  d8 30 94 e5                                      ldr r3, [r4, #0xd8]
0042a42c  00 00 53 e3                                      cmp r3, #0
0042a430  08 00 00 0a                                      beq #0x42a458
0042a434  c8 50 84 e2                                      add r5, r4, #0xc8
0042a438  05 00 a0 e1                                      mov r0, r5
0042a43c  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
0042a440  be 1d ff eb                                      bl #0x3f1b40
0042a444  00 30 a0 e3                                      mov r3, #0
0042a448  d4 50 84 e5                                      str r5, [r4, #0xd4]
0042a44c  d8 30 84 e5                                      str r3, [r4, #0xd8]
0042a450  d0 50 84 e5                                      str r5, [r4, #0xd0]
0042a454  cc 30 84 e5                                      str r3, [r4, #0xcc]
0042a458  04 00 a0 e1                                      mov r0, r4
0042a45c  44 e1 ff eb                                      bl #0x422974
0042a460  04 00 a0 e1                                      mov r0, r4
0042a464  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a468  a0 a6 56 00 d0 12 00 00                          .byte 0xa0, 0xa6, 0x56, 0x00, 0xd0, 0x12, 0x00, 0x00

; FUNCTION 0x0042a470, declared_size=140, range_size=140, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUDC1Ev
; demangled: MenuDebugHUD::MenuDebugHUD()
; decoder-mode: arm
0042a470  78 10 9f e5                                      ldr r1, [pc, #0x78]
0042a474  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a478  01 10 8f e0                                      add r1, pc, r1
0042a47c  70 50 9f e5                                      ldr r5, [pc, #0x70]
0042a480  00 40 a0 e1                                      mov r4, r0
0042a484  5d f3 ff eb                                      bl #0x427200
0042a488  68 10 9f e5                                      ldr r1, [pc, #0x68]
0042a48c  05 50 8f e0                                      add r5, pc, r5
0042a490  00 20 a0 e3                                      mov r2, #0
0042a494  01 10 95 e7                                      ldr r1, [r5, r1]
0042a498  04 30 a0 e1                                      mov r3, r4
0042a49c  cc 20 84 e5                                      str r2, [r4, #0xcc]
0042a4a0  08 10 81 e2                                      add r1, r1, #8
0042a4a4  00 10 84 e5                                      str r1, [r4]
0042a4a8  c8 20 e3 e5                                      strb r2, [r3, #0xc8]!
0042a4ac  d4 30 84 e5                                      str r3, [r4, #0xd4]
0042a4b0  d8 20 84 e5                                      str r2, [r4, #0xd8]
0042a4b4  d0 30 84 e5                                      str r3, [r4, #0xd0]
0042a4b8  f8 00 84 e2                                      add r0, r4, #0xf8
0042a4bc  8a c2 ff eb                                      bl #0x41aeec
0042a4c0  4a 0f 84 e2                                      add r0, r4, #0x128
0042a4c4  88 c2 ff eb                                      bl #0x41aeec
0042a4c8  56 0f 84 e2                                      add r0, r4, #0x158
0042a4cc  86 c2 ff eb                                      bl #0x41aeec
0042a4d0  62 0f 84 e2                                      add r0, r4, #0x188
0042a4d4  84 c2 ff eb                                      bl #0x41aeec
0042a4d8  6e 0f 84 e2                                      add r0, r4, #0x1b8
0042a4dc  82 c2 ff eb                                      bl #0x41aeec
0042a4e0  04 00 a0 e1                                      mov r0, r4
0042a4e4  98 fe ff eb                                      bl #0x429f4c
0042a4e8  04 00 a0 e1                                      mov r0, r4
0042a4ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a4f0  38 f5 49 00 04 a6 56 00 d0 12 00 00              .byte 0x38, 0xf5, 0x49, 0x00, 0x04, 0xa6, 0x56, 0x00, 0xd0, 0x12, 0x00, 0x00

; FUNCTION 0x0042a4fc, declared_size=136, range_size=136, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD11GetInstanceEv
; demangled: MenuDebugHUD::GetInstance()
; decoder-mode: arm
0042a4fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a500  68 50 9f e5                                      ldr r5, [pc, #0x68]
0042a504  68 40 9f e5                                      ldr r4, [pc, #0x68]
0042a508  05 50 8f e0                                      add r5, pc, r5
0042a50c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0042a510  04 40 8f e0                                      add r4, pc, r4
0042a514  01 00 13 e3                                      tst r3, #1
0042a518  03 00 00 0a                                      beq #0x42a52c
0042a51c  54 00 9f e5                                      ldr r0, [pc, #0x54]
0042a520  00 00 8f e0                                      add r0, pc, r0
0042a524  10 00 80 e2                                      add r0, r0, #0x10
0042a528  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042a52c  0c 60 85 e2                                      add r6, r5, #0xc
0042a530  06 00 a0 e1                                      mov r0, r6
0042a534  8c 90 fb eb                                      bl #0x30e76c
0042a538  00 00 50 e3                                      cmp r0, #0
0042a53c  f6 ff ff 0a                                      beq #0x42a51c
0042a540  10 50 85 e2                                      add r5, r5, #0x10
0042a544  05 00 a0 e1                                      mov r0, r5
0042a548  c8 ff ff eb                                      bl #0x42a470
0042a54c  06 00 a0 e1                                      mov r0, r6
0042a550  39 91 fb eb                                      bl #0x30ea3c
0042a554  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042a558  05 00 a0 e1                                      mov r0, r5
0042a55c  03 10 94 e7                                      ldr r1, [r4, r3]
0042a560  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042a564  03 20 94 e7                                      ldr r2, [r4, r3]
0042a568  65 8f fb eb                                      bl #0x30e304
0042a56c  ea ff ff ea                                      b #0x42a51c
; mapping-symbol data/literal pool
0042a570  68 a5 57 00 80 a5 56 00 50 a5 57 00 a0 29 00 00  .byte 0x68, 0xa5, 0x57, 0x00, 0x80, 0xa5, 0x56, 0x00, 0x50, 0xa5, 0x57, 0x00, 0xa0, 0x29, 0x00, 0x00
0042a580  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0042a584, declared_size=140, range_size=140, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUDC2Ev
; demangled: MenuDebugHUD::MenuDebugHUD()
; decoder-mode: arm
0042a584  78 10 9f e5                                      ldr r1, [pc, #0x78]
0042a588  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a58c  01 10 8f e0                                      add r1, pc, r1
0042a590  70 50 9f e5                                      ldr r5, [pc, #0x70]
0042a594  00 40 a0 e1                                      mov r4, r0
0042a598  18 f3 ff eb                                      bl #0x427200
0042a59c  68 10 9f e5                                      ldr r1, [pc, #0x68]
0042a5a0  05 50 8f e0                                      add r5, pc, r5
0042a5a4  00 20 a0 e3                                      mov r2, #0
0042a5a8  01 10 95 e7                                      ldr r1, [r5, r1]
0042a5ac  04 30 a0 e1                                      mov r3, r4
0042a5b0  cc 20 84 e5                                      str r2, [r4, #0xcc]
0042a5b4  08 10 81 e2                                      add r1, r1, #8
0042a5b8  00 10 84 e5                                      str r1, [r4]
0042a5bc  c8 20 e3 e5                                      strb r2, [r3, #0xc8]!
0042a5c0  d4 30 84 e5                                      str r3, [r4, #0xd4]
0042a5c4  d8 20 84 e5                                      str r2, [r4, #0xd8]
0042a5c8  d0 30 84 e5                                      str r3, [r4, #0xd0]
0042a5cc  f8 00 84 e2                                      add r0, r4, #0xf8
0042a5d0  45 c2 ff eb                                      bl #0x41aeec
0042a5d4  4a 0f 84 e2                                      add r0, r4, #0x128
0042a5d8  43 c2 ff eb                                      bl #0x41aeec
0042a5dc  56 0f 84 e2                                      add r0, r4, #0x158
0042a5e0  41 c2 ff eb                                      bl #0x41aeec
0042a5e4  62 0f 84 e2                                      add r0, r4, #0x188
0042a5e8  3f c2 ff eb                                      bl #0x41aeec
0042a5ec  6e 0f 84 e2                                      add r0, r4, #0x1b8
0042a5f0  3d c2 ff eb                                      bl #0x41aeec
0042a5f4  04 00 a0 e1                                      mov r0, r4
0042a5f8  53 fe ff eb                                      bl #0x429f4c
0042a5fc  04 00 a0 e1                                      mov r0, r4
0042a600  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042a604  24 f4 49 00 f0 a4 56 00 d0 12 00 00              .byte 0x24, 0xf4, 0x49, 0x00, 0xf0, 0xa4, 0x56, 0x00, 0xd0, 0x12, 0x00, 0x00

; FUNCTION 0x0042a738, declared_size=120, range_size=120, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD14HideHugeNumberEv
; demangled: MenuDebugHUD::HideHugeNumber()
; decoder-mode: arm
0042a738  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a73c  04 30 90 e5                                      ldr r3, [r0, #4]
0042a740  00 40 a0 e1                                      mov r4, r0
0042a744  00 00 53 e3                                      cmp r3, #0
0042a748  0d 00 00 0a                                      beq #0x42a784
0042a74c  54 31 90 e5                                      ldr r3, [r0, #0x154]
0042a750  00 00 53 e3                                      cmp r3, #0
0042a754  0a 00 00 0a                                      beq #0x42a784
0042a758  50 01 90 e5                                      ldr r0, [r0, #0x150]
0042a75c  04 30 d0 e5                                      ldrb r3, [r0, #4]
0042a760  00 00 53 e3                                      cmp r3, #0
0042a764  07 00 00 0a                                      beq #0x42a788
0042a768  4a 0f 84 e2                                      add r0, r4, #0x128
0042a76c  77 f5 ff eb                                      bl #0x427d50
0042a770  00 50 a0 e3                                      mov r5, #0
0042a774  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0042a778  56 0f 84 e2                                      add r0, r4, #0x158
0042a77c  73 f5 ff eb                                      bl #0x427d50
0042a780  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0042a784  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042a788  00 10 90 e5                                      ldr r1, [r0]
0042a78c  01 10 41 e2                                      sub r1, r1, #1
0042a790  00 00 51 e3                                      cmp r1, #0
0042a794  00 10 80 e5                                      str r1, [r0]
0042a798  00 00 00 1a                                      bne #0x42a7a0
0042a79c  e5 a0 0c eb                                      bl #0x752b38
0042a7a0  00 30 a0 e3                                      mov r3, #0
0042a7a4  54 31 84 e5                                      str r3, [r4, #0x154]
0042a7a8  50 31 84 e5                                      str r3, [r4, #0x150]
0042a7ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042a7b0, declared_size=164, range_size=164, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD17DisplayHugeNumberEi
; demangled: MenuDebugHUD::DisplayHugeNumber(int)
; decoder-mode: arm
0042a7b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0042a7b4  04 50 90 e5                                      ldr r5, [r0, #4]
0042a7b8  00 40 a0 e1                                      mov r4, r0
0042a7bc  01 70 a0 e1                                      mov r7, r1
0042a7c0  00 00 55 e3                                      cmp r5, #0
0042a7c4  16 00 00 0a                                      beq #0x42a824
0042a7c8  54 31 90 e5                                      ldr r3, [r0, #0x154]
0042a7cc  00 00 53 e3                                      cmp r3, #0
0042a7d0  13 00 00 0a                                      beq #0x42a824
0042a7d4  50 01 90 e5                                      ldr r0, [r0, #0x150]
0042a7d8  04 30 d0 e5                                      ldrb r3, [r0, #4]
0042a7dc  00 00 53 e3                                      cmp r3, #0
0042a7e0  10 00 00 0a                                      beq #0x42a828
0042a7e4  4a 6f 84 e2                                      add r6, r4, #0x128
0042a7e8  06 00 a0 e1                                      mov r0, r6
0042a7ec  57 f5 ff eb                                      bl #0x427d50
0042a7f0  58 20 9f e5                                      ldr r2, [pc, #0x58]
0042a7f4  00 10 a0 e1                                      mov r1, r0
0042a7f8  07 30 a0 e1                                      mov r3, r7
0042a7fc  02 20 8f e0                                      add r2, pc, r2
0042a800  05 00 a0 e1                                      mov r0, r5
0042a804  34 fb 0d eb                                      bl #0x7a94dc
0042a808  06 00 a0 e1                                      mov r0, r6
0042a80c  4f f5 ff eb                                      bl #0x427d50
0042a810  01 50 a0 e3                                      mov r5, #1
0042a814  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0042a818  56 0f 84 e2                                      add r0, r4, #0x158
0042a81c  4b f5 ff eb                                      bl #0x427d50
0042a820  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0042a824  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0042a828  00 10 90 e5                                      ldr r1, [r0]
0042a82c  01 10 41 e2                                      sub r1, r1, #1
0042a830  00 00 51 e3                                      cmp r1, #0
0042a834  00 10 80 e5                                      str r1, [r0]
0042a838  00 00 00 1a                                      bne #0x42a840
0042a83c  bd a0 0c eb                                      bl #0x752b38
0042a840  00 30 a0 e3                                      mov r3, #0
0042a844  54 31 84 e5                                      str r3, [r4, #0x154]
0042a848  50 31 84 e5                                      str r3, [r4, #0x150]
0042a84c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0042a850  b4 76 49 00                                      .byte 0xb4, 0x76, 0x49, 0x00

; FUNCTION 0x0042a854, declared_size=108, range_size=108, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD29SetDisplaySealOfFreshnessFAILEb
; demangled: MenuDebugHUD::SetDisplaySealOfFreshnessFAIL(bool)
; decoder-mode: arm
0042a854  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a858  04 30 90 e5                                      ldr r3, [r0, #4]
0042a85c  00 40 a0 e1                                      mov r4, r0
0042a860  01 50 a0 e1                                      mov r5, r1
0042a864  00 00 53 e3                                      cmp r3, #0
0042a868  09 00 00 0a                                      beq #0x42a894
0042a86c  e4 31 90 e5                                      ldr r3, [r0, #0x1e4]
0042a870  00 00 53 e3                                      cmp r3, #0
0042a874  06 00 00 0a                                      beq #0x42a894
0042a878  e0 01 90 e5                                      ldr r0, [r0, #0x1e0]
0042a87c  04 30 d0 e5                                      ldrb r3, [r0, #4]
0042a880  00 00 53 e3                                      cmp r3, #0
0042a884  03 00 00 0a                                      beq #0x42a898
0042a888  6e 0f 84 e2                                      add r0, r4, #0x1b8
0042a88c  2f f5 ff eb                                      bl #0x427d50
0042a890  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0042a894  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042a898  00 10 90 e5                                      ldr r1, [r0]
0042a89c  01 10 41 e2                                      sub r1, r1, #1
0042a8a0  00 00 51 e3                                      cmp r1, #0
0042a8a4  00 10 80 e5                                      str r1, [r0]
0042a8a8  00 00 00 1a                                      bne #0x42a8b0
0042a8ac  a1 a0 0c eb                                      bl #0x752b38
0042a8b0  00 30 a0 e3                                      mov r3, #0
0042a8b4  e4 31 84 e5                                      str r3, [r4, #0x1e4]
0042a8b8  e0 31 84 e5                                      str r3, [r4, #0x1e0]
0042a8bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042a8c0, declared_size=108, range_size=108, mode=arm
; class-group: MenuDebugHUD
; alias: _ZN12MenuDebugHUD25SetDisplaySealOfFreshnessEb
; demangled: MenuDebugHUD::SetDisplaySealOfFreshness(bool)
; decoder-mode: arm
0042a8c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a8c4  04 30 90 e5                                      ldr r3, [r0, #4]
0042a8c8  00 40 a0 e1                                      mov r4, r0
0042a8cc  01 50 a0 e1                                      mov r5, r1
0042a8d0  00 00 53 e3                                      cmp r3, #0
0042a8d4  09 00 00 0a                                      beq #0x42a900
0042a8d8  b4 31 90 e5                                      ldr r3, [r0, #0x1b4]
0042a8dc  00 00 53 e3                                      cmp r3, #0
0042a8e0  06 00 00 0a                                      beq #0x42a900
0042a8e4  b0 01 90 e5                                      ldr r0, [r0, #0x1b0]
0042a8e8  04 30 d0 e5                                      ldrb r3, [r0, #4]
0042a8ec  00 00 53 e3                                      cmp r3, #0
0042a8f0  03 00 00 0a                                      beq #0x42a904
0042a8f4  62 0f 84 e2                                      add r0, r4, #0x188
0042a8f8  14 f5 ff eb                                      bl #0x427d50
0042a8fc  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0042a900  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042a904  00 10 90 e5                                      ldr r1, [r0]
0042a908  01 10 41 e2                                      sub r1, r1, #1
0042a90c  00 00 51 e3                                      cmp r1, #0
0042a910  00 10 80 e5                                      str r1, [r0]
0042a914  00 00 00 1a                                      bne #0x42a91c
0042a918  86 a0 0c eb                                      bl #0x752b38
0042a91c  00 30 a0 e3                                      mov r3, #0
0042a920  b4 31 84 e5                                      str r3, [r4, #0x1b4]
0042a924  b0 31 84 e5                                      str r3, [r4, #0x1b0]
0042a928  70 80 bd e8                                      pop {r4, r5, r6, pc}
