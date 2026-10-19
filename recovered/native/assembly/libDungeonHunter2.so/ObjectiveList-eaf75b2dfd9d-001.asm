; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a3c0, declared_size=20, range_size=20, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveListC2Ev
; demangled: ObjectiveList::ObjectiveList()
; decoder-mode: arm
0047a3c0  00 20 a0 e3                                      mov r2, #0
0047a3c4  08 20 80 e5                                      str r2, [r0, #8]
0047a3c8  00 20 80 e5                                      str r2, [r0]
0047a3cc  04 20 80 e5                                      str r2, [r0, #4]
0047a3d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a3d4, declared_size=20, range_size=20, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveListC1Ev
; demangled: ObjectiveList::ObjectiveList()
; decoder-mode: arm
0047a3d4  00 20 a0 e3                                      mov r2, #0
0047a3d8  08 20 80 e5                                      str r2, [r0, #8]
0047a3dc  00 20 80 e5                                      str r2, [r0]
0047a3e0  04 20 80 e5                                      str r2, [r0, #4]
0047a3e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a3e8, declared_size=44, range_size=44, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList25CreateObjectiveWithPyDataEPN7Structs20v2QuestObjectiveStubE
; demangled: ObjectiveList::CreateObjectiveWithPyData(Structs::v2QuestObjectiveStub*)
; decoder-mode: arm
0047a3e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0047a3ec  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0047a3f0  04 40 90 e5                                      ldr r4, [r0, #4]
0047a3f4  00 50 a0 e1                                      mov r5, r0
0047a3f8  03 30 8f e0                                      add r3, pc, r3
0047a3fc  0f e0 a0 e1                                      mov lr, pc
0047a400  04 f1 93 e7                                      ldr pc, [r3, r4, lsl #2]
0047a404  0c 50 80 e5                                      str r5, [r0, #0xc]
0047a408  04 40 80 e5                                      str r4, [r0, #4]
0047a40c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0047a410  08 f5 4e 00                                      .byte 0x08, 0xf5, 0x4e, 0x00

; FUNCTION 0x0047a414, declared_size=48, range_size=48, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList8SetOwnerEP9Character
; demangled: ObjectiveList::SetOwner(Character*)
; decoder-mode: arm
0047a414  00 30 90 e5                                      ldr r3, [r0]
0047a418  00 00 53 e3                                      cmp r3, #0
0047a41c  1e ff 2f d1                                      bxle lr
0047a420  00 30 a0 e3                                      mov r3, #0
0047a424  04 20 90 e5                                      ldr r2, [r0, #4]
0047a428  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
0047a42c  01 30 83 e2                                      add r3, r3, #1
0047a430  10 10 82 e5                                      str r1, [r2, #0x10]
0047a434  00 20 90 e5                                      ldr r2, [r0]
0047a438  03 00 52 e1                                      cmp r2, r3
0047a43c  f8 ff ff ca                                      bgt #0x47a424
0047a440  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a444, declared_size=84, range_size=84, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList4EvalEv
; demangled: ObjectiveList::Eval()
; decoder-mode: arm
0047a444  00 10 90 e5                                      ldr r1, [r0]
0047a448  00 00 51 e3                                      cmp r1, #0
0047a44c  0d 00 00 da                                      ble #0x47a488
0047a450  04 00 90 e5                                      ldr r0, [r0, #4]
0047a454  00 30 90 e5                                      ldr r3, [r0]
0047a458  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
0047a45c  00 00 53 e3                                      cmp r3, #0
0047a460  00 30 a0 13                                      movne r3, #0
0047a464  04 00 00 1a                                      bne #0x47a47c
0047a468  08 00 00 ea                                      b #0x47a490
0047a46c  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0047a470  14 20 d2 e5                                      ldrb r2, [r2, #0x14]
0047a474  00 00 52 e3                                      cmp r2, #0
0047a478  04 00 00 0a                                      beq #0x47a490
0047a47c  01 30 83 e2                                      add r3, r3, #1
0047a480  01 00 53 e1                                      cmp r3, r1
0047a484  f8 ff ff 1a                                      bne #0x47a46c
0047a488  01 00 a0 e3                                      mov r0, #1
0047a48c  1e ff 2f e1                                      bx lr
0047a490  00 00 a0 e3                                      mov r0, #0
0047a494  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a498, declared_size=84, range_size=84, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList7IsValidEv
; demangled: ObjectiveList::IsValid()
; decoder-mode: arm
0047a498  00 10 90 e5                                      ldr r1, [r0]
0047a49c  00 00 51 e3                                      cmp r1, #0
0047a4a0  0d 00 00 da                                      ble #0x47a4dc
0047a4a4  04 00 90 e5                                      ldr r0, [r0, #4]
0047a4a8  00 30 90 e5                                      ldr r3, [r0]
0047a4ac  08 30 d3 e5                                      ldrb r3, [r3, #8]
0047a4b0  00 00 53 e3                                      cmp r3, #0
0047a4b4  00 30 a0 13                                      movne r3, #0
0047a4b8  04 00 00 1a                                      bne #0x47a4d0
0047a4bc  08 00 00 ea                                      b #0x47a4e4
0047a4c0  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0047a4c4  08 20 d2 e5                                      ldrb r2, [r2, #8]
0047a4c8  00 00 52 e3                                      cmp r2, #0
0047a4cc  04 00 00 0a                                      beq #0x47a4e4
0047a4d0  01 30 83 e2                                      add r3, r3, #1
0047a4d4  01 00 53 e1                                      cmp r3, r1
0047a4d8  f8 ff ff 1a                                      bne #0x47a4c0
0047a4dc  01 00 a0 e3                                      mov r0, #1
0047a4e0  1e ff 2f e1                                      bx lr
0047a4e4  00 00 a0 e3                                      mov r0, #0
0047a4e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a4ec, declared_size=84, range_size=84, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList23InstallObjectiveMarkersEii
; demangled: ObjectiveList::InstallObjectiveMarkers(int, int)
; decoder-mode: arm
0047a4ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047a4f0  00 30 90 e5                                      ldr r3, [r0]
0047a4f4  00 50 a0 e1                                      mov r5, r0
0047a4f8  01 60 a0 e1                                      mov r6, r1
0047a4fc  00 00 53 e3                                      cmp r3, #0
0047a500  02 70 a0 e1                                      mov r7, r2
0047a504  0c 00 00 da                                      ble #0x47a53c
0047a508  00 40 a0 e3                                      mov r4, #0
0047a50c  04 30 95 e5                                      ldr r3, [r5, #4]
0047a510  06 10 a0 e1                                      mov r1, r6
0047a514  07 20 a0 e1                                      mov r2, r7
0047a518  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0047a51c  01 40 84 e2                                      add r4, r4, #1
0047a520  03 00 a0 e1                                      mov r0, r3
0047a524  00 30 93 e5                                      ldr r3, [r3]
0047a528  0f e0 a0 e1                                      mov lr, pc
0047a52c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0047a530  00 30 95 e5                                      ldr r3, [r5]
0047a534  04 00 53 e1                                      cmp r3, r4
0047a538  f3 ff ff ca                                      bgt #0x47a50c
0047a53c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047a540, declared_size=104, range_size=104, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList9LoopOnAllEM9ObjectiveFvvE
; demangled: ObjectiveList::LoopOnAll(void (Objective::*)())
; decoder-mode: arm
0047a540  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047a544  00 30 90 e5                                      ldr r3, [r0]
0047a548  08 d0 4d e2                                      sub sp, sp, #8
0047a54c  00 40 a0 e1                                      mov r4, r0
0047a550  00 00 53 e3                                      cmp r3, #0
0047a554  06 00 8d e8                                      stm sp, {r1, r2}
0047a558  01 60 a0 e1                                      mov r6, r1
0047a55c  0f 00 00 da                                      ble #0x47a5a0
0047a560  c2 70 a0 e1                                      asr r7, r2, #1
0047a564  01 80 02 e2                                      and r8, r2, #1
0047a568  00 50 a0 e3                                      mov r5, #0
0047a56c  04 20 94 e5                                      ldr r2, [r4, #4]
0047a570  00 00 58 e3                                      cmp r8, #0
0047a574  06 30 a0 e1                                      mov r3, r6
0047a578  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0047a57c  01 50 85 e2                                      add r5, r5, #1
0047a580  07 30 90 17                                      ldrne r3, [r0, r7]
0047a584  07 00 80 00                                      addeq r0, r0, r7
0047a588  07 00 80 10                                      addne r0, r0, r7
0047a58c  06 30 93 17                                      ldrne r3, [r3, r6]
0047a590  33 ff 2f e1                                      blx r3
0047a594  00 30 94 e5                                      ldr r3, [r4]
0047a598  05 00 53 e1                                      cmp r3, r5
0047a59c  f2 ff ff ca                                      bgt #0x47a56c
0047a5a0  08 d0 8d e2                                      add sp, sp, #8
0047a5a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047a5a8, declared_size=36, range_size=36, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList10_resetDataEv
; demangled: ObjectiveList::_resetData()
; decoder-mode: arm
0047a5a8  30 c0 a0 e3                                      mov ip, #0x30
0047a5ac  01 30 a0 e3                                      mov r3, #1
0047a5b0  08 d0 4d e2                                      sub sp, sp, #8
0047a5b4  0c 10 a0 e1                                      mov r1, ip
0047a5b8  03 20 a0 e1                                      mov r2, r3
0047a5bc  00 c0 8d e5                                      str ip, [sp]
0047a5c0  04 30 8d e5                                      str r3, [sp, #4]
0047a5c4  08 d0 8d e2                                      add sp, sp, #8
0047a5c8  dc ff ff ea                                      b #0x47a540

; FUNCTION 0x0047a5cc, declared_size=36, range_size=36, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList22RemoveObjectiveMarkersEv
; demangled: ObjectiveList::RemoveObjectiveMarkers()
; decoder-mode: arm
0047a5cc  14 c0 a0 e3                                      mov ip, #0x14
0047a5d0  01 30 a0 e3                                      mov r3, #1
0047a5d4  08 d0 4d e2                                      sub sp, sp, #8
0047a5d8  0c 10 a0 e1                                      mov r1, ip
0047a5dc  03 20 a0 e1                                      mov r2, r3
0047a5e0  00 c0 8d e5                                      str ip, [sp]
0047a5e4  04 30 8d e5                                      str r3, [sp, #4]
0047a5e8  08 d0 8d e2                                      add sp, sp, #8
0047a5ec  d3 ff ff ea                                      b #0x47a540

; FUNCTION 0x0047a5f0, declared_size=36, range_size=36, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList10UnregisterEv
; demangled: ObjectiveList::Unregister()
; decoder-mode: arm
0047a5f0  1c c0 a0 e3                                      mov ip, #0x1c
0047a5f4  01 30 a0 e3                                      mov r3, #1
0047a5f8  08 d0 4d e2                                      sub sp, sp, #8
0047a5fc  0c 10 a0 e1                                      mov r1, ip
0047a600  03 20 a0 e1                                      mov r2, r3
0047a604  00 c0 8d e5                                      str ip, [sp]
0047a608  04 30 8d e5                                      str r3, [sp, #4]
0047a60c  08 d0 8d e2                                      add sp, sp, #8
0047a610  ca ff ff ea                                      b #0x47a540

; FUNCTION 0x0047a614, declared_size=36, range_size=36, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList8RegisterEv
; demangled: ObjectiveList::Register()
; decoder-mode: arm
0047a614  18 c0 a0 e3                                      mov ip, #0x18
0047a618  01 30 a0 e3                                      mov r3, #1
0047a61c  08 d0 4d e2                                      sub sp, sp, #8
0047a620  0c 10 a0 e1                                      mov r1, ip
0047a624  03 20 a0 e1                                      mov r2, r3
0047a628  00 c0 8d e5                                      str ip, [sp]
0047a62c  04 30 8d e5                                      str r3, [sp, #4]
0047a630  08 d0 8d e2                                      add sp, sp, #8
0047a634  c1 ff ff ea                                      b #0x47a540

; FUNCTION 0x0047a638, declared_size=52, range_size=52, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList17InvalidateCompileEv
; demangled: ObjectiveList::InvalidateCompile()
; decoder-mode: arm
0047a638  24 10 9f e5                                      ldr r1, [pc, #0x24]
0047a63c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0047a640  00 c0 a0 e3                                      mov ip, #0
0047a644  01 10 8f e0                                      add r1, pc, r1
0047a648  03 30 91 e7                                      ldr r3, [r1, r3]
0047a64c  08 d0 4d e2                                      sub sp, sp, #8
0047a650  0c 20 a0 e1                                      mov r2, ip
0047a654  03 10 a0 e1                                      mov r1, r3
0047a658  08 10 8d e8                                      stm sp, {r3, ip}
0047a65c  08 d0 8d e2                                      add sp, sp, #8
0047a660  b6 ff ff ea                                      b #0x47a540
; mapping-symbol data/literal pool
0047a664  4c a4 51 00 54 0f 00 00                          .byte 0x4c, 0xa4, 0x51, 0x00, 0x54, 0x0f, 0x00, 0x00

; FUNCTION 0x0047a66c, declared_size=36, range_size=36, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList7CompileEv
; demangled: ObjectiveList::Compile()
; decoder-mode: arm
0047a66c  08 c0 a0 e3                                      mov ip, #8
0047a670  01 30 a0 e3                                      mov r3, #1
0047a674  08 d0 4d e2                                      sub sp, sp, #8
0047a678  0c 10 a0 e1                                      mov r1, ip
0047a67c  03 20 a0 e1                                      mov r2, r3
0047a680  00 c0 8d e5                                      str ip, [sp]
0047a684  04 30 8d e5                                      str r3, [sp, #4]
0047a688  08 d0 8d e2                                      add sp, sp, #8
0047a68c  ab ff ff ea                                      b #0x47a540

; FUNCTION 0x0047a690, declared_size=104, range_size=104, mode=arm
; class-group: ObjectiveList
; alias: _ZNK13ObjectiveList9LoopOnAllEM9ObjectiveKFvvE
; demangled: ObjectiveList::LoopOnAll(void (Objective::*)() const) const
; decoder-mode: arm
0047a690  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047a694  00 30 90 e5                                      ldr r3, [r0]
0047a698  08 d0 4d e2                                      sub sp, sp, #8
0047a69c  00 40 a0 e1                                      mov r4, r0
0047a6a0  00 00 53 e3                                      cmp r3, #0
0047a6a4  06 00 8d e8                                      stm sp, {r1, r2}
0047a6a8  01 60 a0 e1                                      mov r6, r1
0047a6ac  0f 00 00 da                                      ble #0x47a6f0
0047a6b0  c2 70 a0 e1                                      asr r7, r2, #1
0047a6b4  01 80 02 e2                                      and r8, r2, #1
0047a6b8  00 50 a0 e3                                      mov r5, #0
0047a6bc  04 20 94 e5                                      ldr r2, [r4, #4]
0047a6c0  00 00 58 e3                                      cmp r8, #0
0047a6c4  06 30 a0 e1                                      mov r3, r6
0047a6c8  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0047a6cc  01 50 85 e2                                      add r5, r5, #1
0047a6d0  07 30 90 17                                      ldrne r3, [r0, r7]
0047a6d4  07 00 80 00                                      addeq r0, r0, r7
0047a6d8  07 00 80 10                                      addne r0, r0, r7
0047a6dc  06 30 93 17                                      ldrne r3, [r3, r6]
0047a6e0  33 ff 2f e1                                      blx r3
0047a6e4  00 30 94 e5                                      ldr r3, [r4]
0047a6e8  05 00 53 e1                                      cmp r3, r5
0047a6ec  f2 ff ff ca                                      bgt #0x47a6bc
0047a6f0  08 d0 8d e2                                      add sp, sp, #8
0047a6f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047a6f8, declared_size=116, range_size=116, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList9LoopOnAllEM9ObjectiveFvP11IStreamBaseES2_
; demangled: ObjectiveList::LoopOnAll(void (Objective::*)(IStreamBase*), IStreamBase*)
; decoder-mode: arm
0047a6f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0047a6fc  00 40 a0 e1                                      mov r4, r0
0047a700  00 00 90 e5                                      ldr r0, [r0]
0047a704  0c d0 4d e2                                      sub sp, sp, #0xc
0047a708  00 10 8d e5                                      str r1, [sp]
0047a70c  00 00 50 e3                                      cmp r0, #0
0047a710  04 20 8d e5                                      str r2, [sp, #4]
0047a714  03 50 a0 e1                                      mov r5, r3
0047a718  01 70 a0 e1                                      mov r7, r1
0047a71c  10 00 00 da                                      ble #0x47a764
0047a720  c2 80 a0 e1                                      asr r8, r2, #1
0047a724  01 a0 02 e2                                      and sl, r2, #1
0047a728  00 60 a0 e3                                      mov r6, #0
0047a72c  04 20 94 e5                                      ldr r2, [r4, #4]
0047a730  00 00 5a e3                                      cmp sl, #0
0047a734  07 30 a0 e1                                      mov r3, r7
0047a738  06 01 92 e7                                      ldr r0, [r2, r6, lsl #2]
0047a73c  05 10 a0 e1                                      mov r1, r5
0047a740  01 60 86 e2                                      add r6, r6, #1
0047a744  08 30 90 17                                      ldrne r3, [r0, r8]
0047a748  08 00 80 00                                      addeq r0, r0, r8
0047a74c  08 00 80 10                                      addne r0, r0, r8
0047a750  07 30 93 17                                      ldrne r3, [r3, r7]
0047a754  33 ff 2f e1                                      blx r3
0047a758  00 30 94 e5                                      ldr r3, [r4]
0047a75c  06 00 53 e1                                      cmp r3, r6
0047a760  f1 ff ff ca                                      bgt #0x47a72c
0047a764  0c d0 8d e2                                      add sp, sp, #0xc
0047a768  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0047a76c, declared_size=44, range_size=44, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList9_saveDataEP11IStreamBase
; demangled: ObjectiveList::_saveData(IStreamBase*)
; decoder-mode: arm
0047a76c  04 40 2d e5                                      str r4, [sp, #-4]!
0047a770  01 c0 a0 e3                                      mov ip, #1
0047a774  2c 40 a0 e3                                      mov r4, #0x2c
0047a778  0c d0 4d e2                                      sub sp, sp, #0xc
0047a77c  01 30 a0 e1                                      mov r3, r1
0047a780  0c 20 a0 e1                                      mov r2, ip
0047a784  04 10 a0 e1                                      mov r1, r4
0047a788  10 10 8d e8                                      stm sp, {r4, ip}
0047a78c  0c d0 8d e2                                      add sp, sp, #0xc
0047a790  10 00 bd e8                                      ldm sp!, {r4}
0047a794  d7 ff ff ea                                      b #0x47a6f8

; FUNCTION 0x0047a798, declared_size=44, range_size=44, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList9_loadDataEP11IStreamBase
; demangled: ObjectiveList::_loadData(IStreamBase*)
; decoder-mode: arm
0047a798  04 40 2d e5                                      str r4, [sp, #-4]!
0047a79c  01 c0 a0 e3                                      mov ip, #1
0047a7a0  28 40 a0 e3                                      mov r4, #0x28
0047a7a4  0c d0 4d e2                                      sub sp, sp, #0xc
0047a7a8  01 30 a0 e1                                      mov r3, r1
0047a7ac  0c 20 a0 e1                                      mov r2, ip
0047a7b0  04 10 a0 e1                                      mov r1, r4
0047a7b4  10 10 8d e8                                      stm sp, {r4, ip}
0047a7b8  0c d0 8d e2                                      add sp, sp, #0xc
0047a7bc  10 00 bd e8                                      ldm sp!, {r4}
0047a7c0  cc ff ff ea                                      b #0x47a6f8

; FUNCTION 0x0047a7c4, declared_size=116, range_size=116, mode=arm
; class-group: ObjectiveList
; alias: _ZNK13ObjectiveList9LoopOnAllEM9ObjectiveKFvP7__sFILEES2_
; demangled: ObjectiveList::LoopOnAll(void (Objective::*)(__sFILE*) const, __sFILE*) const
; decoder-mode: arm
0047a7c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0047a7c8  00 40 a0 e1                                      mov r4, r0
0047a7cc  00 00 90 e5                                      ldr r0, [r0]
0047a7d0  0c d0 4d e2                                      sub sp, sp, #0xc
0047a7d4  00 10 8d e5                                      str r1, [sp]
0047a7d8  00 00 50 e3                                      cmp r0, #0
0047a7dc  04 20 8d e5                                      str r2, [sp, #4]
0047a7e0  03 50 a0 e1                                      mov r5, r3
0047a7e4  01 70 a0 e1                                      mov r7, r1
0047a7e8  10 00 00 da                                      ble #0x47a830
0047a7ec  c2 80 a0 e1                                      asr r8, r2, #1
0047a7f0  01 a0 02 e2                                      and sl, r2, #1
0047a7f4  00 60 a0 e3                                      mov r6, #0
0047a7f8  04 20 94 e5                                      ldr r2, [r4, #4]
0047a7fc  00 00 5a e3                                      cmp sl, #0
0047a800  07 30 a0 e1                                      mov r3, r7
0047a804  06 01 92 e7                                      ldr r0, [r2, r6, lsl #2]
0047a808  05 10 a0 e1                                      mov r1, r5
0047a80c  01 60 86 e2                                      add r6, r6, #1
0047a810  08 30 90 17                                      ldrne r3, [r0, r8]
0047a814  08 00 80 00                                      addeq r0, r0, r8
0047a818  08 00 80 10                                      addne r0, r0, r8
0047a81c  07 30 93 17                                      ldrne r3, [r3, r7]
0047a820  33 ff 2f e1                                      blx r3
0047a824  00 30 94 e5                                      ldr r3, [r4]
0047a828  06 00 53 e1                                      cmp r3, r6
0047a82c  f1 ff ff ca                                      bgt #0x47a7f8
0047a830  0c d0 8d e2                                      add sp, sp, #0xc
0047a834  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0047a838, declared_size=44, range_size=44, mode=arm
; class-group: ObjectiveList
; alias: _ZNK13ObjectiveList41DBG_TraceDetailedObjectiveListInformationEP7__sFILE
; demangled: ObjectiveList::DBG_TraceDetailedObjectiveListInformation(__sFILE*) const
; decoder-mode: arm
0047a838  04 40 2d e5                                      str r4, [sp, #-4]!
0047a83c  01 c0 a0 e3                                      mov ip, #1
0047a840  0c 40 a0 e3                                      mov r4, #0xc
0047a844  0c d0 4d e2                                      sub sp, sp, #0xc
0047a848  01 30 a0 e1                                      mov r3, r1
0047a84c  0c 20 a0 e1                                      mov r2, ip
0047a850  04 10 a0 e1                                      mov r1, r4
0047a854  10 10 8d e8                                      stm sp, {r4, ip}
0047a858  0c d0 8d e2                                      add sp, sp, #0xc
0047a85c  10 00 bd e8                                      ldm sp!, {r4}
0047a860  d7 ff ff ea                                      b #0x47a7c4

; FUNCTION 0x0047a8cc, declared_size=116, range_size=116, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveListD1Ev
; demangled: ObjectiveList::~ObjectiveList()
; decoder-mode: arm
0047a8cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047a8d0  00 20 90 e5                                      ldr r2, [r0]
0047a8d4  00 60 a0 e1                                      mov r6, r0
0047a8d8  00 00 52 e3                                      cmp r2, #0
0047a8dc  04 50 90 d5                                      ldrle r5, [r0, #4]
0047a8e0  0e 00 00 da                                      ble #0x47a920
0047a8e4  04 50 90 e5                                      ldr r5, [r0, #4]
0047a8e8  00 40 a0 e3                                      mov r4, #0
0047a8ec  04 70 a0 e1                                      mov r7, r4
0047a8f0  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
0047a8f4  00 00 53 e3                                      cmp r3, #0
0047a8f8  05 00 00 0a                                      beq #0x47a914
0047a8fc  03 00 a0 e1                                      mov r0, r3
0047a900  00 30 93 e5                                      ldr r3, [r3]
0047a904  0f e0 a0 e1                                      mov lr, pc
0047a908  04 f0 93 e5                                      ldr pc, [r3, #4]
0047a90c  04 71 85 e7                                      str r7, [r5, r4, lsl #2]
0047a910  24 00 96 e8                                      ldm r6, {r2, r5}
0047a914  01 40 84 e2                                      add r4, r4, #1
0047a918  04 00 52 e1                                      cmp r2, r4
0047a91c  f3 ff ff ca                                      bgt #0x47a8f0
0047a920  00 00 55 e3                                      cmp r5, #0
0047a924  03 00 00 0a                                      beq #0x47a938
0047a928  05 00 a0 e1                                      mov r0, r5
0047a92c  c3 56 fa eb                                      bl #0x310440
0047a930  00 30 a0 e3                                      mov r3, #0
0047a934  04 30 86 e5                                      str r3, [r6, #4]
0047a938  06 00 a0 e1                                      mov r0, r6
0047a93c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047a940, declared_size=116, range_size=116, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveListD2Ev
; demangled: ObjectiveList::~ObjectiveList()
; decoder-mode: arm
0047a940  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047a944  00 20 90 e5                                      ldr r2, [r0]
0047a948  00 60 a0 e1                                      mov r6, r0
0047a94c  00 00 52 e3                                      cmp r2, #0
0047a950  04 50 90 d5                                      ldrle r5, [r0, #4]
0047a954  0e 00 00 da                                      ble #0x47a994
0047a958  04 50 90 e5                                      ldr r5, [r0, #4]
0047a95c  00 40 a0 e3                                      mov r4, #0
0047a960  04 70 a0 e1                                      mov r7, r4
0047a964  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
0047a968  00 00 53 e3                                      cmp r3, #0
0047a96c  05 00 00 0a                                      beq #0x47a988
0047a970  03 00 a0 e1                                      mov r0, r3
0047a974  00 30 93 e5                                      ldr r3, [r3]
0047a978  0f e0 a0 e1                                      mov lr, pc
0047a97c  04 f0 93 e5                                      ldr pc, [r3, #4]
0047a980  04 71 85 e7                                      str r7, [r5, r4, lsl #2]
0047a984  24 00 96 e8                                      ldm r6, {r2, r5}
0047a988  01 40 84 e2                                      add r4, r4, #1
0047a98c  04 00 52 e1                                      cmp r2, r4
0047a990  f3 ff ff ca                                      bgt #0x47a964
0047a994  00 00 55 e3                                      cmp r5, #0
0047a998  03 00 00 0a                                      beq #0x47a9ac
0047a99c  05 00 a0 e1                                      mov r0, r5
0047a9a0  a6 56 fa eb                                      bl #0x310440
0047a9a4  00 30 a0 e3                                      mov r3, #0
0047a9a8  04 30 86 e5                                      str r3, [r6, #4]
0047a9ac  06 00 a0 e1                                      mov r0, r6
0047a9b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047aa48, declared_size=108, range_size=108, mode=arm
; class-group: ObjectiveList
; alias: _ZN13ObjectiveList12AssignPyDataEPN7Structs20v2QuestObjectiveStubEi
; demangled: ObjectiveList::AssignPyData(Structs::v2QuestObjectiveStub*, int)
; decoder-mode: arm
0047aa48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047aa4c  00 00 52 e3                                      cmp r2, #0
0047aa50  00 40 a0 e1                                      mov r4, r0
0047aa54  08 10 84 e5                                      str r1, [r4, #8]
0047aa58  01 50 a0 e1                                      mov r5, r1
0047aa5c  00 20 80 e5                                      str r2, [r0]
0047aa60  12 00 00 da                                      ble #0x47aab0
0047aa64  02 01 a0 e1                                      lsl r0, r2, #2
0047aa68  00 10 a0 e3                                      mov r1, #0
0047aa6c  be 56 fa eb                                      bl #0x31056c
0047aa70  00 30 94 e5                                      ldr r3, [r4]
0047aa74  00 70 a0 e1                                      mov r7, r0
0047aa78  04 00 84 e5                                      str r0, [r4, #4]
0047aa7c  00 00 53 e3                                      cmp r3, #0
0047aa80  0a 00 00 da                                      ble #0x47aab0
0047aa84  00 60 a0 e3                                      mov r6, #0
0047aa88  00 00 00 ea                                      b #0x47aa90
0047aa8c  04 70 94 e5                                      ldr r7, [r4, #4]
0047aa90  05 00 a0 e1                                      mov r0, r5
0047aa94  53 fe ff eb                                      bl #0x47a3e8
0047aa98  06 01 87 e7                                      str r0, [r7, r6, lsl #2]
0047aa9c  00 30 94 e5                                      ldr r3, [r4]
0047aaa0  01 60 86 e2                                      add r6, r6, #1
0047aaa4  2c 50 85 e2                                      add r5, r5, #0x2c
0047aaa8  06 00 53 e1                                      cmp r3, r6
0047aaac  f6 ff ff ca                                      bgt #0x47aa8c
0047aab0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047e914, declared_size=472, range_size=472, mode=arm
; class-group: ObjectiveList
; alias: _ZNK13ObjectiveList7GetDescEv
; demangled: ObjectiveList::GetDesc() const
; decoder-mode: arm
0047e914  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047e918  c0 91 9f e5                                      ldr sb, [pc, #0x1c0]
0047e91c  c0 21 9f e5                                      ldr r2, [pc, #0x1c0]
0047e920  5c d0 4d e2                                      sub sp, sp, #0x5c
0047e924  09 90 8f e0                                      add sb, pc, sb
0047e928  02 30 99 e7                                      ldr r3, [sb, r2]
0047e92c  00 70 a0 e1                                      mov r7, r0
0047e930  04 20 8d e5                                      str r2, [sp, #4]
0047e934  00 30 93 e5                                      ldr r3, [r3]
0047e938  01 50 a0 e1                                      mov r5, r1
0047e93c  10 00 87 e5                                      str r0, [r7, #0x10]
0047e940  14 00 87 e5                                      str r0, [r7, #0x14]
0047e944  10 10 a0 e3                                      mov r1, #0x10
0047e948  54 30 8d e5                                      str r3, [sp, #0x54]
0047e94c  4a 4b fa eb                                      bl #0x31167c
0047e950  10 30 97 e5                                      ldr r3, [r7, #0x10]
0047e954  3c a0 8d e2                                      add sl, sp, #0x3c
0047e958  00 40 a0 e3                                      mov r4, #0
0047e95c  00 40 c3 e5                                      strb r4, [r3]
0047e960  0a 00 a0 e1                                      mov r0, sl
0047e964  10 10 a0 e3                                      mov r1, #0x10
0047e968  4c a0 8d e5                                      str sl, [sp, #0x4c]
0047e96c  50 a0 8d e5                                      str sl, [sp, #0x50]
0047e970  41 4b fa eb                                      bl #0x31167c
0047e974  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0047e978  68 11 9f e5                                      ldr r1, [pc, #0x168]
0047e97c  24 b0 8d e2                                      add fp, sp, #0x24
0047e980  00 40 c3 e5                                      strb r4, [r3]
0047e984  01 10 8f e0                                      add r1, pc, r1
0047e988  0b 00 a0 e1                                      mov r0, fp
0047e98c  08 20 8d e2                                      add r2, sp, #8
0047e990  d5 55 fa eb                                      bl #0x3140ec
0047e994  00 30 95 e5                                      ldr r3, [r5]
0047e998  04 00 53 e1                                      cmp r3, r4
0047e99c  2d 00 00 da                                      ble #0x47ea58
0047e9a0  01 80 a0 e3                                      mov r8, #1
0047e9a4  0c 60 8d e2                                      add r6, sp, #0xc
0047e9a8  0d 00 00 ea                                      b #0x47e9e4
0047e9ac  53 29 0a eb                                      bl #0x708f00
0047e9b0  50 10 9d e5                                      ldr r1, [sp, #0x50]
0047e9b4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0047e9b8  02 00 51 e1                                      cmp r1, r2
0047e9bc  04 00 00 0a                                      beq #0x47e9d4
0047e9c0  00 00 58 e3                                      cmp r8, #0
0047e9c4  1c 00 00 0a                                      beq #0x47ea3c
0047e9c8  07 00 a0 e1                                      mov r0, r7
0047e9cc  8c 47 fa eb                                      bl #0x310804
0047e9d0  00 80 a0 e3                                      mov r8, #0
0047e9d4  00 30 95 e5                                      ldr r3, [r5]
0047e9d8  01 40 84 e2                                      add r4, r4, #1
0047e9dc  04 00 53 e1                                      cmp r3, r4
0047e9e0  1c 00 00 da                                      ble #0x47ea58
0047e9e4  04 30 95 e5                                      ldr r3, [r5, #4]
0047e9e8  06 00 a0 e1                                      mov r0, r6
0047e9ec  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0047e9f0  03 10 a0 e1                                      mov r1, r3
0047e9f4  00 30 93 e5                                      ldr r3, [r3]
0047e9f8  0f e0 a0 e1                                      mov lr, pc
0047e9fc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0047ea00  0a 00 a0 e1                                      mov r0, sl
0047ea04  20 10 9d e5                                      ldr r1, [sp, #0x20]
0047ea08  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0047ea0c  f3 47 fa eb                                      bl #0x3109e0
0047ea10  20 00 9d e5                                      ldr r0, [sp, #0x20]
0047ea14  06 00 50 e1                                      cmp r0, r6
0047ea18  e4 ff ff 0a                                      beq #0x47e9b0
0047ea1c  00 00 50 e3                                      cmp r0, #0
0047ea20  e2 ff ff 0a                                      beq #0x47e9b0
0047ea24  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0047ea28  01 10 60 e0                                      rsb r1, r0, r1
0047ea2c  80 00 51 e3                                      cmp r1, #0x80
0047ea30  dd ff ff 9a                                      bls #0x47e9ac
0047ea34  81 46 fa eb                                      bl #0x310440
0047ea38  dc ff ff ea                                      b #0x47e9b0
0047ea3c  38 10 9d e5                                      ldr r1, [sp, #0x38]
0047ea40  34 20 9d e5                                      ldr r2, [sp, #0x34]
0047ea44  07 00 a0 e1                                      mov r0, r7
0047ea48  6d 47 fa eb                                      bl #0x310804
0047ea4c  50 10 9d e5                                      ldr r1, [sp, #0x50]
0047ea50  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0047ea54  db ff ff ea                                      b #0x47e9c8
0047ea58  38 00 9d e5                                      ldr r0, [sp, #0x38]
0047ea5c  0b 00 50 e1                                      cmp r0, fp
0047ea60  06 00 00 0a                                      beq #0x47ea80
0047ea64  00 00 50 e3                                      cmp r0, #0
0047ea68  04 00 00 0a                                      beq #0x47ea80
0047ea6c  24 10 9d e5                                      ldr r1, [sp, #0x24]
0047ea70  01 10 60 e0                                      rsb r1, r0, r1
0047ea74  80 00 51 e3                                      cmp r1, #0x80
0047ea78  15 00 00 8a                                      bhi #0x47ead4
0047ea7c  1f 29 0a eb                                      bl #0x708f00
0047ea80  50 00 9d e5                                      ldr r0, [sp, #0x50]
0047ea84  0a 00 50 e1                                      cmp r0, sl
0047ea88  06 00 00 0a                                      beq #0x47eaa8
0047ea8c  00 00 50 e3                                      cmp r0, #0
0047ea90  04 00 00 0a                                      beq #0x47eaa8
0047ea94  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0047ea98  01 10 60 e0                                      rsb r1, r0, r1
0047ea9c  80 00 51 e3                                      cmp r1, #0x80
0047eaa0  09 00 00 8a                                      bhi #0x47eacc
0047eaa4  15 29 0a eb                                      bl #0x708f00
0047eaa8  04 20 9d e5                                      ldr r2, [sp, #4]
0047eaac  07 00 a0 e1                                      mov r0, r7
0047eab0  02 30 99 e7                                      ldr r3, [sb, r2]
0047eab4  54 20 9d e5                                      ldr r2, [sp, #0x54]
0047eab8  00 30 93 e5                                      ldr r3, [r3]
0047eabc  03 00 52 e1                                      cmp r2, r3
0047eac0  05 00 00 1a                                      bne #0x47eadc
0047eac4  5c d0 8d e2                                      add sp, sp, #0x5c
0047eac8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0047eacc  5b 46 fa eb                                      bl #0x310440
0047ead0  f4 ff ff ea                                      b #0x47eaa8
0047ead4  59 46 fa eb                                      bl #0x310440
0047ead8  e8 ff ff ea                                      b #0x47ea80
0047eadc  0b 3e fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0047eae0  6c 61 51 00 ac 40 00 00 6c d0 44 00              .byte 0x6c, 0x61, 0x51, 0x00, 0xac, 0x40, 0x00, 0x00, 0x6c, 0xd0, 0x44, 0x00
