; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d2f04, declared_size=48, range_size=48, mode=arm
; class-group: Structs::UnlockCharacter
; alias: _ZN7Structs15UnlockCharacter8finalizeEv
; demangled: Structs::UnlockCharacter::finalize()
; decoder-mode: arm
004d2f04  10 40 2d e9                                      push {r4, lr}
004d2f08  00 40 a0 e1                                      mov r4, r0
004d2f0c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2f10  00 00 50 e3                                      cmp r0, #0
004d2f14  03 00 00 0a                                      beq #0x4d2f28
004d2f18  48 f5 f8 eb                                      bl #0x310440
004d2f1c  00 30 a0 e3                                      mov r3, #0
004d2f20  08 30 84 e5                                      str r3, [r4, #8]
004d2f24  0c 30 84 e5                                      str r3, [r4, #0xc]
004d2f28  04 00 a0 e1                                      mov r0, r4
004d2f2c  10 40 bd e8                                      pop {r4, lr}
004d2f30  4c cf ff ea                                      b #0x4c6c68

; FUNCTION 0x004d2f34, declared_size=72, range_size=72, mode=arm
; class-group: Structs::UnlockCharacter
; alias: _ZN7Structs15UnlockCharacterD1Ev
; demangled: Structs::UnlockCharacter::~UnlockCharacter()
; decoder-mode: arm
004d2f34  10 40 2d e9                                      push {r4, lr}
004d2f38  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2f3c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2f40  00 40 a0 e1                                      mov r4, r0
004d2f44  03 30 8f e0                                      add r3, pc, r3
004d2f48  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2f4c  02 20 93 e7                                      ldr r2, [r3, r2]
004d2f50  00 00 50 e3                                      cmp r0, #0
004d2f54  08 20 82 e2                                      add r2, r2, #8
004d2f58  00 20 84 e5                                      str r2, [r4]
004d2f5c  00 00 00 0a                                      beq #0x4d2f64
004d2f60  36 f5 f8 eb                                      bl #0x310440
004d2f64  04 00 a0 e1                                      mov r0, r4
004d2f68  3c cf ff eb                                      bl #0x4c6c60
004d2f6c  04 00 a0 e1                                      mov r0, r4
004d2f70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2f74  4c 1b 4c 00 d4 43 00 00                          .byte 0x4c, 0x1b, 0x4c, 0x00, 0xd4, 0x43, 0x00, 0x00

; FUNCTION 0x004d2f7c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::UnlockCharacter
; alias: _ZN7Structs15UnlockCharacterD0Ev
; demangled: Structs::UnlockCharacter::~UnlockCharacter()
; decoder-mode: arm
004d2f7c  10 40 2d e9                                      push {r4, lr}
004d2f80  00 40 a0 e1                                      mov r4, r0
004d2f84  ea ff ff eb                                      bl #0x4d2f34
004d2f88  04 00 a0 e1                                      mov r0, r4
004d2f8c  2b f5 f8 eb                                      bl #0x310440
004d2f90  04 00 a0 e1                                      mov r0, r4
004d2f94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d2f98, declared_size=72, range_size=72, mode=arm
; class-group: Structs::UnlockCharacter
; alias: _ZN7Structs15UnlockCharacterD2Ev
; demangled: Structs::UnlockCharacter::~UnlockCharacter()
; decoder-mode: arm
004d2f98  10 40 2d e9                                      push {r4, lr}
004d2f9c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d2fa0  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d2fa4  00 40 a0 e1                                      mov r4, r0
004d2fa8  03 30 8f e0                                      add r3, pc, r3
004d2fac  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d2fb0  02 20 93 e7                                      ldr r2, [r3, r2]
004d2fb4  00 00 50 e3                                      cmp r0, #0
004d2fb8  08 20 82 e2                                      add r2, r2, #8
004d2fbc  00 20 84 e5                                      str r2, [r4]
004d2fc0  00 00 00 0a                                      beq #0x4d2fc8
004d2fc4  1d f5 f8 eb                                      bl #0x310440
004d2fc8  04 00 a0 e1                                      mov r0, r4
004d2fcc  23 cf ff eb                                      bl #0x4c6c60
004d2fd0  04 00 a0 e1                                      mov r0, r4
004d2fd4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d2fd8  e8 1a 4c 00 d4 43 00 00                          .byte 0xe8, 0x1a, 0x4c, 0x00, 0xd4, 0x43, 0x00, 0x00

; FUNCTION 0x00501f0c, declared_size=192, range_size=192, mode=arm
; class-group: Structs::UnlockCharacter
; alias: _ZN7Structs15UnlockCharacter4readEP11IStreamBase
; demangled: Structs::UnlockCharacter::read(IStreamBase*)
; decoder-mode: arm
00501f0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00501f10  00 40 a0 e1                                      mov r4, r0
00501f14  08 d0 4d e2                                      sub sp, sp, #8
00501f18  01 60 a0 e1                                      mov r6, r1
00501f1c  41 f6 ff eb                                      bl #0x4ff828
00501f20  06 00 a0 e1                                      mov r0, r6
00501f24  08 10 84 e2                                      add r1, r4, #8
00501f28  9c 74 fb eb                                      bl #0x3df1a0
00501f2c  01 30 a0 e3                                      mov r3, #1
00501f30  00 00 53 e3                                      cmp r3, #0
00501f34  04 30 8d e5                                      str r3, [sp, #4]
00501f38  0f 00 00 1a                                      bne #0x501f7c
00501f3c  09 30 84 e2                                      add r3, r4, #9
00501f40  0a 20 84 e2                                      add r2, r4, #0xa
00501f44  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501f48  01 10 53 e5                                      ldrb r1, [r3, #-1]
00501f4c  02 00 53 e1                                      cmp r3, r2
00501f50  01 10 20 e0                                      eor r1, r0, r1
00501f54  01 10 43 e5                                      strb r1, [r3, #-1]
00501f58  01 00 d2 e5                                      ldrb r0, [r2, #1]
00501f5c  00 10 21 e0                                      eor r1, r1, r0
00501f60  01 10 c2 e5                                      strb r1, [r2, #1]
00501f64  01 00 53 e5                                      ldrb r0, [r3, #-1]
00501f68  01 20 42 e2                                      sub r2, r2, #1
00501f6c  00 10 21 e0                                      eor r1, r1, r0
00501f70  01 10 43 e5                                      strb r1, [r3, #-1]
00501f74  01 30 83 e2                                      add r3, r3, #1
00501f78  f1 ff ff 3a                                      blo #0x501f44
00501f7c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00501f80  00 00 50 e3                                      cmp r0, #0
00501f84  00 00 00 0a                                      beq #0x501f8c
00501f88  2c 39 f8 eb                                      bl #0x310440
00501f8c  08 00 94 e5                                      ldr r0, [r4, #8]
00501f90  01 10 a0 e3                                      mov r1, #1
00501f94  00 50 a0 e3                                      mov r5, #0
00501f98  01 00 80 e0                                      add r0, r0, r1
00501f9c  72 39 f8 eb                                      bl #0x31056c
00501fa0  08 20 94 e5                                      ldr r2, [r4, #8]
00501fa4  00 10 a0 e1                                      mov r1, r0
00501fa8  0c 00 84 e5                                      str r0, [r4, #0xc]
00501fac  05 30 a0 e1                                      mov r3, r5
00501fb0  06 00 a0 e1                                      mov r0, r6
00501fb4  26 55 f8 eb                                      bl #0x317454
00501fb8  08 30 94 e5                                      ldr r3, [r4, #8]
00501fbc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00501fc0  03 50 c2 e7                                      strb r5, [r2, r3]
00501fc4  08 d0 8d e2                                      add sp, sp, #8
00501fc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
