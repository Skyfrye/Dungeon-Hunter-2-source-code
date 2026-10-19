; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d29a0, declared_size=76, range_size=76, mode=arm
; class-group: Structs::AIChangeScript
; alias: _ZN7Structs14AIChangeScript8finalizeEv
; demangled: Structs::AIChangeScript::finalize()
; decoder-mode: arm
004d29a0  10 40 2d e9                                      push {r4, lr}
004d29a4  00 40 a0 e1                                      mov r4, r0
004d29a8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d29ac  00 00 50 e3                                      cmp r0, #0
004d29b0  03 00 00 0a                                      beq #0x4d29c4
004d29b4  a1 f6 f8 eb                                      bl #0x310440
004d29b8  00 30 a0 e3                                      mov r3, #0
004d29bc  08 30 84 e5                                      str r3, [r4, #8]
004d29c0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d29c4  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d29c8  00 00 50 e3                                      cmp r0, #0
004d29cc  03 00 00 0a                                      beq #0x4d29e0
004d29d0  9a f6 f8 eb                                      bl #0x310440
004d29d4  00 30 a0 e3                                      mov r3, #0
004d29d8  10 30 84 e5                                      str r3, [r4, #0x10]
004d29dc  14 30 84 e5                                      str r3, [r4, #0x14]
004d29e0  04 00 a0 e1                                      mov r0, r4
004d29e4  10 40 bd e8                                      pop {r4, lr}
004d29e8  9e d0 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d29ec, declared_size=88, range_size=88, mode=arm
; class-group: Structs::AIChangeScript
; alias: _ZN7Structs14AIChangeScriptD1Ev
; demangled: Structs::AIChangeScript::~AIChangeScript()
; decoder-mode: arm
004d29ec  10 40 2d e9                                      push {r4, lr}
004d29f0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d29f4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d29f8  00 40 a0 e1                                      mov r4, r0
004d29fc  03 30 8f e0                                      add r3, pc, r3
004d2a00  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2a04  02 20 93 e7                                      ldr r2, [r3, r2]
004d2a08  00 00 50 e3                                      cmp r0, #0
004d2a0c  08 20 82 e2                                      add r2, r2, #8
004d2a10  00 20 84 e5                                      str r2, [r4]
004d2a14  00 00 00 0a                                      beq #0x4d2a1c
004d2a18  88 f6 f8 eb                                      bl #0x310440
004d2a1c  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d2a20  00 00 50 e3                                      cmp r0, #0
004d2a24  00 00 00 0a                                      beq #0x4d2a2c
004d2a28  84 f6 f8 eb                                      bl #0x310440
004d2a2c  04 00 a0 e1                                      mov r0, r4
004d2a30  8a d0 ff eb                                      bl #0x4c6c60
004d2a34  04 00 a0 e1                                      mov r0, r4
004d2a38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2a3c  94 20 4c 00 04 36 00 00                          .byte 0x94, 0x20, 0x4c, 0x00, 0x04, 0x36, 0x00, 0x00

; FUNCTION 0x004d2a44, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AIChangeScript
; alias: _ZN7Structs14AIChangeScriptD0Ev
; demangled: Structs::AIChangeScript::~AIChangeScript()
; decoder-mode: arm
004d2a44  10 40 2d e9                                      push {r4, lr}
004d2a48  00 40 a0 e1                                      mov r4, r0
004d2a4c  e6 ff ff eb                                      bl #0x4d29ec
004d2a50  04 00 a0 e1                                      mov r0, r4
004d2a54  79 f6 f8 eb                                      bl #0x310440
004d2a58  04 00 a0 e1                                      mov r0, r4
004d2a5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2a60, declared_size=88, range_size=88, mode=arm
; class-group: Structs::AIChangeScript
; alias: _ZN7Structs14AIChangeScriptD2Ev
; demangled: Structs::AIChangeScript::~AIChangeScript()
; decoder-mode: arm
004d2a60  10 40 2d e9                                      push {r4, lr}
004d2a64  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d2a68  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d2a6c  00 40 a0 e1                                      mov r4, r0
004d2a70  03 30 8f e0                                      add r3, pc, r3
004d2a74  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2a78  02 20 93 e7                                      ldr r2, [r3, r2]
004d2a7c  00 00 50 e3                                      cmp r0, #0
004d2a80  08 20 82 e2                                      add r2, r2, #8
004d2a84  00 20 84 e5                                      str r2, [r4]
004d2a88  00 00 00 0a                                      beq #0x4d2a90
004d2a8c  6b f6 f8 eb                                      bl #0x310440
004d2a90  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d2a94  00 00 50 e3                                      cmp r0, #0
004d2a98  00 00 00 0a                                      beq #0x4d2aa0
004d2a9c  67 f6 f8 eb                                      bl #0x310440
004d2aa0  04 00 a0 e1                                      mov r0, r4
004d2aa4  6d d0 ff eb                                      bl #0x4c6c60
004d2aa8  04 00 a0 e1                                      mov r0, r4
004d2aac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2ab0  20 20 4c 00 04 36 00 00                          .byte 0x20, 0x20, 0x4c, 0x00, 0x04, 0x36, 0x00, 0x00

; FUNCTION 0x00501974, declared_size=356, range_size=356, mode=arm
; class-group: Structs::AIChangeScript
; alias: _ZN7Structs14AIChangeScript4readEP11IStreamBase
; demangled: Structs::AIChangeScript::read(IStreamBase*)
; decoder-mode: arm
00501974  70 40 2d e9                                      push {r4, r5, r6, lr}
00501978  00 40 a0 e1                                      mov r4, r0
0050197c  08 d0 4d e2                                      sub sp, sp, #8
00501980  01 50 a0 e1                                      mov r5, r1
00501984  a7 f7 ff eb                                      bl #0x4ff828
00501988  05 00 a0 e1                                      mov r0, r5
0050198c  08 10 84 e2                                      add r1, r4, #8
00501990  02 76 fb eb                                      bl #0x3df1a0
00501994  01 30 a0 e3                                      mov r3, #1
00501998  00 00 53 e3                                      cmp r3, #0
0050199c  04 30 8d e5                                      str r3, [sp, #4]
005019a0  0f 00 00 1a                                      bne #0x5019e4
005019a4  09 30 84 e2                                      add r3, r4, #9
005019a8  0a 20 84 e2                                      add r2, r4, #0xa
005019ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
005019b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005019b4  02 00 53 e1                                      cmp r3, r2
005019b8  01 10 20 e0                                      eor r1, r0, r1
005019bc  01 10 43 e5                                      strb r1, [r3, #-1]
005019c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005019c4  00 10 21 e0                                      eor r1, r1, r0
005019c8  01 10 c2 e5                                      strb r1, [r2, #1]
005019cc  01 00 53 e5                                      ldrb r0, [r3, #-1]
005019d0  01 20 42 e2                                      sub r2, r2, #1
005019d4  00 10 21 e0                                      eor r1, r1, r0
005019d8  01 10 43 e5                                      strb r1, [r3, #-1]
005019dc  01 30 83 e2                                      add r3, r3, #1
005019e0  f1 ff ff 3a                                      blo #0x5019ac
005019e4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005019e8  00 00 50 e3                                      cmp r0, #0
005019ec  00 00 00 0a                                      beq #0x5019f4
005019f0  92 3a f8 eb                                      bl #0x310440
005019f4  08 00 94 e5                                      ldr r0, [r4, #8]
005019f8  01 10 a0 e3                                      mov r1, #1
005019fc  00 60 a0 e3                                      mov r6, #0
00501a00  01 00 80 e0                                      add r0, r0, r1
00501a04  d8 3a f8 eb                                      bl #0x31056c
00501a08  08 20 94 e5                                      ldr r2, [r4, #8]
00501a0c  00 10 a0 e1                                      mov r1, r0
00501a10  0c 00 84 e5                                      str r0, [r4, #0xc]
00501a14  06 30 a0 e1                                      mov r3, r6
00501a18  05 00 a0 e1                                      mov r0, r5
00501a1c  8c 56 f8 eb                                      bl #0x317454
00501a20  08 30 94 e5                                      ldr r3, [r4, #8]
00501a24  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501a28  05 00 a0 e1                                      mov r0, r5
00501a2c  10 10 84 e2                                      add r1, r4, #0x10
00501a30  03 60 c2 e7                                      strb r6, [r2, r3]
00501a34  d9 75 fb eb                                      bl #0x3df1a0
00501a38  01 30 a0 e3                                      mov r3, #1
00501a3c  06 00 53 e1                                      cmp r3, r6
00501a40  04 30 8d e5                                      str r3, [sp, #4]
00501a44  0f 00 00 1a                                      bne #0x501a88
00501a48  11 30 84 e2                                      add r3, r4, #0x11
00501a4c  12 20 84 e2                                      add r2, r4, #0x12
00501a50  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501a54  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501a58  02 00 53 e1                                      cmp r3, r2
00501a5c  01 10 20 e0                                      eor r1, r0, r1
00501a60  01 10 43 e5                                      strb r1, [r3, #-1]
00501a64  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501a68  00 10 21 e0                                      eor r1, r1, r0
00501a6c  01 10 c2 e5                                      strb r1, [r2, #1]
00501a70  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501a74  01 20 42 e2                                      sub r2, r2, #1
00501a78  00 10 21 e0                                      eor r1, r1, r0
00501a7c  01 10 43 e5                                      strb r1, [r3, #-1]
00501a80  01 30 83 e2                                      add r3, r3, #1
00501a84  f1 ff ff 3a                                      blo #0x501a50
00501a88  14 00 94 e5                                      ldr r0, [r4, #0x14]
00501a8c  00 00 50 e3                                      cmp r0, #0
00501a90  00 00 00 0a                                      beq #0x501a98
00501a94  69 3a f8 eb                                      bl #0x310440
00501a98  10 00 94 e5                                      ldr r0, [r4, #0x10]
00501a9c  01 10 a0 e3                                      mov r1, #1
00501aa0  00 60 a0 e3                                      mov r6, #0
00501aa4  01 00 80 e0                                      add r0, r0, r1
00501aa8  af 3a f8 eb                                      bl #0x31056c
00501aac  10 20 94 e5                                      ldr r2, [r4, #0x10]
00501ab0  00 10 a0 e1                                      mov r1, r0
00501ab4  14 00 84 e5                                      str r0, [r4, #0x14]
00501ab8  06 30 a0 e1                                      mov r3, r6
00501abc  05 00 a0 e1                                      mov r0, r5
00501ac0  63 56 f8 eb                                      bl #0x317454
00501ac4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00501ac8  14 20 94 e5                                      ldr r2, [r4, #0x14]
00501acc  03 60 c2 e7                                      strb r6, [r2, r3]
00501ad0  08 d0 8d e2                                      add sp, sp, #8
00501ad4  70 80 bd e8                                      pop {r4, r5, r6, pc}
