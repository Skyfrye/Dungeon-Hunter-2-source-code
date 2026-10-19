; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a8a8, declared_size=4, range_size=4, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a8a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047d55c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d55c  18 00 40 e2                                      sub r0, r0, #0x18
0047d560  ff ff ff ea                                      b #0x47d564

; FUNCTION 0x0047d564, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateED1Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d564  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d568  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d56c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d570  03 30 8f e0                                      add r3, pc, r3
0047d574  01 10 93 e7                                      ldr r1, [r3, r1]
0047d578  02 20 93 e7                                      ldr r2, [r3, r2]
0047d57c  10 40 2d e9                                      push {r4, lr}
0047d580  08 10 81 e2                                      add r1, r1, #8
0047d584  08 20 82 e2                                      add r2, r2, #8
0047d588  00 40 a0 e1                                      mov r4, r0
0047d58c  00 10 80 e5                                      str r1, [r0]
0047d590  18 20 80 e5                                      str r2, [r0, #0x18]
0047d594  12 f3 ff eb                                      bl #0x47a1e4
0047d598  04 00 a0 e1                                      mov r0, r4
0047d59c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d5a0  20 75 51 00 90 3a 00 00 40 0b 00 00              .byte 0x20, 0x75, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047dcac, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047dcac  18 00 40 e2                                      sub r0, r0, #0x18
0047dcb0  ff ff ff ea                                      b #0x47dcb4

; FUNCTION 0x0047dcb4, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateED0Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047dcb4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047dcb8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047dcbc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047dcc0  03 30 8f e0                                      add r3, pc, r3
0047dcc4  01 10 93 e7                                      ldr r1, [r3, r1]
0047dcc8  02 20 93 e7                                      ldr r2, [r3, r2]
0047dccc  10 40 2d e9                                      push {r4, lr}
0047dcd0  08 10 81 e2                                      add r1, r1, #8
0047dcd4  08 20 82 e2                                      add r2, r2, #8
0047dcd8  00 40 a0 e1                                      mov r4, r0
0047dcdc  00 10 80 e5                                      str r1, [r0]
0047dce0  18 20 80 e5                                      str r2, [r0, #0x18]
0047dce4  3e f1 ff eb                                      bl #0x47a1e4
0047dce8  04 00 a0 e1                                      mov r0, r4
0047dcec  d3 49 fa eb                                      bl #0x310440
0047dcf0  04 00 a0 e1                                      mov r0, r4
0047dcf4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047dcf8  d0 6d 51 00 90 3a 00 00 40 0b 00 00              .byte 0xd0, 0x6d, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047e57c, declared_size=520, range_size=520, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047e57c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e580  00 70 a0 e1                                      mov r7, r0
0047e584  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
0047e588  0c d0 4d e2                                      sub sp, sp, #0xc
0047e58c  01 30 a0 e1                                      mov r3, r1
0047e590  01 50 a0 e1                                      mov r5, r1
0047e594  1a 20 a0 e3                                      mov r2, #0x1a
0047e598  01 10 a0 e3                                      mov r1, #1
0047e59c  00 00 8f e0                                      add r0, pc, r0
0047e5a0  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
0047e5a4  0c 60 97 e5                                      ldr r6, [r7, #0xc]
0047e5a8  fa 3f fa eb                                      bl #0x30e598
0047e5ac  98 31 9f e5                                      ldr r3, [pc, #0x198]
0047e5b0  04 40 8f e0                                      add r4, pc, r4
0047e5b4  94 11 9f e5                                      ldr r1, [pc, #0x194]
0047e5b8  03 80 94 e7                                      ldr r8, [r4, r3]
0047e5bc  04 20 96 e5                                      ldr r2, [r6, #4]
0047e5c0  01 10 8f e0                                      add r1, pc, r1
0047e5c4  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0047e5c8  4e 19 01 eb                                      bl #0x4c4b08
0047e5cc  80 11 9f e5                                      ldr r1, [pc, #0x180]
0047e5d0  00 20 a0 e1                                      mov r2, r0
0047e5d4  05 00 a0 e1                                      mov r0, r5
0047e5d8  01 10 8f e0                                      add r1, pc, r1
0047e5dc  88 3e fa eb                                      bl #0x30e004
0047e5e0  04 30 96 e5                                      ldr r3, [r6, #4]
0047e5e4  05 00 53 e3                                      cmp r3, #5
0047e5e8  1c 00 00 0a                                      beq #0x47e660
0047e5ec  64 11 9f e5                                      ldr r1, [pc, #0x164]
0047e5f0  05 00 a0 e1                                      mov r0, r5
0047e5f4  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047e5f8  01 10 8f e0                                      add r1, pc, r1
0047e5fc  80 3e fa eb                                      bl #0x30e004
0047e600  24 30 96 e5                                      ldr r3, [r6, #0x24]
0047e604  00 00 53 e3                                      cmp r3, #0
0047e608  09 00 00 ba                                      blt #0x47e634
0047e60c  48 21 9f e5                                      ldr r2, [pc, #0x148]
0047e610  02 20 94 e7                                      ldr r2, [r4, r2]
0047e614  00 20 92 e5                                      ldr r2, [r2]
0047e618  02 00 53 e1                                      cmp r3, r2
0047e61c  04 00 00 2a                                      bhs #0x47e634
0047e620  38 21 9f e5                                      ldr r2, [pc, #0x138]
0047e624  02 20 94 e7                                      ldr r2, [r4, r2]
0047e628  00 20 92 e5                                      ldr r2, [r2]
0047e62c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e630  01 00 00 ea                                      b #0x47e63c
0047e634  28 21 9f e5                                      ldr r2, [pc, #0x128]
0047e638  02 20 8f e0                                      add r2, pc, r2
0047e63c  24 11 9f e5                                      ldr r1, [pc, #0x124]
0047e640  05 00 a0 e1                                      mov r0, r5
0047e644  01 10 8f e0                                      add r1, pc, r1
0047e648  6d 3e fa eb                                      bl #0x30e004
0047e64c  07 00 a0 e1                                      mov r0, r7
0047e650  05 10 a0 e1                                      mov r1, r5
0047e654  0c d0 8d e2                                      add sp, sp, #0xc
0047e658  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e65c  14 f1 ff ea                                      b #0x47aab4
0047e660  38 90 98 e5                                      ldr sb, [r8, #0x38]
0047e664  20 b0 96 e5                                      ldr fp, [r6, #0x20]
0047e668  60 80 b9 e5                                      ldr r8, [sb, #0x60]!
0047e66c  08 00 59 e1                                      cmp sb, r8
0047e670  07 00 00 0a                                      beq #0x47e694
0047e674  08 a0 98 e5                                      ldr sl, [r8, #8]
0047e678  0a 00 a0 e1                                      mov r0, sl
0047e67c  ad d5 fc eb                                      bl #0x3b3d38
0047e680  00 00 5b e1                                      cmp fp, r0
0047e684  13 00 00 0a                                      beq #0x47e6d8
0047e688  00 80 98 e5                                      ldr r8, [r8]
0047e68c  08 00 59 e1                                      cmp sb, r8
0047e690  f7 ff ff 1a                                      bne #0x47e674
0047e694  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e698  00 00 53 e3                                      cmp r3, #0
0047e69c  25 00 00 ba                                      blt #0x47e738
0047e6a0  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0047e6a4  02 20 94 e7                                      ldr r2, [r4, r2]
0047e6a8  00 20 92 e5                                      ldr r2, [r2]
0047e6ac  02 00 53 e1                                      cmp r3, r2
0047e6b0  20 00 00 2a                                      bhs #0x47e738
0047e6b4  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0047e6b8  02 20 94 e7                                      ldr r2, [r4, r2]
0047e6bc  00 20 92 e5                                      ldr r2, [r2]
0047e6c0  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e6c4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0047e6c8  05 00 a0 e1                                      mov r0, r5
0047e6cc  01 10 8f e0                                      add r1, pc, r1
0047e6d0  4b 3e fa eb                                      bl #0x30e004
0047e6d4  c9 ff ff ea                                      b #0x47e600
0047e6d8  00 00 5a e3                                      cmp sl, #0
0047e6dc  ec ff ff 0a                                      beq #0x47e694
0047e6e0  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e6e4  00 00 53 e3                                      cmp r3, #0
0047e6e8  0f 00 00 ba                                      blt #0x47e72c
0047e6ec  78 20 9f e5                                      ldr r2, [pc, #0x78]
0047e6f0  02 20 94 e7                                      ldr r2, [r4, r2]
0047e6f4  00 20 92 e5                                      ldr r2, [r2]
0047e6f8  02 00 53 e1                                      cmp r3, r2
0047e6fc  0a 00 00 2a                                      bhs #0x47e72c
0047e700  68 20 9f e5                                      ldr r2, [pc, #0x68]
0047e704  02 20 94 e7                                      ldr r2, [r4, r2]
0047e708  00 20 92 e5                                      ldr r2, [r2]
0047e70c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e710  60 10 9f e5                                      ldr r1, [pc, #0x60]
0047e714  44 c0 9a e5                                      ldr ip, [sl, #0x44]
0047e718  05 00 a0 e1                                      mov r0, r5
0047e71c  01 10 8f e0                                      add r1, pc, r1
0047e720  00 c0 8d e5                                      str ip, [sp]
0047e724  36 3e fa eb                                      bl #0x30e004
0047e728  b4 ff ff ea                                      b #0x47e600
0047e72c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0047e730  02 20 8f e0                                      add r2, pc, r2
0047e734  f5 ff ff ea                                      b #0x47e710
0047e738  40 20 9f e5                                      ldr r2, [pc, #0x40]
0047e73c  02 20 8f e0                                      add r2, pc, r2
0047e740  df ff ff ea                                      b #0x47e6c4
; mapping-symbol data/literal pool
0047e744  9c f8 44 00 e0 64 51 00 f4 37 00 00 a8 43 44 00  .byte 0x9c, 0xf8, 0x44, 0x00, 0xe0, 0x64, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa8, 0x43, 0x44, 0x00
0047e754  b0 f7 44 00 a8 f7 44 00 c0 18 00 00 5c 3b 00 00  .byte 0xb0, 0xf7, 0x44, 0x00, 0xa8, 0xf7, 0x44, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047e764  d8 11 44 00 74 f7 44 00 04 42 00 00 08 3c 00 00  .byte 0xd8, 0x11, 0x44, 0x00, 0x74, 0xf7, 0x44, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00
0047e774  b4 f7 44 00 3c f7 44 00 e0 10 44 00 d4 10 44 00  .byte 0xb4, 0xf7, 0x44, 0x00, 0x3c, 0xf7, 0x44, 0x00, 0xe0, 0x10, 0x44, 0x00, 0xd4, 0x10, 0x44, 0x00

; FUNCTION 0x0047ed20, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE7CompileEv
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::Compile()
; decoder-mode: arm
0047ed20  10 40 2d e9                                      push {r4, lr}
0047ed24  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047ed28  00 40 a0 e1                                      mov r4, r0
0047ed2c  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047ed30  01 00 73 e3                                      cmn r3, #1
0047ed34  24 30 80 e5                                      str r3, [r0, #0x24]
0047ed38  05 00 00 0a                                      beq #0x47ed54
0047ed3c  01 30 a0 e3                                      mov r3, #1
0047ed40  08 30 c0 e5                                      strb r3, [r0, #8]
0047ed44  28 30 92 e5                                      ldr r3, [r2, #0x28]
0047ed48  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047ed4c  03 00 52 e1                                      cmp r2, r3
0047ed50  00 00 00 aa                                      bge #0x47ed58
0047ed54  10 80 bd e8                                      pop {r4, pc}
0047ed58  2c f3 ff eb                                      bl #0x47ba10
0047ed5c  04 00 a0 e1                                      mov r0, r4
0047ed60  00 30 94 e5                                      ldr r3, [r4]
0047ed64  0f e0 a0 e1                                      mov lr, pc
0047ed68  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047ed6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047f194, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f194  10 40 2d e9                                      push {r4, lr}
0047f198  18 30 91 e5                                      ldr r3, [r1, #0x18]
0047f19c  24 20 90 e5                                      ldr r2, [r0, #0x24]
0047f1a0  00 40 a0 e1                                      mov r4, r0
0047f1a4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0047f1a8  03 00 52 e1                                      cmp r2, r3
0047f1ac  01 00 00 0a                                      beq #0x47f1b8
0047f1b0  00 00 a0 e3                                      mov r0, #0
0047f1b4  10 80 bd e8                                      pop {r4, pc}
0047f1b8  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f1bc  00 00 53 e3                                      cmp r3, #0
0047f1c0  12 00 00 1a                                      bne #0x47f210
0047f1c4  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f1c8  01 30 83 e2                                      add r3, r3, #1
0047f1cc  20 30 84 e5                                      str r3, [r4, #0x20]
0047f1d0  01 30 a0 e3                                      mov r3, #1
0047f1d4  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f1d8  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f1dc  14 30 81 e5                                      str r3, [r1, #0x14]
0047f1e0  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f1e4  28 20 90 e5                                      ldr r2, [r0, #0x28]
0047f1e8  03 00 52 e1                                      cmp r2, r3
0047f1ec  ef ff ff ca                                      bgt #0x47f1b0
0047f1f0  04 00 a0 e1                                      mov r0, r4
0047f1f4  05 f2 ff eb                                      bl #0x47ba10
0047f1f8  04 00 a0 e1                                      mov r0, r4
0047f1fc  00 30 94 e5                                      ldr r3, [r4]
0047f200  0f e0 a0 e1                                      mov lr, pc
0047f204  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f208  00 00 a0 e3                                      mov r0, #0
0047f20c  10 80 bd e8                                      pop {r4, pc}
0047f210  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f214  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047f218  03 00 52 e1                                      cmp r2, r3
0047f21c  20 30 84 b5                                      strlt r3, [r4, #0x20]
0047f220  ef ff ff ba                                      blt #0x47f1e4
0047f224  e1 ff ff ea                                      b #0x47f1b0
