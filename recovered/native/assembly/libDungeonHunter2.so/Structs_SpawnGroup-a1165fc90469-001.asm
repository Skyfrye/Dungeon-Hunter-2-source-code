; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0b2c, declared_size=100, range_size=100, mode=arm
; class-group: Structs::SpawnGroup
; alias: _ZN7Structs10SpawnGroup8finalizeEv
; demangled: Structs::SpawnGroup::finalize()
; decoder-mode: arm
004d0b2c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d0b30  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d0b34  00 50 a0 e1                                      mov r5, r0
004d0b38  00 00 53 e3                                      cmp r3, #0
004d0b3c  12 00 00 0a                                      beq #0x4d0b8c
004d0b40  04 00 13 e5                                      ldr r0, [r3, #-4]
004d0b44  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d0b48  00 00 53 e1                                      cmp r3, r0
004d0b4c  01 00 00 1a                                      bne #0x4d0b58
004d0b50  08 00 00 ea                                      b #0x4d0b78
004d0b54  04 00 a0 e1                                      mov r0, r4
004d0b58  10 40 40 e2                                      sub r4, r0, #0x10
004d0b5c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0b60  04 00 a0 e1                                      mov r0, r4
004d0b64  0f e0 a0 e1                                      mov lr, pc
004d0b68  00 f0 93 e5                                      ldr pc, [r3]
004d0b6c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d0b70  04 00 50 e1                                      cmp r0, r4
004d0b74  f6 ff ff 1a                                      bne #0x4d0b54
004d0b78  08 00 40 e2                                      sub r0, r0, #8
004d0b7c  2f fe f8 eb                                      bl #0x310440
004d0b80  00 30 a0 e3                                      mov r3, #0
004d0b84  0c 30 85 e5                                      str r3, [r5, #0xc]
004d0b88  10 30 85 e5                                      str r3, [r5, #0x10]
004d0b8c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d0b90, declared_size=124, range_size=124, mode=arm
; class-group: Structs::SpawnGroup
; alias: _ZN7Structs10SpawnGroupD1Ev
; demangled: Structs::SpawnGroup::~SpawnGroup()
; decoder-mode: arm
004d0b90  70 40 2d e9                                      push {r4, r5, r6, lr}
004d0b94  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d0b98  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d0b9c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d0ba0  03 30 8f e0                                      add r3, pc, r3
004d0ba4  02 20 93 e7                                      ldr r2, [r3, r2]
004d0ba8  00 00 51 e3                                      cmp r1, #0
004d0bac  00 50 a0 e1                                      mov r5, r0
004d0bb0  08 20 82 e2                                      add r2, r2, #8
004d0bb4  00 20 80 e5                                      str r2, [r0]
004d0bb8  0f 00 00 0a                                      beq #0x4d0bfc
004d0bbc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d0bc0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d0bc4  00 00 51 e1                                      cmp r1, r0
004d0bc8  01 00 00 1a                                      bne #0x4d0bd4
004d0bcc  08 00 00 ea                                      b #0x4d0bf4
004d0bd0  04 00 a0 e1                                      mov r0, r4
004d0bd4  10 40 40 e2                                      sub r4, r0, #0x10
004d0bd8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0bdc  04 00 a0 e1                                      mov r0, r4
004d0be0  0f e0 a0 e1                                      mov lr, pc
004d0be4  00 f0 93 e5                                      ldr pc, [r3]
004d0be8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d0bec  04 00 50 e1                                      cmp r0, r4
004d0bf0  f6 ff ff 1a                                      bne #0x4d0bd0
004d0bf4  08 00 40 e2                                      sub r0, r0, #8
004d0bf8  10 fe f8 eb                                      bl #0x310440
004d0bfc  05 00 a0 e1                                      mov r0, r5
004d0c00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d0c04  f0 3e 4c 00 64 21 00 00                          .byte 0xf0, 0x3e, 0x4c, 0x00, 0x64, 0x21, 0x00, 0x00

; FUNCTION 0x004d0c0c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SpawnGroup
; alias: _ZN7Structs10SpawnGroupD0Ev
; demangled: Structs::SpawnGroup::~SpawnGroup()
; decoder-mode: arm
004d0c0c  10 40 2d e9                                      push {r4, lr}
004d0c10  00 40 a0 e1                                      mov r4, r0
004d0c14  dd ff ff eb                                      bl #0x4d0b90
004d0c18  04 00 a0 e1                                      mov r0, r4
004d0c1c  07 fe f8 eb                                      bl #0x310440
004d0c20  04 00 a0 e1                                      mov r0, r4
004d0c24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0c28, declared_size=124, range_size=124, mode=arm
; class-group: Structs::SpawnGroup
; alias: _ZN7Structs10SpawnGroupD2Ev
; demangled: Structs::SpawnGroup::~SpawnGroup()
; decoder-mode: arm
004d0c28  70 40 2d e9                                      push {r4, r5, r6, lr}
004d0c2c  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d0c30  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d0c34  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d0c38  03 30 8f e0                                      add r3, pc, r3
004d0c3c  02 20 93 e7                                      ldr r2, [r3, r2]
004d0c40  00 00 51 e3                                      cmp r1, #0
004d0c44  00 50 a0 e1                                      mov r5, r0
004d0c48  08 20 82 e2                                      add r2, r2, #8
004d0c4c  00 20 80 e5                                      str r2, [r0]
004d0c50  0f 00 00 0a                                      beq #0x4d0c94
004d0c54  04 00 11 e5                                      ldr r0, [r1, #-4]
004d0c58  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d0c5c  00 00 51 e1                                      cmp r1, r0
004d0c60  01 00 00 1a                                      bne #0x4d0c6c
004d0c64  08 00 00 ea                                      b #0x4d0c8c
004d0c68  04 00 a0 e1                                      mov r0, r4
004d0c6c  10 40 40 e2                                      sub r4, r0, #0x10
004d0c70  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d0c74  04 00 a0 e1                                      mov r0, r4
004d0c78  0f e0 a0 e1                                      mov lr, pc
004d0c7c  00 f0 93 e5                                      ldr pc, [r3]
004d0c80  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d0c84  04 00 50 e1                                      cmp r0, r4
004d0c88  f6 ff ff 1a                                      bne #0x4d0c68
004d0c8c  08 00 40 e2                                      sub r0, r0, #8
004d0c90  ea fd f8 eb                                      bl #0x310440
004d0c94  05 00 a0 e1                                      mov r0, r5
004d0c98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d0c9c  58 3e 4c 00 64 21 00 00                          .byte 0x58, 0x3e, 0x4c, 0x00, 0x64, 0x21, 0x00, 0x00

; FUNCTION 0x004eb244, declared_size=452, range_size=452, mode=arm
; class-group: Structs::SpawnGroup
; alias: _ZN7Structs10SpawnGroup4readEP11IStreamBase
; demangled: Structs::SpawnGroup::read(IStreamBase*)
; decoder-mode: arm
004eb244  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004eb248  00 50 a0 e1                                      mov r5, r0
004eb24c  0c d0 4d e2                                      sub sp, sp, #0xc
004eb250  01 00 a0 e1                                      mov r0, r1
004eb254  01 60 a0 e1                                      mov r6, r1
004eb258  04 10 85 e2                                      add r1, r5, #4
004eb25c  8e c1 ff eb                                      bl #0x4db89c
004eb260  98 71 9f e5                                      ldr r7, [pc, #0x198]
004eb264  06 00 a0 e1                                      mov r0, r6
004eb268  08 10 85 e2                                      add r1, r5, #8
004eb26c  87 b7 fd eb                                      bl #0x459090
004eb270  01 30 a0 e3                                      mov r3, #1
004eb274  00 00 53 e3                                      cmp r3, #0
004eb278  04 30 8d e5                                      str r3, [sp, #4]
004eb27c  07 70 8f e0                                      add r7, pc, r7
004eb280  0f 00 00 1a                                      bne #0x4eb2c4
004eb284  09 30 85 e2                                      add r3, r5, #9
004eb288  0a 20 85 e2                                      add r2, r5, #0xa
004eb28c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb290  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb294  03 00 52 e1                                      cmp r2, r3
004eb298  01 10 20 e0                                      eor r1, r0, r1
004eb29c  01 10 43 e5                                      strb r1, [r3, #-1]
004eb2a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb2a4  00 10 21 e0                                      eor r1, r1, r0
004eb2a8  01 10 c2 e5                                      strb r1, [r2, #1]
004eb2ac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb2b0  01 20 42 e2                                      sub r2, r2, #1
004eb2b4  00 10 21 e0                                      eor r1, r1, r0
004eb2b8  01 10 43 e5                                      strb r1, [r3, #-1]
004eb2bc  01 30 83 e2                                      add r3, r3, #1
004eb2c0  f1 ff ff 8a                                      bhi #0x4eb28c
004eb2c4  06 00 a0 e1                                      mov r0, r6
004eb2c8  0c 10 85 e2                                      add r1, r5, #0xc
004eb2cc  b3 cf fb eb                                      bl #0x3df1a0
004eb2d0  01 30 a0 e3                                      mov r3, #1
004eb2d4  00 00 53 e3                                      cmp r3, #0
004eb2d8  04 30 8d e5                                      str r3, [sp, #4]
004eb2dc  0f 00 00 1a                                      bne #0x4eb320
004eb2e0  0d 30 85 e2                                      add r3, r5, #0xd
004eb2e4  0e 20 85 e2                                      add r2, r5, #0xe
004eb2e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb2ec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb2f0  03 00 52 e1                                      cmp r2, r3
004eb2f4  01 10 20 e0                                      eor r1, r0, r1
004eb2f8  01 10 43 e5                                      strb r1, [r3, #-1]
004eb2fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb300  00 10 21 e0                                      eor r1, r1, r0
004eb304  01 10 c2 e5                                      strb r1, [r2, #1]
004eb308  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb30c  01 20 42 e2                                      sub r2, r2, #1
004eb310  00 10 21 e0                                      eor r1, r1, r0
004eb314  01 10 43 e5                                      strb r1, [r3, #-1]
004eb318  01 30 83 e2                                      add r3, r3, #1
004eb31c  f1 ff ff 8a                                      bhi #0x4eb2e8
004eb320  10 30 95 e5                                      ldr r3, [r5, #0x10]
004eb324  00 00 53 e3                                      cmp r3, #0
004eb328  0f 00 00 0a                                      beq #0x4eb36c
004eb32c  04 00 13 e5                                      ldr r0, [r3, #-4]
004eb330  00 02 83 e0                                      add r0, r3, r0, lsl #4
004eb334  00 00 53 e1                                      cmp r3, r0
004eb338  01 00 00 1a                                      bne #0x4eb344
004eb33c  08 00 00 ea                                      b #0x4eb364
004eb340  04 00 a0 e1                                      mov r0, r4
004eb344  10 40 40 e2                                      sub r4, r0, #0x10
004eb348  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004eb34c  04 00 a0 e1                                      mov r0, r4
004eb350  0f e0 a0 e1                                      mov lr, pc
004eb354  00 f0 93 e5                                      ldr pc, [r3]
004eb358  10 00 95 e5                                      ldr r0, [r5, #0x10]
004eb35c  04 00 50 e1                                      cmp r0, r4
004eb360  f6 ff ff 1a                                      bne #0x4eb340
004eb364  08 00 40 e2                                      sub r0, r0, #8
004eb368  34 94 f8 eb                                      bl #0x310440
004eb36c  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004eb370  01 10 a0 e3                                      mov r1, #1
004eb374  04 02 a0 e1                                      lsl r0, r4, #4
004eb378  08 00 80 e2                                      add r0, r0, #8
004eb37c  7a 94 f8 eb                                      bl #0x31056c
004eb380  10 30 a0 e3                                      mov r3, #0x10
004eb384  00 00 54 e3                                      cmp r4, #0
004eb388  18 00 80 e8                                      stm r0, {r3, r4}
004eb38c  08 30 80 e2                                      add r3, r0, #8
004eb390  08 00 00 0a                                      beq #0x4eb3b8
004eb394  68 10 9f e5                                      ldr r1, [pc, #0x68]
004eb398  00 20 a0 e3                                      mov r2, #0
004eb39c  01 10 97 e7                                      ldr r1, [r7, r1]
004eb3a0  08 10 81 e2                                      add r1, r1, #8
004eb3a4  01 20 82 e2                                      add r2, r2, #1
004eb3a8  04 00 52 e1                                      cmp r2, r4
004eb3ac  08 10 80 e5                                      str r1, [r0, #8]
004eb3b0  10 00 80 e2                                      add r0, r0, #0x10
004eb3b4  fa ff ff 1a                                      bne #0x4eb3a4
004eb3b8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004eb3bc  10 30 85 e5                                      str r3, [r5, #0x10]
004eb3c0  00 00 52 e3                                      cmp r2, #0
004eb3c4  0b 00 00 0a                                      beq #0x4eb3f8
004eb3c8  00 40 a0 e3                                      mov r4, #0
004eb3cc  00 00 00 ea                                      b #0x4eb3d4
004eb3d0  10 30 95 e5                                      ldr r3, [r5, #0x10]
004eb3d4  04 02 83 e0                                      add r0, r3, r4, lsl #4
004eb3d8  06 10 a0 e1                                      mov r1, r6
004eb3dc  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004eb3e0  0f e0 a0 e1                                      mov lr, pc
004eb3e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004eb3e8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004eb3ec  01 40 84 e2                                      add r4, r4, #1
004eb3f0  04 00 53 e1                                      cmp r3, r4
004eb3f4  f5 ff ff 8a                                      bhi #0x4eb3d0
004eb3f8  0c d0 8d e2                                      add sp, sp, #0xc
004eb3fc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004eb400  14 98 4a 00 80 0b 00 00                          .byte 0x14, 0x98, 0x4a, 0x00, 0x80, 0x0b, 0x00, 0x00
