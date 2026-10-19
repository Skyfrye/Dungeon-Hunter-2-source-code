; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2e28, declared_size=48, range_size=48, mode=arm
; class-group: Structs::PutCharacterInLimbus
; alias: _ZN7Structs20PutCharacterInLimbus8finalizeEv
; demangled: Structs::PutCharacterInLimbus::finalize()
; decoder-mode: arm
004d2e28  10 40 2d e9                                      push {r4, lr}
004d2e2c  00 40 a0 e1                                      mov r4, r0
004d2e30  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2e34  00 00 50 e3                                      cmp r0, #0
004d2e38  03 00 00 0a                                      beq #0x4d2e4c
004d2e3c  7f f5 f8 eb                                      bl #0x310440
004d2e40  00 30 a0 e3                                      mov r3, #0
004d2e44  0c 30 84 e5                                      str r3, [r4, #0xc]
004d2e48  10 30 84 e5                                      str r3, [r4, #0x10]
004d2e4c  04 00 a0 e1                                      mov r0, r4
004d2e50  10 40 bd e8                                      pop {r4, lr}
004d2e54  83 cf ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2e58, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PutCharacterInLimbus
; alias: _ZN7Structs20PutCharacterInLimbusD1Ev
; demangled: Structs::PutCharacterInLimbus::~PutCharacterInLimbus()
; decoder-mode: arm
004d2e58  10 40 2d e9                                      push {r4, lr}
004d2e5c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2e60  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2e64  00 40 a0 e1                                      mov r4, r0
004d2e68  03 30 8f e0                                      add r3, pc, r3
004d2e6c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2e70  02 20 93 e7                                      ldr r2, [r3, r2]
004d2e74  00 00 50 e3                                      cmp r0, #0
004d2e78  08 20 82 e2                                      add r2, r2, #8
004d2e7c  00 20 84 e5                                      str r2, [r4]
004d2e80  00 00 00 0a                                      beq #0x4d2e88
004d2e84  6d f5 f8 eb                                      bl #0x310440
004d2e88  04 00 a0 e1                                      mov r0, r4
004d2e8c  73 cf ff eb                                      bl #0x4c6c60
004d2e90  04 00 a0 e1                                      mov r0, r4
004d2e94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2e98  28 1c 4c 00 f8 25 00 00                          .byte 0x28, 0x1c, 0x4c, 0x00, 0xf8, 0x25, 0x00, 0x00

; FUNCTION 0x004d2ea0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PutCharacterInLimbus
; alias: _ZN7Structs20PutCharacterInLimbusD0Ev
; demangled: Structs::PutCharacterInLimbus::~PutCharacterInLimbus()
; decoder-mode: arm
004d2ea0  10 40 2d e9                                      push {r4, lr}
004d2ea4  00 40 a0 e1                                      mov r4, r0
004d2ea8  ea ff ff eb                                      bl #0x4d2e58
004d2eac  04 00 a0 e1                                      mov r0, r4
004d2eb0  62 f5 f8 eb                                      bl #0x310440
004d2eb4  04 00 a0 e1                                      mov r0, r4
004d2eb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2ebc, declared_size=72, range_size=72, mode=arm
; class-group: Structs::PutCharacterInLimbus
; alias: _ZN7Structs20PutCharacterInLimbusD2Ev
; demangled: Structs::PutCharacterInLimbus::~PutCharacterInLimbus()
; decoder-mode: arm
004d2ebc  10 40 2d e9                                      push {r4, lr}
004d2ec0  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2ec4  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2ec8  00 40 a0 e1                                      mov r4, r0
004d2ecc  03 30 8f e0                                      add r3, pc, r3
004d2ed0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d2ed4  02 20 93 e7                                      ldr r2, [r3, r2]
004d2ed8  00 00 50 e3                                      cmp r0, #0
004d2edc  08 20 82 e2                                      add r2, r2, #8
004d2ee0  00 20 84 e5                                      str r2, [r4]
004d2ee4  00 00 00 0a                                      beq #0x4d2eec
004d2ee8  54 f5 f8 eb                                      bl #0x310440
004d2eec  04 00 a0 e1                                      mov r0, r4
004d2ef0  5a cf ff eb                                      bl #0x4c6c60
004d2ef4  04 00 a0 e1                                      mov r0, r4
004d2ef8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2efc  c4 1b 4c 00 f8 25 00 00                          .byte 0xc4, 0x1b, 0x4c, 0x00, 0xf8, 0x25, 0x00, 0x00

; FUNCTION 0x00501e40, declared_size=204, range_size=204, mode=arm
; class-group: Structs::PutCharacterInLimbus
; alias: _ZN7Structs20PutCharacterInLimbus4readEP11IStreamBase
; demangled: Structs::PutCharacterInLimbus::read(IStreamBase*)
; decoder-mode: arm
00501e40  70 40 2d e9                                      push {r4, r5, r6, lr}
00501e44  00 40 a0 e1                                      mov r4, r0
00501e48  08 d0 4d e2                                      sub sp, sp, #8
00501e4c  01 60 a0 e1                                      mov r6, r1
00501e50  74 f6 ff eb                                      bl #0x4ff828
00501e54  06 00 a0 e1                                      mov r0, r6
00501e58  08 10 84 e2                                      add r1, r4, #8
00501e5c  8e 66 ff eb                                      bl #0x4db89c
00501e60  06 00 a0 e1                                      mov r0, r6
00501e64  0c 10 84 e2                                      add r1, r4, #0xc
00501e68  cc 74 fb eb                                      bl #0x3df1a0
00501e6c  01 30 a0 e3                                      mov r3, #1
00501e70  00 00 53 e3                                      cmp r3, #0
00501e74  04 30 8d e5                                      str r3, [sp, #4]
00501e78  0f 00 00 1a                                      bne #0x501ebc
00501e7c  0d 30 84 e2                                      add r3, r4, #0xd
00501e80  0e 20 84 e2                                      add r2, r4, #0xe
00501e84  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501e88  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501e8c  03 00 52 e1                                      cmp r2, r3
00501e90  01 10 20 e0                                      eor r1, r0, r1
00501e94  01 10 43 e5                                      strb r1, [r3, #-1]
00501e98  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501e9c  00 10 21 e0                                      eor r1, r1, r0
00501ea0  01 10 c2 e5                                      strb r1, [r2, #1]
00501ea4  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501ea8  01 20 42 e2                                      sub r2, r2, #1
00501eac  00 10 21 e0                                      eor r1, r1, r0
00501eb0  01 10 43 e5                                      strb r1, [r3, #-1]
00501eb4  01 30 83 e2                                      add r3, r3, #1
00501eb8  f1 ff ff 8a                                      bhi #0x501e84
00501ebc  10 00 94 e5                                      ldr r0, [r4, #0x10]
00501ec0  00 00 50 e3                                      cmp r0, #0
00501ec4  00 00 00 0a                                      beq #0x501ecc
00501ec8  5c 39 f8 eb                                      bl #0x310440
00501ecc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501ed0  01 10 a0 e3                                      mov r1, #1
00501ed4  00 50 a0 e3                                      mov r5, #0
00501ed8  01 00 80 e0                                      add r0, r0, r1
00501edc  a2 39 f8 eb                                      bl #0x31056c
00501ee0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501ee4  00 10 a0 e1                                      mov r1, r0
00501ee8  10 00 84 e5                                      str r0, [r4, #0x10]
00501eec  05 30 a0 e1                                      mov r3, r5
00501ef0  06 00 a0 e1                                      mov r0, r6
00501ef4  56 55 f8 eb                                      bl #0x317454
00501ef8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00501efc  10 20 94 e5                                      ldr r2, [r4, #0x10]
00501f00  03 50 c2 e7                                      strb r5, [r2, r3]
00501f04  08 d0 8d e2                                      add sp, sp, #8
00501f08  70 80 bd e8                                      pop {r4, r5, r6, pc}
