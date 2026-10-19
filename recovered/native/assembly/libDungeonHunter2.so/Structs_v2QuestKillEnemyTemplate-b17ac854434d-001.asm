; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf190, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestKillEnemyTemplate
; alias: _ZN7Structs24v2QuestKillEnemyTemplate8finalizeEv
; demangled: Structs::v2QuestKillEnemyTemplate::finalize()
; decoder-mode: arm
004cf190  10 40 2d e9                                      push {r4, lr}
004cf194  00 40 a0 e1                                      mov r4, r0
004cf198  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf19c  00 00 50 e3                                      cmp r0, #0
004cf1a0  03 00 00 0a                                      beq #0x4cf1b4
004cf1a4  a5 04 f9 eb                                      bl #0x310440
004cf1a8  00 30 a0 e3                                      mov r3, #0
004cf1ac  10 30 84 e5                                      str r3, [r4, #0x10]
004cf1b0  14 30 84 e5                                      str r3, [r4, #0x14]
004cf1b4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf1b8  00 00 50 e3                                      cmp r0, #0
004cf1bc  03 00 00 0a                                      beq #0x4cf1d0
004cf1c0  9e 04 f9 eb                                      bl #0x310440
004cf1c4  00 30 a0 e3                                      mov r3, #0
004cf1c8  18 30 84 e5                                      str r3, [r4, #0x18]
004cf1cc  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf1d0  04 00 a0 e1                                      mov r0, r4
004cf1d4  10 40 bd e8                                      pop {r4, lr}
004cf1d8  98 e5 ff ea                                      b #0x4c8840

; FUNCTION 0x004cf1dc, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestKillEnemyTemplate
; alias: _ZN7Structs24v2QuestKillEnemyTemplateD1Ev
; demangled: Structs::v2QuestKillEnemyTemplate::~v2QuestKillEnemyTemplate()
; decoder-mode: arm
004cf1dc  10 40 2d e9                                      push {r4, lr}
004cf1e0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf1e4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf1e8  00 40 a0 e1                                      mov r4, r0
004cf1ec  03 30 8f e0                                      add r3, pc, r3
004cf1f0  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf1f4  02 20 93 e7                                      ldr r2, [r3, r2]
004cf1f8  00 00 50 e3                                      cmp r0, #0
004cf1fc  08 20 82 e2                                      add r2, r2, #8
004cf200  00 20 84 e5                                      str r2, [r4]
004cf204  00 00 00 0a                                      beq #0x4cf20c
004cf208  8c 04 f9 eb                                      bl #0x310440
004cf20c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf210  00 00 50 e3                                      cmp r0, #0
004cf214  00 00 00 0a                                      beq #0x4cf21c
004cf218  88 04 f9 eb                                      bl #0x310440
004cf21c  04 00 a0 e1                                      mov r0, r4
004cf220  84 e5 ff eb                                      bl #0x4c8838
004cf224  04 00 a0 e1                                      mov r0, r4
004cf228  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf22c  a4 58 4c 00 04 4a 00 00                          .byte 0xa4, 0x58, 0x4c, 0x00, 0x04, 0x4a, 0x00, 0x00

; FUNCTION 0x004cf234, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestKillEnemyTemplate
; alias: _ZN7Structs24v2QuestKillEnemyTemplateD0Ev
; demangled: Structs::v2QuestKillEnemyTemplate::~v2QuestKillEnemyTemplate()
; decoder-mode: arm
004cf234  10 40 2d e9                                      push {r4, lr}
004cf238  00 40 a0 e1                                      mov r4, r0
004cf23c  e6 ff ff eb                                      bl #0x4cf1dc
004cf240  04 00 a0 e1                                      mov r0, r4
004cf244  7d 04 f9 eb                                      bl #0x310440
004cf248  04 00 a0 e1                                      mov r0, r4
004cf24c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf250, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestKillEnemyTemplate
; alias: _ZN7Structs24v2QuestKillEnemyTemplateD2Ev
; demangled: Structs::v2QuestKillEnemyTemplate::~v2QuestKillEnemyTemplate()
; decoder-mode: arm
004cf250  10 40 2d e9                                      push {r4, lr}
004cf254  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf258  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf25c  00 40 a0 e1                                      mov r4, r0
004cf260  03 30 8f e0                                      add r3, pc, r3
004cf264  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf268  02 20 93 e7                                      ldr r2, [r3, r2]
004cf26c  00 00 50 e3                                      cmp r0, #0
004cf270  08 20 82 e2                                      add r2, r2, #8
004cf274  00 20 84 e5                                      str r2, [r4]
004cf278  00 00 00 0a                                      beq #0x4cf280
004cf27c  6f 04 f9 eb                                      bl #0x310440
004cf280  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf284  00 00 50 e3                                      cmp r0, #0
004cf288  00 00 00 0a                                      beq #0x4cf290
004cf28c  6b 04 f9 eb                                      bl #0x310440
004cf290  04 00 a0 e1                                      mov r0, r4
004cf294  67 e5 ff eb                                      bl #0x4c8838
004cf298  04 00 a0 e1                                      mov r0, r4
004cf29c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf2a0  30 58 4c 00 04 4a 00 00                          .byte 0x30, 0x58, 0x4c, 0x00, 0x04, 0x4a, 0x00, 0x00

; FUNCTION 0x00503e20, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestKillEnemyTemplate
; alias: _ZN7Structs24v2QuestKillEnemyTemplate4readEP11IStreamBase
; demangled: Structs::v2QuestKillEnemyTemplate::read(IStreamBase*)
; decoder-mode: arm
00503e20  70 40 2d e9                                      push {r4, r5, r6, lr}
00503e24  00 40 a0 e1                                      mov r4, r0
00503e28  08 d0 4d e2                                      sub sp, sp, #8
00503e2c  01 50 a0 e1                                      mov r5, r1
00503e30  d5 fd ff eb                                      bl #0x50358c
00503e34  05 00 a0 e1                                      mov r0, r5
00503e38  10 10 84 e2                                      add r1, r4, #0x10
00503e3c  d7 6c fb eb                                      bl #0x3df1a0
00503e40  01 30 a0 e3                                      mov r3, #1
00503e44  00 00 53 e3                                      cmp r3, #0
00503e48  04 30 8d e5                                      str r3, [sp, #4]
00503e4c  0f 00 00 1a                                      bne #0x503e90
00503e50  11 30 84 e2                                      add r3, r4, #0x11
00503e54  12 20 84 e2                                      add r2, r4, #0x12
00503e58  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503e5c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503e60  03 00 52 e1                                      cmp r2, r3
00503e64  01 10 20 e0                                      eor r1, r0, r1
00503e68  01 10 43 e5                                      strb r1, [r3, #-1]
00503e6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503e70  00 10 21 e0                                      eor r1, r1, r0
00503e74  01 10 c2 e5                                      strb r1, [r2, #1]
00503e78  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503e7c  01 20 42 e2                                      sub r2, r2, #1
00503e80  00 10 21 e0                                      eor r1, r1, r0
00503e84  01 10 43 e5                                      strb r1, [r3, #-1]
00503e88  01 30 83 e2                                      add r3, r3, #1
00503e8c  f1 ff ff 8a                                      bhi #0x503e58
00503e90  14 00 94 e5                                      ldr r0, [r4, #0x14]
00503e94  00 00 50 e3                                      cmp r0, #0
00503e98  00 00 00 0a                                      beq #0x503ea0
00503e9c  67 31 f8 eb                                      bl #0x310440
00503ea0  10 00 94 e5                                      ldr r0, [r4, #0x10]
00503ea4  01 10 a0 e3                                      mov r1, #1
00503ea8  00 60 a0 e3                                      mov r6, #0
00503eac  01 00 80 e0                                      add r0, r0, r1
00503eb0  ad 31 f8 eb                                      bl #0x31056c
00503eb4  10 20 94 e5                                      ldr r2, [r4, #0x10]
00503eb8  00 10 a0 e1                                      mov r1, r0
00503ebc  14 00 84 e5                                      str r0, [r4, #0x14]
00503ec0  06 30 a0 e1                                      mov r3, r6
00503ec4  05 00 a0 e1                                      mov r0, r5
00503ec8  61 4d f8 eb                                      bl #0x317454
00503ecc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00503ed0  14 20 94 e5                                      ldr r2, [r4, #0x14]
00503ed4  05 00 a0 e1                                      mov r0, r5
00503ed8  18 10 84 e2                                      add r1, r4, #0x18
00503edc  03 60 c2 e7                                      strb r6, [r2, r3]
00503ee0  ae 6c fb eb                                      bl #0x3df1a0
00503ee4  01 30 a0 e3                                      mov r3, #1
00503ee8  06 00 53 e1                                      cmp r3, r6
00503eec  04 30 8d e5                                      str r3, [sp, #4]
00503ef0  0f 00 00 1a                                      bne #0x503f34
00503ef4  19 30 84 e2                                      add r3, r4, #0x19
00503ef8  1a 20 84 e2                                      add r2, r4, #0x1a
00503efc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503f00  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503f04  03 00 52 e1                                      cmp r2, r3
00503f08  01 10 20 e0                                      eor r1, r0, r1
00503f0c  01 10 43 e5                                      strb r1, [r3, #-1]
00503f10  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503f14  00 10 21 e0                                      eor r1, r1, r0
00503f18  01 10 c2 e5                                      strb r1, [r2, #1]
00503f1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503f20  01 20 42 e2                                      sub r2, r2, #1
00503f24  00 10 21 e0                                      eor r1, r1, r0
00503f28  01 10 43 e5                                      strb r1, [r3, #-1]
00503f2c  01 30 83 e2                                      add r3, r3, #1
00503f30  f1 ff ff 8a                                      bhi #0x503efc
00503f34  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00503f38  00 00 50 e3                                      cmp r0, #0
00503f3c  00 00 00 0a                                      beq #0x503f44
00503f40  3e 31 f8 eb                                      bl #0x310440
00503f44  18 00 94 e5                                      ldr r0, [r4, #0x18]
00503f48  01 10 a0 e3                                      mov r1, #1
00503f4c  00 60 a0 e3                                      mov r6, #0
00503f50  01 00 80 e0                                      add r0, r0, r1
00503f54  84 31 f8 eb                                      bl #0x31056c
00503f58  18 20 94 e5                                      ldr r2, [r4, #0x18]
00503f5c  00 10 a0 e1                                      mov r1, r0
00503f60  1c 00 84 e5                                      str r0, [r4, #0x1c]
00503f64  06 30 a0 e1                                      mov r3, r6
00503f68  05 00 a0 e1                                      mov r0, r5
00503f6c  38 4d f8 eb                                      bl #0x317454
00503f70  18 30 94 e5                                      ldr r3, [r4, #0x18]
00503f74  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00503f78  05 00 a0 e1                                      mov r0, r5
00503f7c  20 10 84 e2                                      add r1, r4, #0x20
00503f80  03 60 c2 e7                                      strb r6, [r2, r3]
00503f84  41 54 fd eb                                      bl #0x459090
00503f88  01 30 a0 e3                                      mov r3, #1
00503f8c  06 00 53 e1                                      cmp r3, r6
00503f90  04 30 8d e5                                      str r3, [sp, #4]
00503f94  0f 00 00 1a                                      bne #0x503fd8
00503f98  21 30 84 e2                                      add r3, r4, #0x21
00503f9c  22 20 84 e2                                      add r2, r4, #0x22
00503fa0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503fa4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503fa8  03 00 52 e1                                      cmp r2, r3
00503fac  01 10 20 e0                                      eor r1, r0, r1
00503fb0  01 10 43 e5                                      strb r1, [r3, #-1]
00503fb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503fb8  00 10 21 e0                                      eor r1, r1, r0
00503fbc  01 10 c2 e5                                      strb r1, [r2, #1]
00503fc0  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503fc4  01 20 42 e2                                      sub r2, r2, #1
00503fc8  00 10 21 e0                                      eor r1, r1, r0
00503fcc  01 10 43 e5                                      strb r1, [r3, #-1]
00503fd0  01 30 83 e2                                      add r3, r3, #1
00503fd4  f1 ff ff 8a                                      bhi #0x503fa0
00503fd8  05 00 a0 e1                                      mov r0, r5
00503fdc  24 10 84 e2                                      add r1, r4, #0x24
00503fe0  2a 54 fd eb                                      bl #0x459090
00503fe4  01 30 a0 e3                                      mov r3, #1
00503fe8  00 00 53 e3                                      cmp r3, #0
00503fec  04 30 8d e5                                      str r3, [sp, #4]
00503ff0  0f 00 00 1a                                      bne #0x504034
00503ff4  25 30 84 e2                                      add r3, r4, #0x25
00503ff8  26 20 84 e2                                      add r2, r4, #0x26
00503ffc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504000  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504004  03 00 52 e1                                      cmp r2, r3
00504008  01 10 20 e0                                      eor r1, r0, r1
0050400c  01 10 43 e5                                      strb r1, [r3, #-1]
00504010  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504014  00 10 21 e0                                      eor r1, r1, r0
00504018  01 10 c2 e5                                      strb r1, [r2, #1]
0050401c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504020  01 20 42 e2                                      sub r2, r2, #1
00504024  00 10 21 e0                                      eor r1, r1, r0
00504028  01 10 43 e5                                      strb r1, [r3, #-1]
0050402c  01 30 83 e2                                      add r3, r3, #1
00504030  f1 ff ff 8a                                      bhi #0x503ffc
00504034  05 00 a0 e1                                      mov r0, r5
00504038  28 10 84 e2                                      add r1, r4, #0x28
0050403c  13 54 fd eb                                      bl #0x459090
00504040  01 30 a0 e3                                      mov r3, #1
00504044  00 00 53 e3                                      cmp r3, #0
00504048  04 30 8d e5                                      str r3, [sp, #4]
0050404c  0f 00 00 1a                                      bne #0x504090
00504050  2a 30 84 e2                                      add r3, r4, #0x2a
00504054  29 40 84 e2                                      add r4, r4, #0x29
00504058  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050405c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00504060  04 00 53 e1                                      cmp r3, r4
00504064  02 20 21 e0                                      eor r2, r1, r2
00504068  01 20 44 e5                                      strb r2, [r4, #-1]
0050406c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00504070  01 20 22 e0                                      eor r2, r2, r1
00504074  01 20 c3 e5                                      strb r2, [r3, #1]
00504078  01 10 54 e5                                      ldrb r1, [r4, #-1]
0050407c  01 30 43 e2                                      sub r3, r3, #1
00504080  01 20 22 e0                                      eor r2, r2, r1
00504084  01 20 44 e5                                      strb r2, [r4, #-1]
00504088  01 40 84 e2                                      add r4, r4, #1
0050408c  f1 ff ff 8a                                      bhi #0x504058
00504090  08 d0 8d e2                                      add sp, sp, #8
00504094  70 80 bd e8                                      pop {r4, r5, r6, pc}
