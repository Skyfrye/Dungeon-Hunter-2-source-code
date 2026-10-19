; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d09b4, declared_size=100, range_size=100, mode=arm
; class-group: Structs::v2CondAnd
; alias: _ZN7Structs9v2CondAnd8finalizeEv
; demangled: Structs::v2CondAnd::finalize()
; decoder-mode: arm
004d09b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d09b8  08 30 90 e5                                      ldr r3, [r0, #8]
004d09bc  00 50 a0 e1                                      mov r5, r0
004d09c0  00 00 53 e3                                      cmp r3, #0
004d09c4  12 00 00 0a                                      beq #0x4d0a14
004d09c8  04 00 13 e5                                      ldr r0, [r3, #-4]
004d09cc  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d09d0  00 00 53 e1                                      cmp r3, r0
004d09d4  01 00 00 1a                                      bne #0x4d09e0
004d09d8  08 00 00 ea                                      b #0x4d0a00
004d09dc  04 00 a0 e1                                      mov r0, r4
004d09e0  10 40 40 e2                                      sub r4, r0, #0x10
004d09e4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d09e8  04 00 a0 e1                                      mov r0, r4
004d09ec  0f e0 a0 e1                                      mov lr, pc
004d09f0  00 f0 93 e5                                      ldr pc, [r3]
004d09f4  08 00 95 e5                                      ldr r0, [r5, #8]
004d09f8  04 00 50 e1                                      cmp r0, r4
004d09fc  f6 ff ff 1a                                      bne #0x4d09dc
004d0a00  08 00 40 e2                                      sub r0, r0, #8
004d0a04  8d fe f8 eb                                      bl #0x310440
004d0a08  00 30 a0 e3                                      mov r3, #0
004d0a0c  04 30 85 e5                                      str r3, [r5, #4]
004d0a10  08 30 85 e5                                      str r3, [r5, #8]
004d0a14  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d0a18, declared_size=124, range_size=124, mode=arm
; class-group: Structs::v2CondAnd
; alias: _ZN7Structs9v2CondAndD1Ev
; demangled: Structs::v2CondAnd::~v2CondAnd()
; decoder-mode: arm
004d0a18  70 40 2d e9                                      push {r4, r5, r6, lr}
004d0a1c  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d0a20  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d0a24  08 10 90 e5                                      ldr r1, [r0, #8]
004d0a28  03 30 8f e0                                      add r3, pc, r3
004d0a2c  02 20 93 e7                                      ldr r2, [r3, r2]
004d0a30  00 00 51 e3                                      cmp r1, #0
004d0a34  00 50 a0 e1                                      mov r5, r0
004d0a38  08 20 82 e2                                      add r2, r2, #8
004d0a3c  00 20 80 e5                                      str r2, [r0]
004d0a40  0f 00 00 0a                                      beq #0x4d0a84
004d0a44  04 00 11 e5                                      ldr r0, [r1, #-4]
004d0a48  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d0a4c  00 00 51 e1                                      cmp r1, r0
004d0a50  01 00 00 1a                                      bne #0x4d0a5c
004d0a54  08 00 00 ea                                      b #0x4d0a7c
004d0a58  04 00 a0 e1                                      mov r0, r4
004d0a5c  10 40 40 e2                                      sub r4, r0, #0x10
004d0a60  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0a64  04 00 a0 e1                                      mov r0, r4
004d0a68  0f e0 a0 e1                                      mov lr, pc
004d0a6c  00 f0 93 e5                                      ldr pc, [r3]
004d0a70  08 00 95 e5                                      ldr r0, [r5, #8]
004d0a74  04 00 50 e1                                      cmp r0, r4
004d0a78  f6 ff ff 1a                                      bne #0x4d0a58
004d0a7c  08 00 40 e2                                      sub r0, r0, #8
004d0a80  6e fe f8 eb                                      bl #0x310440
004d0a84  05 00 a0 e1                                      mov r0, r5
004d0a88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d0a8c  68 40 4c 00 6c 2f 00 00                          .byte 0x68, 0x40, 0x4c, 0x00, 0x6c, 0x2f, 0x00, 0x00

; FUNCTION 0x004d0a94, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2CondAnd
; alias: _ZN7Structs9v2CondAndD0Ev
; demangled: Structs::v2CondAnd::~v2CondAnd()
; decoder-mode: arm
004d0a94  10 40 2d e9                                      push {r4, lr}
004d0a98  00 40 a0 e1                                      mov r4, r0
004d0a9c  dd ff ff eb                                      bl #0x4d0a18
004d0aa0  04 00 a0 e1                                      mov r0, r4
004d0aa4  65 fe f8 eb                                      bl #0x310440
004d0aa8  04 00 a0 e1                                      mov r0, r4
004d0aac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0ab0, declared_size=124, range_size=124, mode=arm
; class-group: Structs::v2CondAnd
; alias: _ZN7Structs9v2CondAndD2Ev
; demangled: Structs::v2CondAnd::~v2CondAnd()
; decoder-mode: arm
004d0ab0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d0ab4  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d0ab8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d0abc  08 10 90 e5                                      ldr r1, [r0, #8]
004d0ac0  03 30 8f e0                                      add r3, pc, r3
004d0ac4  02 20 93 e7                                      ldr r2, [r3, r2]
004d0ac8  00 00 51 e3                                      cmp r1, #0
004d0acc  00 50 a0 e1                                      mov r5, r0
004d0ad0  08 20 82 e2                                      add r2, r2, #8
004d0ad4  00 20 80 e5                                      str r2, [r0]
004d0ad8  0f 00 00 0a                                      beq #0x4d0b1c
004d0adc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d0ae0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d0ae4  00 00 51 e1                                      cmp r1, r0
004d0ae8  01 00 00 1a                                      bne #0x4d0af4
004d0aec  08 00 00 ea                                      b #0x4d0b14
004d0af0  04 00 a0 e1                                      mov r0, r4
004d0af4  10 40 40 e2                                      sub r4, r0, #0x10
004d0af8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0afc  04 00 a0 e1                                      mov r0, r4
004d0b00  0f e0 a0 e1                                      mov lr, pc
004d0b04  00 f0 93 e5                                      ldr pc, [r3]
004d0b08  08 00 95 e5                                      ldr r0, [r5, #8]
004d0b0c  04 00 50 e1                                      cmp r0, r4
004d0b10  f6 ff ff 1a                                      bne #0x4d0af0
004d0b14  08 00 40 e2                                      sub r0, r0, #8
004d0b18  48 fe f8 eb                                      bl #0x310440
004d0b1c  05 00 a0 e1                                      mov r0, r5
004d0b20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d0b24  d0 3f 4c 00 6c 2f 00 00                          .byte 0xd0, 0x3f, 0x4c, 0x00, 0x6c, 0x2f, 0x00, 0x00

; FUNCTION 0x00505970, declared_size=440, range_size=440, mode=arm
; class-group: Structs::v2CondAnd
; alias: _ZN7Structs9v2CondAnd4readEP11IStreamBase
; demangled: Structs::v2CondAnd::read(IStreamBase*)
; decoder-mode: arm
00505970  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00505974  00 50 a0 e1                                      mov r5, r0
00505978  0c d0 4d e2                                      sub sp, sp, #0xc
0050597c  01 00 a0 e1                                      mov r0, r1
00505980  01 60 a0 e1                                      mov r6, r1
00505984  94 71 9f e5                                      ldr r7, [pc, #0x194]
00505988  04 10 85 e2                                      add r1, r5, #4
0050598c  03 66 fb eb                                      bl #0x3df1a0
00505990  01 30 a0 e3                                      mov r3, #1
00505994  00 00 53 e3                                      cmp r3, #0
00505998  04 30 8d e5                                      str r3, [sp, #4]
0050599c  07 70 8f e0                                      add r7, pc, r7
005059a0  0f 00 00 1a                                      bne #0x5059e4
005059a4  05 30 85 e2                                      add r3, r5, #5
005059a8  06 20 85 e2                                      add r2, r5, #6
005059ac  01 00 d2 e5                                      ldrb r0, [r2, #1]
005059b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005059b4  03 00 52 e1                                      cmp r2, r3
005059b8  01 10 20 e0                                      eor r1, r0, r1
005059bc  01 10 43 e5                                      strb r1, [r3, #-1]
005059c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005059c4  00 10 21 e0                                      eor r1, r1, r0
005059c8  01 10 c2 e5                                      strb r1, [r2, #1]
005059cc  01 00 53 e5                                      ldrb r0, [r3, #-1]
005059d0  01 20 42 e2                                      sub r2, r2, #1
005059d4  00 10 21 e0                                      eor r1, r1, r0
005059d8  01 10 43 e5                                      strb r1, [r3, #-1]
005059dc  01 30 83 e2                                      add r3, r3, #1
005059e0  f1 ff ff 8a                                      bhi #0x5059ac
005059e4  08 30 95 e5                                      ldr r3, [r5, #8]
005059e8  00 00 53 e3                                      cmp r3, #0
005059ec  0f 00 00 0a                                      beq #0x505a30
005059f0  04 00 13 e5                                      ldr r0, [r3, #-4]
005059f4  00 02 83 e0                                      add r0, r3, r0, lsl #4
005059f8  00 00 53 e1                                      cmp r3, r0
005059fc  01 00 00 1a                                      bne #0x505a08
00505a00  08 00 00 ea                                      b #0x505a28
00505a04  04 00 a0 e1                                      mov r0, r4
00505a08  10 40 40 e2                                      sub r4, r0, #0x10
00505a0c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
00505a10  04 00 a0 e1                                      mov r0, r4
00505a14  0f e0 a0 e1                                      mov lr, pc
00505a18  00 f0 93 e5                                      ldr pc, [r3]
00505a1c  08 00 95 e5                                      ldr r0, [r5, #8]
00505a20  04 00 50 e1                                      cmp r0, r4
00505a24  f6 ff ff 1a                                      bne #0x505a04
00505a28  08 00 40 e2                                      sub r0, r0, #8
00505a2c  83 2a f8 eb                                      bl #0x310440
00505a30  04 40 95 e5                                      ldr r4, [r5, #4]
00505a34  01 10 a0 e3                                      mov r1, #1
00505a38  04 02 a0 e1                                      lsl r0, r4, #4
00505a3c  08 00 80 e2                                      add r0, r0, #8
00505a40  c9 2a f8 eb                                      bl #0x31056c
00505a44  10 30 a0 e3                                      mov r3, #0x10
00505a48  00 00 54 e3                                      cmp r4, #0
00505a4c  18 00 80 e8                                      stm r0, {r3, r4}
00505a50  08 30 80 e2                                      add r3, r0, #8
00505a54  08 00 00 0a                                      beq #0x505a7c
00505a58  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00505a5c  00 20 a0 e3                                      mov r2, #0
00505a60  01 10 97 e7                                      ldr r1, [r7, r1]
00505a64  08 10 81 e2                                      add r1, r1, #8
00505a68  01 20 82 e2                                      add r2, r2, #1
00505a6c  04 00 52 e1                                      cmp r2, r4
00505a70  08 10 80 e5                                      str r1, [r0, #8]
00505a74  10 00 80 e2                                      add r0, r0, #0x10
00505a78  fa ff ff 1a                                      bne #0x505a68
00505a7c  04 20 95 e5                                      ldr r2, [r5, #4]
00505a80  08 30 85 e5                                      str r3, [r5, #8]
00505a84  00 00 52 e3                                      cmp r2, #0
00505a88  0b 00 00 0a                                      beq #0x505abc
00505a8c  00 40 a0 e3                                      mov r4, #0
00505a90  00 00 00 ea                                      b #0x505a98
00505a94  08 30 95 e5                                      ldr r3, [r5, #8]
00505a98  04 02 83 e0                                      add r0, r3, r4, lsl #4
00505a9c  06 10 a0 e1                                      mov r1, r6
00505aa0  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
00505aa4  0f e0 a0 e1                                      mov lr, pc
00505aa8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00505aac  04 30 95 e5                                      ldr r3, [r5, #4]
00505ab0  01 40 84 e2                                      add r4, r4, #1
00505ab4  04 00 53 e1                                      cmp r3, r4
00505ab8  f5 ff ff 8a                                      bhi #0x505a94
00505abc  06 00 a0 e1                                      mov r0, r6
00505ac0  0c 10 85 e2                                      add r1, r5, #0xc
00505ac4  71 4d fd eb                                      bl #0x459090
00505ac8  01 30 a0 e3                                      mov r3, #1
00505acc  00 00 53 e3                                      cmp r3, #0
00505ad0  04 30 8d e5                                      str r3, [sp, #4]
00505ad4  0f 00 00 1a                                      bne #0x505b18
00505ad8  0e 30 85 e2                                      add r3, r5, #0xe
00505adc  0d 50 85 e2                                      add r5, r5, #0xd
00505ae0  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505ae4  01 20 55 e5                                      ldrb r2, [r5, #-1]
00505ae8  03 00 55 e1                                      cmp r5, r3
00505aec  02 20 21 e0                                      eor r2, r1, r2
00505af0  01 20 45 e5                                      strb r2, [r5, #-1]
00505af4  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505af8  01 20 22 e0                                      eor r2, r2, r1
00505afc  01 20 c3 e5                                      strb r2, [r3, #1]
00505b00  01 10 55 e5                                      ldrb r1, [r5, #-1]
00505b04  01 30 43 e2                                      sub r3, r3, #1
00505b08  01 20 22 e0                                      eor r2, r2, r1
00505b0c  01 20 45 e5                                      strb r2, [r5, #-1]
00505b10  01 50 85 e2                                      add r5, r5, #1
00505b14  f1 ff ff 3a                                      blo #0x505ae0
00505b18  0c d0 8d e2                                      add sp, sp, #0xc
00505b1c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00505b20  f4 f0 48 00 48 09 00 00                          .byte 0xf4, 0xf0, 0x48, 0x00, 0x48, 0x09, 0x00, 0x00
