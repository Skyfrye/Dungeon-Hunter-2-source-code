; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003dd490, declared_size=4, range_size=4, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonster15OnTargetRevivedEv
; demangled: AISMonster::OnTargetRevived()
; decoder-mode: arm
003dd490  1e ff 2f e1                                      bx lr

; FUNCTION 0x003dd494, declared_size=4, range_size=4, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonster15OnTargetInSightEv
; demangled: AISMonster::OnTargetInSight()
; decoder-mode: arm
003dd494  1e ff 2f e1                                      bx lr

; FUNCTION 0x003dd498, declared_size=52, range_size=52, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonsterD1Ev
; demangled: AISMonster::~AISMonster()
; decoder-mode: arm
003dd498  24 30 9f e5                                      ldr r3, [pc, #0x24]
003dd49c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003dd4a0  10 40 2d e9                                      push {r4, lr}
003dd4a4  03 30 8f e0                                      add r3, pc, r3
003dd4a8  02 20 93 e7                                      ldr r2, [r3, r2]
003dd4ac  00 40 a0 e1                                      mov r4, r0
003dd4b0  08 20 82 e2                                      add r2, r2, #8
003dd4b4  00 20 80 e5                                      str r2, [r0]
003dd4b8  8c ef ff eb                                      bl #0x3d92f0
003dd4bc  04 00 a0 e1                                      mov r0, r4
003dd4c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003dd4c4  ec 75 5b 00 ac 2a 00 00                          .byte 0xec, 0x75, 0x5b, 0x00, 0xac, 0x2a, 0x00, 0x00

; FUNCTION 0x003dd4cc, declared_size=52, range_size=52, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonster14OnEnemySpottedEP9Character
; demangled: AISMonster::OnEnemySpotted(Character*)
; decoder-mode: arm
003dd4cc  10 40 2d e9                                      push {r4, lr}
003dd4d0  00 40 a0 e1                                      mov r4, r0
003dd4d4  98 00 90 e5                                      ldr r0, [r0, #0x98]
003dd4d8  08 24 90 e5                                      ldr r2, [r0, #0x408]
003dd4dc  00 00 52 e3                                      cmp r2, #0
003dd4e0  00 00 00 0a                                      beq #0x3dd4e8
003dd4e4  10 80 bd e8                                      pop {r4, pc}
003dd4e8  f2 0f 80 e2                                      add r0, r0, #0x3c8
003dd4ec  e7 e4 ff eb                                      bl #0x3d6890
003dd4f0  98 30 94 e5                                      ldr r3, [r4, #0x98]
003dd4f4  01 20 a0 e3                                      mov r2, #1
003dd4f8  12 24 c3 e5                                      strb r2, [r3, #0x412]
003dd4fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003dd500, declared_size=80, range_size=80, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonster18OnTargetOutOfSightEv
; demangled: AISMonster::OnTargetOutOfSight()
; decoder-mode: arm
003dd500  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd504  98 30 90 e5                                      ldr r3, [r0, #0x98]
003dd508  00 40 a0 e1                                      mov r4, r0
003dd50c  08 04 93 e5                                      ldr r0, [r3, #0x408]
003dd510  00 00 50 e3                                      cmp r0, #0
003dd514  05 00 00 0a                                      beq #0x3dd530
003dd518  78 53 93 e5                                      ldr r5, [r3, #0x378]
003dd51c  2e d8 fe eb                                      bl #0x3935dc
003dd520  00 10 a0 e1                                      mov r1, r0
003dd524  05 00 a0 e1                                      mov r0, r5
003dd528  ed 9f 00 eb                                      bl #0x4054e4
003dd52c  98 30 94 e5                                      ldr r3, [r4, #0x98]
003dd530  00 10 a0 e3                                      mov r1, #0
003dd534  f2 0f 83 e2                                      add r0, r3, #0x3c8
003dd538  01 20 a0 e1                                      mov r2, r1
003dd53c  d3 e4 ff eb                                      bl #0x3d6890
003dd540  98 00 94 e5                                      ldr r0, [r4, #0x98]
003dd544  f2 0f 80 e2                                      add r0, r0, #0x3c8
003dd548  70 40 bd e8                                      pop {r4, r5, r6, lr}
003dd54c  1c dd ff ea                                      b #0x3d49c4

; FUNCTION 0x003dd550, declared_size=56, range_size=56, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonster12OnTargetDiedEv
; demangled: AISMonster::OnTargetDied()
; decoder-mode: arm
003dd550  10 40 2d e9                                      push {r4, lr}
003dd554  98 30 90 e5                                      ldr r3, [r0, #0x98]
003dd558  00 40 a0 e1                                      mov r4, r0
003dd55c  78 03 93 e5                                      ldr r0, [r3, #0x378]
003dd560  0d a0 00 eb                                      bl #0x40559c
003dd564  98 00 94 e5                                      ldr r0, [r4, #0x98]
003dd568  00 10 a0 e3                                      mov r1, #0
003dd56c  01 20 a0 e1                                      mov r2, r1
003dd570  f2 0f 80 e2                                      add r0, r0, #0x3c8
003dd574  c5 e4 ff eb                                      bl #0x3d6890
003dd578  98 00 94 e5                                      ldr r0, [r4, #0x98]
003dd57c  f2 0f 80 e2                                      add r0, r0, #0x3c8
003dd580  10 40 bd e8                                      pop {r4, lr}
003dd584  0e dd ff ea                                      b #0x3d49c4

; FUNCTION 0x003dd588, declared_size=332, range_size=332, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonster8OnUpdateEv
; demangled: AISMonster::OnUpdate()
; decoder-mode: arm
003dd588  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003dd58c  00 50 a0 e1                                      mov r5, r0
003dd590  80 fc ff eb                                      bl #0x3dc798
003dd594  98 00 95 e5                                      ldr r0, [r5, #0x98]
003dd598  00 10 a0 e3                                      mov r1, #0
003dd59c  28 41 9f e5                                      ldr r4, [pc, #0x128]
003dd5a0  4f 0e 80 e2                                      add r0, r0, #0x4f0
003dd5a4  0c 00 80 e2                                      add r0, r0, #0xc
003dd5a8  2c 8b ff eb                                      bl #0x3c0260
003dd5ac  00 00 50 e3                                      cmp r0, #0
003dd5b0  04 40 8f e0                                      add r4, pc, r4
003dd5b4  03 00 00 0a                                      beq #0x3dd5c8
003dd5b8  98 00 95 e5                                      ldr r0, [r5, #0x98]
003dd5bc  08 34 90 e5                                      ldr r3, [r0, #0x408]
003dd5c0  00 00 53 e3                                      cmp r3, #0
003dd5c4  00 00 00 0a                                      beq #0x3dd5cc
003dd5c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003dd5cc  51 1d 80 e2                                      add r1, r0, #0x1440
003dd5d0  10 10 81 e2                                      add r1, r1, #0x10
003dd5d4  fe 25 a0 e3                                      mov r2, #0x3f800000
003dd5d8  8b b5 fe eb                                      bl #0x38ac0c
003dd5dc  00 00 50 e3                                      cmp r0, #0
003dd5e0  f8 ff ff 1a                                      bne #0x3dd5c8
003dd5e4  98 60 95 e5                                      ldr r6, [r5, #0x98]
003dd5e8  06 00 a0 e1                                      mov r0, r6
003dd5ec  fa d7 fe eb                                      bl #0x3935dc
003dd5f0  50 34 01 e3                                      movw r3, #0x1450
003dd5f4  00 70 a0 e1                                      mov r7, r0
003dd5f8  00 10 97 e5                                      ldr r1, [r7]
003dd5fc  03 00 96 e7                                      ldr r0, [r6, r3]
003dd600  69 c3 fc eb                                      bl #0x30e3ac
003dd604  54 34 01 e3                                      movw r3, #0x1454
003dd608  04 10 97 e5                                      ldr r1, [r7, #4]
003dd60c  00 a0 a0 e1                                      mov sl, r0
003dd610  03 00 96 e7                                      ldr r0, [r6, r3]
003dd614  64 c3 fc eb                                      bl #0x30e3ac
003dd618  58 34 01 e3                                      movw r3, #0x1458
003dd61c  08 10 97 e5                                      ldr r1, [r7, #8]
003dd620  00 80 a0 e1                                      mov r8, r0
003dd624  03 00 96 e7                                      ldr r0, [r6, r3]
003dd628  5f c3 fc eb                                      bl #0x30e3ac
003dd62c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003dd630  00 70 a0 e1                                      mov r7, r0
003dd634  98 00 95 e5                                      ldr r0, [r5, #0x98]
003dd638  03 30 94 e7                                      ldr r3, [r4, r3]
003dd63c  00 40 93 e5                                      ldr r4, [r3]
003dd640  69 16 ff eb                                      bl #0x3a2fec
003dd644  44 30 a0 e3                                      mov r3, #0x44
003dd648  93 40 24 e0                                      mla r4, r3, r0, r4
003dd64c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003dd650  00 10 a0 e1                                      mov r1, r0
003dd654  c4 c5 fc eb                                      bl #0x30ed6c
003dd658  0a 10 a0 e1                                      mov r1, sl
003dd65c  00 40 a0 e1                                      mov r4, r0
003dd660  0a 00 a0 e1                                      mov r0, sl
003dd664  c0 c5 fc eb                                      bl #0x30ed6c
003dd668  08 10 a0 e1                                      mov r1, r8
003dd66c  00 60 a0 e1                                      mov r6, r0
003dd670  08 00 a0 e1                                      mov r0, r8
003dd674  bc c5 fc eb                                      bl #0x30ed6c
003dd678  00 10 a0 e1                                      mov r1, r0
003dd67c  06 00 a0 e1                                      mov r0, r6
003dd680  47 c5 fc eb                                      bl #0x30eba4
003dd684  07 10 a0 e1                                      mov r1, r7
003dd688  00 60 a0 e1                                      mov r6, r0
003dd68c  07 00 a0 e1                                      mov r0, r7
003dd690  b5 c5 fc eb                                      bl #0x30ed6c
003dd694  00 10 a0 e1                                      mov r1, r0
003dd698  06 00 a0 e1                                      mov r0, r6
003dd69c  40 c5 fc eb                                      bl #0x30eba4
003dd6a0  00 10 a0 e1                                      mov r1, r0
003dd6a4  04 00 a0 e1                                      mov r0, r4
003dd6a8  17 c4 fc eb                                      bl #0x30e70c
003dd6ac  00 00 50 e3                                      cmp r0, #0
003dd6b0  c4 ff ff 0a                                      beq #0x3dd5c8
003dd6b4  98 30 95 e5                                      ldr r3, [r5, #0x98]
003dd6b8  78 03 93 e5                                      ldr r0, [r3, #0x378]
003dd6bc  51 1d 83 e2                                      add r1, r3, #0x1440
003dd6c0  10 10 81 e2                                      add r1, r1, #0x10
003dd6c4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003dd6c8  85 9f 00 ea                                      b #0x4054e4
; mapping-symbol data/literal pool
003dd6cc  e0 74 5b 00 58 07 00 00                          .byte 0xe0, 0x74, 0x5b, 0x00, 0x58, 0x07, 0x00, 0x00

; FUNCTION 0x003dd7b0, declared_size=60, range_size=60, mode=arm
; class-group: AISMonster
; alias: _ZN10AISMonsterD0Ev
; demangled: AISMonster::~AISMonster()
; decoder-mode: arm
003dd7b0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003dd7b4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003dd7b8  10 40 2d e9                                      push {r4, lr}
003dd7bc  03 30 8f e0                                      add r3, pc, r3
003dd7c0  02 20 93 e7                                      ldr r2, [r3, r2]
003dd7c4  00 40 a0 e1                                      mov r4, r0
003dd7c8  08 20 82 e2                                      add r2, r2, #8
003dd7cc  00 20 80 e5                                      str r2, [r0]
003dd7d0  c6 ee ff eb                                      bl #0x3d92f0
003dd7d4  04 00 a0 e1                                      mov r0, r4
003dd7d8  18 cb fc eb                                      bl #0x310440
003dd7dc  04 00 a0 e1                                      mov r0, r4
003dd7e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003dd7e4  d4 72 5b 00 ac 2a 00 00                          .byte 0xd4, 0x72, 0x5b, 0x00, 0xac, 0x2a, 0x00, 0x00
