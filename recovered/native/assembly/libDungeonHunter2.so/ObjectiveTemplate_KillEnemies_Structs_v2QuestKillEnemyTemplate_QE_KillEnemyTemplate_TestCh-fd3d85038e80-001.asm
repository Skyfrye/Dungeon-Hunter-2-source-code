; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047d1ec, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZThn24_N29ObjectiveTemplate_KillEnemiesIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047d1ec  18 00 40 e2                                      sub r0, r0, #0x18
0047d1f0  ff ff ff ea                                      b #0x47d1f4

; FUNCTION 0x0047d1f4, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN29ObjectiveTemplate_KillEnemiesIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
; demangled: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047d1f4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d1f8  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d1fc  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d200  03 30 8f e0                                      add r3, pc, r3
0047d204  01 10 93 e7                                      ldr r1, [r3, r1]
0047d208  02 20 93 e7                                      ldr r2, [r3, r2]
0047d20c  10 40 2d e9                                      push {r4, lr}
0047d210  08 10 81 e2                                      add r1, r1, #8
0047d214  08 20 82 e2                                      add r2, r2, #8
0047d218  00 40 a0 e1                                      mov r4, r0
0047d21c  00 10 80 e5                                      str r1, [r0]
0047d220  18 20 80 e5                                      str r2, [r0, #0x18]
0047d224  ee f3 ff eb                                      bl #0x47a1e4
0047d228  04 00 a0 e1                                      mov r0, r4
0047d22c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d230  90 78 51 00 90 3a 00 00 40 0b 00 00              .byte 0x90, 0x78, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047e88c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZThn24_N29ObjectiveTemplate_KillEnemiesIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047e88c  18 00 40 e2                                      sub r0, r0, #0x18
0047e890  ff ff ff ea                                      b #0x47e894

; FUNCTION 0x0047e894, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN29ObjectiveTemplate_KillEnemiesIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED0Ev
; demangled: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047e894  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047e898  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047e89c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047e8a0  03 30 8f e0                                      add r3, pc, r3
0047e8a4  01 10 93 e7                                      ldr r1, [r3, r1]
0047e8a8  02 20 93 e7                                      ldr r2, [r3, r2]
0047e8ac  10 40 2d e9                                      push {r4, lr}
0047e8b0  08 10 81 e2                                      add r1, r1, #8
0047e8b4  08 20 82 e2                                      add r2, r2, #8
0047e8b8  00 40 a0 e1                                      mov r4, r0
0047e8bc  00 10 80 e5                                      str r1, [r0]
0047e8c0  18 20 80 e5                                      str r2, [r0, #0x18]
0047e8c4  46 ee ff eb                                      bl #0x47a1e4
0047e8c8  04 00 a0 e1                                      mov r0, r4
0047e8cc  db 46 fa eb                                      bl #0x310440
0047e8d0  04 00 a0 e1                                      mov r0, r4
0047e8d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047e8d8  f0 61 51 00 90 3a 00 00 40 0b 00 00              .byte 0xf0, 0x61, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047ee18, declared_size=168, range_size=168, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>
; alias: _ZN29ObjectiveTemplate_KillEnemiesIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE7CompileEv
; demangled: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate, Objective_SavedQty>::Compile()
; decoder-mode: arm
0047ee18  70 40 2d e9                                      push {r4, r5, r6, lr}
0047ee1c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0047ee20  00 40 a0 e1                                      mov r4, r0
0047ee24  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
0047ee28  24 30 80 e5                                      str r3, [r0, #0x24]
0047ee2c  28 20 93 e5                                      ldr r2, [r3, #0x28]
0047ee30  05 50 8f e0                                      add r5, pc, r5
0047ee34  2c 20 80 e5                                      str r2, [r0, #0x2c]
0047ee38  20 00 93 e5                                      ldr r0, [r3, #0x20]
0047ee3c  77 f7 ff eb                                      bl #0x47cc20
0047ee40  74 30 9f e5                                      ldr r3, [pc, #0x74]
0047ee44  00 60 a0 e1                                      mov r6, r0
0047ee48  03 00 95 e7                                      ldr r0, [r5, r3]
0047ee4c  d0 81 fa eb                                      bl #0x31f594
0047ee50  24 30 94 e5                                      ldr r3, [r4, #0x24]
0047ee54  24 30 93 e5                                      ldr r3, [r3, #0x24]
0047ee58  01 00 73 e3                                      cmn r3, #1
0047ee5c  05 00 00 0a                                      beq #0x47ee78
0047ee60  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0047ee64  02 00 53 e1                                      cmp r3, r2
0047ee68  02 00 00 0a                                      beq #0x47ee78
0047ee6c  00 30 a0 e3                                      mov r3, #0
0047ee70  08 30 c4 e5                                      strb r3, [r4, #8]
0047ee74  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047ee78  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0047ee7c  00 00 56 e3                                      cmp r6, #0
0047ee80  00 00 53 c3                                      cmpgt r3, #0
0047ee84  f8 ff ff da                                      ble #0x47ee6c
0047ee88  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047ee8c  01 10 a0 e3                                      mov r1, #1
0047ee90  08 10 c4 e5                                      strb r1, [r4, #8]
0047ee94  03 00 52 e1                                      cmp r2, r3
0047ee98  f5 ff ff ba                                      blt #0x47ee74
0047ee9c  04 00 a0 e1                                      mov r0, r4
0047eea0  da f2 ff eb                                      bl #0x47ba10
0047eea4  04 00 a0 e1                                      mov r0, r4
0047eea8  00 30 94 e5                                      ldr r3, [r4]
0047eeac  0f e0 a0 e1                                      mov lr, pc
0047eeb0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047eeb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0047eeb8  60 5c 51 00 f4 37 00 00                          .byte 0x60, 0x5c, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00
