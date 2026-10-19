; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2d4c, declared_size=48, range_size=48, mode=arm
; class-group: Structs::SpawnCharacter
; alias: _ZN7Structs14SpawnCharacter8finalizeEv
; demangled: Structs::SpawnCharacter::finalize()
; decoder-mode: arm
004d2d4c  10 40 2d e9                                      push {r4, lr}
004d2d50  00 40 a0 e1                                      mov r4, r0
004d2d54  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2d58  00 00 50 e3                                      cmp r0, #0
004d2d5c  03 00 00 0a                                      beq #0x4d2d70
004d2d60  b6 f5 f8 eb                                      bl #0x310440
004d2d64  00 30 a0 e3                                      mov r3, #0
004d2d68  08 30 84 e5                                      str r3, [r4, #8]
004d2d6c  0c 30 84 e5                                      str r3, [r4, #0xc]
004d2d70  04 00 a0 e1                                      mov r0, r4
004d2d74  10 40 bd e8                                      pop {r4, lr}
004d2d78  ba cf ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2d7c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SpawnCharacter
; alias: _ZN7Structs14SpawnCharacterD1Ev
; demangled: Structs::SpawnCharacter::~SpawnCharacter()
; decoder-mode: arm
004d2d7c  10 40 2d e9                                      push {r4, lr}
004d2d80  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2d84  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2d88  00 40 a0 e1                                      mov r4, r0
004d2d8c  03 30 8f e0                                      add r3, pc, r3
004d2d90  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2d94  02 20 93 e7                                      ldr r2, [r3, r2]
004d2d98  00 00 50 e3                                      cmp r0, #0
004d2d9c  08 20 82 e2                                      add r2, r2, #8
004d2da0  00 20 84 e5                                      str r2, [r4]
004d2da4  00 00 00 0a                                      beq #0x4d2dac
004d2da8  a4 f5 f8 eb                                      bl #0x310440
004d2dac  04 00 a0 e1                                      mov r0, r4
004d2db0  aa cf ff eb                                      bl #0x4c6c60
004d2db4  04 00 a0 e1                                      mov r0, r4
004d2db8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2dbc  04 1d 4c 00 c8 05 00 00                          .byte 0x04, 0x1d, 0x4c, 0x00, 0xc8, 0x05, 0x00, 0x00

; FUNCTION 0x004d2dc4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SpawnCharacter
; alias: _ZN7Structs14SpawnCharacterD0Ev
; demangled: Structs::SpawnCharacter::~SpawnCharacter()
; decoder-mode: arm
004d2dc4  10 40 2d e9                                      push {r4, lr}
004d2dc8  00 40 a0 e1                                      mov r4, r0
004d2dcc  ea ff ff eb                                      bl #0x4d2d7c
004d2dd0  04 00 a0 e1                                      mov r0, r4
004d2dd4  99 f5 f8 eb                                      bl #0x310440
004d2dd8  04 00 a0 e1                                      mov r0, r4
004d2ddc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2de0, declared_size=72, range_size=72, mode=arm
; class-group: Structs::SpawnCharacter
; alias: _ZN7Structs14SpawnCharacterD2Ev
; demangled: Structs::SpawnCharacter::~SpawnCharacter()
; decoder-mode: arm
004d2de0  10 40 2d e9                                      push {r4, lr}
004d2de4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2de8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2dec  00 40 a0 e1                                      mov r4, r0
004d2df0  03 30 8f e0                                      add r3, pc, r3
004d2df4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2df8  02 20 93 e7                                      ldr r2, [r3, r2]
004d2dfc  00 00 50 e3                                      cmp r0, #0
004d2e00  08 20 82 e2                                      add r2, r2, #8
004d2e04  00 20 84 e5                                      str r2, [r4]
004d2e08  00 00 00 0a                                      beq #0x4d2e10
004d2e0c  8b f5 f8 eb                                      bl #0x310440
004d2e10  04 00 a0 e1                                      mov r0, r4
004d2e14  91 cf ff eb                                      bl #0x4c6c60
004d2e18  04 00 a0 e1                                      mov r0, r4
004d2e1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2e20  a0 1c 4c 00 c8 05 00 00                          .byte 0xa0, 0x1c, 0x4c, 0x00, 0xc8, 0x05, 0x00, 0x00

; FUNCTION 0x00501d80, declared_size=192, range_size=192, mode=arm
; class-group: Structs::SpawnCharacter
; alias: _ZN7Structs14SpawnCharacter4readEP11IStreamBase
; demangled: Structs::SpawnCharacter::read(IStreamBase*)
; decoder-mode: arm
00501d80  70 40 2d e9                                      push {r4, r5, r6, lr}
00501d84  00 40 a0 e1                                      mov r4, r0
00501d88  08 d0 4d e2                                      sub sp, sp, #8
00501d8c  01 60 a0 e1                                      mov r6, r1
00501d90  a4 f6 ff eb                                      bl #0x4ff828
00501d94  06 00 a0 e1                                      mov r0, r6
00501d98  08 10 84 e2                                      add r1, r4, #8
00501d9c  ff 74 fb eb                                      bl #0x3df1a0
00501da0  01 30 a0 e3                                      mov r3, #1
00501da4  00 00 53 e3                                      cmp r3, #0
00501da8  04 30 8d e5                                      str r3, [sp, #4]
00501dac  0f 00 00 1a                                      bne #0x501df0
00501db0  09 30 84 e2                                      add r3, r4, #9
00501db4  0a 20 84 e2                                      add r2, r4, #0xa
00501db8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501dbc  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501dc0  02 00 53 e1                                      cmp r3, r2
00501dc4  01 10 20 e0                                      eor r1, r0, r1
00501dc8  01 10 43 e5                                      strb r1, [r3, #-1]
00501dcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501dd0  00 10 21 e0                                      eor r1, r1, r0
00501dd4  01 10 c2 e5                                      strb r1, [r2, #1]
00501dd8  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501ddc  01 20 42 e2                                      sub r2, r2, #1
00501de0  00 10 21 e0                                      eor r1, r1, r0
00501de4  01 10 43 e5                                      strb r1, [r3, #-1]
00501de8  01 30 83 e2                                      add r3, r3, #1
00501dec  f1 ff ff 3a                                      blo #0x501db8
00501df0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501df4  00 00 50 e3                                      cmp r0, #0
00501df8  00 00 00 0a                                      beq #0x501e00
00501dfc  8f 39 f8 eb                                      bl #0x310440
00501e00  08 00 94 e5                                      ldr r0, [r4, #8]
00501e04  01 10 a0 e3                                      mov r1, #1
00501e08  00 50 a0 e3                                      mov r5, #0
00501e0c  01 00 80 e0                                      add r0, r0, r1
00501e10  d5 39 f8 eb                                      bl #0x31056c
00501e14  08 20 94 e5                                      ldr r2, [r4, #8]
00501e18  00 10 a0 e1                                      mov r1, r0
00501e1c  0c 00 84 e5                                      str r0, [r4, #0xc]
00501e20  05 30 a0 e1                                      mov r3, r5
00501e24  06 00 a0 e1                                      mov r0, r6
00501e28  89 55 f8 eb                                      bl #0x317454
00501e2c  08 30 94 e5                                      ldr r3, [r4, #8]
00501e30  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501e34  03 50 c2 e7                                      strb r5, [r2, r3]
00501e38  08 d0 8d e2                                      add sp, sp, #8
00501e3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
