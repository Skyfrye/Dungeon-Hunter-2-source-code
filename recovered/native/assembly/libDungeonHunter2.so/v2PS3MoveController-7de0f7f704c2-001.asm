; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004098ac, declared_size=4, range_size=4, mode=arm
; class-group: v2PS3MoveController
; alias: _ZN19v2PS3MoveControllerD2Ev
; demangled: v2PS3MoveController::~v2PS3MoveController()
; decoder-mode: arm
004098ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x004098b0, declared_size=4, range_size=4, mode=arm
; class-group: v2PS3MoveController
; alias: _ZN19v2PS3MoveControllerD1Ev
; demangled: v2PS3MoveController::~v2PS3MoveController()
; decoder-mode: arm
004098b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004098b4, declared_size=28, range_size=28, mode=arm
; class-group: v2PS3MoveController
; alias: _ZN19v2PS3MoveControllerD0Ev
; demangled: v2PS3MoveController::~v2PS3MoveController()
; decoder-mode: arm
004098b4  10 40 2d e9                                      push {r4, lr}
004098b8  00 40 a0 e1                                      mov r4, r0
004098bc  fb ff ff eb                                      bl #0x4098b0
004098c0  04 00 a0 e1                                      mov r0, r4
004098c4  dd 1a fc eb                                      bl #0x310440
004098c8  04 00 a0 e1                                      mov r0, r4
004098cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004098d0, declared_size=236, range_size=236, mode=arm
; class-group: v2PS3MoveController
; alias: _ZN19v2PS3MoveControllerC1EP14v2Controllablei
; demangled: v2PS3MoveController::v2PS3MoveController(v2Controllable*, int)
; decoder-mode: arm
004098d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004098d4  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004098d8  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
004098dc  00 40 a0 e1                                      mov r4, r0
004098e0  05 50 8f e0                                      add r5, pc, r5
004098e4  03 30 95 e7                                      ldr r3, [r5, r3]
004098e8  00 00 a0 e3                                      mov r0, #0
004098ec  00 00 51 e3                                      cmp r1, #0
004098f0  08 30 83 e2                                      add r3, r3, #8
004098f4  08 d0 4d e2                                      sub sp, sp, #8
004098f8  00 30 84 e5                                      str r3, [r4]
004098fc  0c 00 84 e5                                      str r0, [r4, #0xc]
00409900  02 60 a0 e1                                      mov r6, r2
00409904  04 10 84 e5                                      str r1, [r4, #4]
00409908  08 00 c4 e5                                      strb r0, [r4, #8]
0040990c  09 00 c4 e5                                      strb r0, [r4, #9]
00409910  0a 00 c4 e5                                      strb r0, [r4, #0xa]
00409914  0b 00 00 0a                                      beq #0x409948
00409918  84 20 9f e5                                      ldr r2, [pc, #0x84]
0040991c  00 30 a0 e3                                      mov r3, #0
00409920  10 60 84 e5                                      str r6, [r4, #0x10]
00409924  02 20 95 e7                                      ldr r2, [r5, r2]
00409928  1c 30 84 e5                                      str r3, [r4, #0x1c]
0040992c  14 30 84 e5                                      str r3, [r4, #0x14]
00409930  08 20 82 e2                                      add r2, r2, #8
00409934  00 20 84 e5                                      str r2, [r4]
00409938  18 30 84 e5                                      str r3, [r4, #0x18]
0040993c  04 00 a0 e1                                      mov r0, r4
00409940  08 d0 8d e2                                      add sp, sp, #8
00409944  70 80 bd e8                                      pop {r4, r5, r6, pc}
00409948  58 30 9f e5                                      ldr r3, [pc, #0x58]
0040994c  03 30 95 e7                                      ldr r3, [r5, r3]
00409950  00 30 93 e5                                      ldr r3, [r3]
00409954  02 00 53 e3                                      cmp r3, #2
00409958  00 10 81 05                                      streq r1, [r1]
0040995c  ed ff ff 0a                                      beq #0x409918
00409960  01 00 53 e3                                      cmp r3, #1
00409964  eb ff ff 1a                                      bne #0x409918
00409968  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0040996c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00409970  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00409974  00 00 95 e7                                      ldr r0, [r5, r0]
00409978  38 30 9f e5                                      ldr r3, [pc, #0x38]
0040997c  44 c0 a0 e3                                      mov ip, #0x44
00409980  01 10 8f e0                                      add r1, pc, r1
00409984  02 20 8f e0                                      add r2, pc, r2
00409988  03 30 8f e0                                      add r3, pc, r3
0040998c  a8 00 80 e2                                      add r0, r0, #0xa8
00409990  00 c0 8d e5                                      str ip, [sp]
00409994  9a 11 fc eb                                      bl #0x30e004
00409998  de ff ff ea                                      b #0x409918
; mapping-symbol data/literal pool
0040999c  b0 b1 58 00 a4 2a 00 00 10 2c 00 00 c0 39 00 00  .byte 0xb0, 0xb1, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0x10, 0x2c, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
004099ac  c0 19 00 00 58 4a 4b 00 3c 9b 4b 00 50 e0 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x58, 0x4a, 0x4b, 0x00, 0x3c, 0x9b, 0x4b, 0x00, 0x50, 0xe0, 0x4b, 0x00

; FUNCTION 0x004099bc, declared_size=236, range_size=236, mode=arm
; class-group: v2PS3MoveController
; alias: _ZN19v2PS3MoveControllerC2EP14v2Controllablei
; demangled: v2PS3MoveController::v2PS3MoveController(v2Controllable*, int)
; decoder-mode: arm
004099bc  70 40 2d e9                                      push {r4, r5, r6, lr}
004099c0  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004099c4  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
004099c8  00 40 a0 e1                                      mov r4, r0
004099cc  05 50 8f e0                                      add r5, pc, r5
004099d0  03 30 95 e7                                      ldr r3, [r5, r3]
004099d4  00 00 a0 e3                                      mov r0, #0
004099d8  00 00 51 e3                                      cmp r1, #0
004099dc  08 30 83 e2                                      add r3, r3, #8
004099e0  08 d0 4d e2                                      sub sp, sp, #8
004099e4  00 30 84 e5                                      str r3, [r4]
004099e8  0c 00 84 e5                                      str r0, [r4, #0xc]
004099ec  02 60 a0 e1                                      mov r6, r2
004099f0  04 10 84 e5                                      str r1, [r4, #4]
004099f4  08 00 c4 e5                                      strb r0, [r4, #8]
004099f8  09 00 c4 e5                                      strb r0, [r4, #9]
004099fc  0a 00 c4 e5                                      strb r0, [r4, #0xa]
00409a00  0b 00 00 0a                                      beq #0x409a34
00409a04  84 20 9f e5                                      ldr r2, [pc, #0x84]
00409a08  00 30 a0 e3                                      mov r3, #0
00409a0c  10 60 84 e5                                      str r6, [r4, #0x10]
00409a10  02 20 95 e7                                      ldr r2, [r5, r2]
00409a14  1c 30 84 e5                                      str r3, [r4, #0x1c]
00409a18  14 30 84 e5                                      str r3, [r4, #0x14]
00409a1c  08 20 82 e2                                      add r2, r2, #8
00409a20  00 20 84 e5                                      str r2, [r4]
00409a24  18 30 84 e5                                      str r3, [r4, #0x18]
00409a28  04 00 a0 e1                                      mov r0, r4
00409a2c  08 d0 8d e2                                      add sp, sp, #8
00409a30  70 80 bd e8                                      pop {r4, r5, r6, pc}
00409a34  58 30 9f e5                                      ldr r3, [pc, #0x58]
00409a38  03 30 95 e7                                      ldr r3, [r5, r3]
00409a3c  00 30 93 e5                                      ldr r3, [r3]
00409a40  02 00 53 e3                                      cmp r3, #2
00409a44  00 10 81 05                                      streq r1, [r1]
00409a48  ed ff ff 0a                                      beq #0x409a04
00409a4c  01 00 53 e3                                      cmp r3, #1
00409a50  eb ff ff 1a                                      bne #0x409a04
00409a54  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00409a58  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00409a5c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00409a60  00 00 95 e7                                      ldr r0, [r5, r0]
00409a64  38 30 9f e5                                      ldr r3, [pc, #0x38]
00409a68  44 c0 a0 e3                                      mov ip, #0x44
00409a6c  01 10 8f e0                                      add r1, pc, r1
00409a70  02 20 8f e0                                      add r2, pc, r2
00409a74  03 30 8f e0                                      add r3, pc, r3
00409a78  a8 00 80 e2                                      add r0, r0, #0xa8
00409a7c  00 c0 8d e5                                      str ip, [sp]
00409a80  5f 11 fc eb                                      bl #0x30e004
00409a84  de ff ff ea                                      b #0x409a04
; mapping-symbol data/literal pool
00409a88  c4 b0 58 00 a4 2a 00 00 10 2c 00 00 c0 39 00 00  .byte 0xc4, 0xb0, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0x10, 0x2c, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00409a98  c0 19 00 00 6c 49 4b 00 50 9a 4b 00 64 df 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x6c, 0x49, 0x4b, 0x00, 0x50, 0x9a, 0x4b, 0x00, 0x64, 0xdf, 0x4b, 0x00

; FUNCTION 0x00409bd8, declared_size=2864, range_size=2864, mode=arm
; class-group: v2PS3MoveController
; alias: _ZN19v2PS3MoveController6UpdateEv
; demangled: v2PS3MoveController::Update()
; decoder-mode: arm
00409bd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00409bdc  f0 5a 9f e5                                      ldr r5, [pc, #0xaf0]
00409be0  f0 7a 9f e5                                      ldr r7, [pc, #0xaf0]
00409be4  53 df 4d e2                                      sub sp, sp, #0x14c
00409be8  05 50 8f e0                                      add r5, pc, r5
00409bec  07 30 95 e7                                      ldr r3, [r5, r7]
00409bf0  00 60 a0 e1                                      mov r6, r0
00409bf4  00 30 93 e5                                      ldr r3, [r3]
00409bf8  44 31 8d e5                                      str r3, [sp, #0x144]
00409bfc  68 10 fd eb                                      bl #0x34dda4
00409c00  10 80 96 e5                                      ldr r8, [r6, #0x10]
00409c04  00 40 a0 e1                                      mov r4, r0
00409c08  d1 0e fd eb                                      bl #0x34d754
00409c0c  00 00 58 e1                                      cmp r8, r0
00409c10  19 01 00 aa                                      bge #0x40a07c
00409c14  10 10 96 e5                                      ldr r1, [r6, #0x10]
00409c18  00 00 51 e3                                      cmp r1, #0
00409c1c  e4 01 00 ba                                      blt #0x40a3b4
00409c20  04 00 a0 e1                                      mov r0, r4
00409c24  00 30 94 e5                                      ldr r3, [r4]
00409c28  0f e0 a0 e1                                      mov lr, pc
00409c2c  08 f0 93 e5                                      ldr pc, [r3, #8]
00409c30  00 40 a0 e1                                      mov r4, r0
00409c34  00 00 54 e3                                      cmp r4, #0
00409c38  0f 01 00 0a                                      beq #0x40a07c
00409c3c  d0 13 94 e5                                      ldr r1, [r4, #0x3d0]
00409c40  d4 03 94 e5                                      ldr r0, [r4, #0x3d4]
00409c44  d6 13 fc eb                                      bl #0x30eba4
00409c48  fe 15 a0 e3                                      mov r1, #0x3f800000
00409c4c  d4 13 fc eb                                      bl #0x30eba4
00409c50  3f 14 a0 e3                                      mov r1, #0x3f000000
00409c54  44 14 fc eb                                      bl #0x30ed6c
00409c58  00 10 a0 e1                                      mov r1, r0
00409c5c  cc 03 94 e5                                      ldr r0, [r4, #0x3cc]
00409c60  13 12 fc eb                                      bl #0x30e4b4
00409c64  00 00 50 e3                                      cmp r0, #0
00409c68  52 01 00 1a                                      bne #0x40a1b8
00409c6c  68 aa 9f e5                                      ldr sl, [pc, #0xa68]
00409c70  e0 13 94 e5                                      ldr r1, [r4, #0x3e0]
00409c74  e4 03 94 e5                                      ldr r0, [r4, #0x3e4]
00409c78  c9 13 fc eb                                      bl #0x30eba4
00409c7c  fe 15 a0 e3                                      mov r1, #0x3f800000
00409c80  c7 13 fc eb                                      bl #0x30eba4
00409c84  3f 14 a0 e3                                      mov r1, #0x3f000000
00409c88  37 14 fc eb                                      bl #0x30ed6c
00409c8c  00 10 a0 e1                                      mov r1, r0
00409c90  d8 03 94 e5                                      ldr r0, [r4, #0x3d8]
00409c94  06 12 fc eb                                      bl #0x30e4b4
00409c98  00 00 50 e3                                      cmp r0, #0
00409c9c  02 00 00 1a                                      bne #0x409cac
00409ca0  e8 33 d4 e5                                      ldrb r3, [r4, #0x3e8]
00409ca4  00 00 53 e3                                      cmp r3, #0
00409ca8  1e 02 00 1a                                      bne #0x40a528
00409cac  50 13 94 e5                                      ldr r1, [r4, #0x350]
00409cb0  54 03 94 e5                                      ldr r0, [r4, #0x354]
00409cb4  ba 13 fc eb                                      bl #0x30eba4
00409cb8  fe 15 a0 e3                                      mov r1, #0x3f800000
00409cbc  b8 13 fc eb                                      bl #0x30eba4
00409cc0  3f 14 a0 e3                                      mov r1, #0x3f000000
00409cc4  28 14 fc eb                                      bl #0x30ed6c
00409cc8  00 10 a0 e1                                      mov r1, r0
00409ccc  4c 03 94 e5                                      ldr r0, [r4, #0x34c]
00409cd0  f7 11 fc eb                                      bl #0x30e4b4
00409cd4  00 00 50 e3                                      cmp r0, #0
00409cd8  4f 02 00 1a                                      bne #0x40a61c
00409cdc  0c 80 96 e5                                      ldr r8, [r6, #0xc]
00409ce0  00 00 58 e3                                      cmp r8, #0
00409ce4  5c 00 00 0a                                      beq #0x409e5c
00409ce8  00 10 a0 e3                                      mov r1, #0
00409cec  08 00 a0 e1                                      mov r0, r8
00409cf0  5c c8 fe eb                                      bl #0x3bbe68
00409cf4  01 10 a0 e3                                      mov r1, #1
00409cf8  00 b0 a0 e1                                      mov fp, r0
00409cfc  08 00 a0 e1                                      mov r0, r8
00409d00  58 c8 fe eb                                      bl #0x3bbe68
00409d04  02 10 a0 e3                                      mov r1, #2
00409d08  00 90 a0 e1                                      mov sb, r0
00409d0c  08 00 a0 e1                                      mov r0, r8
00409d10  54 c8 fe eb                                      bl #0x3bbe68
00409d14  01 00 7b e3                                      cmn fp, #1
00409d18  00 80 a0 e1                                      mov r8, r0
00409d1c  11 00 00 0a                                      beq #0x409d68
00409d20  40 13 94 e5                                      ldr r1, [r4, #0x340]
00409d24  44 03 94 e5                                      ldr r0, [r4, #0x344]
00409d28  9d 13 fc eb                                      bl #0x30eba4
00409d2c  fe 15 a0 e3                                      mov r1, #0x3f800000
00409d30  9b 13 fc eb                                      bl #0x30eba4
00409d34  3f 14 a0 e3                                      mov r1, #0x3f000000
00409d38  0b 14 fc eb                                      bl #0x30ed6c
00409d3c  00 10 a0 e1                                      mov r1, r0
00409d40  38 03 94 e5                                      ldr r0, [r4, #0x338]
00409d44  da 11 fc eb                                      bl #0x30e4b4
00409d48  00 00 50 e3                                      cmp r0, #0
00409d4c  e7 01 00 0a                                      beq #0x40a4f0
00409d50  48 33 d4 e5                                      ldrb r3, [r4, #0x348]
00409d54  00 00 53 e3                                      cmp r3, #0
00409d58  02 00 00 1a                                      bne #0x409d68
00409d5c  0b 10 a0 e1                                      mov r1, fp
00409d60  06 00 a0 e1                                      mov r0, r6
00409d64  2d ef ff eb                                      bl #0x405a20
00409d68  01 00 79 e3                                      cmn sb, #1
00409d6c  11 00 00 0a                                      beq #0x409db8
00409d70  a0 13 94 e5                                      ldr r1, [r4, #0x3a0]
00409d74  a4 03 94 e5                                      ldr r0, [r4, #0x3a4]
00409d78  89 13 fc eb                                      bl #0x30eba4
00409d7c  fe 15 a0 e3                                      mov r1, #0x3f800000
00409d80  87 13 fc eb                                      bl #0x30eba4
00409d84  3f 14 a0 e3                                      mov r1, #0x3f000000
00409d88  f7 13 fc eb                                      bl #0x30ed6c
00409d8c  00 10 a0 e1                                      mov r1, r0
00409d90  98 03 94 e5                                      ldr r0, [r4, #0x398]
00409d94  c6 11 fc eb                                      bl #0x30e4b4
00409d98  00 00 50 e3                                      cmp r0, #0
00409d9c  cc 01 00 0a                                      beq #0x40a4d4
00409da0  a8 33 d4 e5                                      ldrb r3, [r4, #0x3a8]
00409da4  00 00 53 e3                                      cmp r3, #0
00409da8  02 00 00 1a                                      bne #0x409db8
00409dac  09 10 a0 e1                                      mov r1, sb
00409db0  06 00 a0 e1                                      mov r0, r6
00409db4  19 ef ff eb                                      bl #0x405a20
00409db8  01 00 78 e3                                      cmn r8, #1
00409dbc  11 00 00 0a                                      beq #0x409e08
00409dc0  80 13 94 e5                                      ldr r1, [r4, #0x380]
00409dc4  84 03 94 e5                                      ldr r0, [r4, #0x384]
00409dc8  75 13 fc eb                                      bl #0x30eba4
00409dcc  fe 15 a0 e3                                      mov r1, #0x3f800000
00409dd0  73 13 fc eb                                      bl #0x30eba4
00409dd4  3f 14 a0 e3                                      mov r1, #0x3f000000
00409dd8  e3 13 fc eb                                      bl #0x30ed6c
00409ddc  00 10 a0 e1                                      mov r1, r0
00409de0  78 03 94 e5                                      ldr r0, [r4, #0x378]
00409de4  b2 11 fc eb                                      bl #0x30e4b4
00409de8  00 00 50 e3                                      cmp r0, #0
00409dec  c6 01 00 0a                                      beq #0x40a50c
00409df0  88 33 d4 e5                                      ldrb r3, [r4, #0x388]
00409df4  00 00 53 e3                                      cmp r3, #0
00409df8  02 00 00 1a                                      bne #0x409e08
00409dfc  08 10 a0 e1                                      mov r1, r8
00409e00  06 00 a0 e1                                      mov r0, r6
00409e04  05 ef ff eb                                      bl #0x405a20
00409e08  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00409e0c  00 00 53 e3                                      cmp r3, #0
00409e10  11 00 00 0a                                      beq #0x409e5c
00409e14  c4 38 9f e5                                      ldr r3, [pc, #0x8c4]
00409e18  45 8f 8d e2                                      add r8, sp, #0x114
00409e1c  03 90 95 e7                                      ldr sb, [r5, r3]
00409e20  09 00 a0 e1                                      mov r0, sb
00409e24  97 b6 fc eb                                      bl #0x337888
00409e28  b4 18 9f e5                                      ldr r1, [pc, #0x8b4]
00409e2c  f4 20 8d e2                                      add r2, sp, #0xf4
00409e30  08 00 a0 e1                                      mov r0, r8
00409e34  01 10 8f e0                                      add r1, pc, r1
00409e38  ab 28 fc eb                                      bl #0x3140ec
00409e3c  09 00 a0 e1                                      mov r0, sb
00409e40  08 10 a0 e1                                      mov r1, r8
00409e44  0f b7 fc eb                                      bl #0x337a88
00409e48  00 90 a0 e1                                      mov sb, r0
00409e4c  08 00 a0 e1                                      mov r0, r8
00409e50  ff 38 fc eb                                      bl #0x318254
00409e54  00 00 59 e3                                      cmp sb, #0
00409e58  59 01 00 1a                                      bne #0x40a3c4
00409e5c  a0 14 94 e5                                      ldr r1, [r4, #0x4a0]
00409e60  a4 04 94 e5                                      ldr r0, [r4, #0x4a4]
00409e64  4e 13 fc eb                                      bl #0x30eba4
00409e68  fe 15 a0 e3                                      mov r1, #0x3f800000
00409e6c  4c 13 fc eb                                      bl #0x30eba4
00409e70  3f 14 a0 e3                                      mov r1, #0x3f000000
00409e74  bc 13 fc eb                                      bl #0x30ed6c
00409e78  00 10 a0 e1                                      mov r1, r0
00409e7c  98 04 94 e5                                      ldr r0, [r4, #0x498]
00409e80  8b 11 fc eb                                      bl #0x30e4b4
00409e84  00 00 50 e3                                      cmp r0, #0
00409e88  16 00 00 0a                                      beq #0x409ee8
00409e8c  a8 34 d4 e5                                      ldrb r3, [r4, #0x4a8]
00409e90  00 00 53 e3                                      cmp r3, #0
00409e94  13 00 00 1a                                      bne #0x409ee8
00409e98  40 38 9f e5                                      ldr r3, [pc, #0x840]
00409e9c  fc 80 8d e2                                      add r8, sp, #0xfc
00409ea0  03 90 95 e7                                      ldr sb, [r5, r3]
00409ea4  09 00 a0 e1                                      mov r0, sb
00409ea8  76 b6 fc eb                                      bl #0x337888
00409eac  34 18 9f e5                                      ldr r1, [pc, #0x834]
00409eb0  f0 20 8d e2                                      add r2, sp, #0xf0
00409eb4  08 00 a0 e1                                      mov r0, r8
00409eb8  01 10 8f e0                                      add r1, pc, r1
00409ebc  8a 28 fc eb                                      bl #0x3140ec
00409ec0  09 00 a0 e1                                      mov r0, sb
00409ec4  08 10 a0 e1                                      mov r1, r8
00409ec8  ee b6 fc eb                                      bl #0x337a88
00409ecc  00 90 a0 e1                                      mov sb, r0
00409ed0  08 00 a0 e1                                      mov r0, r8
00409ed4  de 38 fc eb                                      bl #0x318254
00409ed8  00 00 59 e3                                      cmp sb, #0
00409edc  01 00 00 0a                                      beq #0x409ee8
00409ee0  06 00 a0 e1                                      mov r0, r6
00409ee4  f1 ed ff eb                                      bl #0x4056b0
00409ee8  c0 13 94 e5                                      ldr r1, [r4, #0x3c0]
00409eec  c4 03 94 e5                                      ldr r0, [r4, #0x3c4]
00409ef0  2b 13 fc eb                                      bl #0x30eba4
00409ef4  fe 15 a0 e3                                      mov r1, #0x3f800000
00409ef8  29 13 fc eb                                      bl #0x30eba4
00409efc  3f 14 a0 e3                                      mov r1, #0x3f000000
00409f00  99 13 fc eb                                      bl #0x30ed6c
00409f04  00 10 a0 e1                                      mov r1, r0
00409f08  b8 03 94 e5                                      ldr r0, [r4, #0x3b8]
00409f0c  68 11 fc eb                                      bl #0x30e4b4
00409f10  00 00 50 e3                                      cmp r0, #0
00409f14  0c 01 00 1a                                      bne #0x40a34c
00409f18  c8 33 d4 e5                                      ldrb r3, [r4, #0x3c8]
00409f1c  00 00 53 e3                                      cmp r3, #0
00409f20  b1 01 00 1a                                      bne #0x40a5ec
00409f24  00 14 94 e5                                      ldr r1, [r4, #0x400]
00409f28  04 04 94 e5                                      ldr r0, [r4, #0x404]
00409f2c  1c 13 fc eb                                      bl #0x30eba4
00409f30  fe 15 a0 e3                                      mov r1, #0x3f800000
00409f34  1a 13 fc eb                                      bl #0x30eba4
00409f38  3f 14 a0 e3                                      mov r1, #0x3f000000
00409f3c  8a 13 fc eb                                      bl #0x30ed6c
00409f40  00 10 a0 e1                                      mov r1, r0
00409f44  f8 03 94 e5                                      ldr r0, [r4, #0x3f8]
00409f48  59 11 fc eb                                      bl #0x30e4b4
00409f4c  00 00 50 e3                                      cmp r0, #0
00409f50  02 00 00 1a                                      bne #0x409f60
00409f54  08 34 d4 e5                                      ldrb r3, [r4, #0x408]
00409f58  00 00 53 e3                                      cmp r3, #0
00409f5c  87 01 00 1a                                      bne #0x40a580
00409f60  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00409f64  00 00 51 e3                                      cmp r1, #0
00409f68  01 80 a0 01                                      moveq r8, r1
00409f6c  04 00 00 0a                                      beq #0x409f84
00409f70  0a 30 95 e7                                      ldr r3, [r5, sl]
00409f74  00 20 a0 e3                                      mov r2, #0
00409f78  40 00 93 e5                                      ldr r0, [r3, #0x40]
00409f7c  c9 93 fd eb                                      bl #0x36eea8
00409f80  68 86 90 e5                                      ldr r8, [r0, #0x668]
00409f84  0a 30 95 e7                                      ldr r3, [r5, sl]
00409f88  40 13 94 e5                                      ldr r1, [r4, #0x340]
00409f8c  44 03 94 e5                                      ldr r0, [r4, #0x344]
00409f90  14 60 93 e5                                      ldr r6, [r3, #0x14]
00409f94  02 13 fc eb                                      bl #0x30eba4
00409f98  fe 15 a0 e3                                      mov r1, #0x3f800000
00409f9c  00 13 fc eb                                      bl #0x30eba4
00409fa0  3f 14 a0 e3                                      mov r1, #0x3f000000
00409fa4  70 13 fc eb                                      bl #0x30ed6c
00409fa8  00 10 a0 e1                                      mov r1, r0
00409fac  38 03 94 e5                                      ldr r0, [r4, #0x338]
00409fb0  3f 11 fc eb                                      bl #0x30e4b4
00409fb4  00 00 50 e3                                      cmp r0, #0
00409fb8  66 00 00 1a                                      bne #0x40a158
00409fbc  48 33 d4 e5                                      ldrb r3, [r4, #0x348]
00409fc0  00 00 53 e3                                      cmp r3, #0
00409fc4  8e 01 00 1a                                      bne #0x40a604
00409fc8  60 13 94 e5                                      ldr r1, [r4, #0x360]
00409fcc  64 03 94 e5                                      ldr r0, [r4, #0x364]
00409fd0  f3 12 fc eb                                      bl #0x30eba4
00409fd4  fe 15 a0 e3                                      mov r1, #0x3f800000
00409fd8  f1 12 fc eb                                      bl #0x30eba4
00409fdc  3f 14 a0 e3                                      mov r1, #0x3f000000
00409fe0  61 13 fc eb                                      bl #0x30ed6c
00409fe4  00 10 a0 e1                                      mov r1, r0
00409fe8  58 03 94 e5                                      ldr r0, [r4, #0x358]
00409fec  30 11 fc eb                                      bl #0x30e4b4
00409ff0  00 00 50 e3                                      cmp r0, #0
00409ff4  3f 00 00 1a                                      bne #0x40a0f8
00409ff8  68 33 d4 e5                                      ldrb r3, [r4, #0x368]
00409ffc  00 00 53 e3                                      cmp r3, #0
0040a000  7d 01 00 1a                                      bne #0x40a5fc
0040a004  80 13 94 e5                                      ldr r1, [r4, #0x380]
0040a008  84 03 94 e5                                      ldr r0, [r4, #0x384]
0040a00c  e4 12 fc eb                                      bl #0x30eba4
0040a010  fe 15 a0 e3                                      mov r1, #0x3f800000
0040a014  e2 12 fc eb                                      bl #0x30eba4
0040a018  3f 14 a0 e3                                      mov r1, #0x3f000000
0040a01c  52 13 fc eb                                      bl #0x30ed6c
0040a020  00 10 a0 e1                                      mov r1, r0
0040a024  78 03 94 e5                                      ldr r0, [r4, #0x378]
0040a028  21 11 fc eb                                      bl #0x30e4b4
0040a02c  00 00 50 e3                                      cmp r0, #0
0040a030  18 00 00 1a                                      bne #0x40a098
0040a034  88 33 d4 e5                                      ldrb r3, [r4, #0x388]
0040a038  00 00 53 e3                                      cmp r3, #0
0040a03c  74 01 00 1a                                      bne #0x40a614
0040a040  a0 13 94 e5                                      ldr r1, [r4, #0x3a0]
0040a044  a4 03 94 e5                                      ldr r0, [r4, #0x3a4]
0040a048  d5 12 fc eb                                      bl #0x30eba4
0040a04c  fe 15 a0 e3                                      mov r1, #0x3f800000
0040a050  d3 12 fc eb                                      bl #0x30eba4
0040a054  3f 14 a0 e3                                      mov r1, #0x3f000000
0040a058  43 13 fc eb                                      bl #0x30ed6c
0040a05c  00 10 a0 e1                                      mov r1, r0
0040a060  98 03 94 e5                                      ldr r0, [r4, #0x398]
0040a064  12 11 fc eb                                      bl #0x30e4b4
0040a068  00 00 50 e3                                      cmp r0, #0
0040a06c  bc 00 00 1a                                      bne #0x40a364
0040a070  a8 33 d4 e5                                      ldrb r3, [r4, #0x3a8]
0040a074  00 00 53 e3                                      cmp r3, #0
0040a078  63 01 00 1a                                      bne #0x40a60c
0040a07c  07 30 95 e7                                      ldr r3, [r5, r7]
0040a080  44 21 9d e5                                      ldr r2, [sp, #0x144]
0040a084  00 30 93 e5                                      ldr r3, [r3]
0040a088  03 00 52 e1                                      cmp r2, r3
0040a08c  8f 01 00 1a                                      bne #0x40a6d0
0040a090  53 df 8d e2                                      add sp, sp, #0x14c
0040a094  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040a098  88 33 d4 e5                                      ldrb r3, [r4, #0x388]
0040a09c  00 00 53 e3                                      cmp r3, #0
0040a0a0  01 c0 a0 03                                      moveq ip, #1
0040a0a4  e5 ff ff 1a                                      bne #0x40a040
0040a0a8  3c 36 9f e5                                      ldr r3, [pc, #0x63c]
0040a0ac  07 20 a0 e3                                      mov r2, #7
0040a0b0  06 00 a0 e1                                      mov r0, r6
0040a0b4  03 30 95 e7                                      ldr r3, [r5, r3]
0040a0b8  80 10 8d e2                                      add r1, sp, #0x80
0040a0bc  84 20 8d e5                                      str r2, [sp, #0x84]
0040a0c0  08 30 83 e2                                      add r3, r3, #8
0040a0c4  80 30 8d e5                                      str r3, [sp, #0x80]
0040a0c8  01 30 a0 e3                                      mov r3, #1
0040a0cc  88 30 8d e5                                      str r3, [sp, #0x88]
0040a0d0  fe 35 a0 e3                                      mov r3, #0x3f800000
0040a0d4  94 30 8d e5                                      str r3, [sp, #0x94]
0040a0d8  8c c0 8d e5                                      str ip, [sp, #0x8c]
0040a0dc  90 80 8d e5                                      str r8, [sp, #0x90]
0040a0e0  75 bb fc eb                                      bl #0x338ebc
0040a0e4  04 36 9f e5                                      ldr r3, [pc, #0x604]
0040a0e8  03 30 95 e7                                      ldr r3, [r5, r3]
0040a0ec  08 30 83 e2                                      add r3, r3, #8
0040a0f0  80 30 8d e5                                      str r3, [sp, #0x80]
0040a0f4  d1 ff ff ea                                      b #0x40a040
0040a0f8  68 33 d4 e5                                      ldrb r3, [r4, #0x368]
0040a0fc  00 00 53 e3                                      cmp r3, #0
0040a100  01 c0 a0 03                                      moveq ip, #1
0040a104  be ff ff 1a                                      bne #0x40a004
0040a108  dc 35 9f e5                                      ldr r3, [pc, #0x5dc]
0040a10c  07 20 a0 e3                                      mov r2, #7
0040a110  06 00 a0 e1                                      mov r0, r6
0040a114  03 30 95 e7                                      ldr r3, [r5, r3]
0040a118  98 10 8d e2                                      add r1, sp, #0x98
0040a11c  9c 20 8d e5                                      str r2, [sp, #0x9c]
0040a120  08 30 83 e2                                      add r3, r3, #8
0040a124  98 30 8d e5                                      str r3, [sp, #0x98]
0040a128  00 30 a0 e3                                      mov r3, #0
0040a12c  a0 30 8d e5                                      str r3, [sp, #0xa0]
0040a130  fe 35 a0 e3                                      mov r3, #0x3f800000
0040a134  ac 30 8d e5                                      str r3, [sp, #0xac]
0040a138  a4 c0 8d e5                                      str ip, [sp, #0xa4]
0040a13c  a8 80 8d e5                                      str r8, [sp, #0xa8]
0040a140  5d bb fc eb                                      bl #0x338ebc
0040a144  a4 35 9f e5                                      ldr r3, [pc, #0x5a4]
0040a148  03 30 95 e7                                      ldr r3, [r5, r3]
0040a14c  08 30 83 e2                                      add r3, r3, #8
0040a150  98 30 8d e5                                      str r3, [sp, #0x98]
0040a154  aa ff ff ea                                      b #0x40a004
0040a158  48 33 d4 e5                                      ldrb r3, [r4, #0x348]
0040a15c  00 00 53 e3                                      cmp r3, #0
0040a160  01 c0 a0 03                                      moveq ip, #1
0040a164  97 ff ff 1a                                      bne #0x409fc8
0040a168  7c 35 9f e5                                      ldr r3, [pc, #0x57c]
0040a16c  07 20 a0 e3                                      mov r2, #7
0040a170  06 00 a0 e1                                      mov r0, r6
0040a174  03 30 95 e7                                      ldr r3, [r5, r3]
0040a178  b0 10 8d e2                                      add r1, sp, #0xb0
0040a17c  b4 20 8d e5                                      str r2, [sp, #0xb4]
0040a180  08 30 83 e2                                      add r3, r3, #8
0040a184  b0 30 8d e5                                      str r3, [sp, #0xb0]
0040a188  02 30 a0 e3                                      mov r3, #2
0040a18c  b8 30 8d e5                                      str r3, [sp, #0xb8]
0040a190  fe 35 a0 e3                                      mov r3, #0x3f800000
0040a194  c4 30 8d e5                                      str r3, [sp, #0xc4]
0040a198  bc c0 8d e5                                      str ip, [sp, #0xbc]
0040a19c  c0 80 8d e5                                      str r8, [sp, #0xc0]
0040a1a0  45 bb fc eb                                      bl #0x338ebc
0040a1a4  44 35 9f e5                                      ldr r3, [pc, #0x544]
0040a1a8  03 30 95 e7                                      ldr r3, [r5, r3]
0040a1ac  08 30 83 e2                                      add r3, r3, #8
0040a1b0  b0 30 8d e5                                      str r3, [sp, #0xb0]
0040a1b4  83 ff ff ea                                      b #0x409fc8
0040a1b8  1c a5 9f e5                                      ldr sl, [pc, #0x51c]
0040a1bc  00 30 a0 e3                                      mov r3, #0
0040a1c0  0c 90 96 e5                                      ldr sb, [r6, #0xc]
0040a1c4  0a 20 95 e7                                      ldr r2, [r5, sl]
0040a1c8  e4 30 8d e5                                      str r3, [sp, #0xe4]
0040a1cc  dc 30 8d e5                                      str r3, [sp, #0xdc]
0040a1d0  54 20 92 e5                                      ldr r2, [r2, #0x54]
0040a1d4  e0 30 8d e5                                      str r3, [sp, #0xe0]
0040a1d8  00 00 59 e3                                      cmp sb, #0
0040a1dc  50 10 92 e5                                      ldr r1, [r2, #0x50]
0040a1e0  54 30 92 e5                                      ldr r3, [r2, #0x54]
0040a1e4  e8 10 8d e5                                      str r1, [sp, #0xe8]
0040a1e8  ec 30 8d e5                                      str r3, [sp, #0xec]
0040a1ec  03 00 00 0a                                      beq #0x40a200
0040a1f0  c8 34 01 e3                                      movw r3, #0x14c8
0040a1f4  03 30 d9 e7                                      ldrb r3, [sb, r3]
0040a1f8  00 00 53 e3                                      cmp r3, #0
0040a1fc  e2 00 00 1a                                      bne #0x40a58c
0040a200  dc 30 8d e2                                      add r3, sp, #0xdc
0040a204  0c 30 8d e5                                      str r3, [sp, #0xc]
0040a208  e4 34 9f e5                                      ldr r3, [pc, #0x4e4]
0040a20c  e8 10 8d e2                                      add r1, sp, #0xe8
0040a210  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0040a214  03 00 95 e7                                      ldr r0, [r5, r3]
0040a218  99 6d 04 eb                                      bl #0x525884
0040a21c  00 00 50 e3                                      cmp r0, #0
0040a220  1e 01 00 1a                                      bne #0x40a6a0
0040a224  01 b0 a0 e3                                      mov fp, #1
0040a228  14 80 8d e2                                      add r8, sp, #0x14
0040a22c  0b 20 a0 e1                                      mov r2, fp
0040a230  00 30 a0 e3                                      mov r3, #0
0040a234  08 00 a0 e1                                      mov r0, r8
0040a238  09 10 a0 e1                                      mov r1, sb
0040a23c  00 b0 8d e5                                      str fp, [sp]
0040a240  3a 61 02 eb                                      bl #0x4a2730
0040a244  59 30 a0 e3                                      mov r3, #0x59
0040a248  48 30 8d e5                                      str r3, [sp, #0x48]
0040a24c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0040a250  14 30 9d e5                                      ldr r3, [sp, #0x14]
0040a254  4c b0 8d e5                                      str fp, [sp, #0x4c]
0040a258  03 00 52 e1                                      cmp r2, r3
0040a25c  05 00 00 0a                                      beq #0x40a278
0040a260  08 00 a0 e1                                      mov r0, r8
0040a264  2b 16 fe eb                                      bl #0x38fb18
0040a268  14 30 9d e5                                      ldr r3, [sp, #0x14]
0040a26c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0040a270  03 00 52 e1                                      cmp r2, r3
0040a274  f9 ff ff 1a                                      bne #0x40a260
0040a278  0a 20 95 e7                                      ldr r2, [r5, sl]
0040a27c  74 34 9f e5                                      ldr r3, [pc, #0x474]
0040a280  74 14 9f e5                                      ldr r1, [pc, #0x474]
0040a284  38 20 92 e5                                      ldr r2, [r2, #0x38]
0040a288  03 30 95 e7                                      ldr r3, [r5, r3]
0040a28c  01 10 95 e7                                      ldr r1, [r5, r1]
0040a290  80 c0 82 e2                                      add ip, r2, #0x80
0040a294  08 30 83 e2                                      add r3, r3, #8
0040a298  3c 10 8d e5                                      str r1, [sp, #0x3c]
0040a29c  c8 30 8d e5                                      str r3, [sp, #0xc8]
0040a2a0  cc c0 8d e5                                      str ip, [sp, #0xcc]
0040a2a4  80 e0 92 e5                                      ldr lr, [r2, #0x80]
0040a2a8  db 3f 00 e3                                      movw r3, #0xfdb
0040a2ac  d4 c0 8d e5                                      str ip, [sp, #0xd4]
0040a2b0  c8 c0 8d e2                                      add ip, sp, #0xc8
0040a2b4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0040a2b8  00 20 a0 e3                                      mov r2, #0
0040a2bc  c9 30 44 e3                                      movt r3, #0x40c9
0040a2c0  00 c0 8d e5                                      str ip, [sp]
0040a2c4  08 00 a0 e1                                      mov r0, r8
0040a2c8  00 c0 a0 e3                                      mov ip, #0
0040a2cc  d0 e0 8d e5                                      str lr, [sp, #0xd0]
0040a2d0  d8 c0 8d e5                                      str ip, [sp, #0xd8]
0040a2d4  3b 64 02 eb                                      bl #0x4a33c8
0040a2d8  20 34 9f e5                                      ldr r3, [pc, #0x420]
0040a2dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0040a2e0  24 10 9d e5                                      ldr r1, [sp, #0x24]
0040a2e4  03 30 95 e7                                      ldr r3, [r5, r3]
0040a2e8  02 00 51 e1                                      cmp r1, r2
0040a2ec  08 30 83 e2                                      add r3, r3, #8
0040a2f0  c8 30 8d e5                                      str r3, [sp, #0xc8]
0040a2f4  11 00 00 0a                                      beq #0x40a340
0040a2f8  00 b0 92 e5                                      ldr fp, [r2]
0040a2fc  00 00 5b e3                                      cmp fp, #0
0040a300  0e 00 00 0a                                      beq #0x40a340
0040a304  00 30 9b e5                                      ldr r3, [fp]
0040a308  0b 00 a0 e1                                      mov r0, fp
0040a30c  09 10 a0 e1                                      mov r1, sb
0040a310  0f e0 a0 e1                                      mov lr, pc
0040a314  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0040a318  00 00 50 e3                                      cmp r0, #0
0040a31c  07 00 00 0a                                      beq #0x40a340
0040a320  0b 10 a0 e1                                      mov r1, fp
0040a324  f2 0f 89 e2                                      add r0, sb, #0x3c8
0040a328  31 31 ff eb                                      bl #0x3d67f4
0040a32c  00 00 50 e3                                      cmp r0, #0
0040a330  de 00 00 0a                                      beq #0x40a6b0
0040a334  00 10 a0 e3                                      mov r1, #0
0040a338  06 00 a0 e1                                      mov r0, r6
0040a33c  f0 ed ff eb                                      bl #0x405b04
0040a340  08 00 a0 e1                                      mov r0, r8
0040a344  90 0b fe eb                                      bl #0x38d18c
0040a348  48 fe ff ea                                      b #0x409c70
0040a34c  c8 13 d4 e5                                      ldrb r1, [r4, #0x3c8]
0040a350  00 00 51 e3                                      cmp r1, #0
0040a354  f2 fe ff 1a                                      bne #0x409f24
0040a358  06 00 a0 e1                                      mov r0, r6
0040a35c  a5 ec ff eb                                      bl #0x4055f8
0040a360  ef fe ff ea                                      b #0x409f24
0040a364  a8 33 d4 e5                                      ldrb r3, [r4, #0x3a8]
0040a368  00 00 53 e3                                      cmp r3, #0
0040a36c  01 c0 a0 03                                      moveq ip, #1
0040a370  41 ff ff 1a                                      bne #0x40a07c
0040a374  70 33 9f e5                                      ldr r3, [pc, #0x370]
0040a378  07 20 a0 e3                                      mov r2, #7
0040a37c  06 00 a0 e1                                      mov r0, r6
0040a380  03 30 95 e7                                      ldr r3, [r5, r3]
0040a384  68 10 8d e2                                      add r1, sp, #0x68
0040a388  6c 20 8d e5                                      str r2, [sp, #0x6c]
0040a38c  08 30 83 e2                                      add r3, r3, #8
0040a390  68 30 8d e5                                      str r3, [sp, #0x68]
0040a394  03 30 a0 e3                                      mov r3, #3
0040a398  70 30 8d e5                                      str r3, [sp, #0x70]
0040a39c  fe 35 a0 e3                                      mov r3, #0x3f800000
0040a3a0  74 c0 8d e5                                      str ip, [sp, #0x74]
0040a3a4  78 80 8d e5                                      str r8, [sp, #0x78]
0040a3a8  7c 30 8d e5                                      str r3, [sp, #0x7c]
0040a3ac  c2 ba fc eb                                      bl #0x338ebc
0040a3b0  31 ff ff ea                                      b #0x40a07c
0040a3b4  04 00 a0 e1                                      mov r0, r4
0040a3b8  fd 0c fd eb                                      bl #0x34d7b4
0040a3bc  00 40 a0 e1                                      mov r4, r0
0040a3c0  1b fe ff ea                                      b #0x409c34
0040a3c4  0c 80 96 e5                                      ldr r8, [r6, #0xc]
0040a3c8  00 10 a0 e3                                      mov r1, #0
0040a3cc  08 00 a0 e1                                      mov r0, r8
0040a3d0  a4 c6 fe eb                                      bl #0x3bbe68
0040a3d4  01 10 a0 e3                                      mov r1, #1
0040a3d8  00 b0 a0 e1                                      mov fp, r0
0040a3dc  08 00 a0 e1                                      mov r0, r8
0040a3e0  a0 c6 fe eb                                      bl #0x3bbe68
0040a3e4  02 10 a0 e3                                      mov r1, #2
0040a3e8  00 90 a0 e1                                      mov sb, r0
0040a3ec  08 00 a0 e1                                      mov r0, r8
0040a3f0  9c c6 fe eb                                      bl #0x3bbe68
0040a3f4  01 00 7b e3                                      cmn fp, #1
0040a3f8  00 80 a0 e1                                      mov r8, r0
0040a3fc  0e 00 00 0a                                      beq #0x40a43c
0040a400  40 14 94 e5                                      ldr r1, [r4, #0x440]
0040a404  44 04 94 e5                                      ldr r0, [r4, #0x444]
0040a408  e5 11 fc eb                                      bl #0x30eba4
0040a40c  fe 15 a0 e3                                      mov r1, #0x3f800000
0040a410  e3 11 fc eb                                      bl #0x30eba4
0040a414  3f 14 a0 e3                                      mov r1, #0x3f000000
0040a418  53 12 fc eb                                      bl #0x30ed6c
0040a41c  00 10 a0 e1                                      mov r1, r0
0040a420  38 04 94 e5                                      ldr r0, [r4, #0x438]
0040a424  22 10 fc eb                                      bl #0x30e4b4
0040a428  00 00 50 e3                                      cmp r0, #0
0040a42c  7e 00 00 1a                                      bne #0x40a62c
0040a430  48 34 d4 e5                                      ldrb r3, [r4, #0x448]
0040a434  00 00 53 e3                                      cmp r3, #0
0040a438  90 00 00 1a                                      bne #0x40a680
0040a43c  01 00 79 e3                                      cmn sb, #1
0040a440  0e 00 00 0a                                      beq #0x40a480
0040a444  60 14 94 e5                                      ldr r1, [r4, #0x460]
0040a448  64 04 94 e5                                      ldr r0, [r4, #0x464]
0040a44c  d4 11 fc eb                                      bl #0x30eba4
0040a450  fe 15 a0 e3                                      mov r1, #0x3f800000
0040a454  d2 11 fc eb                                      bl #0x30eba4
0040a458  3f 14 a0 e3                                      mov r1, #0x3f000000
0040a45c  42 12 fc eb                                      bl #0x30ed6c
0040a460  00 10 a0 e1                                      mov r1, r0
0040a464  58 04 94 e5                                      ldr r0, [r4, #0x458]
0040a468  11 10 fc eb                                      bl #0x30e4b4
0040a46c  00 00 50 e3                                      cmp r0, #0
0040a470  74 00 00 1a                                      bne #0x40a648
0040a474  68 34 d4 e5                                      ldrb r3, [r4, #0x468]
0040a478  00 00 53 e3                                      cmp r3, #0
0040a47c  83 00 00 1a                                      bne #0x40a690
0040a480  01 00 78 e3                                      cmn r8, #1
0040a484  74 fe ff 0a                                      beq #0x409e5c
0040a488  80 14 94 e5                                      ldr r1, [r4, #0x480]
0040a48c  84 04 94 e5                                      ldr r0, [r4, #0x484]
0040a490  c3 11 fc eb                                      bl #0x30eba4
0040a494  fe 15 a0 e3                                      mov r1, #0x3f800000
0040a498  c1 11 fc eb                                      bl #0x30eba4
0040a49c  3f 14 a0 e3                                      mov r1, #0x3f000000
0040a4a0  31 12 fc eb                                      bl #0x30ed6c
0040a4a4  00 10 a0 e1                                      mov r1, r0
0040a4a8  78 04 94 e5                                      ldr r0, [r4, #0x478]
0040a4ac  00 10 fc eb                                      bl #0x30e4b4
0040a4b0  00 00 50 e3                                      cmp r0, #0
0040a4b4  6a 00 00 1a                                      bne #0x40a664
0040a4b8  88 34 d4 e5                                      ldrb r3, [r4, #0x488]
0040a4bc  00 00 53 e3                                      cmp r3, #0
0040a4c0  65 fe ff 0a                                      beq #0x409e5c
0040a4c4  08 10 a0 e1                                      mov r1, r8
0040a4c8  06 00 a0 e1                                      mov r0, r6
0040a4cc  20 ed ff eb                                      bl #0x405954
0040a4d0  61 fe ff ea                                      b #0x409e5c
0040a4d4  a8 33 d4 e5                                      ldrb r3, [r4, #0x3a8]
0040a4d8  00 00 53 e3                                      cmp r3, #0
0040a4dc  35 fe ff 0a                                      beq #0x409db8
0040a4e0  09 10 a0 e1                                      mov r1, sb
0040a4e4  06 00 a0 e1                                      mov r0, r6
0040a4e8  19 ed ff eb                                      bl #0x405954
0040a4ec  31 fe ff ea                                      b #0x409db8
0040a4f0  48 33 d4 e5                                      ldrb r3, [r4, #0x348]
0040a4f4  00 00 53 e3                                      cmp r3, #0
0040a4f8  1a fe ff 0a                                      beq #0x409d68
0040a4fc  0b 10 a0 e1                                      mov r1, fp
0040a500  06 00 a0 e1                                      mov r0, r6
0040a504  12 ed ff eb                                      bl #0x405954
0040a508  16 fe ff ea                                      b #0x409d68
0040a50c  88 33 d4 e5                                      ldrb r3, [r4, #0x388]
0040a510  00 00 53 e3                                      cmp r3, #0
0040a514  3b fe ff 0a                                      beq #0x409e08
0040a518  08 10 a0 e1                                      mov r1, r8
0040a51c  06 00 a0 e1                                      mov r0, r6
0040a520  0b ed ff eb                                      bl #0x405954
0040a524  37 fe ff ea                                      b #0x409e08
0040a528  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
0040a52c  4b 8f 8d e2                                      add r8, sp, #0x12c
0040a530  03 90 95 e7                                      ldr sb, [r5, r3]
0040a534  09 00 a0 e1                                      mov r0, sb
0040a538  d2 b4 fc eb                                      bl #0x337888
0040a53c  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
0040a540  f8 20 8d e2                                      add r2, sp, #0xf8
0040a544  08 00 a0 e1                                      mov r0, r8
0040a548  01 10 8f e0                                      add r1, pc, r1
0040a54c  e6 26 fc eb                                      bl #0x3140ec
0040a550  09 00 a0 e1                                      mov r0, sb
0040a554  08 10 a0 e1                                      mov r1, r8
0040a558  4a b5 fc eb                                      bl #0x337a88
0040a55c  00 90 a0 e1                                      mov sb, r0
0040a560  01 90 29 e2                                      eor sb, sb, #1
0040a564  08 00 a0 e1                                      mov r0, r8
0040a568  39 37 fc eb                                      bl #0x318254
0040a56c  ff 00 19 e3                                      tst sb, #0xff
0040a570  cd fd ff 0a                                      beq #0x409cac
0040a574  06 00 a0 e1                                      mov r0, r6
0040a578  07 ec ff eb                                      bl #0x40559c
0040a57c  ca fd ff ea                                      b #0x409cac
0040a580  06 00 a0 e1                                      mov r0, r6
0040a584  67 ec ff eb                                      bl #0x405728
0040a588  74 fe ff ea                                      b #0x409f60
0040a58c  60 31 9f e5                                      ldr r3, [pc, #0x160]
0040a590  e8 10 8d e2                                      add r1, sp, #0xe8
0040a594  dc 20 8d e2                                      add r2, sp, #0xdc
0040a598  03 00 95 e7                                      ldr r0, [r5, r3]
0040a59c  b8 6c 04 eb                                      bl #0x525884
0040a5a0  00 00 50 e3                                      cmp r0, #0
0040a5a4  b1 fd ff 0a                                      beq #0x409c70
0040a5a8  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
0040a5ac  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0040a5b0  b0 24 01 e3                                      movw r2, #0x14b0
0040a5b4  c4 c4 01 e3                                      movw ip, #0x14c4
0040a5b8  02 00 83 e7                                      str r0, [r3, r2]
0040a5bc  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
0040a5c0  b4 24 01 e3                                      movw r2, #0x14b4
0040a5c4  02 10 83 e7                                      str r1, [r3, r2]
0040a5c8  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
0040a5cc  0c 20 83 e7                                      str r2, [r3, ip]
0040a5d0  bc c4 01 e3                                      movw ip, #0x14bc
0040a5d4  0c 00 83 e7                                      str r0, [r3, ip]
0040a5d8  53 0d a0 e3                                      mov r0, #0x14c0
0040a5dc  00 10 83 e7                                      str r1, [r3, r0]
0040a5e0  b8 14 01 e3                                      movw r1, #0x14b8
0040a5e4  01 20 83 e7                                      str r2, [r3, r1]
0040a5e8  a0 fd ff ea                                      b #0x409c70
0040a5ec  06 00 a0 e1                                      mov r0, r6
0040a5f0  00 10 a0 e3                                      mov r1, #0
0040a5f4  16 ec ff eb                                      bl #0x405654
0040a5f8  49 fe ff ea                                      b #0x409f24
0040a5fc  00 c0 a0 e3                                      mov ip, #0
0040a600  c0 fe ff ea                                      b #0x40a108
0040a604  00 c0 a0 e3                                      mov ip, #0
0040a608  d6 fe ff ea                                      b #0x40a168
0040a60c  00 c0 a0 e3                                      mov ip, #0
0040a610  57 ff ff ea                                      b #0x40a374
0040a614  00 c0 a0 e3                                      mov ip, #0
0040a618  a2 fe ff ea                                      b #0x40a0a8
0040a61c  06 00 a0 e1                                      mov r0, r6
0040a620  00 10 a0 e3                                      mov r1, #0
0040a624  36 ed ff eb                                      bl #0x405b04
0040a628  ab fd ff ea                                      b #0x409cdc
0040a62c  48 34 d4 e5                                      ldrb r3, [r4, #0x448]
0040a630  00 00 53 e3                                      cmp r3, #0
0040a634  80 ff ff 1a                                      bne #0x40a43c
0040a638  0b 10 a0 e1                                      mov r1, fp
0040a63c  06 00 a0 e1                                      mov r0, r6
0040a640  f6 ec ff eb                                      bl #0x405a20
0040a644  7c ff ff ea                                      b #0x40a43c
0040a648  68 34 d4 e5                                      ldrb r3, [r4, #0x468]
0040a64c  00 00 53 e3                                      cmp r3, #0
0040a650  8a ff ff 1a                                      bne #0x40a480
0040a654  09 10 a0 e1                                      mov r1, sb
0040a658  06 00 a0 e1                                      mov r0, r6
0040a65c  ef ec ff eb                                      bl #0x405a20
0040a660  86 ff ff ea                                      b #0x40a480
0040a664  88 34 d4 e5                                      ldrb r3, [r4, #0x488]
0040a668  00 00 53 e3                                      cmp r3, #0
0040a66c  fa fd ff 1a                                      bne #0x409e5c
0040a670  08 10 a0 e1                                      mov r1, r8
0040a674  06 00 a0 e1                                      mov r0, r6
0040a678  e8 ec ff eb                                      bl #0x405a20
0040a67c  f6 fd ff ea                                      b #0x409e5c
0040a680  0b 10 a0 e1                                      mov r1, fp
0040a684  06 00 a0 e1                                      mov r0, r6
0040a688  b1 ec ff eb                                      bl #0x405954
0040a68c  6a ff ff ea                                      b #0x40a43c
0040a690  09 10 a0 e1                                      mov r1, sb
0040a694  06 00 a0 e1                                      mov r0, r6
0040a698  ad ec ff eb                                      bl #0x405954
0040a69c  77 ff ff ea                                      b #0x40a480
0040a6a0  06 00 a0 e1                                      mov r0, r6
0040a6a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0040a6a8  5f eb ff eb                                      bl #0x40542c
0040a6ac  dc fe ff ea                                      b #0x40a224
0040a6b0  4f 0e 89 e2                                      add r0, sb, #0x4f0
0040a6b4  0c 00 80 e2                                      add r0, r0, #0xc
0040a6b8  52 d7 fe eb                                      bl #0x3c0408
0040a6bc  00 10 50 e2                                      subs r1, r0, #0
0040a6c0  1e ff ff 1a                                      bne #0x40a340
0040a6c4  06 00 a0 e1                                      mov r0, r6
0040a6c8  4b ec ff eb                                      bl #0x4057fc
0040a6cc  1b ff ff ea                                      b #0x40a340
0040a6d0  0e 0f fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0040a6d4  a8 ae 58 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0xa8, 0xae, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
0040a6e4  cc dc 4b 00 48 dc 4b 00 90 3d 00 00 b0 0b 00 00  .byte 0xcc, 0xdc, 0x4b, 0x00, 0x48, 0xdc, 0x4b, 0x00, 0x90, 0x3d, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00
0040a6f4  04 12 00 00 64 35 00 00 c4 4a 00 00 b8 28 00 00  .byte 0x04, 0x12, 0x00, 0x00, 0x64, 0x35, 0x00, 0x00, 0xc4, 0x4a, 0x00, 0x00, 0xb8, 0x28, 0x00, 0x00
0040a704  a8 d5 4b 00                                      .byte 0xa8, 0xd5, 0x4b, 0x00
