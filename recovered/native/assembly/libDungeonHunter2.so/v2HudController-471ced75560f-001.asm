; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004088ec, declared_size=4, range_size=4, mode=arm
; class-group: v2HudController
; alias: _ZN15v2HudControllerD2Ev
; demangled: v2HudController::~v2HudController()
; decoder-mode: arm
004088ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x004088f0, declared_size=4, range_size=4, mode=arm
; class-group: v2HudController
; alias: _ZN15v2HudControllerD1Ev
; demangled: v2HudController::~v2HudController()
; decoder-mode: arm
004088f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00408914, declared_size=28, range_size=28, mode=arm
; class-group: v2HudController
; alias: _ZN15v2HudControllerD0Ev
; demangled: v2HudController::~v2HudController()
; decoder-mode: arm
00408914  10 40 2d e9                                      push {r4, lr}
00408918  00 40 a0 e1                                      mov r4, r0
0040891c  f3 ff ff eb                                      bl #0x4088f0
00408920  04 00 a0 e1                                      mov r0, r4
00408924  c5 1e fc eb                                      bl #0x310440
00408928  04 00 a0 e1                                      mov r0, r4
0040892c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00408930, declared_size=212, range_size=212, mode=arm
; class-group: v2HudController
; alias: _ZN15v2HudControllerC1EP14v2Controllable
; demangled: v2HudController::v2HudController(v2Controllable*)
; decoder-mode: arm
00408930  30 40 2d e9                                      push {r4, r5, lr}
00408934  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00408938  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0040893c  00 20 a0 e3                                      mov r2, #0
00408940  05 50 8f e0                                      add r5, pc, r5
00408944  03 30 95 e7                                      ldr r3, [r5, r3]
00408948  00 00 51 e3                                      cmp r1, #0
0040894c  0c d0 4d e2                                      sub sp, sp, #0xc
00408950  08 30 83 e2                                      add r3, r3, #8
00408954  00 40 a0 e1                                      mov r4, r0
00408958  00 30 80 e5                                      str r3, [r0]
0040895c  0c 20 80 e5                                      str r2, [r0, #0xc]
00408960  04 10 80 e5                                      str r1, [r0, #4]
00408964  08 20 c0 e5                                      strb r2, [r0, #8]
00408968  09 20 c0 e5                                      strb r2, [r0, #9]
0040896c  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00408970  06 00 00 0a                                      beq #0x408990
00408974  70 30 9f e5                                      ldr r3, [pc, #0x70]
00408978  04 00 a0 e1                                      mov r0, r4
0040897c  03 30 95 e7                                      ldr r3, [r5, r3]
00408980  08 30 83 e2                                      add r3, r3, #8
00408984  00 30 84 e5                                      str r3, [r4]
00408988  0c d0 8d e2                                      add sp, sp, #0xc
0040898c  30 80 bd e8                                      pop {r4, r5, pc}
00408990  58 30 9f e5                                      ldr r3, [pc, #0x58]
00408994  03 30 95 e7                                      ldr r3, [r5, r3]
00408998  00 30 93 e5                                      ldr r3, [r3]
0040899c  02 00 53 e3                                      cmp r3, #2
004089a0  00 10 81 05                                      streq r1, [r1]
004089a4  f2 ff ff 0a                                      beq #0x408974
004089a8  01 00 53 e3                                      cmp r3, #1
004089ac  f0 ff ff 1a                                      bne #0x408974
004089b0  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
004089b4  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
004089b8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004089bc  00 00 95 e7                                      ldr r0, [r5, r0]
004089c0  38 30 9f e5                                      ldr r3, [pc, #0x38]
004089c4  44 c0 a0 e3                                      mov ip, #0x44
004089c8  01 10 8f e0                                      add r1, pc, r1
004089cc  02 20 8f e0                                      add r2, pc, r2
004089d0  03 30 8f e0                                      add r3, pc, r3
004089d4  a8 00 80 e2                                      add r0, r0, #0xa8
004089d8  00 c0 8d e5                                      str ip, [sp]
004089dc  88 15 fc eb                                      bl #0x30e004
004089e0  e3 ff ff ea                                      b #0x408974
; mapping-symbol data/literal pool
004089e4  50 c1 58 00 a4 2a 00 00 c8 1f 00 00 c0 39 00 00  .byte 0x50, 0xc1, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0xc8, 0x1f, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
004089f4  c0 19 00 00 10 5a 4b 00 f4 aa 4b 00 08 f0 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x10, 0x5a, 0x4b, 0x00, 0xf4, 0xaa, 0x4b, 0x00, 0x08, 0xf0, 0x4b, 0x00

; FUNCTION 0x00408a04, declared_size=212, range_size=212, mode=arm
; class-group: v2HudController
; alias: _ZN15v2HudControllerC2EP14v2Controllable
; demangled: v2HudController::v2HudController(v2Controllable*)
; decoder-mode: arm
00408a04  30 40 2d e9                                      push {r4, r5, lr}
00408a08  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00408a0c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00408a10  00 20 a0 e3                                      mov r2, #0
00408a14  05 50 8f e0                                      add r5, pc, r5
00408a18  03 30 95 e7                                      ldr r3, [r5, r3]
00408a1c  00 00 51 e3                                      cmp r1, #0
00408a20  0c d0 4d e2                                      sub sp, sp, #0xc
00408a24  08 30 83 e2                                      add r3, r3, #8
00408a28  00 40 a0 e1                                      mov r4, r0
00408a2c  00 30 80 e5                                      str r3, [r0]
00408a30  0c 20 80 e5                                      str r2, [r0, #0xc]
00408a34  04 10 80 e5                                      str r1, [r0, #4]
00408a38  08 20 c0 e5                                      strb r2, [r0, #8]
00408a3c  09 20 c0 e5                                      strb r2, [r0, #9]
00408a40  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00408a44  06 00 00 0a                                      beq #0x408a64
00408a48  70 30 9f e5                                      ldr r3, [pc, #0x70]
00408a4c  04 00 a0 e1                                      mov r0, r4
00408a50  03 30 95 e7                                      ldr r3, [r5, r3]
00408a54  08 30 83 e2                                      add r3, r3, #8
00408a58  00 30 84 e5                                      str r3, [r4]
00408a5c  0c d0 8d e2                                      add sp, sp, #0xc
00408a60  30 80 bd e8                                      pop {r4, r5, pc}
00408a64  58 30 9f e5                                      ldr r3, [pc, #0x58]
00408a68  03 30 95 e7                                      ldr r3, [r5, r3]
00408a6c  00 30 93 e5                                      ldr r3, [r3]
00408a70  02 00 53 e3                                      cmp r3, #2
00408a74  00 10 81 05                                      streq r1, [r1]
00408a78  f2 ff ff 0a                                      beq #0x408a48
00408a7c  01 00 53 e3                                      cmp r3, #1
00408a80  f0 ff ff 1a                                      bne #0x408a48
00408a84  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00408a88  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00408a8c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00408a90  00 00 95 e7                                      ldr r0, [r5, r0]
00408a94  38 30 9f e5                                      ldr r3, [pc, #0x38]
00408a98  44 c0 a0 e3                                      mov ip, #0x44
00408a9c  01 10 8f e0                                      add r1, pc, r1
00408aa0  02 20 8f e0                                      add r2, pc, r2
00408aa4  03 30 8f e0                                      add r3, pc, r3
00408aa8  a8 00 80 e2                                      add r0, r0, #0xa8
00408aac  00 c0 8d e5                                      str ip, [sp]
00408ab0  53 15 fc eb                                      bl #0x30e004
00408ab4  e3 ff ff ea                                      b #0x408a48
; mapping-symbol data/literal pool
00408ab8  7c c0 58 00 a4 2a 00 00 c8 1f 00 00 c0 39 00 00  .byte 0x7c, 0xc0, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0xc8, 0x1f, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00408ac8  c0 19 00 00 3c 59 4b 00 20 aa 4b 00 34 ef 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x3c, 0x59, 0x4b, 0x00, 0x20, 0xaa, 0x4b, 0x00, 0x34, 0xef, 0x4b, 0x00
