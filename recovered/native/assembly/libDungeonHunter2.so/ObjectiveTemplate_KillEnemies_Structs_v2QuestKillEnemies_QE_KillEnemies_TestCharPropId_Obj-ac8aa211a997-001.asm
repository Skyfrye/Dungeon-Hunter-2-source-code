; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047d2dc, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZThn24_N29ObjectiveTemplate_KillEnemiesIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047d2dc  18 00 40 e2                                      sub r0, r0, #0x18
0047d2e0  ff ff ff ea                                      b #0x47d2e4

; FUNCTION 0x0047d2e4, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN29ObjectiveTemplate_KillEnemiesIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED1Ev
; demangled: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047d2e4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d2e8  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d2ec  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d2f0  03 30 8f e0                                      add r3, pc, r3
0047d2f4  01 10 93 e7                                      ldr r1, [r3, r1]
0047d2f8  02 20 93 e7                                      ldr r2, [r3, r2]
0047d2fc  10 40 2d e9                                      push {r4, lr}
0047d300  08 10 81 e2                                      add r1, r1, #8
0047d304  08 20 82 e2                                      add r2, r2, #8
0047d308  00 40 a0 e1                                      mov r4, r0
0047d30c  00 10 80 e5                                      str r1, [r0]
0047d310  18 20 80 e5                                      str r2, [r0, #0x18]
0047d314  b2 f3 ff eb                                      bl #0x47a1e4
0047d318  04 00 a0 e1                                      mov r0, r4
0047d31c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d320  a0 77 51 00 90 3a 00 00 40 0b 00 00              .byte 0xa0, 0x77, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047e834, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZThn24_N29ObjectiveTemplate_KillEnemiesIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047e834  18 00 40 e2                                      sub r0, r0, #0x18
0047e838  ff ff ff ea                                      b #0x47e83c

; FUNCTION 0x0047e83c, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN29ObjectiveTemplate_KillEnemiesIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED0Ev
; demangled: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::~ObjectiveTemplate_KillEnemies()
; decoder-mode: arm
0047e83c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047e840  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047e844  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047e848  03 30 8f e0                                      add r3, pc, r3
0047e84c  01 10 93 e7                                      ldr r1, [r3, r1]
0047e850  02 20 93 e7                                      ldr r2, [r3, r2]
0047e854  10 40 2d e9                                      push {r4, lr}
0047e858  08 10 81 e2                                      add r1, r1, #8
0047e85c  08 20 82 e2                                      add r2, r2, #8
0047e860  00 40 a0 e1                                      mov r4, r0
0047e864  00 10 80 e5                                      str r1, [r0]
0047e868  18 20 80 e5                                      str r2, [r0, #0x18]
0047e86c  5c ee ff eb                                      bl #0x47a1e4
0047e870  04 00 a0 e1                                      mov r0, r4
0047e874  f1 46 fa eb                                      bl #0x310440
0047e878  04 00 a0 e1                                      mov r0, r4
0047e87c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047e880  48 62 51 00 90 3a 00 00 40 0b 00 00              .byte 0x48, 0x62, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047ed70, declared_size=168, range_size=168, mode=arm
; class-group: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>
; alias: _ZN29ObjectiveTemplate_KillEnemiesIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE7CompileEv
; demangled: ObjectiveTemplate_KillEnemies<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId, Objective_SavedQty>::Compile()
; decoder-mode: arm
0047ed70  70 40 2d e9                                      push {r4, r5, r6, lr}
0047ed74  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0047ed78  00 40 a0 e1                                      mov r4, r0
0047ed7c  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
0047ed80  24 30 80 e5                                      str r3, [r0, #0x24]
0047ed84  28 20 93 e5                                      ldr r2, [r3, #0x28]
0047ed88  05 50 8f e0                                      add r5, pc, r5
0047ed8c  2c 20 80 e5                                      str r2, [r0, #0x2c]
0047ed90  20 00 93 e5                                      ldr r0, [r3, #0x20]
0047ed94  96 f6 ff eb                                      bl #0x47c7f4
0047ed98  74 30 9f e5                                      ldr r3, [pc, #0x74]
0047ed9c  00 60 a0 e1                                      mov r6, r0
0047eda0  03 00 95 e7                                      ldr r0, [r5, r3]
0047eda4  fa 81 fa eb                                      bl #0x31f594
0047eda8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0047edac  24 30 93 e5                                      ldr r3, [r3, #0x24]
0047edb0  01 00 73 e3                                      cmn r3, #1
0047edb4  05 00 00 0a                                      beq #0x47edd0
0047edb8  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0047edbc  02 00 53 e1                                      cmp r3, r2
0047edc0  02 00 00 0a                                      beq #0x47edd0
0047edc4  00 30 a0 e3                                      mov r3, #0
0047edc8  08 30 c4 e5                                      strb r3, [r4, #8]
0047edcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047edd0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0047edd4  00 00 56 e3                                      cmp r6, #0
0047edd8  00 00 53 c3                                      cmpgt r3, #0
0047eddc  f8 ff ff da                                      ble #0x47edc4
0047ede0  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047ede4  01 10 a0 e3                                      mov r1, #1
0047ede8  08 10 c4 e5                                      strb r1, [r4, #8]
0047edec  03 00 52 e1                                      cmp r2, r3
0047edf0  f5 ff ff ba                                      blt #0x47edcc
0047edf4  04 00 a0 e1                                      mov r0, r4
0047edf8  04 f3 ff eb                                      bl #0x47ba10
0047edfc  04 00 a0 e1                                      mov r0, r4
0047ee00  00 30 94 e5                                      ldr r3, [r4]
0047ee04  0f e0 a0 e1                                      mov lr, pc
0047ee08  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047ee0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0047ee10  08 5d 51 00 f4 37 00 00                          .byte 0x08, 0x5d, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00
