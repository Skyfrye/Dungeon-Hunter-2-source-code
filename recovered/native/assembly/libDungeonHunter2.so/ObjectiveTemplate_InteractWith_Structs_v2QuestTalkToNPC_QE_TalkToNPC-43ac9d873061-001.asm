; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a8ac, declared_size=4, range_size=4, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE12GetPositionsER13Vector3DFList
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a8ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047d4bc, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCED1Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d4bc  18 00 40 e2                                      sub r0, r0, #0x18
0047d4c0  ff ff ff ea                                      b #0x47d4c4

; FUNCTION 0x0047d4c4, declared_size=72, range_size=72, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCED1Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047d4c4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d4c8  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d4cc  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d4d0  03 30 8f e0                                      add r3, pc, r3
0047d4d4  01 10 93 e7                                      ldr r1, [r3, r1]
0047d4d8  02 20 93 e7                                      ldr r2, [r3, r2]
0047d4dc  10 40 2d e9                                      push {r4, lr}
0047d4e0  08 10 81 e2                                      add r1, r1, #8
0047d4e4  08 20 82 e2                                      add r2, r2, #8
0047d4e8  00 40 a0 e1                                      mov r4, r0
0047d4ec  00 10 80 e5                                      str r1, [r0]
0047d4f0  18 20 80 e5                                      str r2, [r0, #0x18]
0047d4f4  3a f3 ff eb                                      bl #0x47a1e4
0047d4f8  04 00 a0 e1                                      mov r0, r4
0047d4fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d500  c0 75 51 00 90 3a 00 00 40 0b 00 00              .byte 0xc0, 0x75, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047dd04, declared_size=8, range_size=8, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZThn24_N30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCED0Ev
; demangled: non-virtual thunk to ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047dd04  18 00 40 e2                                      sub r0, r0, #0x18
0047dd08  ff ff ff ea                                      b #0x47dd0c

; FUNCTION 0x0047dd0c, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCED0Ev
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::~ObjectiveTemplate_InteractWith()
; decoder-mode: arm
0047dd0c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047dd10  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047dd14  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047dd18  03 30 8f e0                                      add r3, pc, r3
0047dd1c  01 10 93 e7                                      ldr r1, [r3, r1]
0047dd20  02 20 93 e7                                      ldr r2, [r3, r2]
0047dd24  10 40 2d e9                                      push {r4, lr}
0047dd28  08 10 81 e2                                      add r1, r1, #8
0047dd2c  08 20 82 e2                                      add r2, r2, #8
0047dd30  00 40 a0 e1                                      mov r4, r0
0047dd34  00 10 80 e5                                      str r1, [r0]
0047dd38  18 20 80 e5                                      str r2, [r0, #0x18]
0047dd3c  28 f1 ff eb                                      bl #0x47a1e4
0047dd40  04 00 a0 e1                                      mov r0, r4
0047dd44  bd 49 fa eb                                      bl #0x310440
0047dd48  04 00 a0 e1                                      mov r0, r4
0047dd4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047dd50  78 6d 51 00 90 3a 00 00 40 0b 00 00              .byte 0x78, 0x6d, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047e374, declared_size=520, range_size=520, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047e374  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e378  00 70 a0 e1                                      mov r7, r0
0047e37c  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
0047e380  0c d0 4d e2                                      sub sp, sp, #0xc
0047e384  01 30 a0 e1                                      mov r3, r1
0047e388  01 50 a0 e1                                      mov r5, r1
0047e38c  1a 20 a0 e3                                      mov r2, #0x1a
0047e390  01 10 a0 e3                                      mov r1, #1
0047e394  00 00 8f e0                                      add r0, pc, r0
0047e398  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
0047e39c  0c 60 97 e5                                      ldr r6, [r7, #0xc]
0047e3a0  7c 40 fa eb                                      bl #0x30e598
0047e3a4  98 31 9f e5                                      ldr r3, [pc, #0x198]
0047e3a8  04 40 8f e0                                      add r4, pc, r4
0047e3ac  94 11 9f e5                                      ldr r1, [pc, #0x194]
0047e3b0  03 80 94 e7                                      ldr r8, [r4, r3]
0047e3b4  04 20 96 e5                                      ldr r2, [r6, #4]
0047e3b8  01 10 8f e0                                      add r1, pc, r1
0047e3bc  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
0047e3c0  d0 19 01 eb                                      bl #0x4c4b08
0047e3c4  80 11 9f e5                                      ldr r1, [pc, #0x180]
0047e3c8  00 20 a0 e1                                      mov r2, r0
0047e3cc  05 00 a0 e1                                      mov r0, r5
0047e3d0  01 10 8f e0                                      add r1, pc, r1
0047e3d4  0a 3f fa eb                                      bl #0x30e004
0047e3d8  04 30 96 e5                                      ldr r3, [r6, #4]
0047e3dc  05 00 53 e3                                      cmp r3, #5
0047e3e0  1c 00 00 0a                                      beq #0x47e458
0047e3e4  64 11 9f e5                                      ldr r1, [pc, #0x164]
0047e3e8  05 00 a0 e1                                      mov r0, r5
0047e3ec  20 20 96 e5                                      ldr r2, [r6, #0x20]
0047e3f0  01 10 8f e0                                      add r1, pc, r1
0047e3f4  02 3f fa eb                                      bl #0x30e004
0047e3f8  24 30 96 e5                                      ldr r3, [r6, #0x24]
0047e3fc  00 00 53 e3                                      cmp r3, #0
0047e400  09 00 00 ba                                      blt #0x47e42c
0047e404  48 21 9f e5                                      ldr r2, [pc, #0x148]
0047e408  02 20 94 e7                                      ldr r2, [r4, r2]
0047e40c  00 20 92 e5                                      ldr r2, [r2]
0047e410  02 00 53 e1                                      cmp r3, r2
0047e414  04 00 00 2a                                      bhs #0x47e42c
0047e418  38 21 9f e5                                      ldr r2, [pc, #0x138]
0047e41c  02 20 94 e7                                      ldr r2, [r4, r2]
0047e420  00 20 92 e5                                      ldr r2, [r2]
0047e424  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e428  01 00 00 ea                                      b #0x47e434
0047e42c  28 21 9f e5                                      ldr r2, [pc, #0x128]
0047e430  02 20 8f e0                                      add r2, pc, r2
0047e434  24 11 9f e5                                      ldr r1, [pc, #0x124]
0047e438  05 00 a0 e1                                      mov r0, r5
0047e43c  01 10 8f e0                                      add r1, pc, r1
0047e440  ef 3e fa eb                                      bl #0x30e004
0047e444  07 00 a0 e1                                      mov r0, r7
0047e448  05 10 a0 e1                                      mov r1, r5
0047e44c  0c d0 8d e2                                      add sp, sp, #0xc
0047e450  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e454  96 f1 ff ea                                      b #0x47aab4
0047e458  38 90 98 e5                                      ldr sb, [r8, #0x38]
0047e45c  20 b0 96 e5                                      ldr fp, [r6, #0x20]
0047e460  60 80 b9 e5                                      ldr r8, [sb, #0x60]!
0047e464  08 00 59 e1                                      cmp sb, r8
0047e468  07 00 00 0a                                      beq #0x47e48c
0047e46c  08 a0 98 e5                                      ldr sl, [r8, #8]
0047e470  0a 00 a0 e1                                      mov r0, sl
0047e474  2f d6 fc eb                                      bl #0x3b3d38
0047e478  00 00 5b e1                                      cmp fp, r0
0047e47c  13 00 00 0a                                      beq #0x47e4d0
0047e480  00 80 98 e5                                      ldr r8, [r8]
0047e484  08 00 59 e1                                      cmp sb, r8
0047e488  f7 ff ff 1a                                      bne #0x47e46c
0047e48c  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e490  00 00 53 e3                                      cmp r3, #0
0047e494  25 00 00 ba                                      blt #0x47e530
0047e498  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0047e49c  02 20 94 e7                                      ldr r2, [r4, r2]
0047e4a0  00 20 92 e5                                      ldr r2, [r2]
0047e4a4  02 00 53 e1                                      cmp r3, r2
0047e4a8  20 00 00 2a                                      bhs #0x47e530
0047e4ac  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0047e4b0  02 20 94 e7                                      ldr r2, [r4, r2]
0047e4b4  00 20 92 e5                                      ldr r2, [r2]
0047e4b8  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e4bc  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0047e4c0  05 00 a0 e1                                      mov r0, r5
0047e4c4  01 10 8f e0                                      add r1, pc, r1
0047e4c8  cd 3e fa eb                                      bl #0x30e004
0047e4cc  c9 ff ff ea                                      b #0x47e3f8
0047e4d0  00 00 5a e3                                      cmp sl, #0
0047e4d4  ec ff ff 0a                                      beq #0x47e48c
0047e4d8  20 30 96 e5                                      ldr r3, [r6, #0x20]
0047e4dc  00 00 53 e3                                      cmp r3, #0
0047e4e0  0f 00 00 ba                                      blt #0x47e524
0047e4e4  78 20 9f e5                                      ldr r2, [pc, #0x78]
0047e4e8  02 20 94 e7                                      ldr r2, [r4, r2]
0047e4ec  00 20 92 e5                                      ldr r2, [r2]
0047e4f0  02 00 53 e1                                      cmp r3, r2
0047e4f4  0a 00 00 2a                                      bhs #0x47e524
0047e4f8  68 20 9f e5                                      ldr r2, [pc, #0x68]
0047e4fc  02 20 94 e7                                      ldr r2, [r4, r2]
0047e500  00 20 92 e5                                      ldr r2, [r2]
0047e504  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047e508  60 10 9f e5                                      ldr r1, [pc, #0x60]
0047e50c  44 c0 9a e5                                      ldr ip, [sl, #0x44]
0047e510  05 00 a0 e1                                      mov r0, r5
0047e514  01 10 8f e0                                      add r1, pc, r1
0047e518  00 c0 8d e5                                      str ip, [sp]
0047e51c  b8 3e fa eb                                      bl #0x30e004
0047e520  b4 ff ff ea                                      b #0x47e3f8
0047e524  48 20 9f e5                                      ldr r2, [pc, #0x48]
0047e528  02 20 8f e0                                      add r2, pc, r2
0047e52c  f5 ff ff ea                                      b #0x47e508
0047e530  40 20 9f e5                                      ldr r2, [pc, #0x40]
0047e534  02 20 8f e0                                      add r2, pc, r2
0047e538  df ff ff ea                                      b #0x47e4bc
; mapping-symbol data/literal pool
0047e53c  a4 fa 44 00 e8 66 51 00 f4 37 00 00 b0 45 44 00  .byte 0xa4, 0xfa, 0x44, 0x00, 0xe8, 0x66, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb0, 0x45, 0x44, 0x00
0047e54c  b8 f9 44 00 b0 f9 44 00 c0 18 00 00 5c 3b 00 00  .byte 0xb8, 0xf9, 0x44, 0x00, 0xb0, 0xf9, 0x44, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0047e55c  e0 13 44 00 7c f9 44 00 04 42 00 00 08 3c 00 00  .byte 0xe0, 0x13, 0x44, 0x00, 0x7c, 0xf9, 0x44, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00
0047e56c  bc f9 44 00 44 f9 44 00 e8 12 44 00 dc 12 44 00  .byte 0xbc, 0xf9, 0x44, 0x00, 0x44, 0xf9, 0x44, 0x00, 0xe8, 0x12, 0x44, 0x00, 0xdc, 0x12, 0x44, 0x00

; FUNCTION 0x0047ec80, declared_size=80, range_size=80, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE7CompileEv
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::Compile()
; decoder-mode: arm
0047ec80  10 40 2d e9                                      push {r4, lr}
0047ec84  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047ec88  00 40 a0 e1                                      mov r4, r0
0047ec8c  20 30 92 e5                                      ldr r3, [r2, #0x20]
0047ec90  01 00 73 e3                                      cmn r3, #1
0047ec94  24 30 80 e5                                      str r3, [r0, #0x24]
0047ec98  05 00 00 0a                                      beq #0x47ecb4
0047ec9c  01 30 a0 e3                                      mov r3, #1
0047eca0  08 30 c0 e5                                      strb r3, [r0, #8]
0047eca4  28 30 92 e5                                      ldr r3, [r2, #0x28]
0047eca8  20 20 90 e5                                      ldr r2, [r0, #0x20]
0047ecac  03 00 52 e1                                      cmp r2, r3
0047ecb0  00 00 00 aa                                      bge #0x47ecb8
0047ecb4  10 80 bd e8                                      pop {r4, pc}
0047ecb8  54 f3 ff eb                                      bl #0x47ba10
0047ecbc  04 00 a0 e1                                      mov r0, r4
0047ecc0  00 30 94 e5                                      ldr r3, [r4]
0047ecc4  0f e0 a0 e1                                      mov lr, pc
0047ecc8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047eccc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047f50c, declared_size=148, range_size=148, mode=arm
; class-group: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>
; alias: _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE11handleEventEPK6IEventPK12EventManager
; demangled: ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::handleEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
0047f50c  10 40 2d e9                                      push {r4, lr}
0047f510  18 30 91 e5                                      ldr r3, [r1, #0x18]
0047f514  24 20 90 e5                                      ldr r2, [r0, #0x24]
0047f518  00 40 a0 e1                                      mov r4, r0
0047f51c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0047f520  03 00 52 e1                                      cmp r2, r3
0047f524  01 00 00 0a                                      beq #0x47f530
0047f528  00 00 a0 e3                                      mov r0, #0
0047f52c  10 80 bd e8                                      pop {r4, pc}
0047f530  11 30 d1 e5                                      ldrb r3, [r1, #0x11]
0047f534  00 00 53 e3                                      cmp r3, #0
0047f538  12 00 00 1a                                      bne #0x47f588
0047f53c  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f540  01 30 83 e2                                      add r3, r3, #1
0047f544  20 30 84 e5                                      str r3, [r4, #0x20]
0047f548  01 30 a0 e3                                      mov r3, #1
0047f54c  10 30 c1 e5                                      strb r3, [r1, #0x10]
0047f550  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f554  14 30 81 e5                                      str r3, [r1, #0x14]
0047f558  20 30 94 e5                                      ldr r3, [r4, #0x20]
0047f55c  28 20 90 e5                                      ldr r2, [r0, #0x28]
0047f560  03 00 52 e1                                      cmp r2, r3
0047f564  ef ff ff ca                                      bgt #0x47f528
0047f568  04 00 a0 e1                                      mov r0, r4
0047f56c  27 f1 ff eb                                      bl #0x47ba10
0047f570  04 00 a0 e1                                      mov r0, r4
0047f574  00 30 94 e5                                      ldr r3, [r4]
0047f578  0f e0 a0 e1                                      mov lr, pc
0047f57c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0047f580  00 00 a0 e3                                      mov r0, #0
0047f584  10 80 bd e8                                      pop {r4, pc}
0047f588  14 30 91 e5                                      ldr r3, [r1, #0x14]
0047f58c  20 20 94 e5                                      ldr r2, [r4, #0x20]
0047f590  03 00 52 e1                                      cmp r2, r3
0047f594  20 30 84 b5                                      strlt r3, [r4, #0x20]
0047f598  ef ff ff ba                                      blt #0x47f55c
0047f59c  e1 ff ff ea                                      b #0x47f528
