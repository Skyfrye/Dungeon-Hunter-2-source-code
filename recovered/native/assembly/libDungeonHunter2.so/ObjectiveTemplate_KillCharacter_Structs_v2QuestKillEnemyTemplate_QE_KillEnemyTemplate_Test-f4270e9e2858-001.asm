; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047b1f8, declared_size=364, range_size=364, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047b1f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047b1fc  00 60 a0 e1                                      mov r6, r0
0047b200  20 01 9f e5                                      ldr r0, [pc, #0x120]
0047b204  01 30 a0 e1                                      mov r3, r1
0047b208  01 40 a0 e1                                      mov r4, r1
0047b20c  21 20 a0 e3                                      mov r2, #0x21
0047b210  01 10 a0 e3                                      mov r1, #1
0047b214  00 00 8f e0                                      add r0, pc, r0
0047b218  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0047b21c  0c 70 96 e5                                      ldr r7, [r6, #0xc]
0047b220  dc 4c fa eb                                      bl #0x30e598
0047b224  04 31 9f e5                                      ldr r3, [pc, #0x104]
0047b228  05 50 8f e0                                      add r5, pc, r5
0047b22c  00 11 9f e5                                      ldr r1, [pc, #0x100]
0047b230  03 30 95 e7                                      ldr r3, [r5, r3]
0047b234  04 20 97 e5                                      ldr r2, [r7, #4]
0047b238  01 10 8f e0                                      add r1, pc, r1
0047b23c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047b240  30 26 01 eb                                      bl #0x4c4b08
0047b244  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0047b248  00 20 a0 e1                                      mov r2, r0
0047b24c  04 00 a0 e1                                      mov r0, r4
0047b250  01 10 8f e0                                      add r1, pc, r1
0047b254  6a 4b fa eb                                      bl #0x30e004
0047b258  24 30 97 e5                                      ldr r3, [r7, #0x24]
0047b25c  00 00 53 e3                                      cmp r3, #0
0047b260  04 00 00 ba                                      blt #0x47b278
0047b264  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0047b268  02 20 95 e7                                      ldr r2, [r5, r2]
0047b26c  00 20 92 e5                                      ldr r2, [r2]
0047b270  02 00 53 e1                                      cmp r3, r2
0047b274  26 00 00 3a                                      blo #0x47b314
0047b278  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0047b27c  02 20 8f e0                                      add r2, pc, r2
0047b280  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0047b284  04 00 a0 e1                                      mov r0, r4
0047b288  01 10 8f e0                                      add r1, pc, r1
0047b28c  5c 4b fa eb                                      bl #0x30e004
0047b290  20 30 97 e5                                      ldr r3, [r7, #0x20]
0047b294  00 00 53 e3                                      cmp r3, #0
0047b298  09 00 00 ba                                      blt #0x47b2c4
0047b29c  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0047b2a0  02 20 95 e7                                      ldr r2, [r5, r2]
0047b2a4  00 20 92 e5                                      ldr r2, [r2]
0047b2a8  02 00 53 e1                                      cmp r3, r2
0047b2ac  04 00 00 2a                                      bhs #0x47b2c4
0047b2b0  94 20 9f e5                                      ldr r2, [pc, #0x94]
0047b2b4  02 20 95 e7                                      ldr r2, [r5, r2]
0047b2b8  00 20 92 e5                                      ldr r2, [r2]
0047b2bc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b2c0  01 00 00 ea                                      b #0x47b2cc
0047b2c4  84 20 9f e5                                      ldr r2, [pc, #0x84]
0047b2c8  02 20 8f e0                                      add r2, pc, r2
0047b2cc  80 10 9f e5                                      ldr r1, [pc, #0x80]
0047b2d0  04 00 a0 e1                                      mov r0, r4
0047b2d4  01 10 8f e0                                      add r1, pc, r1
0047b2d8  49 4b fa eb                                      bl #0x30e004
0047b2dc  74 10 9f e5                                      ldr r1, [pc, #0x74]
0047b2e0  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
0047b2e4  04 00 a0 e1                                      mov r0, r4
0047b2e8  01 10 8f e0                                      add r1, pc, r1
0047b2ec  44 4b fa eb                                      bl #0x30e004
0047b2f0  64 10 9f e5                                      ldr r1, [pc, #0x64]
0047b2f4  04 00 a0 e1                                      mov r0, r4
0047b2f8  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047b2fc  01 10 8f e0                                      add r1, pc, r1
0047b300  3f 4b fa eb                                      bl #0x30e004
0047b304  06 00 a0 e1                                      mov r0, r6
0047b308  04 10 a0 e1                                      mov r1, r4
0047b30c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047b310  e7 fd ff ea                                      b #0x47aab4
0047b314  44 20 9f e5                                      ldr r2, [pc, #0x44]
0047b318  02 20 95 e7                                      ldr r2, [r5, r2]
0047b31c  00 20 92 e5                                      ldr r2, [r2]
0047b320  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b324  d5 ff ff ea                                      b #0x47b280
; mapping-symbol data/literal pool
0047b328  8c 2a 45 00 68 98 51 00 f4 37 00 00 30 77 44 00  .byte 0x8c, 0x2a, 0x45, 0x00, 0x68, 0x98, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x30, 0x77, 0x44, 0x00
0047b338  78 2a 45 00 c0 18 00 00 94 45 44 00 58 2a 45 00  .byte 0x78, 0x2a, 0x45, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x94, 0x45, 0x44, 0x00, 0x58, 0x2a, 0x45, 0x00
0047b348  c8 0b 00 00 3c 17 00 00 48 45 44 00 24 2a 45 00  .byte 0xc8, 0x0b, 0x00, 0x00, 0x3c, 0x17, 0x00, 0x00, 0x48, 0x45, 0x44, 0x00, 0x24, 0x2a, 0x45, 0x00
0047b358  28 2a 45 00 2c 2a 45 00 5c 3b 00 00              .byte 0x28, 0x2a, 0x45, 0x00, 0x2c, 0x2a, 0x45, 0x00, 0x5c, 0x3b, 0x00, 0x00

; FUNCTION 0x0047cb1c, declared_size=260, range_size=260, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047cb1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0047cb20  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047cb24  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
0047cb28  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
0047cb2c  01 60 a0 e1                                      mov r6, r1
0047cb30  02 10 63 e0                                      rsb r1, r3, r2
0047cb34  00 00 51 e3                                      cmp r1, #0
0047cb38  05 50 8f e0                                      add r5, pc, r5
0047cb3c  18 d0 4d e2                                      sub sp, sp, #0x18
0047cb40  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0047cb44  20 00 00 da                                      ble #0x47cbcc
0047cb48  06 00 a0 e1                                      mov r0, r6
0047cb4c  98 f7 ff eb                                      bl #0x47a9b4
0047cb50  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0047cb54  00 10 a0 e3                                      mov r1, #0
0047cb58  01 20 a0 e3                                      mov r2, #1
0047cb5c  03 50 95 e7                                      ldr r5, [r5, r3]
0047cb60  0d 70 a0 e1                                      mov r7, sp
0047cb64  40 00 95 e5                                      ldr r0, [r5, #0x40]
0047cb68  42 c6 fb eb                                      bl #0x36e478
0047cb6c  60 36 90 e5                                      ldr r3, [r0, #0x660]
0047cb70  0c 10 8d e2                                      add r1, sp, #0xc
0047cb74  06 00 a0 e1                                      mov r0, r6
0047cb78  60 c1 93 e5                                      ldr ip, [r3, #0x160]
0047cb7c  64 21 93 e5                                      ldr r2, [r3, #0x164]
0047cb80  68 31 93 e5                                      ldr r3, [r3, #0x168]
0047cb84  0c c0 8d e5                                      str ip, [sp, #0xc]
0047cb88  10 20 8d e5                                      str r2, [sp, #0x10]
0047cb8c  14 30 8d e5                                      str r3, [sp, #0x14]
0047cb90  02 f5 ff eb                                      bl #0x479fa0
0047cb94  38 a0 95 e5                                      ldr sl, [r5, #0x38]
0047cb98  60 50 ba e5                                      ldr r5, [sl, #0x60]!
0047cb9c  05 00 5a e1                                      cmp sl, r5
0047cba0  09 00 00 0a                                      beq #0x47cbcc
0047cba4  08 80 95 e5                                      ldr r8, [r5, #8]
0047cba8  20 90 94 e5                                      ldr sb, [r4, #0x20]
0047cbac  00 00 58 e2                                      subs r0, r8, #0
0047cbb0  02 00 00 0a                                      beq #0x47cbc0
0047cbb4  cc da fc eb                                      bl #0x3b36ec
0047cbb8  00 00 59 e1                                      cmp sb, r0
0047cbbc  04 00 00 0a                                      beq #0x47cbd4
0047cbc0  00 50 95 e5                                      ldr r5, [r5]
0047cbc4  05 00 5a e1                                      cmp sl, r5
0047cbc8  f5 ff ff 1a                                      bne #0x47cba4
0047cbcc  18 d0 8d e2                                      add sp, sp, #0x18
0047cbd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0047cbd4  00 30 98 e5                                      ldr r3, [r8]
0047cbd8  08 00 a0 e1                                      mov r0, r8
0047cbdc  0f e0 a0 e1                                      mov lr, pc
0047cbe0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0047cbe4  00 00 50 e3                                      cmp r0, #0
0047cbe8  0d 10 a0 e1                                      mov r1, sp
0047cbec  06 00 a0 e1                                      mov r0, r6
0047cbf0  f2 ff ff 1a                                      bne #0x47cbc0
0047cbf4  60 c1 98 e5                                      ldr ip, [r8, #0x160]
0047cbf8  64 21 98 e5                                      ldr r2, [r8, #0x164]
0047cbfc  68 31 98 e5                                      ldr r3, [r8, #0x168]
0047cc00  00 c0 8d e5                                      str ip, [sp]
0047cc04  04 20 8d e5                                      str r2, [sp, #4]
0047cc08  08 30 8d e5                                      str r3, [sp, #8]
0047cc0c  ed f4 ff eb                                      bl #0x479fc8
0047cc10  00 50 95 e5                                      ldr r5, [r5]
0047cc14  ea ff ff ea                                      b #0x47cbc4
; mapping-symbol data/literal pool
0047cc18  58 7f 51 00 f4 37 00 00                          .byte 0x58, 0x7f, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047d23c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d23c  18 00 40 e2                                      sub r0, r0, #0x18
0047d240  ff ff ff ea                                      b #0x47d244

; FUNCTION 0x0047d244, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d244  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d248  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d24c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d250  03 30 8f e0                                      add r3, pc, r3
0047d254  01 10 93 e7                                      ldr r1, [r3, r1]
0047d258  02 20 93 e7                                      ldr r2, [r3, r2]
0047d25c  10 40 2d e9                                      push {r4, lr}
0047d260  08 10 81 e2                                      add r1, r1, #8
0047d264  08 20 82 e2                                      add r2, r2, #8
0047d268  00 40 a0 e1                                      mov r4, r0
0047d26c  00 10 80 e5                                      str r1, [r0]
0047d270  18 20 80 e5                                      str r2, [r0, #0x18]
0047d274  da f3 ff eb                                      bl #0x47a1e4
0047d278  04 00 a0 e1                                      mov r0, r4
0047d27c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d280  40 78 51 00 90 3a 00 00 40 0b 00 00              .byte 0x40, 0x78, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047e7dc, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047e7dc  18 00 40 e2                                      sub r0, r0, #0x18
0047e7e0  ff ff ff ea                                      b #0x47e7e4

; FUNCTION 0x0047e7e4, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED0Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047e7e4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047e7e8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047e7ec  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047e7f0  03 30 8f e0                                      add r3, pc, r3
0047e7f4  01 10 93 e7                                      ldr r1, [r3, r1]
0047e7f8  02 20 93 e7                                      ldr r2, [r3, r2]
0047e7fc  10 40 2d e9                                      push {r4, lr}
0047e800  08 10 81 e2                                      add r1, r1, #8
0047e804  08 20 82 e2                                      add r2, r2, #8
0047e808  00 40 a0 e1                                      mov r4, r0
0047e80c  00 10 80 e5                                      str r1, [r0]
0047e810  18 20 80 e5                                      str r2, [r0, #0x18]
0047e814  72 ee ff eb                                      bl #0x47a1e4
0047e818  04 00 a0 e1                                      mov r0, r4
0047e81c  07 47 fa eb                                      bl #0x310440
0047e820  04 00 a0 e1                                      mov r0, r4
0047e824  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047e828  a0 62 51 00 90 3a 00 00 40 0b 00 00              .byte 0xa0, 0x62, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047eec0, declared_size=144, range_size=144, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE7CompileEv
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::Compile()
; decoder-mode: arm
0047eec0  10 40 2d e9                                      push {r4, lr}
0047eec4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047eec8  78 30 9f e5                                      ldr r3, [pc, #0x78]
0047eecc  00 40 a0 e1                                      mov r4, r0
0047eed0  24 20 80 e5                                      str r2, [r0, #0x24]
0047eed4  70 20 9f e5                                      ldr r2, [pc, #0x70]
0047eed8  03 30 8f e0                                      add r3, pc, r3
0047eedc  02 00 93 e7                                      ldr r0, [r3, r2]
0047eee0  ab 81 fa eb                                      bl #0x31f594
0047eee4  24 20 94 e5                                      ldr r2, [r4, #0x24]
0047eee8  24 30 92 e5                                      ldr r3, [r2, #0x24]
0047eeec  01 00 73 e3                                      cmn r3, #1
0047eef0  03 00 00 0a                                      beq #0x47ef04
0047eef4  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
0047eef8  01 00 53 e1                                      cmp r3, r1
0047eefc  00 00 00 0a                                      beq #0x47ef04
0047ef00  10 80 bd e8                                      pop {r4, pc}
0047ef04  20 00 92 e5                                      ldr r0, [r2, #0x20]
0047ef08  44 f7 ff eb                                      bl #0x47cc20
0047ef0c  00 00 50 e3                                      cmp r0, #0
0047ef10  2c 00 84 e5                                      str r0, [r4, #0x2c]
0047ef14  f9 ff ff da                                      ble #0x47ef00
0047ef18  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047ef1c  01 20 a0 e3                                      mov r2, #1
0047ef20  08 20 c4 e5                                      strb r2, [r4, #8]
0047ef24  03 00 50 e1                                      cmp r0, r3
0047ef28  f4 ff ff ca                                      bgt #0x47ef00
0047ef2c  04 00 a0 e1                                      mov r0, r4
0047ef30  b6 f2 ff eb                                      bl #0x47ba10
0047ef34  04 00 a0 e1                                      mov r0, r4
0047ef38  00 30 94 e5                                      ldr r3, [r4]
0047ef3c  0f e0 a0 e1                                      mov lr, pc
0047ef40  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047ef44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047ef48  b8 5b 51 00 f4 37 00 00                          .byte 0xb8, 0x5b, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047f2bc, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f2bc  10 40 2d e9                                      push {r4, lr}
0047f2c0  24 30 90 e5                                      ldr r3, [r0, #0x24]
0047f2c4  18 20 91 e5                                      ldr r2, [r1, #0x18]
0047f2c8  00 40 a0 e1                                      mov r4, r0
0047f2cc  20 30 93 e5                                      ldr r3, [r3, #0x20]
0047f2d0  02 00 53 e1                                      cmp r3, r2
0047f2d4  01 00 00 0a                                      beq #0x47f2e0
0047f2d8  00 00 a0 e3                                      mov r0, #0
0047f2dc  10 80 bd e8                                      pop {r4, pc}
0047f2e0  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f2e4  00 00 53 e3                                      cmp r3, #0
0047f2e8  12 00 00 1a                                      bne #0x47f338
0047f2ec  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f2f0  01 30 83 e2                                      add r3, r3, #1
0047f2f4  20 30 80 e5                                      str r3, [r0, #0x20]
0047f2f8  01 30 a0 e3                                      mov r3, #1
0047f2fc  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f300  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f304  14 30 81 e5                                      str r3, [r1, #0x14]
0047f308  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f30c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0047f310  03 00 52 e1                                      cmp r2, r3
0047f314  ef ff ff ca                                      bgt #0x47f2d8
0047f318  04 00 a0 e1                                      mov r0, r4
0047f31c  bb f1 ff eb                                      bl #0x47ba10
0047f320  04 00 a0 e1                                      mov r0, r4
0047f324  00 30 94 e5                                      ldr r3, [r4]
0047f328  0f e0 a0 e1                                      mov lr, pc
0047f32c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f330  00 00 a0 e3                                      mov r0, #0
0047f334  10 80 bd e8                                      pop {r4, pc}
0047f338  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f33c  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047f340  03 00 52 e1                                      cmp r2, r3
0047f344  20 30 80 b5                                      strlt r3, [r0, #0x20]
0047f348  ef ff ff ba                                      blt #0x47f30c
0047f34c  e1 ff ff ea                                      b #0x47f2d8
