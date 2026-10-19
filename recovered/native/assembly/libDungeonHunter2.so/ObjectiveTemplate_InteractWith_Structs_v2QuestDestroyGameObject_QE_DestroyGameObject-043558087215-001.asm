; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a8a4, declared_size=4, range_size=4, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a8a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047c1cc, declared_size=520, range_size=520, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047c1cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047c1d0  00 70 a0 e1                                      mov r7, r0
0047c1d4  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
0047c1d8  0c d0 4d e2                                      sub sp, sp, #0xc
0047c1dc  01 30 a0 e1                                      mov r3, r1
0047c1e0  01 50 a0 e1                                      mov r5, r1
0047c1e4  1a 20 a0 e3                                      mov r2, #0x1a
0047c1e8  01 10 a0 e3                                      mov r1, #1
0047c1ec  00 00 8f e0                                      add r0, pc, r0
0047c1f0  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
0047c1f4  0c 60 97 e5                                      ldr r6, [r7, #0xc]
0047c1f8  e6 48 fa eb                                      bl #0x30e598
0047c1fc  98 31 9f e5                                      ldr r3, [pc, #0x198]
0047c200  04 40 8f e0                                      add r4, pc, r4
0047c204  94 11 9f e5                                      ldr r1, [pc, #0x194]
0047c208  03 80 94 e7                                      ldr r8, [r4, r3]
0047c20c  04 20 96 e5                                      ldr r2, [r6, #4]
0047c210  01 10 8f e0                                      add r1, pc, r1
0047c214  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0047c218  3a 22 01 eb                                      bl #0x4c4b08
0047c21c  80 11 9f e5                                      ldr r1, [pc, #0x180]
0047c220  00 20 a0 e1                                      mov r2, r0
0047c224  05 00 a0 e1                                      mov r0, r5
0047c228  01 10 8f e0                                      add r1, pc, r1
0047c22c  74 47 fa eb                                      bl #0x30e004
0047c230  04 30 96 e5                                      ldr r3, [r6, #4]
0047c234  05 00 53 e3                                      cmp r3, #5
0047c238  1c 00 00 0a                                      beq #0x47c2b0
0047c23c  64 11 9f e5                                      ldr r1, [pc, #0x164]
0047c240  05 00 a0 e1                                      mov r0, r5
0047c244  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047c248  01 10 8f e0                                      add r1, pc, r1
0047c24c  6c 47 fa eb                                      bl #0x30e004
0047c250  24 30 96 e5                                      ldr r3, [r6, #0x24]
0047c254  00 00 53 e3                                      cmp r3, #0
0047c258  09 00 00 ba                                      blt #0x47c284
0047c25c  48 21 9f e5                                      ldr r2, [pc, #0x148]
0047c260  02 20 94 e7                                      ldr r2, [r4, r2]
0047c264  00 20 92 e5                                      ldr r2, [r2]
0047c268  02 00 53 e1                                      cmp r3, r2
0047c26c  04 00 00 2a                                      bhs #0x47c284
0047c270  38 21 9f e5                                      ldr r2, [pc, #0x138]
0047c274  02 20 94 e7                                      ldr r2, [r4, r2]
0047c278  00 20 92 e5                                      ldr r2, [r2]
0047c27c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047c280  01 00 00 ea                                      b #0x47c28c
0047c284  28 21 9f e5                                      ldr r2, [pc, #0x128]
0047c288  02 20 8f e0                                      add r2, pc, r2
0047c28c  24 11 9f e5                                      ldr r1, [pc, #0x124]
0047c290  05 00 a0 e1                                      mov r0, r5
0047c294  01 10 8f e0                                      add r1, pc, r1
0047c298  59 47 fa eb                                      bl #0x30e004
0047c29c  07 00 a0 e1                                      mov r0, r7
0047c2a0  05 10 a0 e1                                      mov r1, r5
0047c2a4  0c d0 8d e2                                      add sp, sp, #0xc
0047c2a8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047c2ac  00 fa ff ea                                      b #0x47aab4
0047c2b0  38 90 98 e5                                      ldr sb, [r8, #0x38]
0047c2b4  20 b0 96 e5                                      ldr fp, [r6, #0x20]
0047c2b8  60 80 b9 e5                                      ldr r8, [sb, #0x60]!
0047c2bc  08 00 59 e1                                      cmp sb, r8
0047c2c0  07 00 00 0a                                      beq #0x47c2e4
0047c2c4  08 a0 98 e5                                      ldr sl, [r8, #8]
0047c2c8  0a 00 a0 e1                                      mov r0, sl
0047c2cc  99 de fc eb                                      bl #0x3b3d38
0047c2d0  00 00 5b e1                                      cmp fp, r0
0047c2d4  13 00 00 0a                                      beq #0x47c328
0047c2d8  00 80 98 e5                                      ldr r8, [r8]
0047c2dc  08 00 59 e1                                      cmp sb, r8
0047c2e0  f7 ff ff 1a                                      bne #0x47c2c4
0047c2e4  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047c2e8  00 00 53 e3                                      cmp r3, #0
0047c2ec  25 00 00 ba                                      blt #0x47c388
0047c2f0  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0047c2f4  02 20 94 e7                                      ldr r2, [r4, r2]
0047c2f8  00 20 92 e5                                      ldr r2, [r2]
0047c2fc  02 00 53 e1                                      cmp r3, r2
0047c300  20 00 00 2a                                      bhs #0x47c388
0047c304  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0047c308  02 20 94 e7                                      ldr r2, [r4, r2]
0047c30c  00 20 92 e5                                      ldr r2, [r2]
0047c310  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047c314  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0047c318  05 00 a0 e1                                      mov r0, r5
0047c31c  01 10 8f e0                                      add r1, pc, r1
0047c320  37 47 fa eb                                      bl #0x30e004
0047c324  c9 ff ff ea                                      b #0x47c250
0047c328  00 00 5a e3                                      cmp sl, #0
0047c32c  ec ff ff 0a                                      beq #0x47c2e4
0047c330  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047c334  00 00 53 e3                                      cmp r3, #0
0047c338  0f 00 00 ba                                      blt #0x47c37c
0047c33c  78 20 9f e5                                      ldr r2, [pc, #0x78]
0047c340  02 20 94 e7                                      ldr r2, [r4, r2]
0047c344  00 20 92 e5                                      ldr r2, [r2]
0047c348  02 00 53 e1                                      cmp r3, r2
0047c34c  0a 00 00 2a                                      bhs #0x47c37c
0047c350  68 20 9f e5                                      ldr r2, [pc, #0x68]
0047c354  02 20 94 e7                                      ldr r2, [r4, r2]
0047c358  00 20 92 e5                                      ldr r2, [r2]
0047c35c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047c360  60 10 9f e5                                      ldr r1, [pc, #0x60]
0047c364  44 c0 9a e5                                      ldr ip, [sl, #0x44]
0047c368  05 00 a0 e1                                      mov r0, r5
0047c36c  01 10 8f e0                                      add r1, pc, r1
0047c370  00 c0 8d e5                                      str ip, [sp]
0047c374  22 47 fa eb                                      bl #0x30e004
0047c378  b4 ff ff ea                                      b #0x47c250
0047c37c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0047c380  02 20 8f e0                                      add r2, pc, r2
0047c384  f5 ff ff ea                                      b #0x47c360
0047c388  40 20 9f e5                                      ldr r2, [pc, #0x40]
0047c38c  02 20 8f e0                                      add r2, pc, r2
0047c390  df ff ff ea                                      b #0x47c314
; mapping-symbol data/literal pool
0047c394  4c 1c 45 00 90 88 51 00 f4 37 00 00 58 67 44 00  .byte 0x4c, 0x1c, 0x45, 0x00, 0x90, 0x88, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x58, 0x67, 0x44, 0x00
0047c3a4  60 1b 45 00 58 1b 45 00 c0 18 00 00 5c 3b 00 00  .byte 0x60, 0x1b, 0x45, 0x00, 0x58, 0x1b, 0x45, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047c3b4  88 35 44 00 24 1b 45 00 04 42 00 00 08 3c 00 00  .byte 0x88, 0x35, 0x44, 0x00, 0x24, 0x1b, 0x45, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00
0047c3c4  64 1b 45 00 ec 1a 45 00 90 34 44 00 84 34 44 00  .byte 0x64, 0x1b, 0x45, 0x00, 0xec, 0x1a, 0x45, 0x00, 0x90, 0x34, 0x44, 0x00, 0x84, 0x34, 0x44, 0x00

; FUNCTION 0x0047d50c, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d50c  18 00 40 e2                                      sub r0, r0, #0x18
0047d510  ff ff ff ea                                      b #0x47d514

; FUNCTION 0x0047d514, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectED1Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d514  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d518  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d51c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d520  03 30 8f e0                                      add r3, pc, r3
0047d524  01 10 93 e7                                      ldr r1, [r3, r1]
0047d528  02 20 93 e7                                      ldr r2, [r3, r2]
0047d52c  10 40 2d e9                                      push {r4, lr}
0047d530  08 10 81 e2                                      add r1, r1, #8
0047d534  08 20 82 e2                                      add r2, r2, #8
0047d538  00 40 a0 e1                                      mov r4, r0
0047d53c  00 10 80 e5                                      str r1, [r0]
0047d540  18 20 80 e5                                      str r2, [r0, #0x18]
0047d544  26 f3 ff eb                                      bl #0x47a1e4
0047d548  04 00 a0 e1                                      mov r0, r4
0047d54c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d550  70 75 51 00 90 3a 00 00 40 0b 00 00              .byte 0x70, 0x75, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d890, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d890  18 00 40 e2                                      sub r0, r0, #0x18
0047d894  ff ff ff ea                                      b #0x47d898

; FUNCTION 0x0047d898, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectED0Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d898  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047d89c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047d8a0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047d8a4  03 30 8f e0                                      add r3, pc, r3
0047d8a8  01 10 93 e7                                      ldr r1, [r3, r1]
0047d8ac  02 20 93 e7                                      ldr r2, [r3, r2]
0047d8b0  10 40 2d e9                                      push {r4, lr}
0047d8b4  08 10 81 e2                                      add r1, r1, #8
0047d8b8  08 20 82 e2                                      add r2, r2, #8
0047d8bc  00 40 a0 e1                                      mov r4, r0
0047d8c0  00 10 80 e5                                      str r1, [r0]
0047d8c4  18 20 80 e5                                      str r2, [r0, #0x18]
0047d8c8  45 f2 ff eb                                      bl #0x47a1e4
0047d8cc  04 00 a0 e1                                      mov r0, r4
0047d8d0  da 4a fa eb                                      bl #0x310440
0047d8d4  04 00 a0 e1                                      mov r0, r4
0047d8d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d8dc  ec 71 51 00 90 3a 00 00 40 0b 00 00              .byte 0xec, 0x71, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047ecd0, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE7CompileEv
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::Compile()
; decoder-mode: arm
0047ecd0  10 40 2d e9                                      push {r4, lr}
0047ecd4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047ecd8  00 40 a0 e1                                      mov r4, r0
0047ecdc  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047ece0  01 00 73 e3                                      cmn r3, #1
0047ece4  24 30 80 e5                                      str r3, [r0, #0x24]
0047ece8  05 00 00 0a                                      beq #0x47ed04
0047ecec  01 30 a0 e3                                      mov r3, #1
0047ecf0  08 30 c0 e5                                      strb r3, [r0, #8]
0047ecf4  28 30 92 e5                                      ldr r3, [r2, #0x28]
0047ecf8  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047ecfc  03 00 52 e1                                      cmp r2, r3
0047ed00  00 00 00 aa                                      bge #0x47ed08
0047ed04  10 80 bd e8                                      pop {r4, pc}
0047ed08  40 f3 ff eb                                      bl #0x47ba10
0047ed0c  04 00 a0 e1                                      mov r0, r4
0047ed10  00 30 94 e5                                      ldr r3, [r4]
0047ed14  0f e0 a0 e1                                      mov lr, pc
0047ed18  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047ed1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047f3e4, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f3e4  10 40 2d e9                                      push {r4, lr}
0047f3e8  18 30 91 e5                                      ldr r3, [r1, #0x18]
0047f3ec  24 20 90 e5                                      ldr r2, [r0, #0x24]
0047f3f0  00 40 a0 e1                                      mov r4, r0
0047f3f4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0047f3f8  03 00 52 e1                                      cmp r2, r3
0047f3fc  01 00 00 0a                                      beq #0x47f408
0047f400  00 00 a0 e3                                      mov r0, #0
0047f404  10 80 bd e8                                      pop {r4, pc}
0047f408  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f40c  00 00 53 e3                                      cmp r3, #0
0047f410  12 00 00 1a                                      bne #0x47f460
0047f414  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f418  01 30 83 e2                                      add r3, r3, #1
0047f41c  20 30 84 e5                                      str r3, [r4, #0x20]
0047f420  01 30 a0 e3                                      mov r3, #1
0047f424  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f428  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f42c  14 30 81 e5                                      str r3, [r1, #0x14]
0047f430  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f434  28 20 90 e5                                      ldr r2, [r0, #0x28]
0047f438  03 00 52 e1                                      cmp r2, r3
0047f43c  ef ff ff ca                                      bgt #0x47f400
0047f440  04 00 a0 e1                                      mov r0, r4
0047f444  71 f1 ff eb                                      bl #0x47ba10
0047f448  04 00 a0 e1                                      mov r0, r4
0047f44c  00 30 94 e5                                      ldr r3, [r4]
0047f450  0f e0 a0 e1                                      mov lr, pc
0047f454  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f458  00 00 a0 e3                                      mov r0, #0
0047f45c  10 80 bd e8                                      pop {r4, pc}
0047f460  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f464  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047f468  03 00 52 e1                                      cmp r2, r3
0047f46c  20 30 84 b5                                      strlt r3, [r4, #0x20]
0047f470  ef ff ff ba                                      blt #0x47f434
0047f474  e1 ff ff ea                                      b #0x47f400
