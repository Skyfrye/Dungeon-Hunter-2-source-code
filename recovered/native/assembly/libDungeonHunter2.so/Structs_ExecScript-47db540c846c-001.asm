; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d39dc, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ExecScript
; alias: _ZN7Structs10ExecScript8finalizeEv
; demangled: Structs::ExecScript::finalize()
; decoder-mode: arm
004d39dc  10 40 2d e9                                      push {r4, lr}
004d39e0  00 40 a0 e1                                      mov r4, r0
004d39e4  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d39e8  00 00 50 e3                                      cmp r0, #0
004d39ec  03 00 00 0a                                      beq #0x4d3a00
004d39f0  92 f2 f8 eb                                      bl #0x310440
004d39f4  00 30 a0 e3                                      mov r3, #0
004d39f8  10 30 84 e5                                      str r3, [r4, #0x10]
004d39fc  14 30 84 e5                                      str r3, [r4, #0x14]
004d3a00  04 00 a0 e1                                      mov r0, r4
004d3a04  10 40 bd e8                                      pop {r4, lr}
004d3a08  96 cc ff ea                                      b #0x4c6c68

; FUNCTION 0x004d3a0c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ExecScript
; alias: _ZN7Structs10ExecScriptD1Ev
; demangled: Structs::ExecScript::~ExecScript()
; decoder-mode: arm
004d3a0c  10 40 2d e9                                      push {r4, lr}
004d3a10  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3a14  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d3a18  00 40 a0 e1                                      mov r4, r0
004d3a1c  03 30 8f e0                                      add r3, pc, r3
004d3a20  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d3a24  02 20 93 e7                                      ldr r2, [r3, r2]
004d3a28  00 00 50 e3                                      cmp r0, #0
004d3a2c  08 20 82 e2                                      add r2, r2, #8
004d3a30  00 20 84 e5                                      str r2, [r4]
004d3a34  00 00 00 0a                                      beq #0x4d3a3c
004d3a38  80 f2 f8 eb                                      bl #0x310440
004d3a3c  04 00 a0 e1                                      mov r0, r4
004d3a40  86 cc ff eb                                      bl #0x4c6c60
004d3a44  04 00 a0 e1                                      mov r0, r4
004d3a48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3a4c  74 10 4c 00 18 23 00 00                          .byte 0x74, 0x10, 0x4c, 0x00, 0x18, 0x23, 0x00, 0x00

; FUNCTION 0x004d3a54, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ExecScript
; alias: _ZN7Structs10ExecScriptD0Ev
; demangled: Structs::ExecScript::~ExecScript()
; decoder-mode: arm
004d3a54  10 40 2d e9                                      push {r4, lr}
004d3a58  00 40 a0 e1                                      mov r4, r0
004d3a5c  ea ff ff eb                                      bl #0x4d3a0c
004d3a60  04 00 a0 e1                                      mov r0, r4
004d3a64  75 f2 f8 eb                                      bl #0x310440
004d3a68  04 00 a0 e1                                      mov r0, r4
004d3a6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3a70, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ExecScript
; alias: _ZN7Structs10ExecScriptD2Ev
; demangled: Structs::ExecScript::~ExecScript()
; decoder-mode: arm
004d3a70  10 40 2d e9                                      push {r4, lr}
004d3a74  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3a78  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d3a7c  00 40 a0 e1                                      mov r4, r0
004d3a80  03 30 8f e0                                      add r3, pc, r3
004d3a84  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d3a88  02 20 93 e7                                      ldr r2, [r3, r2]
004d3a8c  00 00 50 e3                                      cmp r0, #0
004d3a90  08 20 82 e2                                      add r2, r2, #8
004d3a94  00 20 84 e5                                      str r2, [r4]
004d3a98  00 00 00 0a                                      beq #0x4d3aa0
004d3a9c  67 f2 f8 eb                                      bl #0x310440
004d3aa0  04 00 a0 e1                                      mov r0, r4
004d3aa4  6d cc ff eb                                      bl #0x4c6c60
004d3aa8  04 00 a0 e1                                      mov r0, r4
004d3aac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3ab0  10 10 4c 00 18 23 00 00                          .byte 0x10, 0x10, 0x4c, 0x00, 0x18, 0x23, 0x00, 0x00

; FUNCTION 0x004ffc24, declared_size=412, range_size=412, mode=arm
; class-group: Structs::ExecScript
; alias: _ZN7Structs10ExecScript4readEP11IStreamBase
; demangled: Structs::ExecScript::read(IStreamBase*)
; decoder-mode: arm
004ffc24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ffc28  00 50 a0 e1                                      mov r5, r0
004ffc2c  08 d0 4d e2                                      sub sp, sp, #8
004ffc30  01 80 a0 e1                                      mov r8, r1
004ffc34  fb fe ff eb                                      bl #0x4ff828
004ffc38  08 00 a0 e1                                      mov r0, r8
004ffc3c  08 10 85 e2                                      add r1, r5, #8
004ffc40  15 6f ff eb                                      bl #0x4db89c
004ffc44  08 00 a0 e1                                      mov r0, r8
004ffc48  0c 10 85 e2                                      add r1, r5, #0xc
004ffc4c  0f 65 fd eb                                      bl #0x459090
004ffc50  01 30 a0 e3                                      mov r3, #1
004ffc54  00 00 53 e3                                      cmp r3, #0
004ffc58  04 30 8d e5                                      str r3, [sp, #4]
004ffc5c  0f 00 00 1a                                      bne #0x4ffca0
004ffc60  0d 30 85 e2                                      add r3, r5, #0xd
004ffc64  0e 20 85 e2                                      add r2, r5, #0xe
004ffc68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffc6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ffc70  02 00 53 e1                                      cmp r3, r2
004ffc74  01 10 20 e0                                      eor r1, r0, r1
004ffc78  01 10 43 e5                                      strb r1, [r3, #-1]
004ffc7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffc80  00 10 21 e0                                      eor r1, r1, r0
004ffc84  01 10 c2 e5                                      strb r1, [r2, #1]
004ffc88  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ffc8c  01 20 42 e2                                      sub r2, r2, #1
004ffc90  00 10 21 e0                                      eor r1, r1, r0
004ffc94  01 10 43 e5                                      strb r1, [r3, #-1]
004ffc98  01 30 83 e2                                      add r3, r3, #1
004ffc9c  f1 ff ff 3a                                      blo #0x4ffc68
004ffca0  08 00 a0 e1                                      mov r0, r8
004ffca4  10 10 85 e2                                      add r1, r5, #0x10
004ffca8  3c 7d fb eb                                      bl #0x3df1a0
004ffcac  01 30 a0 e3                                      mov r3, #1
004ffcb0  00 00 53 e3                                      cmp r3, #0
004ffcb4  04 30 8d e5                                      str r3, [sp, #4]
004ffcb8  0f 00 00 1a                                      bne #0x4ffcfc
004ffcbc  11 30 85 e2                                      add r3, r5, #0x11
004ffcc0  12 20 85 e2                                      add r2, r5, #0x12
004ffcc4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffcc8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ffccc  03 00 52 e1                                      cmp r2, r3
004ffcd0  01 10 20 e0                                      eor r1, r0, r1
004ffcd4  01 10 43 e5                                      strb r1, [r3, #-1]
004ffcd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffcdc  00 10 21 e0                                      eor r1, r1, r0
004ffce0  01 10 c2 e5                                      strb r1, [r2, #1]
004ffce4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ffce8  01 20 42 e2                                      sub r2, r2, #1
004ffcec  00 10 21 e0                                      eor r1, r1, r0
004ffcf0  01 10 43 e5                                      strb r1, [r3, #-1]
004ffcf4  01 30 83 e2                                      add r3, r3, #1
004ffcf8  f1 ff ff 8a                                      bhi #0x4ffcc4
004ffcfc  14 00 95 e5                                      ldr r0, [r5, #0x14]
004ffd00  00 00 50 e3                                      cmp r0, #0
004ffd04  00 00 00 0a                                      beq #0x4ffd0c
004ffd08  cc 41 f8 eb                                      bl #0x310440
004ffd0c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004ffd10  01 10 a0 e3                                      mov r1, #1
004ffd14  00 01 a0 e1                                      lsl r0, r0, #2
004ffd18  13 42 f8 eb                                      bl #0x31056c
004ffd1c  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ffd20  14 00 85 e5                                      str r0, [r5, #0x14]
004ffd24  00 00 53 e3                                      cmp r3, #0
004ffd28  1f 00 00 0a                                      beq #0x4ffdac
004ffd2c  00 40 a0 e3                                      mov r4, #0
004ffd30  01 70 a0 e3                                      mov r7, #1
004ffd34  04 61 a0 e1                                      lsl r6, r4, #2
004ffd38  06 10 80 e0                                      add r1, r0, r6
004ffd3c  08 00 a0 e1                                      mov r0, r8
004ffd40  d2 64 fd eb                                      bl #0x459090
004ffd44  04 70 8d e5                                      str r7, [sp, #4]
004ffd48  00 00 57 e3                                      cmp r7, #0
004ffd4c  14 30 95 e5                                      ldr r3, [r5, #0x14]
004ffd50  10 00 00 1a                                      bne #0x4ffd98
004ffd54  06 60 83 e0                                      add r6, r3, r6
004ffd58  02 30 86 e2                                      add r3, r6, #2
004ffd5c  01 60 86 e2                                      add r6, r6, #1
004ffd60  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffd64  01 20 56 e5                                      ldrb r2, [r6, #-1]
004ffd68  03 00 56 e1                                      cmp r6, r3
004ffd6c  02 20 21 e0                                      eor r2, r1, r2
004ffd70  01 20 46 e5                                      strb r2, [r6, #-1]
004ffd74  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffd78  01 20 22 e0                                      eor r2, r2, r1
004ffd7c  01 20 c3 e5                                      strb r2, [r3, #1]
004ffd80  01 10 56 e5                                      ldrb r1, [r6, #-1]
004ffd84  01 30 43 e2                                      sub r3, r3, #1
004ffd88  01 20 22 e0                                      eor r2, r2, r1
004ffd8c  01 20 46 e5                                      strb r2, [r6, #-1]
004ffd90  01 60 86 e2                                      add r6, r6, #1
004ffd94  f1 ff ff 3a                                      blo #0x4ffd60
004ffd98  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ffd9c  01 40 84 e2                                      add r4, r4, #1
004ffda0  04 00 53 e1                                      cmp r3, r4
004ffda4  14 00 95 85                                      ldrhi r0, [r5, #0x14]
004ffda8  e1 ff ff 8a                                      bhi #0x4ffd34
004ffdac  08 00 a0 e1                                      mov r0, r8
004ffdb0  18 10 85 e2                                      add r1, r5, #0x18
004ffdb4  b8 6e ff eb                                      bl #0x4db89c
004ffdb8  08 d0 8d e2                                      add sp, sp, #8
004ffdbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
