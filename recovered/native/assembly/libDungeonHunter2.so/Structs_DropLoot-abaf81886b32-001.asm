; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d1ec4, declared_size=76, range_size=76, mode=arm
; class-group: Structs::DropLoot
; alias: _ZN7Structs8DropLoot8finalizeEv
; demangled: Structs::DropLoot::finalize()
; decoder-mode: arm
004d1ec4  10 40 2d e9                                      push {r4, lr}
004d1ec8  00 40 a0 e1                                      mov r4, r0
004d1ecc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1ed0  00 00 50 e3                                      cmp r0, #0
004d1ed4  03 00 00 0a                                      beq #0x4d1ee8
004d1ed8  58 f9 f8 eb                                      bl #0x310440
004d1edc  00 30 a0 e3                                      mov r3, #0
004d1ee0  08 30 84 e5                                      str r3, [r4, #8]
004d1ee4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1ee8  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d1eec  00 00 50 e3                                      cmp r0, #0
004d1ef0  03 00 00 0a                                      beq #0x4d1f04
004d1ef4  51 f9 f8 eb                                      bl #0x310440
004d1ef8  00 30 a0 e3                                      mov r3, #0
004d1efc  10 30 84 e5                                      str r3, [r4, #0x10]
004d1f00  14 30 84 e5                                      str r3, [r4, #0x14]
004d1f04  04 00 a0 e1                                      mov r0, r4
004d1f08  10 40 bd e8                                      pop {r4, lr}
004d1f0c  55 d3 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1f10, declared_size=88, range_size=88, mode=arm
; class-group: Structs::DropLoot
; alias: _ZN7Structs8DropLootD1Ev
; demangled: Structs::DropLoot::~DropLoot()
; decoder-mode: arm
004d1f10  10 40 2d e9                                      push {r4, lr}
004d1f14  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d1f18  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d1f1c  00 40 a0 e1                                      mov r4, r0
004d1f20  03 30 8f e0                                      add r3, pc, r3
004d1f24  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1f28  02 20 93 e7                                      ldr r2, [r3, r2]
004d1f2c  00 00 50 e3                                      cmp r0, #0
004d1f30  08 20 82 e2                                      add r2, r2, #8
004d1f34  00 20 84 e5                                      str r2, [r4]
004d1f38  00 00 00 0a                                      beq #0x4d1f40
004d1f3c  3f f9 f8 eb                                      bl #0x310440
004d1f40  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d1f44  00 00 50 e3                                      cmp r0, #0
004d1f48  00 00 00 0a                                      beq #0x4d1f50
004d1f4c  3b f9 f8 eb                                      bl #0x310440
004d1f50  04 00 a0 e1                                      mov r0, r4
004d1f54  41 d3 ff eb                                      bl #0x4c6c60
004d1f58  04 00 a0 e1                                      mov r0, r4
004d1f5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1f60  70 2b 4c 00 00 17 00 00                          .byte 0x70, 0x2b, 0x4c, 0x00, 0x00, 0x17, 0x00, 0x00

; FUNCTION 0x004d1f68, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DropLoot
; alias: _ZN7Structs8DropLootD0Ev
; demangled: Structs::DropLoot::~DropLoot()
; decoder-mode: arm
004d1f68  10 40 2d e9                                      push {r4, lr}
004d1f6c  00 40 a0 e1                                      mov r4, r0
004d1f70  e6 ff ff eb                                      bl #0x4d1f10
004d1f74  04 00 a0 e1                                      mov r0, r4
004d1f78  30 f9 f8 eb                                      bl #0x310440
004d1f7c  04 00 a0 e1                                      mov r0, r4
004d1f80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1f84, declared_size=88, range_size=88, mode=arm
; class-group: Structs::DropLoot
; alias: _ZN7Structs8DropLootD2Ev
; demangled: Structs::DropLoot::~DropLoot()
; decoder-mode: arm
004d1f84  10 40 2d e9                                      push {r4, lr}
004d1f88  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d1f8c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d1f90  00 40 a0 e1                                      mov r4, r0
004d1f94  03 30 8f e0                                      add r3, pc, r3
004d1f98  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1f9c  02 20 93 e7                                      ldr r2, [r3, r2]
004d1fa0  00 00 50 e3                                      cmp r0, #0
004d1fa4  08 20 82 e2                                      add r2, r2, #8
004d1fa8  00 20 84 e5                                      str r2, [r4]
004d1fac  00 00 00 0a                                      beq #0x4d1fb4
004d1fb0  22 f9 f8 eb                                      bl #0x310440
004d1fb4  14 00 94 e5                                      ldr r0, [r4, #0x14]
004d1fb8  00 00 50 e3                                      cmp r0, #0
004d1fbc  00 00 00 0a                                      beq #0x4d1fc4
004d1fc0  1e f9 f8 eb                                      bl #0x310440
004d1fc4  04 00 a0 e1                                      mov r0, r4
004d1fc8  24 d3 ff eb                                      bl #0x4c6c60
004d1fcc  04 00 a0 e1                                      mov r0, r4
004d1fd0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1fd4  fc 2a 4c 00 00 17 00 00                          .byte 0xfc, 0x2a, 0x4c, 0x00, 0x00, 0x17, 0x00, 0x00

; FUNCTION 0x00500bb0, declared_size=356, range_size=356, mode=arm
; class-group: Structs::DropLoot
; alias: _ZN7Structs8DropLoot4readEP11IStreamBase
; demangled: Structs::DropLoot::read(IStreamBase*)
; decoder-mode: arm
00500bb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00500bb4  00 40 a0 e1                                      mov r4, r0
00500bb8  08 d0 4d e2                                      sub sp, sp, #8
00500bbc  01 50 a0 e1                                      mov r5, r1
00500bc0  18 fb ff eb                                      bl #0x4ff828
00500bc4  05 00 a0 e1                                      mov r0, r5
00500bc8  08 10 84 e2                                      add r1, r4, #8
00500bcc  73 79 fb eb                                      bl #0x3df1a0
00500bd0  01 30 a0 e3                                      mov r3, #1
00500bd4  00 00 53 e3                                      cmp r3, #0
00500bd8  04 30 8d e5                                      str r3, [sp, #4]
00500bdc  0f 00 00 1a                                      bne #0x500c20
00500be0  09 30 84 e2                                      add r3, r4, #9
00500be4  0a 20 84 e2                                      add r2, r4, #0xa
00500be8  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500bec  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500bf0  02 00 53 e1                                      cmp r3, r2
00500bf4  01 10 20 e0                                      eor r1, r0, r1
00500bf8  01 10 43 e5                                      strb r1, [r3, #-1]
00500bfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500c00  00 10 21 e0                                      eor r1, r1, r0
00500c04  01 10 c2 e5                                      strb r1, [r2, #1]
00500c08  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500c0c  01 20 42 e2                                      sub r2, r2, #1
00500c10  00 10 21 e0                                      eor r1, r1, r0
00500c14  01 10 43 e5                                      strb r1, [r3, #-1]
00500c18  01 30 83 e2                                      add r3, r3, #1
00500c1c  f1 ff ff 3a                                      blo #0x500be8
00500c20  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00500c24  00 00 50 e3                                      cmp r0, #0
00500c28  00 00 00 0a                                      beq #0x500c30
00500c2c  03 3e f8 eb                                      bl #0x310440
00500c30  08 00 94 e5                                      ldr r0, [r4, #8]
00500c34  01 10 a0 e3                                      mov r1, #1
00500c38  00 60 a0 e3                                      mov r6, #0
00500c3c  01 00 80 e0                                      add r0, r0, r1
00500c40  49 3e f8 eb                                      bl #0x31056c
00500c44  08 20 94 e5                                      ldr r2, [r4, #8]
00500c48  00 10 a0 e1                                      mov r1, r0
00500c4c  0c 00 84 e5                                      str r0, [r4, #0xc]
00500c50  06 30 a0 e1                                      mov r3, r6
00500c54  05 00 a0 e1                                      mov r0, r5
00500c58  fd 59 f8 eb                                      bl #0x317454
00500c5c  08 30 94 e5                                      ldr r3, [r4, #8]
00500c60  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00500c64  05 00 a0 e1                                      mov r0, r5
00500c68  10 10 84 e2                                      add r1, r4, #0x10
00500c6c  03 60 c2 e7                                      strb r6, [r2, r3]
00500c70  4a 79 fb eb                                      bl #0x3df1a0
00500c74  01 30 a0 e3                                      mov r3, #1
00500c78  06 00 53 e1                                      cmp r3, r6
00500c7c  04 30 8d e5                                      str r3, [sp, #4]
00500c80  0f 00 00 1a                                      bne #0x500cc4
00500c84  11 30 84 e2                                      add r3, r4, #0x11
00500c88  12 20 84 e2                                      add r2, r4, #0x12
00500c8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500c90  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500c94  02 00 53 e1                                      cmp r3, r2
00500c98  01 10 20 e0                                      eor r1, r0, r1
00500c9c  01 10 43 e5                                      strb r1, [r3, #-1]
00500ca0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500ca4  00 10 21 e0                                      eor r1, r1, r0
00500ca8  01 10 c2 e5                                      strb r1, [r2, #1]
00500cac  01 00 53 e5                                      ldrb r0, [r3, #-1]
00500cb0  01 20 42 e2                                      sub r2, r2, #1
00500cb4  00 10 21 e0                                      eor r1, r1, r0
00500cb8  01 10 43 e5                                      strb r1, [r3, #-1]
00500cbc  01 30 83 e2                                      add r3, r3, #1
00500cc0  f1 ff ff 3a                                      blo #0x500c8c
00500cc4  14 00 94 e5                                      ldr r0, [r4, #0x14]
00500cc8  00 00 50 e3                                      cmp r0, #0
00500ccc  00 00 00 0a                                      beq #0x500cd4
00500cd0  da 3d f8 eb                                      bl #0x310440
00500cd4  10 00 94 e5                                      ldr r0, [r4, #0x10]
00500cd8  01 10 a0 e3                                      mov r1, #1
00500cdc  00 60 a0 e3                                      mov r6, #0
00500ce0  01 00 80 e0                                      add r0, r0, r1
00500ce4  20 3e f8 eb                                      bl #0x31056c
00500ce8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00500cec  00 10 a0 e1                                      mov r1, r0
00500cf0  14 00 84 e5                                      str r0, [r4, #0x14]
00500cf4  06 30 a0 e1                                      mov r3, r6
00500cf8  05 00 a0 e1                                      mov r0, r5
00500cfc  d4 59 f8 eb                                      bl #0x317454
00500d00  10 30 94 e5                                      ldr r3, [r4, #0x10]
00500d04  14 20 94 e5                                      ldr r2, [r4, #0x14]
00500d08  03 60 c2 e7                                      strb r6, [r2, r3]
00500d0c  08 d0 8d e2                                      add sp, sp, #8
00500d10  70 80 bd e8                                      pop {r4, r5, r6, pc}
