; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047b4d4, declared_size=364, range_size=364, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047b4d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047b4d8  00 60 a0 e1                                      mov r6, r0
0047b4dc  20 01 9f e5                                      ldr r0, [pc, #0x120]
0047b4e0  01 30 a0 e1                                      mov r3, r1
0047b4e4  01 40 a0 e1                                      mov r4, r1
0047b4e8  21 20 a0 e3                                      mov r2, #0x21
0047b4ec  01 10 a0 e3                                      mov r1, #1
0047b4f0  00 00 8f e0                                      add r0, pc, r0
0047b4f4  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0047b4f8  0c 70 96 e5                                      ldr r7, [r6, #0xc]
0047b4fc  25 4c fa eb                                      bl #0x30e598
0047b500  04 31 9f e5                                      ldr r3, [pc, #0x104]
0047b504  05 50 8f e0                                      add r5, pc, r5
0047b508  00 11 9f e5                                      ldr r1, [pc, #0x100]
0047b50c  03 30 95 e7                                      ldr r3, [r5, r3]
0047b510  04 20 97 e5                                      ldr r2, [r7, #4]
0047b514  01 10 8f e0                                      add r1, pc, r1
0047b518  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047b51c  79 25 01 eb                                      bl #0x4c4b08
0047b520  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0047b524  00 20 a0 e1                                      mov r2, r0
0047b528  04 00 a0 e1                                      mov r0, r4
0047b52c  01 10 8f e0                                      add r1, pc, r1
0047b530  b3 4a fa eb                                      bl #0x30e004
0047b534  20 30 97 e5                                      ldr r3, [r7, #0x20]
0047b538  00 00 53 e3                                      cmp r3, #0
0047b53c  04 00 00 ba                                      blt #0x47b554
0047b540  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0047b544  02 20 95 e7                                      ldr r2, [r5, r2]
0047b548  00 20 92 e5                                      ldr r2, [r2]
0047b54c  02 00 53 e1                                      cmp r3, r2
0047b550  26 00 00 3a                                      blo #0x47b5f0
0047b554  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0047b558  02 20 8f e0                                      add r2, pc, r2
0047b55c  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0047b560  04 00 a0 e1                                      mov r0, r4
0047b564  01 10 8f e0                                      add r1, pc, r1
0047b568  a5 4a fa eb                                      bl #0x30e004
0047b56c  24 30 97 e5                                      ldr r3, [r7, #0x24]
0047b570  00 00 53 e3                                      cmp r3, #0
0047b574  09 00 00 ba                                      blt #0x47b5a0
0047b578  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0047b57c  02 20 95 e7                                      ldr r2, [r5, r2]
0047b580  00 20 92 e5                                      ldr r2, [r2]
0047b584  02 00 53 e1                                      cmp r3, r2
0047b588  04 00 00 2a                                      bhs #0x47b5a0
0047b58c  94 20 9f e5                                      ldr r2, [pc, #0x94]
0047b590  02 20 95 e7                                      ldr r2, [r5, r2]
0047b594  00 20 92 e5                                      ldr r2, [r2]
0047b598  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b59c  01 00 00 ea                                      b #0x47b5a8
0047b5a0  84 20 9f e5                                      ldr r2, [pc, #0x84]
0047b5a4  02 20 8f e0                                      add r2, pc, r2
0047b5a8  80 10 9f e5                                      ldr r1, [pc, #0x80]
0047b5ac  04 00 a0 e1                                      mov r0, r4
0047b5b0  01 10 8f e0                                      add r1, pc, r1
0047b5b4  92 4a fa eb                                      bl #0x30e004
0047b5b8  74 10 9f e5                                      ldr r1, [pc, #0x74]
0047b5bc  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
0047b5c0  04 00 a0 e1                                      mov r0, r4
0047b5c4  01 10 8f e0                                      add r1, pc, r1
0047b5c8  8d 4a fa eb                                      bl #0x30e004
0047b5cc  64 10 9f e5                                      ldr r1, [pc, #0x64]
0047b5d0  04 00 a0 e1                                      mov r0, r4
0047b5d4  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047b5d8  01 10 8f e0                                      add r1, pc, r1
0047b5dc  88 4a fa eb                                      bl #0x30e004
0047b5e0  06 00 a0 e1                                      mov r0, r6
0047b5e4  04 10 a0 e1                                      mov r1, r4
0047b5e8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047b5ec  30 fd ff ea                                      b #0x47aab4
0047b5f0  44 20 9f e5                                      ldr r2, [pc, #0x44]
0047b5f4  02 20 95 e7                                      ldr r2, [r5, r2]
0047b5f8  00 20 92 e5                                      ldr r2, [r2]
0047b5fc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b600  d5 ff ff ea                                      b #0x47b55c
; mapping-symbol data/literal pool
0047b604  b0 27 45 00 8c 95 51 00 f4 37 00 00 54 74 44 00  .byte 0xb0, 0x27, 0x45, 0x00, 0x8c, 0x95, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x54, 0x74, 0x44, 0x00
0047b614  9c 27 45 00 c0 18 00 00 b8 42 44 00 7c 27 45 00  .byte 0x9c, 0x27, 0x45, 0x00, 0xc0, 0x18, 0x00, 0x00, 0xb8, 0x42, 0x44, 0x00, 0x7c, 0x27, 0x45, 0x00
0047b624  04 42 00 00 08 3c 00 00 6c 42 44 00 48 27 45 00  .byte 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00, 0x6c, 0x42, 0x44, 0x00, 0x48, 0x27, 0x45, 0x00
0047b634  4c 27 45 00 50 27 45 00 5c 3b 00 00              .byte 0x4c, 0x27, 0x45, 0x00, 0x50, 0x27, 0x45, 0x00, 0x5c, 0x3b, 0x00, 0x00

; FUNCTION 0x0047c6f0, declared_size=260, range_size=260, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047c6f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0047c6f4  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047c6f8  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
0047c6fc  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
0047c700  01 60 a0 e1                                      mov r6, r1
0047c704  02 10 63 e0                                      rsb r1, r3, r2
0047c708  00 00 51 e3                                      cmp r1, #0
0047c70c  05 50 8f e0                                      add r5, pc, r5
0047c710  18 d0 4d e2                                      sub sp, sp, #0x18
0047c714  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0047c718  20 00 00 da                                      ble #0x47c7a0
0047c71c  06 00 a0 e1                                      mov r0, r6
0047c720  a3 f8 ff eb                                      bl #0x47a9b4
0047c724  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0047c728  00 10 a0 e3                                      mov r1, #0
0047c72c  01 20 a0 e3                                      mov r2, #1
0047c730  03 50 95 e7                                      ldr r5, [r5, r3]
0047c734  0d 70 a0 e1                                      mov r7, sp
0047c738  40 00 95 e5                                      ldr r0, [r5, #0x40]
0047c73c  4d c7 fb eb                                      bl #0x36e478
0047c740  60 36 90 e5                                      ldr r3, [r0, #0x660]
0047c744  0c 10 8d e2                                      add r1, sp, #0xc
0047c748  06 00 a0 e1                                      mov r0, r6
0047c74c  60 c1 93 e5                                      ldr ip, [r3, #0x160]
0047c750  64 21 93 e5                                      ldr r2, [r3, #0x164]
0047c754  68 31 93 e5                                      ldr r3, [r3, #0x168]
0047c758  0c c0 8d e5                                      str ip, [sp, #0xc]
0047c75c  10 20 8d e5                                      str r2, [sp, #0x10]
0047c760  14 30 8d e5                                      str r3, [sp, #0x14]
0047c764  0d f6 ff eb                                      bl #0x479fa0
0047c768  38 a0 95 e5                                      ldr sl, [r5, #0x38]
0047c76c  60 50 ba e5                                      ldr r5, [sl, #0x60]!
0047c770  05 00 5a e1                                      cmp sl, r5
0047c774  09 00 00 0a                                      beq #0x47c7a0
0047c778  08 80 95 e5                                      ldr r8, [r5, #8]
0047c77c  24 90 94 e5                                      ldr sb, [r4, #0x24]
0047c780  00 00 58 e2                                      subs r0, r8, #0
0047c784  02 00 00 0a                                      beq #0x47c794
0047c788  6a dd fc eb                                      bl #0x3b3d38
0047c78c  00 00 59 e1                                      cmp sb, r0
0047c790  04 00 00 0a                                      beq #0x47c7a8
0047c794  00 50 95 e5                                      ldr r5, [r5]
0047c798  05 00 5a e1                                      cmp sl, r5
0047c79c  f5 ff ff 1a                                      bne #0x47c778
0047c7a0  18 d0 8d e2                                      add sp, sp, #0x18
0047c7a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0047c7a8  00 30 98 e5                                      ldr r3, [r8]
0047c7ac  08 00 a0 e1                                      mov r0, r8
0047c7b0  0f e0 a0 e1                                      mov lr, pc
0047c7b4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0047c7b8  00 00 50 e3                                      cmp r0, #0
0047c7bc  0d 10 a0 e1                                      mov r1, sp
0047c7c0  06 00 a0 e1                                      mov r0, r6
0047c7c4  f2 ff ff 1a                                      bne #0x47c794
0047c7c8  60 c1 98 e5                                      ldr ip, [r8, #0x160]
0047c7cc  64 21 98 e5                                      ldr r2, [r8, #0x164]
0047c7d0  68 31 98 e5                                      ldr r3, [r8, #0x168]
0047c7d4  00 c0 8d e5                                      str ip, [sp]
0047c7d8  04 20 8d e5                                      str r2, [sp, #4]
0047c7dc  08 30 8d e5                                      str r3, [sp, #8]
0047c7e0  f8 f5 ff eb                                      bl #0x479fc8
0047c7e4  00 50 95 e5                                      ldr r5, [r5]
0047c7e8  ea ff ff ea                                      b #0x47c798
; mapping-symbol data/literal pool
0047c7ec  84 83 51 00 f4 37 00 00                          .byte 0x84, 0x83, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047d5ac, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d5ac  18 00 40 e2                                      sub r0, r0, #0x18
0047d5b0  ff ff ff ea                                      b #0x47d5b4

; FUNCTION 0x0047d5b4, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyED1Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d5b4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d5b8  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d5bc  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d5c0  03 30 8f e0                                      add r3, pc, r3
0047d5c4  01 10 93 e7                                      ldr r1, [r3, r1]
0047d5c8  02 20 93 e7                                      ldr r2, [r3, r2]
0047d5cc  10 40 2d e9                                      push {r4, lr}
0047d5d0  08 10 81 e2                                      add r1, r1, #8
0047d5d4  08 20 82 e2                                      add r2, r2, #8
0047d5d8  00 40 a0 e1                                      mov r4, r0
0047d5dc  00 10 80 e5                                      str r1, [r0]
0047d5e0  18 20 80 e5                                      str r2, [r0, #0x18]
0047d5e4  fe f2 ff eb                                      bl #0x47a1e4
0047d5e8  04 00 a0 e1                                      mov r0, r4
0047d5ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d5f0  d0 74 51 00 90 3a 00 00 40 0b 00 00              .byte 0xd0, 0x74, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d838, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d838  18 00 40 e2                                      sub r0, r0, #0x18
0047d83c  ff ff ff ea                                      b #0x47d840

; FUNCTION 0x0047d840, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyED0Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d840  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047d844  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047d848  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047d84c  03 30 8f e0                                      add r3, pc, r3
0047d850  01 10 93 e7                                      ldr r1, [r3, r1]
0047d854  02 20 93 e7                                      ldr r2, [r3, r2]
0047d858  10 40 2d e9                                      push {r4, lr}
0047d85c  08 10 81 e2                                      add r1, r1, #8
0047d860  08 20 82 e2                                      add r2, r2, #8
0047d864  00 40 a0 e1                                      mov r4, r0
0047d868  00 10 80 e5                                      str r1, [r0]
0047d86c  18 20 80 e5                                      str r2, [r0, #0x18]
0047d870  5b f2 ff eb                                      bl #0x47a1e4
0047d874  04 00 a0 e1                                      mov r0, r4
0047d878  f0 4a fa eb                                      bl #0x310440
0047d87c  04 00 a0 e1                                      mov r0, r4
0047d880  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d884  44 72 51 00 90 3a 00 00 40 0b 00 00              .byte 0x44, 0x72, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047f070, declared_size=144, range_size=144, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyE7CompileEv
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::Compile()
; decoder-mode: arm
0047f070  10 40 2d e9                                      push {r4, lr}
0047f074  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047f078  78 30 9f e5                                      ldr r3, [pc, #0x78]
0047f07c  00 40 a0 e1                                      mov r4, r0
0047f080  24 20 80 e5                                      str r2, [r0, #0x24]
0047f084  70 20 9f e5                                      ldr r2, [pc, #0x70]
0047f088  03 30 8f e0                                      add r3, pc, r3
0047f08c  02 00 93 e7                                      ldr r0, [r3, r2]
0047f090  3f 81 fa eb                                      bl #0x31f594
0047f094  24 20 94 e5                                      ldr r2, [r4, #0x24]
0047f098  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047f09c  01 00 73 e3                                      cmn r3, #1
0047f0a0  03 00 00 0a                                      beq #0x47f0b4
0047f0a4  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
0047f0a8  01 00 53 e1                                      cmp r3, r1
0047f0ac  00 00 00 0a                                      beq #0x47f0b4
0047f0b0  10 80 bd e8                                      pop {r4, pc}
0047f0b4  24 00 92 e5                                      ldr r0, [r2, #0x24]
0047f0b8  cd f5 ff eb                                      bl #0x47c7f4
0047f0bc  00 00 50 e3                                      cmp r0, #0
0047f0c0  2c 00 84 e5                                      str r0, [r4, #0x2c]
0047f0c4  f9 ff ff da                                      ble #0x47f0b0
0047f0c8  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f0cc  01 20 a0 e3                                      mov r2, #1
0047f0d0  08 20 c4 e5                                      strb r2, [r4, #8]
0047f0d4  03 00 50 e1                                      cmp r0, r3
0047f0d8  f4 ff ff ca                                      bgt #0x47f0b0
0047f0dc  04 00 a0 e1                                      mov r0, r4
0047f0e0  4a f2 ff eb                                      bl #0x47ba10
0047f0e4  04 00 a0 e1                                      mov r0, r4
0047f0e8  00 30 94 e5                                      ldr r3, [r4]
0047f0ec  0f e0 a0 e1                                      mov lr, pc
0047f0f0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f0f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047f0f8  08 5a 51 00 f4 37 00 00                          .byte 0x08, 0x5a, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047f228, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId, Objective_SavedQty>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f228  10 40 2d e9                                      push {r4, lr}
0047f22c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0047f230  18 20 91 e5                                      ldr r2, [r1, #0x18]
0047f234  00 40 a0 e1                                      mov r4, r0
0047f238  24 30 93 e5                                      ldr r3, [r3, #0x24]
0047f23c  02 00 53 e1                                      cmp r3, r2
0047f240  01 00 00 0a                                      beq #0x47f24c
0047f244  00 00 a0 e3                                      mov r0, #0
0047f248  10 80 bd e8                                      pop {r4, pc}
0047f24c  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f250  00 00 53 e3                                      cmp r3, #0
0047f254  12 00 00 1a                                      bne #0x47f2a4
0047f258  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f25c  01 30 83 e2                                      add r3, r3, #1
0047f260  20 30 80 e5                                      str r3, [r0, #0x20]
0047f264  01 30 a0 e3                                      mov r3, #1
0047f268  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f26c  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f270  14 30 81 e5                                      str r3, [r1, #0x14]
0047f274  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f278  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0047f27c  03 00 52 e1                                      cmp r2, r3
0047f280  ef ff ff ca                                      bgt #0x47f244
0047f284  04 00 a0 e1                                      mov r0, r4
0047f288  e0 f1 ff eb                                      bl #0x47ba10
0047f28c  04 00 a0 e1                                      mov r0, r4
0047f290  00 30 94 e5                                      ldr r3, [r4]
0047f294  0f e0 a0 e1                                      mov lr, pc
0047f298  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f29c  00 00 a0 e3                                      mov r0, #0
0047f2a0  10 80 bd e8                                      pop {r4, pc}
0047f2a4  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f2a8  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047f2ac  03 00 52 e1                                      cmp r2, r3
0047f2b0  20 30 80 b5                                      strlt r3, [r0, #0x20]
0047f2b4  ef ff ff ba                                      blt #0x47f278
0047f2b8  e1 ff ff ea                                      b #0x47f244
