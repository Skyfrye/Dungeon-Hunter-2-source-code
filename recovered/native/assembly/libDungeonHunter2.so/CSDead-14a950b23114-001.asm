; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0048, declared_size=4, range_size=4, mode=arm
; class-group: CSDead
; alias: _ZN6CSDeadD1Ev
; demangled: CSDead::~CSDead()
; decoder-mode: arm
003c0048  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c004c, declared_size=4, range_size=4, mode=arm
; class-group: CSDead
; alias: _ZN6CSDead8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSDead::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c004c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0824, declared_size=52, range_size=52, mode=arm
; class-group: CSDead
; alias: _ZN6CSDeadD0Ev
; demangled: CSDead::~CSDead()
; decoder-mode: arm
003c0824  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0828  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c082c  10 40 2d e9                                      push {r4, lr}
003c0830  03 30 8f e0                                      add r3, pc, r3
003c0834  02 20 93 e7                                      ldr r2, [r3, r2]
003c0838  00 40 a0 e1                                      mov r4, r0
003c083c  08 20 82 e2                                      add r2, r2, #8
003c0840  00 20 80 e5                                      str r2, [r0]
003c0844  fd 3e fd eb                                      bl #0x310440
003c0848  04 00 a0 e1                                      mov r0, r4
003c084c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0850  60 42 5d 00 08 2a 00 00                          .byte 0x60, 0x42, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c499c, declared_size=172, range_size=172, mode=arm
; class-group: CSDead
; alias: _ZN6CSDead6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSDead::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c499c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c49a0  90 40 9f e5                                      ldr r4, [pc, #0x90]
003c49a4  90 60 9f e5                                      ldr r6, [pc, #0x90]
003c49a8  90 10 9f e5                                      ldr r1, [pc, #0x90]
003c49ac  04 40 8f e0                                      add r4, pc, r4
003c49b0  06 30 94 e7                                      ldr r3, [r4, r6]
003c49b4  01 80 94 e7                                      ldr r8, [r4, r1]
003c49b8  20 d0 4d e2                                      sub sp, sp, #0x20
003c49bc  00 30 93 e5                                      ldr r3, [r3]
003c49c0  08 00 a0 e1                                      mov r0, r8
003c49c4  02 70 a0 e1                                      mov r7, r2
003c49c8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c49cc  ad cb fd eb                                      bl #0x337888
003c49d0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003c49d4  04 50 8d e2                                      add r5, sp, #4
003c49d8  0d 20 a0 e1                                      mov r2, sp
003c49dc  01 10 8f e0                                      add r1, pc, r1
003c49e0  05 00 a0 e1                                      mov r0, r5
003c49e4  c0 3d fd eb                                      bl #0x3140ec
003c49e8  05 10 a0 e1                                      mov r1, r5
003c49ec  08 00 a0 e1                                      mov r0, r8
003c49f0  24 cc fd eb                                      bl #0x337a88
003c49f4  05 00 a0 e1                                      mov r0, r5
003c49f8  15 4e fd eb                                      bl #0x318254
003c49fc  78 33 97 e5                                      ldr r3, [r7, #0x378]
003c4a00  00 20 a0 e3                                      mov r2, #0
003c4a04  08 20 c3 e5                                      strb r2, [r3, #8]
003c4a08  dc 02 97 e5                                      ldr r0, [r7, #0x2dc]
003c4a0c  02 00 50 e1                                      cmp r0, r2
003c4a10  00 00 00 0a                                      beq #0x3c4a18
003c4a14  94 a8 02 eb                                      bl #0x46ec6c
003c4a18  06 30 94 e7                                      ldr r3, [r4, r6]
003c4a1c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c4a20  00 30 93 e5                                      ldr r3, [r3]
003c4a24  03 00 52 e1                                      cmp r2, r3
003c4a28  01 00 00 1a                                      bne #0x3c4a34
003c4a2c  20 d0 8d e2                                      add sp, sp, #0x20
003c4a30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c4a34  35 26 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4a38  e4 00 5d 00 ac 40 00 00 84 08 00 00 74 04 50 00  .byte 0xe4, 0x00, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0x04, 0x50, 0x00

; FUNCTION 0x003c4c3c, declared_size=276, range_size=276, mode=arm
; class-group: CSDead
; alias: _ZN6CSDead7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSDead::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c4c3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c4c40  ec 40 9f e5                                      ldr r4, [pc, #0xec]
003c4c44  ec 50 9f e5                                      ldr r5, [pc, #0xec]
003c4c48  28 d0 4d e2                                      sub sp, sp, #0x28
003c4c4c  04 40 8f e0                                      add r4, pc, r4
003c4c50  05 30 94 e7                                      ldr r3, [r4, r5]
003c4c54  40 10 9d e5                                      ldr r1, [sp, #0x40]
003c4c58  02 60 a0 e1                                      mov r6, r2
003c4c5c  00 30 93 e5                                      ldr r3, [r3]
003c4c60  22 00 51 e3                                      cmp r1, #0x22
003c4c64  24 30 8d e5                                      str r3, [sp, #0x24]
003c4c68  06 00 00 0a                                      beq #0x3c4c88
003c4c6c  05 30 94 e7                                      ldr r3, [r4, r5]
003c4c70  24 20 9d e5                                      ldr r2, [sp, #0x24]
003c4c74  00 30 93 e5                                      ldr r3, [r3]
003c4c78  03 00 52 e1                                      cmp r2, r3
003c4c7c  2b 00 00 1a                                      bne #0x3c4d30
003c4c80  28 d0 8d e2                                      add sp, sp, #0x28
003c4c84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c4c88  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003c4c8c  0c 70 8d e2                                      add r7, sp, #0xc
003c4c90  03 80 94 e7                                      ldr r8, [r4, r3]
003c4c94  08 00 a0 e1                                      mov r0, r8
003c4c98  fa ca fd eb                                      bl #0x337888
003c4c9c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
003c4ca0  08 20 8d e2                                      add r2, sp, #8
003c4ca4  07 00 a0 e1                                      mov r0, r7
003c4ca8  01 10 8f e0                                      add r1, pc, r1
003c4cac  0e 3d fd eb                                      bl #0x3140ec
003c4cb0  07 10 a0 e1                                      mov r1, r7
003c4cb4  08 00 a0 e1                                      mov r0, r8
003c4cb8  72 cb fd eb                                      bl #0x337a88
003c4cbc  07 00 a0 e1                                      mov r0, r7
003c4cc0  63 4d fd eb                                      bl #0x318254
003c4cc4  00 10 a0 e3                                      mov r1, #0
003c4cc8  06 00 a0 e1                                      mov r0, r6
003c4ccc  01 20 a0 e1                                      mov r2, r1
003c4cd0  c8 3f ff eb                                      bl #0x394bf8
003c4cd4  00 30 96 e5                                      ldr r3, [r6]
003c4cd8  06 00 a0 e1                                      mov r0, r6
003c4cdc  0f e0 a0 e1                                      mov lr, pc
003c4ce0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c4ce4  00 70 50 e2                                      subs r7, r0, #0
003c4ce8  df ff ff 1a                                      bne #0x3c4c6c
003c4cec  50 30 9f e5                                      ldr r3, [pc, #0x50]
003c4cf0  50 10 9f e5                                      ldr r1, [pc, #0x50]
003c4cf4  50 20 9f e5                                      ldr r2, [pc, #0x50]
003c4cf8  03 30 94 e7                                      ldr r3, [r4, r3]
003c4cfc  01 10 8f e0                                      add r1, pc, r1
003c4d00  02 20 8f e0                                      add r2, pc, r2
003c4d04  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c4d08  b3 ff 03 eb                                      bl #0x4c4bdc
003c4d0c  2e 30 a0 e3                                      mov r3, #0x2e
003c4d10  00 10 a0 e1                                      mov r1, r0
003c4d14  07 20 a0 e1                                      mov r2, r7
003c4d18  ed 0f 86 e2                                      add r0, r6, #0x3b4
003c4d1c  00 70 8d e5                                      str r7, [sp]
003c4d20  3f 5c 00 eb                                      bl #0x3dbe24
003c4d24  40 30 a0 e3                                      mov r3, #0x40
003c4d28  20 35 86 e5                                      str r3, [r6, #0x520]
003c4d2c  ce ff ff ea                                      b #0x3c4c6c
003c4d30  76 25 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4d34  44 fe 5c 00 ac 40 00 00 84 08 00 00 50 02 50 00  .byte 0x44, 0xfe, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x50, 0x02, 0x50, 0x00
003c4d44  f4 37 00 00 54 ca 4f 00 08 02 50 00              .byte 0xf4, 0x37, 0x00, 0x00, 0x54, 0xca, 0x4f, 0x00, 0x08, 0x02, 0x50, 0x00

; FUNCTION 0x003c4d50, declared_size=572, range_size=572, mode=arm
; class-group: CSDead
; alias: _ZN6CSDead7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSDead::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c4d50  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c4d54  10 52 9f e5                                      ldr r5, [pc, #0x210]
003c4d58  10 62 9f e5                                      ldr r6, [pc, #0x210]
003c4d5c  10 12 9f e5                                      ldr r1, [pc, #0x210]
003c4d60  05 50 8f e0                                      add r5, pc, r5
003c4d64  06 30 95 e7                                      ldr r3, [r5, r6]
003c4d68  01 70 95 e7                                      ldr r7, [r5, r1]
003c4d6c  4c d0 4d e2                                      sub sp, sp, #0x4c
003c4d70  00 30 93 e5                                      ldr r3, [r3]
003c4d74  07 00 a0 e1                                      mov r0, r7
003c4d78  02 40 a0 e1                                      mov r4, r2
003c4d7c  44 30 8d e5                                      str r3, [sp, #0x44]
003c4d80  70 a0 9d e5                                      ldr sl, [sp, #0x70]
003c4d84  bf ca fd eb                                      bl #0x337888
003c4d88  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
003c4d8c  2c 80 8d e2                                      add r8, sp, #0x2c
003c4d90  10 20 8d e2                                      add r2, sp, #0x10
003c4d94  01 10 8f e0                                      add r1, pc, r1
003c4d98  08 00 a0 e1                                      mov r0, r8
003c4d9c  d2 3c fd eb                                      bl #0x3140ec
003c4da0  08 10 a0 e1                                      mov r1, r8
003c4da4  07 00 a0 e1                                      mov r0, r7
003c4da8  36 cb fd eb                                      bl #0x337a88
003c4dac  08 00 a0 e1                                      mov r0, r8
003c4db0  27 4d fd eb                                      bl #0x318254
003c4db4  07 00 a0 e1                                      mov r0, r7
003c4db8  b2 ca fd eb                                      bl #0x337888
003c4dbc  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
003c4dc0  14 80 8d e2                                      add r8, sp, #0x14
003c4dc4  0c 20 8d e2                                      add r2, sp, #0xc
003c4dc8  01 10 8f e0                                      add r1, pc, r1
003c4dcc  08 00 a0 e1                                      mov r0, r8
003c4dd0  c5 3c fd eb                                      bl #0x3140ec
003c4dd4  08 10 a0 e1                                      mov r1, r8
003c4dd8  07 00 a0 e1                                      mov r0, r7
003c4ddc  29 cb fd eb                                      bl #0x337a88
003c4de0  08 00 a0 e1                                      mov r0, r8
003c4de4  1a 4d fd eb                                      bl #0x318254
003c4de8  41 32 00 e3                                      movw r3, #0x241
003c4dec  20 35 84 e5                                      str r3, [r4, #0x520]
003c4df0  04 00 a0 e1                                      mov r0, r4
003c4df4  00 30 94 e5                                      ldr r3, [r4]
003c4df8  0f e0 a0 e1                                      mov lr, pc
003c4dfc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c4e00  00 00 50 e3                                      cmp r0, #0
003c4e04  20 35 94 15                                      ldrne r3, [r4, #0x520]
003c4e08  0a 10 a0 e1                                      mov r1, sl
003c4e0c  78 03 94 e5                                      ldr r0, [r4, #0x378]
003c4e10  02 3a 83 13                                      orrne r3, r3, #0x2000
003c4e14  20 35 84 15                                      strne r3, [r4, #0x520]
003c4e18  27 01 01 eb                                      bl #0x4052bc
003c4e1c  78 33 94 e5                                      ldr r3, [r4, #0x378]
003c4e20  01 20 a0 e3                                      mov r2, #1
003c4e24  04 00 a0 e1                                      mov r0, r4
003c4e28  08 20 c3 e5                                      strb r2, [r3, #8]
003c4e2c  8d 7c ff eb                                      bl #0x3a4068
003c4e30  3a 35 d4 e5                                      ldrb r3, [r4, #0x53a]
003c4e34  00 00 53 e3                                      cmp r3, #0
003c4e38  2a 00 00 0a                                      beq #0x3c4ee8
003c4e3c  49 0e 84 e2                                      add r0, r4, #0x490
003c4e40  0c 00 80 e2                                      add r0, r0, #0xc
003c4e44  00 10 a0 e3                                      mov r1, #0
003c4e48  8f 11 00 eb                                      bl #0x3c948c
003c4e4c  e8 34 94 e5                                      ldr r3, [r4, #0x4e8]
003c4e50  01 00 73 e3                                      cmn r3, #1
003c4e54  2e 00 00 0a                                      beq #0x3c4f14
003c4e58  dc 02 94 e5                                      ldr r0, [r4, #0x2dc]
003c4e5c  00 00 50 e3                                      cmp r0, #0
003c4e60  05 00 00 0a                                      beq #0x3c4e7c
003c4e64  00 c0 a0 e3                                      mov ip, #0
003c4e68  0c 10 a0 e1                                      mov r1, ip
003c4e6c  1c 25 00 e3                                      movw r2, #0x51c
003c4e70  03 30 a0 e3                                      mov r3, #3
003c4e74  00 c0 8d e5                                      str ip, [sp]
003c4e78  9a a7 02 eb                                      bl #0x46ece8
003c4e7c  04 00 a0 e1                                      mov r0, r4
003c4e80  0c de ff eb                                      bl #0x3bc6b8
003c4e84  04 00 a0 e1                                      mov r0, r4
003c4e88  95 7c ff eb                                      bl #0x3a40e4
003c4e8c  04 00 a0 e1                                      mov r0, r4
003c4e90  86 7c ff eb                                      bl #0x3a40b0
003c4e94  56 0e 84 e2                                      add r0, r4, #0x560
003c4e98  16 6f 00 eb                                      bl #0x3e0af8
003c4e9c  04 00 a0 e1                                      mov r0, r4
003c4ea0  2a 10 a0 e3                                      mov r1, #0x2a
003c4ea4  00 20 a0 e3                                      mov r2, #0
003c4ea8  ab 7f ff eb                                      bl #0x3a4d5c
003c4eac  04 00 a0 e1                                      mov r0, r4
003c4eb0  2c 10 a0 e3                                      mov r1, #0x2c
003c4eb4  00 20 a0 e3                                      mov r2, #0
003c4eb8  a7 7f ff eb                                      bl #0x3a4d5c
003c4ebc  00 20 a0 e3                                      mov r2, #0
003c4ec0  04 00 a0 e1                                      mov r0, r4
003c4ec4  2b 10 a0 e3                                      mov r1, #0x2b
003c4ec8  a3 7f ff eb                                      bl #0x3a4d5c
003c4ecc  06 30 95 e7                                      ldr r3, [r5, r6]
003c4ed0  44 20 9d e5                                      ldr r2, [sp, #0x44]
003c4ed4  00 30 93 e5                                      ldr r3, [r3]
003c4ed8  03 00 52 e1                                      cmp r2, r3
003c4edc  21 00 00 1a                                      bne #0x3c4f68
003c4ee0  4c d0 8d e2                                      add sp, sp, #0x4c
003c4ee4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c4ee8  4f 0e 84 e2                                      add r0, r4, #0x4f0
003c4eec  0c 00 80 e2                                      add r0, r0, #0xc
003c4ef0  00 10 e0 e3                                      mvn r1, #0
003c4ef4  15 ef ff eb                                      bl #0x3c0b50
003c4ef8  49 0e 84 e2                                      add r0, r4, #0x490
003c4efc  0c 00 80 e2                                      add r0, r0, #0xc
003c4f00  00 10 a0 e3                                      mov r1, #0
003c4f04  60 11 00 eb                                      bl #0x3c948c
003c4f08  e8 34 94 e5                                      ldr r3, [r4, #0x4e8]
003c4f0c  01 00 73 e3                                      cmn r3, #1
003c4f10  d0 ff ff 1a                                      bne #0x3c4e58
003c4f14  00 30 94 e5                                      ldr r3, [r4]
003c4f18  04 00 a0 e1                                      mov r0, r4
003c4f1c  0f e0 a0 e1                                      mov lr, pc
003c4f20  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c4f24  00 70 50 e2                                      subs r7, r0, #0
003c4f28  ca ff ff 1a                                      bne #0x3c4e58
003c4f2c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003c4f30  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003c4f34  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
003c4f38  03 30 95 e7                                      ldr r3, [r5, r3]
003c4f3c  01 10 8f e0                                      add r1, pc, r1
003c4f40  02 20 8f e0                                      add r2, pc, r2
003c4f44  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c4f48  23 ff 03 eb                                      bl #0x4c4bdc
003c4f4c  07 20 a0 e1                                      mov r2, r7
003c4f50  00 10 a0 e1                                      mov r1, r0
003c4f54  2e 30 a0 e3                                      mov r3, #0x2e
003c4f58  ed 0f 84 e2                                      add r0, r4, #0x3b4
003c4f5c  00 70 8d e5                                      str r7, [sp]
003c4f60  af 5b 00 eb                                      bl #0x3dbe24
003c4f64  bb ff ff ea                                      b #0x3c4e58
003c4f68  e8 24 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c4f6c  30 fd 5c 00 ac 40 00 00 84 08 00 00 bc 00 50 00  .byte 0x30, 0xfd, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xbc, 0x00, 0x50, 0x00
003c4f7c  30 01 50 00 f4 37 00 00 14 c8 4f 00 c8 ff 4f 00  .byte 0x30, 0x01, 0x50, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x14, 0xc8, 0x4f, 0x00, 0xc8, 0xff, 0x4f, 0x00

; FUNCTION 0x003c8920, declared_size=100, range_size=100, mode=arm
; class-group: CSDead
; alias: _ZN6CSDead6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSDead::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8920  70 40 2d e9                                      push {r4, r5, r6, lr}
003c8924  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8928  0c 50 85 e2                                      add r5, r5, #0xc
003c892c  18 d0 4d e2                                      sub sp, sp, #0x18
003c8930  00 40 a0 e3                                      mov r4, #0
003c8934  01 60 a0 e1                                      mov r6, r1
003c8938  05 00 a0 e1                                      mov r0, r5
003c893c  2e 20 a0 e3                                      mov r2, #0x2e
003c8940  02 30 a0 e3                                      mov r3, #2
003c8944  10 40 8d e5                                      str r4, [sp, #0x10]
003c8948  14 40 8d e5                                      str r4, [sp, #0x14]
003c894c  00 40 8d e5                                      str r4, [sp]
003c8950  04 40 8d e5                                      str r4, [sp, #4]
003c8954  6f fc ff eb                                      bl #0x3c7b18
003c8958  05 00 a0 e1                                      mov r0, r5
003c895c  06 10 a0 e1                                      mov r1, r6
003c8960  59 23 0c e3                                      movw r2, #0xc359
003c8964  10 30 a0 e3                                      mov r3, #0x10
003c8968  04 40 8d e5                                      str r4, [sp, #4]
003c896c  08 40 8d e5                                      str r4, [sp, #8]
003c8970  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8974  00 40 8d e5                                      str r4, [sp]
003c8978  66 fc ff eb                                      bl #0x3c7b18
003c897c  18 d0 8d e2                                      add sp, sp, #0x18
003c8980  70 80 bd e8                                      pop {r4, r5, r6, pc}
