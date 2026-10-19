; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf078, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestClearEnemyTemplate
; alias: _ZN7Structs25v2QuestClearEnemyTemplate8finalizeEv
; demangled: Structs::v2QuestClearEnemyTemplate::finalize()
; decoder-mode: arm
004cf078  10 40 2d e9                                      push {r4, lr}
004cf07c  00 40 a0 e1                                      mov r4, r0
004cf080  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf084  00 00 50 e3                                      cmp r0, #0
004cf088  03 00 00 0a                                      beq #0x4cf09c
004cf08c  eb 04 f9 eb                                      bl #0x310440
004cf090  00 30 a0 e3                                      mov r3, #0
004cf094  10 30 84 e5                                      str r3, [r4, #0x10]
004cf098  14 30 84 e5                                      str r3, [r4, #0x14]
004cf09c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf0a0  00 00 50 e3                                      cmp r0, #0
004cf0a4  03 00 00 0a                                      beq #0x4cf0b8
004cf0a8  e4 04 f9 eb                                      bl #0x310440
004cf0ac  00 30 a0 e3                                      mov r3, #0
004cf0b0  18 30 84 e5                                      str r3, [r4, #0x18]
004cf0b4  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf0b8  04 00 a0 e1                                      mov r0, r4
004cf0bc  10 40 bd e8                                      pop {r4, lr}
004cf0c0  de e5 ff ea                                      b #0x4c8840

; FUNCTION 0x004cf0c4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestClearEnemyTemplate
; alias: _ZN7Structs25v2QuestClearEnemyTemplateD1Ev
; demangled: Structs::v2QuestClearEnemyTemplate::~v2QuestClearEnemyTemplate()
; decoder-mode: arm
004cf0c4  10 40 2d e9                                      push {r4, lr}
004cf0c8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf0cc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf0d0  00 40 a0 e1                                      mov r4, r0
004cf0d4  03 30 8f e0                                      add r3, pc, r3
004cf0d8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf0dc  02 20 93 e7                                      ldr r2, [r3, r2]
004cf0e0  00 00 50 e3                                      cmp r0, #0
004cf0e4  08 20 82 e2                                      add r2, r2, #8
004cf0e8  00 20 84 e5                                      str r2, [r4]
004cf0ec  00 00 00 0a                                      beq #0x4cf0f4
004cf0f0  d2 04 f9 eb                                      bl #0x310440
004cf0f4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf0f8  00 00 50 e3                                      cmp r0, #0
004cf0fc  00 00 00 0a                                      beq #0x4cf104
004cf100  ce 04 f9 eb                                      bl #0x310440
004cf104  04 00 a0 e1                                      mov r0, r4
004cf108  ca e5 ff eb                                      bl #0x4c8838
004cf10c  04 00 a0 e1                                      mov r0, r4
004cf110  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf114  bc 59 4c 00 c8 0f 00 00                          .byte 0xbc, 0x59, 0x4c, 0x00, 0xc8, 0x0f, 0x00, 0x00

; FUNCTION 0x004cf11c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestClearEnemyTemplate
; alias: _ZN7Structs25v2QuestClearEnemyTemplateD0Ev
; demangled: Structs::v2QuestClearEnemyTemplate::~v2QuestClearEnemyTemplate()
; decoder-mode: arm
004cf11c  10 40 2d e9                                      push {r4, lr}
004cf120  00 40 a0 e1                                      mov r4, r0
004cf124  e6 ff ff eb                                      bl #0x4cf0c4
004cf128  04 00 a0 e1                                      mov r0, r4
004cf12c  c3 04 f9 eb                                      bl #0x310440
004cf130  04 00 a0 e1                                      mov r0, r4
004cf134  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf138, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestClearEnemyTemplate
; alias: _ZN7Structs25v2QuestClearEnemyTemplateD2Ev
; demangled: Structs::v2QuestClearEnemyTemplate::~v2QuestClearEnemyTemplate()
; decoder-mode: arm
004cf138  10 40 2d e9                                      push {r4, lr}
004cf13c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf140  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf144  00 40 a0 e1                                      mov r4, r0
004cf148  03 30 8f e0                                      add r3, pc, r3
004cf14c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf150  02 20 93 e7                                      ldr r2, [r3, r2]
004cf154  00 00 50 e3                                      cmp r0, #0
004cf158  08 20 82 e2                                      add r2, r2, #8
004cf15c  00 20 84 e5                                      str r2, [r4]
004cf160  00 00 00 0a                                      beq #0x4cf168
004cf164  b5 04 f9 eb                                      bl #0x310440
004cf168  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf16c  00 00 50 e3                                      cmp r0, #0
004cf170  00 00 00 0a                                      beq #0x4cf178
004cf174  b1 04 f9 eb                                      bl #0x310440
004cf178  04 00 a0 e1                                      mov r0, r4
004cf17c  ad e5 ff eb                                      bl #0x4c8838
004cf180  04 00 a0 e1                                      mov r0, r4
004cf184  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf188  48 59 4c 00 c8 0f 00 00                          .byte 0x48, 0x59, 0x4c, 0x00, 0xc8, 0x0f, 0x00, 0x00

; FUNCTION 0x00503ba8, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestClearEnemyTemplate
; alias: _ZN7Structs25v2QuestClearEnemyTemplate4readEP11IStreamBase
; demangled: Structs::v2QuestClearEnemyTemplate::read(IStreamBase*)
; decoder-mode: arm
00503ba8  70 40 2d e9                                      push {r4, r5, r6, lr}
00503bac  00 40 a0 e1                                      mov r4, r0
00503bb0  08 d0 4d e2                                      sub sp, sp, #8
00503bb4  01 50 a0 e1                                      mov r5, r1
00503bb8  73 fe ff eb                                      bl #0x50358c
00503bbc  05 00 a0 e1                                      mov r0, r5
00503bc0  10 10 84 e2                                      add r1, r4, #0x10
00503bc4  75 6d fb eb                                      bl #0x3df1a0
00503bc8  01 30 a0 e3                                      mov r3, #1
00503bcc  00 00 53 e3                                      cmp r3, #0
00503bd0  04 30 8d e5                                      str r3, [sp, #4]
00503bd4  0f 00 00 1a                                      bne #0x503c18
00503bd8  11 30 84 e2                                      add r3, r4, #0x11
00503bdc  12 20 84 e2                                      add r2, r4, #0x12
00503be0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503be4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503be8  03 00 52 e1                                      cmp r2, r3
00503bec  01 10 20 e0                                      eor r1, r0, r1
00503bf0  01 10 43 e5                                      strb r1, [r3, #-1]
00503bf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503bf8  00 10 21 e0                                      eor r1, r1, r0
00503bfc  01 10 c2 e5                                      strb r1, [r2, #1]
00503c00  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503c04  01 20 42 e2                                      sub r2, r2, #1
00503c08  00 10 21 e0                                      eor r1, r1, r0
00503c0c  01 10 43 e5                                      strb r1, [r3, #-1]
00503c10  01 30 83 e2                                      add r3, r3, #1
00503c14  f1 ff ff 8a                                      bhi #0x503be0
00503c18  14 00 94 e5                                      ldr r0, [r4, #0x14]
00503c1c  00 00 50 e3                                      cmp r0, #0
00503c20  00 00 00 0a                                      beq #0x503c28
00503c24  05 32 f8 eb                                      bl #0x310440
00503c28  10 00 94 e5                                      ldr r0, [r4, #0x10]
00503c2c  01 10 a0 e3                                      mov r1, #1
00503c30  00 60 a0 e3                                      mov r6, #0
00503c34  01 00 80 e0                                      add r0, r0, r1
00503c38  4b 32 f8 eb                                      bl #0x31056c
00503c3c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00503c40  00 10 a0 e1                                      mov r1, r0
00503c44  14 00 84 e5                                      str r0, [r4, #0x14]
00503c48  06 30 a0 e1                                      mov r3, r6
00503c4c  05 00 a0 e1                                      mov r0, r5
00503c50  ff 4d f8 eb                                      bl #0x317454
00503c54  10 30 94 e5                                      ldr r3, [r4, #0x10]
00503c58  14 20 94 e5                                      ldr r2, [r4, #0x14]
00503c5c  05 00 a0 e1                                      mov r0, r5
00503c60  18 10 84 e2                                      add r1, r4, #0x18
00503c64  03 60 c2 e7                                      strb r6, [r2, r3]
00503c68  4c 6d fb eb                                      bl #0x3df1a0
00503c6c  01 30 a0 e3                                      mov r3, #1
00503c70  06 00 53 e1                                      cmp r3, r6
00503c74  04 30 8d e5                                      str r3, [sp, #4]
00503c78  0f 00 00 1a                                      bne #0x503cbc
00503c7c  19 30 84 e2                                      add r3, r4, #0x19
00503c80  1a 20 84 e2                                      add r2, r4, #0x1a
00503c84  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503c88  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503c8c  03 00 52 e1                                      cmp r2, r3
00503c90  01 10 20 e0                                      eor r1, r0, r1
00503c94  01 10 43 e5                                      strb r1, [r3, #-1]
00503c98  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503c9c  00 10 21 e0                                      eor r1, r1, r0
00503ca0  01 10 c2 e5                                      strb r1, [r2, #1]
00503ca4  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503ca8  01 20 42 e2                                      sub r2, r2, #1
00503cac  00 10 21 e0                                      eor r1, r1, r0
00503cb0  01 10 43 e5                                      strb r1, [r3, #-1]
00503cb4  01 30 83 e2                                      add r3, r3, #1
00503cb8  f1 ff ff 8a                                      bhi #0x503c84
00503cbc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00503cc0  00 00 50 e3                                      cmp r0, #0
00503cc4  00 00 00 0a                                      beq #0x503ccc
00503cc8  dc 31 f8 eb                                      bl #0x310440
00503ccc  18 00 94 e5                                      ldr r0, [r4, #0x18]
00503cd0  01 10 a0 e3                                      mov r1, #1
00503cd4  00 60 a0 e3                                      mov r6, #0
00503cd8  01 00 80 e0                                      add r0, r0, r1
00503cdc  22 32 f8 eb                                      bl #0x31056c
00503ce0  18 20 94 e5                                      ldr r2, [r4, #0x18]
00503ce4  00 10 a0 e1                                      mov r1, r0
00503ce8  1c 00 84 e5                                      str r0, [r4, #0x1c]
00503cec  06 30 a0 e1                                      mov r3, r6
00503cf0  05 00 a0 e1                                      mov r0, r5
00503cf4  d6 4d f8 eb                                      bl #0x317454
00503cf8  18 30 94 e5                                      ldr r3, [r4, #0x18]
00503cfc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00503d00  05 00 a0 e1                                      mov r0, r5
00503d04  20 10 84 e2                                      add r1, r4, #0x20
00503d08  03 60 c2 e7                                      strb r6, [r2, r3]
00503d0c  df 54 fd eb                                      bl #0x459090
00503d10  01 30 a0 e3                                      mov r3, #1
00503d14  06 00 53 e1                                      cmp r3, r6
00503d18  04 30 8d e5                                      str r3, [sp, #4]
00503d1c  0f 00 00 1a                                      bne #0x503d60
00503d20  21 30 84 e2                                      add r3, r4, #0x21
00503d24  22 20 84 e2                                      add r2, r4, #0x22
00503d28  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503d2c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503d30  03 00 52 e1                                      cmp r2, r3
00503d34  01 10 20 e0                                      eor r1, r0, r1
00503d38  01 10 43 e5                                      strb r1, [r3, #-1]
00503d3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503d40  00 10 21 e0                                      eor r1, r1, r0
00503d44  01 10 c2 e5                                      strb r1, [r2, #1]
00503d48  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503d4c  01 20 42 e2                                      sub r2, r2, #1
00503d50  00 10 21 e0                                      eor r1, r1, r0
00503d54  01 10 43 e5                                      strb r1, [r3, #-1]
00503d58  01 30 83 e2                                      add r3, r3, #1
00503d5c  f1 ff ff 8a                                      bhi #0x503d28
00503d60  05 00 a0 e1                                      mov r0, r5
00503d64  24 10 84 e2                                      add r1, r4, #0x24
00503d68  c8 54 fd eb                                      bl #0x459090
00503d6c  01 30 a0 e3                                      mov r3, #1
00503d70  00 00 53 e3                                      cmp r3, #0
00503d74  04 30 8d e5                                      str r3, [sp, #4]
00503d78  0f 00 00 1a                                      bne #0x503dbc
00503d7c  25 30 84 e2                                      add r3, r4, #0x25
00503d80  26 20 84 e2                                      add r2, r4, #0x26
00503d84  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503d88  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503d8c  03 00 52 e1                                      cmp r2, r3
00503d90  01 10 20 e0                                      eor r1, r0, r1
00503d94  01 10 43 e5                                      strb r1, [r3, #-1]
00503d98  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503d9c  00 10 21 e0                                      eor r1, r1, r0
00503da0  01 10 c2 e5                                      strb r1, [r2, #1]
00503da4  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503da8  01 20 42 e2                                      sub r2, r2, #1
00503dac  00 10 21 e0                                      eor r1, r1, r0
00503db0  01 10 43 e5                                      strb r1, [r3, #-1]
00503db4  01 30 83 e2                                      add r3, r3, #1
00503db8  f1 ff ff 8a                                      bhi #0x503d84
00503dbc  05 00 a0 e1                                      mov r0, r5
00503dc0  28 10 84 e2                                      add r1, r4, #0x28
00503dc4  b1 54 fd eb                                      bl #0x459090
00503dc8  01 30 a0 e3                                      mov r3, #1
00503dcc  00 00 53 e3                                      cmp r3, #0
00503dd0  04 30 8d e5                                      str r3, [sp, #4]
00503dd4  0f 00 00 1a                                      bne #0x503e18
00503dd8  2a 30 84 e2                                      add r3, r4, #0x2a
00503ddc  29 40 84 e2                                      add r4, r4, #0x29
00503de0  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503de4  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503de8  04 00 53 e1                                      cmp r3, r4
00503dec  02 20 21 e0                                      eor r2, r1, r2
00503df0  01 20 44 e5                                      strb r2, [r4, #-1]
00503df4  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503df8  01 20 22 e0                                      eor r2, r2, r1
00503dfc  01 20 c3 e5                                      strb r2, [r3, #1]
00503e00  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503e04  01 30 43 e2                                      sub r3, r3, #1
00503e08  01 20 22 e0                                      eor r2, r2, r1
00503e0c  01 20 44 e5                                      strb r2, [r4, #-1]
00503e10  01 40 84 e2                                      add r4, r4, #1
00503e14  f1 ff ff 8a                                      bhi #0x503de0
00503e18  08 d0 8d e2                                      add sp, sp, #8
00503e1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
