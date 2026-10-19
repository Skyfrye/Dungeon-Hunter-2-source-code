; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047b08c, declared_size=364, range_size=364, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047b08c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047b090  00 60 a0 e1                                      mov r6, r0
0047b094  20 01 9f e5                                      ldr r0, [pc, #0x120]
0047b098  01 30 a0 e1                                      mov r3, r1
0047b09c  01 40 a0 e1                                      mov r4, r1
0047b0a0  21 20 a0 e3                                      mov r2, #0x21
0047b0a4  01 10 a0 e3                                      mov r1, #1
0047b0a8  00 00 8f e0                                      add r0, pc, r0
0047b0ac  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
0047b0b0  0c 70 96 e5                                      ldr r7, [r6, #0xc]
0047b0b4  37 4d fa eb                                      bl #0x30e598
0047b0b8  04 31 9f e5                                      ldr r3, [pc, #0x104]
0047b0bc  05 50 8f e0                                      add r5, pc, r5
0047b0c0  00 11 9f e5                                      ldr r1, [pc, #0x100]
0047b0c4  03 30 95 e7                                      ldr r3, [r5, r3]
0047b0c8  04 20 97 e5                                      ldr r2, [r7, #4]
0047b0cc  01 10 8f e0                                      add r1, pc, r1
0047b0d0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047b0d4  8b 26 01 eb                                      bl #0x4c4b08
0047b0d8  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0047b0dc  00 20 a0 e1                                      mov r2, r0
0047b0e0  04 00 a0 e1                                      mov r0, r4
0047b0e4  01 10 8f e0                                      add r1, pc, r1
0047b0e8  c5 4b fa eb                                      bl #0x30e004
0047b0ec  20 30 97 e5                                      ldr r3, [r7, #0x20]
0047b0f0  00 00 53 e3                                      cmp r3, #0
0047b0f4  04 00 00 ba                                      blt #0x47b10c
0047b0f8  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0047b0fc  02 20 95 e7                                      ldr r2, [r5, r2]
0047b100  00 20 92 e5                                      ldr r2, [r2]
0047b104  02 00 53 e1                                      cmp r3, r2
0047b108  26 00 00 3a                                      blo #0x47b1a8
0047b10c  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0047b110  02 20 8f e0                                      add r2, pc, r2
0047b114  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0047b118  04 00 a0 e1                                      mov r0, r4
0047b11c  01 10 8f e0                                      add r1, pc, r1
0047b120  b7 4b fa eb                                      bl #0x30e004
0047b124  24 30 97 e5                                      ldr r3, [r7, #0x24]
0047b128  00 00 53 e3                                      cmp r3, #0
0047b12c  09 00 00 ba                                      blt #0x47b158
0047b130  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0047b134  02 20 95 e7                                      ldr r2, [r5, r2]
0047b138  00 20 92 e5                                      ldr r2, [r2]
0047b13c  02 00 53 e1                                      cmp r3, r2
0047b140  04 00 00 2a                                      bhs #0x47b158
0047b144  94 20 9f e5                                      ldr r2, [pc, #0x94]
0047b148  02 20 95 e7                                      ldr r2, [r5, r2]
0047b14c  00 20 92 e5                                      ldr r2, [r2]
0047b150  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b154  01 00 00 ea                                      b #0x47b160
0047b158  84 20 9f e5                                      ldr r2, [pc, #0x84]
0047b15c  02 20 8f e0                                      add r2, pc, r2
0047b160  80 10 9f e5                                      ldr r1, [pc, #0x80]
0047b164  04 00 a0 e1                                      mov r0, r4
0047b168  01 10 8f e0                                      add r1, pc, r1
0047b16c  a4 4b fa eb                                      bl #0x30e004
0047b170  74 10 9f e5                                      ldr r1, [pc, #0x74]
0047b174  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
0047b178  04 00 a0 e1                                      mov r0, r4
0047b17c  01 10 8f e0                                      add r1, pc, r1
0047b180  9f 4b fa eb                                      bl #0x30e004
0047b184  64 10 9f e5                                      ldr r1, [pc, #0x64]
0047b188  04 00 a0 e1                                      mov r0, r4
0047b18c  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047b190  01 10 8f e0                                      add r1, pc, r1
0047b194  9a 4b fa eb                                      bl #0x30e004
0047b198  06 00 a0 e1                                      mov r0, r6
0047b19c  04 10 a0 e1                                      mov r1, r4
0047b1a0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047b1a4  42 fe ff ea                                      b #0x47aab4
0047b1a8  44 20 9f e5                                      ldr r2, [pc, #0x44]
0047b1ac  02 20 95 e7                                      ldr r2, [r5, r2]
0047b1b0  00 20 92 e5                                      ldr r2, [r2]
0047b1b4  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047b1b8  d5 ff ff ea                                      b #0x47b114
; mapping-symbol data/literal pool
0047b1bc  f8 2b 45 00 d4 99 51 00 f4 37 00 00 9c 78 44 00  .byte 0xf8, 0x2b, 0x45, 0x00, 0xd4, 0x99, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x78, 0x44, 0x00
0047b1cc  e4 2b 45 00 c0 18 00 00 00 47 44 00 c4 2b 45 00  .byte 0xe4, 0x2b, 0x45, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x00, 0x47, 0x44, 0x00, 0xc4, 0x2b, 0x45, 0x00
0047b1dc  c8 0b 00 00 3c 17 00 00 b4 46 44 00 90 2b 45 00  .byte 0xc8, 0x0b, 0x00, 0x00, 0x3c, 0x17, 0x00, 0x00, 0xb4, 0x46, 0x44, 0x00, 0x90, 0x2b, 0x45, 0x00
0047b1ec  94 2b 45 00 98 2b 45 00 5c 3b 00 00              .byte 0x94, 0x2b, 0x45, 0x00, 0x98, 0x2b, 0x45, 0x00, 0x5c, 0x3b, 0x00, 0x00

; FUNCTION 0x0047c914, declared_size=260, range_size=260, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZNK31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047c914  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0047c918  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047c91c  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
0047c920  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
0047c924  01 60 a0 e1                                      mov r6, r1
0047c928  02 10 63 e0                                      rsb r1, r3, r2
0047c92c  00 00 51 e3                                      cmp r1, #0
0047c930  05 50 8f e0                                      add r5, pc, r5
0047c934  18 d0 4d e2                                      sub sp, sp, #0x18
0047c938  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0047c93c  20 00 00 da                                      ble #0x47c9c4
0047c940  06 00 a0 e1                                      mov r0, r6
0047c944  1a f8 ff eb                                      bl #0x47a9b4
0047c948  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0047c94c  00 10 a0 e3                                      mov r1, #0
0047c950  01 20 a0 e3                                      mov r2, #1
0047c954  03 50 95 e7                                      ldr r5, [r5, r3]
0047c958  0d 70 a0 e1                                      mov r7, sp
0047c95c  40 00 95 e5                                      ldr r0, [r5, #0x40]
0047c960  c4 c6 fb eb                                      bl #0x36e478
0047c964  60 36 90 e5                                      ldr r3, [r0, #0x660]
0047c968  0c 10 8d e2                                      add r1, sp, #0xc
0047c96c  06 00 a0 e1                                      mov r0, r6
0047c970  60 c1 93 e5                                      ldr ip, [r3, #0x160]
0047c974  64 21 93 e5                                      ldr r2, [r3, #0x164]
0047c978  68 31 93 e5                                      ldr r3, [r3, #0x168]
0047c97c  0c c0 8d e5                                      str ip, [sp, #0xc]
0047c980  10 20 8d e5                                      str r2, [sp, #0x10]
0047c984  14 30 8d e5                                      str r3, [sp, #0x14]
0047c988  84 f5 ff eb                                      bl #0x479fa0
0047c98c  38 a0 95 e5                                      ldr sl, [r5, #0x38]
0047c990  60 50 ba e5                                      ldr r5, [sl, #0x60]!
0047c994  05 00 5a e1                                      cmp sl, r5
0047c998  09 00 00 0a                                      beq #0x47c9c4
0047c99c  08 80 95 e5                                      ldr r8, [r5, #8]
0047c9a0  24 90 94 e5                                      ldr sb, [r4, #0x24]
0047c9a4  00 00 58 e2                                      subs r0, r8, #0
0047c9a8  02 00 00 0a                                      beq #0x47c9b8
0047c9ac  4e db fc eb                                      bl #0x3b36ec
0047c9b0  00 00 59 e1                                      cmp sb, r0
0047c9b4  04 00 00 0a                                      beq #0x47c9cc
0047c9b8  00 50 95 e5                                      ldr r5, [r5]
0047c9bc  05 00 5a e1                                      cmp sl, r5
0047c9c0  f5 ff ff 1a                                      bne #0x47c99c
0047c9c4  18 d0 8d e2                                      add sp, sp, #0x18
0047c9c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0047c9cc  00 30 98 e5                                      ldr r3, [r8]
0047c9d0  08 00 a0 e1                                      mov r0, r8
0047c9d4  0f e0 a0 e1                                      mov lr, pc
0047c9d8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0047c9dc  00 00 50 e3                                      cmp r0, #0
0047c9e0  0d 10 a0 e1                                      mov r1, sp
0047c9e4  06 00 a0 e1                                      mov r0, r6
0047c9e8  f2 ff ff 1a                                      bne #0x47c9b8
0047c9ec  60 c1 98 e5                                      ldr ip, [r8, #0x160]
0047c9f0  64 21 98 e5                                      ldr r2, [r8, #0x164]
0047c9f4  68 31 98 e5                                      ldr r3, [r8, #0x168]
0047c9f8  00 c0 8d e5                                      str ip, [sp]
0047c9fc  04 20 8d e5                                      str r2, [sp, #4]
0047ca00  08 30 8d e5                                      str r3, [sp, #8]
0047ca04  6f f5 ff eb                                      bl #0x479fc8
0047ca08  00 50 95 e5                                      ldr r5, [r5]
0047ca0c  ea ff ff ea                                      b #0x47c9bc
; mapping-symbol data/literal pool
0047ca10  60 81 51 00 f4 37 00 00                          .byte 0x60, 0x81, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047d28c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d28c  18 00 40 e2                                      sub r0, r0, #0x18
0047d290  ff ff ff ea                                      b #0x47d294

; FUNCTION 0x0047d294, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d294  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d298  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d29c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d2a0  03 30 8f e0                                      add r3, pc, r3
0047d2a4  01 10 93 e7                                      ldr r1, [r3, r1]
0047d2a8  02 20 93 e7                                      ldr r2, [r3, r2]
0047d2ac  10 40 2d e9                                      push {r4, lr}
0047d2b0  08 10 81 e2                                      add r1, r1, #8
0047d2b4  08 20 82 e2                                      add r2, r2, #8
0047d2b8  00 40 a0 e1                                      mov r4, r0
0047d2bc  00 10 80 e5                                      str r1, [r0]
0047d2c0  18 20 80 e5                                      str r2, [r0, #0x18]
0047d2c4  c6 f3 ff eb                                      bl #0x47a1e4
0047d2c8  04 00 a0 e1                                      mov r0, r4
0047d2cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d2d0  f0 77 51 00 90 3a 00 00 40 0b 00 00              .byte 0xf0, 0x77, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d7e0, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZThn24_N31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d7e0  18 00 40 e2                                      sub r0, r0, #0x18
0047d7e4  ff ff ff ea                                      b #0x47d7e8

; FUNCTION 0x0047d7e8, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyED0Ev
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillCharacter()
; decoder-mode: arm
0047d7e8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047d7ec  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047d7f0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047d7f4  03 30 8f e0                                      add r3, pc, r3
0047d7f8  01 10 93 e7                                      ldr r1, [r3, r1]
0047d7fc  02 20 93 e7                                      ldr r2, [r3, r2]
0047d800  10 40 2d e9                                      push {r4, lr}
0047d804  08 10 81 e2                                      add r1, r1, #8
0047d808  08 20 82 e2                                      add r2, r2, #8
0047d80c  00 40 a0 e1                                      mov r4, r0
0047d810  00 10 80 e5                                      str r1, [r0]
0047d814  18 20 80 e5                                      str r2, [r0, #0x18]
0047d818  71 f2 ff eb                                      bl #0x47a1e4
0047d81c  04 00 a0 e1                                      mov r0, r4
0047d820  06 4b fa eb                                      bl #0x310440
0047d824  04 00 a0 e1                                      mov r0, r4
0047d828  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d82c  9c 72 51 00 90 3a 00 00 40 0b 00 00              .byte 0x9c, 0x72, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047ef50, declared_size=144, range_size=144, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyE7CompileEv
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::Compile()
; decoder-mode: arm
0047ef50  10 40 2d e9                                      push {r4, lr}
0047ef54  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047ef58  78 30 9f e5                                      ldr r3, [pc, #0x78]
0047ef5c  00 40 a0 e1                                      mov r4, r0
0047ef60  24 20 80 e5                                      str r2, [r0, #0x24]
0047ef64  70 20 9f e5                                      ldr r2, [pc, #0x70]
0047ef68  03 30 8f e0                                      add r3, pc, r3
0047ef6c  02 00 93 e7                                      ldr r0, [r3, r2]
0047ef70  87 81 fa eb                                      bl #0x31f594
0047ef74  24 20 94 e5                                      ldr r2, [r4, #0x24]
0047ef78  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047ef7c  01 00 73 e3                                      cmn r3, #1
0047ef80  03 00 00 0a                                      beq #0x47ef94
0047ef84  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
0047ef88  01 00 53 e1                                      cmp r3, r1
0047ef8c  00 00 00 0a                                      beq #0x47ef94
0047ef90  10 80 bd e8                                      pop {r4, pc}
0047ef94  24 00 92 e5                                      ldr r0, [r2, #0x24]
0047ef98  20 f7 ff eb                                      bl #0x47cc20
0047ef9c  00 00 50 e3                                      cmp r0, #0
0047efa0  2c 00 84 e5                                      str r0, [r4, #0x2c]
0047efa4  f9 ff ff da                                      ble #0x47ef90
0047efa8  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047efac  01 20 a0 e3                                      mov r2, #1
0047efb0  08 20 c4 e5                                      strb r2, [r4, #8]
0047efb4  03 00 50 e1                                      cmp r0, r3
0047efb8  f4 ff ff ca                                      bgt #0x47ef90
0047efbc  04 00 a0 e1                                      mov r0, r4
0047efc0  92 f2 ff eb                                      bl #0x47ba10
0047efc4  04 00 a0 e1                                      mov r0, r4
0047efc8  00 30 94 e5                                      ldr r3, [r4]
0047efcc  0f e0 a0 e1                                      mov lr, pc
0047efd0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047efd4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047efd8  28 5b 51 00 f4 37 00 00                          .byte 0x28, 0x5b, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047f350, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate, Objective_SavedQty>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f350  10 40 2d e9                                      push {r4, lr}
0047f354  24 30 90 e5                                      ldr r3, [r0, #0x24]
0047f358  18 20 91 e5                                      ldr r2, [r1, #0x18]
0047f35c  00 40 a0 e1                                      mov r4, r0
0047f360  24 30 93 e5                                      ldr r3, [r3, #0x24]
0047f364  02 00 53 e1                                      cmp r3, r2
0047f368  01 00 00 0a                                      beq #0x47f374
0047f36c  00 00 a0 e3                                      mov r0, #0
0047f370  10 80 bd e8                                      pop {r4, pc}
0047f374  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f378  00 00 53 e3                                      cmp r3, #0
0047f37c  12 00 00 1a                                      bne #0x47f3cc
0047f380  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f384  01 30 83 e2                                      add r3, r3, #1
0047f388  20 30 80 e5                                      str r3, [r0, #0x20]
0047f38c  01 30 a0 e3                                      mov r3, #1
0047f390  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f394  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f398  14 30 81 e5                                      str r3, [r1, #0x14]
0047f39c  20 30 90 e5                                      ldr r3, [r0, #0x20]
0047f3a0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0047f3a4  03 00 52 e1                                      cmp r2, r3
0047f3a8  ef ff ff ca                                      bgt #0x47f36c
0047f3ac  04 00 a0 e1                                      mov r0, r4
0047f3b0  96 f1 ff eb                                      bl #0x47ba10
0047f3b4  04 00 a0 e1                                      mov r0, r4
0047f3b8  00 30 94 e5                                      ldr r3, [r4]
0047f3bc  0f e0 a0 e1                                      mov lr, pc
0047f3c0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f3c4  00 00 a0 e3                                      mov r0, #0
0047f3c8  10 80 bd e8                                      pop {r4, pc}
0047f3cc  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f3d0  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047f3d4  03 00 52 e1                                      cmp r2, r3
0047f3d8  20 30 80 b5                                      strlt r3, [r0, #0x20]
0047f3dc  ef ff ff ba                                      blt #0x47f3a0
0047f3e0  e1 ff ff ea                                      b #0x47f36c
