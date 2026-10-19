; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039c33c, declared_size=840, range_size=840, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevel6UpdateEv
; demangled: TriggerZoneExitLevel::Update()
; decoder-mode: arm
0039c33c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0039c340  37 3e a0 e3                                      mov r3, #0x370
0039c344  f3 30 90 e1                                      ldrsh r3, [r0, r3]
0039c348  20 53 9f e5                                      ldr r5, [pc, #0x320]
0039c34c  70 d0 4d e2                                      sub sp, sp, #0x70
0039c350  00 00 53 e3                                      cmp r3, #0
0039c354  00 40 a0 e1                                      mov r4, r0
0039c358  05 50 8f e0                                      add r5, pc, r5
0039c35c  00 00 00 ba                                      blt #0x39c364
0039c360  b1 ba ff eb                                      bl #0x38ae2c
0039c364  0a 85 11 eb                                      bl #0x7fd794
0039c368  05 30 d0 e5                                      ldrb r3, [r0, #5]
0039c36c  00 00 53 e3                                      cmp r3, #0
0039c370  5e 00 00 1a                                      bne #0x39c4f0
0039c374  04 00 a0 e1                                      mov r0, r4
0039c378  1e f1 ff eb                                      bl #0x3987f8
0039c37c  c0 03 84 e5                                      str r0, [r4, #0x3c0]
0039c380  ec 62 9f e5                                      ldr r6, [pc, #0x2ec]
0039c384  06 00 95 e7                                      ldr r0, [r5, r6]
0039c388  81 0c fe eb                                      bl #0x31f594
0039c38c  00 00 50 e3                                      cmp r0, #0
0039c390  04 00 00 0a                                      beq #0x39c3a8
0039c394  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0039c398  00 00 53 e3                                      cmp r3, #0
0039c39c  01 00 00 1a                                      bne #0x39c3a8
0039c3a0  70 d0 8d e2                                      add sp, sp, #0x70
0039c3a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0039c3a8  06 30 95 e7                                      ldr r3, [r5, r6]
0039c3ac  00 10 a0 e3                                      mov r1, #0
0039c3b0  01 20 a0 e3                                      mov r2, #1
0039c3b4  40 00 93 e5                                      ldr r0, [r3, #0x40]
0039c3b8  2e 48 ff eb                                      bl #0x36e478
0039c3bc  60 76 90 e5                                      ldr r7, [r0, #0x660]
0039c3c0  00 00 57 e3                                      cmp r7, #0
0039c3c4  07 00 00 0a                                      beq #0x39c3e8
0039c3c8  c0 33 94 e5                                      ldr r3, [r4, #0x3c0]
0039c3cc  00 00 53 e3                                      cmp r3, #0
0039c3d0  4d 00 00 1a                                      bne #0x39c50c
0039c3d4  07 10 a0 e1                                      mov r1, r7
0039c3d8  04 00 a0 e1                                      mov r0, r4
0039c3dc  4d bc ff eb                                      bl #0x38b518
0039c3e0  00 00 50 e3                                      cmp r0, #0
0039c3e4  53 00 00 1a                                      bne #0x39c538
0039c3e8  19 38 d4 e5                                      ldrb r3, [r4, #0x819]
0039c3ec  00 00 53 e3                                      cmp r3, #0
0039c3f0  ea ff ff 0a                                      beq #0x39c3a0
0039c3f4  f0 07 94 e5                                      ldr r0, [r4, #0x7f0]
0039c3f8  b2 ff ff eb                                      bl #0x39c2c8
0039c3fc  74 32 9f e5                                      ldr r3, [pc, #0x274]
0039c400  01 20 a0 e3                                      mov r2, #1
0039c404  06 a0 95 e7                                      ldr sl, [r5, r6]
0039c408  03 30 95 e7                                      ldr r3, [r5, r3]
0039c40c  00 50 a0 e3                                      mov r5, #0
0039c410  08 60 8d e2                                      add r6, sp, #8
0039c414  00 30 93 e5                                      ldr r3, [r3]
0039c418  09 20 cd e5                                      strb r2, [sp, #9]
0039c41c  48 20 a0 e3                                      mov r2, #0x48
0039c420  92 30 23 e0                                      mla r3, r2, r0, r3
0039c424  08 50 cd e5                                      strb r5, [sp, #8]
0039c428  0c 50 cd e5                                      strb r5, [sp, #0xc]
0039c42c  24 10 93 e5                                      ldr r1, [r3, #0x24]
0039c430  34 00 9a e5                                      ldr r0, [sl, #0x34]
0039c434  a8 b2 05 eb                                      bl #0x508edc
0039c438  0c 80 86 e2                                      add r8, r6, #0xc
0039c43c  00 10 a0 e1                                      mov r1, r0
0039c440  18 70 86 e2                                      add r7, r6, #0x18
0039c444  08 00 a0 e1                                      mov r0, r8
0039c448  14 50 cd e5                                      strb r5, [sp, #0x14]
0039c44c  15 50 cd e5                                      strb r5, [sp, #0x15]
0039c450  be eb 0f eb                                      bl #0x797350
0039c454  f0 17 94 e5                                      ldr r1, [r4, #0x7f0]
0039c458  07 00 a0 e1                                      mov r0, r7
0039c45c  20 50 cd e5                                      strb r5, [sp, #0x20]
0039c460  21 50 cd e5                                      strb r5, [sp, #0x21]
0039c464  b9 eb 0f eb                                      bl #0x797350
0039c468  f4 07 94 e5                                      ldr r0, [r4, #0x7f4]
0039c46c  02 30 a0 e3                                      mov r3, #2
0039c470  2d 30 cd e5                                      strb r3, [sp, #0x2d]
0039c474  2c 50 cd e5                                      strb r5, [sp, #0x2c]
0039c478  2c ca fd eb                                      bl #0x30ed30
0039c47c  00 20 a0 e1                                      mov r2, r0
0039c480  01 30 a0 e1                                      mov r3, r1
0039c484  54 00 9a e5                                      ldr r0, [sl, #0x54]
0039c488  f8 26 cd e1                                      strd r2, r3, [sp, #0x68]
0039c48c  f0 23 cd e1                                      strd r2, r3, [sp, #0x30]
0039c490  bd 41 02 eb                                      bl #0x42cb8c
0039c494  00 90 a0 e1                                      mov sb, r0
0039c498  54 00 9a e5                                      ldr r0, [sl, #0x54]
0039c49c  ba 41 02 eb                                      bl #0x42cb8c
0039c4a0  01 2e 10 eb                                      bl #0x7a7cac
0039c4a4  2a 5f 0f eb                                      bl #0x774154
0039c4a8  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
0039c4ac  00 10 a0 e1                                      mov r1, r0
0039c4b0  04 c0 a0 e3                                      mov ip, #4
0039c4b4  02 20 8f e0                                      add r2, pc, r2
0039c4b8  06 30 a0 e1                                      mov r3, r6
0039c4bc  09 00 a0 e1                                      mov r0, sb
0039c4c0  00 c0 8d e5                                      str ip, [sp]
0039c4c4  50 3e 10 eb                                      bl #0x7abe0c
0039c4c8  24 00 86 e2                                      add r0, r6, #0x24
0039c4cc  19 58 c4 e5                                      strb r5, [r4, #0x819]
0039c4d0  13 eb 0f eb                                      bl #0x797124
0039c4d4  07 00 a0 e1                                      mov r0, r7
0039c4d8  11 eb 0f eb                                      bl #0x797124
0039c4dc  08 00 a0 e1                                      mov r0, r8
0039c4e0  0f eb 0f eb                                      bl #0x797124
0039c4e4  06 00 a0 e1                                      mov r0, r6
0039c4e8  0d eb 0f eb                                      bl #0x797124
0039c4ec  ab ff ff ea                                      b #0x39c3a0
0039c4f0  00 30 94 e5                                      ldr r3, [r4]
0039c4f4  04 00 a0 e1                                      mov r0, r4
0039c4f8  0f e0 a0 e1                                      mov lr, pc
0039c4fc  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0039c500  00 00 50 e3                                      cmp r0, #0
0039c504  9d ff ff 1a                                      bne #0x39c380
0039c508  99 ff ff ea                                      b #0x39c374
0039c50c  18 38 d4 e5                                      ldrb r3, [r4, #0x818]
0039c510  00 00 53 e3                                      cmp r3, #0
0039c514  ae ff ff 1a                                      bne #0x39c3d4
0039c518  00 30 e0 e3                                      mvn r3, #0
0039c51c  07 00 a0 e1                                      mov r0, r7
0039c520  14 18 94 e5                                      ldr r1, [r4, #0x814]
0039c524  01 20 a0 e3                                      mov r2, #1
0039c528  55 7d 00 eb                                      bl #0x3bba84
0039c52c  01 30 a0 e3                                      mov r3, #1
0039c530  18 38 c4 e5                                      strb r3, [r4, #0x818]
0039c534  a6 ff ff ea                                      b #0x39c3d4
0039c538  06 a0 95 e7                                      ldr sl, [r5, r6]
0039c53c  40 00 9a e5                                      ldr r0, [sl, #0x40]
0039c540  cb 4a ff eb                                      bl #0x36f074
0039c544  00 00 50 e3                                      cmp r0, #0
0039c548  a6 ff ff 0a                                      beq #0x39c3e8
0039c54c  04 00 a0 e1                                      mov r0, r4
0039c550  82 b9 ff eb                                      bl #0x38ab60
0039c554  00 00 50 e3                                      cmp r0, #0
0039c558  a2 ff ff 0a                                      beq #0x39c3e8
0039c55c  04 00 a0 e1                                      mov r0, r4
0039c560  d4 bc ff eb                                      bl #0x38b8b8
0039c564  d4 37 94 e5                                      ldr r3, [r4, #0x7d4]
0039c568  01 00 73 e3                                      cmn r3, #1
0039c56c  8b ff ff 0a                                      beq #0x39c3a0
0039c570  19 98 d4 e5                                      ldrb sb, [r4, #0x819]
0039c574  00 00 59 e3                                      cmp sb, #0
0039c578  88 ff ff 1a                                      bne #0x39c3a0
0039c57c  f0 07 94 e5                                      ldr r0, [r4, #0x7f0]
0039c580  50 ff ff eb                                      bl #0x39c2c8
0039c584  ec 30 9f e5                                      ldr r3, [pc, #0xec]
0039c588  01 60 a0 e3                                      mov r6, #1
0039c58c  38 90 cd e5                                      strb sb, [sp, #0x38]
0039c590  03 30 95 e7                                      ldr r3, [r5, r3]
0039c594  39 60 cd e5                                      strb r6, [sp, #0x39]
0039c598  48 20 a0 e3                                      mov r2, #0x48
0039c59c  00 30 93 e5                                      ldr r3, [r3]
0039c5a0  3c 60 cd e5                                      strb r6, [sp, #0x3c]
0039c5a4  38 50 8d e2                                      add r5, sp, #0x38
0039c5a8  92 30 23 e0                                      mla r3, r2, r0, r3
0039c5ac  34 00 9a e5                                      ldr r0, [sl, #0x34]
0039c5b0  24 10 93 e5                                      ldr r1, [r3, #0x24]
0039c5b4  48 b2 05 eb                                      bl #0x508edc
0039c5b8  0c 80 85 e2                                      add r8, r5, #0xc
0039c5bc  00 10 a0 e1                                      mov r1, r0
0039c5c0  18 70 85 e2                                      add r7, r5, #0x18
0039c5c4  08 00 a0 e1                                      mov r0, r8
0039c5c8  44 90 cd e5                                      strb sb, [sp, #0x44]
0039c5cc  45 90 cd e5                                      strb sb, [sp, #0x45]
0039c5d0  5e eb 0f eb                                      bl #0x797350
0039c5d4  f0 17 94 e5                                      ldr r1, [r4, #0x7f0]
0039c5d8  07 00 a0 e1                                      mov r0, r7
0039c5dc  50 90 cd e5                                      strb sb, [sp, #0x50]
0039c5e0  51 90 cd e5                                      strb sb, [sp, #0x51]
0039c5e4  59 eb 0f eb                                      bl #0x797350
0039c5e8  f4 07 94 e5                                      ldr r0, [r4, #0x7f4]
0039c5ec  02 30 a0 e3                                      mov r3, #2
0039c5f0  5c 90 cd e5                                      strb sb, [sp, #0x5c]
0039c5f4  5d 30 cd e5                                      strb r3, [sp, #0x5d]
0039c5f8  cc c9 fd eb                                      bl #0x30ed30
0039c5fc  00 20 a0 e1                                      mov r2, r0
0039c600  01 30 a0 e1                                      mov r3, r1
0039c604  54 00 9a e5                                      ldr r0, [sl, #0x54]
0039c608  f8 26 cd e1                                      strd r2, r3, [sp, #0x68]
0039c60c  f0 26 cd e1                                      strd r2, r3, [sp, #0x60]
0039c610  5d 41 02 eb                                      bl #0x42cb8c
0039c614  00 90 a0 e1                                      mov sb, r0
0039c618  54 00 9a e5                                      ldr r0, [sl, #0x54]
0039c61c  5a 41 02 eb                                      bl #0x42cb8c
0039c620  a1 2d 10 eb                                      bl #0x7a7cac
0039c624  ca 5e 0f eb                                      bl #0x774154
0039c628  50 20 9f e5                                      ldr r2, [pc, #0x50]
0039c62c  00 10 a0 e1                                      mov r1, r0
0039c630  04 c0 a0 e3                                      mov ip, #4
0039c634  02 20 8f e0                                      add r2, pc, r2
0039c638  05 30 a0 e1                                      mov r3, r5
0039c63c  09 00 a0 e1                                      mov r0, sb
0039c640  00 c0 8d e5                                      str ip, [sp]
0039c644  f0 3d 10 eb                                      bl #0x7abe0c
0039c648  24 00 85 e2                                      add r0, r5, #0x24
0039c64c  19 68 c4 e5                                      strb r6, [r4, #0x819]
0039c650  b3 ea 0f eb                                      bl #0x797124
0039c654  07 00 a0 e1                                      mov r0, r7
0039c658  b1 ea 0f eb                                      bl #0x797124
0039c65c  08 00 a0 e1                                      mov r0, r8
0039c660  af ea 0f eb                                      bl #0x797124
0039c664  05 00 a0 e1                                      mov r0, r5
0039c668  ad ea 0f eb                                      bl #0x797124
0039c66c  4b ff ff ea                                      b #0x39c3a0
; mapping-symbol data/literal pool
0039c670  38 87 5f 00 f4 37 00 00 74 08 00 00 8c 68 52 00  .byte 0x38, 0x87, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00, 0x8c, 0x68, 0x52, 0x00
0039c680  0c 67 52 00                                      .byte 0x0c, 0x67, 0x52, 0x00

; FUNCTION 0x0039c684, declared_size=8, range_size=8, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZThn36_N20TriggerZoneExitLevelD1Ev
; demangled: non-virtual thunk to TriggerZoneExitLevel::~TriggerZoneExitLevel()
; decoder-mode: arm
0039c684  24 00 40 e2                                      sub r0, r0, #0x24
0039c688  ff ff ff ea                                      b #0x39c68c

; FUNCTION 0x0039c68c, declared_size=88, range_size=88, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevelD1Ev
; demangled: TriggerZoneExitLevel::~TriggerZoneExitLevel()
; decoder-mode: arm
0039c68c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0039c690  48 30 9f e5                                      ldr r3, [pc, #0x48]
0039c694  10 40 2d e9                                      push {r4, lr}
0039c698  02 20 8f e0                                      add r2, pc, r2
0039c69c  03 30 92 e7                                      ldr r3, [r2, r3]
0039c6a0  00 40 a0 e1                                      mov r4, r0
0039c6a4  02 0b 80 e2                                      add r0, r0, #0x800
0039c6a8  f4 20 83 e2                                      add r2, r3, #0xf4
0039c6ac  08 10 83 e2                                      add r1, r3, #8
0039c6b0  e8 30 83 e2                                      add r3, r3, #0xe8
0039c6b4  0a 00 84 e8                                      stm r4, {r1, r3}
0039c6b8  24 20 84 e5                                      str r2, [r4, #0x24]
0039c6bc  ba dc fd eb                                      bl #0x3139ac
0039c6c0  7d 0e 84 e2                                      add r0, r4, #0x7d0
0039c6c4  0c 00 80 e2                                      add r0, r0, #0xc
0039c6c8  b7 dc fd eb                                      bl #0x3139ac
0039c6cc  04 00 a0 e1                                      mov r0, r4
0039c6d0  4b fc ff eb                                      bl #0x39b804
0039c6d4  04 00 a0 e1                                      mov r0, r4
0039c6d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039c6dc  f8 83 5f 00 f4 4b 00 00                          .byte 0xf8, 0x83, 0x5f, 0x00, 0xf4, 0x4b, 0x00, 0x00

; FUNCTION 0x0039c6e4, declared_size=8, range_size=8, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZThn36_N20TriggerZoneExitLevelD0Ev
; demangled: non-virtual thunk to TriggerZoneExitLevel::~TriggerZoneExitLevel()
; decoder-mode: arm
0039c6e4  24 00 40 e2                                      sub r0, r0, #0x24
0039c6e8  ff ff ff ea                                      b #0x39c6ec

; FUNCTION 0x0039c6ec, declared_size=28, range_size=28, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevelD0Ev
; demangled: TriggerZoneExitLevel::~TriggerZoneExitLevel()
; decoder-mode: arm
0039c6ec  10 40 2d e9                                      push {r4, lr}
0039c6f0  00 40 a0 e1                                      mov r4, r0
0039c6f4  e4 ff ff eb                                      bl #0x39c68c
0039c6f8  04 00 a0 e1                                      mov r0, r4
0039c6fc  4f cf fd eb                                      bl #0x310440
0039c700  04 00 a0 e1                                      mov r0, r4
0039c704  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039c708, declared_size=88, range_size=88, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevelD2Ev
; demangled: TriggerZoneExitLevel::~TriggerZoneExitLevel()
; decoder-mode: arm
0039c708  48 20 9f e5                                      ldr r2, [pc, #0x48]
0039c70c  48 30 9f e5                                      ldr r3, [pc, #0x48]
0039c710  10 40 2d e9                                      push {r4, lr}
0039c714  02 20 8f e0                                      add r2, pc, r2
0039c718  03 30 92 e7                                      ldr r3, [r2, r3]
0039c71c  00 40 a0 e1                                      mov r4, r0
0039c720  02 0b 80 e2                                      add r0, r0, #0x800
0039c724  f4 20 83 e2                                      add r2, r3, #0xf4
0039c728  08 10 83 e2                                      add r1, r3, #8
0039c72c  e8 30 83 e2                                      add r3, r3, #0xe8
0039c730  0a 00 84 e8                                      stm r4, {r1, r3}
0039c734  24 20 84 e5                                      str r2, [r4, #0x24]
0039c738  9b dc fd eb                                      bl #0x3139ac
0039c73c  7d 0e 84 e2                                      add r0, r4, #0x7d0
0039c740  0c 00 80 e2                                      add r0, r0, #0xc
0039c744  98 dc fd eb                                      bl #0x3139ac
0039c748  04 00 a0 e1                                      mov r0, r4
0039c74c  2c fc ff eb                                      bl #0x39b804
0039c750  04 00 a0 e1                                      mov r0, r4
0039c754  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039c758  7c 83 5f 00 f4 4b 00 00                          .byte 0x7c, 0x83, 0x5f, 0x00, 0xf4, 0x4b, 0x00, 0x00

; FUNCTION 0x0039c8c8, declared_size=40, range_size=40, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevel8InitPostEv
; demangled: TriggerZoneExitLevel::InitPost()
; decoder-mode: arm
0039c8c8  10 40 2d e9                                      push {r4, lr}
0039c8cc  00 40 a0 e1                                      mov r4, r0
0039c8d0  f4 fd ff eb                                      bl #0x39c0a8
0039c8d4  f0 07 94 e5                                      ldr r0, [r4, #0x7f0]
0039c8d8  ec 37 94 e5                                      ldr r3, [r4, #0x7ec]
0039c8dc  00 00 53 e1                                      cmp r3, r0
0039c8e0  01 00 00 0a                                      beq #0x39c8ec
0039c8e4  77 fe ff eb                                      bl #0x39c2c8
0039c8e8  d4 07 84 e5                                      str r0, [r4, #0x7d4]
0039c8ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039c8f0, declared_size=8, range_size=8, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZThn4_N20TriggerZoneExitLevel17DeclarePropertiesEv
; demangled: non-virtual thunk to TriggerZoneExitLevel::DeclareProperties()
; decoder-mode: arm
0039c8f0  04 00 40 e2                                      sub r0, r0, #4
0039c8f4  ff ff ff ea                                      b #0x39c8f8

; FUNCTION 0x0039c8f8, declared_size=172, range_size=172, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevel17DeclarePropertiesEv
; demangled: TriggerZoneExitLevel::DeclareProperties()
; decoder-mode: arm
0039c8f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0039c8fc  00 50 a0 e1                                      mov r5, r0
0039c900  a7 fd ff eb                                      bl #0x39bfa4
0039c904  80 10 9f e5                                      ldr r1, [pc, #0x80]
0039c908  04 40 85 e2                                      add r4, r5, #4
0039c90c  7d 6e 85 e2                                      add r6, r5, #0x7d0
0039c910  04 00 a0 e1                                      mov r0, r4
0039c914  08 20 86 e2                                      add r2, r6, #8
0039c918  01 10 8f e0                                      add r1, pc, r1
0039c91c  c6 ff ff eb                                      bl #0x39c83c
0039c920  68 10 9f e5                                      ldr r1, [pc, #0x68]
0039c924  0c 20 86 e2                                      add r2, r6, #0xc
0039c928  04 00 a0 e1                                      mov r0, r4
0039c92c  01 10 8f e0                                      add r1, pc, r1
0039c930  91 89 fe eb                                      bl #0x33ef7c
0039c934  58 10 9f e5                                      ldr r1, [pc, #0x58]
0039c938  7f 6e 85 e2                                      add r6, r5, #0x7f0
0039c93c  04 00 a0 e1                                      mov r0, r4
0039c940  04 20 86 e2                                      add r2, r6, #4
0039c944  01 10 8f e0                                      add r1, pc, r1
0039c948  bb ff ff eb                                      bl #0x39c83c
0039c94c  44 10 9f e5                                      ldr r1, [pc, #0x44]
0039c950  04 00 a0 e1                                      mov r0, r4
0039c954  08 20 86 e2                                      add r2, r6, #8
0039c958  01 10 8f e0                                      add r1, pc, r1
0039c95c  b6 ff ff eb                                      bl #0x39c83c
0039c960  34 10 9f e5                                      ldr r1, [pc, #0x34]
0039c964  0c 20 86 e2                                      add r2, r6, #0xc
0039c968  04 00 a0 e1                                      mov r0, r4
0039c96c  01 10 8f e0                                      add r1, pc, r1
0039c970  b1 ff ff eb                                      bl #0x39c83c
0039c974  24 10 9f e5                                      ldr r1, [pc, #0x24]
0039c978  04 00 a0 e1                                      mov r0, r4
0039c97c  02 2b 85 e2                                      add r2, r5, #0x800
0039c980  01 10 8f e0                                      add r1, pc, r1
0039c984  70 40 bd e8                                      pop {r4, r5, r6, lr}
0039c988  7b 89 fe ea                                      b #0x33ef7c
; mapping-symbol data/literal pool
0039c98c  40 64 52 00 34 64 52 00 2c 64 52 00 28 64 52 00  .byte 0x40, 0x64, 0x52, 0x00, 0x34, 0x64, 0x52, 0x00, 0x2c, 0x64, 0x52, 0x00, 0x28, 0x64, 0x52, 0x00
0039c99c  1c 64 52 00 18 64 52 00                          .byte 0x1c, 0x64, 0x52, 0x00, 0x18, 0x64, 0x52, 0x00

; FUNCTION 0x0039c9a4, declared_size=156, range_size=156, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevelC1EN10ObjectBase6GO_IDSE
; demangled: TriggerZoneExitLevel::TriggerZoneExitLevel(ObjectBase::GO_IDS)
; decoder-mode: arm
0039c9a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0039c9a8  88 50 9f e5                                      ldr r5, [pc, #0x88]
0039c9ac  00 40 a0 e1                                      mov r4, r0
0039c9b0  f6 fb ff eb                                      bl #0x39b990
0039c9b4  80 20 9f e5                                      ldr r2, [pc, #0x80]
0039c9b8  05 50 8f e0                                      add r5, pc, r5
0039c9bc  7d 3e 84 e2                                      add r3, r4, #0x7d0
0039c9c0  02 20 95 e7                                      ldr r2, [r5, r2]
0039c9c4  0c 30 83 e2                                      add r3, r3, #0xc
0039c9c8  ec 37 84 e5                                      str r3, [r4, #0x7ec]
0039c9cc  f4 10 82 e2                                      add r1, r2, #0xf4
0039c9d0  08 00 82 e2                                      add r0, r2, #8
0039c9d4  e8 20 82 e2                                      add r2, r2, #0xe8
0039c9d8  04 20 84 e5                                      str r2, [r4, #4]
0039c9dc  00 20 e0 e3                                      mvn r2, #0
0039c9e0  00 00 84 e5                                      str r0, [r4]
0039c9e4  24 10 84 e5                                      str r1, [r4, #0x24]
0039c9e8  d4 27 84 e5                                      str r2, [r4, #0x7d4]
0039c9ec  03 00 a0 e1                                      mov r0, r3
0039c9f0  f0 37 84 e5                                      str r3, [r4, #0x7f0]
0039c9f4  10 10 a0 e3                                      mov r1, #0x10
0039c9f8  1f d3 fd eb                                      bl #0x31167c
0039c9fc  ec 27 94 e5                                      ldr r2, [r4, #0x7ec]
0039ca00  02 3b 84 e2                                      add r3, r4, #0x800
0039ca04  00 50 a0 e3                                      mov r5, #0
0039ca08  00 50 c2 e5                                      strb r5, [r2]
0039ca0c  03 00 a0 e1                                      mov r0, r3
0039ca10  10 38 84 e5                                      str r3, [r4, #0x810]
0039ca14  14 38 84 e5                                      str r3, [r4, #0x814]
0039ca18  10 10 a0 e3                                      mov r1, #0x10
0039ca1c  16 d3 fd eb                                      bl #0x31167c
0039ca20  10 38 94 e5                                      ldr r3, [r4, #0x810]
0039ca24  04 00 a0 e1                                      mov r0, r4
0039ca28  00 50 c3 e5                                      strb r5, [r3]
0039ca2c  19 58 c4 e5                                      strb r5, [r4, #0x819]
0039ca30  18 58 c4 e5                                      strb r5, [r4, #0x818]
0039ca34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039ca38  d8 80 5f 00 f4 4b 00 00                          .byte 0xd8, 0x80, 0x5f, 0x00, 0xf4, 0x4b, 0x00, 0x00

; FUNCTION 0x0039ca40, declared_size=156, range_size=156, mode=arm
; class-group: TriggerZoneExitLevel
; alias: _ZN20TriggerZoneExitLevelC2EN10ObjectBase6GO_IDSE
; demangled: TriggerZoneExitLevel::TriggerZoneExitLevel(ObjectBase::GO_IDS)
; decoder-mode: arm
0039ca40  70 40 2d e9                                      push {r4, r5, r6, lr}
0039ca44  88 50 9f e5                                      ldr r5, [pc, #0x88]
0039ca48  00 40 a0 e1                                      mov r4, r0
0039ca4c  cf fb ff eb                                      bl #0x39b990
0039ca50  80 20 9f e5                                      ldr r2, [pc, #0x80]
0039ca54  05 50 8f e0                                      add r5, pc, r5
0039ca58  7d 3e 84 e2                                      add r3, r4, #0x7d0
0039ca5c  02 20 95 e7                                      ldr r2, [r5, r2]
0039ca60  0c 30 83 e2                                      add r3, r3, #0xc
0039ca64  ec 37 84 e5                                      str r3, [r4, #0x7ec]
0039ca68  f4 10 82 e2                                      add r1, r2, #0xf4
0039ca6c  08 00 82 e2                                      add r0, r2, #8
0039ca70  e8 20 82 e2                                      add r2, r2, #0xe8
0039ca74  04 20 84 e5                                      str r2, [r4, #4]
0039ca78  00 20 e0 e3                                      mvn r2, #0
0039ca7c  00 00 84 e5                                      str r0, [r4]
0039ca80  24 10 84 e5                                      str r1, [r4, #0x24]
0039ca84  d4 27 84 e5                                      str r2, [r4, #0x7d4]
0039ca88  03 00 a0 e1                                      mov r0, r3
0039ca8c  f0 37 84 e5                                      str r3, [r4, #0x7f0]
0039ca90  10 10 a0 e3                                      mov r1, #0x10
0039ca94  f8 d2 fd eb                                      bl #0x31167c
0039ca98  ec 27 94 e5                                      ldr r2, [r4, #0x7ec]
0039ca9c  02 3b 84 e2                                      add r3, r4, #0x800
0039caa0  00 50 a0 e3                                      mov r5, #0
0039caa4  00 50 c2 e5                                      strb r5, [r2]
0039caa8  03 00 a0 e1                                      mov r0, r3
0039caac  10 38 84 e5                                      str r3, [r4, #0x810]
0039cab0  14 38 84 e5                                      str r3, [r4, #0x814]
0039cab4  10 10 a0 e3                                      mov r1, #0x10
0039cab8  ef d2 fd eb                                      bl #0x31167c
0039cabc  10 38 94 e5                                      ldr r3, [r4, #0x810]
0039cac0  04 00 a0 e1                                      mov r0, r4
0039cac4  00 50 c3 e5                                      strb r5, [r3]
0039cac8  19 58 c4 e5                                      strb r5, [r4, #0x819]
0039cacc  18 58 c4 e5                                      strb r5, [r4, #0x818]
0039cad0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039cad4  3c 80 5f 00 f4 4b 00 00                          .byte 0x3c, 0x80, 0x5f, 0x00, 0xf4, 0x4b, 0x00, 0x00
