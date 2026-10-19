; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d0cf8, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::face_entity
; alias: _ZN7gameswf11face_entityC1EP11FT_FaceRec_PNS_6membufERNS_9tu_stringE
; demangled: gameswf::face_entity::face_entity(FT_FaceRec_*, gameswf::membuf*, gameswf::tu_string&)
; decoder-mode: arm
007d0cf8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d0cfc  70 40 9f e5                                      ldr r4, [pc, #0x70]
007d0d00  00 60 a0 e1                                      mov r6, r0
007d0d04  01 50 a0 e1                                      mov r5, r1
007d0d08  02 70 a0 e1                                      mov r7, r2
007d0d0c  03 80 a0 e1                                      mov r8, r3
007d0d10  bb 23 fe eb                                      bl #0x759c04
007d0d14  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
007d0d18  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
007d0d1c  04 40 8f e0                                      add r4, pc, r4
007d0d20  01 10 94 e7                                      ldr r1, [r4, r1]
007d0d24  00 30 e0 e3                                      mvn r3, #0
007d0d28  13 20 d7 e7                                      bfi r2, r3, #0, #0x18
007d0d2c  22 0c a0 e1                                      lsr r0, r2, #0x18
007d0d30  00 30 a0 e3                                      mov r3, #0
007d0d34  08 10 81 e2                                      add r1, r1, #8
007d0d38  13 00 c0 e7                                      bfi r0, r3, #0, #1
007d0d3c  00 10 86 e5                                      str r1, [r6]
007d0d40  01 10 a0 e3                                      mov r1, #1
007d0d44  0c 10 c6 e5                                      strb r1, [r6, #0xc]
007d0d48  1c 20 86 e5                                      str r2, [r6, #0x1c]
007d0d4c  20 70 86 e5                                      str r7, [r6, #0x20]
007d0d50  1f 00 c6 e5                                      strb r0, [r6, #0x1f]
007d0d54  24 50 86 e5                                      str r5, [r6, #0x24]
007d0d58  0c 00 86 e2                                      add r0, r6, #0xc
007d0d5c  28 30 86 e5                                      str r3, [r6, #0x28]
007d0d60  0d 30 c6 e5                                      strb r3, [r6, #0xd]
007d0d64  08 10 a0 e1                                      mov r1, r8
007d0d68  78 08 fe eb                                      bl #0x752f50
007d0d6c  06 00 a0 e1                                      mov r0, r6
007d0d70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d0d74  74 3d 1c 00 30 15 00 00                          .byte 0x74, 0x3d, 0x1c, 0x00, 0x30, 0x15, 0x00, 0x00

; FUNCTION 0x007d0d7c, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::face_entity
; alias: _ZN7gameswf11face_entityC1EP11FT_FaceRec_RNS_9tu_stringE
; demangled: gameswf::face_entity::face_entity(FT_FaceRec_*, gameswf::tu_string&)
; decoder-mode: arm
007d0d7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d0d80  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
007d0d84  00 50 a0 e1                                      mov r5, r0
007d0d88  01 60 a0 e1                                      mov r6, r1
007d0d8c  02 70 a0 e1                                      mov r7, r2
007d0d90  9b 23 fe eb                                      bl #0x759c04
007d0d94  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
007d0d98  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007d0d9c  04 40 8f e0                                      add r4, pc, r4
007d0da0  01 10 94 e7                                      ldr r1, [r4, r1]
007d0da4  00 30 e0 e3                                      mvn r3, #0
007d0da8  13 20 d7 e7                                      bfi r2, r3, #0, #0x18
007d0dac  22 0c a0 e1                                      lsr r0, r2, #0x18
007d0db0  00 30 a0 e3                                      mov r3, #0
007d0db4  08 10 81 e2                                      add r1, r1, #8
007d0db8  13 00 c0 e7                                      bfi r0, r3, #0, #1
007d0dbc  00 10 85 e5                                      str r1, [r5]
007d0dc0  01 10 a0 e3                                      mov r1, #1
007d0dc4  0c 10 c5 e5                                      strb r1, [r5, #0xc]
007d0dc8  1c 20 85 e5                                      str r2, [r5, #0x1c]
007d0dcc  24 60 85 e5                                      str r6, [r5, #0x24]
007d0dd0  1f 00 c5 e5                                      strb r0, [r5, #0x1f]
007d0dd4  28 30 85 e5                                      str r3, [r5, #0x28]
007d0dd8  0c 00 85 e2                                      add r0, r5, #0xc
007d0ddc  0d 30 c5 e5                                      strb r3, [r5, #0xd]
007d0de0  20 30 85 e5                                      str r3, [r5, #0x20]
007d0de4  07 10 a0 e1                                      mov r1, r7
007d0de8  58 08 fe eb                                      bl #0x752f50
007d0dec  05 00 a0 e1                                      mov r0, r5
007d0df0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d0df4  f4 3c 1c 00 30 15 00 00                          .byte 0xf4, 0x3c, 0x1c, 0x00, 0x30, 0x15, 0x00, 0x00

; FUNCTION 0x007d1c04, declared_size=388, range_size=388, mode=arm
; class-group: gameswf::face_entity
; alias: _ZN7gameswf11face_entityD1Ev
; demangled: gameswf::face_entity::~face_entity()
; decoder-mode: arm
007d1c04  74 31 9f e5                                      ldr r3, [pc, #0x174]
007d1c08  74 21 9f e5                                      ldr r2, [pc, #0x174]
007d1c0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d1c10  03 30 8f e0                                      add r3, pc, r3
007d1c14  02 20 93 e7                                      ldr r2, [r3, r2]
007d1c18  00 60 a0 e1                                      mov r6, r0
007d1c1c  24 00 90 e5                                      ldr r0, [r0, #0x24]
007d1c20  08 20 82 e2                                      add r2, r2, #8
007d1c24  00 20 86 e5                                      str r2, [r6]
007d1c28  f3 d6 fc eb                                      bl #0x7077fc
007d1c2c  28 30 96 e5                                      ldr r3, [r6, #0x28]
007d1c30  28 50 86 e2                                      add r5, r6, #0x28
007d1c34  00 00 53 e3                                      cmp r3, #0
007d1c38  0a 00 00 0a                                      beq #0x7d1c68
007d1c3c  04 10 93 e5                                      ldr r1, [r3, #4]
007d1c40  00 00 51 e3                                      cmp r1, #0
007d1c44  00 40 a0 b3                                      movlt r4, #0
007d1c48  17 00 00 aa                                      bge #0x7d1cac
007d1c4c  00 00 55 e3                                      cmp r5, #0
007d1c50  04 00 00 0a                                      beq #0x7d1c68
007d1c54  00 00 53 e3                                      cmp r3, #0
007d1c58  02 00 00 0a                                      beq #0x7d1c68
007d1c5c  04 20 93 e5                                      ldr r2, [r3, #4]
007d1c60  02 00 54 e1                                      cmp r4, r2
007d1c64  1e 00 00 da                                      ble #0x7d1ce4
007d1c68  20 40 96 e5                                      ldr r4, [r6, #0x20]
007d1c6c  00 00 54 e3                                      cmp r4, #0
007d1c70  04 00 00 0a                                      beq #0x7d1c88
007d1c74  04 00 a0 e1                                      mov r0, r4
007d1c78  32 92 ff eb                                      bl #0x7b6548
007d1c7c  04 00 a0 e1                                      mov r0, r4
007d1c80  00 10 a0 e3                                      mov r1, #0
007d1c84  ab 03 fe eb                                      bl #0x752b38
007d1c88  05 00 a0 e1                                      mov r0, r5
007d1c8c  4d ca ff eb                                      bl #0x7c45c8
007d1c90  dc 30 d6 e1                                      ldrsb r3, [r6, #0xc]
007d1c94  01 00 73 e3                                      cmn r3, #1
007d1c98  31 00 00 0a                                      beq #0x7d1d64
007d1c9c  06 00 a0 e1                                      mov r0, r6
007d1ca0  ff 2f fe eb                                      bl #0x75dca4
007d1ca4  06 00 a0 e1                                      mov r0, r6
007d1ca8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d1cac  08 20 a0 e3                                      mov r2, #8
007d1cb0  00 40 a0 e3                                      mov r4, #0
007d1cb4  02 00 93 e7                                      ldr r0, [r3, r2]
007d1cb8  02 c0 83 e0                                      add ip, r3, r2
007d1cbc  10 20 82 e2                                      add r2, r2, #0x10
007d1cc0  02 00 70 e3                                      cmn r0, #2
007d1cc4  02 00 00 0a                                      beq #0x7d1cd4
007d1cc8  04 00 9c e5                                      ldr r0, [ip, #4]
007d1ccc  01 00 70 e3                                      cmn r0, #1
007d1cd0  dd ff ff 1a                                      bne #0x7d1c4c
007d1cd4  01 40 84 e2                                      add r4, r4, #1
007d1cd8  01 00 54 e1                                      cmp r4, r1
007d1cdc  f4 ff ff da                                      ble #0x7d1cb4
007d1ce0  d9 ff ff ea                                      b #0x7d1c4c
007d1ce4  04 12 83 e0                                      add r1, r3, r4, lsl #4
007d1ce8  14 70 91 e5                                      ldr r7, [r1, #0x14]
007d1cec  00 00 57 e3                                      cmp r7, #0
007d1cf0  0a 00 00 0a                                      beq #0x7d1d20
007d1cf4  00 00 97 e5                                      ldr r0, [r7]
007d1cf8  00 00 50 e3                                      cmp r0, #0
007d1cfc  00 00 00 0a                                      beq #0x7d1d04
007d1d00  4e 21 fe eb                                      bl #0x75a240
007d1d04  07 00 a0 e1                                      mov r0, r7
007d1d08  00 10 a0 e3                                      mov r1, #0
007d1d0c  89 03 fe eb                                      bl #0x752b38
007d1d10  00 30 95 e5                                      ldr r3, [r5]
007d1d14  04 20 93 e5                                      ldr r2, [r3, #4]
007d1d18  02 00 54 e1                                      cmp r4, r2
007d1d1c  d1 ff ff ca                                      bgt #0x7d1c68
007d1d20  01 40 84 e2                                      add r4, r4, #1
007d1d24  02 00 54 e1                                      cmp r4, r2
007d1d28  c9 ff ff ca                                      bgt #0x7d1c54
007d1d2c  04 12 a0 e1                                      lsl r1, r4, #4
007d1d30  08 10 81 e2                                      add r1, r1, #8
007d1d34  01 00 93 e7                                      ldr r0, [r3, r1]
007d1d38  01 c0 83 e0                                      add ip, r3, r1
007d1d3c  10 10 81 e2                                      add r1, r1, #0x10
007d1d40  02 00 70 e3                                      cmn r0, #2
007d1d44  02 00 00 0a                                      beq #0x7d1d54
007d1d48  04 00 9c e5                                      ldr r0, [ip, #4]
007d1d4c  01 00 70 e3                                      cmn r0, #1
007d1d50  bf ff ff 1a                                      bne #0x7d1c54
007d1d54  01 40 84 e2                                      add r4, r4, #1
007d1d58  02 00 54 e1                                      cmp r4, r2
007d1d5c  f4 ff ff da                                      ble #0x7d1d34
007d1d60  bb ff ff ea                                      b #0x7d1c54
007d1d64  18 00 96 e5                                      ldr r0, [r6, #0x18]
007d1d68  14 10 96 e5                                      ldr r1, [r6, #0x14]
007d1d6c  71 03 fe eb                                      bl #0x752b38
007d1d70  06 00 a0 e1                                      mov r0, r6
007d1d74  ca 2f fe eb                                      bl #0x75dca4
007d1d78  06 00 a0 e1                                      mov r0, r6
007d1d7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d1d80  80 2e 1c 00 30 15 00 00                          .byte 0x80, 0x2e, 0x1c, 0x00, 0x30, 0x15, 0x00, 0x00

; FUNCTION 0x007d1d88, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::face_entity
; alias: _ZN7gameswf11face_entityD0Ev
; demangled: gameswf::face_entity::~face_entity()
; decoder-mode: arm
007d1d88  10 40 2d e9                                      push {r4, lr}
007d1d8c  00 40 a0 e1                                      mov r4, r0
007d1d90  9b ff ff eb                                      bl #0x7d1c04
007d1d94  04 00 a0 e1                                      mov r0, r4
007d1d98  44 f1 ec eb                                      bl #0x30e2b0
007d1d9c  04 00 a0 e1                                      mov r0, r4
007d1da0  10 80 bd e8                                      pop {r4, pc}
