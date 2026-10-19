; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2b94, declared_size=48, range_size=48, mode=arm
; class-group: Structs::MarkCharacterAsScripted
; alias: _ZN7Structs23MarkCharacterAsScripted8finalizeEv
; demangled: Structs::MarkCharacterAsScripted::finalize()
; decoder-mode: arm
004d2b94  10 40 2d e9                                      push {r4, lr}
004d2b98  00 40 a0 e1                                      mov r4, r0
004d2b9c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2ba0  00 00 50 e3                                      cmp r0, #0
004d2ba4  03 00 00 0a                                      beq #0x4d2bb8
004d2ba8  24 f6 f8 eb                                      bl #0x310440
004d2bac  00 30 a0 e3                                      mov r3, #0
004d2bb0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d2bb4  10 30 84 e5                                      str r3, [r4, #0x10]
004d2bb8  04 00 a0 e1                                      mov r0, r4
004d2bbc  10 40 bd e8                                      pop {r4, lr}
004d2bc0  28 d0 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2bc4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::MarkCharacterAsScripted
; alias: _ZN7Structs23MarkCharacterAsScriptedD1Ev
; demangled: Structs::MarkCharacterAsScripted::~MarkCharacterAsScripted()
; decoder-mode: arm
004d2bc4  10 40 2d e9                                      push {r4, lr}
004d2bc8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2bcc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2bd0  00 40 a0 e1                                      mov r4, r0
004d2bd4  03 30 8f e0                                      add r3, pc, r3
004d2bd8  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2bdc  02 20 93 e7                                      ldr r2, [r3, r2]
004d2be0  00 00 50 e3                                      cmp r0, #0
004d2be4  08 20 82 e2                                      add r2, r2, #8
004d2be8  00 20 84 e5                                      str r2, [r4]
004d2bec  00 00 00 0a                                      beq #0x4d2bf4
004d2bf0  12 f6 f8 eb                                      bl #0x310440
004d2bf4  04 00 a0 e1                                      mov r0, r4
004d2bf8  18 d0 ff eb                                      bl #0x4c6c60
004d2bfc  04 00 a0 e1                                      mov r0, r4
004d2c00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2c04  bc 1e 4c 00 58 45 00 00                          .byte 0xbc, 0x1e, 0x4c, 0x00, 0x58, 0x45, 0x00, 0x00

; FUNCTION 0x004d2c0c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::MarkCharacterAsScripted
; alias: _ZN7Structs23MarkCharacterAsScriptedD0Ev
; demangled: Structs::MarkCharacterAsScripted::~MarkCharacterAsScripted()
; decoder-mode: arm
004d2c0c  10 40 2d e9                                      push {r4, lr}
004d2c10  00 40 a0 e1                                      mov r4, r0
004d2c14  ea ff ff eb                                      bl #0x4d2bc4
004d2c18  04 00 a0 e1                                      mov r0, r4
004d2c1c  07 f6 f8 eb                                      bl #0x310440
004d2c20  04 00 a0 e1                                      mov r0, r4
004d2c24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2c28, declared_size=72, range_size=72, mode=arm
; class-group: Structs::MarkCharacterAsScripted
; alias: _ZN7Structs23MarkCharacterAsScriptedD2Ev
; demangled: Structs::MarkCharacterAsScripted::~MarkCharacterAsScripted()
; decoder-mode: arm
004d2c28  10 40 2d e9                                      push {r4, lr}
004d2c2c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2c30  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2c34  00 40 a0 e1                                      mov r4, r0
004d2c38  03 30 8f e0                                      add r3, pc, r3
004d2c3c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2c40  02 20 93 e7                                      ldr r2, [r3, r2]
004d2c44  00 00 50 e3                                      cmp r0, #0
004d2c48  08 20 82 e2                                      add r2, r2, #8
004d2c4c  00 20 84 e5                                      str r2, [r4]
004d2c50  00 00 00 0a                                      beq #0x4d2c58
004d2c54  f9 f5 f8 eb                                      bl #0x310440
004d2c58  04 00 a0 e1                                      mov r0, r4
004d2c5c  ff cf ff eb                                      bl #0x4c6c60
004d2c60  04 00 a0 e1                                      mov r0, r4
004d2c64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2c68  58 1e 4c 00 58 45 00 00                          .byte 0x58, 0x1e, 0x4c, 0x00, 0x58, 0x45, 0x00, 0x00

; FUNCTION 0x00501bf4, declared_size=204, range_size=204, mode=arm
; class-group: Structs::MarkCharacterAsScripted
; alias: _ZN7Structs23MarkCharacterAsScripted4readEP11IStreamBase
; demangled: Structs::MarkCharacterAsScripted::read(IStreamBase*)
; decoder-mode: arm
00501bf4  70 40 2d e9                                      push {r4, r5, r6, lr}
00501bf8  00 40 a0 e1                                      mov r4, r0
00501bfc  08 d0 4d e2                                      sub sp, sp, #8
00501c00  01 60 a0 e1                                      mov r6, r1
00501c04  07 f7 ff eb                                      bl #0x4ff828
00501c08  06 00 a0 e1                                      mov r0, r6
00501c0c  08 10 84 e2                                      add r1, r4, #8
00501c10  21 67 ff eb                                      bl #0x4db89c
00501c14  06 00 a0 e1                                      mov r0, r6
00501c18  0c 10 84 e2                                      add r1, r4, #0xc
00501c1c  5f 75 fb eb                                      bl #0x3df1a0
00501c20  01 30 a0 e3                                      mov r3, #1
00501c24  00 00 53 e3                                      cmp r3, #0
00501c28  04 30 8d e5                                      str r3, [sp, #4]
00501c2c  0f 00 00 1a                                      bne #0x501c70
00501c30  0d 30 84 e2                                      add r3, r4, #0xd
00501c34  0e 20 84 e2                                      add r2, r4, #0xe
00501c38  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501c3c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501c40  03 00 52 e1                                      cmp r2, r3
00501c44  01 10 20 e0                                      eor r1, r0, r1
00501c48  01 10 43 e5                                      strb r1, [r3, #-1]
00501c4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501c50  00 10 21 e0                                      eor r1, r1, r0
00501c54  01 10 c2 e5                                      strb r1, [r2, #1]
00501c58  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501c5c  01 20 42 e2                                      sub r2, r2, #1
00501c60  00 10 21 e0                                      eor r1, r1, r0
00501c64  01 10 43 e5                                      strb r1, [r3, #-1]
00501c68  01 30 83 e2                                      add r3, r3, #1
00501c6c  f1 ff ff 8a                                      bhi #0x501c38
00501c70  10 00 94 e5                                      ldr r0, [r4, #0x10]
00501c74  00 00 50 e3                                      cmp r0, #0
00501c78  00 00 00 0a                                      beq #0x501c80
00501c7c  ef 39 f8 eb                                      bl #0x310440
00501c80  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501c84  01 10 a0 e3                                      mov r1, #1
00501c88  00 50 a0 e3                                      mov r5, #0
00501c8c  01 00 80 e0                                      add r0, r0, r1
00501c90  35 3a f8 eb                                      bl #0x31056c
00501c94  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501c98  00 10 a0 e1                                      mov r1, r0
00501c9c  10 00 84 e5                                      str r0, [r4, #0x10]
00501ca0  05 30 a0 e1                                      mov r3, r5
00501ca4  06 00 a0 e1                                      mov r0, r6
00501ca8  e9 55 f8 eb                                      bl #0x317454
00501cac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00501cb0  10 20 94 e5                                      ldr r2, [r4, #0x10]
00501cb4  03 50 c2 e7                                      strb r5, [r2, r3]
00501cb8  08 d0 8d e2                                      add sp, sp, #8
00501cbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
