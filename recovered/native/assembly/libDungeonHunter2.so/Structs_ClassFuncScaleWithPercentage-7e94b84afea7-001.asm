; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5718, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentage
; alias: _ZN7Structs28ClassFuncScaleWithPercentageD2Ev
; demangled: Structs::ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage()
; decoder-mode: arm
004c5718  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c571c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentage
; alias: _ZN7Structs28ClassFuncScaleWithPercentageD1Ev
; demangled: Structs::ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage()
; decoder-mode: arm
004c571c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c5720, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentage
; alias: _ZN7Structs28ClassFuncScaleWithPercentage8finalizeEv
; demangled: Structs::ClassFuncScaleWithPercentage::finalize()
; decoder-mode: arm
004c5720  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ce9cc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentage
; alias: _ZN7Structs28ClassFuncScaleWithPercentageD0Ev
; demangled: Structs::ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage()
; decoder-mode: arm
004ce9cc  10 40 2d e9                                      push {r4, lr}
004ce9d0  00 40 a0 e1                                      mov r4, r0
004ce9d4  50 db ff eb                                      bl #0x4c571c
004ce9d8  04 00 a0 e1                                      mov r0, r4
004ce9dc  97 06 f9 eb                                      bl #0x310440
004ce9e0  04 00 a0 e1                                      mov r0, r4
004ce9e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f08d8, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncScaleWithPercentage
; alias: _ZN7Structs28ClassFuncScaleWithPercentage4readEP11IStreamBase
; demangled: Structs::ClassFuncScaleWithPercentage::read(IStreamBase*)
; decoder-mode: arm
004f08d8  30 40 2d e9                                      push {r4, r5, lr}
004f08dc  00 40 a0 e1                                      mov r4, r0
004f08e0  0c d0 4d e2                                      sub sp, sp, #0xc
004f08e4  01 00 a0 e1                                      mov r0, r1
004f08e8  01 50 a0 e1                                      mov r5, r1
004f08ec  04 10 84 e2                                      add r1, r4, #4
004f08f0  e6 a1 fd eb                                      bl #0x459090
004f08f4  01 30 a0 e3                                      mov r3, #1
004f08f8  00 00 53 e3                                      cmp r3, #0
004f08fc  04 30 8d e5                                      str r3, [sp, #4]
004f0900  0f 00 00 1a                                      bne #0x4f0944
004f0904  05 30 84 e2                                      add r3, r4, #5
004f0908  06 20 84 e2                                      add r2, r4, #6
004f090c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0910  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0914  03 00 52 e1                                      cmp r2, r3
004f0918  01 10 20 e0                                      eor r1, r0, r1
004f091c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0920  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0924  00 10 21 e0                                      eor r1, r1, r0
004f0928  01 10 c2 e5                                      strb r1, [r2, #1]
004f092c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0930  01 20 42 e2                                      sub r2, r2, #1
004f0934  00 10 21 e0                                      eor r1, r1, r0
004f0938  01 10 43 e5                                      strb r1, [r3, #-1]
004f093c  01 30 83 e2                                      add r3, r3, #1
004f0940  f1 ff ff 8a                                      bhi #0x4f090c
004f0944  05 00 a0 e1                                      mov r0, r5
004f0948  08 10 84 e2                                      add r1, r4, #8
004f094c  cf a1 fd eb                                      bl #0x459090
004f0950  01 30 a0 e3                                      mov r3, #1
004f0954  00 00 53 e3                                      cmp r3, #0
004f0958  04 30 8d e5                                      str r3, [sp, #4]
004f095c  0f 00 00 1a                                      bne #0x4f09a0
004f0960  09 30 84 e2                                      add r3, r4, #9
004f0964  0a 20 84 e2                                      add r2, r4, #0xa
004f0968  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f096c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0970  03 00 52 e1                                      cmp r2, r3
004f0974  01 10 20 e0                                      eor r1, r0, r1
004f0978  01 10 43 e5                                      strb r1, [r3, #-1]
004f097c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0980  00 10 21 e0                                      eor r1, r1, r0
004f0984  01 10 c2 e5                                      strb r1, [r2, #1]
004f0988  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f098c  01 20 42 e2                                      sub r2, r2, #1
004f0990  00 10 21 e0                                      eor r1, r1, r0
004f0994  01 10 43 e5                                      strb r1, [r3, #-1]
004f0998  01 30 83 e2                                      add r3, r3, #1
004f099c  f1 ff ff 8a                                      bhi #0x4f0968
004f09a0  05 00 a0 e1                                      mov r0, r5
004f09a4  0c 10 84 e2                                      add r1, r4, #0xc
004f09a8  b8 a1 fd eb                                      bl #0x459090
004f09ac  01 30 a0 e3                                      mov r3, #1
004f09b0  00 00 53 e3                                      cmp r3, #0
004f09b4  04 30 8d e5                                      str r3, [sp, #4]
004f09b8  0f 00 00 1a                                      bne #0x4f09fc
004f09bc  0d 30 84 e2                                      add r3, r4, #0xd
004f09c0  0e 20 84 e2                                      add r2, r4, #0xe
004f09c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f09c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f09cc  03 00 52 e1                                      cmp r2, r3
004f09d0  01 10 20 e0                                      eor r1, r0, r1
004f09d4  01 10 43 e5                                      strb r1, [r3, #-1]
004f09d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f09dc  00 10 21 e0                                      eor r1, r1, r0
004f09e0  01 10 c2 e5                                      strb r1, [r2, #1]
004f09e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f09e8  01 20 42 e2                                      sub r2, r2, #1
004f09ec  00 10 21 e0                                      eor r1, r1, r0
004f09f0  01 10 43 e5                                      strb r1, [r3, #-1]
004f09f4  01 30 83 e2                                      add r3, r3, #1
004f09f8  f1 ff ff 8a                                      bhi #0x4f09c4
004f09fc  05 00 a0 e1                                      mov r0, r5
004f0a00  10 10 84 e2                                      add r1, r4, #0x10
004f0a04  a1 a1 fd eb                                      bl #0x459090
004f0a08  01 30 a0 e3                                      mov r3, #1
004f0a0c  00 00 53 e3                                      cmp r3, #0
004f0a10  04 30 8d e5                                      str r3, [sp, #4]
004f0a14  0f 00 00 1a                                      bne #0x4f0a58
004f0a18  11 30 84 e2                                      add r3, r4, #0x11
004f0a1c  12 20 84 e2                                      add r2, r4, #0x12
004f0a20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0a24  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f0a28  03 00 52 e1                                      cmp r2, r3
004f0a2c  01 10 20 e0                                      eor r1, r0, r1
004f0a30  01 10 43 e5                                      strb r1, [r3, #-1]
004f0a34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f0a38  00 10 21 e0                                      eor r1, r1, r0
004f0a3c  01 10 c2 e5                                      strb r1, [r2, #1]
004f0a40  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f0a44  01 20 42 e2                                      sub r2, r2, #1
004f0a48  00 10 21 e0                                      eor r1, r1, r0
004f0a4c  01 10 43 e5                                      strb r1, [r3, #-1]
004f0a50  01 30 83 e2                                      add r3, r3, #1
004f0a54  f1 ff ff 8a                                      bhi #0x4f0a20
004f0a58  05 00 a0 e1                                      mov r0, r5
004f0a5c  14 10 84 e2                                      add r1, r4, #0x14
004f0a60  8a a1 fd eb                                      bl #0x459090
004f0a64  01 30 a0 e3                                      mov r3, #1
004f0a68  00 00 53 e3                                      cmp r3, #0
004f0a6c  04 30 8d e5                                      str r3, [sp, #4]
004f0a70  0f 00 00 1a                                      bne #0x4f0ab4
004f0a74  16 30 84 e2                                      add r3, r4, #0x16
004f0a78  15 40 84 e2                                      add r4, r4, #0x15
004f0a7c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f0a80  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f0a84  04 00 53 e1                                      cmp r3, r4
004f0a88  02 20 21 e0                                      eor r2, r1, r2
004f0a8c  01 20 44 e5                                      strb r2, [r4, #-1]
004f0a90  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f0a94  01 20 22 e0                                      eor r2, r2, r1
004f0a98  01 20 c3 e5                                      strb r2, [r3, #1]
004f0a9c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f0aa0  01 30 43 e2                                      sub r3, r3, #1
004f0aa4  01 20 22 e0                                      eor r2, r2, r1
004f0aa8  01 20 44 e5                                      strb r2, [r4, #-1]
004f0aac  01 40 84 e2                                      add r4, r4, #1
004f0ab0  f1 ff ff 8a                                      bhi #0x4f0a7c
004f0ab4  0c d0 8d e2                                      add sp, sp, #0xc
004f0ab8  30 80 bd e8                                      pop {r4, r5, pc}
