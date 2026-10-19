; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2c70, declared_size=48, range_size=48, mode=arm
; class-group: Structs::PutCharacterInIdle
; alias: _ZN7Structs18PutCharacterInIdle8finalizeEv
; demangled: Structs::PutCharacterInIdle::finalize()
; decoder-mode: arm
004d2c70  10 40 2d e9                                      push {r4, lr}
004d2c74  00 40 a0 e1                                      mov r4, r0
004d2c78  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2c7c  00 00 50 e3                                      cmp r0, #0
004d2c80  03 00 00 0a                                      beq #0x4d2c94
004d2c84  ed f5 f8 eb                                      bl #0x310440
004d2c88  00 30 a0 e3                                      mov r3, #0
004d2c8c  08 30 84 e5                                      str r3, [r4, #8]
004d2c90  0c 30 84 e5                                      str r3, [r4, #0xc]
004d2c94  04 00 a0 e1                                      mov r0, r4
004d2c98  10 40 bd e8                                      pop {r4, lr}
004d2c9c  f1 cf ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2ca0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PutCharacterInIdle
; alias: _ZN7Structs18PutCharacterInIdleD1Ev
; demangled: Structs::PutCharacterInIdle::~PutCharacterInIdle()
; decoder-mode: arm
004d2ca0  10 40 2d e9                                      push {r4, lr}
004d2ca4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2ca8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2cac  00 40 a0 e1                                      mov r4, r0
004d2cb0  03 30 8f e0                                      add r3, pc, r3
004d2cb4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2cb8  02 20 93 e7                                      ldr r2, [r3, r2]
004d2cbc  00 00 50 e3                                      cmp r0, #0
004d2cc0  08 20 82 e2                                      add r2, r2, #8
004d2cc4  00 20 84 e5                                      str r2, [r4]
004d2cc8  00 00 00 0a                                      beq #0x4d2cd0
004d2ccc  db f5 f8 eb                                      bl #0x310440
004d2cd0  04 00 a0 e1                                      mov r0, r4
004d2cd4  e1 cf ff eb                                      bl #0x4c6c60
004d2cd8  04 00 a0 e1                                      mov r0, r4
004d2cdc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2ce0  e0 1d 4c 00 b0 2d 00 00                          .byte 0xe0, 0x1d, 0x4c, 0x00, 0xb0, 0x2d, 0x00, 0x00

; FUNCTION 0x004d2ce8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PutCharacterInIdle
; alias: _ZN7Structs18PutCharacterInIdleD0Ev
; demangled: Structs::PutCharacterInIdle::~PutCharacterInIdle()
; decoder-mode: arm
004d2ce8  10 40 2d e9                                      push {r4, lr}
004d2cec  00 40 a0 e1                                      mov r4, r0
004d2cf0  ea ff ff eb                                      bl #0x4d2ca0
004d2cf4  04 00 a0 e1                                      mov r0, r4
004d2cf8  d0 f5 f8 eb                                      bl #0x310440
004d2cfc  04 00 a0 e1                                      mov r0, r4
004d2d00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2d04, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PutCharacterInIdle
; alias: _ZN7Structs18PutCharacterInIdleD2Ev
; demangled: Structs::PutCharacterInIdle::~PutCharacterInIdle()
; decoder-mode: arm
004d2d04  10 40 2d e9                                      push {r4, lr}
004d2d08  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2d0c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2d10  00 40 a0 e1                                      mov r4, r0
004d2d14  03 30 8f e0                                      add r3, pc, r3
004d2d18  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2d1c  02 20 93 e7                                      ldr r2, [r3, r2]
004d2d20  00 00 50 e3                                      cmp r0, #0
004d2d24  08 20 82 e2                                      add r2, r2, #8
004d2d28  00 20 84 e5                                      str r2, [r4]
004d2d2c  00 00 00 0a                                      beq #0x4d2d34
004d2d30  c2 f5 f8 eb                                      bl #0x310440
004d2d34  04 00 a0 e1                                      mov r0, r4
004d2d38  c8 cf ff eb                                      bl #0x4c6c60
004d2d3c  04 00 a0 e1                                      mov r0, r4
004d2d40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2d44  7c 1d 4c 00 b0 2d 00 00                          .byte 0x7c, 0x1d, 0x4c, 0x00, 0xb0, 0x2d, 0x00, 0x00

; FUNCTION 0x00501cc0, declared_size=192, range_size=192, mode=arm
; class-group: Structs::PutCharacterInIdle
; alias: _ZN7Structs18PutCharacterInIdle4readEP11IStreamBase
; demangled: Structs::PutCharacterInIdle::read(IStreamBase*)
; decoder-mode: arm
00501cc0  70 40 2d e9                                      push {r4, r5, r6, lr}
00501cc4  00 40 a0 e1                                      mov r4, r0
00501cc8  08 d0 4d e2                                      sub sp, sp, #8
00501ccc  01 60 a0 e1                                      mov r6, r1
00501cd0  d4 f6 ff eb                                      bl #0x4ff828
00501cd4  06 00 a0 e1                                      mov r0, r6
00501cd8  08 10 84 e2                                      add r1, r4, #8
00501cdc  2f 75 fb eb                                      bl #0x3df1a0
00501ce0  01 30 a0 e3                                      mov r3, #1
00501ce4  00 00 53 e3                                      cmp r3, #0
00501ce8  04 30 8d e5                                      str r3, [sp, #4]
00501cec  0f 00 00 1a                                      bne #0x501d30
00501cf0  09 30 84 e2                                      add r3, r4, #9
00501cf4  0a 20 84 e2                                      add r2, r4, #0xa
00501cf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501cfc  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501d00  02 00 53 e1                                      cmp r3, r2
00501d04  01 10 20 e0                                      eor r1, r0, r1
00501d08  01 10 43 e5                                      strb r1, [r3, #-1]
00501d0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501d10  00 10 21 e0                                      eor r1, r1, r0
00501d14  01 10 c2 e5                                      strb r1, [r2, #1]
00501d18  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501d1c  01 20 42 e2                                      sub r2, r2, #1
00501d20  00 10 21 e0                                      eor r1, r1, r0
00501d24  01 10 43 e5                                      strb r1, [r3, #-1]
00501d28  01 30 83 e2                                      add r3, r3, #1
00501d2c  f1 ff ff 3a                                      blo #0x501cf8
00501d30  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501d34  00 00 50 e3                                      cmp r0, #0
00501d38  00 00 00 0a                                      beq #0x501d40
00501d3c  bf 39 f8 eb                                      bl #0x310440
00501d40  08 00 94 e5                                      ldr r0, [r4, #8]
00501d44  01 10 a0 e3                                      mov r1, #1
00501d48  00 50 a0 e3                                      mov r5, #0
00501d4c  01 00 80 e0                                      add r0, r0, r1
00501d50  05 3a f8 eb                                      bl #0x31056c
00501d54  08 20 94 e5                                      ldr r2, [r4, #8]
00501d58  00 10 a0 e1                                      mov r1, r0
00501d5c  0c 00 84 e5                                      str r0, [r4, #0xc]
00501d60  05 30 a0 e1                                      mov r3, r5
00501d64  06 00 a0 e1                                      mov r0, r6
00501d68  b9 55 f8 eb                                      bl #0x317454
00501d6c  08 30 94 e5                                      ldr r3, [r4, #8]
00501d70  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501d74  03 50 c2 e7                                      strb r5, [r2, r3]
00501d78  08 d0 8d e2                                      add sp, sp, #8
00501d7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
