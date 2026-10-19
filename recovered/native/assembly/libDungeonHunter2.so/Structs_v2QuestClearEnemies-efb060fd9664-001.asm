; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf2a8, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestClearEnemies
; alias: _ZN7Structs19v2QuestClearEnemies8finalizeEv
; demangled: Structs::v2QuestClearEnemies::finalize()
; decoder-mode: arm
004cf2a8  10 40 2d e9                                      push {r4, lr}
004cf2ac  00 40 a0 e1                                      mov r4, r0
004cf2b0  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf2b4  00 00 50 e3                                      cmp r0, #0
004cf2b8  03 00 00 0a                                      beq #0x4cf2cc
004cf2bc  5f 04 f9 eb                                      bl #0x310440
004cf2c0  00 30 a0 e3                                      mov r3, #0
004cf2c4  10 30 84 e5                                      str r3, [r4, #0x10]
004cf2c8  14 30 84 e5                                      str r3, [r4, #0x14]
004cf2cc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf2d0  00 00 50 e3                                      cmp r0, #0
004cf2d4  03 00 00 0a                                      beq #0x4cf2e8
004cf2d8  58 04 f9 eb                                      bl #0x310440
004cf2dc  00 30 a0 e3                                      mov r3, #0
004cf2e0  18 30 84 e5                                      str r3, [r4, #0x18]
004cf2e4  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf2e8  04 00 a0 e1                                      mov r0, r4
004cf2ec  10 40 bd e8                                      pop {r4, lr}
004cf2f0  52 e5 ff ea                                      b #0x4c8840

; FUNCTION 0x004cf2f4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestClearEnemies
; alias: _ZN7Structs19v2QuestClearEnemiesD1Ev
; demangled: Structs::v2QuestClearEnemies::~v2QuestClearEnemies()
; decoder-mode: arm
004cf2f4  10 40 2d e9                                      push {r4, lr}
004cf2f8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf2fc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf300  00 40 a0 e1                                      mov r4, r0
004cf304  03 30 8f e0                                      add r3, pc, r3
004cf308  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf30c  02 20 93 e7                                      ldr r2, [r3, r2]
004cf310  00 00 50 e3                                      cmp r0, #0
004cf314  08 20 82 e2                                      add r2, r2, #8
004cf318  00 20 84 e5                                      str r2, [r4]
004cf31c  00 00 00 0a                                      beq #0x4cf324
004cf320  46 04 f9 eb                                      bl #0x310440
004cf324  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf328  00 00 50 e3                                      cmp r0, #0
004cf32c  00 00 00 0a                                      beq #0x4cf334
004cf330  42 04 f9 eb                                      bl #0x310440
004cf334  04 00 a0 e1                                      mov r0, r4
004cf338  3e e5 ff eb                                      bl #0x4c8838
004cf33c  04 00 a0 e1                                      mov r0, r4
004cf340  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf344  8c 57 4c 00 d8 46 00 00                          .byte 0x8c, 0x57, 0x4c, 0x00, 0xd8, 0x46, 0x00, 0x00

; FUNCTION 0x004cf34c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestClearEnemies
; alias: _ZN7Structs19v2QuestClearEnemiesD0Ev
; demangled: Structs::v2QuestClearEnemies::~v2QuestClearEnemies()
; decoder-mode: arm
004cf34c  10 40 2d e9                                      push {r4, lr}
004cf350  00 40 a0 e1                                      mov r4, r0
004cf354  e6 ff ff eb                                      bl #0x4cf2f4
004cf358  04 00 a0 e1                                      mov r0, r4
004cf35c  37 04 f9 eb                                      bl #0x310440
004cf360  04 00 a0 e1                                      mov r0, r4
004cf364  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf368, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestClearEnemies
; alias: _ZN7Structs19v2QuestClearEnemiesD2Ev
; demangled: Structs::v2QuestClearEnemies::~v2QuestClearEnemies()
; decoder-mode: arm
004cf368  10 40 2d e9                                      push {r4, lr}
004cf36c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf370  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf374  00 40 a0 e1                                      mov r4, r0
004cf378  03 30 8f e0                                      add r3, pc, r3
004cf37c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf380  02 20 93 e7                                      ldr r2, [r3, r2]
004cf384  00 00 50 e3                                      cmp r0, #0
004cf388  08 20 82 e2                                      add r2, r2, #8
004cf38c  00 20 84 e5                                      str r2, [r4]
004cf390  00 00 00 0a                                      beq #0x4cf398
004cf394  29 04 f9 eb                                      bl #0x310440
004cf398  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf39c  00 00 50 e3                                      cmp r0, #0
004cf3a0  00 00 00 0a                                      beq #0x4cf3a8
004cf3a4  25 04 f9 eb                                      bl #0x310440
004cf3a8  04 00 a0 e1                                      mov r0, r4
004cf3ac  21 e5 ff eb                                      bl #0x4c8838
004cf3b0  04 00 a0 e1                                      mov r0, r4
004cf3b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf3b8  18 57 4c 00 d8 46 00 00                          .byte 0x18, 0x57, 0x4c, 0x00, 0xd8, 0x46, 0x00, 0x00

; FUNCTION 0x00504098, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestClearEnemies
; alias: _ZN7Structs19v2QuestClearEnemies4readEP11IStreamBase
; demangled: Structs::v2QuestClearEnemies::read(IStreamBase*)
; decoder-mode: arm
00504098  70 40 2d e9                                      push {r4, r5, r6, lr}
0050409c  00 40 a0 e1                                      mov r4, r0
005040a0  08 d0 4d e2                                      sub sp, sp, #8
005040a4  01 50 a0 e1                                      mov r5, r1
005040a8  37 fd ff eb                                      bl #0x50358c
005040ac  05 00 a0 e1                                      mov r0, r5
005040b0  10 10 84 e2                                      add r1, r4, #0x10
005040b4  39 6c fb eb                                      bl #0x3df1a0
005040b8  01 30 a0 e3                                      mov r3, #1
005040bc  00 00 53 e3                                      cmp r3, #0
005040c0  04 30 8d e5                                      str r3, [sp, #4]
005040c4  0f 00 00 1a                                      bne #0x504108
005040c8  11 30 84 e2                                      add r3, r4, #0x11
005040cc  12 20 84 e2                                      add r2, r4, #0x12
005040d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005040d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005040d8  03 00 52 e1                                      cmp r2, r3
005040dc  01 10 20 e0                                      eor r1, r0, r1
005040e0  01 10 43 e5                                      strb r1, [r3, #-1]
005040e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005040e8  00 10 21 e0                                      eor r1, r1, r0
005040ec  01 10 c2 e5                                      strb r1, [r2, #1]
005040f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005040f4  01 20 42 e2                                      sub r2, r2, #1
005040f8  00 10 21 e0                                      eor r1, r1, r0
005040fc  01 10 43 e5                                      strb r1, [r3, #-1]
00504100  01 30 83 e2                                      add r3, r3, #1
00504104  f1 ff ff 8a                                      bhi #0x5040d0
00504108  14 00 94 e5                                      ldr r0, [r4, #0x14]
0050410c  00 00 50 e3                                      cmp r0, #0
00504110  00 00 00 0a                                      beq #0x504118
00504114  c9 30 f8 eb                                      bl #0x310440
00504118  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050411c  01 10 a0 e3                                      mov r1, #1
00504120  00 60 a0 e3                                      mov r6, #0
00504124  01 00 80 e0                                      add r0, r0, r1
00504128  0f 31 f8 eb                                      bl #0x31056c
0050412c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00504130  00 10 a0 e1                                      mov r1, r0
00504134  14 00 84 e5                                      str r0, [r4, #0x14]
00504138  06 30 a0 e1                                      mov r3, r6
0050413c  05 00 a0 e1                                      mov r0, r5
00504140  c3 4c f8 eb                                      bl #0x317454
00504144  10 30 94 e5                                      ldr r3, [r4, #0x10]
00504148  14 20 94 e5                                      ldr r2, [r4, #0x14]
0050414c  05 00 a0 e1                                      mov r0, r5
00504150  18 10 84 e2                                      add r1, r4, #0x18
00504154  03 60 c2 e7                                      strb r6, [r2, r3]
00504158  10 6c fb eb                                      bl #0x3df1a0
0050415c  01 30 a0 e3                                      mov r3, #1
00504160  06 00 53 e1                                      cmp r3, r6
00504164  04 30 8d e5                                      str r3, [sp, #4]
00504168  0f 00 00 1a                                      bne #0x5041ac
0050416c  19 30 84 e2                                      add r3, r4, #0x19
00504170  1a 20 84 e2                                      add r2, r4, #0x1a
00504174  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504178  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050417c  03 00 52 e1                                      cmp r2, r3
00504180  01 10 20 e0                                      eor r1, r0, r1
00504184  01 10 43 e5                                      strb r1, [r3, #-1]
00504188  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050418c  00 10 21 e0                                      eor r1, r1, r0
00504190  01 10 c2 e5                                      strb r1, [r2, #1]
00504194  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504198  01 20 42 e2                                      sub r2, r2, #1
0050419c  00 10 21 e0                                      eor r1, r1, r0
005041a0  01 10 43 e5                                      strb r1, [r3, #-1]
005041a4  01 30 83 e2                                      add r3, r3, #1
005041a8  f1 ff ff 8a                                      bhi #0x504174
005041ac  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005041b0  00 00 50 e3                                      cmp r0, #0
005041b4  00 00 00 0a                                      beq #0x5041bc
005041b8  a0 30 f8 eb                                      bl #0x310440
005041bc  18 00 94 e5                                      ldr r0, [r4, #0x18]
005041c0  01 10 a0 e3                                      mov r1, #1
005041c4  00 60 a0 e3                                      mov r6, #0
005041c8  01 00 80 e0                                      add r0, r0, r1
005041cc  e6 30 f8 eb                                      bl #0x31056c
005041d0  18 20 94 e5                                      ldr r2, [r4, #0x18]
005041d4  00 10 a0 e1                                      mov r1, r0
005041d8  1c 00 84 e5                                      str r0, [r4, #0x1c]
005041dc  06 30 a0 e1                                      mov r3, r6
005041e0  05 00 a0 e1                                      mov r0, r5
005041e4  9a 4c f8 eb                                      bl #0x317454
005041e8  18 30 94 e5                                      ldr r3, [r4, #0x18]
005041ec  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005041f0  05 00 a0 e1                                      mov r0, r5
005041f4  20 10 84 e2                                      add r1, r4, #0x20
005041f8  03 60 c2 e7                                      strb r6, [r2, r3]
005041fc  a3 53 fd eb                                      bl #0x459090
00504200  01 30 a0 e3                                      mov r3, #1
00504204  06 00 53 e1                                      cmp r3, r6
00504208  04 30 8d e5                                      str r3, [sp, #4]
0050420c  0f 00 00 1a                                      bne #0x504250
00504210  21 30 84 e2                                      add r3, r4, #0x21
00504214  22 20 84 e2                                      add r2, r4, #0x22
00504218  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050421c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504220  03 00 52 e1                                      cmp r2, r3
00504224  01 10 20 e0                                      eor r1, r0, r1
00504228  01 10 43 e5                                      strb r1, [r3, #-1]
0050422c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504230  00 10 21 e0                                      eor r1, r1, r0
00504234  01 10 c2 e5                                      strb r1, [r2, #1]
00504238  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050423c  01 20 42 e2                                      sub r2, r2, #1
00504240  00 10 21 e0                                      eor r1, r1, r0
00504244  01 10 43 e5                                      strb r1, [r3, #-1]
00504248  01 30 83 e2                                      add r3, r3, #1
0050424c  f1 ff ff 8a                                      bhi #0x504218
00504250  05 00 a0 e1                                      mov r0, r5
00504254  24 10 84 e2                                      add r1, r4, #0x24
00504258  8c 53 fd eb                                      bl #0x459090
0050425c  01 30 a0 e3                                      mov r3, #1
00504260  00 00 53 e3                                      cmp r3, #0
00504264  04 30 8d e5                                      str r3, [sp, #4]
00504268  0f 00 00 1a                                      bne #0x5042ac
0050426c  25 30 84 e2                                      add r3, r4, #0x25
00504270  26 20 84 e2                                      add r2, r4, #0x26
00504274  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504278  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050427c  03 00 52 e1                                      cmp r2, r3
00504280  01 10 20 e0                                      eor r1, r0, r1
00504284  01 10 43 e5                                      strb r1, [r3, #-1]
00504288  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050428c  00 10 21 e0                                      eor r1, r1, r0
00504290  01 10 c2 e5                                      strb r1, [r2, #1]
00504294  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504298  01 20 42 e2                                      sub r2, r2, #1
0050429c  00 10 21 e0                                      eor r1, r1, r0
005042a0  01 10 43 e5                                      strb r1, [r3, #-1]
005042a4  01 30 83 e2                                      add r3, r3, #1
005042a8  f1 ff ff 8a                                      bhi #0x504274
005042ac  05 00 a0 e1                                      mov r0, r5
005042b0  28 10 84 e2                                      add r1, r4, #0x28
005042b4  75 53 fd eb                                      bl #0x459090
005042b8  01 30 a0 e3                                      mov r3, #1
005042bc  00 00 53 e3                                      cmp r3, #0
005042c0  04 30 8d e5                                      str r3, [sp, #4]
005042c4  0f 00 00 1a                                      bne #0x504308
005042c8  2a 30 84 e2                                      add r3, r4, #0x2a
005042cc  29 40 84 e2                                      add r4, r4, #0x29
005042d0  01 10 d3 e5                                      ldrb r1, [r3, #1]
005042d4  01 20 54 e5                                      ldrb r2, [r4, #-1]
005042d8  04 00 53 e1                                      cmp r3, r4
005042dc  02 20 21 e0                                      eor r2, r1, r2
005042e0  01 20 44 e5                                      strb r2, [r4, #-1]
005042e4  01 10 d3 e5                                      ldrb r1, [r3, #1]
005042e8  01 20 22 e0                                      eor r2, r2, r1
005042ec  01 20 c3 e5                                      strb r2, [r3, #1]
005042f0  01 10 54 e5                                      ldrb r1, [r4, #-1]
005042f4  01 30 43 e2                                      sub r3, r3, #1
005042f8  01 20 22 e0                                      eor r2, r2, r1
005042fc  01 20 44 e5                                      strb r2, [r4, #-1]
00504300  01 40 84 e2                                      add r4, r4, #1
00504304  f1 ff ff 8a                                      bhi #0x5042d0
00504308  08 d0 8d e2                                      add sp, sp, #8
0050430c  70 80 bd e8                                      pop {r4, r5, r6, pc}
