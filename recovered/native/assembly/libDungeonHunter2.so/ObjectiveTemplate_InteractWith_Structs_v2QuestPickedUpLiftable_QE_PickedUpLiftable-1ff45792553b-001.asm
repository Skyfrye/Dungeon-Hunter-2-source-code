; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a898, declared_size=4, range_size=4, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a898  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047d37c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d37c  18 00 40 e2                                      sub r0, r0, #0x18
0047d380  ff ff ff ea                                      b #0x47d384

; FUNCTION 0x0047d384, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableED1Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d384  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d388  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d38c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d390  03 30 8f e0                                      add r3, pc, r3
0047d394  01 10 93 e7                                      ldr r1, [r3, r1]
0047d398  02 20 93 e7                                      ldr r2, [r3, r2]
0047d39c  10 40 2d e9                                      push {r4, lr}
0047d3a0  08 10 81 e2                                      add r1, r1, #8
0047d3a4  08 20 82 e2                                      add r2, r2, #8
0047d3a8  00 40 a0 e1                                      mov r4, r0
0047d3ac  00 10 80 e5                                      str r1, [r0]
0047d3b0  18 20 80 e5                                      str r2, [r0, #0x18]
0047d3b4  8a f3 ff eb                                      bl #0x47a1e4
0047d3b8  04 00 a0 e1                                      mov r0, r4
0047d3bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d3c0  00 77 51 00 90 3a 00 00 40 0b 00 00              .byte 0x00, 0x77, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d730, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d730  18 00 40 e2                                      sub r0, r0, #0x18
0047d734  ff ff ff ea                                      b #0x47d738

; FUNCTION 0x0047d738, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableED0Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d738  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047d73c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047d740  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047d744  03 30 8f e0                                      add r3, pc, r3
0047d748  01 10 93 e7                                      ldr r1, [r3, r1]
0047d74c  02 20 93 e7                                      ldr r2, [r3, r2]
0047d750  10 40 2d e9                                      push {r4, lr}
0047d754  08 10 81 e2                                      add r1, r1, #8
0047d758  08 20 82 e2                                      add r2, r2, #8
0047d75c  00 40 a0 e1                                      mov r4, r0
0047d760  00 10 80 e5                                      str r1, [r0]
0047d764  18 20 80 e5                                      str r2, [r0, #0x18]
0047d768  9d f2 ff eb                                      bl #0x47a1e4
0047d76c  04 00 a0 e1                                      mov r0, r4
0047d770  32 4b fa eb                                      bl #0x310440
0047d774  04 00 a0 e1                                      mov r0, r4
0047d778  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d77c  4c 73 51 00 90 3a 00 00 40 0b 00 00              .byte 0x4c, 0x73, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047df64, declared_size=520, range_size=520, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047df64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047df68  00 70 a0 e1                                      mov r7, r0
0047df6c  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
0047df70  0c d0 4d e2                                      sub sp, sp, #0xc
0047df74  01 30 a0 e1                                      mov r3, r1
0047df78  01 50 a0 e1                                      mov r5, r1
0047df7c  1a 20 a0 e3                                      mov r2, #0x1a
0047df80  01 10 a0 e3                                      mov r1, #1
0047df84  00 00 8f e0                                      add r0, pc, r0
0047df88  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
0047df8c  0c 60 97 e5                                      ldr r6, [r7, #0xc]
0047df90  80 41 fa eb                                      bl #0x30e598
0047df94  98 31 9f e5                                      ldr r3, [pc, #0x198]
0047df98  04 40 8f e0                                      add r4, pc, r4
0047df9c  94 11 9f e5                                      ldr r1, [pc, #0x194]
0047dfa0  03 80 94 e7                                      ldr r8, [r4, r3]
0047dfa4  04 20 96 e5                                      ldr r2, [r6, #4]
0047dfa8  01 10 8f e0                                      add r1, pc, r1
0047dfac  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0047dfb0  d4 1a 01 eb                                      bl #0x4c4b08
0047dfb4  80 11 9f e5                                      ldr r1, [pc, #0x180]
0047dfb8  00 20 a0 e1                                      mov r2, r0
0047dfbc  05 00 a0 e1                                      mov r0, r5
0047dfc0  01 10 8f e0                                      add r1, pc, r1
0047dfc4  0e 40 fa eb                                      bl #0x30e004
0047dfc8  04 30 96 e5                                      ldr r3, [r6, #4]
0047dfcc  05 00 53 e3                                      cmp r3, #5
0047dfd0  1c 00 00 0a                                      beq #0x47e048
0047dfd4  64 11 9f e5                                      ldr r1, [pc, #0x164]
0047dfd8  05 00 a0 e1                                      mov r0, r5
0047dfdc  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047dfe0  01 10 8f e0                                      add r1, pc, r1
0047dfe4  06 40 fa eb                                      bl #0x30e004
0047dfe8  24 30 96 e5                                      ldr r3, [r6, #0x24]
0047dfec  00 00 53 e3                                      cmp r3, #0
0047dff0  09 00 00 ba                                      blt #0x47e01c
0047dff4  48 21 9f e5                                      ldr r2, [pc, #0x148]
0047dff8  02 20 94 e7                                      ldr r2, [r4, r2]
0047dffc  00 20 92 e5                                      ldr r2, [r2]
0047e000  02 00 53 e1                                      cmp r3, r2
0047e004  04 00 00 2a                                      bhs #0x47e01c
0047e008  38 21 9f e5                                      ldr r2, [pc, #0x138]
0047e00c  02 20 94 e7                                      ldr r2, [r4, r2]
0047e010  00 20 92 e5                                      ldr r2, [r2]
0047e014  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e018  01 00 00 ea                                      b #0x47e024
0047e01c  28 21 9f e5                                      ldr r2, [pc, #0x128]
0047e020  02 20 8f e0                                      add r2, pc, r2
0047e024  24 11 9f e5                                      ldr r1, [pc, #0x124]
0047e028  05 00 a0 e1                                      mov r0, r5
0047e02c  01 10 8f e0                                      add r1, pc, r1
0047e030  f3 3f fa eb                                      bl #0x30e004
0047e034  07 00 a0 e1                                      mov r0, r7
0047e038  05 10 a0 e1                                      mov r1, r5
0047e03c  0c d0 8d e2                                      add sp, sp, #0xc
0047e040  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e044  9a f2 ff ea                                      b #0x47aab4
0047e048  38 90 98 e5                                      ldr sb, [r8, #0x38]
0047e04c  20 b0 96 e5                                      ldr fp, [r6, #0x20]
0047e050  60 80 b9 e5                                      ldr r8, [sb, #0x60]!
0047e054  08 00 59 e1                                      cmp sb, r8
0047e058  07 00 00 0a                                      beq #0x47e07c
0047e05c  08 a0 98 e5                                      ldr sl, [r8, #8]
0047e060  0a 00 a0 e1                                      mov r0, sl
0047e064  33 d7 fc eb                                      bl #0x3b3d38
0047e068  00 00 5b e1                                      cmp fp, r0
0047e06c  13 00 00 0a                                      beq #0x47e0c0
0047e070  00 80 98 e5                                      ldr r8, [r8]
0047e074  08 00 59 e1                                      cmp sb, r8
0047e078  f7 ff ff 1a                                      bne #0x47e05c
0047e07c  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e080  00 00 53 e3                                      cmp r3, #0
0047e084  25 00 00 ba                                      blt #0x47e120
0047e088  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0047e08c  02 20 94 e7                                      ldr r2, [r4, r2]
0047e090  00 20 92 e5                                      ldr r2, [r2]
0047e094  02 00 53 e1                                      cmp r3, r2
0047e098  20 00 00 2a                                      bhs #0x47e120
0047e09c  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0047e0a0  02 20 94 e7                                      ldr r2, [r4, r2]
0047e0a4  00 20 92 e5                                      ldr r2, [r2]
0047e0a8  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e0ac  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0047e0b0  05 00 a0 e1                                      mov r0, r5
0047e0b4  01 10 8f e0                                      add r1, pc, r1
0047e0b8  d1 3f fa eb                                      bl #0x30e004
0047e0bc  c9 ff ff ea                                      b #0x47dfe8
0047e0c0  00 00 5a e3                                      cmp sl, #0
0047e0c4  ec ff ff 0a                                      beq #0x47e07c
0047e0c8  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e0cc  00 00 53 e3                                      cmp r3, #0
0047e0d0  0f 00 00 ba                                      blt #0x47e114
0047e0d4  78 20 9f e5                                      ldr r2, [pc, #0x78]
0047e0d8  02 20 94 e7                                      ldr r2, [r4, r2]
0047e0dc  00 20 92 e5                                      ldr r2, [r2]
0047e0e0  02 00 53 e1                                      cmp r3, r2
0047e0e4  0a 00 00 2a                                      bhs #0x47e114
0047e0e8  68 20 9f e5                                      ldr r2, [pc, #0x68]
0047e0ec  02 20 94 e7                                      ldr r2, [r4, r2]
0047e0f0  00 20 92 e5                                      ldr r2, [r2]
0047e0f4  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e0f8  60 10 9f e5                                      ldr r1, [pc, #0x60]
0047e0fc  44 c0 9a e5                                      ldr ip, [sl, #0x44]
0047e100  05 00 a0 e1                                      mov r0, r5
0047e104  01 10 8f e0                                      add r1, pc, r1
0047e108  00 c0 8d e5                                      str ip, [sp]
0047e10c  bc 3f fa eb                                      bl #0x30e004
0047e110  b4 ff ff ea                                      b #0x47dfe8
0047e114  48 20 9f e5                                      ldr r2, [pc, #0x48]
0047e118  02 20 8f e0                                      add r2, pc, r2
0047e11c  f5 ff ff ea                                      b #0x47e0f8
0047e120  40 20 9f e5                                      ldr r2, [pc, #0x40]
0047e124  02 20 8f e0                                      add r2, pc, r2
0047e128  df ff ff ea                                      b #0x47e0ac
; mapping-symbol data/literal pool
0047e12c  b4 fe 44 00 f8 6a 51 00 f4 37 00 00 c0 49 44 00  .byte 0xb4, 0xfe, 0x44, 0x00, 0xf8, 0x6a, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x49, 0x44, 0x00
0047e13c  c8 fd 44 00 c0 fd 44 00 c0 18 00 00 5c 3b 00 00  .byte 0xc8, 0xfd, 0x44, 0x00, 0xc0, 0xfd, 0x44, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047e14c  f0 17 44 00 8c fd 44 00 04 42 00 00 08 3c 00 00  .byte 0xf0, 0x17, 0x44, 0x00, 0x8c, 0xfd, 0x44, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00
0047e15c  cc fd 44 00 54 fd 44 00 f8 16 44 00 ec 16 44 00  .byte 0xcc, 0xfd, 0x44, 0x00, 0x54, 0xfd, 0x44, 0x00, 0xf8, 0x16, 0x44, 0x00, 0xec, 0x16, 0x44, 0x00

; FUNCTION 0x0047eb90, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE7CompileEv
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::Compile()
; decoder-mode: arm
0047eb90  10 40 2d e9                                      push {r4, lr}
0047eb94  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047eb98  00 40 a0 e1                                      mov r4, r0
0047eb9c  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047eba0  01 00 73 e3                                      cmn r3, #1
0047eba4  24 30 80 e5                                      str r3, [r0, #0x24]
0047eba8  05 00 00 0a                                      beq #0x47ebc4
0047ebac  01 30 a0 e3                                      mov r3, #1
0047ebb0  08 30 c0 e5                                      strb r3, [r0, #8]
0047ebb4  28 30 92 e5                                      ldr r3, [r2, #0x28]
0047ebb8  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047ebbc  03 00 52 e1                                      cmp r2, r3
0047ebc0  00 00 00 aa                                      bge #0x47ebc8
0047ebc4  10 80 bd e8                                      pop {r4, pc}
0047ebc8  90 f3 ff eb                                      bl #0x47ba10
0047ebcc  04 00 a0 e1                                      mov r0, r4
0047ebd0  00 30 94 e5                                      ldr r3, [r4]
0047ebd4  0f e0 a0 e1                                      mov lr, pc
0047ebd8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047ebdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047f5a0, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f5a0  10 40 2d e9                                      push {r4, lr}
0047f5a4  18 30 91 e5                                      ldr r3, [r1, #0x18]
0047f5a8  24 20 90 e5                                      ldr r2, [r0, #0x24]
0047f5ac  00 40 a0 e1                                      mov r4, r0
0047f5b0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0047f5b4  03 00 52 e1                                      cmp r2, r3
0047f5b8  01 00 00 0a                                      beq #0x47f5c4
0047f5bc  00 00 a0 e3                                      mov r0, #0
0047f5c0  10 80 bd e8                                      pop {r4, pc}
0047f5c4  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f5c8  00 00 53 e3                                      cmp r3, #0
0047f5cc  12 00 00 1a                                      bne #0x47f61c
0047f5d0  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f5d4  01 30 83 e2                                      add r3, r3, #1
0047f5d8  20 30 84 e5                                      str r3, [r4, #0x20]
0047f5dc  01 30 a0 e3                                      mov r3, #1
0047f5e0  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f5e4  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f5e8  14 30 81 e5                                      str r3, [r1, #0x14]
0047f5ec  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f5f0  28 20 90 e5                                      ldr r2, [r0, #0x28]
0047f5f4  03 00 52 e1                                      cmp r2, r3
0047f5f8  ef ff ff ca                                      bgt #0x47f5bc
0047f5fc  04 00 a0 e1                                      mov r0, r4
0047f600  02 f1 ff eb                                      bl #0x47ba10
0047f604  04 00 a0 e1                                      mov r0, r4
0047f608  00 30 94 e5                                      ldr r3, [r4]
0047f60c  0f e0 a0 e1                                      mov lr, pc
0047f610  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f614  00 00 a0 e3                                      mov r0, #0
0047f618  10 80 bd e8                                      pop {r4, pc}
0047f61c  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f620  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047f624  03 00 52 e1                                      cmp r2, r3
0047f628  20 30 84 b5                                      strlt r3, [r4, #0x20]
0047f62c  ef ff ff ba                                      blt #0x47f5f0
0047f630  e1 ff ff ea                                      b #0x47f5bc
