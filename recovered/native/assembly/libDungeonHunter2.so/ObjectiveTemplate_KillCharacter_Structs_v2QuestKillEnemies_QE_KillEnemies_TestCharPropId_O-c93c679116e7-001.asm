; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047b640, declared_size=364, range_size=364, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047b640  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047b644  00 60 a0 e1                                      mov r6, r0
0047b648  20 01 9f e5                                      ldr r0, [pc, #0x120]
0047b64c  01 30 a0 e1                                      mov r3, r1
0047b650  01 40 a0 e1                                      mov r4, r1
0047b654  21 20 a0 e3                                      mov r2, #0x21
0047b658  01 10 a0 e3                                      mov r1, #1
0047b65c  00 00 8f e0                                      add r0, pc, r0
0047b660  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0047b664  0c 70 96 e5                                      ldr r7, [r6, #0xc]
0047b668  ca 4b fa eb                                      bl #0x30e598
0047b66c  04 31 9f e5                                      ldr r3, [pc, #0x104]
0047b670  05 50 8f e0                                      add r5, pc, r5
0047b674  00 11 9f e5                                      ldr r1, [pc, #0x100]
0047b678  03 30 95 e7                                      ldr r3, [r5, r3]
0047b67c  04 20 97 e5                                      ldr r2, [r7, #4]
0047b680  01 10 8f e0                                      add r1, pc, r1
0047b684  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047b688  1e 25 01 eb                                      bl #0x4c4b08
0047b68c  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0047b690  00 20 a0 e1                                      mov r2, r0
0047b694  04 00 a0 e1                                      mov r0, r4
0047b698  01 10 8f e0                                      add r1, pc, r1
0047b69c  58 4a fa eb                                      bl #0x30e004
0047b6a0  24 30 97 e5                                      ldr r3, [r7, #0x24]
0047b6a4  00 00 53 e3                                      cmp r3, #0
0047b6a8  04 00 00 ba                                      blt #0x47b6c0
0047b6ac  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0047b6b0  02 20 95 e7                                      ldr r2, [r5, r2]
0047b6b4  00 20 92 e5                                      ldr r2, [r2]
0047b6b8  02 00 53 e1                                      cmp r3, r2
0047b6bc  26 00 00 3a                                      blo #0x47b75c
0047b6c0  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0047b6c4  02 20 8f e0                                      add r2, pc, r2
0047b6c8  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0047b6cc  04 00 a0 e1                                      mov r0, r4
0047b6d0  01 10 8f e0                                      add r1, pc, r1
0047b6d4  4a 4a fa eb                                      bl #0x30e004
0047b6d8  20 30 97 e5                                      ldr r3, [r7, #0x20]
0047b6dc  00 00 53 e3                                      cmp r3, #0
0047b6e0  09 00 00 ba                                      blt #0x47b70c
0047b6e4  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0047b6e8  02 20 95 e7                                      ldr r2, [r5, r2]
0047b6ec  00 20 92 e5                                      ldr r2, [r2]
0047b6f0  02 00 53 e1                                      cmp r3, r2
0047b6f4  04 00 00 2a                                      bhs #0x47b70c
0047b6f8  94 20 9f e5                                      ldr r2, [pc, #0x94]
0047b6fc  02 20 95 e7                                      ldr r2, [r5, r2]
0047b700  00 20 92 e5                                      ldr r2, [r2]
0047b704  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b708  01 00 00 ea                                      b #0x47b714
0047b70c  84 20 9f e5                                      ldr r2, [pc, #0x84]
0047b710  02 20 8f e0                                      add r2, pc, r2
0047b714  80 10 9f e5                                      ldr r1, [pc, #0x80]
0047b718  04 00 a0 e1                                      mov r0, r4
0047b71c  01 10 8f e0                                      add r1, pc, r1
0047b720  37 4a fa eb                                      bl #0x30e004
0047b724  74 10 9f e5                                      ldr r1, [pc, #0x74]
0047b728  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
0047b72c  04 00 a0 e1                                      mov r0, r4
0047b730  01 10 8f e0                                      add r1, pc, r1
0047b734  32 4a fa eb                                      bl #0x30e004
0047b738  64 10 9f e5                                      ldr r1, [pc, #0x64]
0047b73c  04 00 a0 e1                                      mov r0, r4
0047b740  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047b744  01 10 8f e0                                      add r1, pc, r1
0047b748  2d 4a fa eb                                      bl #0x30e004
0047b74c  06 00 a0 e1                                      mov r0, r6
0047b750  04 10 a0 e1                                      mov r1, r4
0047b754  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047b758  d5 fc ff ea                                      b #0x47aab4
0047b75c  44 20 9f e5                                      ldr r2, [pc, #0x44]
0047b760  02 20 95 e7                                      ldr r2, [r5, r2]
0047b764  00 20 92 e5                                      ldr r2, [r2]
0047b768  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b76c  d5 ff ff ea                                      b #0x47b6c8
; mapping-symbol data/literal pool
0047b770  44 26 45 00 20 94 51 00 f4 37 00 00 e8 72 44 00  .byte 0x44, 0x26, 0x45, 0x00, 0x20, 0x94, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe8, 0x72, 0x44, 0x00
0047b780  30 26 45 00 c0 18 00 00 4c 41 44 00 10 26 45 00  .byte 0x30, 0x26, 0x45, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x4c, 0x41, 0x44, 0x00, 0x10, 0x26, 0x45, 0x00
0047b790  04 42 00 00 08 3c 00 00 00 41 44 00 dc 25 45 00  .byte 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00, 0x00, 0x41, 0x44, 0x00, 0xdc, 0x25, 0x45, 0x00
0047b7a0  e0 25 45 00 e4 25 45 00 5c 3b 00 00              .byte 0xe0, 0x25, 0x45, 0x00, 0xe4, 0x25, 0x45, 0x00, 0x5c, 0x3b, 0x00, 0x00

; FUNCTION 0x0047ca18, declared_size=260, range_size=260, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047ca18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0047ca1c  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047ca20  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
0047ca24  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
0047ca28  01 60 a0 e1                                      mov r6, r1
0047ca2c  02 10 63 e0                                      rsb r1, r3, r2
0047ca30  00 00 51 e3                                      cmp r1, #0
0047ca34  05 50 8f e0                                      add r5, pc, r5
0047ca38  18 d0 4d e2                                      sub sp, sp, #0x18
0047ca3c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0047ca40  20 00 00 da                                      ble #0x47cac8
0047ca44  06 00 a0 e1                                      mov r0, r6
0047ca48  d9 f7 ff eb                                      bl #0x47a9b4
0047ca4c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0047ca50  00 10 a0 e3                                      mov r1, #0
0047ca54  01 20 a0 e3                                      mov r2, #1
0047ca58  03 50 95 e7                                      ldr r5, [r5, r3]
0047ca5c  0d 70 a0 e1                                      mov r7, sp
0047ca60  40 00 95 e5                                      ldr r0, [r5, #0x40]
0047ca64  83 c6 fb eb                                      bl #0x36e478
0047ca68  60 36 90 e5                                      ldr r3, [r0, #0x660]
0047ca6c  0c 10 8d e2                                      add r1, sp, #0xc
0047ca70  06 00 a0 e1                                      mov r0, r6
0047ca74  60 c1 93 e5                                      ldr ip, [r3, #0x160]
0047ca78  64 21 93 e5                                      ldr r2, [r3, #0x164]
0047ca7c  68 31 93 e5                                      ldr r3, [r3, #0x168]
0047ca80  0c c0 8d e5                                      str ip, [sp, #0xc]
0047ca84  10 20 8d e5                                      str r2, [sp, #0x10]
0047ca88  14 30 8d e5                                      str r3, [sp, #0x14]
0047ca8c  43 f5 ff eb                                      bl #0x479fa0
0047ca90  38 a0 95 e5                                      ldr sl, [r5, #0x38]
0047ca94  60 50 ba e5                                      ldr r5, [sl, #0x60]!
0047ca98  05 00 5a e1                                      cmp sl, r5
0047ca9c  09 00 00 0a                                      beq #0x47cac8
0047caa0  08 80 95 e5                                      ldr r8, [r5, #8]
0047caa4  20 90 94 e5                                      ldr sb, [r4, #0x20]
0047caa8  00 00 58 e2                                      subs r0, r8, #0
0047caac  02 00 00 0a                                      beq #0x47cabc
0047cab0  a0 dc fc eb                                      bl #0x3b3d38
0047cab4  00 00 59 e1                                      cmp sb, r0
0047cab8  04 00 00 0a                                      beq #0x47cad0
0047cabc  00 50 95 e5                                      ldr r5, [r5]
0047cac0  05 00 5a e1                                      cmp sl, r5
0047cac4  f5 ff ff 1a                                      bne #0x47caa0
0047cac8  18 d0 8d e2                                      add sp, sp, #0x18
0047cacc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0047cad0  00 30 98 e5                                      ldr r3, [r8]
0047cad4  08 00 a0 e1                                      mov r0, r8
0047cad8  0f e0 a0 e1                                      mov lr, pc
0047cadc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0047cae0  00 00 50 e3                                      cmp r0, #0
0047cae4  0d 10 a0 e1                                      mov r1, sp
0047cae8  06 00 a0 e1                                      mov r0, r6
0047caec  f2 ff ff 1a                                      bne #0x47cabc
0047caf0  60 c1 98 e5                                      ldr ip, [r8, #0x160]
0047caf4  64 21 98 e5                                      ldr r2, [r8, #0x164]
0047caf8  68 31 98 e5                                      ldr r3, [r8, #0x168]
0047cafc  00 c0 8d e5                                      str ip, [sp]
0047cb00  04 20 8d e5                                      str r2, [sp, #4]
0047cb04  08 30 8d e5                                      str r3, [sp, #8]
0047cb08  2e f5 ff eb                                      bl #0x479fc8
0047cb0c  00 50 95 e5                                      ldr r5, [r5]
0047cb10  ea ff ff ea                                      b #0x47cac0
; mapping-symbol data/literal pool
0047cb14  5c 80 51 00 f4 37 00 00                          .byte 0x5c, 0x80, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047d32c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d32c  18 00 40 e2                                      sub r0, r0, #0x18
0047d330  ff ff ff ea                                      b #0x47d334

; FUNCTION 0x0047d334, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED1Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d334  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d338  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d33c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d340  03 30 8f e0                                      add r3, pc, r3
0047d344  01 10 93 e7                                      ldr r1, [r3, r1]
0047d348  02 20 93 e7                                      ldr r2, [r3, r2]
0047d34c  10 40 2d e9                                      push {r4, lr}
0047d350  08 10 81 e2                                      add r1, r1, #8
0047d354  08 20 82 e2                                      add r2, r2, #8
0047d358  00 40 a0 e1                                      mov r4, r0
0047d35c  00 10 80 e5                                      str r1, [r0]
0047d360  18 20 80 e5                                      str r2, [r0, #0x18]
0047d364  9e f3 ff eb                                      bl #0x47a1e4
0047d368  04 00 a0 e1                                      mov r0, r4
0047d36c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d370  50 77 51 00 90 3a 00 00 40 0b 00 00              .byte 0x50, 0x77, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047e784, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047e784  18 00 40 e2                                      sub r0, r0, #0x18
0047e788  ff ff ff ea                                      b #0x47e78c

; FUNCTION 0x0047e78c, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED0Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047e78c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047e790  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047e794  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047e798  03 30 8f e0                                      add r3, pc, r3
0047e79c  01 10 93 e7                                      ldr r1, [r3, r1]
0047e7a0  02 20 93 e7                                      ldr r2, [r3, r2]
0047e7a4  10 40 2d e9                                      push {r4, lr}
0047e7a8  08 10 81 e2                                      add r1, r1, #8
0047e7ac  08 20 82 e2                                      add r2, r2, #8
0047e7b0  00 40 a0 e1                                      mov r4, r0
0047e7b4  00 10 80 e5                                      str r1, [r0]
0047e7b8  18 20 80 e5                                      str r2, [r0, #0x18]
0047e7bc  88 ee ff eb                                      bl #0x47a1e4
0047e7c0  04 00 a0 e1                                      mov r0, r4
0047e7c4  1d 47 fa eb                                      bl #0x310440
0047e7c8  04 00 a0 e1                                      mov r0, r4
0047e7cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047e7d0  f8 62 51 00 90 3a 00 00 40 0b 00 00              .byte 0xf8, 0x62, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047efe0, declared_size=144, range_size=144, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE7CompileEv
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::Compile()
; decoder-mode: arm
0047efe0  10 40 2d e9                                      push {r4, lr}
0047efe4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047efe8  78 30 9f e5                                      ldr r3, [pc, #0x78]
0047efec  00 40 a0 e1                                      mov r4, r0
0047eff0  24 20 80 e5                                      str r2, [r0, #0x24]
0047eff4  70 20 9f e5                                      ldr r2, [pc, #0x70]
0047eff8  03 30 8f e0                                      add r3, pc, r3
0047effc  02 00 93 e7                                      ldr r0, [r3, r2]
0047f000  63 81 fa eb                                      bl #0x31f594
0047f004  24 20 94 e5                                      ldr r2, [r4, #0x24]
0047f008  24 30 92 e5                                      ldr r3, [r2, #0x24]
0047f00c  01 00 73 e3                                      cmn r3, #1
0047f010  03 00 00 0a                                      beq #0x47f024
0047f014  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
0047f018  01 00 53 e1                                      cmp r3, r1
0047f01c  00 00 00 0a                                      beq #0x47f024
0047f020  10 80 bd e8                                      pop {r4, pc}
0047f024  20 00 92 e5                                      ldr r0, [r2, #0x20]
0047f028  f1 f5 ff eb                                      bl #0x47c7f4
0047f02c  00 00 50 e3                                      cmp r0, #0
0047f030  2c 00 84 e5                                      str r0, [r4, #0x2c]
0047f034  f9 ff ff da                                      ble #0x47f020
0047f038  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f03c  01 20 a0 e3                                      mov r2, #1
0047f040  08 20 c4 e5                                      strb r2, [r4, #8]
0047f044  03 00 50 e1                                      cmp r0, r3
0047f048  f4 ff ff ca                                      bgt #0x47f020
0047f04c  04 00 a0 e1                                      mov r0, r4
0047f050  6e f2 ff eb                                      bl #0x47ba10
0047f054  04 00 a0 e1                                      mov r0, r4
0047f058  00 30 94 e5                                      ldr r3, [r4]
0047f05c  0f e0 a0 e1                                      mov lr, pc
0047f060  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f064  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047f068  98 5a 51 00 f4 37 00 00                          .byte 0x98, 0x5a, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047f100, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f100  10 40 2d e9                                      push {r4, lr}
0047f104  24 30 90 e5                                      ldr r3, [r0, #0x24]
0047f108  18 20 91 e5                                      ldr r2, [r1, #0x18]
0047f10c  00 40 a0 e1                                      mov r4, r0
0047f110  20 30 93 e5                                      ldr r3, [r3, #0x20]
0047f114  02 00 53 e1                                      cmp r3, r2
0047f118  01 00 00 0a                                      beq #0x47f124
0047f11c  00 00 a0 e3                                      mov r0, #0
0047f120  10 80 bd e8                                      pop {r4, pc}
0047f124  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f128  00 00 53 e3                                      cmp r3, #0
0047f12c  12 00 00 1a                                      bne #0x47f17c
0047f130  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f134  01 30 83 e2                                      add r3, r3, #1
0047f138  20 30 80 e5                                      str r3, [r0, #0x20]
0047f13c  01 30 a0 e3                                      mov r3, #1
0047f140  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f144  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f148  14 30 81 e5                                      str r3, [r1, #0x14]
0047f14c  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f150  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0047f154  03 00 52 e1                                      cmp r2, r3
0047f158  ef ff ff ca                                      bgt #0x47f11c
0047f15c  04 00 a0 e1                                      mov r0, r4
0047f160  2a f2 ff eb                                      bl #0x47ba10
0047f164  04 00 a0 e1                                      mov r0, r4
0047f168  00 30 94 e5                                      ldr r3, [r4]
0047f16c  0f e0 a0 e1                                      mov lr, pc
0047f170  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f174  00 00 a0 e3                                      mov r0, #0
0047f178  10 80 bd e8                                      pop {r4, pc}
0047f17c  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f180  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047f184  03 00 52 e1                                      cmp r2, r3
0047f188  20 30 80 b5                                      strlt r3, [r0, #0x20]
0047f18c  ef ff ff ba                                      blt #0x47f150
0047f190  e1 ff ff ea                                      b #0x47f11c
