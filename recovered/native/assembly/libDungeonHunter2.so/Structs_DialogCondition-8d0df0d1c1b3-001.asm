; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004daac4, declared_size=40, range_size=40, mode=arm
; class-group: Structs::DialogCondition
; alias: _ZN7Structs15DialogCondition8finalizeEv
; demangled: Structs::DialogCondition::finalize()
; decoder-mode: arm
004daac4  10 40 2d e9                                      push {r4, lr}
004daac8  00 40 a0 e1                                      mov r4, r0
004daacc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004daad0  00 00 50 e3                                      cmp r0, #0
004daad4  03 00 00 0a                                      beq #0x4daae8
004daad8  58 d6 f8 eb                                      bl #0x310440
004daadc  00 30 a0 e3                                      mov r3, #0
004daae0  08 30 84 e5                                      str r3, [r4, #8]
004daae4  0c 30 84 e5                                      str r3, [r4, #0xc]
004daae8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004daaec, declared_size=64, range_size=64, mode=arm
; class-group: Structs::DialogCondition
; alias: _ZN7Structs15DialogConditionD1Ev
; demangled: Structs::DialogCondition::~DialogCondition()
; decoder-mode: arm
004daaec  10 40 2d e9                                      push {r4, lr}
004daaf0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004daaf4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004daaf8  00 40 a0 e1                                      mov r4, r0
004daafc  03 30 8f e0                                      add r3, pc, r3
004dab00  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004dab04  02 20 93 e7                                      ldr r2, [r3, r2]
004dab08  00 00 50 e3                                      cmp r0, #0
004dab0c  08 20 82 e2                                      add r2, r2, #8
004dab10  00 20 84 e5                                      str r2, [r4]
004dab14  00 00 00 0a                                      beq #0x4dab1c
004dab18  48 d6 f8 eb                                      bl #0x310440
004dab1c  04 00 a0 e1                                      mov r0, r4
004dab20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004dab24  94 9f 4b 00 d0 16 00 00                          .byte 0x94, 0x9f, 0x4b, 0x00, 0xd0, 0x16, 0x00, 0x00

; FUNCTION 0x004dab2c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DialogCondition
; alias: _ZN7Structs15DialogConditionD0Ev
; demangled: Structs::DialogCondition::~DialogCondition()
; decoder-mode: arm
004dab2c  10 40 2d e9                                      push {r4, lr}
004dab30  00 40 a0 e1                                      mov r4, r0
004dab34  ec ff ff eb                                      bl #0x4daaec
004dab38  04 00 a0 e1                                      mov r0, r4
004dab3c  3f d6 f8 eb                                      bl #0x310440
004dab40  04 00 a0 e1                                      mov r0, r4
004dab44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dab48, declared_size=64, range_size=64, mode=arm
; class-group: Structs::DialogCondition
; alias: _ZN7Structs15DialogConditionD2Ev
; demangled: Structs::DialogCondition::~DialogCondition()
; decoder-mode: arm
004dab48  10 40 2d e9                                      push {r4, lr}
004dab4c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004dab50  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004dab54  00 40 a0 e1                                      mov r4, r0
004dab58  03 30 8f e0                                      add r3, pc, r3
004dab5c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004dab60  02 20 93 e7                                      ldr r2, [r3, r2]
004dab64  00 00 50 e3                                      cmp r0, #0
004dab68  08 20 82 e2                                      add r2, r2, #8
004dab6c  00 20 84 e5                                      str r2, [r4]
004dab70  00 00 00 0a                                      beq #0x4dab78
004dab74  31 d6 f8 eb                                      bl #0x310440
004dab78  04 00 a0 e1                                      mov r0, r4
004dab7c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004dab80  38 9f 4b 00 d0 16 00 00                          .byte 0x38, 0x9f, 0x4b, 0x00, 0xd0, 0x16, 0x00, 0x00

; FUNCTION 0x00506cb0, declared_size=280, range_size=280, mode=arm
; class-group: Structs::DialogCondition
; alias: _ZN7Structs15DialogCondition4readEP11IStreamBase
; demangled: Structs::DialogCondition::read(IStreamBase*)
; decoder-mode: arm
00506cb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00506cb4  00 40 a0 e1                                      mov r4, r0
00506cb8  08 d0 4d e2                                      sub sp, sp, #8
00506cbc  01 00 a0 e1                                      mov r0, r1
00506cc0  01 60 a0 e1                                      mov r6, r1
00506cc4  04 10 84 e2                                      add r1, r4, #4
00506cc8  f0 48 fd eb                                      bl #0x459090
00506ccc  01 30 a0 e3                                      mov r3, #1
00506cd0  00 00 53 e3                                      cmp r3, #0
00506cd4  04 30 8d e5                                      str r3, [sp, #4]
00506cd8  0f 00 00 1a                                      bne #0x506d1c
00506cdc  05 30 84 e2                                      add r3, r4, #5
00506ce0  06 20 84 e2                                      add r2, r4, #6
00506ce4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506ce8  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506cec  02 00 53 e1                                      cmp r3, r2
00506cf0  01 10 20 e0                                      eor r1, r0, r1
00506cf4  01 10 43 e5                                      strb r1, [r3, #-1]
00506cf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506cfc  00 10 21 e0                                      eor r1, r1, r0
00506d00  01 10 c2 e5                                      strb r1, [r2, #1]
00506d04  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506d08  01 20 42 e2                                      sub r2, r2, #1
00506d0c  00 10 21 e0                                      eor r1, r1, r0
00506d10  01 10 43 e5                                      strb r1, [r3, #-1]
00506d14  01 30 83 e2                                      add r3, r3, #1
00506d18  f1 ff ff 3a                                      blo #0x506ce4
00506d1c  06 00 a0 e1                                      mov r0, r6
00506d20  08 10 84 e2                                      add r1, r4, #8
00506d24  1d 61 fb eb                                      bl #0x3df1a0
00506d28  01 30 a0 e3                                      mov r3, #1
00506d2c  00 00 53 e3                                      cmp r3, #0
00506d30  04 30 8d e5                                      str r3, [sp, #4]
00506d34  0f 00 00 1a                                      bne #0x506d78
00506d38  09 30 84 e2                                      add r3, r4, #9
00506d3c  0a 20 84 e2                                      add r2, r4, #0xa
00506d40  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506d44  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506d48  02 00 53 e1                                      cmp r3, r2
00506d4c  01 10 20 e0                                      eor r1, r0, r1
00506d50  01 10 43 e5                                      strb r1, [r3, #-1]
00506d54  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506d58  00 10 21 e0                                      eor r1, r1, r0
00506d5c  01 10 c2 e5                                      strb r1, [r2, #1]
00506d60  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506d64  01 20 42 e2                                      sub r2, r2, #1
00506d68  00 10 21 e0                                      eor r1, r1, r0
00506d6c  01 10 43 e5                                      strb r1, [r3, #-1]
00506d70  01 30 83 e2                                      add r3, r3, #1
00506d74  f1 ff ff 3a                                      blo #0x506d40
00506d78  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00506d7c  00 00 50 e3                                      cmp r0, #0
00506d80  00 00 00 0a                                      beq #0x506d88
00506d84  ad 25 f8 eb                                      bl #0x310440
00506d88  08 00 94 e5                                      ldr r0, [r4, #8]
00506d8c  01 10 a0 e3                                      mov r1, #1
00506d90  00 50 a0 e3                                      mov r5, #0
00506d94  01 00 80 e0                                      add r0, r0, r1
00506d98  f3 25 f8 eb                                      bl #0x31056c
00506d9c  08 20 94 e5                                      ldr r2, [r4, #8]
00506da0  00 10 a0 e1                                      mov r1, r0
00506da4  0c 00 84 e5                                      str r0, [r4, #0xc]
00506da8  05 30 a0 e1                                      mov r3, r5
00506dac  06 00 a0 e1                                      mov r0, r6
00506db0  a7 41 f8 eb                                      bl #0x317454
00506db4  08 30 94 e5                                      ldr r3, [r4, #8]
00506db8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00506dbc  03 50 c2 e7                                      strb r5, [r2, r3]
00506dc0  08 d0 8d e2                                      add sp, sp, #8
00506dc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
