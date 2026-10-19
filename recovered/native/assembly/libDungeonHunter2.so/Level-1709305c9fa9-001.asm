; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ef200, declared_size=4, range_size=4, mode=arm
; class-group: Level
; alias: _ZN5Level19_SpawnLoadingThreadEv
; demangled: Level::_SpawnLoadingThread()
; decoder-mode: arm
003ef200  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef204, declared_size=4, range_size=4, mode=arm
; class-group: Level
; alias: _ZN5Level17_CheckLoadProcessEv
; demangled: Level::_CheckLoadProcess()
; decoder-mode: arm
003ef204  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef208, declared_size=4, range_size=4, mode=arm
; class-group: Level
; alias: _ZN5Level21_ThreadLoadingProcessEv
; demangled: Level::_ThreadLoadingProcess()
; decoder-mode: arm
003ef208  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef20c, declared_size=8, range_size=8, mode=arm
; class-group: Level
; alias: _ZN5Level14LoadScriptFileEv
; demangled: Level::LoadScriptFile()
; decoder-mode: arm
003ef20c  01 00 a0 e3                                      mov r0, #1
003ef210  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef214, declared_size=4, range_size=4, mode=arm
; class-group: Level
; alias: _ZN5Level19_LoadResumeBatchingEv
; demangled: Level::_LoadResumeBatching()
; decoder-mode: arm
003ef214  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef218, declared_size=12, range_size=12, mode=arm
; class-group: Level
; alias: _ZN5Level4LoadEv
; demangled: Level::Load()
; decoder-mode: arm
003ef218  00 30 a0 e3                                      mov r3, #0
003ef21c  30 31 80 e5                                      str r3, [r0, #0x130]
003ef220  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef224, declared_size=16, range_size=16, mode=arm
; class-group: Level
; alias: _ZN5Level13ResetIsLoadedEv
; demangled: Level::ResetIsLoaded()
; decoder-mode: arm
003ef224  00 30 a0 e3                                      mov r3, #0
003ef228  44 31 c0 e5                                      strb r3, [r0, #0x144]
003ef22c  30 31 80 e5                                      str r3, [r0, #0x130]
003ef230  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef234, declared_size=4, range_size=4, mode=arm
; class-group: Level
; alias: _ZN5Level14UpdateMaterialEbb
; demangled: Level::UpdateMaterial(bool, bool)
; decoder-mode: arm
003ef234  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef238, declared_size=16, range_size=16, mode=arm
; class-group: Level
; alias: _ZN5Level13SG_BlockLevelEb
; demangled: Level::SG_BlockLevel(bool)
; decoder-mode: arm
003ef238  ec 30 90 e5                                      ldr r3, [r0, #0xec]
003ef23c  00 00 53 e3                                      cmp r3, #0
003ef240  39 10 c3 15                                      strbne r1, [r3, #0x39]
003ef244  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef248, declared_size=4, range_size=4, mode=arm
; class-group: Level
; alias: _ZNK5Level6Draw2DEv
; demangled: Level::Draw2D() const
; decoder-mode: arm
003ef248  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef24c, declared_size=44, range_size=44, mode=arm
; class-group: Level
; alias: _ZNK5Level15hasActiveDialogEv
; demangled: Level::hasActiveDialog() const
; decoder-mode: arm
003ef24c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003ef250  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
003ef254  03 30 8f e0                                      add r3, pc, r3
003ef258  02 20 93 e7                                      ldr r2, [r3, r2]
003ef25c  14 00 92 e5                                      ldr r0, [r2, #0x14]
003ef260  04 30 92 e5                                      ldr r3, [r2, #4]
003ef264  03 00 50 e0                                      subs r0, r0, r3
003ef268  01 00 a0 13                                      movne r0, #1
003ef26c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003ef270  3c 58 5a 00 74 1e 00 00                          .byte 0x3c, 0x58, 0x5a, 0x00, 0x74, 0x1e, 0x00, 0x00

; FUNCTION 0x003ef278, declared_size=8, range_size=8, mode=arm
; class-group: Level
; alias: _ZN5Level17SetObjectModuleIdEi
; demangled: Level::SetObjectModuleId(int)
; decoder-mode: arm
003ef278  8c 11 80 e5                                      str r1, [r0, #0x18c]
003ef27c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef280, declared_size=4, range_size=4, mode=arm
; class-group: Level
; alias: _ZN5Level14UpdateLightSetEbi
; demangled: Level::UpdateLightSet(bool, int)
; decoder-mode: arm
003ef280  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef3fc, declared_size=100, range_size=100, mode=arm
; class-group: Level
; alias: _ZN5Level16CleanUpAllSkillsEv
; demangled: Level::CleanUpAllSkills()
; decoder-mode: arm
003ef3fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ef400  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
003ef404  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003ef408  08 d0 4d e2                                      sub sp, sp, #8
003ef40c  05 50 8f e0                                      add r5, pc, r5
003ef410  03 30 95 e7                                      ldr r3, [r5, r3]
003ef414  40 80 9f e5                                      ldr r8, [pc, #0x40]
003ef418  04 70 8d e2                                      add r7, sp, #4
003ef41c  38 60 93 e5                                      ldr r6, [r3, #0x38]
003ef420  60 40 b6 e5                                      ldr r4, [r6, #0x60]!
003ef424  06 00 00 ea                                      b #0x3ef444
003ef428  08 30 95 e7                                      ldr r3, [r5, r8]
003ef42c  08 00 94 e5                                      ldr r0, [r4, #8]
003ef430  07 10 a0 e1                                      mov r1, r7
003ef434  01 20 a0 e3                                      mov r2, #1
003ef438  04 30 8d e5                                      str r3, [sp, #4]
003ef43c  b8 e1 fe eb                                      bl #0x3a7b24
003ef440  00 40 94 e5                                      ldr r4, [r4]
003ef444  04 00 56 e1                                      cmp r6, r4
003ef448  f6 ff ff 1a                                      bne #0x3ef428
003ef44c  08 d0 8d e2                                      add sp, sp, #8
003ef450  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ef454  84 56 5a 00 f4 37 00 00 34 11 00 00              .byte 0x84, 0x56, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x34, 0x11, 0x00, 0x00

; FUNCTION 0x003ef460, declared_size=72, range_size=72, mode=arm
; class-group: Level
; alias: _ZN5Level16UnlockAllObjectsEv
; demangled: Level::UnlockAllObjects()
; decoder-mode: arm
003ef460  38 30 9f e5                                      ldr r3, [pc, #0x38]
003ef464  38 20 9f e5                                      ldr r2, [pc, #0x38]
003ef468  00 c0 a0 e3                                      mov ip, #0
003ef46c  03 30 8f e0                                      add r3, pc, r3
003ef470  02 20 93 e7                                      ldr r2, [r3, r2]
003ef474  38 00 92 e5                                      ldr r0, [r2, #0x38]
003ef478  60 30 b0 e5                                      ldr r3, [r0, #0x60]!
003ef47c  04 00 00 ea                                      b #0x3ef494
003ef480  08 20 93 e5                                      ldr r2, [r3, #8]
003ef484  29 10 d2 e5                                      ldrb r1, [r2, #0x29]
003ef488  00 00 51 e3                                      cmp r1, #0
003ef48c  29 c0 c2 15                                      strbne ip, [r2, #0x29]
003ef490  00 30 93 e5                                      ldr r3, [r3]
003ef494  03 00 50 e1                                      cmp r0, r3
003ef498  f8 ff ff 1a                                      bne #0x3ef480
003ef49c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003ef4a0  24 56 5a 00 f4 37 00 00                          .byte 0x24, 0x56, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ef4a8, declared_size=152, range_size=152, mode=arm
; class-group: Level
; alias: _ZNK5Level14GetLevelConfigEv
; demangled: Level::GetLevelConfig() const
; decoder-mode: arm
003ef4a8  10 40 2d e9                                      push {r4, lr}
003ef4ac  00 40 a0 e1                                      mov r4, r0
003ef4b0  38 00 90 e5                                      ldr r0, [r0, #0x38]
003ef4b4  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003ef4b8  08 d0 4d e2                                      sub sp, sp, #8
003ef4bc  00 00 50 e3                                      cmp r0, #0
003ef4c0  03 30 8f e0                                      add r3, pc, r3
003ef4c4  01 00 00 0a                                      beq #0x3ef4d0
003ef4c8  08 d0 8d e2                                      add sp, sp, #8
003ef4cc  10 80 bd e8                                      pop {r4, pc}
003ef4d0  54 20 9f e5                                      ldr r2, [pc, #0x54]
003ef4d4  02 20 93 e7                                      ldr r2, [r3, r2]
003ef4d8  00 20 92 e5                                      ldr r2, [r2]
003ef4dc  02 00 52 e3                                      cmp r2, #2
003ef4e0  00 00 80 05                                      streq r0, [r0]
003ef4e4  f7 ff ff 0a                                      beq #0x3ef4c8
003ef4e8  01 00 52 e3                                      cmp r2, #1
003ef4ec  f5 ff ff 1a                                      bne #0x3ef4c8
003ef4f0  38 00 9f e5                                      ldr r0, [pc, #0x38]
003ef4f4  38 10 9f e5                                      ldr r1, [pc, #0x38]
003ef4f8  38 20 9f e5                                      ldr r2, [pc, #0x38]
003ef4fc  00 00 93 e7                                      ldr r0, [r3, r0]
003ef500  34 30 9f e5                                      ldr r3, [pc, #0x34]
003ef504  77 cf a0 e3                                      mov ip, #0x1dc
003ef508  01 10 8f e0                                      add r1, pc, r1
003ef50c  a8 00 80 e2                                      add r0, r0, #0xa8
003ef510  02 20 8f e0                                      add r2, pc, r2
003ef514  03 30 8f e0                                      add r3, pc, r3
003ef518  00 c0 8d e5                                      str ip, [sp]
003ef51c  b8 7a fc eb                                      bl #0x30e004
003ef520  38 00 94 e5                                      ldr r0, [r4, #0x38]
003ef524  e7 ff ff ea                                      b #0x3ef4c8
; mapping-symbol data/literal pool
003ef528  d0 55 5a 00 c0 39 00 00 c0 19 00 00 d0 ee 4c 00  .byte 0xd0, 0x55, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd0, 0xee, 0x4c, 0x00
003ef538  e0 66 4d 00 44 27 4d 00                          .byte 0xe0, 0x66, 0x4d, 0x00, 0x44, 0x27, 0x4d, 0x00

; FUNCTION 0x003ef540, declared_size=140, range_size=140, mode=arm
; class-group: Level
; alias: _ZNK5Level12GetMPRefereeEv
; demangled: Level::GetMPReferee() const
; decoder-mode: arm
003ef540  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ef544  54 81 90 e5                                      ldr r8, [r0, #0x154]
003ef548  70 30 9f e5                                      ldr r3, [pc, #0x70]
003ef54c  00 70 a0 e1                                      mov r7, r0
003ef550  00 00 58 e3                                      cmp r8, #0
003ef554  03 30 8f e0                                      add r3, pc, r3
003ef558  02 00 00 0a                                      beq #0x3ef568
003ef55c  08 40 a0 e1                                      mov r4, r8
003ef560  04 00 a0 e1                                      mov r0, r4
003ef564  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ef568  54 20 9f e5                                      ldr r2, [pc, #0x54]
003ef56c  54 a0 9f e5                                      ldr sl, [pc, #0x54]
003ef570  02 30 93 e7                                      ldr r3, [r3, r2]
003ef574  0a a0 8f e0                                      add sl, pc, sl
003ef578  38 60 93 e5                                      ldr r6, [r3, #0x38]
003ef57c  60 50 b6 e5                                      ldr r5, [r6, #0x60]!
003ef580  05 00 56 e1                                      cmp r6, r5
003ef584  0a 10 a0 e1                                      mov r1, sl
003ef588  07 20 a0 e3                                      mov r2, #7
003ef58c  f2 ff ff 0a                                      beq #0x3ef55c
003ef590  08 40 95 e5                                      ldr r4, [r5, #8]
003ef594  00 00 54 e3                                      cmp r4, #0
003ef598  06 00 00 0a                                      beq #0x3ef5b8
003ef59c  44 00 94 e5                                      ldr r0, [r4, #0x44]
003ef5a0  b5 7d fc eb                                      bl #0x30ec7c
003ef5a4  00 00 50 e3                                      cmp r0, #0
003ef5a8  02 00 00 1a                                      bne #0x3ef5b8
003ef5ac  54 41 87 e5                                      str r4, [r7, #0x154]
003ef5b0  04 00 a0 e1                                      mov r0, r4
003ef5b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ef5b8  00 50 95 e5                                      ldr r5, [r5]
003ef5bc  ef ff ff ea                                      b #0x3ef580
; mapping-symbol data/literal pool
003ef5c0  3c 55 5a 00 f4 37 00 00 f4 6e 4d 00              .byte 0x3c, 0x55, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf4, 0x6e, 0x4d, 0x00

; FUNCTION 0x003ef5cc, declared_size=36, range_size=36, mode=arm
; class-group: Level
; alias: _ZN5Level10DisableFogEPN6glitch5scene10ISceneNodeE
; demangled: Level::DisableFog(glitch::scene::ISceneNode*)
; decoder-mode: arm
003ef5cc  14 30 9f e5                                      ldr r3, [pc, #0x14]
003ef5d0  14 20 9f e5                                      ldr r2, [pc, #0x14]
003ef5d4  03 30 8f e0                                      add r3, pc, r3
003ef5d8  02 20 93 e7                                      ldr r2, [r3, r2]
003ef5dc  10 30 92 e5                                      ldr r3, [r2, #0x10]
003ef5e0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
003ef5e4  25 86 fd ea                                      b #0x350e80
; mapping-symbol data/literal pool
003ef5e8  bc 54 5a 00 f4 37 00 00                          .byte 0xbc, 0x54, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ef5f0, declared_size=36, range_size=36, mode=arm
; class-group: Level
; alias: _ZN5Level14UpdateLightSetEiRSt6vectorIbSaIbEEPN6glitch5scene10ISceneNodeE
; demangled: Level::UpdateLightSet(int, std::vector<bool, std::allocator<bool> >&, glitch::scene::ISceneNode*)
; decoder-mode: arm
003ef5f0  14 00 9f e5                                      ldr r0, [pc, #0x14]
003ef5f4  14 c0 9f e5                                      ldr ip, [pc, #0x14]
003ef5f8  00 00 8f e0                                      add r0, pc, r0
003ef5fc  0c c0 90 e7                                      ldr ip, [r0, ip]
003ef600  10 00 9c e5                                      ldr r0, [ip, #0x10]
003ef604  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
003ef608  e4 94 fd ea                                      b #0x3549a0
; mapping-symbol data/literal pool
003ef60c  98 54 5a 00 f4 37 00 00                          .byte 0x98, 0x54, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ef614, declared_size=276, range_size=276, mode=arm
; class-group: Level
; alias: _ZN5Level13GetSpawnPointEv
; demangled: Level::GetSpawnPoint()
; decoder-mode: arm
003ef614  04 31 9f e5                                      ldr r3, [pc, #0x104]
003ef618  04 21 9f e5                                      ldr r2, [pc, #0x104]
003ef61c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003ef620  03 30 8f e0                                      add r3, pc, r3
003ef624  02 20 93 e7                                      ldr r2, [r3, r2]
003ef628  14 d0 4d e2                                      sub sp, sp, #0x14
003ef62c  00 70 a0 e1                                      mov r7, r0
003ef630  38 30 92 e5                                      ldr r3, [r2, #0x38]
003ef634  00 00 a0 e3                                      mov r0, #0
003ef638  04 50 8d e2                                      add r5, sp, #4
003ef63c  14 40 93 e5                                      ldr r4, [r3, #0x14]
003ef640  0c 60 83 e2                                      add r6, r3, #0xc
003ef644  04 00 56 e1                                      cmp r6, r4
003ef648  19 00 00 0a                                      beq #0x3ef6b4
003ef64c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003ef650  00 00 51 e3                                      cmp r1, #0
003ef654  0a 00 00 0a                                      beq #0x3ef684
003ef658  05 00 a0 e1                                      mov r0, r5
003ef65c  b2 39 fd eb                                      bl #0x33dd2c
003ef660  05 00 a0 e1                                      mov r0, r5
003ef664  00 10 a0 e3                                      mov r1, #0
003ef668  d4 41 fd eb                                      bl #0x33fdc0
003ef66c  00 30 50 e2                                      subs r3, r0, #0
003ef670  02 00 00 0a                                      beq #0x3ef680
003ef674  f4 20 93 e5                                      ldr r2, [r3, #0xf4]
003ef678  0d 00 52 e3                                      cmp r2, #0xd
003ef67c  0e 00 00 0a                                      beq #0x3ef6bc
003ef680  00 00 a0 e3                                      mov r0, #0
003ef684  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003ef688  00 10 a0 e3                                      mov r1, #0
003ef68c  00 00 52 e3                                      cmp r2, #0
003ef690  15 00 00 0a                                      beq #0x3ef6ec
003ef694  02 40 a0 e1                                      mov r4, r2
003ef698  00 00 00 ea                                      b #0x3ef6a0
003ef69c  03 40 a0 e1                                      mov r4, r3
003ef6a0  08 30 94 e5                                      ldr r3, [r4, #8]
003ef6a4  00 00 53 e3                                      cmp r3, #0
003ef6a8  fb ff ff 1a                                      bne #0x3ef69c
003ef6ac  00 00 51 e3                                      cmp r1, #0
003ef6b0  e3 ff ff 0a                                      beq #0x3ef644
003ef6b4  14 d0 8d e2                                      add sp, sp, #0x14
003ef6b8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003ef6bc  8a 20 d3 e5                                      ldrb r2, [r3, #0x8a]
003ef6c0  03 00 a0 e1                                      mov r0, r3
003ef6c4  00 00 52 e3                                      cmp r2, #0
003ef6c8  ed ff ff 0a                                      beq #0x3ef684
003ef6cc  74 33 93 e5                                      ldr r3, [r3, #0x374]
003ef6d0  10 21 97 e5                                      ldr r2, [r7, #0x110]
003ef6d4  03 00 52 e1                                      cmp r2, r3
003ef6d8  01 10 a0 03                                      moveq r1, #1
003ef6dc  e8 ff ff 1a                                      bne #0x3ef684
003ef6e0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003ef6e4  00 00 52 e3                                      cmp r2, #0
003ef6e8  e9 ff ff 1a                                      bne #0x3ef694
003ef6ec  04 30 94 e5                                      ldr r3, [r4, #4]
003ef6f0  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003ef6f4  04 00 5c e1                                      cmp ip, r4
003ef6f8  05 00 00 1a                                      bne #0x3ef714
003ef6fc  03 40 a0 e1                                      mov r4, r3
003ef700  04 30 93 e5                                      ldr r3, [r3, #4]
003ef704  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003ef708  04 00 52 e1                                      cmp r2, r4
003ef70c  fa ff ff 0a                                      beq #0x3ef6fc
003ef710  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003ef714  03 00 52 e1                                      cmp r2, r3
003ef718  03 40 a0 11                                      movne r4, r3
003ef71c  e2 ff ff ea                                      b #0x3ef6ac
; mapping-symbol data/literal pool
003ef720  70 54 5a 00 f4 37 00 00                          .byte 0x70, 0x54, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ef728, declared_size=132, range_size=132, mode=arm
; class-group: Level
; alias: _ZNK5Level36SG_DBG_TraceDetailedQuestInformationEi
; demangled: Level::SG_DBG_TraceDetailedQuestInformation(int) const
; decoder-mode: arm
003ef728  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ef72c  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
003ef730  6c 60 9f e5                                      ldr r6, [pc, #0x6c]
003ef734  01 70 a0 e1                                      mov r7, r1
003ef738  05 50 8f e0                                      add r5, pc, r5
003ef73c  06 30 95 e7                                      ldr r3, [r5, r6]
003ef740  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef744  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef748  00 00 53 e3                                      cmp r3, #0
003ef74c  12 00 00 0a                                      beq #0x3ef79c
003ef750  50 80 9f e5                                      ldr r8, [pc, #0x50]
003ef754  00 40 a0 e3                                      mov r4, #0
003ef758  04 10 a0 e1                                      mov r1, r4
003ef75c  01 20 a0 e3                                      mov r2, #1
003ef760  f7 fb fd eb                                      bl #0x36e744
003ef764  60 06 90 e5                                      ldr r0, [r0, #0x660]
003ef768  01 40 84 e2                                      add r4, r4, #1
003ef76c  07 20 a0 e1                                      mov r2, r7
003ef770  00 00 50 e3                                      cmp r0, #0
003ef774  00 30 e0 e3                                      mvn r3, #0
003ef778  02 00 00 0a                                      beq #0x3ef788
003ef77c  08 10 95 e7                                      ldr r1, [r5, r8]
003ef780  54 10 81 e2                                      add r1, r1, #0x54
003ef784  94 32 ff eb                                      bl #0x3bc1dc
003ef788  06 30 95 e7                                      ldr r3, [r5, r6]
003ef78c  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef790  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef794  04 00 53 e1                                      cmp r3, r4
003ef798  ee ff ff 8a                                      bhi #0x3ef758
003ef79c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ef7a0  58 53 5a 00 f4 37 00 00 c0 19 00 00              .byte 0x58, 0x53, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00

; FUNCTION 0x003ef7ac, declared_size=164, range_size=164, mode=arm
; class-group: Level
; alias: _ZNK5Level15SG_IsMapLocSeenEi
; demangled: Level::SG_IsMapLocSeen(int) const
; decoder-mode: arm
003ef7ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ef7b0  90 60 9f e5                                      ldr r6, [pc, #0x90]
003ef7b4  90 70 9f e5                                      ldr r7, [pc, #0x90]
003ef7b8  01 80 a0 e1                                      mov r8, r1
003ef7bc  06 60 8f e0                                      add r6, pc, r6
003ef7c0  07 30 96 e7                                      ldr r3, [r6, r7]
003ef7c4  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef7c8  c4 56 90 e5                                      ldr r5, [r0, #0x6c4]
003ef7cc  00 00 55 e3                                      cmp r5, #0
003ef7d0  1a 00 00 0a                                      beq #0x3ef840
003ef7d4  00 40 a0 e3                                      mov r4, #0
003ef7d8  04 50 a0 e1                                      mov r5, r4
003ef7dc  04 00 00 ea                                      b #0x3ef7f4
003ef7e0  07 30 96 e7                                      ldr r3, [r6, r7]
003ef7e4  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef7e8  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef7ec  04 00 53 e1                                      cmp r3, r4
003ef7f0  12 00 00 9a                                      bls #0x3ef840
003ef7f4  04 10 a0 e1                                      mov r1, r4
003ef7f8  01 20 a0 e3                                      mov r2, #1
003ef7fc  d0 fb fd eb                                      bl #0x36e744
003ef800  60 06 90 e5                                      ldr r0, [r0, #0x660]
003ef804  01 40 84 e2                                      add r4, r4, #1
003ef808  00 00 50 e3                                      cmp r0, #0
003ef80c  f3 ff ff 0a                                      beq #0x3ef7e0
003ef810  00 00 55 e3                                      cmp r5, #0
003ef814  f1 ff ff 1a                                      bne #0x3ef7e0
003ef818  08 10 a0 e1                                      mov r1, r8
003ef81c  00 20 e0 e3                                      mvn r2, #0
003ef820  42 31 ff eb                                      bl #0x3bbd30
003ef824  07 30 96 e7                                      ldr r3, [r6, r7]
003ef828  00 00 50 e3                                      cmp r0, #0
003ef82c  01 50 a0 13                                      movne r5, #1
003ef830  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef834  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef838  04 00 53 e1                                      cmp r3, r4
003ef83c  ec ff ff 8a                                      bhi #0x3ef7f4
003ef840  05 00 a0 e1                                      mov r0, r5
003ef844  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ef848  d4 52 5a 00 f4 37 00 00                          .byte 0xd4, 0x52, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ef850, declared_size=168, range_size=168, mode=arm
; class-group: Level
; alias: _ZNK5Level17SG_IsMapLocLockedEi
; demangled: Level::SG_IsMapLocLocked(int) const
; decoder-mode: arm
003ef850  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ef854  94 60 9f e5                                      ldr r6, [pc, #0x94]
003ef858  94 70 9f e5                                      ldr r7, [pc, #0x94]
003ef85c  01 80 a0 e1                                      mov r8, r1
003ef860  06 60 8f e0                                      add r6, pc, r6
003ef864  07 30 96 e7                                      ldr r3, [r6, r7]
003ef868  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef86c  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef870  00 00 53 e3                                      cmp r3, #0
003ef874  01 50 a0 03                                      moveq r5, #1
003ef878  1a 00 00 0a                                      beq #0x3ef8e8
003ef87c  00 40 a0 e3                                      mov r4, #0
003ef880  01 50 a0 e3                                      mov r5, #1
003ef884  04 00 00 ea                                      b #0x3ef89c
003ef888  07 30 96 e7                                      ldr r3, [r6, r7]
003ef88c  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef890  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef894  04 00 53 e1                                      cmp r3, r4
003ef898  12 00 00 9a                                      bls #0x3ef8e8
003ef89c  04 10 a0 e1                                      mov r1, r4
003ef8a0  01 20 a0 e3                                      mov r2, #1
003ef8a4  a6 fb fd eb                                      bl #0x36e744
003ef8a8  60 06 90 e5                                      ldr r0, [r0, #0x660]
003ef8ac  01 40 84 e2                                      add r4, r4, #1
003ef8b0  00 00 50 e3                                      cmp r0, #0
003ef8b4  f3 ff ff 0a                                      beq #0x3ef888
003ef8b8  00 00 55 e3                                      cmp r5, #0
003ef8bc  f1 ff ff 0a                                      beq #0x3ef888
003ef8c0  08 10 a0 e1                                      mov r1, r8
003ef8c4  00 20 e0 e3                                      mvn r2, #0
003ef8c8  26 31 ff eb                                      bl #0x3bbd68
003ef8cc  07 30 96 e7                                      ldr r3, [r6, r7]
003ef8d0  00 00 50 e3                                      cmp r0, #0
003ef8d4  00 50 a0 03                                      moveq r5, #0
003ef8d8  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef8dc  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef8e0  04 00 53 e1                                      cmp r3, r4
003ef8e4  ec ff ff 8a                                      bhi #0x3ef89c
003ef8e8  05 00 a0 e1                                      mov r0, r5
003ef8ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ef8f0  30 52 5a 00 f4 37 00 00                          .byte 0x30, 0x52, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ef8f8, declared_size=168, range_size=168, mode=arm
; class-group: Level
; alias: _ZNK5Level16SG_IsLevelLockedEi
; demangled: Level::SG_IsLevelLocked(int) const
; decoder-mode: arm
003ef8f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ef8fc  94 60 9f e5                                      ldr r6, [pc, #0x94]
003ef900  94 70 9f e5                                      ldr r7, [pc, #0x94]
003ef904  01 80 a0 e1                                      mov r8, r1
003ef908  06 60 8f e0                                      add r6, pc, r6
003ef90c  07 30 96 e7                                      ldr r3, [r6, r7]
003ef910  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef914  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef918  00 00 53 e3                                      cmp r3, #0
003ef91c  01 50 a0 03                                      moveq r5, #1
003ef920  1a 00 00 0a                                      beq #0x3ef990
003ef924  00 40 a0 e3                                      mov r4, #0
003ef928  01 50 a0 e3                                      mov r5, #1
003ef92c  04 00 00 ea                                      b #0x3ef944
003ef930  07 30 96 e7                                      ldr r3, [r6, r7]
003ef934  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef938  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef93c  04 00 53 e1                                      cmp r3, r4
003ef940  12 00 00 9a                                      bls #0x3ef990
003ef944  04 10 a0 e1                                      mov r1, r4
003ef948  01 20 a0 e3                                      mov r2, #1
003ef94c  7c fb fd eb                                      bl #0x36e744
003ef950  60 06 90 e5                                      ldr r0, [r0, #0x660]
003ef954  01 40 84 e2                                      add r4, r4, #1
003ef958  00 00 50 e3                                      cmp r0, #0
003ef95c  f3 ff ff 0a                                      beq #0x3ef930
003ef960  00 00 55 e3                                      cmp r5, #0
003ef964  f1 ff ff 0a                                      beq #0x3ef930
003ef968  08 10 a0 e1                                      mov r1, r8
003ef96c  00 20 e0 e3                                      mvn r2, #0
003ef970  bd 30 ff eb                                      bl #0x3bbc6c
003ef974  07 30 96 e7                                      ldr r3, [r6, r7]
003ef978  00 00 50 e3                                      cmp r0, #0
003ef97c  00 50 a0 03                                      moveq r5, #0
003ef980  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ef984  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003ef988  04 00 53 e1                                      cmp r3, r4
003ef98c  ec ff ff 8a                                      bhi #0x3ef944
003ef990  05 00 a0 e1                                      mov r0, r5
003ef994  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003ef998  88 51 5a 00 f4 37 00 00                          .byte 0x88, 0x51, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003ef9a0, declared_size=92, range_size=92, mode=arm
; class-group: Level
; alias: _ZN5Level7RestartEv
; demangled: Level::Restart()
; decoder-mode: arm
003ef9a0  10 40 2d e9                                      push {r4, lr}
003ef9a4  48 e0 9f e5                                      ldr lr, [pc, #0x48]
003ef9a8  48 30 9f e5                                      ldr r3, [pc, #0x48]
003ef9ac  00 20 a0 e1                                      mov r2, r0
003ef9b0  0e e0 8f e0                                      add lr, pc, lr
003ef9b4  0c 11 92 e5                                      ldr r1, [r2, #0x10c]
003ef9b8  18 d0 4d e2                                      sub sp, sp, #0x18
003ef9bc  00 c0 a0 e3                                      mov ip, #0
003ef9c0  03 00 9e e7                                      ldr r0, [lr, r3]
003ef9c4  01 40 a0 e3                                      mov r4, #1
003ef9c8  14 31 92 e5                                      ldr r3, [r2, #0x114]
003ef9cc  10 21 92 e5                                      ldr r2, [r2, #0x110]
003ef9d0  04 40 8d e5                                      str r4, [sp, #4]
003ef9d4  14 c0 8d e5                                      str ip, [sp, #0x14]
003ef9d8  00 c0 8d e5                                      str ip, [sp]
003ef9dc  08 c0 8d e5                                      str ip, [sp, #8]
003ef9e0  0c c0 8d e5                                      str ip, [sp, #0xc]
003ef9e4  10 c0 8d e5                                      str ip, [sp, #0x10]
003ef9e8  f6 f0 fc eb                                      bl #0x32bdc8
003ef9ec  18 d0 8d e2                                      add sp, sp, #0x18
003ef9f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ef9f4  e0 50 5a 00 f4 37 00 00                          .byte 0xe0, 0x50, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003efa54, declared_size=152, range_size=152, mode=arm
; class-group: Level
; alias: _ZN5Level13SG_SavePlayerEP9Characterb
; demangled: Level::SG_SavePlayer(Character*, bool)
; decoder-mode: arm
003efa54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003efa58  00 40 51 e2                                      subs r4, r1, #0
003efa5c  00 50 a0 e1                                      mov r5, r0
003efa60  02 70 a0 e1                                      mov r7, r2
003efa64  1b 00 00 0a                                      beq #0x3efad8
003efa68  00 30 94 e5                                      ldr r3, [r4]
003efa6c  04 00 a0 e1                                      mov r0, r4
003efa70  0f e0 a0 e1                                      mov lr, pc
003efa74  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003efa78  00 00 50 e3                                      cmp r0, #0
003efa7c  15 00 00 0a                                      beq #0x3efad8
003efa80  04 00 a0 e1                                      mov r0, r4
003efa84  3e 2f ff eb                                      bl #0x3bb784
003efa88  00 00 57 e3                                      cmp r7, #0
003efa8c  00 60 a0 e1                                      mov r6, r0
003efa90  11 00 00 1a                                      bne #0x3efadc
003efa94  04 00 a0 e1                                      mov r0, r4
003efa98  a0 35 ff eb                                      bl #0x3bd120
003efa9c  00 10 a0 e1                                      mov r1, r0
003efaa0  04 00 a0 e1                                      mov r0, r4
003efaa4  65 2f ff eb                                      bl #0x3bb840
003efaa8  04 00 a0 e1                                      mov r0, r4
003efaac  69 30 ff eb                                      bl #0x3bbc58
003efab0  10 11 95 e5                                      ldr r1, [r5, #0x110]
003efab4  04 00 a0 e1                                      mov r0, r4
003efab8  00 20 e0 e3                                      mvn r2, #0
003efabc  76 2f ff eb                                      bl #0x3bb89c
003efac0  04 00 a0 e1                                      mov r0, r4
003efac4  77 32 ff eb                                      bl #0x3bc4a8
003efac8  04 00 a0 e1                                      mov r0, r4
003efacc  06 10 a0 e1                                      mov r1, r6
003efad0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003efad4  25 2f ff ea                                      b #0x3bb770
003efad8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003efadc  04 00 a0 e1                                      mov r0, r4
003efae0  00 10 a0 e3                                      mov r1, #0
003efae4  21 2f ff eb                                      bl #0x3bb770
003efae8  e9 ff ff ea                                      b #0x3efa94

; FUNCTION 0x003efaec, declared_size=340, range_size=340, mode=arm
; class-group: Level
; alias: _ZN5Level13SG_SavePlayerEib
; demangled: Level::SG_SavePlayer(int, bool)
; decoder-mode: arm
003efaec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003efaf0  20 41 9f e5                                      ldr r4, [pc, #0x120]
003efaf4  20 31 9f e5                                      ldr r3, [pc, #0x120]
003efaf8  00 50 51 e2                                      subs r5, r1, #0
003efafc  04 40 8f e0                                      add r4, pc, r4
003efb00  03 30 94 e7                                      ldr r3, [r4, r3]
003efb04  08 d0 4d e2                                      sub sp, sp, #8
003efb08  00 80 a0 e1                                      mov r8, r0
003efb0c  02 70 a0 e1                                      mov r7, r2
003efb10  40 60 93 e5                                      ldr r6, [r3, #0x40]
003efb14  1c 00 00 ba                                      blt #0x3efb8c
003efb18  c4 36 96 e5                                      ldr r3, [r6, #0x6c4]
003efb1c  03 00 55 e1                                      cmp r5, r3
003efb20  08 00 00 ba                                      blt #0x3efb48
003efb24  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
003efb28  03 30 94 e7                                      ldr r3, [r4, r3]
003efb2c  00 30 93 e5                                      ldr r3, [r3]
003efb30  02 00 53 e3                                      cmp r3, #2
003efb34  00 30 a0 03                                      moveq r3, #0
003efb38  00 30 83 05                                      streq r3, [r3]
003efb3c  01 00 00 0a                                      beq #0x3efb48
003efb40  01 00 53 e3                                      cmp r3, #1
003efb44  26 00 00 0a                                      beq #0x3efbe4
003efb48  00 00 55 e3                                      cmp r5, #0
003efb4c  0c 00 00 ba                                      blt #0x3efb84
003efb50  c4 36 96 e5                                      ldr r3, [r6, #0x6c4]
003efb54  03 00 55 e1                                      cmp r5, r3
003efb58  09 00 00 aa                                      bge #0x3efb84
003efb5c  05 10 a0 e1                                      mov r1, r5
003efb60  06 00 a0 e1                                      mov r0, r6
003efb64  01 20 a0 e3                                      mov r2, #1
003efb68  f5 fa fd eb                                      bl #0x36e744
003efb6c  60 16 90 e5                                      ldr r1, [r0, #0x660]
003efb70  07 20 a0 e1                                      mov r2, r7
003efb74  08 00 a0 e1                                      mov r0, r8
003efb78  08 d0 8d e2                                      add sp, sp, #8
003efb7c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003efb80  b3 ff ff ea                                      b #0x3efa54
003efb84  08 d0 8d e2                                      add sp, sp, #8
003efb88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003efb8c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003efb90  03 30 94 e7                                      ldr r3, [r4, r3]
003efb94  00 30 93 e5                                      ldr r3, [r3]
003efb98  02 00 53 e3                                      cmp r3, #2
003efb9c  00 30 a0 03                                      moveq r3, #0
003efba0  00 30 83 05                                      streq r3, [r3]
003efba4  db ff ff 0a                                      beq #0x3efb18
003efba8  01 00 53 e3                                      cmp r3, #1
003efbac  d9 ff ff 1a                                      bne #0x3efb18
003efbb0  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
003efbb4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003efbb8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003efbbc  00 00 94 e7                                      ldr r0, [r4, r0]
003efbc0  68 30 9f e5                                      ldr r3, [pc, #0x68]
003efbc4  31 cb 00 e3                                      movw ip, #0xb31
003efbc8  01 10 8f e0                                      add r1, pc, r1
003efbcc  02 20 8f e0                                      add r2, pc, r2
003efbd0  03 30 8f e0                                      add r3, pc, r3
003efbd4  a8 00 80 e2                                      add r0, r0, #0xa8
003efbd8  00 c0 8d e5                                      str ip, [sp]
003efbdc  08 79 fc eb                                      bl #0x30e004
003efbe0  cc ff ff ea                                      b #0x3efb18
003efbe4  38 00 9f e5                                      ldr r0, [pc, #0x38]
003efbe8  44 10 9f e5                                      ldr r1, [pc, #0x44]
003efbec  44 20 9f e5                                      ldr r2, [pc, #0x44]
003efbf0  00 00 94 e7                                      ldr r0, [r4, r0]
003efbf4  40 30 9f e5                                      ldr r3, [pc, #0x40]
003efbf8  32 cb 00 e3                                      movw ip, #0xb32
003efbfc  01 10 8f e0                                      add r1, pc, r1
003efc00  02 20 8f e0                                      add r2, pc, r2
003efc04  03 30 8f e0                                      add r3, pc, r3
003efc08  a8 00 80 e2                                      add r0, r0, #0xa8
003efc0c  00 c0 8d e5                                      str ip, [sp]
003efc10  fb 78 fc eb                                      bl #0x30e004
003efc14  cb ff ff ea                                      b #0x3efb48
; mapping-symbol data/literal pool
003efc18  94 4f 5a 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x94, 0x4f, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003efc28  10 e8 4c 00 34 69 4d 00 40 69 4d 00 dc e7 4c 00  .byte 0x10, 0xe8, 0x4c, 0x00, 0x34, 0x69, 0x4d, 0x00, 0x40, 0x69, 0x4d, 0x00, 0xdc, 0xe7, 0x4c, 0x00
003efc38  50 69 4d 00 0c 69 4d 00                          .byte 0x50, 0x69, 0x4d, 0x00, 0x0c, 0x69, 0x4d, 0x00

; FUNCTION 0x003efc40, declared_size=100, range_size=100, mode=arm
; class-group: Level
; alias: _ZN5Level16SG_SaveAllPlayerEb
; demangled: Level::SG_SaveAllPlayer(bool)
; decoder-mode: arm
003efc40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003efc44  50 50 9f e5                                      ldr r5, [pc, #0x50]
003efc48  50 60 9f e5                                      ldr r6, [pc, #0x50]
003efc4c  00 70 a0 e1                                      mov r7, r0
003efc50  05 50 8f e0                                      add r5, pc, r5
003efc54  06 30 95 e7                                      ldr r3, [r5, r6]
003efc58  01 80 a0 e1                                      mov r8, r1
003efc5c  40 30 93 e5                                      ldr r3, [r3, #0x40]
003efc60  c4 36 93 e5                                      ldr r3, [r3, #0x6c4]
003efc64  00 00 53 e3                                      cmp r3, #0
003efc68  0a 00 00 0a                                      beq #0x3efc98
003efc6c  00 40 a0 e3                                      mov r4, #0
003efc70  04 10 a0 e1                                      mov r1, r4
003efc74  07 00 a0 e1                                      mov r0, r7
003efc78  08 20 a0 e1                                      mov r2, r8
003efc7c  9a ff ff eb                                      bl #0x3efaec
003efc80  06 30 95 e7                                      ldr r3, [r5, r6]
003efc84  01 40 84 e2                                      add r4, r4, #1
003efc88  40 30 93 e5                                      ldr r3, [r3, #0x40]
003efc8c  c4 36 93 e5                                      ldr r3, [r3, #0x6c4]
003efc90  04 00 53 e1                                      cmp r3, r4
003efc94  f5 ff ff 8a                                      bhi #0x3efc70
003efc98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003efc9c  40 4e 5a 00 f4 37 00 00                          .byte 0x40, 0x4e, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003efca4, declared_size=208, range_size=208, mode=arm
; class-group: Level
; alias: _ZN5Level14_LoadFinalInitEv
; demangled: Level::_LoadFinalInit()
; decoder-mode: arm
003efca4  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003efca8  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
003efcac  70 40 2d e9                                      push {r4, r5, r6, lr}
003efcb0  03 30 8f e0                                      add r3, pc, r3
003efcb4  02 20 93 e7                                      ldr r2, [r3, r2]
003efcb8  10 d0 4d e2                                      sub sp, sp, #0x10
003efcbc  38 60 92 e5                                      ldr r6, [r2, #0x38]
003efcc0  14 40 96 e5                                      ldr r4, [r6, #0x14]
003efcc4  0c 60 86 e2                                      add r6, r6, #0xc
003efcc8  06 00 54 e1                                      cmp r4, r6
003efccc  17 00 00 0a                                      beq #0x3efd30
003efcd0  04 50 8d e2                                      add r5, sp, #4
003efcd4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003efcd8  00 00 51 e3                                      cmp r1, #0
003efcdc  08 00 00 0a                                      beq #0x3efd04
003efce0  05 00 a0 e1                                      mov r0, r5
003efce4  10 38 fd eb                                      bl #0x33dd2c
003efce8  05 00 a0 e1                                      mov r0, r5
003efcec  7c 40 fd eb                                      bl #0x33fee4
003efcf0  00 30 50 e2                                      subs r3, r0, #0
003efcf4  02 00 00 0a                                      beq #0x3efd04
003efcf8  00 30 93 e5                                      ldr r3, [r3]
003efcfc  0f e0 a0 e1                                      mov lr, pc
003efd00  58 f0 93 e5                                      ldr pc, [r3, #0x58]
003efd04  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003efd08  00 00 52 e3                                      cmp r2, #0
003efd0c  01 00 00 1a                                      bne #0x3efd18
003efd10  08 00 00 ea                                      b #0x3efd38
003efd14  03 20 a0 e1                                      mov r2, r3
003efd18  08 30 92 e5                                      ldr r3, [r2, #8]
003efd1c  00 00 53 e3                                      cmp r3, #0
003efd20  fb ff ff 1a                                      bne #0x3efd14
003efd24  02 40 a0 e1                                      mov r4, r2
003efd28  04 00 56 e1                                      cmp r6, r4
003efd2c  e8 ff ff 1a                                      bne #0x3efcd4
003efd30  10 d0 8d e2                                      add sp, sp, #0x10
003efd34  70 80 bd e8                                      pop {r4, r5, r6, pc}
003efd38  04 30 94 e5                                      ldr r3, [r4, #4]
003efd3c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003efd40  01 00 54 e1                                      cmp r4, r1
003efd44  05 00 00 1a                                      bne #0x3efd60
003efd48  03 40 a0 e1                                      mov r4, r3
003efd4c  04 30 93 e5                                      ldr r3, [r3, #4]
003efd50  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003efd54  04 00 52 e1                                      cmp r2, r4
003efd58  fa ff ff 0a                                      beq #0x3efd48
003efd5c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003efd60  03 00 52 e1                                      cmp r2, r3
003efd64  03 40 a0 11                                      movne r4, r3
003efd68  ee ff ff ea                                      b #0x3efd28
; mapping-symbol data/literal pool
003efd6c  e0 4d 5a 00 f4 37 00 00                          .byte 0xe0, 0x4d, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003efd74, declared_size=228, range_size=228, mode=arm
; class-group: Level
; alias: _ZN5Level13ResetSkinningEv
; demangled: Level::ResetSkinning()
; decoder-mode: arm
003efd74  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
003efd78  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
003efd7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003efd80  03 30 8f e0                                      add r3, pc, r3
003efd84  02 20 93 e7                                      ldr r2, [r3, r2]
003efd88  14 d0 4d e2                                      sub sp, sp, #0x14
003efd8c  38 60 92 e5                                      ldr r6, [r2, #0x38]
003efd90  14 40 96 e5                                      ldr r4, [r6, #0x14]
003efd94  0c 60 86 e2                                      add r6, r6, #0xc
003efd98  06 00 54 e1                                      cmp r4, r6
003efd9c  1c 00 00 0a                                      beq #0x3efe14
003efda0  04 50 8d e2                                      add r5, sp, #4
003efda4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003efda8  00 00 51 e3                                      cmp r1, #0
003efdac  0d 00 00 0a                                      beq #0x3efde8
003efdb0  05 00 a0 e1                                      mov r0, r5
003efdb4  dc 37 fd eb                                      bl #0x33dd2c
003efdb8  05 00 a0 e1                                      mov r0, r5
003efdbc  48 40 fd eb                                      bl #0x33fee4
003efdc0  00 70 50 e2                                      subs r7, r0, #0
003efdc4  07 00 00 0a                                      beq #0x3efde8
003efdc8  d8 02 97 e5                                      ldr r0, [r7, #0x2d8]
003efdcc  00 00 50 e3                                      cmp r0, #0
003efdd0  04 00 00 0a                                      beq #0x3efde8
003efdd4  0c 07 02 eb                                      bl #0x471a0c
003efdd8  d8 02 97 e5                                      ldr r0, [r7, #0x2d8]
003efddc  c3 04 02 eb                                      bl #0x4710f0
003efde0  d8 02 97 e5                                      ldr r0, [r7, #0x2d8]
003efde4  2d 10 02 eb                                      bl #0x473ea0
003efde8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003efdec  00 00 52 e3                                      cmp r2, #0
003efdf0  01 00 00 1a                                      bne #0x3efdfc
003efdf4  08 00 00 ea                                      b #0x3efe1c
003efdf8  03 20 a0 e1                                      mov r2, r3
003efdfc  08 30 92 e5                                      ldr r3, [r2, #8]
003efe00  00 00 53 e3                                      cmp r3, #0
003efe04  fb ff ff 1a                                      bne #0x3efdf8
003efe08  02 40 a0 e1                                      mov r4, r2
003efe0c  04 00 56 e1                                      cmp r6, r4
003efe10  e3 ff ff 1a                                      bne #0x3efda4
003efe14  14 d0 8d e2                                      add sp, sp, #0x14
003efe18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003efe1c  04 30 94 e5                                      ldr r3, [r4, #4]
003efe20  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003efe24  01 00 54 e1                                      cmp r4, r1
003efe28  05 00 00 1a                                      bne #0x3efe44
003efe2c  03 40 a0 e1                                      mov r4, r3
003efe30  04 30 93 e5                                      ldr r3, [r3, #4]
003efe34  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003efe38  04 00 52 e1                                      cmp r2, r4
003efe3c  fa ff ff 0a                                      beq #0x3efe2c
003efe40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003efe44  03 00 52 e1                                      cmp r2, r3
003efe48  03 40 a0 11                                      movne r4, r3
003efe4c  ee ff ff ea                                      b #0x3efe0c
; mapping-symbol data/literal pool
003efe50  10 4d 5a 00 f4 37 00 00                          .byte 0x10, 0x4d, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003eff98, declared_size=128, range_size=128, mode=arm
; class-group: Level
; alias: _ZN5Level15_LoadCharStatesEv
; demangled: Level::_LoadCharStates()
; decoder-mode: arm
003eff98  70 30 9f e5                                      ldr r3, [pc, #0x70]
003eff9c  70 20 9f e5                                      ldr r2, [pc, #0x70]
003effa0  70 40 2d e9                                      push {r4, r5, r6, lr}
003effa4  03 30 8f e0                                      add r3, pc, r3
003effa8  02 20 93 e7                                      ldr r2, [r3, r2]
003effac  38 60 92 e5                                      ldr r6, [r2, #0x38]
003effb0  60 40 b6 e5                                      ldr r4, [r6, #0x60]!
003effb4  04 00 56 e1                                      cmp r6, r4
003effb8  0e 00 00 0a                                      beq #0x3efff8
003effbc  08 50 94 e5                                      ldr r5, [r4, #8]
003effc0  00 00 55 e2                                      subs r0, r5, #0
003effc4  08 00 00 0a                                      beq #0x3effec
003effc8  ed d5 fe eb                                      bl #0x3a5784
003effcc  00 30 50 e2                                      subs r3, r0, #0
003effd0  09 00 00 0a                                      beq #0x3efffc
003effd4  4f 0e 85 e2                                      add r0, r5, #0x4f0
003effd8  11 00 53 e3                                      cmp r3, #0x11
003effdc  0c 00 80 e2                                      add r0, r0, #0xc
003effe0  00 10 a0 e3                                      mov r1, #0
003effe4  04 00 00 0a                                      beq #0x3efffc
003effe8  84 46 ff eb                                      bl #0x3c1a00
003effec  00 40 94 e5                                      ldr r4, [r4]
003efff0  04 00 56 e1                                      cmp r6, r4
003efff4  f0 ff ff 1a                                      bne #0x3effbc
003efff8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003efffc  4f 0e 85 e2                                      add r0, r5, #0x4f0
003f0000  0c 00 80 e2                                      add r0, r0, #0xc
003f0004  96 46 ff eb                                      bl #0x3c1a64
003f0008  00 40 94 e5                                      ldr r4, [r4]
003f000c  f7 ff ff ea                                      b #0x3efff0
; mapping-symbol data/literal pool
003f0010  ec 4a 5a 00 f4 37 00 00                          .byte 0xec, 0x4a, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f0018, declared_size=432, range_size=432, mode=arm
; class-group: Level
; alias: _ZN5Level11_LoadPlayerEv
; demangled: Level::_LoadPlayer()
; decoder-mode: arm
003f0018  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f001c  9c 81 9f e5                                      ldr r8, [pc, #0x19c]
003f0020  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
003f0024  00 70 a0 e1                                      mov r7, r0
003f0028  08 80 8f e0                                      add r8, pc, r8
003f002c  02 30 98 e7                                      ldr r3, [r8, r2]
003f0030  1c d0 4d e2                                      sub sp, sp, #0x1c
003f0034  04 20 8d e5                                      str r2, [sp, #4]
003f0038  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f003c  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003f0040  00 00 53 e3                                      cmp r3, #0
003f0044  32 00 00 da                                      ble #0x3f0114
003f0048  00 60 a0 e3                                      mov r6, #0
003f004c  0c 40 8d e2                                      add r4, sp, #0xc
003f0050  06 10 a0 e1                                      mov r1, r6
003f0054  01 20 a0 e3                                      mov r2, #1
003f0058  06 f9 fd eb                                      bl #0x36e478
003f005c  60 b6 90 e5                                      ldr fp, [r0, #0x660]
003f0060  00 00 5b e3                                      cmp fp, #0
003f0064  45 00 00 0a                                      beq #0x3f0180
003f0068  04 20 9d e5                                      ldr r2, [sp, #4]
003f006c  02 30 98 e7                                      ldr r3, [r8, r2]
003f0070  38 30 93 e5                                      ldr r3, [r3, #0x38]
003f0074  14 a0 93 e5                                      ldr sl, [r3, #0x14]
003f0078  0c 90 83 e2                                      add sb, r3, #0xc
003f007c  09 00 5a e1                                      cmp sl, sb
003f0080  3e 00 00 0a                                      beq #0x3f0180
003f0084  2c 10 9a e5                                      ldr r1, [sl, #0x2c]
003f0088  00 00 51 e3                                      cmp r1, #0
003f008c  0a 00 00 0a                                      beq #0x3f00bc
003f0090  04 00 a0 e1                                      mov r0, r4
003f0094  24 37 fd eb                                      bl #0x33dd2c
003f0098  04 00 a0 e1                                      mov r0, r4
003f009c  00 10 a0 e3                                      mov r1, #0
003f00a0  46 3f fd eb                                      bl #0x33fdc0
003f00a4  00 00 50 e3                                      cmp r0, #0
003f00a8  02 00 00 0a                                      beq #0x3f00b8
003f00ac  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
003f00b0  0d 00 53 e3                                      cmp r3, #0xd
003f00b4  18 00 00 0a                                      beq #0x3f011c
003f00b8  00 50 a0 e3                                      mov r5, #0
003f00bc  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003f00c0  00 10 a0 e3                                      mov r1, #0
003f00c4  00 00 52 e3                                      cmp r2, #0
003f00c8  1f 00 00 0a                                      beq #0x3f014c
003f00cc  02 a0 a0 e1                                      mov sl, r2
003f00d0  00 00 00 ea                                      b #0x3f00d8
003f00d4  03 a0 a0 e1                                      mov sl, r3
003f00d8  08 30 9a e5                                      ldr r3, [sl, #8]
003f00dc  00 00 53 e3                                      cmp r3, #0
003f00e0  fb ff ff 1a                                      bne #0x3f00d4
003f00e4  00 00 51 e3                                      cmp r1, #0
003f00e8  e3 ff ff 0a                                      beq #0x3f007c
003f00ec  04 30 9d e5                                      ldr r3, [sp, #4]
003f00f0  03 a0 98 e7                                      ldr sl, [r8, r3]
003f00f4  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f00f8  d0 36 d0 e5                                      ldrb r3, [r0, #0x6d0]
003f00fc  00 00 53 e3                                      cmp r3, #0
003f0100  22 00 00 0a                                      beq #0x3f0190
003f0104  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003f0108  01 60 86 e2                                      add r6, r6, #1
003f010c  03 00 56 e1                                      cmp r6, r3
003f0110  ce ff ff ba                                      blt #0x3f0050
003f0114  1c d0 8d e2                                      add sp, sp, #0x1c
003f0118  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f011c  8a 30 d0 e5                                      ldrb r3, [r0, #0x8a]
003f0120  00 50 a0 e1                                      mov r5, r0
003f0124  00 00 53 e3                                      cmp r3, #0
003f0128  e3 ff ff 0a                                      beq #0x3f00bc
003f012c  74 33 90 e5                                      ldr r3, [r0, #0x374]
003f0130  10 21 97 e5                                      ldr r2, [r7, #0x110]
003f0134  03 00 52 e1                                      cmp r2, r3
003f0138  01 10 a0 03                                      moveq r1, #1
003f013c  de ff ff 1a                                      bne #0x3f00bc
003f0140  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003f0144  00 00 52 e3                                      cmp r2, #0
003f0148  df ff ff 1a                                      bne #0x3f00cc
003f014c  04 30 9a e5                                      ldr r3, [sl, #4]
003f0150  0c 00 93 e5                                      ldr r0, [r3, #0xc]
003f0154  0a 00 50 e1                                      cmp r0, sl
003f0158  05 00 00 1a                                      bne #0x3f0174
003f015c  03 a0 a0 e1                                      mov sl, r3
003f0160  04 30 93 e5                                      ldr r3, [r3, #4]
003f0164  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003f0168  02 00 5a e1                                      cmp sl, r2
003f016c  fa ff ff 0a                                      beq #0x3f015c
003f0170  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003f0174  02 00 53 e1                                      cmp r3, r2
003f0178  03 a0 a0 11                                      movne sl, r3
003f017c  d8 ff ff ea                                      b #0x3f00e4
003f0180  04 20 9d e5                                      ldr r2, [sp, #4]
003f0184  02 30 98 e7                                      ldr r3, [r8, r2]
003f0188  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f018c  dc ff ff ea                                      b #0x3f0104
003f0190  0b 10 a0 e1                                      mov r1, fp
003f0194  05 00 a0 e1                                      mov r0, r5
003f0198  23 e8 ff eb                                      bl #0x3ea22c
003f019c  0b 00 a0 e1                                      mov r0, fp
003f01a0  16 1e 8b e2                                      add r1, fp, #0x160
003f01a4  d2 d5 fe eb                                      bl #0x3a58f4
003f01a8  0b 00 a0 e1                                      mov r0, fp
003f01ac  10 11 97 e5                                      ldr r1, [r7, #0x110]
003f01b0  00 20 e0 e3                                      mvn r2, #0
003f01b4  b8 2d ff eb                                      bl #0x3bb89c
003f01b8  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f01bc  d0 ff ff ea                                      b #0x3f0104
; mapping-symbol data/literal pool
003f01c0  68 4a 5a 00 f4 37 00 00                          .byte 0x68, 0x4a, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f01c8, declared_size=228, range_size=228, mode=arm
; class-group: Level
; alias: _ZN5Level12_LoadFromXMLEP12TiXmlElement
; demangled: Level::_LoadFromXML(TiXmlElement*)
; decoder-mode: arm
003f01c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003f01cc  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
003f01d0  00 50 51 e2                                      subs r5, r1, #0
003f01d4  08 d0 4d e2                                      sub sp, sp, #8
003f01d8  00 60 a0 e1                                      mov r6, r0
003f01dc  04 40 8f e0                                      add r4, pc, r4
003f01e0  13 00 00 0a                                      beq #0x3f0234
003f01e4  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003f01e8  05 00 a0 e1                                      mov r0, r5
003f01ec  01 10 8f e0                                      add r1, pc, r1
003f01f0  9e 92 04 eb                                      bl #0x514c70
003f01f4  94 10 9f e5                                      ldr r1, [pc, #0x94]
003f01f8  01 10 8f e0                                      add r1, pc, r1
003f01fc  46 78 fc eb                                      bl #0x30e31c
003f0200  00 00 50 e3                                      cmp r0, #0
003f0204  08 00 00 0a                                      beq #0x3f022c
003f0208  84 30 9f e5                                      ldr r3, [pc, #0x84]
003f020c  8c c1 96 e5                                      ldr ip, [r6, #0x18c]
003f0210  05 10 a0 e1                                      mov r1, r5
003f0214  03 00 94 e7                                      ldr r0, [r4, r3]
003f0218  00 20 a0 e3                                      mov r2, #0
003f021c  16 3e 86 e2                                      add r3, r6, #0x160
003f0220  38 00 90 e5                                      ldr r0, [r0, #0x38]
003f0224  00 c0 8d e5                                      str ip, [sp]
003f0228  8e 6d fd eb                                      bl #0x34b868
003f022c  08 d0 8d e2                                      add sp, sp, #8
003f0230  70 80 bd e8                                      pop {r4, r5, r6, pc}
003f0234  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003f0238  03 30 94 e7                                      ldr r3, [r4, r3]
003f023c  00 30 93 e5                                      ldr r3, [r3]
003f0240  02 00 53 e3                                      cmp r3, #2
003f0244  00 50 85 05                                      streq r5, [r5]
003f0248  e5 ff ff 0a                                      beq #0x3f01e4
003f024c  01 00 53 e3                                      cmp r3, #1
003f0250  e3 ff ff 1a                                      bne #0x3f01e4
003f0254  40 00 9f e5                                      ldr r0, [pc, #0x40]
003f0258  40 10 9f e5                                      ldr r1, [pc, #0x40]
003f025c  40 20 9f e5                                      ldr r2, [pc, #0x40]
003f0260  00 00 94 e7                                      ldr r0, [r4, r0]
003f0264  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003f0268  de c8 00 e3                                      movw ip, #0x8de
003f026c  01 10 8f e0                                      add r1, pc, r1
003f0270  02 20 8f e0                                      add r2, pc, r2
003f0274  03 30 8f e0                                      add r3, pc, r3
003f0278  a8 00 80 e2                                      add r0, r0, #0xa8
003f027c  00 c0 8d e5                                      str ip, [sp]
003f0280  5f 77 fc eb                                      bl #0x30e004
003f0284  d6 ff ff ea                                      b #0x3f01e4
; mapping-symbol data/literal pool
003f0288  b4 48 5a 00 8c ff 4c 00 d0 01 4d 00 f4 37 00 00  .byte 0xb4, 0x48, 0x5a, 0x00, 0x8c, 0xff, 0x4c, 0x00, 0xd0, 0x01, 0x4d, 0x00, 0xf4, 0x37, 0x00, 0x00
003f0298  c0 39 00 00 c0 19 00 00 6c e1 4c 00 c8 01 4d 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x6c, 0xe1, 0x4c, 0x00, 0xc8, 0x01, 0x4d, 0x00
003f02a8  9c 62 4d 00                                      .byte 0x9c, 0x62, 0x4d, 0x00

; FUNCTION 0x003f02ac, declared_size=100, range_size=100, mode=arm
; class-group: Level
; alias: _ZN5Level25AssignSteamToLoadDataFileER12StreamBuffer
; demangled: Level::AssignSteamToLoadDataFile(StreamBuffer&)
; decoder-mode: arm
003f02ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f02b0  00 60 a0 e1                                      mov r6, r0
003f02b4  01 70 a0 e1                                      mov r7, r1
003f02b8  50 00 a0 e3                                      mov r0, #0x50
003f02bc  00 10 a0 e3                                      mov r1, #0
003f02c0  aa 80 fc eb                                      bl #0x310570
003f02c4  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
003f02c8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003f02cc  00 40 a0 e1                                      mov r4, r0
003f02d0  05 50 8f e0                                      add r5, pc, r5
003f02d4  03 30 95 e7                                      ldr r3, [r5, r3]
003f02d8  07 10 a0 e1                                      mov r1, r7
003f02dc  08 30 83 e2                                      add r3, r3, #8
003f02e0  08 30 80 e4                                      str r3, [r0], #8
003f02e4  fb 9b fc eb                                      bl #0x3172d8
003f02e8  00 30 a0 e3                                      mov r3, #0
003f02ec  48 30 c4 e5                                      strb r3, [r4, #0x48]
003f02f0  38 30 84 e5                                      str r3, [r4, #0x38]
003f02f4  3c 30 84 e5                                      str r3, [r4, #0x3c]
003f02f8  40 30 84 e5                                      str r3, [r4, #0x40]
003f02fc  44 30 84 e5                                      str r3, [r4, #0x44]
003f0300  40 41 86 e5                                      str r4, [r6, #0x140]
003f0304  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003f0308  c0 47 5a 00 20 22 00 00                          .byte 0xc0, 0x47, 0x5a, 0x00, 0x20, 0x22, 0x00, 0x00

; FUNCTION 0x003f0428, declared_size=140, range_size=140, mode=arm
; class-group: Level
; alias: _ZN5Level14LoadCheckpointEv
; demangled: Level::LoadCheckpoint()
; decoder-mode: arm
003f0428  70 40 2d e9                                      push {r4, r5, r6, lr}
003f042c  00 40 a0 e1                                      mov r4, r0
003f0430  ec 00 90 e5                                      ldr r0, [r0, #0xec]
003f0434  70 50 9f e5                                      ldr r5, [pc, #0x70]
003f0438  01 30 a0 e3                                      mov r3, #1
003f043c  00 00 50 e3                                      cmp r0, #0
003f0440  f4 30 c4 e5                                      strb r3, [r4, #0xf4]
003f0444  05 50 8f e0                                      add r5, pc, r5
003f0448  05 00 00 0a                                      beq #0x3f0464
003f044c  14 11 94 e5                                      ldr r1, [r4, #0x114]
003f0450  40 20 94 e5                                      ldr r2, [r4, #0x40]
003f0454  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003f0458  4f c8 01 eb                                      bl #0x46259c
003f045c  94 01 94 e5                                      ldr r0, [r4, #0x194]
003f0460  31 25 02 eb                                      bl #0x47992c
003f0464  44 30 9f e5                                      ldr r3, [pc, #0x44]
003f0468  00 10 a0 e3                                      mov r1, #0
003f046c  01 20 a0 e3                                      mov r2, #1
003f0470  03 30 95 e7                                      ldr r3, [r5, r3]
003f0474  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f0478  fe f7 fd eb                                      bl #0x36e478
003f047c  60 56 90 e5                                      ldr r5, [r0, #0x660]
003f0480  00 00 55 e3                                      cmp r5, #0
003f0484  05 00 00 0a                                      beq #0x3f04a0
003f0488  10 10 a0 e3                                      mov r1, #0x10
003f048c  05 00 a0 e1                                      mov r0, r5
003f0490  09 30 ff eb                                      bl #0x3bc4bc
003f0494  05 00 a0 e1                                      mov r0, r5
003f0498  01 10 a0 e3                                      mov r1, #1
003f049c  f7 2f ff eb                                      bl #0x3bc480
003f04a0  00 30 a0 e3                                      mov r3, #0
003f04a4  f4 30 c4 e5                                      strb r3, [r4, #0xf4]
003f04a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f04ac  4c 46 5a 00 f4 37 00 00                          .byte 0x4c, 0x46, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f04b4, declared_size=232, range_size=232, mode=arm
; class-group: Level
; alias: _ZN5Level14CheckpointSaveERK7Point3DIfEb
; demangled: Level::CheckpointSave(Point3D<float> const&, bool)
; decoder-mode: arm
003f04b4  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003f04b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f04bc  00 40 a0 e1                                      mov r4, r0
003f04c0  d0 00 9f e5                                      ldr r0, [pc, #0xd0]
003f04c4  03 30 8f e0                                      add r3, pc, r3
003f04c8  01 50 a0 e1                                      mov r5, r1
003f04cc  00 00 93 e7                                      ldr r0, [r3, r0]
003f04d0  02 60 a0 e1                                      mov r6, r2
003f04d4  00 10 a0 e3                                      mov r1, #0
003f04d8  40 00 90 e5                                      ldr r0, [r0, #0x40]
003f04dc  01 20 a0 e3                                      mov r2, #1
003f04e0  e4 f7 fd eb                                      bl #0x36e478
003f04e4  ec 30 94 e5                                      ldr r3, [r4, #0xec]
003f04e8  60 76 90 e5                                      ldr r7, [r0, #0x660]
003f04ec  00 00 53 e3                                      cmp r3, #0
003f04f0  26 00 00 0a                                      beq #0x3f0590
003f04f4  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f04f8  21 00 53 e3                                      cmp r3, #0x21
003f04fc  23 00 00 da                                      ble #0x3f0590
003f0500  00 00 57 e3                                      cmp r7, #0
003f0504  21 00 00 0a                                      beq #0x3f0590
003f0508  00 30 97 e5                                      ldr r3, [r7]
003f050c  07 00 a0 e1                                      mov r0, r7
003f0510  0f e0 a0 e1                                      mov lr, pc
003f0514  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003f0518  00 00 50 e3                                      cmp r0, #0
003f051c  1b 00 00 1a                                      bne #0x3f0590
003f0520  00 20 95 e5                                      ldr r2, [r5]
003f0524  68 34 01 e3                                      movw r3, #0x1468
003f0528  00 00 56 e3                                      cmp r6, #0
003f052c  03 20 87 e7                                      str r2, [r7, r3]
003f0530  04 20 95 e5                                      ldr r2, [r5, #4]
003f0534  6c 34 01 e3                                      movw r3, #0x146c
003f0538  07 00 a0 e1                                      mov r0, r7
003f053c  03 20 87 e7                                      str r2, [r7, r3]
003f0540  08 20 95 e5                                      ldr r2, [r5, #8]
003f0544  70 34 01 e3                                      movw r3, #0x1470
003f0548  16 5e 87 02                                      addeq r5, r7, #0x160
003f054c  03 20 87 e7                                      str r2, [r7, r3]
003f0550  00 20 95 e5                                      ldr r2, [r5]
003f0554  74 34 01 e3                                      movw r3, #0x1474
003f0558  03 20 87 e7                                      str r2, [r7, r3]
003f055c  04 20 95 e5                                      ldr r2, [r5, #4]
003f0560  78 34 01 e3                                      movw r3, #0x1478
003f0564  03 20 87 e7                                      str r2, [r7, r3]
003f0568  08 20 95 e5                                      ldr r2, [r5, #8]
003f056c  7c 34 01 e3                                      movw r3, #0x147c
003f0570  03 20 87 e7                                      str r2, [r7, r3]
003f0574  c6 2f ff eb                                      bl #0x3bc494
003f0578  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003f057c  ec 00 94 e5                                      ldr r0, [r4, #0xec]
003f0580  14 11 94 e5                                      ldr r1, [r4, #0x114]
003f0584  40 20 94 e5                                      ldr r2, [r4, #0x40]
003f0588  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003f058c  e7 ca 01 ea                                      b #0x463130
003f0590  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003f0594  cc 45 5a 00 f4 37 00 00                          .byte 0xcc, 0x45, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f059c, declared_size=244, range_size=244, mode=arm
; class-group: Level
; alias: _ZN5Level9QuickSaveEb
; demangled: Level::QuickSave(bool)
; decoder-mode: arm
003f059c  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003f05a0  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
003f05a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f05a8  03 30 8f e0                                      add r3, pc, r3
003f05ac  02 50 93 e7                                      ldr r5, [r3, r2]
003f05b0  00 40 a0 e1                                      mov r4, r0
003f05b4  01 60 a0 e1                                      mov r6, r1
003f05b8  01 20 a0 e3                                      mov r2, #1
003f05bc  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f05c0  00 10 a0 e3                                      mov r1, #0
003f05c4  ab f7 fd eb                                      bl #0x36e478
003f05c8  ec 30 94 e5                                      ldr r3, [r4, #0xec]
003f05cc  60 76 90 e5                                      ldr r7, [r0, #0x660]
003f05d0  00 00 53 e3                                      cmp r3, #0
003f05d4  02 00 00 0a                                      beq #0x3f05e4
003f05d8  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f05dc  26 00 53 e3                                      cmp r3, #0x26
003f05e0  00 00 00 0a                                      beq #0x3f05e8
003f05e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f05e8  00 00 57 e3                                      cmp r7, #0
003f05ec  fc ff ff 0a                                      beq #0x3f05e4
003f05f0  00 30 97 e5                                      ldr r3, [r7]
003f05f4  07 00 a0 e1                                      mov r0, r7
003f05f8  0f e0 a0 e1                                      mov lr, pc
003f05fc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003f0600  00 00 50 e3                                      cmp r0, #0
003f0604  f6 ff ff 1a                                      bne #0x3f05e4
003f0608  61 34 10 eb                                      bl #0x7fd794
003f060c  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f0610  00 00 53 e3                                      cmp r3, #0
003f0614  12 00 00 1a                                      bne #0x3f0664
003f0618  68 01 97 e5                                      ldr r0, [r7, #0x168]
003f061c  60 11 97 e5                                      ldr r1, [r7, #0x160]
003f0620  64 21 97 e5                                      ldr r2, [r7, #0x164]
003f0624  70 34 01 e3                                      movw r3, #0x1470
003f0628  03 00 87 e7                                      str r0, [r7, r3]
003f062c  68 34 01 e3                                      movw r3, #0x1468
003f0630  03 10 87 e7                                      str r1, [r7, r3]
003f0634  6c 34 01 e3                                      movw r3, #0x146c
003f0638  03 20 87 e7                                      str r2, [r7, r3]
003f063c  ec 00 94 e5                                      ldr r0, [r4, #0xec]
003f0640  00 00 56 e3                                      cmp r6, #0
003f0644  00 30 a0 13                                      movne r3, #0
003f0648  39 50 d0 e5                                      ldrb r5, [r0, #0x39]
003f064c  39 30 c0 15                                      strbne r3, [r0, #0x39]
003f0650  ec 00 94 15                                      ldrne r0, [r4, #0xec]
003f0654  e4 c3 01 eb                                      bl #0x4615ec
003f0658  ec 30 94 e5                                      ldr r3, [r4, #0xec]
003f065c  39 50 c3 e5                                      strb r5, [r3, #0x39]
003f0660  df ff ff ea                                      b #0x3f05e4
003f0664  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f0668  81 fa fd eb                                      bl #0x36f074
003f066c  00 00 50 e3                                      cmp r0, #0
003f0670  db ff ff 0a                                      beq #0x3f05e4
003f0674  40 30 95 e5                                      ldr r3, [r5, #0x40]
003f0678  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
003f067c  00 00 53 e3                                      cmp r3, #0
003f0680  d7 ff ff 1a                                      bne #0x3f05e4
003f0684  e3 ff ff ea                                      b #0x3f0618
; mapping-symbol data/literal pool
003f0688  e8 44 5a 00 f4 37 00 00                          .byte 0xe8, 0x44, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f0690, declared_size=288, range_size=288, mode=arm
; class-group: Level
; alias: _ZN5Level6UnloadEv
; demangled: Level::Unload()
; decoder-mode: arm
003f0690  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f0694  f0 10 d0 e5                                      ldrb r1, [r0, #0xf0]
003f0698  00 40 a0 e1                                      mov r4, r0
003f069c  be ff ff eb                                      bl #0x3f059c
003f06a0  f9 f0 00 eb                                      bl #0x42ca8c
003f06a4  ec 10 9f e5                                      ldr r1, [pc, #0xec]
003f06a8  00 70 a0 e1                                      mov r7, r0
003f06ac  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
003f06b0  01 10 8f e0                                      add r1, pc, r1
003f06b4  cd f2 00 eb                                      bl #0x42d1f0
003f06b8  00 60 a0 e1                                      mov r6, r0
003f06bc  06 10 a0 e1                                      mov r1, r6
003f06c0  07 00 a0 e1                                      mov r0, r7
003f06c4  47 04 01 eb                                      bl #0x4317e8
003f06c8  28 31 94 e5                                      ldr r3, [r4, #0x128]
003f06cc  05 50 8f e0                                      add r5, pc, r5
003f06d0  00 00 53 e3                                      cmp r3, #0
003f06d4  05 00 00 0a                                      beq #0x3f06f0
003f06d8  03 00 a0 e1                                      mov r0, r3
003f06dc  00 30 93 e5                                      ldr r3, [r3]
003f06e0  0f e0 a0 e1                                      mov lr, pc
003f06e4  04 f0 93 e5                                      ldr pc, [r3, #4]
003f06e8  00 30 a0 e3                                      mov r3, #0
003f06ec  28 31 84 e5                                      str r3, [r4, #0x128]
003f06f0  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
003f06f4  00 00 53 e3                                      cmp r3, #0
003f06f8  05 00 00 0a                                      beq #0x3f0714
003f06fc  03 00 a0 e1                                      mov r0, r3
003f0700  00 30 93 e5                                      ldr r3, [r3]
003f0704  0f e0 a0 e1                                      mov lr, pc
003f0708  04 f0 93 e5                                      ldr pc, [r3, #4]
003f070c  00 30 a0 e3                                      mov r3, #0
003f0710  2c 31 84 e5                                      str r3, [r4, #0x12c]
003f0714  04 00 a0 e1                                      mov r0, r4
003f0718  f0 10 d4 e5                                      ldrb r1, [r4, #0xf0]
003f071c  47 fd ff eb                                      bl #0x3efc40
003f0720  78 30 9f e5                                      ldr r3, [pc, #0x78]
003f0724  7d 1f a0 e3                                      mov r1, #0x1f4
003f0728  03 30 95 e7                                      ldr r3, [r5, r3]
003f072c  00 00 93 e5                                      ldr r0, [r3]
003f0730  96 e4 fd eb                                      bl #0x369990
003f0734  06 00 a0 e1                                      mov r0, r6
003f0738  2d bb 00 eb                                      bl #0x41f3f4
003f073c  00 00 50 e3                                      cmp r0, #0
003f0740  02 00 00 0a                                      beq #0x3f0750
003f0744  07 00 a0 e1                                      mov r0, r7
003f0748  06 10 a0 e1                                      mov r1, r6
003f074c  ad f6 00 eb                                      bl #0x42e208
003f0750  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003f0754  00 60 a0 e3                                      mov r6, #0
003f0758  30 61 84 e5                                      str r6, [r4, #0x130]
003f075c  03 40 95 e7                                      ldr r4, [r5, r3]
003f0760  38 00 94 e5                                      ldr r0, [r4, #0x38]
003f0764  16 41 fd eb                                      bl #0x340bc4
003f0768  40 30 94 e5                                      ldr r3, [r4, #0x40]
003f076c  03 00 a0 e1                                      mov r0, r3
003f0770  c9 66 c3 e5                                      strb r6, [r3, #0x6c9]
003f0774  0e 22 fe eb                                      bl #0x378fb4
003f0778  53 6a 08 eb                                      bl #0x60b0cc
003f077c  24 30 9f e5                                      ldr r3, [pc, #0x24]
003f0780  03 20 95 e7                                      ldr r2, [r5, r3]
003f0784  20 30 9f e5                                      ldr r3, [pc, #0x20]
003f0788  00 00 82 e5                                      str r0, [r2]
003f078c  03 30 95 e7                                      ldr r3, [r5, r3]
003f0790  00 60 83 e5                                      str r6, [r3]
003f0794  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003f0798  20 19 4d 00 c4 43 5a 00 a4 0d 00 00 f4 37 00 00  .byte 0x20, 0x19, 0x4d, 0x00, 0xc4, 0x43, 0x5a, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003f07a8  94 0c 00 00 10 0b 00 00                          .byte 0x94, 0x0c, 0x00, 0x00, 0x10, 0x0b, 0x00, 0x00

; FUNCTION 0x003f07b0, declared_size=72, range_size=72, mode=arm
; class-group: Level
; alias: _ZN5Level18SG_SaveLocalPlayerEb
; demangled: Level::SG_SaveLocalPlayer(bool)
; decoder-mode: arm
003f07b0  38 30 9f e5                                      ldr r3, [pc, #0x38]
003f07b4  38 20 9f e5                                      ldr r2, [pc, #0x38]
003f07b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003f07bc  03 30 8f e0                                      add r3, pc, r3
003f07c0  00 40 a0 e1                                      mov r4, r0
003f07c4  02 00 93 e7                                      ldr r0, [r3, r2]
003f07c8  01 50 a0 e1                                      mov r5, r1
003f07cc  01 20 a0 e3                                      mov r2, #1
003f07d0  00 10 a0 e3                                      mov r1, #0
003f07d4  40 00 90 e5                                      ldr r0, [r0, #0x40]
003f07d8  26 f7 fd eb                                      bl #0x36e478
003f07dc  60 16 90 e5                                      ldr r1, [r0, #0x660]
003f07e0  05 20 a0 e1                                      mov r2, r5
003f07e4  04 00 a0 e1                                      mov r0, r4
003f07e8  70 40 bd e8                                      pop {r4, r5, r6, lr}
003f07ec  98 fc ff ea                                      b #0x3efa54
; mapping-symbol data/literal pool
003f07f0  d4 42 5a 00 f4 37 00 00                          .byte 0xd4, 0x42, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f07f8, declared_size=160, range_size=160, mode=arm
; class-group: Level
; alias: _ZN5Level19GenerateRandomLevelER12StreamBufferj
; demangled: Level::GenerateRandomLevel(StreamBuffer&, unsigned int)
; decoder-mode: arm
003f07f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f07fc  4c 51 90 e5                                      ldr r5, [r0, #0x14c]
003f0800  00 40 a0 e1                                      mov r4, r0
003f0804  01 60 a0 e1                                      mov r6, r1
003f0808  00 00 55 e3                                      cmp r5, #0
003f080c  02 70 a0 e1                                      mov r7, r2
003f0810  05 00 00 0a                                      beq #0x3f082c
003f0814  05 00 a0 e1                                      mov r0, r5
003f0818  39 5f 02 eb                                      bl #0x488504
003f081c  05 00 a0 e1                                      mov r0, r5
003f0820  06 7f fc eb                                      bl #0x310440
003f0824  00 30 a0 e3                                      mov r3, #0
003f0828  4c 31 84 e5                                      str r3, [r4, #0x14c]
003f082c  00 10 a0 e3                                      mov r1, #0
003f0830  19 0e a0 e3                                      mov r0, #0x190
003f0834  4d 7f fc eb                                      bl #0x310570
003f0838  00 50 a0 e1                                      mov r5, r0
003f083c  90 5d 02 eb                                      bl #0x487e84
003f0840  4c 51 84 e5                                      str r5, [r4, #0x14c]
003f0844  05 00 a0 e1                                      mov r0, r5
003f0848  0c 11 94 e5                                      ldr r1, [r4, #0x10c]
003f084c  2d 63 02 eb                                      bl #0x489508
003f0850  07 10 a0 e1                                      mov r1, r7
003f0854  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
003f0858  35 5e 02 eb                                      bl #0x488134
003f085c  06 10 a0 e1                                      mov r1, r6
003f0860  00 50 a0 e1                                      mov r5, r0
003f0864  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
003f0868  c5 60 02 eb                                      bl #0x488b84
003f086c  4c 61 94 e5                                      ldr r6, [r4, #0x14c]
003f0870  00 00 56 e3                                      cmp r6, #0
003f0874  05 00 00 0a                                      beq #0x3f0890
003f0878  06 00 a0 e1                                      mov r0, r6
003f087c  20 5f 02 eb                                      bl #0x488504
003f0880  06 00 a0 e1                                      mov r0, r6
003f0884  ed 7e fc eb                                      bl #0x310440
003f0888  00 30 a0 e3                                      mov r3, #0
003f088c  4c 31 84 e5                                      str r3, [r4, #0x14c]
003f0890  05 00 a0 e1                                      mov r0, r5
003f0894  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003f0898, declared_size=584, range_size=584, mode=arm
; class-group: Level
; alias: _ZN5Level22PlaceFaeryAndFollowersEP9Character
; demangled: Level::PlaceFaeryAndFollowers(Character*)
; decoder-mode: arm
003f0898  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f089c  34 72 9f e5                                      ldr r7, [pc, #0x234]
003f08a0  34 82 9f e5                                      ldr r8, [pc, #0x234]
003f08a4  1c d0 4d e2                                      sub sp, sp, #0x1c
003f08a8  07 70 8f e0                                      add r7, pc, r7
003f08ac  08 30 97 e7                                      ldr r3, [r7, r8]
003f08b0  00 10 8d e5                                      str r1, [sp]
003f08b4  0c b0 8d e2                                      add fp, sp, #0xc
003f08b8  38 90 93 e5                                      ldr sb, [r3, #0x38]
003f08bc  60 60 b9 e5                                      ldr r6, [sb, #0x60]!
003f08c0  06 00 59 e1                                      cmp sb, r6
003f08c4  54 00 00 0a                                      beq #0x3f0a1c
003f08c8  08 50 96 e5                                      ldr r5, [r6, #8]
003f08cc  00 00 55 e3                                      cmp r5, #0
003f08d0  4e 00 00 0a                                      beq #0x3f0a10
003f08d4  05 00 a0 e1                                      mov r0, r5
003f08d8  ed c9 fe eb                                      bl #0x3a3094
003f08dc  00 00 50 e3                                      cmp r0, #0
003f08e0  4f 00 00 0a                                      beq #0x3f0a24
003f08e4  00 20 9d e5                                      ldr r2, [sp]
003f08e8  00 30 a0 e3                                      mov r3, #0
003f08ec  0c 30 8d e5                                      str r3, [sp, #0xc]
003f08f0  00 00 52 e3                                      cmp r2, #0
003f08f4  10 30 8d e5                                      str r3, [sp, #0x10]
003f08f8  14 30 8d e5                                      str r3, [sp, #0x14]
003f08fc  02 a0 a0 11                                      movne sl, r2
003f0900  57 00 00 0a                                      beq #0x3f0a64
003f0904  0b 10 a0 e1                                      mov r1, fp
003f0908  0a 00 a0 e1                                      mov r0, sl
003f090c  74 8c fe eb                                      bl #0x393ae4
003f0910  0a 00 a0 e1                                      mov r0, sl
003f0914  30 8b fe eb                                      bl #0x3935dc
003f0918  00 10 90 e5                                      ldr r1, [r0]
003f091c  00 40 a0 e1                                      mov r4, r0
003f0920  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003f0924  9e 78 fc eb                                      bl #0x30eba4
003f0928  0c 00 8d e5                                      str r0, [sp, #0xc]
003f092c  04 10 94 e5                                      ldr r1, [r4, #4]
003f0930  10 00 9d e5                                      ldr r0, [sp, #0x10]
003f0934  9a 78 fc eb                                      bl #0x30eba4
003f0938  10 00 8d e5                                      str r0, [sp, #0x10]
003f093c  08 10 94 e5                                      ldr r1, [r4, #8]
003f0940  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f0944  96 78 fc eb                                      bl #0x30eba4
003f0948  0b 10 a0 e1                                      mov r1, fp
003f094c  01 20 a0 e3                                      mov r2, #1
003f0950  14 00 8d e5                                      str r0, [sp, #0x14]
003f0954  05 00 a0 e1                                      mov r0, r5
003f0958  15 8d fe eb                                      bl #0x393db4
003f095c  05 00 a0 e1                                      mov r0, r5
003f0960  4a 8d fe eb                                      bl #0x393e90
003f0964  05 00 a0 e1                                      mov r0, r5
003f0968  c9 c9 fe eb                                      bl #0x3a3094
003f096c  00 00 50 e3                                      cmp r0, #0
003f0970  31 00 00 0a                                      beq #0x3f0a3c
003f0974  08 30 97 e7                                      ldr r3, [r7, r8]
003f0978  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f097c  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003f0980  00 00 53 e3                                      cmp r3, #0
003f0984  0c 00 00 da                                      ble #0x3f09bc
003f0988  00 40 a0 e3                                      mov r4, #0
003f098c  04 10 a0 e1                                      mov r1, r4
003f0990  00 20 a0 e3                                      mov r2, #0
003f0994  6a f7 fd eb                                      bl #0x36e744
003f0998  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f099c  01 40 84 e2                                      add r4, r4, #1
003f09a0  00 00 53 e3                                      cmp r3, #0
003f09a4  20 54 83 15                                      strne r5, [r3, #0x420]
003f09a8  08 30 97 e7                                      ldr r3, [r7, r8]
003f09ac  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f09b0  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
003f09b4  03 00 54 e1                                      cmp r4, r3
003f09b8  f3 ff ff ba                                      blt #0x3f098c
003f09bc  18 34 95 e5                                      ldr r3, [r5, #0x418]
003f09c0  00 10 a0 e3                                      mov r1, #0
003f09c4  01 20 a0 e3                                      mov r2, #1
003f09c8  04 30 8d e5                                      str r3, [sp, #4]
003f09cc  a9 f6 fd eb                                      bl #0x36e478
003f09d0  60 46 90 e5                                      ldr r4, [r0, #0x660]
003f09d4  00 00 54 e3                                      cmp r4, #0
003f09d8  1b 00 00 0a                                      beq #0x3f0a4c
003f09dc  f2 5f 85 e2                                      add r5, r5, #0x3c8
003f09e0  05 00 a0 e1                                      mov r0, r5
003f09e4  04 10 a0 e1                                      mov r1, r4
003f09e8  e4 90 ff eb                                      bl #0x3d4d80
003f09ec  04 00 a0 e1                                      mov r0, r4
003f09f0  00 10 e0 e3                                      mvn r1, #0
003f09f4  e4 2b ff eb                                      bl #0x3bb98c
003f09f8  00 10 a0 e1                                      mov r1, r0
003f09fc  0a 00 a0 e1                                      mov r0, sl
003f0a00  e5 f7 fe eb                                      bl #0x3ae99c
003f0a04  05 00 a0 e1                                      mov r0, r5
003f0a08  04 10 9d e5                                      ldr r1, [sp, #4]
003f0a0c  db 90 ff eb                                      bl #0x3d4d80
003f0a10  00 60 96 e5                                      ldr r6, [r6]
003f0a14  06 00 59 e1                                      cmp sb, r6
003f0a18  aa ff ff 1a                                      bne #0x3f08c8
003f0a1c  1c d0 8d e2                                      add sp, sp, #0x1c
003f0a20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f0a24  05 00 a0 e1                                      mov r0, r5
003f0a28  93 c9 fe eb                                      bl #0x3a307c
003f0a2c  00 00 50 e3                                      cmp r0, #0
003f0a30  ab ff ff 1a                                      bne #0x3f08e4
003f0a34  00 60 96 e5                                      ldr r6, [r6]
003f0a38  f5 ff ff ea                                      b #0x3f0a14
003f0a3c  05 00 a0 e1                                      mov r0, r5
003f0a40  ee 6e fe eb                                      bl #0x38c600
003f0a44  00 60 96 e5                                      ldr r6, [r6]
003f0a48  f1 ff ff ea                                      b #0x3f0a14
003f0a4c  f2 5f 85 e2                                      add r5, r5, #0x3c8
003f0a50  05 00 a0 e1                                      mov r0, r5
003f0a54  0a 10 a0 e1                                      mov r1, sl
003f0a58  c8 90 ff eb                                      bl #0x3d4d80
003f0a5c  0a 00 a0 e1                                      mov r0, sl
003f0a60  e2 ff ff ea                                      b #0x3f09f0
003f0a64  4a 33 10 eb                                      bl #0x7fd794
003f0a68  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f0a6c  00 00 53 e3                                      cmp r3, #0
003f0a70  0e 00 00 0a                                      beq #0x3f0ab0
003f0a74  08 40 97 e7                                      ldr r4, [r7, r8]
003f0a78  40 00 94 e5                                      ldr r0, [r4, #0x40]
003f0a7c  86 f5 fd eb                                      bl #0x36e09c
003f0a80  60 a6 90 e5                                      ldr sl, [r0, #0x660]
003f0a84  40 00 94 e5                                      ldr r0, [r4, #0x40]
003f0a88  79 f9 fd eb                                      bl #0x36f074
003f0a8c  00 00 50 e3                                      cmp r0, #0
003f0a90  0c 00 00 1a                                      bne #0x3f0ac8
003f0a94  40 00 94 e5                                      ldr r0, [r4, #0x40]
003f0a98  7f f5 fd eb                                      bl #0x36e09c
003f0a9c  70 36 90 e5                                      ldr r3, [r0, #0x670]
003f0aa0  00 20 a0 e3                                      mov r2, #0
003f0aa4  14 21 85 e5                                      str r2, [r5, #0x114]
003f0aa8  10 31 85 e5                                      str r3, [r5, #0x110]
003f0aac  05 00 00 ea                                      b #0x3f0ac8
003f0ab0  08 30 97 e7                                      ldr r3, [r7, r8]
003f0ab4  00 10 9d e5                                      ldr r1, [sp]
003f0ab8  01 20 a0 e3                                      mov r2, #1
003f0abc  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f0ac0  6c f6 fd eb                                      bl #0x36e478
003f0ac4  60 a6 90 e5                                      ldr sl, [r0, #0x660]
003f0ac8  00 00 5a e3                                      cmp sl, #0
003f0acc  8c ff ff 1a                                      bne #0x3f0904
003f0ad0  00 60 96 e5                                      ldr r6, [r6]
003f0ad4  ce ff ff ea                                      b #0x3f0a14
; mapping-symbol data/literal pool
003f0ad8  e8 41 5a 00 f4 37 00 00                          .byte 0xe8, 0x41, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f0ae0, declared_size=1320, range_size=1320, mode=arm
; class-group: Level
; alias: _ZN5Level14UpdateListenerEv
; demangled: Level::UpdateListener()
; decoder-mode: arm
003f0ae0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003f0ae4  d4 54 9f e5                                      ldr r5, [pc, #0x4d4]
003f0ae8  d4 44 9f e5                                      ldr r4, [pc, #0x4d4]
003f0aec  8c d0 4d e2                                      sub sp, sp, #0x8c
003f0af0  05 50 8f e0                                      add r5, pc, r5
003f0af4  04 30 95 e5                                      ldr r3, [r5, #4]
003f0af8  04 40 8f e0                                      add r4, pc, r4
003f0afc  00 60 a0 e1                                      mov r6, r0
003f0b00  01 00 13 e3                                      tst r3, #1
003f0b04  06 01 00 0a                                      beq #0x3f0f24
003f0b08  b8 24 9f e5                                      ldr r2, [pc, #0x4b8]
003f0b0c  00 30 a0 e3                                      mov r3, #0
003f0b10  48 30 8d e5                                      str r3, [sp, #0x48]
003f0b14  02 20 8f e0                                      add r2, pc, r2
003f0b18  08 20 92 e5                                      ldr r2, [r2, #8]
003f0b1c  64 30 8d e5                                      str r3, [sp, #0x64]
003f0b20  68 30 8d e5                                      str r3, [sp, #0x68]
003f0b24  6c 30 8d e5                                      str r3, [sp, #0x6c]
003f0b28  58 30 8d e5                                      str r3, [sp, #0x58]
003f0b2c  5c 30 8d e5                                      str r3, [sp, #0x5c]
003f0b30  60 30 8d e5                                      str r3, [sp, #0x60]
003f0b34  4c 30 8d e5                                      str r3, [sp, #0x4c]
003f0b38  50 30 8d e5                                      str r3, [sp, #0x50]
003f0b3c  54 30 8d e5                                      str r3, [sp, #0x54]
003f0b40  40 30 8d e5                                      str r3, [sp, #0x40]
003f0b44  44 30 8d e5                                      str r3, [sp, #0x44]
003f0b48  04 30 92 e5                                      ldr r3, [r2, #4]
003f0b4c  03 00 53 e3                                      cmp r3, #3
003f0b50  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003f0b54  36 00 00 ea                                      b #0x3f0c34
003f0b58  8f 00 00 ea                                      b #0x3f0d9c
003f0b5c  01 00 00 ea                                      b #0x3f0b68
003f0b60  d6 00 00 ea                                      b #0x3f0ec0
003f0b64  b8 00 00 ea                                      b #0x3f0e4c
003f0b68  5c 34 9f e5                                      ldr r3, [pc, #0x45c]
003f0b6c  00 10 a0 e3                                      mov r1, #0
003f0b70  01 20 a0 e3                                      mov r2, #1
003f0b74  03 50 94 e7                                      ldr r5, [r4, r3]
003f0b78  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f0b7c  3d f6 fd eb                                      bl #0x36e478
003f0b80  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f0b84  00 00 53 e3                                      cmp r3, #0
003f0b88  08 01 00 0a                                      beq #0x3f0fb0
003f0b8c  01 20 a0 e3                                      mov r2, #1
003f0b90  00 10 a0 e3                                      mov r1, #0
003f0b94  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f0b98  36 f6 fd eb                                      bl #0x36e478
003f0b9c  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f0ba0  8d 8a fe eb                                      bl #0x3935dc
003f0ba4  00 c0 90 e5                                      ldr ip, [r0]
003f0ba8  04 10 90 e5                                      ldr r1, [r0, #4]
003f0bac  08 20 90 e5                                      ldr r2, [r0, #8]
003f0bb0  10 30 95 e5                                      ldr r3, [r5, #0x10]
003f0bb4  64 c0 8d e5                                      str ip, [sp, #0x64]
003f0bb8  68 10 8d e5                                      str r1, [sp, #0x68]
003f0bbc  6c 20 8d e5                                      str r2, [sp, #0x6c]
003f0bc0  10 20 93 e5                                      ldr r2, [r3, #0x10]
003f0bc4  80 10 8d e2                                      add r1, sp, #0x80
003f0bc8  00 30 a0 e3                                      mov r3, #0
003f0bcc  cc 20 92 e5                                      ldr r2, [r2, #0xcc]
003f0bd0  64 00 8d e2                                      add r0, sp, #0x64
003f0bd4  04 20 12 e5                                      ldr r2, [r2, #-4]
003f0bd8  20 50 92 e5                                      ldr r5, [r2, #0x20]
003f0bdc  84 30 8d e5                                      str r3, [sp, #0x84]
003f0be0  80 30 8d e5                                      str r3, [sp, #0x80]
003f0be4  11 77 04 eb                                      bl #0x50e830
003f0be8  80 00 9d e5                                      ldr r0, [sp, #0x80]
003f0bec  5c 77 fc eb                                      bl #0x30e964
003f0bf0  78 00 8d e5                                      str r0, [sp, #0x78]
003f0bf4  05 00 a0 e1                                      mov r0, r5
003f0bf8  59 77 fc eb                                      bl #0x30e964
003f0bfc  00 20 a0 e3                                      mov r2, #0
003f0c00  7c 00 8d e5                                      str r0, [sp, #0x7c]
003f0c04  40 10 8d e2                                      add r1, sp, #0x40
003f0c08  78 00 8d e2                                      add r0, sp, #0x78
003f0c0c  5e 78 04 eb                                      bl #0x50ed8c
003f0c10  44 20 9d e5                                      ldr r2, [sp, #0x44]
003f0c14  b4 33 9f e5                                      ldr r3, [pc, #0x3b4]
003f0c18  68 20 8d e5                                      str r2, [sp, #0x68]
003f0c1c  40 20 9d e5                                      ldr r2, [sp, #0x40]
003f0c20  03 30 8f e0                                      add r3, pc, r3
003f0c24  64 20 8d e5                                      str r2, [sp, #0x64]
003f0c28  48 20 9d e5                                      ldr r2, [sp, #0x48]
003f0c2c  6c 20 8d e5                                      str r2, [sp, #0x6c]
003f0c30  08 20 93 e5                                      ldr r2, [r3, #8]
003f0c34  0c 50 92 e5                                      ldr r5, [r2, #0xc]
003f0c38  01 00 55 e3                                      cmp r5, #1
003f0c3c  68 00 00 0a                                      beq #0x3f0de4
003f0c40  02 00 55 e3                                      cmp r5, #2
003f0c44  c5 00 00 0a                                      beq #0x3f0f60
003f0c48  00 00 55 e3                                      cmp r5, #0
003f0c4c  42 00 00 0a                                      beq #0x3f0d5c
003f0c50  18 50 92 e5                                      ldr r5, [r2, #0x18]
003f0c54  00 00 55 e3                                      cmp r5, #0
003f0c58  21 00 00 1a                                      bne #0x3f0ce4
003f0c5c  28 11 96 e5                                      ldr r1, [r6, #0x128]
003f0c60  08 30 91 e5                                      ldr r3, [r1, #8]
003f0c64  00 00 53 e3                                      cmp r3, #0
003f0c68  1b 00 00 0a                                      beq #0x3f0cdc
003f0c6c  10 00 8d e2                                      add r0, sp, #0x10
003f0c70  2c 77 00 eb                                      bl #0x40e928
003f0c74  14 30 9d e5                                      ldr r3, [sp, #0x14]
003f0c78  50 30 8d e5                                      str r3, [sp, #0x50]
003f0c7c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003f0c80  54 30 8d e5                                      str r3, [sp, #0x54]
003f0c84  10 30 9d e5                                      ldr r3, [sp, #0x10]
003f0c88  4c 30 8d e5                                      str r3, [sp, #0x4c]
003f0c8c  28 31 96 e5                                      ldr r3, [r6, #0x128]
003f0c90  08 30 93 e5                                      ldr r3, [r3, #8]
003f0c94  00 00 53 e3                                      cmp r3, #0
003f0c98  0f 00 00 0a                                      beq #0x3f0cdc
003f0c9c  30 33 9f e5                                      ldr r3, [pc, #0x330]
003f0ca0  64 10 8d e2                                      add r1, sp, #0x64
003f0ca4  58 20 8d e2                                      add r2, sp, #0x58
003f0ca8  03 30 8f e0                                      add r3, pc, r3
003f0cac  08 c0 93 e5                                      ldr ip, [r3, #8]
003f0cb0  20 33 9f e5                                      ldr r3, [pc, #0x320]
003f0cb4  10 e0 9c e5                                      ldr lr, [ip, #0x10]
003f0cb8  03 30 94 e7                                      ldr r3, [r4, r3]
003f0cbc  00 00 93 e5                                      ldr r0, [r3]
003f0cc0  00 e0 8d e5                                      str lr, [sp]
003f0cc4  08 e0 9c e5                                      ldr lr, [ip, #8]
003f0cc8  4c 30 8d e2                                      add r3, sp, #0x4c
003f0ccc  04 e0 8d e5                                      str lr, [sp, #4]
003f0cd0  14 c0 9c e5                                      ldr ip, [ip, #0x14]
003f0cd4  08 c0 8d e5                                      str ip, [sp, #8]
003f0cd8  9c e4 fd eb                                      bl #0x369f50
003f0cdc  8c d0 8d e2                                      add sp, sp, #0x8c
003f0ce0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003f0ce4  01 00 55 e3                                      cmp r5, #1
003f0ce8  e7 ff ff 1a                                      bne #0x3f0c8c
003f0cec  d8 32 9f e5                                      ldr r3, [pc, #0x2d8]
003f0cf0  00 10 a0 e3                                      mov r1, #0
003f0cf4  05 20 a0 e1                                      mov r2, r5
003f0cf8  03 70 94 e7                                      ldr r7, [r4, r3]
003f0cfc  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f0d00  dc f5 fd eb                                      bl #0x36e478
003f0d04  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f0d08  00 00 53 e3                                      cmp r3, #0
003f0d0c  de ff ff 0a                                      beq #0x3f0c8c
003f0d10  05 20 a0 e1                                      mov r2, r5
003f0d14  00 10 a0 e3                                      mov r1, #0
003f0d18  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f0d1c  d5 f5 fd eb                                      bl #0x36e478
003f0d20  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f0d24  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
003f0d28  08 30 93 e5                                      ldr r3, [r3, #8]
003f0d2c  03 00 a0 e1                                      mov r0, r3
003f0d30  00 30 93 e5                                      ldr r3, [r3]
003f0d34  0f e0 a0 e1                                      mov lr, pc
003f0d38  38 f0 93 e5                                      ldr pc, [r3, #0x38]
003f0d3c  20 30 80 e2                                      add r3, r0, #0x20
003f0d40  08 20 93 e5                                      ldr r2, [r3, #8]
003f0d44  20 10 90 e5                                      ldr r1, [r0, #0x20]
003f0d48  04 30 93 e5                                      ldr r3, [r3, #4]
003f0d4c  60 20 8d e5                                      str r2, [sp, #0x60]
003f0d50  58 10 8d e5                                      str r1, [sp, #0x58]
003f0d54  5c 30 8d e5                                      str r3, [sp, #0x5c]
003f0d58  cb ff ff ea                                      b #0x3f0c8c
003f0d5c  28 11 96 e5                                      ldr r1, [r6, #0x128]
003f0d60  08 30 91 e5                                      ldr r3, [r1, #8]
003f0d64  00 00 53 e3                                      cmp r3, #0
003f0d68  b8 ff ff 0a                                      beq #0x3f0c50
003f0d6c  28 00 8d e2                                      add r0, sp, #0x28
003f0d70  cc 76 00 eb                                      bl #0x40e8a8
003f0d74  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003f0d78  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
003f0d7c  5c 20 8d e5                                      str r2, [sp, #0x5c]
003f0d80  28 20 9d e5                                      ldr r2, [sp, #0x28]
003f0d84  03 30 8f e0                                      add r3, pc, r3
003f0d88  58 20 8d e5                                      str r2, [sp, #0x58]
003f0d8c  30 20 9d e5                                      ldr r2, [sp, #0x30]
003f0d90  60 20 8d e5                                      str r2, [sp, #0x60]
003f0d94  08 20 93 e5                                      ldr r2, [r3, #8]
003f0d98  ac ff ff ea                                      b #0x3f0c50
003f0d9c  28 31 96 e5                                      ldr r3, [r6, #0x128]
003f0da0  08 10 93 e5                                      ldr r1, [r3, #8]
003f0da4  00 00 51 e3                                      cmp r1, #0
003f0da8  a1 ff ff 0a                                      beq #0x3f0c34
003f0dac  34 00 8d e2                                      add r0, sp, #0x34
003f0db0  f2 98 06 eb                                      bl #0x597180
003f0db4  34 20 9d e5                                      ldr r2, [sp, #0x34]
003f0db8  20 32 9f e5                                      ldr r3, [pc, #0x220]
003f0dbc  64 20 8d e5                                      str r2, [sp, #0x64]
003f0dc0  38 20 9d e5                                      ldr r2, [sp, #0x38]
003f0dc4  03 30 8f e0                                      add r3, pc, r3
003f0dc8  68 20 8d e5                                      str r2, [sp, #0x68]
003f0dcc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003f0dd0  6c 20 8d e5                                      str r2, [sp, #0x6c]
003f0dd4  08 20 93 e5                                      ldr r2, [r3, #8]
003f0dd8  0c 50 92 e5                                      ldr r5, [r2, #0xc]
003f0ddc  01 00 55 e3                                      cmp r5, #1
003f0de0  96 ff ff 1a                                      bne #0x3f0c40
003f0de4  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
003f0de8  00 10 a0 e3                                      mov r1, #0
003f0dec  05 20 a0 e1                                      mov r2, r5
003f0df0  03 70 94 e7                                      ldr r7, [r4, r3]
003f0df4  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f0df8  9e f5 fd eb                                      bl #0x36e478
003f0dfc  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f0e00  00 00 53 e3                                      cmp r3, #0
003f0e04  06 00 00 0a                                      beq #0x3f0e24
003f0e08  00 10 a0 e3                                      mov r1, #0
003f0e0c  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f0e10  05 20 a0 e1                                      mov r2, r5
003f0e14  97 f5 fd eb                                      bl #0x36e478
003f0e18  40 10 8d e2                                      add r1, sp, #0x40
003f0e1c  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f0e20  2f 8b fe eb                                      bl #0x393ae4
003f0e24  44 20 9d e5                                      ldr r2, [sp, #0x44]
003f0e28  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
003f0e2c  5c 20 8d e5                                      str r2, [sp, #0x5c]
003f0e30  40 20 9d e5                                      ldr r2, [sp, #0x40]
003f0e34  03 30 8f e0                                      add r3, pc, r3
003f0e38  58 20 8d e5                                      str r2, [sp, #0x58]
003f0e3c  48 20 9d e5                                      ldr r2, [sp, #0x48]
003f0e40  60 20 8d e5                                      str r2, [sp, #0x60]
003f0e44  08 20 93 e5                                      ldr r2, [r3, #8]
003f0e48  80 ff ff ea                                      b #0x3f0c50
003f0e4c  94 31 9f e5                                      ldr r3, [pc, #0x194]
003f0e50  03 30 94 e7                                      ldr r3, [r4, r3]
003f0e54  00 00 93 e5                                      ldr r0, [r3]
003f0e58  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
003f0e5c  c0 00 a0 e1                                      asr r0, r0, #1
003f0e60  bf 76 fc eb                                      bl #0x30e964
003f0e64  80 31 9f e5                                      ldr r3, [pc, #0x180]
003f0e68  00 50 a0 e1                                      mov r5, r0
003f0e6c  03 30 94 e7                                      ldr r3, [r4, r3]
003f0e70  00 00 93 e5                                      ldr r0, [r3]
003f0e74  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
003f0e78  c0 00 a0 e1                                      asr r0, r0, #1
003f0e7c  b8 76 fc eb                                      bl #0x30e964
003f0e80  00 20 a0 e3                                      mov r2, #0
003f0e84  70 00 8d e5                                      str r0, [sp, #0x70]
003f0e88  40 10 8d e2                                      add r1, sp, #0x40
003f0e8c  70 00 8d e2                                      add r0, sp, #0x70
003f0e90  74 50 8d e5                                      str r5, [sp, #0x74]
003f0e94  bc 77 04 eb                                      bl #0x50ed8c
003f0e98  50 31 9f e5                                      ldr r3, [pc, #0x150]
003f0e9c  03 30 8f e0                                      add r3, pc, r3
003f0ea0  08 20 93 e5                                      ldr r2, [r3, #8]
003f0ea4  44 30 9d e5                                      ldr r3, [sp, #0x44]
003f0ea8  68 30 8d e5                                      str r3, [sp, #0x68]
003f0eac  40 30 9d e5                                      ldr r3, [sp, #0x40]
003f0eb0  64 30 8d e5                                      str r3, [sp, #0x64]
003f0eb4  48 30 9d e5                                      ldr r3, [sp, #0x48]
003f0eb8  6c 30 8d e5                                      str r3, [sp, #0x6c]
003f0ebc  5c ff ff ea                                      b #0x3f0c34
003f0ec0  04 31 9f e5                                      ldr r3, [pc, #0x104]
003f0ec4  00 10 a0 e3                                      mov r1, #0
003f0ec8  01 20 a0 e3                                      mov r2, #1
003f0ecc  03 50 94 e7                                      ldr r5, [r4, r3]
003f0ed0  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f0ed4  67 f5 fd eb                                      bl #0x36e478
003f0ed8  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f0edc  00 00 53 e3                                      cmp r3, #0
003f0ee0  2e 00 00 0a                                      beq #0x3f0fa0
003f0ee4  00 10 a0 e3                                      mov r1, #0
003f0ee8  01 20 a0 e3                                      mov r2, #1
003f0eec  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f0ef0  60 f5 fd eb                                      bl #0x36e478
003f0ef4  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f0ef8  b7 89 fe eb                                      bl #0x3935dc
003f0efc  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
003f0f00  08 20 90 e5                                      ldr r2, [r0, #8]
003f0f04  00 c0 90 e5                                      ldr ip, [r0]
003f0f08  04 10 90 e5                                      ldr r1, [r0, #4]
003f0f0c  03 30 8f e0                                      add r3, pc, r3
003f0f10  6c 20 8d e5                                      str r2, [sp, #0x6c]
003f0f14  64 c0 8d e5                                      str ip, [sp, #0x64]
003f0f18  68 10 8d e5                                      str r1, [sp, #0x68]
003f0f1c  08 20 93 e5                                      ldr r2, [r3, #8]
003f0f20  43 ff ff ea                                      b #0x3f0c34
003f0f24  04 70 85 e2                                      add r7, r5, #4
003f0f28  07 00 a0 e1                                      mov r0, r7
003f0f2c  0e 76 fc eb                                      bl #0x30e76c
003f0f30  00 00 50 e3                                      cmp r0, #0
003f0f34  f3 fe ff 0a                                      beq #0x3f0b08
003f0f38  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
003f0f3c  e4 30 96 e5                                      ldr r3, [r6, #0xe4]
003f0f40  1c 10 a0 e3                                      mov r1, #0x1c
003f0f44  02 20 94 e7                                      ldr r2, [r4, r2]
003f0f48  07 00 a0 e1                                      mov r0, r7
003f0f4c  00 20 92 e5                                      ldr r2, [r2]
003f0f50  91 23 23 e0                                      mla r3, r1, r3, r2
003f0f54  08 30 85 e5                                      str r3, [r5, #8]
003f0f58  b7 76 fc eb                                      bl #0x30ea3c
003f0f5c  e9 fe ff ea                                      b #0x3f0b08
003f0f60  28 11 96 e5                                      ldr r1, [r6, #0x128]
003f0f64  08 30 91 e5                                      ldr r3, [r1, #8]
003f0f68  00 00 53 e3                                      cmp r3, #0
003f0f6c  37 ff ff 0a                                      beq #0x3f0c50
003f0f70  1c 00 8d e2                                      add r0, sp, #0x1c
003f0f74  4b 76 00 eb                                      bl #0x40e8a8
003f0f78  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003f0f7c  03 30 8f e0                                      add r3, pc, r3
003f0f80  08 20 93 e5                                      ldr r2, [r3, #8]
003f0f84  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f0f88  58 30 8d e5                                      str r3, [sp, #0x58]
003f0f8c  20 30 9d e5                                      ldr r3, [sp, #0x20]
003f0f90  5c 30 8d e5                                      str r3, [sp, #0x5c]
003f0f94  00 30 a0 e3                                      mov r3, #0
003f0f98  60 30 8d e5                                      str r3, [sp, #0x60]
003f0f9c  2b ff ff ea                                      b #0x3f0c50
003f0fa0  58 30 9f e5                                      ldr r3, [pc, #0x58]
003f0fa4  03 30 8f e0                                      add r3, pc, r3
003f0fa8  08 20 93 e5                                      ldr r2, [r3, #8]
003f0fac  20 ff ff ea                                      b #0x3f0c34
003f0fb0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003f0fb4  03 30 8f e0                                      add r3, pc, r3
003f0fb8  08 20 93 e5                                      ldr r2, [r3, #8]
003f0fbc  1c ff ff ea                                      b #0x3f0c34
; mapping-symbol data/literal pool
003f0fc0  f0 25 5b 00 98 3f 5a 00 cc 25 5b 00 f4 37 00 00  .byte 0xf0, 0x25, 0x5b, 0x00, 0x98, 0x3f, 0x5a, 0x00, 0xcc, 0x25, 0x5b, 0x00, 0xf4, 0x37, 0x00, 0x00
003f0fd0  c0 24 5b 00 38 24 5b 00 a4 0d 00 00 5c 23 5b 00  .byte 0xc0, 0x24, 0x5b, 0x00, 0x38, 0x24, 0x5b, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0x5c, 0x23, 0x5b, 0x00
003f0fe0  1c 23 5b 00 ac 22 5b 00 f8 22 00 00 c4 25 00 00  .byte 0x1c, 0x23, 0x5b, 0x00, 0xac, 0x22, 0x5b, 0x00, 0xf8, 0x22, 0x00, 0x00, 0xc4, 0x25, 0x00, 0x00
003f0ff0  44 22 5b 00 d4 21 5b 00 d4 36 00 00 64 21 5b 00  .byte 0x44, 0x22, 0x5b, 0x00, 0xd4, 0x21, 0x5b, 0x00, 0xd4, 0x36, 0x00, 0x00, 0x64, 0x21, 0x5b, 0x00
003f1000  3c 21 5b 00 2c 21 5b 00                          .byte 0x3c, 0x21, 0x5b, 0x00, 0x2c, 0x21, 0x5b, 0x00

; FUNCTION 0x003f1008, declared_size=908, range_size=908, mode=arm
; class-group: Level
; alias: _ZN5Level11_LoadCameraEv
; demangled: Level::_LoadCamera()
; decoder-mode: arm
003f1008  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f100c  00 10 a0 e3                                      mov r1, #0
003f1010  14 d0 4d e2                                      sub sp, sp, #0x14
003f1014  00 40 a0 e1                                      mov r4, r0
003f1018  28 00 a0 e3                                      mov r0, #0x28
003f101c  53 7d fc eb                                      bl #0x310570
003f1020  00 60 a0 e1                                      mov r6, r0
003f1024  10 80 00 eb                                      bl #0x41106c
003f1028  2c 61 84 e5                                      str r6, [r4, #0x12c]
003f102c  00 10 a0 e3                                      mov r1, #0
003f1030  a8 00 a0 e3                                      mov r0, #0xa8
003f1034  4d 7d fc eb                                      bl #0x310570
003f1038  08 53 9f e5                                      ldr r5, [pc, #0x308]
003f103c  00 60 a0 e1                                      mov r6, r0
003f1040  ca 7b 00 eb                                      bl #0x40ff70
003f1044  00 00 56 e3                                      cmp r6, #0
003f1048  28 61 84 e5                                      str r6, [r4, #0x128]
003f104c  05 50 8f e0                                      add r5, pc, r5
003f1050  a6 00 00 0a                                      beq #0x3f12f0
003f1054  38 70 94 e5                                      ldr r7, [r4, #0x38]
003f1058  00 00 57 e3                                      cmp r7, #0
003f105c  77 00 00 0a                                      beq #0x3f1240
003f1060  60 32 97 e5                                      ldr r3, [r7, #0x260]
003f1064  0c 30 8d e5                                      str r3, [sp, #0xc]
003f1068  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
003f106c  78 92 97 e5                                      ldr sb, [r7, #0x278]
003f1070  03 30 95 e7                                      ldr r3, [r5, r3]
003f1074  00 a0 93 e5                                      ldr sl, [r3]
003f1078  00 00 5a e3                                      cmp sl, #0
003f107c  2b 00 00 0a                                      beq #0x3f1130
003f1080  c8 32 9f e5                                      ldr r3, [pc, #0x2c8]
003f1084  00 80 a0 e3                                      mov r8, #0
003f1088  03 30 95 e7                                      ldr r3, [r5, r3]
003f108c  00 b0 93 e5                                      ldr fp, [r3]
003f1090  02 00 00 ea                                      b #0x3f10a0
003f1094  01 80 88 e2                                      add r8, r8, #1
003f1098  0a 00 58 e1                                      cmp r8, sl
003f109c  23 00 00 0a                                      beq #0x3f1130
003f10a0  08 11 9b e7                                      ldr r1, [fp, r8, lsl #2]
003f10a4  09 00 a0 e1                                      mov r0, sb
003f10a8  9b 74 fc eb                                      bl #0x30e31c
003f10ac  00 00 50 e3                                      cmp r0, #0
003f10b0  f7 ff ff 1a                                      bne #0x3f1094
003f10b4  06 00 a0 e1                                      mov r0, r6
003f10b8  90 32 97 e5                                      ldr r3, [r7, #0x290]
003f10bc  08 20 a0 e1                                      mov r2, r8
003f10c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003f10c4  70 7d 00 eb                                      bl #0x41068c
003f10c8  38 70 94 e5                                      ldr r7, [r4, #0x38]
003f10cc  28 61 94 e5                                      ldr r6, [r4, #0x128]
003f10d0  00 00 57 e3                                      cmp r7, #0
003f10d4  1e 00 00 1a                                      bne #0x3f1154
003f10d8  74 32 9f e5                                      ldr r3, [pc, #0x274]
003f10dc  03 30 95 e7                                      ldr r3, [r5, r3]
003f10e0  00 30 93 e5                                      ldr r3, [r3]
003f10e4  02 00 53 e3                                      cmp r3, #2
003f10e8  00 70 87 05                                      streq r7, [r7]
003f10ec  18 00 00 0a                                      beq #0x3f1154
003f10f0  01 00 53 e3                                      cmp r3, #1
003f10f4  16 00 00 1a                                      bne #0x3f1154
003f10f8  58 02 9f e5                                      ldr r0, [pc, #0x258]
003f10fc  58 12 9f e5                                      ldr r1, [pc, #0x258]
003f1100  58 22 9f e5                                      ldr r2, [pc, #0x258]
003f1104  00 00 95 e7                                      ldr r0, [r5, r0]
003f1108  54 32 9f e5                                      ldr r3, [pc, #0x254]
003f110c  77 cf a0 e3                                      mov ip, #0x1dc
003f1110  01 10 8f e0                                      add r1, pc, r1
003f1114  a8 00 80 e2                                      add r0, r0, #0xa8
003f1118  02 20 8f e0                                      add r2, pc, r2
003f111c  03 30 8f e0                                      add r3, pc, r3
003f1120  00 c0 8d e5                                      str ip, [sp]
003f1124  b6 73 fc eb                                      bl #0x30e004
003f1128  38 70 94 e5                                      ldr r7, [r4, #0x38]
003f112c  08 00 00 ea                                      b #0x3f1154
003f1130  06 00 a0 e1                                      mov r0, r6
003f1134  90 32 97 e5                                      ldr r3, [r7, #0x290]
003f1138  00 20 e0 e3                                      mvn r2, #0
003f113c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003f1140  51 7d 00 eb                                      bl #0x41068c
003f1144  38 70 94 e5                                      ldr r7, [r4, #0x38]
003f1148  28 61 94 e5                                      ldr r6, [r4, #0x128]
003f114c  00 00 57 e3                                      cmp r7, #0
003f1150  e0 ff ff 0a                                      beq #0x3f10d8
003f1154  94 02 97 e5                                      ldr r0, [r7, #0x294]
003f1158  01 76 fc eb                                      bl #0x30e964
003f115c  00 80 a0 e1                                      mov r8, r0
003f1160  98 02 97 e5                                      ldr r0, [r7, #0x298]
003f1164  fe 75 fc eb                                      bl #0x30e964
003f1168  77 18 0f e3                                      movw r1, #0xf877
003f116c  e9 28 07 e3                                      movw r2, #0x78e9
003f1170  08 30 a0 e1                                      mov r3, r8
003f1174  db 1e 43 e3                                      movt r1, #0x3edb
003f1178  d5 2f 43 e3                                      movt r2, #0x3fd5
003f117c  00 00 8d e5                                      str r0, [sp]
003f1180  06 00 a0 e1                                      mov r0, r6
003f1184  00 60 a0 e3                                      mov r6, #0
003f1188  04 60 8d e5                                      str r6, [sp, #4]
003f118c  05 76 00 eb                                      bl #0x40e9a8
003f1190  28 01 94 e5                                      ldr r0, [r4, #0x128]
003f1194  b0 78 00 eb                                      bl #0x40f45c
003f1198  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
003f119c  28 01 94 e5                                      ldr r0, [r4, #0x128]
003f11a0  1c e0 a0 e3                                      mov lr, #0x1c
003f11a4  03 30 95 e7                                      ldr r3, [r5, r3]
003f11a8  80 10 90 e5                                      ldr r1, [r0, #0x80]
003f11ac  06 20 a0 e1                                      mov r2, r6
003f11b0  00 c0 93 e5                                      ldr ip, [r3]
003f11b4  06 30 a0 e1                                      mov r3, r6
003f11b8  9e c1 21 e0                                      mla r1, lr, r1, ip
003f11bc  10 10 91 e5                                      ldr r1, [r1, #0x10]
003f11c0  cf 79 00 eb                                      bl #0x40f904
003f11c4  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
003f11c8  06 10 a0 e1                                      mov r1, r6
003f11cc  01 20 a0 e3                                      mov r2, #1
003f11d0  03 70 95 e7                                      ldr r7, [r5, r3]
003f11d4  28 81 94 e5                                      ldr r8, [r4, #0x128]
003f11d8  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f11dc  a5 f4 fd eb                                      bl #0x36e478
003f11e0  06 20 a0 e1                                      mov r2, r6
003f11e4  60 16 90 e5                                      ldr r1, [r0, #0x660]
003f11e8  08 00 a0 e1                                      mov r0, r8
003f11ec  f4 81 00 eb                                      bl #0x4119c4
003f11f0  50 00 97 e5                                      ldr r0, [r7, #0x50]
003f11f4  28 11 94 e5                                      ldr r1, [r4, #0x128]
003f11f8  6c 43 fe eb                                      bl #0x381fb0
003f11fc  28 31 94 e5                                      ldr r3, [r4, #0x128]
003f1200  fe 25 a0 e3                                      mov r2, #0x3f800000
003f1204  8c 20 83 e5                                      str r2, [r3, #0x8c]
003f1208  28 31 94 e5                                      ldr r3, [r4, #0x128]
003f120c  00 20 a0 e3                                      mov r2, #0
003f1210  88 20 83 e5                                      str r2, [r3, #0x88]
003f1214  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f1218  10 20 97 e5                                      ldr r2, [r7, #0x10]
003f121c  06 00 53 e1                                      cmp r3, r6
003f1220  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
003f1224  1b 00 00 0a                                      beq #0x3f1298
003f1228  48 12 93 e5                                      ldr r1, [r3, #0x248]
003f122c  06 00 a0 e1                                      mov r0, r6
003f1230  00 20 a0 e3                                      mov r2, #0
003f1234  14 d0 8d e2                                      add sp, sp, #0x14
003f1238  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f123c  fd a1 fd ea                                      b #0x359a38
003f1240  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
003f1244  03 30 95 e7                                      ldr r3, [r5, r3]
003f1248  00 30 93 e5                                      ldr r3, [r3]
003f124c  02 00 53 e3                                      cmp r3, #2
003f1250  00 70 87 05                                      streq r7, [r7]
003f1254  81 ff ff 0a                                      beq #0x3f1060
003f1258  01 00 53 e3                                      cmp r3, #1
003f125c  7f ff ff 1a                                      bne #0x3f1060
003f1260  f0 00 9f e5                                      ldr r0, [pc, #0xf0]
003f1264  04 11 9f e5                                      ldr r1, [pc, #0x104]
003f1268  04 21 9f e5                                      ldr r2, [pc, #0x104]
003f126c  00 00 95 e7                                      ldr r0, [r5, r0]
003f1270  00 31 9f e5                                      ldr r3, [pc, #0x100]
003f1274  77 cf a0 e3                                      mov ip, #0x1dc
003f1278  01 10 8f e0                                      add r1, pc, r1
003f127c  a8 00 80 e2                                      add r0, r0, #0xa8
003f1280  02 20 8f e0                                      add r2, pc, r2
003f1284  03 30 8f e0                                      add r3, pc, r3
003f1288  00 c0 8d e5                                      str ip, [sp]
003f128c  5c 73 fc eb                                      bl #0x30e004
003f1290  38 70 94 e5                                      ldr r7, [r4, #0x38]
003f1294  71 ff ff ea                                      b #0x3f1060
003f1298  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
003f129c  02 20 95 e7                                      ldr r2, [r5, r2]
003f12a0  00 20 92 e5                                      ldr r2, [r2]
003f12a4  02 00 52 e3                                      cmp r2, #2
003f12a8  00 30 83 05                                      streq r3, [r3]
003f12ac  dd ff ff 0a                                      beq #0x3f1228
003f12b0  01 00 52 e3                                      cmp r2, #1
003f12b4  db ff ff 1a                                      bne #0x3f1228
003f12b8  98 00 9f e5                                      ldr r0, [pc, #0x98]
003f12bc  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
003f12c0  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
003f12c4  00 00 95 e7                                      ldr r0, [r5, r0]
003f12c8  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003f12cc  77 cf a0 e3                                      mov ip, #0x1dc
003f12d0  01 10 8f e0                                      add r1, pc, r1
003f12d4  03 30 8f e0                                      add r3, pc, r3
003f12d8  a8 00 80 e2                                      add r0, r0, #0xa8
003f12dc  02 20 8f e0                                      add r2, pc, r2
003f12e0  00 c0 8d e5                                      str ip, [sp]
003f12e4  46 73 fc eb                                      bl #0x30e004
003f12e8  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f12ec  cd ff ff ea                                      b #0x3f1228
003f12f0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003f12f4  03 30 95 e7                                      ldr r3, [r5, r3]
003f12f8  00 30 93 e5                                      ldr r3, [r3]
003f12fc  02 00 53 e3                                      cmp r3, #2
003f1300  00 60 86 05                                      streq r6, [r6]
003f1304  52 ff ff 0a                                      beq #0x3f1054
003f1308  01 00 53 e3                                      cmp r3, #1
003f130c  50 ff ff 1a                                      bne #0x3f1054
003f1310  40 00 9f e5                                      ldr r0, [pc, #0x40]
003f1314  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003f1318  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003f131c  00 00 95 e7                                      ldr r0, [r5, r0]
003f1320  68 30 9f e5                                      ldr r3, [pc, #0x68]
003f1324  9b ce a0 e3                                      mov ip, #0x9b0
003f1328  01 10 8f e0                                      add r1, pc, r1
003f132c  a8 00 80 e2                                      add r0, r0, #0xa8
003f1330  02 20 8f e0                                      add r2, pc, r2
003f1334  03 30 8f e0                                      add r3, pc, r3
003f1338  00 c0 8d e5                                      str ip, [sp]
003f133c  30 73 fc eb                                      bl #0x30e004
003f1340  28 61 94 e5                                      ldr r6, [r4, #0x128]
003f1344  42 ff ff ea                                      b #0x3f1054
; mapping-symbol data/literal pool
003f1348  44 3a 5a 00 e4 38 00 00 5c 3a 00 00 c0 39 00 00  .byte 0x44, 0x3a, 0x5a, 0x00, 0xe4, 0x38, 0x00, 0x00, 0x5c, 0x3a, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003f1358  c0 19 00 00 c8 d2 4c 00 d8 4a 4d 00 3c 0b 4d 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xc8, 0xd2, 0x4c, 0x00, 0xd8, 0x4a, 0x4d, 0x00, 0x3c, 0x0b, 0x4d, 0x00
003f1368  d4 3d 00 00 f4 37 00 00 60 d1 4c 00 70 49 4d 00  .byte 0xd4, 0x3d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x60, 0xd1, 0x4c, 0x00, 0x70, 0x49, 0x4d, 0x00
003f1378  d4 09 4d 00 08 d1 4c 00 14 49 4d 00 84 09 4d 00  .byte 0xd4, 0x09, 0x4d, 0x00, 0x08, 0xd1, 0x4c, 0x00, 0x14, 0x49, 0x4d, 0x00, 0x84, 0x09, 0x4d, 0x00
003f1388  b0 d0 4c 00 a8 52 4d 00 dc 51 4d 00              .byte 0xb0, 0xd0, 0x4c, 0x00, 0xa8, 0x52, 0x4d, 0x00, 0xdc, 0x51, 0x4d, 0x00

; FUNCTION 0x003f1394, declared_size=156, range_size=156, mode=arm
; class-group: Level
; alias: _ZNK5Level15GetMPGameScriptEv
; demangled: Level::GetMPGameScript() const
; decoder-mode: arm
003f1394  10 40 2d e9                                      push {r4, lr}
003f1398  38 20 90 e5                                      ldr r2, [r0, #0x38]
003f139c  74 30 9f e5                                      ldr r3, [pc, #0x74]
003f13a0  08 d0 4d e2                                      sub sp, sp, #8
003f13a4  00 00 52 e3                                      cmp r2, #0
003f13a8  00 40 a0 e1                                      mov r4, r0
003f13ac  03 30 8f e0                                      add r3, pc, r3
003f13b0  02 00 00 0a                                      beq #0x3f13c0
003f13b4  14 03 92 e5                                      ldr r0, [r2, #0x314]
003f13b8  08 d0 8d e2                                      add sp, sp, #8
003f13bc  10 80 bd e8                                      pop {r4, pc}
003f13c0  54 10 9f e5                                      ldr r1, [pc, #0x54]
003f13c4  01 10 93 e7                                      ldr r1, [r3, r1]
003f13c8  00 10 91 e5                                      ldr r1, [r1]
003f13cc  02 00 51 e3                                      cmp r1, #2
003f13d0  00 20 82 05                                      streq r2, [r2]
003f13d4  f6 ff ff 0a                                      beq #0x3f13b4
003f13d8  01 00 51 e3                                      cmp r1, #1
003f13dc  f4 ff ff 1a                                      bne #0x3f13b4
003f13e0  38 00 9f e5                                      ldr r0, [pc, #0x38]
003f13e4  38 10 9f e5                                      ldr r1, [pc, #0x38]
003f13e8  38 20 9f e5                                      ldr r2, [pc, #0x38]
003f13ec  00 00 93 e7                                      ldr r0, [r3, r0]
003f13f0  34 30 9f e5                                      ldr r3, [pc, #0x34]
003f13f4  02 20 8f e0                                      add r2, pc, r2
003f13f8  77 cf a0 e3                                      mov ip, #0x1dc
003f13fc  01 10 8f e0                                      add r1, pc, r1
003f1400  a8 00 80 e2                                      add r0, r0, #0xa8
003f1404  03 30 8f e0                                      add r3, pc, r3
003f1408  00 c0 8d e5                                      str ip, [sp]
003f140c  fc 72 fc eb                                      bl #0x30e004
003f1410  38 20 94 e5                                      ldr r2, [r4, #0x38]
003f1414  e6 ff ff ea                                      b #0x3f13b4
; mapping-symbol data/literal pool
003f1418  e4 36 5a 00 c0 39 00 00 c0 19 00 00 dc cf 4c 00  .byte 0xe4, 0x36, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xdc, 0xcf, 0x4c, 0x00
003f1428  fc 47 4d 00 54 08 4d 00                          .byte 0xfc, 0x47, 0x4d, 0x00, 0x54, 0x08, 0x4d, 0x00

; FUNCTION 0x003f1430, declared_size=220, range_size=220, mode=arm
; class-group: Level
; alias: _ZN5Level9EnableFogEPN6glitch5scene10ISceneNodeE
; demangled: Level::EnableFog(glitch::scene::ISceneNode*)
; decoder-mode: arm
003f1430  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
003f1434  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003f1438  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
003f143c  03 30 8f e0                                      add r3, pc, r3
003f1440  38 70 90 e5                                      ldr r7, [r0, #0x38]
003f1444  02 20 93 e7                                      ldr r2, [r3, r2]
003f1448  0c d0 4d e2                                      sub sp, sp, #0xc
003f144c  00 00 57 e3                                      cmp r7, #0
003f1450  10 20 92 e5                                      ldr r2, [r2, #0x10]
003f1454  00 40 a0 e1                                      mov r4, r0
003f1458  01 50 a0 e1                                      mov r5, r1
003f145c  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
003f1460  0c 00 00 0a                                      beq #0x3f1498
003f1464  d8 01 97 e5                                      ldr r0, [r7, #0x1d8]
003f1468  3d 75 fc eb                                      bl #0x30e964
003f146c  00 40 a0 e1                                      mov r4, r0
003f1470  dc 01 97 e5                                      ldr r0, [r7, #0x1dc]
003f1474  3a 75 fc eb                                      bl #0x30e964
003f1478  04 10 a0 e1                                      mov r1, r4
003f147c  00 20 a0 e1                                      mov r2, r0
003f1480  1e 3e 87 e2                                      add r3, r7, #0x1e0
003f1484  06 00 a0 e1                                      mov r0, r6
003f1488  00 50 8d e5                                      str r5, [sp]
003f148c  aa 83 fd eb                                      bl #0x35233c
003f1490  0c d0 8d e2                                      add sp, sp, #0xc
003f1494  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003f1498  58 20 9f e5                                      ldr r2, [pc, #0x58]
003f149c  02 20 93 e7                                      ldr r2, [r3, r2]
003f14a0  00 20 92 e5                                      ldr r2, [r2]
003f14a4  02 00 52 e3                                      cmp r2, #2
003f14a8  00 70 87 05                                      streq r7, [r7]
003f14ac  ec ff ff 0a                                      beq #0x3f1464
003f14b0  01 00 52 e3                                      cmp r2, #1
003f14b4  ea ff ff 1a                                      bne #0x3f1464
003f14b8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003f14bc  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003f14c0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003f14c4  00 00 93 e7                                      ldr r0, [r3, r0]
003f14c8  38 30 9f e5                                      ldr r3, [pc, #0x38]
003f14cc  77 cf a0 e3                                      mov ip, #0x1dc
003f14d0  01 10 8f e0                                      add r1, pc, r1
003f14d4  a8 00 80 e2                                      add r0, r0, #0xa8
003f14d8  02 20 8f e0                                      add r2, pc, r2
003f14dc  03 30 8f e0                                      add r3, pc, r3
003f14e0  00 c0 8d e5                                      str ip, [sp]
003f14e4  c6 72 fc eb                                      bl #0x30e004
003f14e8  38 70 94 e5                                      ldr r7, [r4, #0x38]
003f14ec  dc ff ff ea                                      b #0x3f1464
; mapping-symbol data/literal pool
003f14f0  54 36 5a 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x54, 0x36, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003f1500  08 cf 4c 00 18 47 4d 00 7c 07 4d 00              .byte 0x08, 0xcf, 0x4c, 0x00, 0x18, 0x47, 0x4d, 0x00, 0x7c, 0x07, 0x4d, 0x00

; FUNCTION 0x003f150c, declared_size=436, range_size=436, mode=arm
; class-group: Level
; alias: _ZN5Level14SetLevelConfigEP11LevelConfig
; demangled: Level::SetLevelConfig(LevelConfig*)
; decoder-mode: arm
003f150c  30 40 2d e9                                      push {r4, r5, lr}
003f1510  78 51 9f e5                                      ldr r5, [pc, #0x178]
003f1514  00 00 51 e3                                      cmp r1, #0
003f1518  38 10 80 e5                                      str r1, [r0, #0x38]
003f151c  0c d0 4d e2                                      sub sp, sp, #0xc
003f1520  00 40 a0 e1                                      mov r4, r0
003f1524  05 50 8f e0                                      add r5, pc, r5
003f1528  16 00 00 0a                                      beq #0x3f1588
003f152c  7c 01 91 e5                                      ldr r0, [r1, #0x17c]
003f1530  53 29 fe eb                                      bl #0x37ba84
003f1534  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f1538  1c 01 84 e5                                      str r0, [r4, #0x11c]
003f153c  00 00 53 e3                                      cmp r3, #0
003f1540  3c 00 00 0a                                      beq #0x3f1638
003f1544  c4 01 93 e5                                      ldr r0, [r3, #0x1c4]
003f1548  c0 21 93 e5                                      ldr r2, [r3, #0x1c0]
003f154c  02 00 50 e1                                      cmp r0, r2
003f1550  02 00 00 0a                                      beq #0x3f1560
003f1554  4a 29 fe eb                                      bl #0x37ba84
003f1558  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f155c  24 01 84 e5                                      str r0, [r4, #0x124]
003f1560  00 00 53 e3                                      cmp r3, #0
003f1564  1d 00 00 0a                                      beq #0x3f15e0
003f1568  90 21 93 e5                                      ldr r2, [r3, #0x190]
003f156c  94 01 93 e5                                      ldr r0, [r3, #0x194]
003f1570  02 00 50 e1                                      cmp r0, r2
003f1574  01 00 00 0a                                      beq #0x3f1580
003f1578  41 29 fe eb                                      bl #0x37ba84
003f157c  20 01 84 e5                                      str r0, [r4, #0x120]
003f1580  0c d0 8d e2                                      add sp, sp, #0xc
003f1584  30 80 bd e8                                      pop {r4, r5, pc}
003f1588  04 31 9f e5                                      ldr r3, [pc, #0x104]
003f158c  03 30 95 e7                                      ldr r3, [r5, r3]
003f1590  00 30 93 e5                                      ldr r3, [r3]
003f1594  02 00 53 e3                                      cmp r3, #2
003f1598  00 10 81 05                                      streq r1, [r1]
003f159c  e2 ff ff 0a                                      beq #0x3f152c
003f15a0  01 00 53 e3                                      cmp r3, #1
003f15a4  e0 ff ff 1a                                      bne #0x3f152c
003f15a8  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
003f15ac  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
003f15b0  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
003f15b4  00 00 95 e7                                      ldr r0, [r5, r0]
003f15b8  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003f15bc  01 10 8f e0                                      add r1, pc, r1
003f15c0  77 cf a0 e3                                      mov ip, #0x1dc
003f15c4  a8 00 80 e2                                      add r0, r0, #0xa8
003f15c8  02 20 8f e0                                      add r2, pc, r2
003f15cc  03 30 8f e0                                      add r3, pc, r3
003f15d0  00 c0 8d e5                                      str ip, [sp]
003f15d4  8a 72 fc eb                                      bl #0x30e004
003f15d8  38 10 94 e5                                      ldr r1, [r4, #0x38]
003f15dc  d2 ff ff ea                                      b #0x3f152c
003f15e0  ac 20 9f e5                                      ldr r2, [pc, #0xac]
003f15e4  02 20 95 e7                                      ldr r2, [r5, r2]
003f15e8  00 20 92 e5                                      ldr r2, [r2]
003f15ec  02 00 52 e3                                      cmp r2, #2
003f15f0  00 30 83 05                                      streq r3, [r3]
003f15f4  db ff ff 0a                                      beq #0x3f1568
003f15f8  01 00 52 e3                                      cmp r2, #1
003f15fc  d9 ff ff 1a                                      bne #0x3f1568
003f1600  90 00 9f e5                                      ldr r0, [pc, #0x90]
003f1604  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
003f1608  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
003f160c  00 00 95 e7                                      ldr r0, [r5, r0]
003f1610  98 30 9f e5                                      ldr r3, [pc, #0x98]
003f1614  77 cf a0 e3                                      mov ip, #0x1dc
003f1618  01 10 8f e0                                      add r1, pc, r1
003f161c  03 30 8f e0                                      add r3, pc, r3
003f1620  a8 00 80 e2                                      add r0, r0, #0xa8
003f1624  02 20 8f e0                                      add r2, pc, r2
003f1628  00 c0 8d e5                                      str ip, [sp]
003f162c  74 72 fc eb                                      bl #0x30e004
003f1630  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f1634  cb ff ff ea                                      b #0x3f1568
003f1638  54 20 9f e5                                      ldr r2, [pc, #0x54]
003f163c  02 20 95 e7                                      ldr r2, [r5, r2]
003f1640  00 20 92 e5                                      ldr r2, [r2]
003f1644  02 00 52 e3                                      cmp r2, #2
003f1648  00 30 83 05                                      streq r3, [r3]
003f164c  bc ff ff 0a                                      beq #0x3f1544
003f1650  01 00 52 e3                                      cmp r2, #1
003f1654  ba ff ff 1a                                      bne #0x3f1544
003f1658  38 00 9f e5                                      ldr r0, [pc, #0x38]
003f165c  50 10 9f e5                                      ldr r1, [pc, #0x50]
003f1660  50 20 9f e5                                      ldr r2, [pc, #0x50]
003f1664  00 00 95 e7                                      ldr r0, [r5, r0]
003f1668  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003f166c  77 cf a0 e3                                      mov ip, #0x1dc
003f1670  01 10 8f e0                                      add r1, pc, r1
003f1674  03 30 8f e0                                      add r3, pc, r3
003f1678  a8 00 80 e2                                      add r0, r0, #0xa8
003f167c  02 20 8f e0                                      add r2, pc, r2
003f1680  00 c0 8d e5                                      str ip, [sp]
003f1684  5e 72 fc eb                                      bl #0x30e004
003f1688  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f168c  ac ff ff ea                                      b #0x3f1544
; mapping-symbol data/literal pool
003f1690  6c 35 5a 00 c0 39 00 00 c0 19 00 00 1c ce 4c 00  .byte 0x6c, 0x35, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x1c, 0xce, 0x4c, 0x00
003f16a0  28 46 4d 00 8c 06 4d 00 c0 cd 4c 00 cc 45 4d 00  .byte 0x28, 0x46, 0x4d, 0x00, 0x8c, 0x06, 0x4d, 0x00, 0xc0, 0xcd, 0x4c, 0x00, 0xcc, 0x45, 0x4d, 0x00
003f16b0  3c 06 4d 00 68 cd 4c 00 74 45 4d 00 e4 05 4d 00  .byte 0x3c, 0x06, 0x4d, 0x00, 0x68, 0xcd, 0x4c, 0x00, 0x74, 0x45, 0x4d, 0x00, 0xe4, 0x05, 0x4d, 0x00

; FUNCTION 0x003f16c0, declared_size=368, range_size=368, mode=arm
; class-group: Level
; alias: _ZN5Level16UpdateDynamicFogEv
; demangled: Level::UpdateDynamicFog()
; decoder-mode: arm
003f16c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f16c4  38 30 90 e5                                      ldr r3, [r0, #0x38]
003f16c8  44 41 9f e5                                      ldr r4, [pc, #0x144]
003f16cc  30 d0 4d e2                                      sub sp, sp, #0x30
003f16d0  00 00 53 e3                                      cmp r3, #0
003f16d4  00 50 a0 e1                                      mov r5, r0
003f16d8  04 40 8f e0                                      add r4, pc, r4
003f16dc  34 00 00 0a                                      beq #0x3f17b4
003f16e0  08 22 93 e5                                      ldr r2, [r3, #0x208]
003f16e4  04 32 93 e5                                      ldr r3, [r3, #0x204]
003f16e8  02 00 53 e1                                      cmp r3, r2
003f16ec  30 00 00 0a                                      beq #0x3f17b4
003f16f0  20 31 9f e5                                      ldr r3, [pc, #0x120]
003f16f4  03 60 94 e7                                      ldr r6, [r4, r3]
003f16f8  06 00 a0 e1                                      mov r0, r6
003f16fc  a4 b7 fc eb                                      bl #0x31f594
003f1700  28 31 90 e5                                      ldr r3, [r0, #0x128]
003f1704  14 00 8d e2                                      add r0, sp, #0x14
003f1708  08 10 93 e5                                      ldr r1, [r3, #8]
003f170c  9b 96 06 eb                                      bl #0x597180
003f1710  14 20 9d e5                                      ldr r2, [sp, #0x14]
003f1714  38 30 95 e5                                      ldr r3, [r5, #0x38]
003f1718  38 10 96 e5                                      ldr r1, [r6, #0x38]
003f171c  20 20 8d e5                                      str r2, [sp, #0x20]
003f1720  18 20 9d e5                                      ldr r2, [sp, #0x18]
003f1724  08 00 8d e2                                      add r0, sp, #8
003f1728  24 20 8d e5                                      str r2, [sp, #0x24]
003f172c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003f1730  28 20 8d e5                                      str r2, [sp, #0x28]
003f1734  14 32 93 e5                                      ldr r3, [r3, #0x214]
003f1738  20 20 8d e2                                      add r2, sp, #0x20
003f173c  99 40 fd eb                                      bl #0x3419a8
003f1740  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f1744  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003f1748  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f174c  14 60 93 e5                                      ldr r6, [r3, #0x14]
003f1750  d2 32 13 eb                                      bl #0x8be2a0
003f1754  70 80 ef e6                                      uxtb r8, r0
003f1758  10 00 9d e5                                      ldr r0, [sp, #0x10]
003f175c  cf 32 13 eb                                      bl #0x8be2a0
003f1760  70 70 ef e6                                      uxtb r7, r0
003f1764  08 00 9d e5                                      ldr r0, [sp, #8]
003f1768  cc 32 13 eb                                      bl #0x8be2a0
003f176c  00 20 a0 e3                                      mov r2, #0
003f1770  2c 00 cd e5                                      strb r0, [sp, #0x2c]
003f1774  2d 80 cd e5                                      strb r8, [sp, #0x2d]
003f1778  2e 70 cd e5                                      strb r7, [sp, #0x2e]
003f177c  2f 20 cd e5                                      strb r2, [sp, #0x2f]
003f1780  2c 30 8d e2                                      add r3, sp, #0x2c
003f1784  ba 1f d6 e1                                      ldrh r1, [r6, #0xfa]
003f1788  e4 00 96 e5                                      ldr r0, [r6, #0xe4]
003f178c  1a 4c 07 eb                                      bl #0x5c47fc
003f1790  38 30 95 e5                                      ldr r3, [r5, #0x38]
003f1794  00 00 53 e3                                      cmp r3, #0
003f1798  07 00 00 0a                                      beq #0x3f17bc
003f179c  08 20 9d e5                                      ldr r2, [sp, #8]
003f17a0  ec 21 83 e5                                      str r2, [r3, #0x1ec]
003f17a4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003f17a8  f0 21 83 e5                                      str r2, [r3, #0x1f0]
003f17ac  10 20 9d e5                                      ldr r2, [sp, #0x10]
003f17b0  f4 21 83 e5                                      str r2, [r3, #0x1f4]
003f17b4  30 d0 8d e2                                      add sp, sp, #0x30
003f17b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f17bc  58 20 9f e5                                      ldr r2, [pc, #0x58]
003f17c0  02 20 94 e7                                      ldr r2, [r4, r2]
003f17c4  00 20 92 e5                                      ldr r2, [r2]
003f17c8  02 00 52 e3                                      cmp r2, #2
003f17cc  00 30 83 05                                      streq r3, [r3]
003f17d0  f1 ff ff 0a                                      beq #0x3f179c
003f17d4  01 00 52 e3                                      cmp r2, #1
003f17d8  ef ff ff 1a                                      bne #0x3f179c
003f17dc  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003f17e0  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003f17e4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003f17e8  00 00 94 e7                                      ldr r0, [r4, r0]
003f17ec  38 30 9f e5                                      ldr r3, [pc, #0x38]
003f17f0  77 cf a0 e3                                      mov ip, #0x1dc
003f17f4  01 10 8f e0                                      add r1, pc, r1
003f17f8  03 30 8f e0                                      add r3, pc, r3
003f17fc  a8 00 80 e2                                      add r0, r0, #0xa8
003f1800  02 20 8f e0                                      add r2, pc, r2
003f1804  00 c0 8d e5                                      str ip, [sp]
003f1808  fd 71 fc eb                                      bl #0x30e004
003f180c  38 30 95 e5                                      ldr r3, [r5, #0x38]
003f1810  e1 ff ff ea                                      b #0x3f179c
; mapping-symbol data/literal pool
003f1814  b8 33 5a 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0xb8, 0x33, 0x5a, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003f1824  e4 cb 4c 00 f0 43 4d 00 60 04 4d 00              .byte 0xe4, 0xcb, 0x4c, 0x00, 0xf0, 0x43, 0x4d, 0x00, 0x60, 0x04, 0x4d, 0x00

; FUNCTION 0x003f2304, declared_size=264, range_size=264, mode=arm
; class-group: Level
; alias: _ZN5Level9UpdateFogEPN6glitch5scene10ISceneNodeE
; demangled: Level::UpdateFog(glitch::scene::ISceneNode*)
; decoder-mode: arm
003f2304  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003f2308  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
003f230c  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
003f2310  38 30 90 e5                                      ldr r3, [r0, #0x38]
003f2314  04 40 8f e0                                      add r4, pc, r4
003f2318  05 20 94 e7                                      ldr r2, [r4, r5]
003f231c  44 d0 4d e2                                      sub sp, sp, #0x44
003f2320  00 00 53 e3                                      cmp r3, #0
003f2324  00 20 92 e5                                      ldr r2, [r2]
003f2328  00 60 a0 e1                                      mov r6, r0
003f232c  01 70 a0 e1                                      mov r7, r1
003f2330  3c 20 8d e5                                      str r2, [sp, #0x3c]
003f2334  14 00 00 0a                                      beq #0x3f238c
003f2338  dc 31 93 e5                                      ldr r3, [r3, #0x1dc]
003f233c  00 00 53 e3                                      cmp r3, #0
003f2340  18 00 00 1a                                      bne #0x3f23a8
003f2344  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003f2348  24 80 8d e2                                      add r8, sp, #0x24
003f234c  03 a0 94 e7                                      ldr sl, [r4, r3]
003f2350  0a 00 a0 e1                                      mov r0, sl
003f2354  4b 15 fd eb                                      bl #0x337888
003f2358  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003f235c  08 20 8d e2                                      add r2, sp, #8
003f2360  08 00 a0 e1                                      mov r0, r8
003f2364  01 10 8f e0                                      add r1, pc, r1
003f2368  5f 87 fc eb                                      bl #0x3140ec
003f236c  08 10 a0 e1                                      mov r1, r8
003f2370  0a 00 a0 e1                                      mov r0, sl
003f2374  c3 15 fd eb                                      bl #0x337a88
003f2378  08 00 a0 e1                                      mov r0, r8
003f237c  8a 85 fc eb                                      bl #0x3139ac
003f2380  06 00 a0 e1                                      mov r0, r6
003f2384  07 10 a0 e1                                      mov r1, r7
003f2388  8f f4 ff eb                                      bl #0x3ef5cc
003f238c  05 30 94 e7                                      ldr r3, [r4, r5]
003f2390  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003f2394  00 30 93 e5                                      ldr r3, [r3]
003f2398  03 00 52 e1                                      cmp r2, r3
003f239c  14 00 00 1a                                      bne #0x3f23f4
003f23a0  44 d0 8d e2                                      add sp, sp, #0x44
003f23a4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003f23a8  50 30 9f e5                                      ldr r3, [pc, #0x50]
003f23ac  0c 80 8d e2                                      add r8, sp, #0xc
003f23b0  03 a0 94 e7                                      ldr sl, [r4, r3]
003f23b4  0a 00 a0 e1                                      mov r0, sl
003f23b8  32 15 fd eb                                      bl #0x337888
003f23bc  44 10 9f e5                                      ldr r1, [pc, #0x44]
003f23c0  04 20 8d e2                                      add r2, sp, #4
003f23c4  08 00 a0 e1                                      mov r0, r8
003f23c8  01 10 8f e0                                      add r1, pc, r1
003f23cc  46 87 fc eb                                      bl #0x3140ec
003f23d0  08 10 a0 e1                                      mov r1, r8
003f23d4  0a 00 a0 e1                                      mov r0, sl
003f23d8  aa 15 fd eb                                      bl #0x337a88
003f23dc  08 00 a0 e1                                      mov r0, r8
003f23e0  71 85 fc eb                                      bl #0x3139ac
003f23e4  06 00 a0 e1                                      mov r0, r6
003f23e8  07 10 a0 e1                                      mov r1, r7
003f23ec  0f fc ff eb                                      bl #0x3f1430
003f23f0  e5 ff ff ea                                      b #0x3f238c
003f23f4  c5 6f fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f23f8  7c 27 5a 00 ac 40 00 00 84 08 00 00 84 42 4d 00  .byte 0x7c, 0x27, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x84, 0x42, 0x4d, 0x00
003f2408  20 42 4d 00                                      .byte 0x20, 0x42, 0x4d, 0x00

; FUNCTION 0x003f240c, declared_size=320, range_size=320, mode=arm
; class-group: Level
; alias: _ZN5Level14_LoadBatchInitEv
; demangled: Level::_LoadBatchInit()
; decoder-mode: arm
003f240c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f2410  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
003f2414  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
003f2418  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
003f241c  04 40 8f e0                                      add r4, pc, r4
003f2420  06 20 94 e7                                      ldr r2, [r4, r6]
003f2424  03 30 94 e7                                      ldr r3, [r4, r3]
003f2428  20 d0 4d e2                                      sub sp, sp, #0x20
003f242c  00 20 92 e5                                      ldr r2, [r2]
003f2430  10 30 93 e5                                      ldr r3, [r3, #0x10]
003f2434  00 10 a0 e3                                      mov r1, #0
003f2438  1c 20 8d e5                                      str r2, [sp, #0x1c]
003f243c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f2440  00 20 a0 e3                                      mov r2, #0
003f2444  00 80 a0 e1                                      mov r8, r0
003f2448  03 00 a0 e1                                      mov r0, r3
003f244c  00 30 93 e5                                      ldr r3, [r3]
003f2450  0f e0 a0 e1                                      mov lr, pc
003f2454  60 f0 93 e5                                      ldr pc, [r3, #0x60]
003f2458  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
003f245c  04 50 8d e2                                      add r5, sp, #4
003f2460  03 70 94 e7                                      ldr r7, [r4, r3]
003f2464  07 00 a0 e1                                      mov r0, r7
003f2468  06 15 fd eb                                      bl #0x337888
003f246c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
003f2470  0d 20 a0 e1                                      mov r2, sp
003f2474  05 00 a0 e1                                      mov r0, r5
003f2478  01 10 8f e0                                      add r1, pc, r1
003f247c  1a 87 fc eb                                      bl #0x3140ec
003f2480  07 00 a0 e1                                      mov r0, r7
003f2484  05 10 a0 e1                                      mov r1, r5
003f2488  7e 15 fd eb                                      bl #0x337a88
003f248c  00 70 a0 e1                                      mov r7, r0
003f2490  05 00 a0 e1                                      mov r0, r5
003f2494  44 85 fc eb                                      bl #0x3139ac
003f2498  00 00 57 e3                                      cmp r7, #0
003f249c  06 00 00 0a                                      beq #0x3f24bc
003f24a0  06 30 94 e7                                      ldr r3, [r4, r6]
003f24a4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003f24a8  00 30 93 e5                                      ldr r3, [r3]
003f24ac  03 00 52 e1                                      cmp r2, r3
003f24b0  1e 00 00 1a                                      bne #0x3f2530
003f24b4  20 d0 8d e2                                      add sp, sp, #0x20
003f24b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f24bc  58 51 98 e5                                      ldr r5, [r8, #0x158]
003f24c0  00 00 55 e3                                      cmp r5, #0
003f24c4  04 00 00 0a                                      beq #0x3f24dc
003f24c8  05 00 a0 e1                                      mov r0, r5
003f24cc  5d fd ff eb                                      bl #0x3f1a48
003f24d0  05 00 a0 e1                                      mov r0, r5
003f24d4  d9 77 fc eb                                      bl #0x310440
003f24d8  58 71 88 e5                                      str r7, [r8, #0x158]
003f24dc  00 10 a0 e3                                      mov r1, #0
003f24e0  38 00 a0 e3                                      mov r0, #0x38
003f24e4  21 78 fc eb                                      bl #0x310570
003f24e8  58 10 9f e5                                      ldr r1, [pc, #0x58]
003f24ec  00 30 a0 e3                                      mov r3, #0
003f24f0  00 20 a0 e1                                      mov r2, r0
003f24f4  01 10 94 e7                                      ldr r1, [r4, r1]
003f24f8  00 30 c0 e5                                      strb r3, [r0]
003f24fc  10 30 80 e5                                      str r3, [r0, #0x10]
003f2500  08 10 81 e2                                      add r1, r1, #8
003f2504  04 10 80 e5                                      str r1, [r0, #4]
003f2508  14 30 80 e5                                      str r3, [r0, #0x14]
003f250c  18 30 80 e5                                      str r3, [r0, #0x18]
003f2510  20 30 80 e5                                      str r3, [r0, #0x20]
003f2514  1c 30 e2 e5                                      strb r3, [r2, #0x1c]!
003f2518  28 20 80 e5                                      str r2, [r0, #0x28]
003f251c  34 30 80 e5                                      str r3, [r0, #0x34]
003f2520  24 20 80 e5                                      str r2, [r0, #0x24]
003f2524  2c 30 80 e5                                      str r3, [r0, #0x2c]
003f2528  58 01 88 e5                                      str r0, [r8, #0x158]
003f252c  db ff ff ea                                      b #0x3f24a0
003f2530  76 6f fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f2534  74 26 5a 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0x74, 0x26, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
003f2544  80 41 4d 00 7c 13 00 00                          .byte 0x80, 0x41, 0x4d, 0x00, 0x7c, 0x13, 0x00, 0x00

; FUNCTION 0x003f254c, declared_size=928, range_size=928, mode=arm
; class-group: Level
; alias: _ZNK5Level4DrawEv
; demangled: Level::Draw() const
; decoder-mode: arm
003f254c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f2550  74 43 9f e5                                      ldr r4, [pc, #0x374]
003f2554  74 53 9f e5                                      ldr r5, [pc, #0x374]
003f2558  9c d0 4d e2                                      sub sp, sp, #0x9c
003f255c  04 40 8f e0                                      add r4, pc, r4
003f2560  05 30 94 e7                                      ldr r3, [r4, r5]
003f2564  00 30 93 e5                                      ldr r3, [r3]
003f2568  94 30 8d e5                                      str r3, [sp, #0x94]
003f256c  30 31 90 e5                                      ldr r3, [r0, #0x130]
003f2570  26 00 53 e3                                      cmp r3, #0x26
003f2574  06 00 00 0a                                      beq #0x3f2594
003f2578  05 30 94 e7                                      ldr r3, [r4, r5]
003f257c  94 20 9d e5                                      ldr r2, [sp, #0x94]
003f2580  00 30 93 e5                                      ldr r3, [r3]
003f2584  03 00 52 e1                                      cmp r2, r3
003f2588  ce 00 00 1a                                      bne #0x3f28c8
003f258c  9c d0 8d e2                                      add sp, sp, #0x9c
003f2590  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f2594  38 33 9f e5                                      ldr r3, [pc, #0x338]
003f2598  7c a0 8d e2                                      add sl, sp, #0x7c
003f259c  64 70 8d e2                                      add r7, sp, #0x64
003f25a0  03 80 94 e7                                      ldr r8, [r4, r3]
003f25a4  38 00 98 e5                                      ldr r0, [r8, #0x38]
003f25a8  f6 58 fd eb                                      bl #0x348988
003f25ac  24 33 9f e5                                      ldr r3, [pc, #0x324]
003f25b0  03 60 94 e7                                      ldr r6, [r4, r3]
003f25b4  06 00 a0 e1                                      mov r0, r6
003f25b8  b2 14 fd eb                                      bl #0x337888
003f25bc  18 13 9f e5                                      ldr r1, [pc, #0x318]
003f25c0  60 20 8d e2                                      add r2, sp, #0x60
003f25c4  0a 00 a0 e1                                      mov r0, sl
003f25c8  01 10 8f e0                                      add r1, pc, r1
003f25cc  c6 86 fc eb                                      bl #0x3140ec
003f25d0  0a 10 a0 e1                                      mov r1, sl
003f25d4  06 00 a0 e1                                      mov r0, r6
003f25d8  2a 15 fd eb                                      bl #0x337a88
003f25dc  0a 00 a0 e1                                      mov r0, sl
003f25e0  f1 84 fc eb                                      bl #0x3139ac
003f25e4  06 00 a0 e1                                      mov r0, r6
003f25e8  a6 14 fd eb                                      bl #0x337888
003f25ec  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
003f25f0  5c 20 8d e2                                      add r2, sp, #0x5c
003f25f4  07 00 a0 e1                                      mov r0, r7
003f25f8  01 10 8f e0                                      add r1, pc, r1
003f25fc  ba 86 fc eb                                      bl #0x3140ec
003f2600  06 00 a0 e1                                      mov r0, r6
003f2604  07 10 a0 e1                                      mov r1, r7
003f2608  1e 15 fd eb                                      bl #0x337a88
003f260c  00 60 a0 e1                                      mov r6, r0
003f2610  07 00 a0 e1                                      mov r0, r7
003f2614  e4 84 fc eb                                      bl #0x3139ac
003f2618  00 00 56 e3                                      cmp r6, #0
003f261c  d5 ff ff 0a                                      beq #0x3f2578
003f2620  40 00 98 e5                                      ldr r0, [r8, #0x40]
003f2624  00 10 a0 e3                                      mov r1, #0
003f2628  01 20 a0 e3                                      mov r2, #1
003f262c  91 ef fd eb                                      bl #0x36e478
003f2630  60 66 90 e5                                      ldr r6, [r0, #0x660]
003f2634  00 00 56 e3                                      cmp r6, #0
003f2638  ce ff ff 0a                                      beq #0x3f2578
003f263c  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
003f2640  16 1e 86 e2                                      add r1, r6, #0x160
003f2644  48 a0 8d e2                                      add sl, sp, #0x48
003f2648  03 00 94 e7                                      ldr r0, [r4, r3]
003f264c  e5 bf 04 eb                                      bl #0x5225e8
003f2650  10 20 98 e5                                      ldr r2, [r8, #0x10]
003f2654  00 30 a0 e3                                      mov r3, #0
003f2658  0a 10 a0 e1                                      mov r1, sl
003f265c  06 00 a0 e1                                      mov r0, r6
003f2660  10 70 92 e5                                      ldr r7, [r2, #0x10]
003f2664  50 30 8d e5                                      str r3, [sp, #0x50]
003f2668  48 30 8d e5                                      str r3, [sp, #0x48]
003f266c  4c 30 8d e5                                      str r3, [sp, #0x4c]
003f2670  1b 85 fe eb                                      bl #0x393ae4
003f2674  0a 00 a0 e1                                      mov r0, sl
003f2678  8c 6a fd eb                                      bl #0x34d0b0
003f267c  42 14 a0 e3                                      mov r1, #0x42000000
003f2680  00 80 a0 e1                                      mov r8, r0
003f2684  32 17 81 e2                                      add r1, r1, #0xc80000
003f2688  00 00 90 e5                                      ldr r0, [r0]
003f268c  b6 71 fc eb                                      bl #0x30ed6c
003f2690  42 14 a0 e3                                      mov r1, #0x42000000
003f2694  00 00 88 e5                                      str r0, [r8]
003f2698  32 17 81 e2                                      add r1, r1, #0xc80000
003f269c  04 00 98 e5                                      ldr r0, [r8, #4]
003f26a0  b1 71 fc eb                                      bl #0x30ed6c
003f26a4  42 14 a0 e3                                      mov r1, #0x42000000
003f26a8  04 00 88 e5                                      str r0, [r8, #4]
003f26ac  32 17 81 e2                                      add r1, r1, #0xc80000
003f26b0  08 00 98 e5                                      ldr r0, [r8, #8]
003f26b4  ac 71 fc eb                                      bl #0x30ed6c
003f26b8  08 00 88 e5                                      str r0, [r8, #8]
003f26bc  68 31 96 e5                                      ldr r3, [r6, #0x168]
003f26c0  60 21 96 e5                                      ldr r2, [r6, #0x160]
003f26c4  00 00 97 e5                                      ldr r0, [r7]
003f26c8  64 11 96 e5                                      ldr r1, [r6, #0x164]
003f26cc  00 80 e0 e3                                      mvn r8, #0
003f26d0  1c b0 90 e5                                      ldr fp, [r0, #0x1c]
003f26d4  3c 20 8d e5                                      str r2, [sp, #0x3c]
003f26d8  44 30 8d e5                                      str r3, [sp, #0x44]
003f26dc  40 10 8d e5                                      str r1, [sp, #0x40]
003f26e0  64 01 96 e5                                      ldr r0, [r6, #0x164]
003f26e4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
003f26e8  2d 71 fc eb                                      bl #0x30eba4
003f26ec  50 10 9d e5                                      ldr r1, [sp, #0x50]
003f26f0  00 90 a0 e1                                      mov sb, r0
003f26f4  68 01 96 e5                                      ldr r0, [r6, #0x168]
003f26f8  29 71 fc eb                                      bl #0x30eba4
003f26fc  48 10 9d e5                                      ldr r1, [sp, #0x48]
003f2700  00 a0 a0 e1                                      mov sl, r0
003f2704  60 01 96 e5                                      ldr r0, [r6, #0x160]
003f2708  25 71 fc eb                                      bl #0x30eba4
003f270c  00 c0 a0 e3                                      mov ip, #0
003f2710  59 c0 cd e5                                      strb ip, [sp, #0x59]
003f2714  5a c0 cd e5                                      strb ip, [sp, #0x5a]
003f2718  58 80 cd e5                                      strb r8, [sp, #0x58]
003f271c  5b 80 cd e5                                      strb r8, [sp, #0x5b]
003f2720  04 c0 8d e5                                      str ip, [sp, #4]
003f2724  30 00 8d e5                                      str r0, [sp, #0x30]
003f2728  34 90 8d e5                                      str sb, [sp, #0x34]
003f272c  38 a0 8d e5                                      str sl, [sp, #0x38]
003f2730  30 20 8d e2                                      add r2, sp, #0x30
003f2734  58 30 9d e5                                      ldr r3, [sp, #0x58]
003f2738  07 00 a0 e1                                      mov r0, r7
003f273c  3c 10 8d e2                                      add r1, sp, #0x3c
003f2740  3b ff 2f e1                                      blx fp
003f2744  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
003f2748  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003f274c  03 90 94 e7                                      ldr sb, [r4, r3]
003f2750  02 00 a0 e1                                      mov r0, r2
003f2754  08 b0 99 e5                                      ldr fp, [sb, #8]
003f2758  04 30 99 e5                                      ldr r3, [sb, #4]
003f275c  08 20 8d e5                                      str r2, [sp, #8]
003f2760  0b 10 a0 e1                                      mov r1, fp
003f2764  14 30 8d e5                                      str r3, [sp, #0x14]
003f2768  7f 71 fc eb                                      bl #0x30ed6c
003f276c  14 10 9d e5                                      ldr r1, [sp, #0x14]
003f2770  00 a0 a0 e1                                      mov sl, r0
003f2774  50 00 9d e5                                      ldr r0, [sp, #0x50]
003f2778  7b 71 fc eb                                      bl #0x30ed6c
003f277c  00 10 a0 e1                                      mov r1, r0
003f2780  0a 00 a0 e1                                      mov r0, sl
003f2784  08 6f fc eb                                      bl #0x30e3ac
003f2788  00 90 99 e5                                      ldr sb, [sb]
003f278c  00 a0 a0 e1                                      mov sl, r0
003f2790  50 00 9d e5                                      ldr r0, [sp, #0x50]
003f2794  09 10 a0 e1                                      mov r1, sb
003f2798  73 71 fc eb                                      bl #0x30ed6c
003f279c  48 10 9d e5                                      ldr r1, [sp, #0x48]
003f27a0  00 30 a0 e1                                      mov r3, r0
003f27a4  0b 00 a0 e1                                      mov r0, fp
003f27a8  0c 30 8d e5                                      str r3, [sp, #0xc]
003f27ac  6e 71 fc eb                                      bl #0x30ed6c
003f27b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f27b4  00 10 a0 e1                                      mov r1, r0
003f27b8  03 00 a0 e1                                      mov r0, r3
003f27bc  fa 6e fc eb                                      bl #0x30e3ac
003f27c0  48 10 9d e5                                      ldr r1, [sp, #0x48]
003f27c4  00 b0 a0 e1                                      mov fp, r0
003f27c8  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f27cc  66 71 fc eb                                      bl #0x30ed6c
003f27d0  08 20 9d e5                                      ldr r2, [sp, #8]
003f27d4  00 30 a0 e1                                      mov r3, r0
003f27d8  09 10 a0 e1                                      mov r1, sb
003f27dc  02 00 a0 e1                                      mov r0, r2
003f27e0  0c 30 8d e5                                      str r3, [sp, #0xc]
003f27e4  60 71 fc eb                                      bl #0x30ed6c
003f27e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f27ec  00 10 a0 e1                                      mov r1, r0
003f27f0  03 00 a0 e1                                      mov r0, r3
003f27f4  ec 6e fc eb                                      bl #0x30e3ac
003f27f8  4c b0 8d e5                                      str fp, [sp, #0x4c]
003f27fc  50 00 8d e5                                      str r0, [sp, #0x50]
003f2800  48 a0 8d e5                                      str sl, [sp, #0x48]
003f2804  00 30 97 e5                                      ldr r3, [r7]
003f2808  64 11 96 e5                                      ldr r1, [r6, #0x164]
003f280c  00 90 a0 e1                                      mov sb, r0
003f2810  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f2814  0b 00 a0 e1                                      mov r0, fp
003f2818  10 30 8d e5                                      str r3, [sp, #0x10]
003f281c  e0 70 fc eb                                      bl #0x30eba4
003f2820  68 11 96 e5                                      ldr r1, [r6, #0x168]
003f2824  00 30 a0 e1                                      mov r3, r0
003f2828  09 00 a0 e1                                      mov r0, sb
003f282c  0c 30 8d e5                                      str r3, [sp, #0xc]
003f2830  db 70 fc eb                                      bl #0x30eba4
003f2834  60 11 96 e5                                      ldr r1, [r6, #0x160]
003f2838  00 20 a0 e1                                      mov r2, r0
003f283c  0a 00 a0 e1                                      mov r0, sl
003f2840  08 20 8d e5                                      str r2, [sp, #8]
003f2844  d6 70 fc eb                                      bl #0x30eba4
003f2848  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f284c  0b 10 a0 e1                                      mov r1, fp
003f2850  28 30 8d e5                                      str r3, [sp, #0x28]
003f2854  24 00 8d e5                                      str r0, [sp, #0x24]
003f2858  08 20 9d e5                                      ldr r2, [sp, #8]
003f285c  2c 20 8d e5                                      str r2, [sp, #0x2c]
003f2860  64 01 96 e5                                      ldr r0, [r6, #0x164]
003f2864  d0 6e fc eb                                      bl #0x30e3ac
003f2868  09 10 a0 e1                                      mov r1, sb
003f286c  00 b0 a0 e1                                      mov fp, r0
003f2870  68 01 96 e5                                      ldr r0, [r6, #0x168]
003f2874  cc 6e fc eb                                      bl #0x30e3ac
003f2878  0a 10 a0 e1                                      mov r1, sl
003f287c  00 90 a0 e1                                      mov sb, r0
003f2880  60 01 96 e5                                      ldr r0, [r6, #0x160]
003f2884  c8 6e fc eb                                      bl #0x30e3ac
003f2888  04 c0 9d e5                                      ldr ip, [sp, #4]
003f288c  7f 30 e0 e3                                      mvn r3, #0x7f
003f2890  54 80 cd e5                                      strb r8, [sp, #0x54]
003f2894  56 c0 cd e5                                      strb ip, [sp, #0x56]
003f2898  55 30 cd e5                                      strb r3, [sp, #0x55]
003f289c  57 80 cd e5                                      strb r8, [sp, #0x57]
003f28a0  18 00 8d e5                                      str r0, [sp, #0x18]
003f28a4  1c b0 8d e5                                      str fp, [sp, #0x1c]
003f28a8  20 90 8d e5                                      str sb, [sp, #0x20]
003f28ac  07 00 a0 e1                                      mov r0, r7
003f28b0  24 10 8d e2                                      add r1, sp, #0x24
003f28b4  18 20 8d e2                                      add r2, sp, #0x18
003f28b8  54 30 9d e5                                      ldr r3, [sp, #0x54]
003f28bc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
003f28c0  3c ff 2f e1                                      blx ip
003f28c4  2b ff ff ea                                      b #0x3f2578
003f28c8  90 6e fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f28cc  34 25 5a 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0x34, 0x25, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
003f28dc  50 40 4d 00 38 40 4d 00 04 12 00 00 40 43 00 00  .byte 0x50, 0x40, 0x4d, 0x00, 0x38, 0x40, 0x4d, 0x00, 0x04, 0x12, 0x00, 0x00, 0x40, 0x43, 0x00, 0x00

; FUNCTION 0x003f2ae4, declared_size=596, range_size=596, mode=arm
; class-group: Level
; alias: _ZN5Level13_LoadBatchingEv
; demangled: Level::_LoadBatching()
; decoder-mode: arm
003f2ae4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003f2ae8  2c 42 9f e5                                      ldr r4, [pc, #0x22c]
003f2aec  2c 62 9f e5                                      ldr r6, [pc, #0x22c]
003f2af0  2c 22 9f e5                                      ldr r2, [pc, #0x22c]
003f2af4  04 40 8f e0                                      add r4, pc, r4
003f2af8  06 30 94 e7                                      ldr r3, [r4, r6]
003f2afc  02 80 94 e7                                      ldr r8, [r4, r2]
003f2b00  20 d0 4d e2                                      sub sp, sp, #0x20
003f2b04  00 30 93 e5                                      ldr r3, [r3]
003f2b08  00 50 a0 e1                                      mov r5, r0
003f2b0c  08 00 a0 e1                                      mov r0, r8
003f2b10  1c 30 8d e5                                      str r3, [sp, #0x1c]
003f2b14  5b 13 fd eb                                      bl #0x337888
003f2b18  08 12 9f e5                                      ldr r1, [pc, #0x208]
003f2b1c  04 70 8d e2                                      add r7, sp, #4
003f2b20  0d 20 a0 e1                                      mov r2, sp
003f2b24  01 10 8f e0                                      add r1, pc, r1
003f2b28  07 00 a0 e1                                      mov r0, r7
003f2b2c  6e 85 fc eb                                      bl #0x3140ec
003f2b30  08 00 a0 e1                                      mov r0, r8
003f2b34  07 10 a0 e1                                      mov r1, r7
003f2b38  d2 13 fd eb                                      bl #0x337a88
003f2b3c  00 80 a0 e1                                      mov r8, r0
003f2b40  07 00 a0 e1                                      mov r0, r7
003f2b44  98 83 fc eb                                      bl #0x3139ac
003f2b48  00 00 58 e3                                      cmp r8, #0
003f2b4c  06 00 00 0a                                      beq #0x3f2b6c
003f2b50  06 30 94 e7                                      ldr r3, [r4, r6]
003f2b54  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003f2b58  00 30 93 e5                                      ldr r3, [r3]
003f2b5c  03 00 52 e1                                      cmp r2, r3
003f2b60  6c 00 00 1a                                      bne #0x3f2d18
003f2b64  20 d0 8d e2                                      add sp, sp, #0x20
003f2b68  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003f2b6c  b8 81 9f e5                                      ldr r8, [pc, #0x1b8]
003f2b70  08 70 94 e7                                      ldr r7, [r4, r8]
003f2b74  10 30 97 e5                                      ldr r3, [r7, #0x10]
003f2b78  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
003f2b7c  8f 94 fd eb                                      bl #0x357dc0
003f2b80  10 30 97 e5                                      ldr r3, [r7, #0x10]
003f2b84  01 20 a0 e3                                      mov r2, #1
003f2b88  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f2b8c  3c 24 c3 e5                                      strb r2, [r3, #0x43c]
003f2b90  ed 3a fe eb                                      bl #0x38174c
003f2b94  00 00 50 e3                                      cmp r0, #0
003f2b98  31 00 00 1a                                      bne #0x3f2c64
003f2b9c  38 10 95 e5                                      ldr r1, [r5, #0x38]
003f2ba0  88 01 9f e5                                      ldr r0, [pc, #0x188]
003f2ba4  b4 32 d1 e5                                      ldrb r3, [r1, #0x2b4]
003f2ba8  b0 22 91 e5                                      ldr r2, [r1, #0x2b0]
003f2bac  00 00 8f e0                                      add r0, pc, r0
003f2bb0  ac 12 91 e5                                      ldr r1, [r1, #0x2ac]
003f2bb4  b2 6c fc eb                                      bl #0x30de84
003f2bb8  38 a0 95 e5                                      ldr sl, [r5, #0x38]
003f2bbc  b0 02 9a e5                                      ldr r0, [sl, #0x2b0]
003f2bc0  5a 70 fc eb                                      bl #0x30ed30
003f2bc4  52 28 0b e3                                      movw r2, #0xb852
003f2bc8  eb 31 05 e3                                      movw r3, #0x51eb
003f2bcc  1e 25 48 e3                                      movt r2, #0x851e
003f2bd0  f0 3f 43 e3                                      movt r3, #0x3ff0
003f2bd4  b6 6f fc eb                                      bl #0x30eab4
003f2bd8  7c 6f fc eb                                      bl #0x30e9d0
003f2bdc  10 30 97 e5                                      ldr r3, [r7, #0x10]
003f2be0  00 90 a0 e1                                      mov sb, r0
003f2be4  ac 02 9a e5                                      ldr r0, [sl, #0x2ac]
003f2be8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f2bec  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
003f2bf0  4e 70 fc eb                                      bl #0x30ed30
003f2bf4  52 28 0b e3                                      movw r2, #0xb852
003f2bf8  eb 31 05 e3                                      movw r3, #0x51eb
003f2bfc  f0 3f 43 e3                                      movt r3, #0x3ff0
003f2c00  1e 25 48 e3                                      movt r2, #0x851e
003f2c04  aa 6f fc eb                                      bl #0x30eab4
003f2c08  70 6f fc eb                                      bl #0x30e9d0
003f2c0c  30 92 87 e5                                      str sb, [r7, #0x230]
003f2c10  2c 02 87 e5                                      str r0, [r7, #0x22c]
003f2c14  38 30 95 e5                                      ldr r3, [r5, #0x38]
003f2c18  58 01 95 e5                                      ldr r0, [r5, #0x158]
003f2c1c  b4 12 d3 e5                                      ldrb r1, [r3, #0x2b4]
003f2c20  17 6c 04 eb                                      bl #0x50dc84
003f2c24  08 30 94 e7                                      ldr r3, [r4, r8]
003f2c28  00 10 a0 e3                                      mov r1, #0
003f2c2c  10 20 93 e5                                      ldr r2, [r3, #0x10]
003f2c30  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
003f2c34  3c 14 c2 e5                                      strb r1, [r2, #0x43c]
003f2c38  58 21 95 e5                                      ldr r2, [r5, #0x158]
003f2c3c  00 10 d2 e5                                      ldrb r1, [r2]
003f2c40  00 00 51 e3                                      cmp r1, #0
003f2c44  29 00 00 1a                                      bne #0x3f2cf0
003f2c48  34 30 92 e5                                      ldr r3, [r2, #0x34]
003f2c4c  01 10 a0 e3                                      mov r1, #1
003f2c50  03 00 a0 e1                                      mov r0, r3
003f2c54  00 30 93 e5                                      ldr r3, [r3]
003f2c58  0f e0 a0 e1                                      mov lr, pc
003f2c5c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003f2c60  ba ff ff ea                                      b #0x3f2b50
003f2c64  38 10 95 e5                                      ldr r1, [r5, #0x38]
003f2c68  c4 00 9f e5                                      ldr r0, [pc, #0xc4]
003f2c6c  a8 32 d1 e5                                      ldrb r3, [r1, #0x2a8]
003f2c70  a4 22 91 e5                                      ldr r2, [r1, #0x2a4]
003f2c74  00 00 8f e0                                      add r0, pc, r0
003f2c78  a0 12 91 e5                                      ldr r1, [r1, #0x2a0]
003f2c7c  80 6c fc eb                                      bl #0x30de84
003f2c80  38 a0 95 e5                                      ldr sl, [r5, #0x38]
003f2c84  a4 02 9a e5                                      ldr r0, [sl, #0x2a4]
003f2c88  28 70 fc eb                                      bl #0x30ed30
003f2c8c  52 28 0b e3                                      movw r2, #0xb852
003f2c90  eb 31 05 e3                                      movw r3, #0x51eb
003f2c94  1e 25 48 e3                                      movt r2, #0x851e
003f2c98  f0 3f 43 e3                                      movt r3, #0x3ff0
003f2c9c  84 6f fc eb                                      bl #0x30eab4
003f2ca0  4a 6f fc eb                                      bl #0x30e9d0
003f2ca4  10 30 97 e5                                      ldr r3, [r7, #0x10]
003f2ca8  00 90 a0 e1                                      mov sb, r0
003f2cac  a0 02 9a e5                                      ldr r0, [sl, #0x2a0]
003f2cb0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f2cb4  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
003f2cb8  1c 70 fc eb                                      bl #0x30ed30
003f2cbc  52 28 0b e3                                      movw r2, #0xb852
003f2cc0  eb 31 05 e3                                      movw r3, #0x51eb
003f2cc4  1e 25 48 e3                                      movt r2, #0x851e
003f2cc8  f0 3f 43 e3                                      movt r3, #0x3ff0
003f2ccc  78 6f fc eb                                      bl #0x30eab4
003f2cd0  3e 6f fc eb                                      bl #0x30e9d0
003f2cd4  30 92 87 e5                                      str sb, [r7, #0x230]
003f2cd8  2c 02 87 e5                                      str r0, [r7, #0x22c]
003f2cdc  38 30 95 e5                                      ldr r3, [r5, #0x38]
003f2ce0  58 01 95 e5                                      ldr r0, [r5, #0x158]
003f2ce4  a8 12 d3 e5                                      ldrb r1, [r3, #0x2a8]
003f2ce8  e5 6b 04 eb                                      bl #0x50dc84
003f2cec  cc ff ff ea                                      b #0x3f2c24
003f2cf0  10 30 93 e5                                      ldr r3, [r3, #0x10]
003f2cf4  34 10 92 e5                                      ldr r1, [r2, #0x34]
003f2cf8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f2cfc  04 30 93 e5                                      ldr r3, [r3, #4]
003f2d00  03 00 a0 e1                                      mov r0, r3
003f2d04  00 30 93 e5                                      ldr r3, [r3]
003f2d08  0f e0 a0 e1                                      mov lr, pc
003f2d0c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003f2d10  58 21 95 e5                                      ldr r2, [r5, #0x158]
003f2d14  cb ff ff ea                                      b #0x3f2c48
003f2d18  7c 6d fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f2d1c  9c 1f 5a 00 ac 40 00 00 84 08 00 00 d4 3a 4d 00  .byte 0x9c, 0x1f, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd4, 0x3a, 0x4d, 0x00
003f2d2c  f4 37 00 00 fc 3a 4d 00 34 3a 4d 00              .byte 0xf4, 0x37, 0x00, 0x00, 0xfc, 0x3a, 0x4d, 0x00, 0x34, 0x3a, 0x4d, 0x00

; FUNCTION 0x003f2d38, declared_size=1008, range_size=1008, mode=arm
; class-group: Level
; alias: _ZN5Level14_LoadBatchListEv
; demangled: Level::_LoadBatchList()
; decoder-mode: arm
003f2d38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f2d3c  98 63 9f e5                                      ldr r6, [pc, #0x398]
003f2d40  98 93 9f e5                                      ldr sb, [pc, #0x398]
003f2d44  98 83 9f e5                                      ldr r8, [pc, #0x398]
003f2d48  06 60 8f e0                                      add r6, pc, r6
003f2d4c  09 30 96 e7                                      ldr r3, [r6, sb]
003f2d50  08 50 96 e7                                      ldr r5, [r6, r8]
003f2d54  bc d0 4d e2                                      sub sp, sp, #0xbc
003f2d58  00 30 93 e5                                      ldr r3, [r3]
003f2d5c  0c 00 8d e5                                      str r0, [sp, #0xc]
003f2d60  05 00 a0 e1                                      mov r0, r5
003f2d64  b4 30 8d e5                                      str r3, [sp, #0xb4]
003f2d68  c6 12 fd eb                                      bl #0x337888
003f2d6c  74 13 9f e5                                      ldr r1, [pc, #0x374]
003f2d70  9c 40 8d e2                                      add r4, sp, #0x9c
003f2d74  38 20 8d e2                                      add r2, sp, #0x38
003f2d78  01 10 8f e0                                      add r1, pc, r1
003f2d7c  04 00 a0 e1                                      mov r0, r4
003f2d80  d9 84 fc eb                                      bl #0x3140ec
003f2d84  05 00 a0 e1                                      mov r0, r5
003f2d88  04 10 a0 e1                                      mov r1, r4
003f2d8c  3d 13 fd eb                                      bl #0x337a88
003f2d90  00 50 a0 e1                                      mov r5, r0
003f2d94  04 00 a0 e1                                      mov r0, r4
003f2d98  03 83 fc eb                                      bl #0x3139ac
003f2d9c  00 00 55 e3                                      cmp r5, #0
003f2da0  4a 00 00 1a                                      bne #0x3f2ed0
003f2da4  40 23 9f e5                                      ldr r2, [pc, #0x340]
003f2da8  40 33 9f e5                                      ldr r3, [pc, #0x340]
003f2dac  40 b3 9f e5                                      ldr fp, [pc, #0x340]
003f2db0  02 20 8f e0                                      add r2, pc, r2
003f2db4  10 20 8d e5                                      str r2, [sp, #0x10]
003f2db8  38 23 9f e5                                      ldr r2, [pc, #0x338]
003f2dbc  03 30 96 e7                                      ldr r3, [r6, r3]
003f2dc0  0b b0 8f e0                                      add fp, pc, fp
003f2dc4  02 20 8f e0                                      add r2, pc, r2
003f2dc8  04 20 8d e5                                      str r2, [sp, #4]
003f2dcc  28 23 9f e5                                      ldr r2, [pc, #0x328]
003f2dd0  38 30 93 e5                                      ldr r3, [r3, #0x38]
003f2dd4  08 a0 a0 e1                                      mov sl, r8
003f2dd8  02 20 8f e0                                      add r2, pc, r2
003f2ddc  08 20 8d e5                                      str r2, [sp, #8]
003f2de0  14 40 93 e5                                      ldr r4, [r3, #0x14]
003f2de4  0c 70 83 e2                                      add r7, r3, #0xc
003f2de8  10 33 9f e5                                      ldr r3, [pc, #0x310]
003f2dec  14 30 8d e5                                      str r3, [sp, #0x14]
003f2df0  04 00 57 e1                                      cmp r7, r4
003f2df4  35 00 00 0a                                      beq #0x3f2ed0
003f2df8  18 50 8d e2                                      add r5, sp, #0x18
003f2dfc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003f2e00  05 00 a0 e1                                      mov r0, r5
003f2e04  c6 31 fd eb                                      bl #0x33f524
003f2e08  05 00 a0 e1                                      mov r0, r5
003f2e0c  34 34 fd eb                                      bl #0x33fee4
003f2e10  00 50 50 e2                                      subs r5, r0, #0
003f2e14  22 00 00 0a                                      beq #0x3f2ea4
003f2e18  83 30 d5 e5                                      ldrb r3, [r5, #0x83]
003f2e1c  00 00 53 e3                                      cmp r3, #0
003f2e20  1f 00 00 1a                                      bne #0x3f2ea4
003f2e24  5c 80 95 e5                                      ldr r8, [r5, #0x5c]
003f2e28  0b 10 a0 e1                                      mov r1, fp
003f2e2c  08 00 a0 e1                                      mov r0, r8
003f2e30  39 6d fc eb                                      bl #0x30e31c
003f2e34  00 00 50 e3                                      cmp r0, #0
003f2e38  2b 00 00 1a                                      bne #0x3f2eec
003f2e3c  0a 30 96 e7                                      ldr r3, [r6, sl]
003f2e40  54 80 8d e2                                      add r8, sp, #0x54
003f2e44  03 00 a0 e1                                      mov r0, r3
003f2e48  00 30 8d e5                                      str r3, [sp]
003f2e4c  8d 12 fd eb                                      bl #0x337888
003f2e50  10 10 9d e5                                      ldr r1, [sp, #0x10]
003f2e54  2c 20 8d e2                                      add r2, sp, #0x2c
003f2e58  08 00 a0 e1                                      mov r0, r8
003f2e5c  a2 84 fc eb                                      bl #0x3140ec
003f2e60  00 30 9d e5                                      ldr r3, [sp]
003f2e64  08 10 a0 e1                                      mov r1, r8
003f2e68  03 00 a0 e1                                      mov r0, r3
003f2e6c  05 13 fd eb                                      bl #0x337a88
003f2e70  08 00 a0 e1                                      mov r0, r8
003f2e74  cc 82 fc eb                                      bl #0x3139ac
003f2e78  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f2e7c  58 01 93 e5                                      ldr r0, [r3, #0x158]
003f2e80  24 50 8d e5                                      str r5, [sp, #0x24]
003f2e84  14 10 90 e5                                      ldr r1, [r0, #0x14]
003f2e88  18 30 90 e5                                      ldr r3, [r0, #0x18]
003f2e8c  03 00 51 e1                                      cmp r1, r3
003f2e90  8c 00 00 0a                                      beq #0x3f30c8
003f2e94  00 50 81 e5                                      str r5, [r1]
003f2e98  14 30 90 e5                                      ldr r3, [r0, #0x14]
003f2e9c  04 30 83 e2                                      add r3, r3, #4
003f2ea0  14 30 80 e5                                      str r3, [r0, #0x14]
003f2ea4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003f2ea8  00 00 53 e3                                      cmp r3, #0
003f2eac  01 00 00 1a                                      bne #0x3f2eb8
003f2eb0  28 00 00 ea                                      b #0x3f2f58
003f2eb4  02 30 a0 e1                                      mov r3, r2
003f2eb8  08 20 93 e5                                      ldr r2, [r3, #8]
003f2ebc  00 00 52 e3                                      cmp r2, #0
003f2ec0  fb ff ff 1a                                      bne #0x3f2eb4
003f2ec4  03 40 a0 e1                                      mov r4, r3
003f2ec8  04 00 57 e1                                      cmp r7, r4
003f2ecc  c9 ff ff 1a                                      bne #0x3f2df8
003f2ed0  09 30 96 e7                                      ldr r3, [r6, sb]
003f2ed4  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
003f2ed8  00 30 93 e5                                      ldr r3, [r3]
003f2edc  03 00 52 e1                                      cmp r2, r3
003f2ee0  7c 00 00 1a                                      bne #0x3f30d8
003f2ee4  bc d0 8d e2                                      add sp, sp, #0xbc
003f2ee8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f2eec  08 00 a0 e1                                      mov r0, r8
003f2ef0  04 10 9d e5                                      ldr r1, [sp, #4]
003f2ef4  08 6d fc eb                                      bl #0x30e31c
003f2ef8  00 00 50 e3                                      cmp r0, #0
003f2efc  ce ff ff 0a                                      beq #0x3f2e3c
003f2f00  08 00 a0 e1                                      mov r0, r8
003f2f04  08 10 9d e5                                      ldr r1, [sp, #8]
003f2f08  03 6d fc eb                                      bl #0x30e31c
003f2f0c  00 00 50 e3                                      cmp r0, #0
003f2f10  1d 00 00 1a                                      bne #0x3f2f8c
003f2f14  0a 80 96 e7                                      ldr r8, [r6, sl]
003f2f18  3c 50 8d e2                                      add r5, sp, #0x3c
003f2f1c  08 00 a0 e1                                      mov r0, r8
003f2f20  58 12 fd eb                                      bl #0x337888
003f2f24  14 30 9d e5                                      ldr r3, [sp, #0x14]
003f2f28  28 20 8d e2                                      add r2, sp, #0x28
003f2f2c  05 00 a0 e1                                      mov r0, r5
003f2f30  03 10 8f e0                                      add r1, pc, r3
003f2f34  6c 84 fc eb                                      bl #0x3140ec
003f2f38  05 10 a0 e1                                      mov r1, r5
003f2f3c  08 00 a0 e1                                      mov r0, r8
003f2f40  d0 12 fd eb                                      bl #0x337a88
003f2f44  05 00 a0 e1                                      mov r0, r5
003f2f48  97 82 fc eb                                      bl #0x3139ac
003f2f4c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003f2f50  00 00 53 e3                                      cmp r3, #0
003f2f54  d7 ff ff 1a                                      bne #0x3f2eb8
003f2f58  04 20 94 e5                                      ldr r2, [r4, #4]
003f2f5c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003f2f60  04 00 51 e1                                      cmp r1, r4
003f2f64  05 00 00 1a                                      bne #0x3f2f80
003f2f68  02 40 a0 e1                                      mov r4, r2
003f2f6c  04 20 92 e5                                      ldr r2, [r2, #4]
003f2f70  0c 30 92 e5                                      ldr r3, [r2, #0xc]
003f2f74  03 00 54 e1                                      cmp r4, r3
003f2f78  fa ff ff 0a                                      beq #0x3f2f68
003f2f7c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003f2f80  03 00 52 e1                                      cmp r2, r3
003f2f84  02 40 a0 11                                      movne r4, r2
003f2f88  98 ff ff ea                                      b #0x3f2df0
003f2f8c  44 00 95 e5                                      ldr r0, [r5, #0x44]
003f2f90  08 10 9d e5                                      ldr r1, [sp, #8]
003f2f94  0e 6f fc eb                                      bl #0x30ebd4
003f2f98  00 00 50 e3                                      cmp r0, #0
003f2f9c  dc ff ff 1a                                      bne #0x3f2f14
003f2fa0  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
003f2fa4  08 00 a0 e1                                      mov r0, r8
003f2fa8  01 10 8f e0                                      add r1, pc, r1
003f2fac  da 6c fc eb                                      bl #0x30e31c
003f2fb0  00 00 50 e3                                      cmp r0, #0
003f2fb4  05 80 a0 01                                      moveq r8, r5
003f2fb8  13 00 00 1a                                      bne #0x3f300c
003f2fbc  05 00 a0 e1                                      mov r0, r5
003f2fc0  e6 5e fe eb                                      bl #0x38ab60
003f2fc4  00 00 50 e3                                      cmp r0, #0
003f2fc8  35 00 00 0a                                      beq #0x3f30a4
003f2fcc  00 00 58 e3                                      cmp r8, #0
003f2fd0  03 00 00 0a                                      beq #0x3f2fe4
003f2fd4  08 00 a0 e1                                      mov r0, r8
003f2fd8  2d c0 fe eb                                      bl #0x3a3094
003f2fdc  00 00 50 e3                                      cmp r0, #0
003f2fe0  2f 00 00 1a                                      bne #0x3f30a4
003f2fe4  0a 30 96 e7                                      ldr r3, [r6, sl]
003f2fe8  84 80 8d e2                                      add r8, sp, #0x84
003f2fec  03 00 a0 e1                                      mov r0, r3
003f2ff0  00 30 8d e5                                      str r3, [sp]
003f2ff4  23 12 fd eb                                      bl #0x337888
003f2ff8  08 11 9f e5                                      ldr r1, [pc, #0x108]
003f2ffc  34 20 8d e2                                      add r2, sp, #0x34
003f3000  08 00 a0 e1                                      mov r0, r8
003f3004  01 10 8f e0                                      add r1, pc, r1
003f3008  93 ff ff ea                                      b #0x3f2e5c
003f300c  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
003f3010  08 00 a0 e1                                      mov r0, r8
003f3014  01 10 8f e0                                      add r1, pc, r1
003f3018  bf 6c fc eb                                      bl #0x30e31c
003f301c  00 00 50 e3                                      cmp r0, #0
003f3020  01 00 00 1a                                      bne #0x3f302c
003f3024  00 80 a0 e3                                      mov r8, #0
003f3028  e3 ff ff ea                                      b #0x3f2fbc
003f302c  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
003f3030  08 00 a0 e1                                      mov r0, r8
003f3034  01 10 8f e0                                      add r1, pc, r1
003f3038  b7 6c fc eb                                      bl #0x30e31c
003f303c  00 00 50 e3                                      cmp r0, #0
003f3040  f7 ff ff 0a                                      beq #0x3f3024
003f3044  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003f3048  08 00 a0 e1                                      mov r0, r8
003f304c  01 10 8f e0                                      add r1, pc, r1
003f3050  b1 6c fc eb                                      bl #0x30e31c
003f3054  00 00 50 e3                                      cmp r0, #0
003f3058  f1 ff ff 0a                                      beq #0x3f3024
003f305c  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
003f3060  08 00 a0 e1                                      mov r0, r8
003f3064  01 10 8f e0                                      add r1, pc, r1
003f3068  ab 6c fc eb                                      bl #0x30e31c
003f306c  00 00 50 e3                                      cmp r0, #0
003f3070  eb ff ff 0a                                      beq #0x3f3024
003f3074  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003f3078  08 00 a0 e1                                      mov r0, r8
003f307c  01 10 8f e0                                      add r1, pc, r1
003f3080  a5 6c fc eb                                      bl #0x30e31c
003f3084  00 00 50 e3                                      cmp r0, #0
003f3088  e5 ff ff 0a                                      beq #0x3f3024
003f308c  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003f3090  08 00 a0 e1                                      mov r0, r8
003f3094  01 10 8f e0                                      add r1, pc, r1
003f3098  9f 6c fc eb                                      bl #0x30e31c
003f309c  00 00 50 e3                                      cmp r0, #0
003f30a0  df ff ff 0a                                      beq #0x3f3024
003f30a4  0a 80 96 e7                                      ldr r8, [r6, sl]
003f30a8  6c 50 8d e2                                      add r5, sp, #0x6c
003f30ac  08 00 a0 e1                                      mov r0, r8
003f30b0  f4 11 fd eb                                      bl #0x337888
003f30b4  68 10 9f e5                                      ldr r1, [pc, #0x68]
003f30b8  30 20 8d e2                                      add r2, sp, #0x30
003f30bc  05 00 a0 e1                                      mov r0, r5
003f30c0  01 10 8f e0                                      add r1, pc, r1
003f30c4  9a ff ff ea                                      b #0x3f2f34
003f30c8  10 00 80 e2                                      add r0, r0, #0x10
003f30cc  24 20 8d e2                                      add r2, sp, #0x24
003f30d0  2a fa ff eb                                      bl #0x3f1980
003f30d4  72 ff ff ea                                      b #0x3f2ea4
003f30d8  8c 6c fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f30dc  48 1d 5a 00 ac 40 00 00 84 08 00 00 80 38 4d 00  .byte 0x48, 0x1d, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0x38, 0x4d, 0x00
003f30ec  18 39 4d 00 f4 37 00 00 70 d6 4c 00 c4 d6 4c 00  .byte 0x18, 0x39, 0x4d, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x70, 0xd6, 0x4c, 0x00, 0xc4, 0xd6, 0x4c, 0x00
003f30fc  f0 d5 4c 00 98 37 4d 00 10 d5 4c 00 c4 36 4d 00  .byte 0xf0, 0xd5, 0x4c, 0x00, 0x98, 0x37, 0x4d, 0x00, 0x10, 0xd5, 0x4c, 0x00, 0xc4, 0x36, 0x4d, 0x00
003f310c  ac d5 4c 00 64 d5 4c 00 14 d5 4c 00 dc d4 4c 00  .byte 0xac, 0xd5, 0x4c, 0x00, 0x64, 0xd5, 0x4c, 0x00, 0x14, 0xd5, 0x4c, 0x00, 0xdc, 0xd4, 0x4c, 0x00
003f311c  b4 d4 4c 00 ec d3 4c 00 08 36 4d 00              .byte 0xb4, 0xd4, 0x4c, 0x00, 0xec, 0xd3, 0x4c, 0x00, 0x08, 0x36, 0x4d, 0x00

; FUNCTION 0x003f3128, declared_size=920, range_size=920, mode=arm
; class-group: Level
; alias: _ZN5LevelC1EPKcijjjbbii
; demangled: Level::Level(char const*, int, unsigned int, unsigned int, unsigned int, bool, bool, int, int)
; decoder-mode: arm
003f3128  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f312c  60 c3 9f e5                                      ldr ip, [pc, #0x360]
003f3130  42 de 4d e2                                      sub sp, sp, #0x420
003f3134  0c d0 4d e2                                      sub sp, sp, #0xc
003f3138  1c c0 8d e5                                      str ip, [sp, #0x1c]
003f313c  54 93 9f e5                                      ldr sb, [pc, #0x354]
003f3140  03 c0 a0 e1                                      mov ip, r3
003f3144  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f3148  09 90 8f e0                                      add sb, pc, sb
003f314c  00 40 a0 e1                                      mov r4, r0
003f3150  03 e0 99 e7                                      ldr lr, [sb, r3]
003f3154  02 30 a0 e1                                      mov r3, r2
003f3158  01 80 a0 e1                                      mov r8, r1
003f315c  00 20 9e e5                                      ldr r2, [lr]
003f3160  58 b4 dd e5                                      ldrb fp, [sp, #0x458]
003f3164  18 30 8d e5                                      str r3, [sp, #0x18]
003f3168  14 c0 8d e5                                      str ip, [sp, #0x14]
003f316c  24 24 8d e5                                      str r2, [sp, #0x424]
003f3170  5c a4 dd e5                                      ldrb sl, [sp, #0x45c]
003f3174  b8 13 fd eb                                      bl #0x33805c
003f3178  1c 23 9f e5                                      ldr r2, [pc, #0x31c]
003f317c  00 60 a0 e3                                      mov r6, #0
003f3180  00 50 e0 e3                                      mvn r5, #0
003f3184  02 20 99 e7                                      ldr r2, [sb, r2]
003f3188  44 70 84 e2                                      add r7, r4, #0x44
003f318c  06 10 a0 e1                                      mov r1, r6
003f3190  08 20 82 e2                                      add r2, r2, #8
003f3194  00 20 84 e5                                      str r2, [r4]
003f3198  30 60 84 e5                                      str r6, [r4, #0x30]
003f319c  38 60 84 e5                                      str r6, [r4, #0x38]
003f31a0  3c 50 84 e5                                      str r5, [r4, #0x3c]
003f31a4  40 50 84 e5                                      str r5, [r4, #0x40]
003f31a8  07 00 a0 e1                                      mov r0, r7
003f31ac  f4 24 fe eb                                      bl #0x37c584
003f31b0  50 24 9d e5                                      ldr r2, [sp, #0x450]
003f31b4  08 10 a0 e1                                      mov r1, r8
003f31b8  f8 00 84 e2                                      add r0, r4, #0xf8
003f31bc  dc 20 84 e5                                      str r2, [r4, #0xdc]
003f31c0  54 24 9d e5                                      ldr r2, [sp, #0x454]
003f31c4  f1 b0 c4 e5                                      strb fp, [r4, #0xf1]
003f31c8  f2 a0 c4 e5                                      strb sl, [r4, #0xf2]
003f31cc  e0 20 84 e5                                      str r2, [r4, #0xe0]
003f31d0  01 20 a0 e3                                      mov r2, #1
003f31d4  e4 20 84 e5                                      str r2, [r4, #0xe4]
003f31d8  28 20 8d e2                                      add r2, sp, #0x28
003f31dc  08 20 42 e2                                      sub r2, r2, #8
003f31e0  ec 60 84 e5                                      str r6, [r4, #0xec]
003f31e4  f0 60 c4 e5                                      strb r6, [r4, #0xf0]
003f31e8  f3 60 c4 e5                                      strb r6, [r4, #0xf3]
003f31ec  f4 60 c4 e5                                      strb r6, [r4, #0xf4]
003f31f0  f5 60 c4 e5                                      strb r6, [r4, #0xf5]
003f31f4  bc 83 fc eb                                      bl #0x3140ec
003f31f8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003f31fc  9c 22 9f e5                                      ldr r2, [pc, #0x29c]
003f3200  00 10 a0 e3                                      mov r1, #0
003f3204  10 31 84 e5                                      str r3, [r4, #0x110]
003f3208  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003f320c  02 20 8f e0                                      add r2, pc, r2
003f3210  ac 00 84 e2                                      add r0, r4, #0xac
003f3214  14 c1 84 e5                                      str ip, [r4, #0x114]
003f3218  64 34 9d e5                                      ldr r3, [sp, #0x464]
003f321c  30 61 84 e5                                      str r6, [r4, #0x130]
003f3220  a4 11 84 e5                                      str r1, [r4, #0x1a4]
003f3224  34 61 84 e5                                      str r6, [r4, #0x134]
003f3228  60 11 84 e5                                      str r1, [r4, #0x160]
003f322c  38 61 84 e5                                      str r6, [r4, #0x138]
003f3230  64 11 84 e5                                      str r1, [r4, #0x164]
003f3234  68 11 84 e5                                      str r1, [r4, #0x168]
003f3238  9c 11 84 e5                                      str r1, [r4, #0x19c]
003f323c  a0 11 84 e5                                      str r1, [r4, #0x1a0]
003f3240  18 31 84 e5                                      str r3, [r4, #0x118]
003f3244  1c 51 84 e5                                      str r5, [r4, #0x11c]
003f3248  20 51 84 e5                                      str r5, [r4, #0x120]
003f324c  24 51 84 e5                                      str r5, [r4, #0x124]
003f3250  28 61 84 e5                                      str r6, [r4, #0x128]
003f3254  2c 61 84 e5                                      str r6, [r4, #0x12c]
003f3258  3c 61 84 e5                                      str r6, [r4, #0x13c]
003f325c  40 61 84 e5                                      str r6, [r4, #0x140]
003f3260  44 61 c4 e5                                      strb r6, [r4, #0x144]
003f3264  45 61 c4 e5                                      strb r6, [r4, #0x145]
003f3268  48 51 84 e5                                      str r5, [r4, #0x148]
003f326c  4c 61 84 e5                                      str r6, [r4, #0x14c]
003f3270  50 61 84 e5                                      str r6, [r4, #0x150]
003f3274  54 61 84 e5                                      str r6, [r4, #0x154]
003f3278  58 61 84 e5                                      str r6, [r4, #0x158]
003f327c  5c 61 84 e5                                      str r6, [r4, #0x15c]
003f3280  94 61 84 e5                                      str r6, [r4, #0x194]
003f3284  98 61 c4 e5                                      strb r6, [r4, #0x198]
003f3288  a8 61 c4 e5                                      strb r6, [r4, #0x1a8]
003f328c  00 30 92 e5                                      ldr r3, [r2]
003f3290  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
003f3294  0c b2 9f e5                                      ldr fp, [pc, #0x20c]
003f3298  01 30 83 e2                                      add r3, r3, #1
003f329c  01 10 8f e0                                      add r1, pc, r1
003f32a0  00 30 82 e5                                      str r3, [r2]
003f32a4  0d 20 81 e2                                      add r2, r1, #0xd
003f32a8  cc 75 fc eb                                      bl #0x3109e0
003f32ac  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
003f32b0  07 00 a0 e1                                      mov r0, r7
003f32b4  01 10 8f e0                                      add r1, pc, r1
003f32b8  ad 20 fe eb                                      bl #0x37b574
003f32bc  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
003f32c0  07 00 a0 e1                                      mov r0, r7
003f32c4  01 10 8f e0                                      add r1, pc, r1
003f32c8  a9 20 fe eb                                      bl #0x37b574
003f32cc  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
003f32d0  0b 30 99 e7                                      ldr r3, [sb, fp]
003f32d4  8c 51 84 e5                                      str r5, [r4, #0x18c]
003f32d8  02 20 99 e7                                      ldr r2, [sb, r2]
003f32dc  6c 61 c4 e5                                      strb r6, [r4, #0x16c]
003f32e0  00 60 82 e5                                      str r6, [r2]
003f32e4  e8 60 c4 e5                                      strb r6, [r4, #0xe8]
003f32e8  00 30 93 e5                                      ldr r3, [r3]
003f32ec  06 00 53 e1                                      cmp r3, r6
003f32f0  1e 00 00 0a                                      beq #0x3f3370
003f32f4  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
003f32f8  28 50 8d e2                                      add r5, sp, #0x28
003f32fc  04 50 45 e2                                      sub r5, r5, #4
003f3300  03 a0 99 e7                                      ldr sl, [sb, r3]
003f3304  06 70 a0 e1                                      mov r7, r6
003f3308  05 00 00 ea                                      b #0x3f3324
003f330c  0b 30 99 e7                                      ldr r3, [sb, fp]
003f3310  01 70 87 e2                                      add r7, r7, #1
003f3314  48 60 86 e2                                      add r6, r6, #0x48
003f3318  00 30 93 e5                                      ldr r3, [r3]
003f331c  07 00 53 e1                                      cmp r3, r7
003f3320  12 00 00 9a                                      bls #0x3f3370
003f3324  00 80 9a e5                                      ldr r8, [sl]
003f3328  05 00 a0 e1                                      mov r0, r5
003f332c  06 80 88 e0                                      add r8, r8, r6
003f3330  20 10 98 e5                                      ldr r1, [r8, #0x20]
003f3334  79 6c fc eb                                      bl #0x30e520
003f3338  05 00 a0 e1                                      mov r0, r5
003f333c  00 10 a0 e3                                      mov r1, #0
003f3340  00 20 e0 e3                                      mvn r2, #0
003f3344  32 6c fd eb                                      bl #0x34e414
003f3348  0c 01 94 e5                                      ldr r0, [r4, #0x10c]
003f334c  05 10 a0 e1                                      mov r1, r5
003f3350  1f 6e fc eb                                      bl #0x30ebd4
003f3354  00 00 50 e3                                      cmp r0, #0
003f3358  eb ff ff 0a                                      beq #0x3f330c
003f335c  14 30 d8 e5                                      ldrb r3, [r8, #0x14]
003f3360  3c 70 84 e5                                      str r7, [r4, #0x3c]
003f3364  e8 30 c4 e5                                      strb r3, [r4, #0xe8]
003f3368  10 30 98 e5                                      ldr r3, [r8, #0x10]
003f336c  40 30 84 e5                                      str r3, [r4, #0x40]
003f3370  07 29 10 eb                                      bl #0x7fd794
003f3374  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f3378  00 00 53 e3                                      cmp r3, #0
003f337c  2a 00 00 1a                                      bne #0x3f342c
003f3380  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003f3384  01 00 73 e3                                      cmn r3, #1
003f3388  1d 00 00 0a                                      beq #0x3f3404
003f338c  60 c4 9d e5                                      ldr ip, [sp, #0x460]
003f3390  01 00 7c e3                                      cmn ip, #1
003f3394  0b 00 00 0a                                      beq #0x3f33c8
003f3398  40 30 94 e5                                      ldr r3, [r4, #0x40]
003f339c  01 20 a0 e3                                      mov r2, #1
003f33a0  f5 20 c4 e5                                      strb r2, [r4, #0xf5]
003f33a4  03 c0 9c e1                                      orrs ip, ip, r3
003f33a8  04 00 00 0a                                      beq #0x3f33c0
003f33ac  60 24 9d e5                                      ldr r2, [sp, #0x460]
003f33b0  03 00 52 e1                                      cmp r2, r3
003f33b4  03 00 00 0a                                      beq #0x3f33c8
003f33b8  00 00 53 e3                                      cmp r3, #0
003f33bc  01 00 00 0a                                      beq #0x3f33c8
003f33c0  01 30 a0 e3                                      mov r3, #1
003f33c4  f3 30 c4 e5                                      strb r3, [r4, #0xf3]
003f33c8  00 10 a0 e3                                      mov r1, #0
003f33cc  3c 00 a0 e3                                      mov r0, #0x3c
003f33d0  66 74 fc eb                                      bl #0x310570
003f33d4  18 c1 94 e5                                      ldr ip, [r4, #0x118]
003f33d8  3c e0 94 e5                                      ldr lr, [r4, #0x3c]
003f33dc  14 21 94 e5                                      ldr r2, [r4, #0x114]
003f33e0  40 30 94 e5                                      ldr r3, [r4, #0x40]
003f33e4  00 50 a0 e1                                      mov r5, r0
003f33e8  04 c0 8d e5                                      str ip, [sp, #4]
003f33ec  04 10 a0 e1                                      mov r1, r4
003f33f0  00 c0 a0 e3                                      mov ip, #0
003f33f4  00 e0 8d e5                                      str lr, [sp]
003f33f8  08 c0 8d e5                                      str ip, [sp, #8]
003f33fc  4c bd 01 eb                                      bl #0x462934
003f3400  ec 50 84 e5                                      str r5, [r4, #0xec]
003f3404  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
003f3408  24 24 9d e5                                      ldr r2, [sp, #0x424]
003f340c  04 00 a0 e1                                      mov r0, r4
003f3410  0c 30 99 e7                                      ldr r3, [sb, ip]
003f3414  00 30 93 e5                                      ldr r3, [r3]
003f3418  03 00 52 e1                                      cmp r2, r3
003f341c  1b 00 00 1a                                      bne #0x3f3490
003f3420  2c d0 8d e2                                      add sp, sp, #0x2c
003f3424  01 db 8d e2                                      add sp, sp, #0x400
003f3428  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f342c  88 50 9f e5                                      ldr r5, [pc, #0x88]
003f3430  05 30 99 e7                                      ldr r3, [sb, r5]
003f3434  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f3438  0d ef fd eb                                      bl #0x36f074
003f343c  00 00 50 e3                                      cmp r0, #0
003f3440  05 00 00 0a                                      beq #0x3f345c
003f3444  05 30 99 e7                                      ldr r3, [sb, r5]
003f3448  40 30 93 e5                                      ldr r3, [r3, #0x40]
003f344c  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
003f3450  00 00 53 e3                                      cmp r3, #0
003f3454  c9 ff ff 0a                                      beq #0x3f3380
003f3458  04 00 00 ea                                      b #0x3f3470
003f345c  8d b6 fc eb                                      bl #0x320e98
003f3460  34 30 90 e5                                      ldr r3, [r0, #0x34]
003f3464  03 30 43 e2                                      sub r3, r3, #3
003f3468  01 00 53 e3                                      cmp r3, #1
003f346c  02 00 00 9a                                      bls #0x3f347c
003f3470  00 30 a0 e3                                      mov r3, #0
003f3474  f1 30 c4 e5                                      strb r3, [r4, #0xf1]
003f3478  c0 ff ff ea                                      b #0x3f3380
003f347c  c2 36 10 eb                                      bl #0x800f8c
003f3480  27 b0 10 eb                                      bl #0x81f524
003f3484  00 00 50 e3                                      cmp r0, #0
003f3488  f8 ff ff 0a                                      beq #0x3f3470
003f348c  ec ff ff ea                                      b #0x3f3444
003f3490  9e 6b fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f3494  ac 40 00 00 48 19 5a 00 74 07 00 00 d4 fe 5a 00  .byte 0xac, 0x40, 0x00, 0x00, 0x48, 0x19, 0x5a, 0x00, 0x74, 0x07, 0x00, 0x00, 0xd4, 0xfe, 0x5a, 0x00
003f34a4  4c 34 4d 00 c0 18 00 00 44 34 4d 00 4c 34 4d 00  .byte 0x4c, 0x34, 0x4d, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x44, 0x34, 0x4d, 0x00, 0x4c, 0x34, 0x4d, 0x00
003f34b4  2c 28 00 00 74 08 00 00 f4 37 00 00              .byte 0x2c, 0x28, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f34c0, declared_size=920, range_size=920, mode=arm
; class-group: Level
; alias: _ZN5LevelC2EPKcijjjbbii
; demangled: Level::Level(char const*, int, unsigned int, unsigned int, unsigned int, bool, bool, int, int)
; decoder-mode: arm
003f34c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f34c4  60 c3 9f e5                                      ldr ip, [pc, #0x360]
003f34c8  42 de 4d e2                                      sub sp, sp, #0x420
003f34cc  0c d0 4d e2                                      sub sp, sp, #0xc
003f34d0  1c c0 8d e5                                      str ip, [sp, #0x1c]
003f34d4  54 93 9f e5                                      ldr sb, [pc, #0x354]
003f34d8  03 c0 a0 e1                                      mov ip, r3
003f34dc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f34e0  09 90 8f e0                                      add sb, pc, sb
003f34e4  00 40 a0 e1                                      mov r4, r0
003f34e8  03 e0 99 e7                                      ldr lr, [sb, r3]
003f34ec  02 30 a0 e1                                      mov r3, r2
003f34f0  01 80 a0 e1                                      mov r8, r1
003f34f4  00 20 9e e5                                      ldr r2, [lr]
003f34f8  58 b4 dd e5                                      ldrb fp, [sp, #0x458]
003f34fc  18 30 8d e5                                      str r3, [sp, #0x18]
003f3500  14 c0 8d e5                                      str ip, [sp, #0x14]
003f3504  24 24 8d e5                                      str r2, [sp, #0x424]
003f3508  5c a4 dd e5                                      ldrb sl, [sp, #0x45c]
003f350c  d2 12 fd eb                                      bl #0x33805c
003f3510  1c 23 9f e5                                      ldr r2, [pc, #0x31c]
003f3514  00 60 a0 e3                                      mov r6, #0
003f3518  00 50 e0 e3                                      mvn r5, #0
003f351c  02 20 99 e7                                      ldr r2, [sb, r2]
003f3520  44 70 84 e2                                      add r7, r4, #0x44
003f3524  06 10 a0 e1                                      mov r1, r6
003f3528  08 20 82 e2                                      add r2, r2, #8
003f352c  00 20 84 e5                                      str r2, [r4]
003f3530  30 60 84 e5                                      str r6, [r4, #0x30]
003f3534  38 60 84 e5                                      str r6, [r4, #0x38]
003f3538  3c 50 84 e5                                      str r5, [r4, #0x3c]
003f353c  40 50 84 e5                                      str r5, [r4, #0x40]
003f3540  07 00 a0 e1                                      mov r0, r7
003f3544  0e 24 fe eb                                      bl #0x37c584
003f3548  50 24 9d e5                                      ldr r2, [sp, #0x450]
003f354c  08 10 a0 e1                                      mov r1, r8
003f3550  f8 00 84 e2                                      add r0, r4, #0xf8
003f3554  dc 20 84 e5                                      str r2, [r4, #0xdc]
003f3558  54 24 9d e5                                      ldr r2, [sp, #0x454]
003f355c  f1 b0 c4 e5                                      strb fp, [r4, #0xf1]
003f3560  f2 a0 c4 e5                                      strb sl, [r4, #0xf2]
003f3564  e0 20 84 e5                                      str r2, [r4, #0xe0]
003f3568  01 20 a0 e3                                      mov r2, #1
003f356c  e4 20 84 e5                                      str r2, [r4, #0xe4]
003f3570  28 20 8d e2                                      add r2, sp, #0x28
003f3574  08 20 42 e2                                      sub r2, r2, #8
003f3578  ec 60 84 e5                                      str r6, [r4, #0xec]
003f357c  f0 60 c4 e5                                      strb r6, [r4, #0xf0]
003f3580  f3 60 c4 e5                                      strb r6, [r4, #0xf3]
003f3584  f4 60 c4 e5                                      strb r6, [r4, #0xf4]
003f3588  f5 60 c4 e5                                      strb r6, [r4, #0xf5]
003f358c  d6 82 fc eb                                      bl #0x3140ec
003f3590  18 30 9d e5                                      ldr r3, [sp, #0x18]
003f3594  9c 22 9f e5                                      ldr r2, [pc, #0x29c]
003f3598  00 10 a0 e3                                      mov r1, #0
003f359c  10 31 84 e5                                      str r3, [r4, #0x110]
003f35a0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003f35a4  02 20 8f e0                                      add r2, pc, r2
003f35a8  ac 00 84 e2                                      add r0, r4, #0xac
003f35ac  14 c1 84 e5                                      str ip, [r4, #0x114]
003f35b0  64 34 9d e5                                      ldr r3, [sp, #0x464]
003f35b4  30 61 84 e5                                      str r6, [r4, #0x130]
003f35b8  a4 11 84 e5                                      str r1, [r4, #0x1a4]
003f35bc  34 61 84 e5                                      str r6, [r4, #0x134]
003f35c0  60 11 84 e5                                      str r1, [r4, #0x160]
003f35c4  38 61 84 e5                                      str r6, [r4, #0x138]
003f35c8  64 11 84 e5                                      str r1, [r4, #0x164]
003f35cc  68 11 84 e5                                      str r1, [r4, #0x168]
003f35d0  9c 11 84 e5                                      str r1, [r4, #0x19c]
003f35d4  a0 11 84 e5                                      str r1, [r4, #0x1a0]
003f35d8  18 31 84 e5                                      str r3, [r4, #0x118]
003f35dc  1c 51 84 e5                                      str r5, [r4, #0x11c]
003f35e0  20 51 84 e5                                      str r5, [r4, #0x120]
003f35e4  24 51 84 e5                                      str r5, [r4, #0x124]
003f35e8  28 61 84 e5                                      str r6, [r4, #0x128]
003f35ec  2c 61 84 e5                                      str r6, [r4, #0x12c]
003f35f0  3c 61 84 e5                                      str r6, [r4, #0x13c]
003f35f4  40 61 84 e5                                      str r6, [r4, #0x140]
003f35f8  44 61 c4 e5                                      strb r6, [r4, #0x144]
003f35fc  45 61 c4 e5                                      strb r6, [r4, #0x145]
003f3600  48 51 84 e5                                      str r5, [r4, #0x148]
003f3604  4c 61 84 e5                                      str r6, [r4, #0x14c]
003f3608  50 61 84 e5                                      str r6, [r4, #0x150]
003f360c  54 61 84 e5                                      str r6, [r4, #0x154]
003f3610  58 61 84 e5                                      str r6, [r4, #0x158]
003f3614  5c 61 84 e5                                      str r6, [r4, #0x15c]
003f3618  94 61 84 e5                                      str r6, [r4, #0x194]
003f361c  98 61 c4 e5                                      strb r6, [r4, #0x198]
003f3620  a8 61 c4 e5                                      strb r6, [r4, #0x1a8]
003f3624  00 30 92 e5                                      ldr r3, [r2]
003f3628  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
003f362c  0c b2 9f e5                                      ldr fp, [pc, #0x20c]
003f3630  01 30 83 e2                                      add r3, r3, #1
003f3634  01 10 8f e0                                      add r1, pc, r1
003f3638  00 30 82 e5                                      str r3, [r2]
003f363c  0d 20 81 e2                                      add r2, r1, #0xd
003f3640  e6 74 fc eb                                      bl #0x3109e0
003f3644  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
003f3648  07 00 a0 e1                                      mov r0, r7
003f364c  01 10 8f e0                                      add r1, pc, r1
003f3650  c7 1f fe eb                                      bl #0x37b574
003f3654  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
003f3658  07 00 a0 e1                                      mov r0, r7
003f365c  01 10 8f e0                                      add r1, pc, r1
003f3660  c3 1f fe eb                                      bl #0x37b574
003f3664  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
003f3668  0b 30 99 e7                                      ldr r3, [sb, fp]
003f366c  8c 51 84 e5                                      str r5, [r4, #0x18c]
003f3670  02 20 99 e7                                      ldr r2, [sb, r2]
003f3674  6c 61 c4 e5                                      strb r6, [r4, #0x16c]
003f3678  00 60 82 e5                                      str r6, [r2]
003f367c  e8 60 c4 e5                                      strb r6, [r4, #0xe8]
003f3680  00 30 93 e5                                      ldr r3, [r3]
003f3684  06 00 53 e1                                      cmp r3, r6
003f3688  1e 00 00 0a                                      beq #0x3f3708
003f368c  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
003f3690  28 50 8d e2                                      add r5, sp, #0x28
003f3694  04 50 45 e2                                      sub r5, r5, #4
003f3698  03 a0 99 e7                                      ldr sl, [sb, r3]
003f369c  06 70 a0 e1                                      mov r7, r6
003f36a0  05 00 00 ea                                      b #0x3f36bc
003f36a4  0b 30 99 e7                                      ldr r3, [sb, fp]
003f36a8  01 70 87 e2                                      add r7, r7, #1
003f36ac  48 60 86 e2                                      add r6, r6, #0x48
003f36b0  00 30 93 e5                                      ldr r3, [r3]
003f36b4  07 00 53 e1                                      cmp r3, r7
003f36b8  12 00 00 9a                                      bls #0x3f3708
003f36bc  00 80 9a e5                                      ldr r8, [sl]
003f36c0  05 00 a0 e1                                      mov r0, r5
003f36c4  06 80 88 e0                                      add r8, r8, r6
003f36c8  20 10 98 e5                                      ldr r1, [r8, #0x20]
003f36cc  93 6b fc eb                                      bl #0x30e520
003f36d0  05 00 a0 e1                                      mov r0, r5
003f36d4  00 10 a0 e3                                      mov r1, #0
003f36d8  00 20 e0 e3                                      mvn r2, #0
003f36dc  4c 6b fd eb                                      bl #0x34e414
003f36e0  0c 01 94 e5                                      ldr r0, [r4, #0x10c]
003f36e4  05 10 a0 e1                                      mov r1, r5
003f36e8  39 6d fc eb                                      bl #0x30ebd4
003f36ec  00 00 50 e3                                      cmp r0, #0
003f36f0  eb ff ff 0a                                      beq #0x3f36a4
003f36f4  14 30 d8 e5                                      ldrb r3, [r8, #0x14]
003f36f8  3c 70 84 e5                                      str r7, [r4, #0x3c]
003f36fc  e8 30 c4 e5                                      strb r3, [r4, #0xe8]
003f3700  10 30 98 e5                                      ldr r3, [r8, #0x10]
003f3704  40 30 84 e5                                      str r3, [r4, #0x40]
003f3708  21 28 10 eb                                      bl #0x7fd794
003f370c  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f3710  00 00 53 e3                                      cmp r3, #0
003f3714  2a 00 00 1a                                      bne #0x3f37c4
003f3718  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003f371c  01 00 73 e3                                      cmn r3, #1
003f3720  1d 00 00 0a                                      beq #0x3f379c
003f3724  60 c4 9d e5                                      ldr ip, [sp, #0x460]
003f3728  01 00 7c e3                                      cmn ip, #1
003f372c  0b 00 00 0a                                      beq #0x3f3760
003f3730  40 30 94 e5                                      ldr r3, [r4, #0x40]
003f3734  01 20 a0 e3                                      mov r2, #1
003f3738  f5 20 c4 e5                                      strb r2, [r4, #0xf5]
003f373c  03 c0 9c e1                                      orrs ip, ip, r3
003f3740  04 00 00 0a                                      beq #0x3f3758
003f3744  60 24 9d e5                                      ldr r2, [sp, #0x460]
003f3748  03 00 52 e1                                      cmp r2, r3
003f374c  03 00 00 0a                                      beq #0x3f3760
003f3750  00 00 53 e3                                      cmp r3, #0
003f3754  01 00 00 0a                                      beq #0x3f3760
003f3758  01 30 a0 e3                                      mov r3, #1
003f375c  f3 30 c4 e5                                      strb r3, [r4, #0xf3]
003f3760  00 10 a0 e3                                      mov r1, #0
003f3764  3c 00 a0 e3                                      mov r0, #0x3c
003f3768  80 73 fc eb                                      bl #0x310570
003f376c  18 c1 94 e5                                      ldr ip, [r4, #0x118]
003f3770  3c e0 94 e5                                      ldr lr, [r4, #0x3c]
003f3774  14 21 94 e5                                      ldr r2, [r4, #0x114]
003f3778  40 30 94 e5                                      ldr r3, [r4, #0x40]
003f377c  00 50 a0 e1                                      mov r5, r0
003f3780  04 c0 8d e5                                      str ip, [sp, #4]
003f3784  04 10 a0 e1                                      mov r1, r4
003f3788  00 c0 a0 e3                                      mov ip, #0
003f378c  00 e0 8d e5                                      str lr, [sp]
003f3790  08 c0 8d e5                                      str ip, [sp, #8]
003f3794  66 bc 01 eb                                      bl #0x462934
003f3798  ec 50 84 e5                                      str r5, [r4, #0xec]
003f379c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
003f37a0  24 24 9d e5                                      ldr r2, [sp, #0x424]
003f37a4  04 00 a0 e1                                      mov r0, r4
003f37a8  0c 30 99 e7                                      ldr r3, [sb, ip]
003f37ac  00 30 93 e5                                      ldr r3, [r3]
003f37b0  03 00 52 e1                                      cmp r2, r3
003f37b4  1b 00 00 1a                                      bne #0x3f3828
003f37b8  2c d0 8d e2                                      add sp, sp, #0x2c
003f37bc  01 db 8d e2                                      add sp, sp, #0x400
003f37c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f37c4  88 50 9f e5                                      ldr r5, [pc, #0x88]
003f37c8  05 30 99 e7                                      ldr r3, [sb, r5]
003f37cc  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f37d0  27 ee fd eb                                      bl #0x36f074
003f37d4  00 00 50 e3                                      cmp r0, #0
003f37d8  05 00 00 0a                                      beq #0x3f37f4
003f37dc  05 30 99 e7                                      ldr r3, [sb, r5]
003f37e0  40 30 93 e5                                      ldr r3, [r3, #0x40]
003f37e4  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
003f37e8  00 00 53 e3                                      cmp r3, #0
003f37ec  c9 ff ff 0a                                      beq #0x3f3718
003f37f0  04 00 00 ea                                      b #0x3f3808
003f37f4  a7 b5 fc eb                                      bl #0x320e98
003f37f8  34 30 90 e5                                      ldr r3, [r0, #0x34]
003f37fc  03 30 43 e2                                      sub r3, r3, #3
003f3800  01 00 53 e3                                      cmp r3, #1
003f3804  02 00 00 9a                                      bls #0x3f3814
003f3808  00 30 a0 e3                                      mov r3, #0
003f380c  f1 30 c4 e5                                      strb r3, [r4, #0xf1]
003f3810  c0 ff ff ea                                      b #0x3f3718
003f3814  dc 35 10 eb                                      bl #0x800f8c
003f3818  41 af 10 eb                                      bl #0x81f524
003f381c  00 00 50 e3                                      cmp r0, #0
003f3820  f8 ff ff 0a                                      beq #0x3f3808
003f3824  ec ff ff ea                                      b #0x3f37dc
003f3828  b8 6a fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f382c  ac 40 00 00 b0 15 5a 00 74 07 00 00 3c fb 5a 00  .byte 0xac, 0x40, 0x00, 0x00, 0xb0, 0x15, 0x5a, 0x00, 0x74, 0x07, 0x00, 0x00, 0x3c, 0xfb, 0x5a, 0x00
003f383c  b4 30 4d 00 c0 18 00 00 ac 30 4d 00 b4 30 4d 00  .byte 0xb4, 0x30, 0x4d, 0x00, 0xc0, 0x18, 0x00, 0x00, 0xac, 0x30, 0x4d, 0x00, 0xb4, 0x30, 0x4d, 0x00
003f384c  2c 28 00 00 74 08 00 00 f4 37 00 00              .byte 0x2c, 0x28, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003f38a0, declared_size=440, range_size=440, mode=arm
; class-group: Level
; alias: _ZN5Level15_LoadScriptFileERSs
; demangled: Level::_LoadScriptFile(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
003f38a0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003f38a4  94 41 9f e5                                      ldr r4, [pc, #0x194]
003f38a8  94 61 9f e5                                      ldr r6, [pc, #0x194]
003f38ac  10 80 91 e5                                      ldr r8, [r1, #0x10]
003f38b0  04 40 8f e0                                      add r4, pc, r4
003f38b4  06 30 94 e7                                      ldr r3, [r4, r6]
003f38b8  14 70 91 e5                                      ldr r7, [r1, #0x14]
003f38bc  5c d0 4d e2                                      sub sp, sp, #0x5c
003f38c0  00 30 93 e5                                      ldr r3, [r3]
003f38c4  07 00 58 e1                                      cmp r8, r7
003f38c8  01 50 a0 e1                                      mov r5, r1
003f38cc  54 30 8d e5                                      str r3, [sp, #0x54]
003f38d0  52 00 00 0a                                      beq #0x3f3a20
003f38d4  08 80 67 e0                                      rsb r8, r7, r8
003f38d8  08 00 58 e3                                      cmp r8, #8
003f38dc  4f 00 00 9a                                      bls #0x3f3a20
003f38e0  60 c1 9f e5                                      ldr ip, [pc, #0x160]
003f38e4  08 80 87 e0                                      add r8, r7, r8
003f38e8  1c 00 8d e2                                      add r0, sp, #0x1c
003f38ec  0c c0 8f e0                                      add ip, pc, ip
003f38f0  09 e0 8c e2                                      add lr, ip, #9
003f38f4  0c c0 8d e5                                      str ip, [sp, #0xc]
003f38f8  0c c0 8d e2                                      add ip, sp, #0xc
003f38fc  00 c0 8d e5                                      str ip, [sp]
003f3900  18 10 8d e2                                      add r1, sp, #0x18
003f3904  20 c0 8d e2                                      add ip, sp, #0x20
003f3908  14 20 8d e2                                      add r2, sp, #0x14
003f390c  10 30 8d e2                                      add r3, sp, #0x10
003f3910  10 e0 8d e5                                      str lr, [sp, #0x10]
003f3914  04 c0 8d e5                                      str ip, [sp, #4]
003f3918  18 80 8d e5                                      str r8, [sp, #0x18]
003f391c  14 70 8d e5                                      str r7, [sp, #0x14]
003f3920  57 ee ff eb                                      bl #0x3ef284
003f3924  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
003f3928  0a 00 57 e1                                      cmp r7, sl
003f392c  08 a0 a0 01                                      moveq sl, r8
003f3930  09 a0 4a 12                                      subne sl, sl, #9
003f3934  0a 00 58 e1                                      cmp r8, sl
003f3938  38 00 00 0a                                      beq #0x3f3a20
003f393c  14 30 95 e5                                      ldr r3, [r5, #0x14]
003f3940  03 a0 5a e0                                      subs sl, sl, r3
003f3944  35 00 00 4a                                      bmi #0x3f3a20
003f3948  10 10 95 e5                                      ldr r1, [r5, #0x10]
003f394c  03 00 51 e1                                      cmp r1, r3
003f3950  06 00 00 0a                                      beq #0x3f3970
003f3954  2f 00 a0 e3                                      mov r0, #0x2f
003f3958  d0 20 d3 e1                                      ldrsb r2, [r3]
003f395c  5c 00 52 e3                                      cmp r2, #0x5c
003f3960  00 00 c3 05                                      strbeq r0, [r3]
003f3964  01 30 83 e2                                      add r3, r3, #1
003f3968  01 00 53 e1                                      cmp r3, r1
003f396c  f9 ff ff 1a                                      bne #0x3f3958
003f3970  3c 80 8d e2                                      add r8, sp, #0x3c
003f3974  05 10 a0 e1                                      mov r1, r5
003f3978  08 00 a0 e1                                      mov r0, r8
003f397c  e5 df fc eb                                      bl #0x32b918
003f3980  50 30 9d e5                                      ldr r3, [sp, #0x50]
003f3984  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003f3988  0e c0 a0 e3                                      mov ip, #0xe
003f398c  24 70 8d e2                                      add r7, sp, #0x24
003f3990  02 20 63 e0                                      rsb r2, r3, r2
003f3994  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
003f3998  02 20 6a e0                                      rsb r2, sl, r2
003f399c  0a 10 a0 e1                                      mov r1, sl
003f39a0  03 30 8f e0                                      add r3, pc, r3
003f39a4  08 00 a0 e1                                      mov r0, r8
003f39a8  00 c0 8d e5                                      str ip, [sp]
003f39ac  91 f9 ff eb                                      bl #0x3f1ff8
003f39b0  05 10 a0 e1                                      mov r1, r5
003f39b4  07 00 a0 e1                                      mov r0, r7
003f39b8  d6 df fc eb                                      bl #0x32b918
003f39bc  50 30 9d e5                                      ldr r3, [sp, #0x50]
003f39c0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003f39c4  12 c0 a0 e3                                      mov ip, #0x12
003f39c8  0a 10 a0 e1                                      mov r1, sl
003f39cc  02 20 63 e0                                      rsb r2, r3, r2
003f39d0  78 30 9f e5                                      ldr r3, [pc, #0x78]
003f39d4  02 20 6a e0                                      rsb r2, sl, r2
003f39d8  07 00 a0 e1                                      mov r0, r7
003f39dc  03 30 8f e0                                      add r3, pc, r3
003f39e0  00 c0 8d e5                                      str ip, [sp]
003f39e4  83 f9 ff eb                                      bl #0x3f1ff8
003f39e8  64 30 9f e5                                      ldr r3, [pc, #0x64]
003f39ec  50 10 9d e5                                      ldr r1, [sp, #0x50]
003f39f0  00 20 a0 e3                                      mov r2, #0
003f39f4  03 50 94 e7                                      ldr r5, [r4, r3]
003f39f8  05 00 a0 e1                                      mov r0, r5
003f39fc  18 9e 01 eb                                      bl #0x45b264
003f3a00  05 00 a0 e1                                      mov r0, r5
003f3a04  38 10 9d e5                                      ldr r1, [sp, #0x38]
003f3a08  00 20 a0 e3                                      mov r2, #0
003f3a0c  cb 9c 01 eb                                      bl #0x45ad40
003f3a10  07 00 a0 e1                                      mov r0, r7
003f3a14  e4 7f fc eb                                      bl #0x3139ac
003f3a18  08 00 a0 e1                                      mov r0, r8
003f3a1c  e2 7f fc eb                                      bl #0x3139ac
003f3a20  06 30 94 e7                                      ldr r3, [r4, r6]
003f3a24  54 20 9d e5                                      ldr r2, [sp, #0x54]
003f3a28  00 30 93 e5                                      ldr r3, [r3]
003f3a2c  03 00 52 e1                                      cmp r2, r3
003f3a30  01 00 00 1a                                      bne #0x3f3a3c
003f3a34  5c d0 8d e2                                      add sp, sp, #0x5c
003f3a38  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003f3a3c  33 6a fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f3a40  e0 11 5a 00 ac 40 00 00 3c 2e 4d 00 98 2d 4d 00  .byte 0xe0, 0x11, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0x2e, 0x4d, 0x00, 0x98, 0x2d, 0x4d, 0x00
003f3a50  6c 2d 4d 00 20 1a 00 00                          .byte 0x6c, 0x2d, 0x4d, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x003f3a58, declared_size=232, range_size=232, mode=arm
; class-group: Level
; alias: _ZN5Level12_LoadScriptsEv
; demangled: Level::_LoadScripts()
; decoder-mode: arm
003f3a58  70 40 2d e9                                      push {r4, r5, r6, lr}
003f3a5c  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
003f3a60  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
003f3a64  08 d0 4d e2                                      sub sp, sp, #8
003f3a68  05 50 8f e0                                      add r5, pc, r5
003f3a6c  03 60 95 e7                                      ldr r6, [r5, r3]
003f3a70  00 40 a0 e1                                      mov r4, r0
003f3a74  06 00 a0 e1                                      mov r0, r6
003f3a78  d2 99 01 eb                                      bl #0x45a1c8
003f3a7c  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003f3a80  06 00 a0 e1                                      mov r0, r6
003f3a84  01 20 a0 e3                                      mov r2, #1
003f3a88  01 10 8f e0                                      add r1, pc, r1
003f3a8c  f4 9d 01 eb                                      bl #0x45b264
003f3a90  90 10 9f e5                                      ldr r1, [pc, #0x90]
003f3a94  06 00 a0 e1                                      mov r0, r6
003f3a98  01 20 a0 e3                                      mov r2, #1
003f3a9c  01 10 8f e0                                      add r1, pc, r1
003f3aa0  a6 9c 01 eb                                      bl #0x45ad40
003f3aa4  38 10 94 e5                                      ldr r1, [r4, #0x38]
003f3aa8  00 00 51 e3                                      cmp r1, #0
003f3aac  04 00 00 0a                                      beq #0x3f3ac4
003f3ab0  04 00 a0 e1                                      mov r0, r4
003f3ab4  15 1e 81 e2                                      add r1, r1, #0x150
003f3ab8  08 d0 8d e2                                      add sp, sp, #8
003f3abc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003f3ac0  76 ff ff ea                                      b #0x3f38a0
003f3ac4  60 30 9f e5                                      ldr r3, [pc, #0x60]
003f3ac8  03 30 95 e7                                      ldr r3, [r5, r3]
003f3acc  00 30 93 e5                                      ldr r3, [r3]
003f3ad0  02 00 53 e3                                      cmp r3, #2
003f3ad4  00 10 81 05                                      streq r1, [r1]
003f3ad8  f4 ff ff 0a                                      beq #0x3f3ab0
003f3adc  01 00 53 e3                                      cmp r3, #1
003f3ae0  f2 ff ff 1a                                      bne #0x3f3ab0
003f3ae4  44 00 9f e5                                      ldr r0, [pc, #0x44]
003f3ae8  44 10 9f e5                                      ldr r1, [pc, #0x44]
003f3aec  44 20 9f e5                                      ldr r2, [pc, #0x44]
003f3af0  00 00 95 e7                                      ldr r0, [r5, r0]
003f3af4  40 30 9f e5                                      ldr r3, [pc, #0x40]
003f3af8  01 10 8f e0                                      add r1, pc, r1
003f3afc  77 cf a0 e3                                      mov ip, #0x1dc
003f3b00  a8 00 80 e2                                      add r0, r0, #0xa8
003f3b04  02 20 8f e0                                      add r2, pc, r2
003f3b08  03 30 8f e0                                      add r3, pc, r3
003f3b0c  00 c0 8d e5                                      str ip, [sp]
003f3b10  3b 69 fc eb                                      bl #0x30e004
003f3b14  38 10 94 e5                                      ldr r1, [r4, #0x38]
003f3b18  e4 ff ff ea                                      b #0x3f3ab0
; mapping-symbol data/literal pool
003f3b1c  28 10 5a 00 20 1a 00 00 d8 2c 4d 00 ec 2c 4d 00  .byte 0x28, 0x10, 0x5a, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xd8, 0x2c, 0x4d, 0x00, 0xec, 0x2c, 0x4d, 0x00
003f3b2c  c0 39 00 00 c0 19 00 00 e0 a8 4c 00 ec 20 4d 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe0, 0xa8, 0x4c, 0x00, 0xec, 0x20, 0x4d, 0x00
003f3b3c  50 e1 4c 00                                      .byte 0x50, 0xe1, 0x4c, 0x00

; FUNCTION 0x003f3b40, declared_size=1556, range_size=1556, mode=arm
; class-group: Level
; alias: _ZN5Level8LoadFileERKSsS1_
; demangled: Level::LoadFile(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
003f3b40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f3b44  b8 55 9f e5                                      ldr r5, [pc, #0x5b8]
003f3b48  b8 a5 9f e5                                      ldr sl, [pc, #0x5b8]
003f3b4c  01 b0 a0 e1                                      mov fp, r1
003f3b50  05 50 8f e0                                      add r5, pc, r5
003f3b54  0a 30 95 e7                                      ldr r3, [r5, sl]
003f3b58  ac 15 9f e5                                      ldr r1, [pc, #0x5ac]
003f3b5c  a4 d0 4d e2                                      sub sp, sp, #0xa4
003f3b60  00 30 93 e5                                      ldr r3, [r3]
003f3b64  84 80 8d e2                                      add r8, sp, #0x84
003f3b68  00 70 a0 e1                                      mov r7, r0
003f3b6c  02 40 a0 e1                                      mov r4, r2
003f3b70  01 10 8f e0                                      add r1, pc, r1
003f3b74  08 00 a0 e1                                      mov r0, r8
003f3b78  50 20 8d e2                                      add r2, sp, #0x50
003f3b7c  9c 30 8d e5                                      str r3, [sp, #0x9c]
003f3b80  59 81 fc eb                                      bl #0x3140ec
003f3b84  40 61 97 e5                                      ldr r6, [r7, #0x140]
003f3b88  00 00 56 e3                                      cmp r6, #0
003f3b8c  39 00 00 0a                                      beq #0x3f3c78
003f3b90  38 30 96 e5                                      ldr r3, [r6, #0x38]
003f3b94  00 00 53 e3                                      cmp r3, #0
003f3b98  f3 00 00 0a                                      beq #0x3f3f6c
003f3b9c  44 10 96 e5                                      ldr r1, [r6, #0x44]
003f3ba0  00 00 51 e3                                      cmp r1, #0
003f3ba4  10 00 00 0a                                      beq #0x3f3bec
003f3ba8  07 00 a0 e1                                      mov r0, r7
003f3bac  85 f1 ff eb                                      bl #0x3f01c8
003f3bb0  40 41 97 e5                                      ldr r4, [r7, #0x140]
003f3bb4  00 90 a0 e3                                      mov sb, #0
003f3bb8  44 00 94 e5                                      ldr r0, [r4, #0x44]
003f3bbc  28 82 04 eb                                      bl #0x514464
003f3bc0  44 00 84 e5                                      str r0, [r4, #0x44]
003f3bc4  08 00 a0 e1                                      mov r0, r8
003f3bc8  77 7f fc eb                                      bl #0x3139ac
003f3bcc  0a 30 95 e7                                      ldr r3, [r5, sl]
003f3bd0  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
003f3bd4  09 00 a0 e1                                      mov r0, sb
003f3bd8  00 30 93 e5                                      ldr r3, [r3]
003f3bdc  03 00 52 e1                                      cmp r2, r3
003f3be0  40 01 00 1a                                      bne #0x3f40e8
003f3be4  a4 d0 8d e2                                      add sp, sp, #0xa4
003f3be8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f3bec  40 10 96 e5                                      ldr r1, [r6, #0x40]
003f3bf0  00 00 51 e3                                      cmp r1, #0
003f3bf4  10 00 00 0a                                      beq #0x3f3c3c
003f3bf8  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
003f3bfc  ff 81 04 eb                                      bl #0x514400
003f3c00  40 00 86 e5                                      str r0, [r6, #0x40]
003f3c04  40 71 97 e5                                      ldr r7, [r7, #0x140]
003f3c08  40 60 97 e5                                      ldr r6, [r7, #0x40]
003f3c0c  00 00 56 e3                                      cmp r6, #0
003f3c10  07 00 00 0a                                      beq #0x3f3c34
003f3c14  10 30 94 e5                                      ldr r3, [r4, #0x10]
003f3c18  34 00 96 e5                                      ldr r0, [r6, #0x34]
003f3c1c  30 20 96 e5                                      ldr r2, [r6, #0x30]
003f3c20  14 10 94 e5                                      ldr r1, [r4, #0x14]
003f3c24  02 20 60 e0                                      rsb r2, r0, r2
003f3c28  03 30 61 e0                                      rsb r3, r1, r3
003f3c2c  03 00 52 e1                                      cmp r2, r3
003f3c30  10 01 00 0a                                      beq #0x3f4078
003f3c34  00 90 a0 e3                                      mov sb, #0
003f3c38  e1 ff ff ea                                      b #0x3f3bc4
003f3c3c  03 00 a0 e1                                      mov r0, r3
003f3c40  00 30 93 e5                                      ldr r3, [r3]
003f3c44  0f e0 a0 e1                                      mov lr, pc
003f3c48  04 f0 93 e5                                      ldr pc, [r3, #4]
003f3c4c  40 31 97 e5                                      ldr r3, [r7, #0x140]
003f3c50  00 00 53 e3                                      cmp r3, #0
003f3c54  03 00 00 0a                                      beq #0x3f3c68
003f3c58  03 00 a0 e1                                      mov r0, r3
003f3c5c  00 30 93 e5                                      ldr r3, [r3]
003f3c60  0f e0 a0 e1                                      mov lr, pc
003f3c64  04 f0 93 e5                                      ldr pc, [r3, #4]
003f3c68  00 30 a0 e3                                      mov r3, #0
003f3c6c  40 31 87 e5                                      str r3, [r7, #0x140]
003f3c70  01 90 a0 e3                                      mov sb, #1
003f3c74  d2 ff ff ea                                      b #0x3f3bc4
003f3c78  6c 10 8d e2                                      add r1, sp, #0x6c
003f3c7c  01 00 a0 e1                                      mov r0, r1
003f3c80  1c 10 8d e5                                      str r1, [sp, #0x1c]
003f3c84  10 10 a0 e3                                      mov r1, #0x10
003f3c88  7c 00 8d e5                                      str r0, [sp, #0x7c]
003f3c8c  80 00 8d e5                                      str r0, [sp, #0x80]
003f3c90  79 76 fc eb                                      bl #0x31167c
003f3c94  54 30 8d e2                                      add r3, sp, #0x54
003f3c98  14 30 8d e5                                      str r3, [sp, #0x14]
003f3c9c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
003f3ca0  68 14 9f e5                                      ldr r1, [pc, #0x468]
003f3ca4  4c 20 8d e2                                      add r2, sp, #0x4c
003f3ca8  00 60 c3 e5                                      strb r6, [r3]
003f3cac  01 10 8f e0                                      add r1, pc, r1
003f3cb0  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f3cb4  0c 81 fc eb                                      bl #0x3140ec
003f3cb8  54 34 9f e5                                      ldr r3, [pc, #0x454]
003f3cbc  54 14 9f e5                                      ldr r1, [pc, #0x454]
003f3cc0  54 94 9f e5                                      ldr sb, [pc, #0x454]
003f3cc4  18 30 8d e5                                      str r3, [sp, #0x18]
003f3cc8  50 34 9f e5                                      ldr r3, [pc, #0x450]
003f3ccc  28 10 8d e5                                      str r1, [sp, #0x28]
003f3cd0  4c 24 9f e5                                      ldr r2, [pc, #0x44c]
003f3cd4  03 30 8f e0                                      add r3, pc, r3
003f3cd8  20 30 8d e5                                      str r3, [sp, #0x20]
003f3cdc  20 10 9d e5                                      ldr r1, [sp, #0x20]
003f3ce0  40 34 9f e5                                      ldr r3, [pc, #0x440]
003f3ce4  38 80 8d e5                                      str r8, [sp, #0x38]
003f3ce8  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
003f3cec  09 90 8f e0                                      add sb, pc, sb
003f3cf0  03 30 8f e0                                      add r3, pc, r3
003f3cf4  02 10 81 e2                                      add r1, r1, #2
003f3cf8  3c 70 8d e5                                      str r7, [sp, #0x3c]
003f3cfc  24 20 8d e5                                      str r2, [sp, #0x24]
003f3d00  30 30 8d e5                                      str r3, [sp, #0x30]
003f3d04  a0 90 89 e2                                      add sb, sb, #0xa0
003f3d08  2c 10 8d e5                                      str r1, [sp, #0x2c]
003f3d0c  05 70 a0 e1                                      mov r7, r5
003f3d10  34 a0 8d e5                                      str sl, [sp, #0x34]
003f3d14  28 20 9d e5                                      ldr r2, [sp, #0x28]
003f3d18  08 00 a0 e1                                      mov r0, r8
003f3d1c  02 10 8f e0                                      add r1, pc, r2
003f3d20  01 20 a0 e1                                      mov r2, r1
003f3d24  2d 73 fc eb                                      bl #0x3109e0
003f3d28  24 10 9d e5                                      ldr r1, [sp, #0x24]
003f3d2c  01 30 8f e0                                      add r3, pc, r1
003f3d30  90 30 83 e2                                      add r3, r3, #0x90
003f3d34  06 40 93 e7                                      ldr r4, [r3, r6]
003f3d38  04 00 a0 e1                                      mov r0, r4
003f3d3c  44 68 fc eb                                      bl #0x30de54
003f3d40  04 10 a0 e1                                      mov r1, r4
003f3d44  00 20 84 e0                                      add r2, r4, r0
003f3d48  08 00 a0 e1                                      mov r0, r8
003f3d4c  ac 72 fc eb                                      bl #0x310804
003f3d50  14 10 9b e5                                      ldr r1, [fp, #0x14]
003f3d54  10 20 9b e5                                      ldr r2, [fp, #0x10]
003f3d58  08 00 a0 e1                                      mov r0, r8
003f3d5c  a8 72 fc eb                                      bl #0x310804
003f3d60  18 20 9d e5                                      ldr r2, [sp, #0x18]
003f3d64  80 10 9d e5                                      ldr r1, [sp, #0x80]
003f3d68  02 40 97 e7                                      ldr r4, [r7, r2]
003f3d6c  04 00 a0 e1                                      mov r0, r4
003f3d70  40 b2 fc eb                                      bl #0x320678
003f3d74  00 00 50 e3                                      cmp r0, #0
003f3d78  49 00 00 1a                                      bne #0x3f3ea4
003f3d7c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
003f3d80  00 40 a0 e3                                      mov r4, #0
003f3d84  48 a0 8d e2                                      add sl, sp, #0x48
003f3d88  10 30 8d e5                                      str r3, [sp, #0x10]
003f3d8c  04 50 99 e7                                      ldr r5, [sb, r4]
003f3d90  05 00 a0 e1                                      mov r0, r5
003f3d94  2e 68 fc eb                                      bl #0x30de54
003f3d98  10 10 9d e5                                      ldr r1, [sp, #0x10]
003f3d9c  00 20 a0 e1                                      mov r2, r0
003f3da0  80 00 9d e5                                      ldr r0, [sp, #0x80]
003f3da4  00 30 51 e0                                      subs r3, r1, r0
003f3da8  2a 00 00 1a                                      bne #0x3f3e58
003f3dac  00 00 52 e3                                      cmp r2, #0
003f3db0  37 00 00 1a                                      bne #0x3f3e94
003f3db4  02 10 a0 e1                                      mov r1, r2
003f3db8  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
003f3dbc  00 c0 a0 e3                                      mov ip, #0
003f3dc0  08 00 a0 e1                                      mov r0, r8
003f3dc4  03 30 8f e0                                      add r3, pc, r3
003f3dc8  00 c0 8d e5                                      str ip, [sp]
003f3dcc  89 f8 ff eb                                      bl #0x3f1ff8
003f3dd0  20 10 9d e5                                      ldr r1, [sp, #0x20]
003f3dd4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003f3dd8  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f3ddc  88 72 fc eb                                      bl #0x310804
003f3de0  80 10 9d e5                                      ldr r1, [sp, #0x80]
003f3de4  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
003f3de8  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f3dec  84 72 fc eb                                      bl #0x310804
003f3df0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003f3df4  00 20 a0 e3                                      mov r2, #0
003f3df8  80 10 9d e5                                      ldr r1, [sp, #0x80]
003f3dfc  03 40 97 e7                                      ldr r4, [r7, r3]
003f3e00  02 30 a0 e1                                      mov r3, r2
003f3e04  10 00 94 e5                                      ldr r0, [r4, #0x10]
003f3e08  34 c0 90 e5                                      ldr ip, [r0, #0x34]
003f3e0c  0c 00 a0 e1                                      mov r0, ip
003f3e10  00 c0 9c e5                                      ldr ip, [ip]
003f3e14  0f e0 a0 e1                                      mov lr, pc
003f3e18  88 f0 9c e5                                      ldr pc, [ip, #0x88]
003f3e1c  00 00 50 e3                                      cmp r0, #0
003f3e20  40 00 8d e5                                      str r0, [sp, #0x40]
003f3e24  a3 00 00 1a                                      bne #0x3f40b8
003f3e28  04 60 86 e2                                      add r6, r6, #4
003f3e2c  10 00 56 e3                                      cmp r6, #0x10
003f3e30  b7 ff ff 1a                                      bne #0x3f3d14
003f3e34  34 a0 9d e5                                      ldr sl, [sp, #0x34]
003f3e38  38 80 9d e5                                      ldr r8, [sp, #0x38]
003f3e3c  07 50 a0 e1                                      mov r5, r7
003f3e40  01 90 a0 e3                                      mov sb, #1
003f3e44  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f3e48  d7 7e fc eb                                      bl #0x3139ac
003f3e4c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003f3e50  d5 7e fc eb                                      bl #0x3139ac
003f3e54  5a ff ff ea                                      b #0x3f3bc4
003f3e58  03 00 52 e1                                      cmp r2, r3
003f3e5c  0c 00 00 8a                                      bhi #0x3f3e94
003f3e60  02 30 85 e0                                      add r3, r5, r2
003f3e64  10 10 9d e5                                      ldr r1, [sp, #0x10]
003f3e68  05 20 a0 e1                                      mov r2, r5
003f3e6c  00 a0 8d e5                                      str sl, [sp]
003f3e70  ad 6b fd eb                                      bl #0x34ed2c
003f3e74  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
003f3e78  02 00 50 e1                                      cmp r0, r2
003f3e7c  10 20 8d e5                                      str r2, [sp, #0x10]
003f3e80  03 00 00 0a                                      beq #0x3f3e94
003f3e84  80 30 9d e5                                      ldr r3, [sp, #0x80]
003f3e88  00 30 63 e0                                      rsb r3, r3, r0
003f3e8c  01 00 73 e3                                      cmn r3, #1
003f3e90  95 00 00 1a                                      bne #0x3f40ec
003f3e94  04 40 84 e2                                      add r4, r4, #4
003f3e98  10 00 54 e3                                      cmp r4, #0x10
003f3e9c  ba ff ff 1a                                      bne #0x3f3d8c
003f3ea0  ca ff ff ea                                      b #0x3f3dd0
003f3ea4  30 10 9d e5                                      ldr r1, [sp, #0x30]
003f3ea8  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f3eac  33 f7 ff eb                                      bl #0x3f1b80
003f3eb0  80 10 9d e5                                      ldr r1, [sp, #0x80]
003f3eb4  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
003f3eb8  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f3ebc  50 72 fc eb                                      bl #0x310804
003f3ec0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003f3ec4  00 20 a0 e3                                      mov r2, #0
003f3ec8  80 10 9d e5                                      ldr r1, [sp, #0x80]
003f3ecc  34 c0 93 e5                                      ldr ip, [r3, #0x34]
003f3ed0  02 30 a0 e1                                      mov r3, r2
003f3ed4  0c 00 a0 e1                                      mov r0, ip
003f3ed8  00 c0 9c e5                                      ldr ip, [ip]
003f3edc  0f e0 a0 e1                                      mov lr, pc
003f3ee0  88 f0 9c e5                                      ldr pc, [ip, #0x88]
003f3ee4  00 00 50 e3                                      cmp r0, #0
003f3ee8  44 00 8d e5                                      str r0, [sp, #0x44]
003f3eec  a2 ff ff 0a                                      beq #0x3f3d7c
003f3ef0  00 10 a0 e3                                      mov r1, #0
003f3ef4  50 00 a0 e3                                      mov r0, #0x50
003f3ef8  07 50 a0 e1                                      mov r5, r7
003f3efc  34 a0 9d e5                                      ldr sl, [sp, #0x34]
003f3f00  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
003f3f04  38 80 9d e5                                      ldr r8, [sp, #0x38]
003f3f08  98 71 fc eb                                      bl #0x310570
003f3f0c  a0 b0 8d e2                                      add fp, sp, #0xa0
003f3f10  18 32 9f e5                                      ldr r3, [pc, #0x218]
003f3f14  5c 10 3b e5                                      ldr r1, [fp, #-0x5c]!
003f3f18  00 60 a0 e1                                      mov r6, r0
003f3f1c  03 30 95 e7                                      ldr r3, [r5, r3]
003f3f20  06 00 a0 e1                                      mov r0, r6
003f3f24  00 90 a0 e3                                      mov sb, #0
003f3f28  08 30 83 e2                                      add r3, r3, #8
003f3f2c  08 30 80 e4                                      str r3, [r0], #8
003f3f30  e8 8c fc eb                                      bl #0x3172d8
003f3f34  38 90 86 e5                                      str sb, [r6, #0x38]
003f3f38  3c 90 86 e5                                      str sb, [r6, #0x3c]
003f3f3c  40 90 86 e5                                      str sb, [r6, #0x40]
003f3f40  44 90 86 e5                                      str sb, [r6, #0x44]
003f3f44  48 90 c6 e5                                      strb sb, [r6, #0x48]
003f3f48  40 61 87 e5                                      str r6, [r7, #0x140]
003f3f4c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003f3f50  0b 10 a0 e1                                      mov r1, fp
003f3f54  34 30 93 e5                                      ldr r3, [r3, #0x34]
003f3f58  03 00 a0 e1                                      mov r0, r3
003f3f5c  00 30 93 e5                                      ldr r3, [r3]
003f3f60  0f e0 a0 e1                                      mov lr, pc
003f3f64  78 f0 93 e5                                      ldr pc, [r3, #0x78]
003f3f68  b5 ff ff ea                                      b #0x3f3e44
003f3f6c  03 10 a0 e1                                      mov r1, r3
003f3f70  70 00 a0 e3                                      mov r0, #0x70
003f3f74  7d 71 fc eb                                      bl #0x310570
003f3f78  00 60 a0 e1                                      mov r6, r0
003f3f7c  d0 8b 04 eb                                      bl #0x516ec4
003f3f80  40 31 97 e5                                      ldr r3, [r7, #0x140]
003f3f84  38 60 83 e5                                      str r6, [r3, #0x38]
003f3f88  40 61 97 e5                                      ldr r6, [r7, #0x140]
003f3f8c  34 30 d6 e5                                      ldrb r3, [r6, #0x34]
003f3f90  38 90 96 e5                                      ldr sb, [r6, #0x38]
003f3f94  00 00 53 e3                                      cmp r3, #0
003f3f98  16 00 00 1a                                      bne #0x3f3ff8
003f3f9c  90 21 9f e5                                      ldr r2, [pc, #0x190]
003f3fa0  02 20 95 e7                                      ldr r2, [r5, r2]
003f3fa4  00 20 92 e5                                      ldr r2, [r2]
003f3fa8  02 00 52 e3                                      cmp r2, #2
003f3fac  00 30 83 05                                      streq r3, [r3]
003f3fb0  06 20 a0 01                                      moveq r2, r6
003f3fb4  10 00 00 0a                                      beq #0x3f3ffc
003f3fb8  01 00 52 e3                                      cmp r2, #1
003f3fbc  0d 00 00 1a                                      bne #0x3f3ff8
003f3fc0  70 01 9f e5                                      ldr r0, [pc, #0x170]
003f3fc4  70 11 9f e5                                      ldr r1, [pc, #0x170]
003f3fc8  70 21 9f e5                                      ldr r2, [pc, #0x170]
003f3fcc  00 00 95 e7                                      ldr r0, [r5, r0]
003f3fd0  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
003f3fd4  02 20 8f e0                                      add r2, pc, r2
003f3fd8  82 c0 a0 e3                                      mov ip, #0x82
003f3fdc  01 10 8f e0                                      add r1, pc, r1
003f3fe0  a8 00 80 e2                                      add r0, r0, #0xa8
003f3fe4  03 30 8f e0                                      add r3, pc, r3
003f3fe8  00 c0 8d e5                                      str ip, [sp]
003f3fec  04 68 fc eb                                      bl #0x30e004
003f3ff0  40 21 97 e5                                      ldr r2, [r7, #0x140]
003f3ff4  00 00 00 ea                                      b #0x3f3ffc
003f3ff8  06 20 a0 e1                                      mov r2, r6
003f3ffc  24 30 96 e5                                      ldr r3, [r6, #0x24]
003f4000  09 00 a0 e1                                      mov r0, sb
003f4004  30 20 92 e5                                      ldr r2, [r2, #0x30]
003f4008  00 10 93 e5                                      ldr r1, [r3]
003f400c  00 30 a0 e3                                      mov r3, #0
003f4010  24 89 04 eb                                      bl #0x5164a8
003f4014  00 00 50 e3                                      cmp r0, #0
003f4018  20 00 00 1a                                      bne #0x3f40a0
003f401c  10 31 9f e5                                      ldr r3, [pc, #0x110]
003f4020  03 30 95 e7                                      ldr r3, [r5, r3]
003f4024  00 40 93 e5                                      ldr r4, [r3]
003f4028  02 00 54 e3                                      cmp r4, #2
003f402c  00 00 80 05                                      streq r0, [r0]
003f4030  01 90 a0 03                                      moveq sb, #1
003f4034  e2 fe ff 0a                                      beq #0x3f3bc4
003f4038  01 00 54 e3                                      cmp r4, #1
003f403c  0b ff ff 1a                                      bne #0x3f3c70
003f4040  f0 00 9f e5                                      ldr r0, [pc, #0xf0]
003f4044  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
003f4048  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
003f404c  00 00 95 e7                                      ldr r0, [r5, r0]
003f4050  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
003f4054  8b ce a0 e3                                      mov ip, #0x8b0
003f4058  01 10 8f e0                                      add r1, pc, r1
003f405c  a8 00 80 e2                                      add r0, r0, #0xa8
003f4060  02 20 8f e0                                      add r2, pc, r2
003f4064  03 30 8f e0                                      add r3, pc, r3
003f4068  00 c0 8d e5                                      str ip, [sp]
003f406c  04 90 a0 e1                                      mov sb, r4
003f4070  e3 67 fc eb                                      bl #0x30e004
003f4074  d2 fe ff ea                                      b #0x3f3bc4
003f4078  58 69 fc eb                                      bl #0x30e5e0
003f407c  00 90 50 e2                                      subs sb, r0, #0
003f4080  eb fe ff 1a                                      bne #0x3f3c34
003f4084  00 30 96 e5                                      ldr r3, [r6]
003f4088  06 00 a0 e1                                      mov r0, r6
003f408c  0f e0 a0 e1                                      mov lr, pc
003f4090  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
003f4094  dd 80 04 eb                                      bl #0x514410
003f4098  44 00 87 e5                                      str r0, [r7, #0x44]
003f409c  c8 fe ff ea                                      b #0x3f3bc4
003f40a0  40 31 97 e5                                      ldr r3, [r7, #0x140]
003f40a4  00 10 a0 e3                                      mov r1, #0
003f40a8  38 20 93 e5                                      ldr r2, [r3, #0x38]
003f40ac  3c 20 83 e5                                      str r2, [r3, #0x3c]
003f40b0  40 61 97 e5                                      ldr r6, [r7, #0x140]
003f40b4  cf fe ff ea                                      b #0x3f3bf8
003f40b8  00 10 a0 e3                                      mov r1, #0
003f40bc  50 00 a0 e3                                      mov r0, #0x50
003f40c0  07 50 a0 e1                                      mov r5, r7
003f40c4  34 a0 9d e5                                      ldr sl, [sp, #0x34]
003f40c8  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
003f40cc  38 80 9d e5                                      ldr r8, [sp, #0x38]
003f40d0  26 71 fc eb                                      bl #0x310570
003f40d4  a0 b0 8d e2                                      add fp, sp, #0xa0
003f40d8  00 60 a0 e1                                      mov r6, r0
003f40dc  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003f40e0  60 10 3b e5                                      ldr r1, [fp, #-0x60]!
003f40e4  8c ff ff ea                                      b #0x3f3f1c
003f40e8  88 68 fc eb                                      bl #0x30e310
003f40ec  05 00 a0 e1                                      mov r0, r5
003f40f0  0c 30 8d e5                                      str r3, [sp, #0xc]
003f40f4  56 67 fc eb                                      bl #0x30de54
003f40f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003f40fc  00 20 a0 e1                                      mov r2, r0
003f4100  2c ff ff ea                                      b #0x3f3db8
; mapping-symbol data/literal pool
003f4104  40 0f 5a 00 ac 40 00 00 40 2c 4d 00 5c 7b 4d 00  .byte 0x40, 0x0f, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x2c, 0x4d, 0x00, 0x5c, 0x7b, 0x4d, 0x00
003f4114  f4 37 00 00 ec 7a 4d 00 c0 2c 56 00 e4 2a 4d 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xec, 0x7a, 0x4d, 0x00, 0xc0, 0x2c, 0x56, 0x00, 0xe4, 0x2a, 0x4d, 0x00
003f4124  80 2c 56 00 c8 2a 4d 00 44 7a 4d 00 20 22 00 00  .byte 0x80, 0x2c, 0x56, 0x00, 0xc8, 0x2a, 0x4d, 0x00, 0x44, 0x7a, 0x4d, 0x00, 0x20, 0x22, 0x00, 0x00
003f4134  c0 39 00 00 c0 19 00 00 fc a3 4c 00 f4 a5 4c 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xfc, 0xa3, 0x4c, 0x00, 0xf4, 0xa5, 0x4c, 0x00
003f4144  dc 27 4d 00 80 a3 4c 00 a0 27 4d 00 ac 24 4d 00  .byte 0xdc, 0x27, 0x4d, 0x00, 0x80, 0xa3, 0x4c, 0x00, 0xa0, 0x27, 0x4d, 0x00, 0xac, 0x24, 0x4d, 0x00

; FUNCTION 0x003f4154, declared_size=1096, range_size=1096, mode=arm
; class-group: Level
; alias: _ZN5Level8LoadTileEPN3rnd4TileEi
; demangled: Level::LoadTile(rnd::Tile*, int)
; decoder-mode: arm
003f4154  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f4158  00 34 9f e5                                      ldr r3, [pc, #0x400]
003f415c  4b df 4d e2                                      sub sp, sp, #0x12c
003f4160  fc 43 9f e5                                      ldr r4, [pc, #0x3fc]
003f4164  03 30 8f e0                                      add r3, pc, r3
003f4168  18 30 8d e5                                      str r3, [sp, #0x18]
003f416c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
003f4170  f0 33 9f e5                                      ldr r3, [pc, #0x3f0]
003f4174  1c 40 8d e5                                      str r4, [sp, #0x1c]
003f4178  01 50 a0 e1                                      mov r5, r1
003f417c  03 c0 9e e7                                      ldr ip, [lr, r3]
003f4180  04 30 9e e7                                      ldr r3, [lr, r4]
003f4184  00 40 a0 e1                                      mov r4, r0
003f4188  00 00 9c e5                                      ldr r0, [ip]
003f418c  00 30 93 e5                                      ldr r3, [r3]
003f4190  02 60 a0 e1                                      mov r6, r2
003f4194  02 00 50 e3                                      cmp r0, #2
003f4198  24 31 8d e5                                      str r3, [sp, #0x124]
003f419c  00 30 a0 03                                      moveq r3, #0
003f41a0  00 30 83 05                                      streq r3, [r3]
003f41a4  01 00 00 0a                                      beq #0x3f41b0
003f41a8  01 00 50 e3                                      cmp r0, #1
003f41ac  dc 00 00 0a                                      beq #0x3f4524
003f41b0  84 00 95 e5                                      ldr r0, [r5, #0x84]
003f41b4  ea 69 fc eb                                      bl #0x30e964
003f41b8  30 80 95 e5                                      ldr r8, [r5, #0x30]
003f41bc  00 a0 a0 e1                                      mov sl, r0
003f41c0  43 bf 8d e2                                      add fp, sp, #0x10c
003f41c4  54 00 98 e5                                      ldr r0, [r8, #0x54]
003f41c8  f4 70 8d e2                                      add r7, sp, #0xf4
003f41cc  dc 90 8d e2                                      add sb, sp, #0xdc
003f41d0  01 00 40 e2                                      sub r0, r0, #1
003f41d4  e2 69 fc eb                                      bl #0x30e964
003f41d8  3f 14 a0 e3                                      mov r1, #0x3f000000
003f41dc  e2 6a fc eb                                      bl #0x30ed6c
003f41e0  00 10 a0 e1                                      mov r1, r0
003f41e4  0a 00 a0 e1                                      mov r0, sl
003f41e8  6d 6a fc eb                                      bl #0x30eba4
003f41ec  4c 10 98 e5                                      ldr r1, [r8, #0x4c]
003f41f0  dd 6a fc eb                                      bl #0x30ed6c
003f41f4  60 01 84 e5                                      str r0, [r4, #0x160]
003f41f8  88 00 95 e5                                      ldr r0, [r5, #0x88]
003f41fc  d8 69 fc eb                                      bl #0x30e964
003f4200  30 a0 95 e5                                      ldr sl, [r5, #0x30]
003f4204  00 30 a0 e1                                      mov r3, r0
003f4208  c4 80 8d e2                                      add r8, sp, #0xc4
003f420c  58 00 9a e5                                      ldr r0, [sl, #0x58]
003f4210  0c 30 8d e5                                      str r3, [sp, #0xc]
003f4214  01 00 40 e2                                      sub r0, r0, #1
003f4218  d1 69 fc eb                                      bl #0x30e964
003f421c  3f 14 a0 e3                                      mov r1, #0x3f000000
003f4220  d1 6a fc eb                                      bl #0x30ed6c
003f4224  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f4228  00 10 a0 e1                                      mov r1, r0
003f422c  03 00 a0 e1                                      mov r0, r3
003f4230  5b 6a fc eb                                      bl #0x30eba4
003f4234  50 10 9a e5                                      ldr r1, [sl, #0x50]
003f4238  ac 20 8d e2                                      add r2, sp, #0xac
003f423c  94 30 8d e2                                      add r3, sp, #0x94
003f4240  02 11 81 e2                                      add r1, r1, #0x80000000
003f4244  14 20 8d e5                                      str r2, [sp, #0x14]
003f4248  10 30 8d e5                                      str r3, [sp, #0x10]
003f424c  c6 6a fc eb                                      bl #0x30ed6c
003f4250  64 01 84 e5                                      str r0, [r4, #0x164]
003f4254  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
003f4258  04 00 a0 e1                                      mov r0, r4
003f425c  06 10 a0 e1                                      mov r1, r6
003f4260  68 31 84 e5                                      str r3, [r4, #0x168]
003f4264  03 ec ff eb                                      bl #0x3ef278
003f4268  30 10 95 e5                                      ldr r1, [r5, #0x30]
003f426c  f8 22 9f e5                                      ldr r2, [pc, #0x2f8]
003f4270  0b 00 a0 e1                                      mov r0, fp
003f4274  1c 10 81 e2                                      add r1, r1, #0x1c
003f4278  02 20 8f e0                                      add r2, pc, r2
003f427c  92 fd fc eb                                      bl #0x3338cc
003f4280  30 10 95 e5                                      ldr r1, [r5, #0x30]
003f4284  e4 22 9f e5                                      ldr r2, [pc, #0x2e4]
003f4288  07 00 a0 e1                                      mov r0, r7
003f428c  04 10 81 e2                                      add r1, r1, #4
003f4290  02 20 8f e0                                      add r2, pc, r2
003f4294  8c fd fc eb                                      bl #0x3338cc
003f4298  08 11 9d e5                                      ldr r1, [sp, #0x108]
003f429c  04 21 9d e5                                      ldr r2, [sp, #0x104]
003f42a0  0b 00 a0 e1                                      mov r0, fp
003f42a4  56 71 fc eb                                      bl #0x310804
003f42a8  07 00 a0 e1                                      mov r0, r7
003f42ac  be 7d fc eb                                      bl #0x3139ac
003f42b0  30 10 95 e5                                      ldr r1, [r5, #0x30]
003f42b4  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
003f42b8  09 00 a0 e1                                      mov r0, sb
003f42bc  1c 10 81 e2                                      add r1, r1, #0x1c
003f42c0  02 20 8f e0                                      add r2, pc, r2
003f42c4  80 fd fc eb                                      bl #0x3338cc
003f42c8  30 10 95 e5                                      ldr r1, [r5, #0x30]
003f42cc  a4 22 9f e5                                      ldr r2, [pc, #0x2a4]
003f42d0  08 00 a0 e1                                      mov r0, r8
003f42d4  04 10 81 e2                                      add r1, r1, #4
003f42d8  02 20 8f e0                                      add r2, pc, r2
003f42dc  7a fd fc eb                                      bl #0x3338cc
003f42e0  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
003f42e4  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
003f42e8  09 00 a0 e1                                      mov r0, sb
003f42ec  44 71 fc eb                                      bl #0x310804
003f42f0  08 00 a0 e1                                      mov r0, r8
003f42f4  ac 7d fc eb                                      bl #0x3139ac
003f42f8  30 10 95 e5                                      ldr r1, [r5, #0x30]
003f42fc  78 22 9f e5                                      ldr r2, [pc, #0x278]
003f4300  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f4304  1c 10 81 e2                                      add r1, r1, #0x1c
003f4308  02 20 8f e0                                      add r2, pc, r2
003f430c  6e fd fc eb                                      bl #0x3338cc
003f4310  64 10 95 e5                                      ldr r1, [r5, #0x64]
003f4314  60 20 95 e5                                      ldr r2, [r5, #0x60]
003f4318  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f431c  38 71 fc eb                                      bl #0x310804
003f4320  30 10 95 e5                                      ldr r1, [r5, #0x30]
003f4324  54 22 9f e5                                      ldr r2, [pc, #0x254]
003f4328  10 00 9d e5                                      ldr r0, [sp, #0x10]
003f432c  1c 10 81 e2                                      add r1, r1, #0x1c
003f4330  02 20 8f e0                                      add r2, pc, r2
003f4334  64 fd fc eb                                      bl #0x3338cc
003f4338  10 00 9d e5                                      ldr r0, [sp, #0x10]
003f433c  7c 10 95 e5                                      ldr r1, [r5, #0x7c]
003f4340  78 20 95 e5                                      ldr r2, [r5, #0x78]
003f4344  2e 71 fc eb                                      bl #0x310804
003f4348  34 82 9f e5                                      ldr r8, [pc, #0x234]
003f434c  7c 70 8d e2                                      add r7, sp, #0x7c
003f4350  30 a0 8d e2                                      add sl, sp, #0x30
003f4354  08 80 8f e0                                      add r8, pc, r8
003f4358  08 10 a0 e1                                      mov r1, r8
003f435c  0a 20 a0 e1                                      mov r2, sl
003f4360  07 00 a0 e1                                      mov r0, r7
003f4364  60 7f fc eb                                      bl #0x3140ec
003f4368  09 10 a0 e1                                      mov r1, sb
003f436c  07 20 a0 e1                                      mov r2, r7
003f4370  04 00 a0 e1                                      mov r0, r4
003f4374  f1 fd ff eb                                      bl #0x3f3b40
003f4378  00 30 a0 e1                                      mov r3, r0
003f437c  07 00 a0 e1                                      mov r0, r7
003f4380  0c 30 8d e5                                      str r3, [sp, #0xc]
003f4384  88 7d fc eb                                      bl #0x3139ac
003f4388  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f438c  00 00 53 e3                                      cmp r3, #0
003f4390  f0 ff ff 0a                                      beq #0x3f4358
003f4394  64 70 8d e2                                      add r7, sp, #0x64
003f4398  2c a0 8d e2                                      add sl, sp, #0x2c
003f439c  08 10 a0 e1                                      mov r1, r8
003f43a0  0a 20 a0 e1                                      mov r2, sl
003f43a4  07 00 a0 e1                                      mov r0, r7
003f43a8  4f 7f fc eb                                      bl #0x3140ec
003f43ac  0b 10 a0 e1                                      mov r1, fp
003f43b0  07 20 a0 e1                                      mov r2, r7
003f43b4  04 00 a0 e1                                      mov r0, r4
003f43b8  e0 fd ff eb                                      bl #0x3f3b40
003f43bc  00 30 a0 e1                                      mov r3, r0
003f43c0  07 00 a0 e1                                      mov r0, r7
003f43c4  0c 30 8d e5                                      str r3, [sp, #0xc]
003f43c8  77 7d fc eb                                      bl #0x3139ac
003f43cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f43d0  00 00 53 e3                                      cmp r3, #0
003f43d4  f0 ff ff 0a                                      beq #0x3f439c
003f43d8  64 20 95 e5                                      ldr r2, [r5, #0x64]
003f43dc  60 30 95 e5                                      ldr r3, [r5, #0x60]
003f43e0  03 00 52 e1                                      cmp r2, r3
003f43e4  10 00 00 0a                                      beq #0x3f442c
003f43e8  4c 70 8d e2                                      add r7, sp, #0x4c
003f43ec  28 a0 8d e2                                      add sl, sp, #0x28
003f43f0  08 10 a0 e1                                      mov r1, r8
003f43f4  0a 20 a0 e1                                      mov r2, sl
003f43f8  07 00 a0 e1                                      mov r0, r7
003f43fc  3a 7f fc eb                                      bl #0x3140ec
003f4400  14 10 9d e5                                      ldr r1, [sp, #0x14]
003f4404  07 20 a0 e1                                      mov r2, r7
003f4408  04 00 a0 e1                                      mov r0, r4
003f440c  cb fd ff eb                                      bl #0x3f3b40
003f4410  00 30 a0 e1                                      mov r3, r0
003f4414  07 00 a0 e1                                      mov r0, r7
003f4418  0c 30 8d e5                                      str r3, [sp, #0xc]
003f441c  62 7d fc eb                                      bl #0x3139ac
003f4420  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f4424  00 00 53 e3                                      cmp r3, #0
003f4428  f0 ff ff 0a                                      beq #0x3f43f0
003f442c  7c 20 95 e5                                      ldr r2, [r5, #0x7c]
003f4430  78 30 95 e5                                      ldr r3, [r5, #0x78]
003f4434  03 00 52 e1                                      cmp r2, r3
003f4438  12 00 00 0a                                      beq #0x3f4488
003f443c  44 81 9f e5                                      ldr r8, [pc, #0x144]
003f4440  34 70 8d e2                                      add r7, sp, #0x34
003f4444  24 a0 8d e2                                      add sl, sp, #0x24
003f4448  08 80 8f e0                                      add r8, pc, r8
003f444c  08 10 a0 e1                                      mov r1, r8
003f4450  0a 20 a0 e1                                      mov r2, sl
003f4454  07 00 a0 e1                                      mov r0, r7
003f4458  23 7f fc eb                                      bl #0x3140ec
003f445c  10 10 9d e5                                      ldr r1, [sp, #0x10]
003f4460  07 20 a0 e1                                      mov r2, r7
003f4464  04 00 a0 e1                                      mov r0, r4
003f4468  b4 fd ff eb                                      bl #0x3f3b40
003f446c  00 30 a0 e1                                      mov r3, r0
003f4470  07 00 a0 e1                                      mov r0, r7
003f4474  0c 30 8d e5                                      str r3, [sp, #0xc]
003f4478  4b 7d fc eb                                      bl #0x3139ac
003f447c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003f4480  00 00 53 e3                                      cmp r3, #0
003f4484  f0 ff ff 0a                                      beq #0x3f444c
003f4488  00 30 a0 e3                                      mov r3, #0
003f448c  00 80 a0 e3                                      mov r8, #0
003f4490  6c 81 c4 e5                                      strb r8, [r4, #0x16c]
003f4494  68 31 84 e5                                      str r3, [r4, #0x168]
003f4498  60 31 84 e5                                      str r3, [r4, #0x160]
003f449c  64 31 84 e5                                      str r3, [r4, #0x164]
003f44a0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003f44a4  08 00 53 e1                                      cmp r3, r8
003f44a8  0b 00 00 da                                      ble #0x3f44dc
003f44ac  05 70 a0 e1                                      mov r7, r5
003f44b0  06 00 a0 e1                                      mov r0, r6
003f44b4  01 20 80 e2                                      add r2, r0, #1
003f44b8  10 10 97 e5                                      ldr r1, [r7, #0x10]
003f44bc  04 00 a0 e1                                      mov r0, r4
003f44c0  23 ff ff eb                                      bl #0x3f4154
003f44c4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003f44c8  01 80 88 e2                                      add r8, r8, #1
003f44cc  04 70 87 e2                                      add r7, r7, #4
003f44d0  08 00 53 e1                                      cmp r3, r8
003f44d4  f6 ff ff ca                                      bgt #0x3f44b4
003f44d8  00 60 a0 e1                                      mov r6, r0
003f44dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
003f44e0  31 7d fc eb                                      bl #0x3139ac
003f44e4  14 00 9d e5                                      ldr r0, [sp, #0x14]
003f44e8  2f 7d fc eb                                      bl #0x3139ac
003f44ec  09 00 a0 e1                                      mov r0, sb
003f44f0  2d 7d fc eb                                      bl #0x3139ac
003f44f4  0b 00 a0 e1                                      mov r0, fp
003f44f8  2b 7d fc eb                                      bl #0x3139ac
003f44fc  18 10 9d e5                                      ldr r1, [sp, #0x18]
003f4500  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
003f4504  24 21 9d e5                                      ldr r2, [sp, #0x124]
003f4508  06 00 a0 e1                                      mov r0, r6
003f450c  04 30 91 e7                                      ldr r3, [r1, r4]
003f4510  00 30 93 e5                                      ldr r3, [r3]
003f4514  03 00 52 e1                                      cmp r2, r3
003f4518  0f 00 00 1a                                      bne #0x3f455c
003f451c  4b df 8d e2                                      add sp, sp, #0x12c
003f4520  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f4524  18 10 9d e5                                      ldr r1, [sp, #0x18]
003f4528  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
003f452c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003f4530  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003f4534  00 00 91 e7                                      ldr r0, [r1, r0]
003f4538  58 10 9f e5                                      ldr r1, [pc, #0x58]
003f453c  c5 cc 00 e3                                      movw ip, #0xcc5
003f4540  02 20 8f e0                                      add r2, pc, r2
003f4544  01 10 8f e0                                      add r1, pc, r1
003f4548  03 30 8f e0                                      add r3, pc, r3
003f454c  a8 00 80 e2                                      add r0, r0, #0xa8
003f4550  00 c0 8d e5                                      str ip, [sp]
003f4554  aa 66 fc eb                                      bl #0x30e004
003f4558  14 ff ff ea                                      b #0x3f41b0
003f455c  6b 67 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f4560  2c 09 5a 00 ac 40 00 00 c0 39 00 00 a8 25 4d 00  .byte 0x2c, 0x09, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xa8, 0x25, 0x4d, 0x00
003f4570  98 25 4d 00 70 25 4d 00 60 25 4d 00 38 25 4d 00  .byte 0x98, 0x25, 0x4d, 0x00, 0x70, 0x25, 0x4d, 0x00, 0x60, 0x25, 0x4d, 0x00, 0x38, 0x25, 0x4d, 0x00
003f4580  18 25 4d 00 dc c0 4c 00 e8 bf 4c 00 c0 19 00 00  .byte 0x18, 0x25, 0x4d, 0x00, 0xdc, 0xc0, 0x4c, 0x00, 0xe8, 0xbf, 0x4c, 0x00, 0xc0, 0x19, 0x00, 0x00
003f4590  28 a0 4c 00 c8 1f 4d 00 94 9e 4c 00              .byte 0x28, 0xa0, 0x4c, 0x00, 0xc8, 0x1f, 0x4d, 0x00, 0x94, 0x9e, 0x4c, 0x00

; FUNCTION 0x003f459c, declared_size=884, range_size=884, mode=arm
; class-group: Level
; alias: _ZN5Level13_LoadLightSetEv
; demangled: Level::_LoadLightSet()
; decoder-mode: arm
003f459c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f45a0  20 73 9f e5                                      ldr r7, [pc, #0x320]
003f45a4  20 b3 9f e5                                      ldr fp, [pc, #0x320]
003f45a8  9c d0 4d e2                                      sub sp, sp, #0x9c
003f45ac  07 70 8f e0                                      add r7, pc, r7
003f45b0  0b 30 97 e7                                      ldr r3, [r7, fp]
003f45b4  00 40 a0 e1                                      mov r4, r0
003f45b8  00 30 93 e5                                      ldr r3, [r3]
003f45bc  94 30 8d e5                                      str r3, [sp, #0x94]
003f45c0  28 34 fe eb                                      bl #0x381668
003f45c4  00 00 50 e3                                      cmp r0, #0
003f45c8  45 00 00 0a                                      beq #0x3f46e4
003f45cc  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f45d0  00 00 53 e3                                      cmp r3, #0
003f45d4  a4 00 00 0a                                      beq #0x3f486c
003f45d8  e4 12 93 e5                                      ldr r1, [r3, #0x2e4]
003f45dc  e0 22 93 e5                                      ldr r2, [r3, #0x2e0]
003f45e0  02 00 51 e1                                      cmp r1, r2
003f45e4  5a 00 00 0a                                      beq #0x3f4754
003f45e8  e0 22 9f e5                                      ldr r2, [pc, #0x2e0]
003f45ec  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
003f45f0  e0 82 9f e5                                      ldr r8, [pc, #0x2e0]
003f45f4  10 20 8d e5                                      str r2, [sp, #0x10]
003f45f8  dc 22 9f e5                                      ldr r2, [pc, #0x2dc]
003f45fc  0c 10 8d e5                                      str r1, [sp, #0xc]
003f4600  08 80 8f e0                                      add r8, pc, r8
003f4604  02 20 8f e0                                      add r2, pc, r2
003f4608  14 20 8d e5                                      str r2, [sp, #0x14]
003f460c  cc 22 9f e5                                      ldr r2, [pc, #0x2cc]
003f4610  7c 60 8d e2                                      add r6, sp, #0x7c
003f4614  30 a0 8d e2                                      add sl, sp, #0x30
003f4618  02 20 8f e0                                      add r2, pc, r2
003f461c  18 20 8d e5                                      str r2, [sp, #0x18]
003f4620  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
003f4624  64 50 8d e2                                      add r5, sp, #0x64
003f4628  2c 90 8d e2                                      add sb, sp, #0x2c
003f462c  02 20 8f e0                                      add r2, pc, r2
003f4630  1c 20 8d e5                                      str r2, [sp, #0x1c]
003f4634  15 00 00 ea                                      b #0x3f4690
003f4638  e4 12 93 e5                                      ldr r1, [r3, #0x2e4]
003f463c  0a 20 a0 e1                                      mov r2, sl
003f4640  06 00 a0 e1                                      mov r0, r6
003f4644  a8 7e fc eb                                      bl #0x3140ec
003f4648  08 10 a0 e1                                      mov r1, r8
003f464c  09 20 a0 e1                                      mov r2, sb
003f4650  05 00 a0 e1                                      mov r0, r5
003f4654  a4 7e fc eb                                      bl #0x3140ec
003f4658  06 10 a0 e1                                      mov r1, r6
003f465c  05 20 a0 e1                                      mov r2, r5
003f4660  04 00 a0 e1                                      mov r0, r4
003f4664  35 fd ff eb                                      bl #0x3f3b40
003f4668  00 30 a0 e1                                      mov r3, r0
003f466c  05 00 a0 e1                                      mov r0, r5
003f4670  08 30 8d e5                                      str r3, [sp, #8]
003f4674  cc 7c fc eb                                      bl #0x3139ac
003f4678  06 00 a0 e1                                      mov r0, r6
003f467c  ca 7c fc eb                                      bl #0x3139ac
003f4680  08 30 9d e5                                      ldr r3, [sp, #8]
003f4684  00 00 53 e3                                      cmp r3, #0
003f4688  31 00 00 1a                                      bne #0x3f4754
003f468c  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f4690  00 00 53 e3                                      cmp r3, #0
003f4694  e7 ff ff 1a                                      bne #0x3f4638
003f4698  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003f469c  01 20 97 e7                                      ldr r2, [r7, r1]
003f46a0  00 20 92 e5                                      ldr r2, [r2]
003f46a4  02 00 52 e3                                      cmp r2, #2
003f46a8  00 30 83 05                                      streq r3, [r3]
003f46ac  e1 ff ff 0a                                      beq #0x3f4638
003f46b0  01 00 52 e3                                      cmp r2, #1
003f46b4  df ff ff 1a                                      bne #0x3f4638
003f46b8  10 20 9d e5                                      ldr r2, [sp, #0x10]
003f46bc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f46c0  77 cf a0 e3                                      mov ip, #0x1dc
003f46c4  02 00 97 e7                                      ldr r0, [r7, r2]
003f46c8  14 10 9d e5                                      ldr r1, [sp, #0x14]
003f46cc  18 20 9d e5                                      ldr r2, [sp, #0x18]
003f46d0  a8 00 80 e2                                      add r0, r0, #0xa8
003f46d4  00 c0 8d e5                                      str ip, [sp]
003f46d8  49 66 fc eb                                      bl #0x30e004
003f46dc  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f46e0  d4 ff ff ea                                      b #0x3f4638
003f46e4  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f46e8  00 00 53 e3                                      cmp r3, #0
003f46ec  14 00 00 1a                                      bne #0x3f4744
003f46f0  dc 21 9f e5                                      ldr r2, [pc, #0x1dc]
003f46f4  02 20 97 e7                                      ldr r2, [r7, r2]
003f46f8  00 20 92 e5                                      ldr r2, [r2]
003f46fc  02 00 52 e3                                      cmp r2, #2
003f4700  00 30 83 05                                      streq r3, [r3]
003f4704  0e 00 00 0a                                      beq #0x3f4744
003f4708  01 00 52 e3                                      cmp r2, #1
003f470c  0c 00 00 1a                                      bne #0x3f4744
003f4710  b8 01 9f e5                                      ldr r0, [pc, #0x1b8]
003f4714  cc 11 9f e5                                      ldr r1, [pc, #0x1cc]
003f4718  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
003f471c  00 00 97 e7                                      ldr r0, [r7, r0]
003f4720  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
003f4724  77 cf a0 e3                                      mov ip, #0x1dc
003f4728  01 10 8f e0                                      add r1, pc, r1
003f472c  03 30 8f e0                                      add r3, pc, r3
003f4730  a8 00 80 e2                                      add r0, r0, #0xa8
003f4734  02 20 8f e0                                      add r2, pc, r2
003f4738  00 c0 8d e5                                      str ip, [sp]
003f473c  30 66 fc eb                                      bl #0x30e004
003f4740  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f4744  cc 12 93 e5                                      ldr r1, [r3, #0x2cc]
003f4748  c8 22 93 e5                                      ldr r2, [r3, #0x2c8]
003f474c  02 00 51 e1                                      cmp r1, r2
003f4750  06 00 00 1a                                      bne #0x3f4770
003f4754  0b 30 97 e7                                      ldr r3, [r7, fp]
003f4758  94 20 9d e5                                      ldr r2, [sp, #0x94]
003f475c  00 30 93 e5                                      ldr r3, [r3]
003f4760  03 00 52 e1                                      cmp r2, r3
003f4764  56 00 00 1a                                      bne #0x3f48c4
003f4768  9c d0 8d e2                                      add sp, sp, #0x9c
003f476c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f4770  58 21 9f e5                                      ldr r2, [pc, #0x158]
003f4774  58 11 9f e5                                      ldr r1, [pc, #0x158]
003f4778  74 81 9f e5                                      ldr r8, [pc, #0x174]
003f477c  10 20 8d e5                                      str r2, [sp, #0x10]
003f4780  70 21 9f e5                                      ldr r2, [pc, #0x170]
003f4784  0c 10 8d e5                                      str r1, [sp, #0xc]
003f4788  08 80 8f e0                                      add r8, pc, r8
003f478c  02 20 8f e0                                      add r2, pc, r2
003f4790  14 20 8d e5                                      str r2, [sp, #0x14]
003f4794  60 21 9f e5                                      ldr r2, [pc, #0x160]
003f4798  4c 60 8d e2                                      add r6, sp, #0x4c
003f479c  28 a0 8d e2                                      add sl, sp, #0x28
003f47a0  02 20 8f e0                                      add r2, pc, r2
003f47a4  18 20 8d e5                                      str r2, [sp, #0x18]
003f47a8  50 21 9f e5                                      ldr r2, [pc, #0x150]
003f47ac  34 50 8d e2                                      add r5, sp, #0x34
003f47b0  24 90 8d e2                                      add sb, sp, #0x24
003f47b4  02 20 8f e0                                      add r2, pc, r2
003f47b8  1c 20 8d e5                                      str r2, [sp, #0x1c]
003f47bc  15 00 00 ea                                      b #0x3f4818
003f47c0  cc 12 93 e5                                      ldr r1, [r3, #0x2cc]
003f47c4  0a 20 a0 e1                                      mov r2, sl
003f47c8  06 00 a0 e1                                      mov r0, r6
003f47cc  46 7e fc eb                                      bl #0x3140ec
003f47d0  08 10 a0 e1                                      mov r1, r8
003f47d4  09 20 a0 e1                                      mov r2, sb
003f47d8  05 00 a0 e1                                      mov r0, r5
003f47dc  42 7e fc eb                                      bl #0x3140ec
003f47e0  06 10 a0 e1                                      mov r1, r6
003f47e4  05 20 a0 e1                                      mov r2, r5
003f47e8  04 00 a0 e1                                      mov r0, r4
003f47ec  d3 fc ff eb                                      bl #0x3f3b40
003f47f0  00 30 a0 e1                                      mov r3, r0
003f47f4  05 00 a0 e1                                      mov r0, r5
003f47f8  08 30 8d e5                                      str r3, [sp, #8]
003f47fc  6a 7c fc eb                                      bl #0x3139ac
003f4800  06 00 a0 e1                                      mov r0, r6
003f4804  68 7c fc eb                                      bl #0x3139ac
003f4808  08 30 9d e5                                      ldr r3, [sp, #8]
003f480c  00 00 53 e3                                      cmp r3, #0
003f4810  cf ff ff 1a                                      bne #0x3f4754
003f4814  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f4818  00 00 53 e3                                      cmp r3, #0
003f481c  e7 ff ff 1a                                      bne #0x3f47c0
003f4820  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003f4824  01 20 97 e7                                      ldr r2, [r7, r1]
003f4828  00 20 92 e5                                      ldr r2, [r2]
003f482c  02 00 52 e3                                      cmp r2, #2
003f4830  00 30 83 05                                      streq r3, [r3]
003f4834  e1 ff ff 0a                                      beq #0x3f47c0
003f4838  01 00 52 e3                                      cmp r2, #1
003f483c  df ff ff 1a                                      bne #0x3f47c0
003f4840  10 20 9d e5                                      ldr r2, [sp, #0x10]
003f4844  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f4848  77 cf a0 e3                                      mov ip, #0x1dc
003f484c  02 00 97 e7                                      ldr r0, [r7, r2]
003f4850  14 10 9d e5                                      ldr r1, [sp, #0x14]
003f4854  18 20 9d e5                                      ldr r2, [sp, #0x18]
003f4858  a8 00 80 e2                                      add r0, r0, #0xa8
003f485c  00 c0 8d e5                                      str ip, [sp]
003f4860  e7 65 fc eb                                      bl #0x30e004
003f4864  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f4868  d4 ff ff ea                                      b #0x3f47c0
003f486c  60 20 9f e5                                      ldr r2, [pc, #0x60]
003f4870  02 20 97 e7                                      ldr r2, [r7, r2]
003f4874  00 20 92 e5                                      ldr r2, [r2]
003f4878  02 00 52 e3                                      cmp r2, #2
003f487c  00 30 83 05                                      streq r3, [r3]
003f4880  54 ff ff 0a                                      beq #0x3f45d8
003f4884  01 00 52 e3                                      cmp r2, #1
003f4888  52 ff ff 1a                                      bne #0x3f45d8
003f488c  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003f4890  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003f4894  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003f4898  00 00 97 e7                                      ldr r0, [r7, r0]
003f489c  68 30 9f e5                                      ldr r3, [pc, #0x68]
003f48a0  77 cf a0 e3                                      mov ip, #0x1dc
003f48a4  01 10 8f e0                                      add r1, pc, r1
003f48a8  03 30 8f e0                                      add r3, pc, r3
003f48ac  a8 00 80 e2                                      add r0, r0, #0xa8
003f48b0  02 20 8f e0                                      add r2, pc, r2
003f48b4  00 c0 8d e5                                      str ip, [sp]
003f48b8  d1 65 fc eb                                      bl #0x30e004
003f48bc  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f48c0  44 ff ff ea                                      b #0x3f45d8
003f48c4  91 66 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f48c8  e4 04 5a 00 ac 40 00 00 c0 19 00 00 c0 39 00 00  .byte 0xe4, 0x04, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003f48d8  30 be 4c 00 d4 9d 4c 00 d8 15 4d 00 2c d6 4c 00  .byte 0x30, 0xbe, 0x4c, 0x00, 0xd4, 0x9d, 0x4c, 0x00, 0xd8, 0x15, 0x4d, 0x00, 0x2c, 0xd6, 0x4c, 0x00
003f48e8  b0 9c 4c 00 bc 14 4d 00 2c d5 4c 00 a8 bc 4c 00  .byte 0xb0, 0x9c, 0x4c, 0x00, 0xbc, 0x14, 0x4d, 0x00, 0x2c, 0xd5, 0x4c, 0x00, 0xa8, 0xbc, 0x4c, 0x00
003f48f8  4c 9c 4c 00 50 14 4d 00 a4 d4 4c 00 34 9b 4c 00  .byte 0x4c, 0x9c, 0x4c, 0x00, 0x50, 0x14, 0x4d, 0x00, 0xa4, 0xd4, 0x4c, 0x00, 0x34, 0x9b, 0x4c, 0x00
003f4908  40 13 4d 00 b0 d3 4c 00                          .byte 0x40, 0x13, 0x4d, 0x00, 0xb0, 0xd3, 0x4c, 0x00

; FUNCTION 0x003f55a4, declared_size=488, range_size=488, mode=arm
; class-group: Level
; alias: _ZN5Level12_FlushMeshesEv
; demangled: Level::_FlushMeshes()
; decoder-mode: arm
003f55a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f55a8  cc 61 9f e5                                      ldr r6, [pc, #0x1cc]
003f55ac  cc b1 9f e5                                      ldr fp, [pc, #0x1cc]
003f55b0  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
003f55b4  06 60 8f e0                                      add r6, pc, r6
003f55b8  0b 20 96 e7                                      ldr r2, [r6, fp]
003f55bc  03 10 96 e7                                      ldr r1, [r6, r3]
003f55c0  4c d0 4d e2                                      sub sp, sp, #0x4c
003f55c4  00 20 92 e5                                      ldr r2, [r2]
003f55c8  38 a0 91 e5                                      ldr sl, [r1, #0x38]
003f55cc  00 30 a0 e3                                      mov r3, #0
003f55d0  48 50 8d e2                                      add r5, sp, #0x48
003f55d4  44 20 8d e5                                      str r2, [sp, #0x44]
003f55d8  14 40 9a e5                                      ldr r4, [sl, #0x14]
003f55dc  48 30 65 e5                                      strb r3, [r5, #-0x48]!
003f55e0  10 30 8d e5                                      str r3, [sp, #0x10]
003f55e4  0c a0 8a e2                                      add sl, sl, #0xc
003f55e8  28 00 8d e9                                      stmib sp, {r3, r5}
003f55ec  0c 50 8d e5                                      str r5, [sp, #0xc]
003f55f0  18 70 8d e2                                      add r7, sp, #0x18
003f55f4  2c 80 8d e2                                      add r8, sp, #0x2c
003f55f8  24 90 8d e2                                      add sb, sp, #0x24
003f55fc  04 00 5a e1                                      cmp sl, r4
003f5600  1e 00 00 0a                                      beq #0x3f5680
003f5604  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003f5608  00 00 51 e3                                      cmp r1, #0
003f560c  10 00 00 0a                                      beq #0x3f5654
003f5610  07 00 a0 e1                                      mov r0, r7
003f5614  c4 21 fd eb                                      bl #0x33dd2c
003f5618  07 00 a0 e1                                      mov r0, r7
003f561c  30 2a fd eb                                      bl #0x33fee4
003f5620  00 00 50 e3                                      cmp r0, #0
003f5624  0a 00 00 0a                                      beq #0x3f5654
003f5628  d8 12 90 e5                                      ldr r1, [r0, #0x2d8]
003f562c  00 00 51 e3                                      cmp r1, #0
003f5630  07 00 00 0a                                      beq #0x3f5654
003f5634  08 00 a0 e1                                      mov r0, r8
003f5638  c0 fa 01 eb                                      bl #0x474140
003f563c  09 00 a0 e1                                      mov r0, sb
003f5640  0d 10 a0 e1                                      mov r1, sp
003f5644  08 20 a0 e1                                      mov r2, r8
003f5648  e6 14 fe eb                                      bl #0x37a9e8
003f564c  08 00 a0 e1                                      mov r0, r8
003f5650  d5 78 fc eb                                      bl #0x3139ac
003f5654  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003f5658  00 00 52 e3                                      cmp r2, #0
003f565c  01 00 00 1a                                      bne #0x3f5668
003f5660  1c 00 00 ea                                      b #0x3f56d8
003f5664  03 20 a0 e1                                      mov r2, r3
003f5668  08 30 92 e5                                      ldr r3, [r2, #8]
003f566c  00 00 53 e3                                      cmp r3, #0
003f5670  fb ff ff 1a                                      bne #0x3f5664
003f5674  02 40 a0 e1                                      mov r4, r2
003f5678  04 00 5a e1                                      cmp sl, r4
003f567c  e0 ff ff 1a                                      bne #0x3f5604
003f5680  08 40 9d e5                                      ldr r4, [sp, #8]
003f5684  fc 70 9f e5                                      ldr r7, [pc, #0xfc]
003f5688  05 00 54 e1                                      cmp r4, r5
003f568c  2c 00 00 0a                                      beq #0x3f5744
003f5690  07 30 96 e7                                      ldr r3, [r6, r7]
003f5694  24 10 94 e5                                      ldr r1, [r4, #0x24]
003f5698  00 20 a0 e3                                      mov r2, #0
003f569c  00 00 93 e5                                      ldr r0, [r3]
003f56a0  c0 94 09 eb                                      bl #0x65a9a8
003f56a4  00 00 50 e3                                      cmp r0, #0
003f56a8  01 00 00 0a                                      beq #0x3f56b4
003f56ac  01 10 a0 e3                                      mov r1, #1
003f56b0  a8 89 09 eb                                      bl #0x657d58
003f56b4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003f56b8  00 00 52 e3                                      cmp r2, #0
003f56bc  12 00 00 0a                                      beq #0x3f570c
003f56c0  02 40 a0 e1                                      mov r4, r2
003f56c4  08 30 94 e5                                      ldr r3, [r4, #8]
003f56c8  00 00 53 e3                                      cmp r3, #0
003f56cc  ed ff ff 0a                                      beq #0x3f5688
003f56d0  03 40 a0 e1                                      mov r4, r3
003f56d4  fa ff ff ea                                      b #0x3f56c4
003f56d8  04 30 94 e5                                      ldr r3, [r4, #4]
003f56dc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003f56e0  01 00 54 e1                                      cmp r4, r1
003f56e4  05 00 00 1a                                      bne #0x3f5700
003f56e8  03 40 a0 e1                                      mov r4, r3
003f56ec  04 30 93 e5                                      ldr r3, [r3, #4]
003f56f0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003f56f4  04 00 52 e1                                      cmp r2, r4
003f56f8  fa ff ff 0a                                      beq #0x3f56e8
003f56fc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003f5700  03 00 52 e1                                      cmp r2, r3
003f5704  03 40 a0 11                                      movne r4, r3
003f5708  bb ff ff ea                                      b #0x3f55fc
003f570c  04 30 94 e5                                      ldr r3, [r4, #4]
003f5710  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003f5714  01 00 54 e1                                      cmp r4, r1
003f5718  05 00 00 1a                                      bne #0x3f5734
003f571c  03 40 a0 e1                                      mov r4, r3
003f5720  04 30 93 e5                                      ldr r3, [r3, #4]
003f5724  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003f5728  04 00 52 e1                                      cmp r2, r4
003f572c  fa ff ff 0a                                      beq #0x3f571c
003f5730  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003f5734  03 00 52 e1                                      cmp r2, r3
003f5738  03 40 a0 11                                      movne r4, r3
003f573c  05 00 54 e1                                      cmp r4, r5
003f5740  d2 ff ff 1a                                      bne #0x3f5690
003f5744  10 30 9d e5                                      ldr r3, [sp, #0x10]
003f5748  00 00 53 e3                                      cmp r3, #0
003f574c  02 00 00 0a                                      beq #0x3f575c
003f5750  0d 00 a0 e1                                      mov r0, sp
003f5754  04 10 9d e5                                      ldr r1, [sp, #4]
003f5758  66 19 fe eb                                      bl #0x37bcf8
003f575c  0b 30 96 e7                                      ldr r3, [r6, fp]
003f5760  44 20 9d e5                                      ldr r2, [sp, #0x44]
003f5764  00 30 93 e5                                      ldr r3, [r3]
003f5768  03 00 52 e1                                      cmp r2, r3
003f576c  01 00 00 1a                                      bne #0x3f5778
003f5770  4c d0 8d e2                                      add sp, sp, #0x4c
003f5774  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f5778  e4 62 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f577c  dc f4 59 00 ac 40 00 00 f4 37 00 00 48 44 00 00  .byte 0xdc, 0xf4, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x003f5ea0, declared_size=232, range_size=232, mode=arm
; class-group: Level
; alias: _ZN5Level13_LoadBatchMapEv
; demangled: Level::_LoadBatchMap()
; decoder-mode: arm
003f5ea0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f5ea4  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
003f5ea8  cc 80 9f e5                                      ldr r8, [pc, #0xcc]
003f5eac  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
003f5eb0  05 50 8f e0                                      add r5, pc, r5
003f5eb4  08 30 95 e7                                      ldr r3, [r5, r8]
003f5eb8  02 60 95 e7                                      ldr r6, [r5, r2]
003f5ebc  20 d0 4d e2                                      sub sp, sp, #0x20
003f5ec0  00 30 93 e5                                      ldr r3, [r3]
003f5ec4  00 70 a0 e1                                      mov r7, r0
003f5ec8  06 00 a0 e1                                      mov r0, r6
003f5ecc  1c 30 8d e5                                      str r3, [sp, #0x1c]
003f5ed0  6c 06 fd eb                                      bl #0x337888
003f5ed4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
003f5ed8  04 40 8d e2                                      add r4, sp, #4
003f5edc  0d 20 a0 e1                                      mov r2, sp
003f5ee0  01 10 8f e0                                      add r1, pc, r1
003f5ee4  04 00 a0 e1                                      mov r0, r4
003f5ee8  7f 78 fc eb                                      bl #0x3140ec
003f5eec  06 00 a0 e1                                      mov r0, r6
003f5ef0  04 10 a0 e1                                      mov r1, r4
003f5ef4  e3 06 fd eb                                      bl #0x337a88
003f5ef8  00 60 a0 e1                                      mov r6, r0
003f5efc  04 00 a0 e1                                      mov r0, r4
003f5f00  a9 76 fc eb                                      bl #0x3139ac
003f5f04  00 00 56 e3                                      cmp r6, #0
003f5f08  12 00 00 1a                                      bne #0x3f5f58
003f5f0c  58 71 97 e5                                      ldr r7, [r7, #0x158]
003f5f10  00 00 57 e3                                      cmp r7, #0
003f5f14  0f 00 00 0a                                      beq #0x3f5f58
003f5f18  10 40 97 e5                                      ldr r4, [r7, #0x10]
003f5f1c  14 60 97 e5                                      ldr r6, [r7, #0x14]
003f5f20  06 00 54 e1                                      cmp r4, r6
003f5f24  0b 00 00 0a                                      beq #0x3f5f58
003f5f28  00 10 94 e5                                      ldr r1, [r4]
003f5f2c  d8 32 91 e5                                      ldr r3, [r1, #0x2d8]
003f5f30  00 00 53 e3                                      cmp r3, #0
003f5f34  04 00 00 0a                                      beq #0x3f5f4c
003f5f38  08 20 93 e5                                      ldr r2, [r3, #8]
003f5f3c  00 00 52 e3                                      cmp r2, #0
003f5f40  01 00 00 0a                                      beq #0x3f5f4c
003f5f44  07 00 a0 e1                                      mov r0, r7
003f5f48  9f ff ff eb                                      bl #0x3f5dcc
003f5f4c  04 40 84 e2                                      add r4, r4, #4
003f5f50  04 00 56 e1                                      cmp r6, r4
003f5f54  f3 ff ff 1a                                      bne #0x3f5f28
003f5f58  08 30 95 e7                                      ldr r3, [r5, r8]
003f5f5c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003f5f60  00 30 93 e5                                      ldr r3, [r3]
003f5f64  03 00 52 e1                                      cmp r2, r3
003f5f68  01 00 00 1a                                      bne #0x3f5f74
003f5f6c  20 d0 8d e2                                      add sp, sp, #0x20
003f5f70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f5f74  e5 60 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f5f78  e0 eb 59 00 ac 40 00 00 84 08 00 00 18 07 4d 00  .byte 0xe0, 0xeb, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x18, 0x07, 0x4d, 0x00

; FUNCTION 0x003f6990, declared_size=6472, range_size=6472, mode=arm
; class-group: Level
; alias: _ZN5Level12_LoadProcessEv
; demangled: Level::_LoadProcess()
; decoder-mode: arm
003f6990  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f6994  84 5f 9f e5                                      ldr r5, [pc, #0xf84]
003f6998  84 3f 9f e5                                      ldr r3, [pc, #0xf84]
003f699c  84 6f 9f e5                                      ldr r6, [pc, #0xf84]
003f69a0  05 50 8f e0                                      add r5, pc, r5
003f69a4  03 20 95 e7                                      ldr r2, [r5, r3]
003f69a8  06 30 95 e7                                      ldr r3, [r5, r6]
003f69ac  4b de 4d e2                                      sub sp, sp, #0x4b0
003f69b0  00 20 d2 e5                                      ldrb r2, [r2]
003f69b4  00 30 93 e5                                      ldr r3, [r3]
003f69b8  0c d0 4d e2                                      sub sp, sp, #0xc
003f69bc  00 00 52 e3                                      cmp r2, #0
003f69c0  00 40 a0 e1                                      mov r4, r0
003f69c4  b4 34 8d e5                                      str r3, [sp, #0x4b4]
003f69c8  47 00 00 1a                                      bne #0x3f6aec
003f69cc  58 3f 9f e5                                      ldr r3, [pc, #0xf58]
003f69d0  49 7e 8d e2                                      add r7, sp, #0x490
003f69d4  0c 70 87 e2                                      add r7, r7, #0xc
003f69d8  03 80 95 e7                                      ldr r8, [r5, r3]
003f69dc  08 00 a0 e1                                      mov r0, r8
003f69e0  a8 03 fd eb                                      bl #0x337888
003f69e4  44 1f 9f e5                                      ldr r1, [pc, #0xf44]
003f69e8  4e 2f 8d e2                                      add r2, sp, #0x138
003f69ec  07 00 a0 e1                                      mov r0, r7
003f69f0  01 10 8f e0                                      add r1, pc, r1
003f69f4  bc 75 fc eb                                      bl #0x3140ec
003f69f8  08 00 a0 e1                                      mov r0, r8
003f69fc  07 10 a0 e1                                      mov r1, r7
003f6a00  20 04 fd eb                                      bl #0x337a88
003f6a04  00 80 a0 e1                                      mov r8, r0
003f6a08  07 00 a0 e1                                      mov r0, r7
003f6a0c  e6 73 fc eb                                      bl #0x3139ac
003f6a10  00 00 58 e3                                      cmp r8, #0
003f6a14  2d 00 00 1a                                      bne #0x3f6ad0
003f6a18  14 0f 9f e5                                      ldr r0, [pc, #0xf14]
003f6a1c  30 11 94 e5                                      ldr r1, [r4, #0x130]
003f6a20  00 00 8f e0                                      add r0, pc, r0
003f6a24  ba b5 fc eb                                      bl #0x324114
003f6a28  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f6a2c  25 00 53 e3                                      cmp r3, #0x25
003f6a30  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003f6a34  c0 02 00 ea                                      b #0x3f753c
003f6a38  a2 02 00 ea                                      b #0x3f74c8
003f6a3c  be 02 00 ea                                      b #0x3f753c
003f6a40  85 02 00 ea                                      b #0x3f745c
003f6a44  72 02 00 ea                                      b #0x3f7414
003f6a48  5c 02 00 ea                                      b #0x3f73c0
003f6a4c  3e 02 00 ea                                      b #0x3f734c
003f6a50  1e 02 00 ea                                      b #0x3f72d0
003f6a54  ea 01 00 ea                                      b #0x3f7204
003f6a58  c5 01 00 ea                                      b #0x3f7174
003f6a5c  b1 01 00 ea                                      b #0x3f7128
003f6a60  99 01 00 ea                                      b #0x3f70cc
003f6a64  84 01 00 ea                                      b #0x3f707c
003f6a68  05 04 00 ea                                      b #0x3f7a84
003f6a6c  f0 03 00 ea                                      b #0x3f7a34
003f6a70  82 03 00 ea                                      b #0x3f7880
003f6a74  6b 03 00 ea                                      b #0x3f7828
003f6a78  63 03 00 ea                                      b #0x3f780c
003f6a7c  4f 03 00 ea                                      b #0x3f77c0
003f6a80  10 03 00 ea                                      b #0x3f76c8
003f6a84  08 03 00 ea                                      b #0x3f76ac
003f6a88  3d 04 00 ea                                      b #0x3f7b84
003f6a8c  29 04 00 ea                                      b #0x3f7b38
003f6a90  15 04 00 ea                                      b #0x3f7aec
003f6a94  01 04 00 ea                                      b #0x3f7aa0
003f6a98  d5 04 00 ea                                      b #0x3f7df4
003f6a9c  c0 04 00 ea                                      b #0x3f7da4
003f6aa0  42 01 00 ea                                      b #0x3f6fb0
003f6aa4  f9 00 00 ea                                      b #0x3f6e90
003f6aa8  f8 00 00 ea                                      b #0x3f6e90
003f6aac  62 04 00 ea                                      b #0x3f7c3c
003f6ab0  4c 04 00 ea                                      b #0x3f7be8
003f6ab4  45 04 00 ea                                      b #0x3f7bd0
003f6ab8  15 03 00 ea                                      b #0x3f7714
003f6abc  db 02 00 ea                                      b #0x3f7630
003f6ac0  1b 00 00 ea                                      b #0x3f6b34
003f6ac4  9c 02 00 ea                                      b #0x3f753c
003f6ac8  a2 02 00 ea                                      b #0x3f7558
003f6acc  71 04 00 ea                                      b #0x3f7c98
003f6ad0  30 01 94 e5                                      ldr r0, [r4, #0x130]
003f6ad4  ac e1 ff eb                                      bl #0x3ef18c
003f6ad8  00 70 a0 e1                                      mov r7, r0
003f6adc  df ce 00 eb                                      bl #0x42a660
003f6ae0  07 10 a0 e1                                      mov r1, r7
003f6ae4  68 cd 00 eb                                      bl #0x42a08c
003f6ae8  ca ff ff ea                                      b #0x3f6a18
003f6aec  24 7f 9f e5                                      ldr r7, [pc, #0xf24]
003f6af0  07 70 95 e7                                      ldr r7, [r5, r7]
003f6af4  07 00 a0 e1                                      mov r0, r7
003f6af8  a5 a2 fc eb                                      bl #0x31f594
003f6afc  00 00 50 e3                                      cmp r0, #0
003f6b00  b1 ff ff 0a                                      beq #0x3f69cc
003f6b04  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f6b08  00 10 a0 e3                                      mov r1, #0
003f6b0c  01 20 a0 e3                                      mov r2, #1
003f6b10  58 de fd eb                                      bl #0x36e478
003f6b14  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f6b18  00 00 50 e3                                      cmp r0, #0
003f6b1c  aa ff ff 0a                                      beq #0x3f69cc
003f6b20  d2 13 ff eb                                      bl #0x3bba70
003f6b24  73 fe 00 eb                                      bl #0x4364f8
003f6b28  01 30 a0 e3                                      mov r3, #1
003f6b2c  2c 31 c0 e5                                      strb r3, [r0, #0x12c]
003f6b30  a5 ff ff ea                                      b #0x3f69cc
003f6b34  01 e7 fc eb                                      bl #0x330740
003f6b38  f8 1d 9f e5                                      ldr r1, [pc, #0xdf8]
003f6b3c  67 8f 8d e2                                      add r8, sp, #0x19c
003f6b40  bc 20 8d e2                                      add r2, sp, #0xbc
003f6b44  00 a0 a0 e1                                      mov sl, r0
003f6b48  01 10 8f e0                                      add r1, pc, r1
003f6b4c  08 00 a0 e1                                      mov r0, r8
003f6b50  c0 7e 9f e5                                      ldr r7, [pc, #0xec0]
003f6b54  64 75 fc eb                                      bl #0x3140ec
003f6b58  08 10 a0 e1                                      mov r1, r8
003f6b5c  0a 00 a0 e1                                      mov r0, sl
003f6b60  c8 03 fd eb                                      bl #0x337a88
003f6b64  08 00 a0 e1                                      mov r0, r8
003f6b68  8f 73 fc eb                                      bl #0x3139ac
003f6b6c  07 30 95 e7                                      ldr r3, [r5, r7]
003f6b70  00 10 a0 e3                                      mov r1, #0
003f6b74  01 20 a0 e3                                      mov r2, #1
003f6b78  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f6b7c  28 b1 94 e5                                      ldr fp, [r4, #0x128]
003f6b80  3c de fd eb                                      bl #0x36e478
003f6b84  60 86 90 e5                                      ldr r8, [r0, #0x660]
003f6b88  00 00 58 e3                                      cmp r8, #0
003f6b8c  07 00 00 0a                                      beq #0x3f6bb0
003f6b90  00 20 e0 e3                                      mvn r2, #0
003f6b94  08 00 a0 e1                                      mov r0, r8
003f6b98  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003f6b9c  2c 13 ff eb                                      bl #0x3bb854
003f6ba0  0b 00 a0 e1                                      mov r0, fp
003f6ba4  08 10 a0 e1                                      mov r1, r8
003f6ba8  00 20 a0 e3                                      mov r2, #0
003f6bac  84 6b 00 eb                                      bl #0x4119c4
003f6bb0  f7 1a 10 eb                                      bl #0x7fd794
003f6bb4  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f6bb8  00 00 53 e3                                      cmp r3, #0
003f6bbc  e4 04 00 1a                                      bne #0x3f7f54
003f6bc0  0b 00 a0 e1                                      mov r0, fp
003f6bc4  24 62 00 eb                                      bl #0x40f45c
003f6bc8  07 a0 95 e7                                      ldr sl, [r5, r7]
003f6bcc  00 20 a0 e3                                      mov r2, #0
003f6bd0  00 10 a0 e3                                      mov r1, #0
003f6bd4  10 30 9a e5                                      ldr r3, [sl, #0x10]
003f6bd8  02 80 a0 e1                                      mov r8, r2
003f6bdc  01 90 a0 e3                                      mov sb, #1
003f6be0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f6be4  03 00 a0 e1                                      mov r0, r3
003f6be8  00 30 93 e5                                      ldr r3, [r3]
003f6bec  0f e0 a0 e1                                      mov lr, pc
003f6bf0  60 f0 93 e5                                      ldr pc, [r3, #0x60]
003f6bf4  0b 00 a0 e1                                      mov r0, fp
003f6bf8  00 30 9b e5                                      ldr r3, [fp]
003f6bfc  0f e0 a0 e1                                      mov lr, pc
003f6c00  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003f6c04  08 00 00 ea                                      b #0x3f6c2c
003f6c08  08 10 a0 e1                                      mov r1, r8
003f6c0c  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f6c10  01 20 a0 e3                                      mov r2, #1
003f6c14  17 de fd eb                                      bl #0x36e478
003f6c18  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f6c1c  01 80 88 e2                                      add r8, r8, #1
003f6c20  00 00 53 e3                                      cmp r3, #0
003f6c24  78 33 93 15                                      ldrne r3, [r3, #0x378]
003f6c28  08 90 c3 15                                      strbne sb, [r3, #8]
003f6c2c  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f6c30  01 10 a0 e3                                      mov r1, #1
003f6c34  a5 df fd eb                                      bl #0x36ead0
003f6c38  00 00 58 e1                                      cmp r8, r0
003f6c3c  f1 ff ff ba                                      blt #0x3f6c08
003f6c40  28 31 94 e5                                      ldr r3, [r4, #0x128]
003f6c44  88 00 8d e2                                      add r0, sp, #0x88
003f6c48  0c 00 40 e2                                      sub r0, r0, #0xc
003f6c4c  08 10 93 e5                                      ldr r1, [r3, #8]
003f6c50  4a 81 06 eb                                      bl #0x597180
003f6c54  28 31 94 e5                                      ldr r3, [r4, #0x128]
003f6c58  61 8f 8d e2                                      add r8, sp, #0x184
003f6c5c  08 00 93 e5                                      ldr r0, [r3, #8]
003f6c60  8a 81 06 eb                                      bl #0x597290
003f6c64  00 10 a0 e1                                      mov r1, r0
003f6c68  78 00 8d e2                                      add r0, sp, #0x78
003f6c6c  08 00 40 e2                                      sub r0, r0, #8
003f6c70  42 81 06 eb                                      bl #0x597180
003f6c74  74 10 9d e5                                      ldr r1, [sp, #0x74]
003f6c78  80 00 9d e5                                      ldr r0, [sp, #0x80]
003f6c7c  ca 5d fc eb                                      bl #0x30e3ac
003f6c80  78 10 9d e5                                      ldr r1, [sp, #0x78]
003f6c84  00 b0 a0 e1                                      mov fp, r0
003f6c88  84 00 9d e5                                      ldr r0, [sp, #0x84]
003f6c8c  c6 5d fc eb                                      bl #0x30e3ac
003f6c90  70 10 9d e5                                      ldr r1, [sp, #0x70]
003f6c94  00 90 a0 e1                                      mov sb, r0
003f6c98  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
003f6c9c  c2 5d fc eb                                      bl #0x30e3ac
003f6ca0  a0 b1 84 e5                                      str fp, [r4, #0x1a0]
003f6ca4  9c 01 84 e5                                      str r0, [r4, #0x19c]
003f6ca8  a4 91 84 e5                                      str sb, [r4, #0x1a4]
003f6cac  04 00 a0 e1                                      mov r0, r4
003f6cb0  58 90 9a e5                                      ldr sb, [sl, #0x58]
003f6cb4  fb e1 ff eb                                      bl #0x3ef4a8
003f6cb8  00 20 a0 e1                                      mov r2, r0
003f6cbc  e4 31 92 e5                                      ldr r3, [r2, #0x1e4]
003f6cc0  e8 21 92 e5                                      ldr r2, [r2, #0x1e8]
003f6cc4  e0 01 90 e5                                      ldr r0, [r0, #0x1e0]
003f6cc8  10 30 8d e5                                      str r3, [sp, #0x10]
003f6ccc  14 20 8d e5                                      str r2, [sp, #0x14]
003f6cd0  72 1d 13 eb                                      bl #0x8be2a0
003f6cd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
003f6cd8  70 b0 ef e6                                      uxtb fp, r0
003f6cdc  03 00 a0 e1                                      mov r0, r3
003f6ce0  6e 1d 13 eb                                      bl #0x8be2a0
003f6ce4  14 20 9d e5                                      ldr r2, [sp, #0x14]
003f6ce8  70 30 ef e6                                      uxtb r3, r0
003f6cec  10 30 8d e5                                      str r3, [sp, #0x10]
003f6cf0  02 00 a0 e1                                      mov r0, r2
003f6cf4  69 1d 13 eb                                      bl #0x8be2a0
003f6cf8  00 20 e0 e3                                      mvn r2, #0
003f6cfc  f7 20 c9 e5                                      strb r2, [sb, #0xf7]
003f6d00  f6 00 c9 e5                                      strb r0, [sb, #0xf6]
003f6d04  10 30 9d e5                                      ldr r3, [sp, #0x10]
003f6d08  04 00 a0 e1                                      mov r0, r4
003f6d0c  f4 b0 c9 e5                                      strb fp, [sb, #0xf4]
003f6d10  f5 30 c9 e5                                      strb r3, [sb, #0xf5]
003f6d14  e3 e1 ff eb                                      bl #0x3ef4a8
003f6d18  d8 01 90 e5                                      ldr r0, [r0, #0x1d8]
003f6d1c  10 5f fc eb                                      bl #0x30e964
003f6d20  00 b0 a0 e1                                      mov fp, r0
003f6d24  04 00 a0 e1                                      mov r0, r4
003f6d28  de e1 ff eb                                      bl #0x3ef4a8
003f6d2c  dc 01 90 e5                                      ldr r0, [r0, #0x1dc]
003f6d30  0b 5f fc eb                                      bl #0x30e964
003f6d34  10 b1 89 e5                                      str fp, [sb, #0x110]
003f6d38  14 01 89 e5                                      str r0, [sb, #0x114]
003f6d3c  04 00 a0 e1                                      mov r0, r4
003f6d40  d8 e1 ff eb                                      bl #0x3ef4a8
003f6d44  f8 11 90 e5                                      ldr r1, [r0, #0x1f8]
003f6d48  fc 21 90 e5                                      ldr r2, [r0, #0x1fc]
003f6d4c  00 32 90 e5                                      ldr r3, [r0, #0x200]
003f6d50  1c 11 89 e5                                      str r1, [sb, #0x11c]
003f6d54  20 21 89 e5                                      str r2, [sb, #0x120]
003f6d58  24 31 89 e5                                      str r3, [sb, #0x124]
003f6d5c  10 30 9a e5                                      ldr r3, [sl, #0x10]
003f6d60  04 00 a0 e1                                      mov r0, r4
003f6d64  1c 90 93 e5                                      ldr sb, [r3, #0x1c]
003f6d68  ce e1 ff eb                                      bl #0x3ef4a8
003f6d6c  f8 11 90 e5                                      ldr r1, [r0, #0x1f8]
003f6d70  fc 21 90 e5                                      ldr r2, [r0, #0x1fc]
003f6d74  00 32 90 e5                                      ldr r3, [r0, #0x200]
003f6d78  58 14 89 e5                                      str r1, [sb, #0x458]
003f6d7c  5c 24 89 e5                                      str r2, [sb, #0x45c]
003f6d80  60 34 89 e5                                      str r3, [sb, #0x460]
003f6d84  10 30 9a e5                                      ldr r3, [sl, #0x10]
003f6d88  1c b0 93 e5                                      ldr fp, [r3, #0x1c]
003f6d8c  6b e6 fc eb                                      bl #0x330740
003f6d90  a4 1b 9f e5                                      ldr r1, [pc, #0xba4]
003f6d94  b8 20 8d e2                                      add r2, sp, #0xb8
003f6d98  00 90 a0 e1                                      mov sb, r0
003f6d9c  01 10 8f e0                                      add r1, pc, r1
003f6da0  08 00 a0 e1                                      mov r0, r8
003f6da4  d0 74 fc eb                                      bl #0x3140ec
003f6da8  08 10 a0 e1                                      mov r1, r8
003f6dac  09 00 a0 e1                                      mov r0, sb
003f6db0  34 03 fd eb                                      bl #0x337a88
003f6db4  01 00 20 e2                                      eor r0, r0, #1
003f6db8  30 04 cb e5                                      strb r0, [fp, #0x430]
003f6dbc  08 00 a0 e1                                      mov r0, r8
003f6dc0  f9 72 fc eb                                      bl #0x3139ac
003f6dc4  38 00 9a e5                                      ldr r0, [sl, #0x38]
003f6dc8  e1 3a fd eb                                      bl #0x345954
003f6dcc  04 00 a0 e1                                      mov r0, r4
003f6dd0  00 10 a0 e3                                      mov r1, #0
003f6dd4  4a ed ff eb                                      bl #0x3f2304
003f6dd8  04 00 a0 e1                                      mov r0, r4
003f6ddc  01 10 a0 e3                                      mov r1, #1
003f6de0  04 20 a0 e3                                      mov r2, #4
003f6de4  25 e1 ff eb                                      bl #0x3ef280
003f6de8  04 00 a0 e1                                      mov r0, r4
003f6dec  00 10 a0 e3                                      mov r1, #0
003f6df0  01 20 a0 e3                                      mov r2, #1
003f6df4  0e e1 ff eb                                      bl #0x3ef234
003f6df8  65 1a 10 eb                                      bl #0x7fd794
003f6dfc  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f6e00  00 00 53 e3                                      cmp r3, #0
003f6e04  49 04 00 1a                                      bne #0x3f7f30
003f6e08  ec 00 94 e5                                      ldr r0, [r4, #0xec]
003f6e0c  00 00 50 e3                                      cmp r0, #0
003f6e10  3a 04 00 0a                                      beq #0x3f7f00
003f6e14  14 11 94 e5                                      ldr r1, [r4, #0x114]
003f6e18  40 20 94 e5                                      ldr r2, [r4, #0x40]
003f6e1c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003f6e20  18 b1 01 eb                                      bl #0x463288
003f6e24  00 00 50 e3                                      cmp r0, #0
003f6e28  34 04 00 1a                                      bne #0x3f7f00
003f6e2c  04 00 a0 e1                                      mov r0, r4
003f6e30  f7 e1 ff eb                                      bl #0x3ef614
003f6e34  07 30 95 e7                                      ldr r3, [r5, r7]
003f6e38  00 80 a0 e1                                      mov r8, r0
003f6e3c  00 10 a0 e3                                      mov r1, #0
003f6e40  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f6e44  01 20 a0 e3                                      mov r2, #1
003f6e48  8a dd fd eb                                      bl #0x36e478
003f6e4c  00 00 58 e3                                      cmp r8, #0
003f6e50  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f6e54  16 8e 88 12                                      addne r8, r8, #0x160
003f6e58  e2 04 00 0a                                      beq #0x3f81e8
003f6e5c  00 30 98 e5                                      ldr r3, [r8]
003f6e60  68 10 8d e2                                      add r1, sp, #0x68
003f6e64  04 10 41 e2                                      sub r1, r1, #4
003f6e68  64 30 8d e5                                      str r3, [sp, #0x64]
003f6e6c  04 30 98 e5                                      ldr r3, [r8, #4]
003f6e70  f5 20 d4 e5                                      ldrb r2, [r4, #0xf5]
003f6e74  04 00 a0 e1                                      mov r0, r4
003f6e78  68 30 8d e5                                      str r3, [sp, #0x68]
003f6e7c  08 30 98 e5                                      ldr r3, [r8, #8]
003f6e80  6c 30 8d e5                                      str r3, [sp, #0x6c]
003f6e84  8a e5 ff eb                                      bl #0x3f04b4
003f6e88  00 30 a0 e3                                      mov r3, #0
003f6e8c  f5 30 c4 e5                                      strb r3, [r4, #0xf5]
003f6e90  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f6e94  01 30 83 e2                                      add r3, r3, #1
003f6e98  30 31 84 e5                                      str r3, [r4, #0x130]
003f6e9c  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f6ea0  26 00 53 e3                                      cmp r3, #0x26
003f6ea4  2e 00 00 0a                                      beq #0x3f6f64
003f6ea8  38 21 94 e5                                      ldr r2, [r4, #0x138]
003f6eac  34 31 94 e5                                      ldr r3, [r4, #0x134]
003f6eb0  03 00 52 e1                                      cmp r2, r3
003f6eb4  38 31 94 b5                                      ldrlt r3, [r4, #0x138]
003f6eb8  34 31 94 a5                                      ldrge r3, [r4, #0x134]
003f6ebc  34 31 84 e5                                      str r3, [r4, #0x134]
003f6ec0  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f6ec4  24 00 53 e3                                      cmp r3, #0x24
003f6ec8  23 00 00 0a                                      beq #0x3f6f5c
003f6ecc  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f6ed0  64 10 a0 e3                                      mov r1, #0x64
003f6ed4  f3 2a 01 e3                                      movw r2, #0x1af3
003f6ed8  91 03 01 e0                                      mul r1, r1, r3
003f6edc  ca 2b 46 e3                                      movt r2, #0x6bca
003f6ee0  92 01 c3 e0                                      smull r0, r3, r2, r1
003f6ee4  c1 1f a0 e1                                      asr r1, r1, #0x1f
003f6ee8  43 32 61 e0                                      rsb r3, r1, r3, asr #4
003f6eec  63 00 53 e3                                      cmp r3, #0x63
003f6ef0  19 00 00 ca                                      bgt #0x3f6f5c
003f6ef4  30 30 84 e5                                      str r3, [r4, #0x30]
003f6ef8  e3 d6 00 eb                                      bl #0x42ca8c
003f6efc  3c 1a 9f e5                                      ldr r1, [pc, #0xa3c]
003f6f00  01 10 8f e0                                      add r1, pc, r1
003f6f04  b9 d8 00 eb                                      bl #0x42d1f0
003f6f08  00 40 50 e2                                      subs r4, r0, #0
003f6f0c  0a 00 00 0a                                      beq #0x3f6f3c
003f6f10  48 00 84 e2                                      add r0, r4, #0x48
003f6f14  04 70 94 e5                                      ldr r7, [r4, #4]
003f6f18  89 3c fe eb                                      bl #0x386144
003f6f1c  20 2a 9f e5                                      ldr r2, [pc, #0xa20]
003f6f20  00 c0 a0 e3                                      mov ip, #0
003f6f24  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
003f6f28  07 00 a0 e1                                      mov r0, r7
003f6f2c  02 20 8f e0                                      add r2, pc, r2
003f6f30  0c 30 a0 e1                                      mov r3, ip
003f6f34  00 c0 8d e5                                      str ip, [sp]
003f6f38  b3 d3 0e eb                                      bl #0x7abe0c
003f6f3c  06 30 95 e7                                      ldr r3, [r5, r6]
003f6f40  b4 24 9d e5                                      ldr r2, [sp, #0x4b4]
003f6f44  00 30 93 e5                                      ldr r3, [r3]
003f6f48  03 00 52 e1                                      cmp r2, r3
003f6f4c  e0 04 00 1a                                      bne #0x3f82d4
003f6f50  bc d0 8d e2                                      add sp, sp, #0xbc
003f6f54  01 db 8d e2                                      add sp, sp, #0x400
003f6f58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f6f5c  64 30 a0 e3                                      mov r3, #0x64
003f6f60  e3 ff ff ea                                      b #0x3f6ef4
003f6f64  64 30 a0 e3                                      mov r3, #0x64
003f6f68  30 30 84 e5                                      str r3, [r4, #0x30]
003f6f6c  d4 39 9f e5                                      ldr r3, [pc, #0x9d4]
003f6f70  03 30 95 e7                                      ldr r3, [r5, r3]
003f6f74  00 30 d3 e5                                      ldrb r3, [r3]
003f6f78  00 00 53 e3                                      cmp r3, #0
003f6f7c  08 00 00 1a                                      bne #0x3f6fa4
003f6f80  c1 d6 00 eb                                      bl #0x42ca8c
003f6f84  c0 19 9f e5                                      ldr r1, [pc, #0x9c0]
003f6f88  00 40 a0 e1                                      mov r4, r0
003f6f8c  01 10 8f e0                                      add r1, pc, r1
003f6f90  96 d8 00 eb                                      bl #0x42d1f0
003f6f94  00 10 a0 e1                                      mov r1, r0
003f6f98  04 00 a0 e1                                      mov r0, r4
003f6f9c  11 ea 00 eb                                      bl #0x4317e8
003f6fa0  d4 ff ff ea                                      b #0x3f6ef8
003f6fa4  01 00 a0 e3                                      mov r0, #1
003f6fa8  c7 93 12 eb                                      bl #0x89becc
003f6fac  f3 ff ff ea                                      b #0x3f6f80
003f6fb0  b5 d6 00 eb                                      bl #0x42ca8c
003f6fb4  03 10 a0 e3                                      mov r1, #3
003f6fb8  b9 eb 00 eb                                      bl #0x431ea4
003f6fbc  8c 39 9f e5                                      ldr r3, [pc, #0x98c]
003f6fc0  00 10 a0 e3                                      mov r1, #0
003f6fc4  01 20 a0 e1                                      mov r2, r1
003f6fc8  03 70 95 e7                                      ldr r7, [r5, r3]
003f6fcc  01 30 a0 e1                                      mov r3, r1
003f6fd0  07 00 a0 e1                                      mov r0, r7
003f6fd4  1a c3 00 eb                                      bl #0x427c44
003f6fd8  74 39 9f e5                                      ldr r3, [pc, #0x974]
003f6fdc  00 10 a0 e3                                      mov r1, #0
003f6fe0  01 20 a0 e1                                      mov r2, r1
003f6fe4  03 00 95 e7                                      ldr r0, [r5, r3]
003f6fe8  01 30 a0 e1                                      mov r3, r1
003f6fec  14 c3 00 eb                                      bl #0x427c44
003f6ff0  00 10 a0 e3                                      mov r1, #0
003f6ff4  01 20 a0 e1                                      mov r2, r1
003f6ff8  01 30 a0 e1                                      mov r3, r1
003f6ffc  07 00 a0 e1                                      mov r0, r7
003f7000  0f c3 00 eb                                      bl #0x427c44
003f7004  4c 39 9f e5                                      ldr r3, [pc, #0x94c]
003f7008  00 10 a0 e3                                      mov r1, #0
003f700c  01 20 a0 e1                                      mov r2, r1
003f7010  03 00 95 e7                                      ldr r0, [r5, r3]
003f7014  01 30 a0 e1                                      mov r3, r1
003f7018  09 c3 00 eb                                      bl #0x427c44
003f701c  38 39 9f e5                                      ldr r3, [pc, #0x938]
003f7020  00 10 a0 e3                                      mov r1, #0
003f7024  01 20 a0 e1                                      mov r2, r1
003f7028  03 00 95 e7                                      ldr r0, [r5, r3]
003f702c  01 30 a0 e1                                      mov r3, r1
003f7030  03 c3 00 eb                                      bl #0x427c44
003f7034  dc 39 9f e5                                      ldr r3, [pc, #0x9dc]
003f7038  03 30 95 e7                                      ldr r3, [r5, r3]
003f703c  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f7040  9d e0 fd eb                                      bl #0x36f2bc
003f7044  90 d6 00 eb                                      bl #0x42ca8c
003f7048  cf d6 00 eb                                      bl #0x42cb8c
003f704c  0c 19 9f e5                                      ldr r1, [pc, #0x90c]
003f7050  0c 29 9f e5                                      ldr r2, [pc, #0x90c]
003f7054  00 c0 a0 e3                                      mov ip, #0
003f7058  0c 30 a0 e1                                      mov r3, ip
003f705c  01 10 8f e0                                      add r1, pc, r1
003f7060  02 20 8f e0                                      add r2, pc, r2
003f7064  00 c0 8d e5                                      str ip, [sp]
003f7068  de d9 0e eb                                      bl #0x7ad7e8
003f706c  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7070  01 30 83 e2                                      add r3, r3, #1
003f7074  30 31 84 e5                                      str r3, [r4, #0x130]
003f7078  87 ff ff ea                                      b #0x3f6e9c
003f707c  af e5 fc eb                                      bl #0x330740
003f7080  e0 18 9f e5                                      ldr r1, [pc, #0x8e0]
003f7084  c7 7f 8d e2                                      add r7, sp, #0x31c
003f7088  fc 20 8d e2                                      add r2, sp, #0xfc
003f708c  00 80 a0 e1                                      mov r8, r0
003f7090  01 10 8f e0                                      add r1, pc, r1
003f7094  07 00 a0 e1                                      mov r0, r7
003f7098  13 74 fc eb                                      bl #0x3140ec
003f709c  07 10 a0 e1                                      mov r1, r7
003f70a0  08 00 a0 e1                                      mov r0, r8
003f70a4  77 02 fd eb                                      bl #0x337a88
003f70a8  07 00 a0 e1                                      mov r0, r7
003f70ac  3e 72 fc eb                                      bl #0x3139ac
003f70b0  78 39 9f e5                                      ldr r3, [pc, #0x978]
003f70b4  03 00 95 e7                                      ldr r0, [r5, r3]
003f70b8  83 ad 04 eb                                      bl #0x5226cc
003f70bc  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f70c0  01 30 83 e2                                      add r3, r3, #1
003f70c4  30 31 84 e5                                      str r3, [r4, #0x130]
003f70c8  73 ff ff ea                                      b #0x3f6e9c
003f70cc  9b e5 fc eb                                      bl #0x330740
003f70d0  94 18 9f e5                                      ldr r1, [pc, #0x894]
003f70d4  cd 8f 8d e2                                      add r8, sp, #0x334
003f70d8  01 2c 8d e2                                      add r2, sp, #0x100
003f70dc  00 a0 a0 e1                                      mov sl, r0
003f70e0  01 10 8f e0                                      add r1, pc, r1
003f70e4  08 00 a0 e1                                      mov r0, r8
003f70e8  28 79 9f e5                                      ldr r7, [pc, #0x928]
003f70ec  fe 73 fc eb                                      bl #0x3140ec
003f70f0  08 10 a0 e1                                      mov r1, r8
003f70f4  0a 00 a0 e1                                      mov r0, sl
003f70f8  62 02 fd eb                                      bl #0x337a88
003f70fc  08 00 a0 e1                                      mov r0, r8
003f7100  29 72 fc eb                                      bl #0x3139ac
003f7104  07 70 95 e7                                      ldr r7, [r5, r7]
003f7108  38 30 97 e5                                      ldr r3, [r7, #0x38]
003f710c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f7110  38 31 84 e5                                      str r3, [r4, #0x138]
003f7114  38 00 97 e5                                      ldr r0, [r7, #0x38]
003f7118  03 39 fd eb                                      bl #0x34552c
003f711c  00 00 50 e3                                      cmp r0, #0
003f7120  fb ff ff 0a                                      beq #0x3f7114
003f7124  59 ff ff ea                                      b #0x3f6e90
003f7128  84 e5 fc eb                                      bl #0x330740
003f712c  3c 18 9f e5                                      ldr r1, [pc, #0x83c]
003f7130  d3 7f 8d e2                                      add r7, sp, #0x34c
003f7134  41 2f 8d e2                                      add r2, sp, #0x104
003f7138  00 80 a0 e1                                      mov r8, r0
003f713c  01 10 8f e0                                      add r1, pc, r1
003f7140  07 00 a0 e1                                      mov r0, r7
003f7144  e8 73 fc eb                                      bl #0x3140ec
003f7148  07 10 a0 e1                                      mov r1, r7
003f714c  08 00 a0 e1                                      mov r0, r8
003f7150  4c 02 fd eb                                      bl #0x337a88
003f7154  07 00 a0 e1                                      mov r0, r7
003f7158  13 72 fc eb                                      bl #0x3139ac
003f715c  04 00 a0 e1                                      mov r0, r4
003f7160  0d f5 ff eb                                      bl #0x3f459c
003f7164  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7168  01 30 83 e2                                      add r3, r3, #1
003f716c  30 31 84 e5                                      str r3, [r4, #0x130]
003f7170  49 ff ff ea                                      b #0x3f6e9c
003f7174  71 e5 fc eb                                      bl #0x330740
003f7178  f4 17 9f e5                                      ldr r1, [pc, #0x7f4]
003f717c  f1 7f 8d e2                                      add r7, sp, #0x3c4
003f7180  46 2f 8d e2                                      add r2, sp, #0x118
003f7184  00 80 a0 e1                                      mov r8, r0
003f7188  01 10 8f e0                                      add r1, pc, r1
003f718c  07 00 a0 e1                                      mov r0, r7
003f7190  d5 73 fc eb                                      bl #0x3140ec
003f7194  07 10 a0 e1                                      mov r1, r7
003f7198  08 00 a0 e1                                      mov r0, r8
003f719c  39 02 fd eb                                      bl #0x337a88
003f71a0  07 00 a0 e1                                      mov r0, r7
003f71a4  00 72 fc eb                                      bl #0x3139ac
003f71a8  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f71ac  00 00 53 e3                                      cmp r3, #0
003f71b0  ae 03 00 0a                                      beq #0x3f8070
003f71b4  04 12 93 e5                                      ldr r1, [r3, #0x204]
003f71b8  08 22 93 e5                                      ldr r2, [r3, #0x208]
003f71bc  02 00 51 e1                                      cmp r1, r2
003f71c0  09 00 00 0a                                      beq #0x3f71ec
003f71c4  10 02 93 e5                                      ldr r0, [r3, #0x210]
003f71c8  81 7f 83 e2                                      add r7, r3, #0x204
003f71cc  44 38 9f e5                                      ldr r3, [pc, #0x844]
003f71d0  03 30 95 e7                                      ldr r3, [r5, r3]
003f71d4  38 80 93 e5                                      ldr r8, [r3, #0x38]
003f71d8  bb 5c fc eb                                      bl #0x30e4cc
003f71dc  07 10 a0 e1                                      mov r1, r7
003f71e0  00 20 a0 e1                                      mov r2, r0
003f71e4  08 00 a0 e1                                      mov r0, r8
003f71e8  c4 3f fd eb                                      bl #0x347100
003f71ec  04 00 a0 e1                                      mov r0, r4
003f71f0  18 f2 ff eb                                      bl #0x3f3a58
003f71f4  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f71f8  01 30 83 e2                                      add r3, r3, #1
003f71fc  30 31 84 e5                                      str r3, [r4, #0x130]
003f7200  25 ff ff ea                                      b #0x3f6e9c
003f7204  6c 27 9f e5                                      ldr r2, [pc, #0x76c]
003f7208  dc 30 94 e5                                      ldr r3, [r4, #0xdc]
003f720c  02 70 95 e7                                      ldr r7, [r5, r2]
003f7210  64 27 9f e5                                      ldr r2, [pc, #0x764]
003f7214  00 30 87 e5                                      str r3, [r7]
003f7218  02 80 95 e7                                      ldr r8, [r5, r2]
003f721c  e0 30 94 e5                                      ldr r3, [r4, #0xe0]
003f7220  00 30 88 e5                                      str r3, [r8]
003f7224  e8 30 d4 e5                                      ldrb r3, [r4, #0xe8]
003f7228  00 00 53 e3                                      cmp r3, #0
003f722c  f8 80 84 02                                      addeq r8, r4, #0xf8
003f7230  51 03 00 1a                                      bne #0x3f7f7c
003f7234  41 e5 fc eb                                      bl #0x330740
003f7238  40 17 9f e5                                      ldr r1, [pc, #0x740]
003f723c  fd 7f 8d e2                                      add r7, sp, #0x3f4
003f7240  00 a0 a0 e1                                      mov sl, r0
003f7244  12 2e 8d e2                                      add r2, sp, #0x120
003f7248  01 10 8f e0                                      add r1, pc, r1
003f724c  07 00 a0 e1                                      mov r0, r7
003f7250  a5 73 fc eb                                      bl #0x3140ec
003f7254  07 10 a0 e1                                      mov r1, r7
003f7258  0a 00 a0 e1                                      mov r0, sl
003f725c  20 a7 9f e5                                      ldr sl, [pc, #0x720]
003f7260  08 02 fd eb                                      bl #0x337a88
003f7264  07 00 a0 e1                                      mov r0, r7
003f7268  cf 71 fc eb                                      bl #0x3139ac
003f726c  7d 3f a0 e3                                      mov r3, #0x1f4
003f7270  38 31 84 e5                                      str r3, [r4, #0x138]
003f7274  0a a0 8f e0                                      add sl, pc, sl
003f7278  f7 7f 8d e2                                      add r7, sp, #0x3dc
003f727c  47 9f 8d e2                                      add sb, sp, #0x11c
003f7280  0a 10 a0 e1                                      mov r1, sl
003f7284  09 20 a0 e1                                      mov r2, sb
003f7288  07 00 a0 e1                                      mov r0, r7
003f728c  96 73 fc eb                                      bl #0x3140ec
003f7290  08 10 a0 e1                                      mov r1, r8
003f7294  07 20 a0 e1                                      mov r2, r7
003f7298  04 00 a0 e1                                      mov r0, r4
003f729c  27 f2 ff eb                                      bl #0x3f3b40
003f72a0  00 b0 a0 e1                                      mov fp, r0
003f72a4  07 00 a0 e1                                      mov r0, r7
003f72a8  bf 71 fc eb                                      bl #0x3139ac
003f72ac  00 00 5b e3                                      cmp fp, #0
003f72b0  f2 ff ff 0a                                      beq #0x3f7280
003f72b4  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f72b8  01 30 83 e2                                      add r3, r3, #1
003f72bc  30 31 84 e5                                      str r3, [r4, #0x130]
003f72c0  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
003f72c4  01 30 83 e2                                      add r3, r3, #1
003f72c8  3c 31 84 e5                                      str r3, [r4, #0x13c]
003f72cc  f2 fe ff ea                                      b #0x3f6e9c
003f72d0  1a e5 fc eb                                      bl #0x330740
003f72d4  ac 16 9f e5                                      ldr r1, [pc, #0x6ac]
003f72d8  d9 7f 8d e2                                      add r7, sp, #0x364
003f72dc  42 2f 8d e2                                      add r2, sp, #0x108
003f72e0  00 80 a0 e1                                      mov r8, r0
003f72e4  01 10 8f e0                                      add r1, pc, r1
003f72e8  07 00 a0 e1                                      mov r0, r7
003f72ec  7e 73 fc eb                                      bl #0x3140ec
003f72f0  07 10 a0 e1                                      mov r1, r7
003f72f4  08 00 a0 e1                                      mov r0, r8
003f72f8  e2 01 fd eb                                      bl #0x337a88
003f72fc  07 00 a0 e1                                      mov r0, r7
003f7300  a9 71 fc eb                                      bl #0x3139ac
003f7304  0c 37 9f e5                                      ldr r3, [pc, #0x70c]
003f7308  03 30 95 e7                                      ldr r3, [r5, r3]
003f730c  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f7310  01 30 a0 e3                                      mov r3, #1
003f7314  c9 36 c0 e5                                      strb r3, [r0, #0x6c9]
003f7318  25 07 fe eb                                      bl #0x378fb4
003f731c  00 10 a0 e3                                      mov r1, #0
003f7320  0c 00 a0 e3                                      mov r0, #0xc
003f7324  91 64 fc eb                                      bl #0x310570
003f7328  00 70 a0 e1                                      mov r7, r0
003f732c  75 0a 02 eb                                      bl #0x479d08
003f7330  94 71 84 e5                                      str r7, [r4, #0x194]
003f7334  07 00 a0 e1                                      mov r0, r7
003f7338  c7 0a 02 eb                                      bl #0x479e5c
003f733c  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7340  01 30 83 e2                                      add r3, r3, #1
003f7344  30 31 84 e5                                      str r3, [r4, #0x130]
003f7348  d3 fe ff ea                                      b #0x3f6e9c
003f734c  fb e4 fc eb                                      bl #0x330740
003f7350  34 16 9f e5                                      ldr r1, [pc, #0x634]
003f7354  42 7e 8d e2                                      add r7, sp, #0x420
003f7358  04 70 87 e2                                      add r7, r7, #4
003f735c  49 2f 8d e2                                      add r2, sp, #0x124
003f7360  00 80 a0 e1                                      mov r8, r0
003f7364  01 10 8f e0                                      add r1, pc, r1
003f7368  07 00 a0 e1                                      mov r0, r7
003f736c  5e 73 fc eb                                      bl #0x3140ec
003f7370  07 10 a0 e1                                      mov r1, r7
003f7374  08 00 a0 e1                                      mov r0, r8
003f7378  c2 01 fd eb                                      bl #0x337a88
003f737c  07 00 a0 e1                                      mov r0, r7
003f7380  89 71 fc eb                                      bl #0x3139ac
003f7384  8c 36 9f e5                                      ldr r3, [pc, #0x68c]
003f7388  11 c3 a0 e3                                      mov ip, #0x44000000
003f738c  31 13 a0 e3                                      mov r1, #0xc4000000
003f7390  03 00 95 e7                                      ldr r0, [r5, r3]
003f7394  fa c8 8c e2                                      add ip, ip, #0xfa0000
003f7398  fa 18 81 e2                                      add r1, r1, #0xfa0000
003f739c  0c 30 a0 e1                                      mov r3, ip
003f73a0  44 00 90 e5                                      ldr r0, [r0, #0x44]
003f73a4  01 20 a0 e1                                      mov r2, r1
003f73a8  00 c0 8d e5                                      str ip, [sp]
003f73ac  25 53 fd eb                                      bl #0x34c048
003f73b0  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f73b4  01 30 83 e2                                      add r3, r3, #1
003f73b8  30 31 84 e5                                      str r3, [r4, #0x130]
003f73bc  b6 fe ff ea                                      b #0x3f6e9c
003f73c0  de e4 fc eb                                      bl #0x330740
003f73c4  c4 15 9f e5                                      ldr r1, [pc, #0x5c4]
003f73c8  43 7e 8d e2                                      add r7, sp, #0x430
003f73cc  0c 70 87 e2                                      add r7, r7, #0xc
003f73d0  4a 2f 8d e2                                      add r2, sp, #0x128
003f73d4  00 80 a0 e1                                      mov r8, r0
003f73d8  01 10 8f e0                                      add r1, pc, r1
003f73dc  07 00 a0 e1                                      mov r0, r7
003f73e0  41 73 fc eb                                      bl #0x3140ec
003f73e4  07 10 a0 e1                                      mov r1, r7
003f73e8  08 00 a0 e1                                      mov r0, r8
003f73ec  a5 01 fd eb                                      bl #0x337a88
003f73f0  07 00 a0 e1                                      mov r0, r7
003f73f4  6c 71 fc eb                                      bl #0x3139ac
003f73f8  e8 35 9f e5                                      ldr r3, [pc, #0x5e8]
003f73fc  03 00 95 e7                                      ldr r0, [r5, r3]
003f7400  f4 7d 02 eb                                      bl #0x496bd8
003f7404  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7408  01 30 83 e2                                      add r3, r3, #1
003f740c  30 31 84 e5                                      str r3, [r4, #0x130]
003f7410  a1 fe ff ea                                      b #0x3f6e9c
003f7414  c9 e4 fc eb                                      bl #0x330740
003f7418  74 15 9f e5                                      ldr r1, [pc, #0x574]
003f741c  46 7e 8d e2                                      add r7, sp, #0x460
003f7420  00 80 a0 e1                                      mov r8, r0
003f7424  0c 70 87 e2                                      add r7, r7, #0xc
003f7428  13 2e 8d e2                                      add r2, sp, #0x130
003f742c  01 10 8f e0                                      add r1, pc, r1
003f7430  07 00 a0 e1                                      mov r0, r7
003f7434  2c 73 fc eb                                      bl #0x3140ec
003f7438  07 10 a0 e1                                      mov r1, r7
003f743c  08 00 a0 e1                                      mov r0, r8
003f7440  90 01 fd eb                                      bl #0x337a88
003f7444  07 00 a0 e1                                      mov r0, r7
003f7448  57 71 fc eb                                      bl #0x3139ac
003f744c  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7450  01 30 83 e2                                      add r3, r3, #1
003f7454  30 31 84 e5                                      str r3, [r4, #0x130]
003f7458  8f fe ff ea                                      b #0x3f6e9c
003f745c  b7 e4 fc eb                                      bl #0x330740
003f7460  30 15 9f e5                                      ldr r1, [pc, #0x530]
003f7464  12 7d 8d e2                                      add r7, sp, #0x480
003f7468  04 70 87 e2                                      add r7, r7, #4
003f746c  4d 2f 8d e2                                      add r2, sp, #0x134
003f7470  00 80 a0 e1                                      mov r8, r0
003f7474  01 10 8f e0                                      add r1, pc, r1
003f7478  07 00 a0 e1                                      mov r0, r7
003f747c  1a 73 fc eb                                      bl #0x3140ec
003f7480  07 10 a0 e1                                      mov r1, r7
003f7484  08 00 a0 e1                                      mov r0, r8
003f7488  7e 01 fd eb                                      bl #0x337a88
003f748c  07 00 a0 e1                                      mov r0, r7
003f7490  45 71 fc eb                                      bl #0x3139ac
003f7494  7c d5 00 eb                                      bl #0x42ca8c
003f7498  02 10 a0 e3                                      mov r1, #2
003f749c  06 d8 00 eb                                      bl #0x42d4bc
003f74a0  79 d5 00 eb                                      bl #0x42ca8c
003f74a4  01 10 a0 e3                                      mov r1, #1
003f74a8  03 d8 00 eb                                      bl #0x42d4bc
003f74ac  76 d5 00 eb                                      bl #0x42ca8c
003f74b0  03 10 a0 e3                                      mov r1, #3
003f74b4  00 d8 00 eb                                      bl #0x42d4bc
003f74b8  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f74bc  01 30 83 e2                                      add r3, r3, #1
003f74c0  30 31 84 e5                                      str r3, [r4, #0x130]
003f74c4  74 fe ff ea                                      b #0x3f6e9c
003f74c8  48 35 9f e5                                      ldr r3, [pc, #0x548]
003f74cc  00 70 a0 e3                                      mov r7, #0
003f74d0  03 80 95 e7                                      ldr r8, [r5, r3]
003f74d4  c0 34 9f e5                                      ldr r3, [pc, #0x4c0]
003f74d8  08 00 a0 e1                                      mov r0, r8
003f74dc  03 20 95 e7                                      ldr r2, [r5, r3]
003f74e0  b8 34 9f e5                                      ldr r3, [pc, #0x4b8]
003f74e4  00 70 82 e5                                      str r7, [r2]
003f74e8  03 30 95 e7                                      ldr r3, [r5, r3]
003f74ec  00 70 83 e5                                      str r7, [r3]
003f74f0  19 a0 fc eb                                      bl #0x31f55c
003f74f4  a8 04 9f e5                                      ldr r0, [pc, #0x4a8]
003f74f8  00 00 8f e0                                      add r0, pc, r0
003f74fc  c6 63 fc eb                                      bl #0x31041c
003f7500  a0 34 9f e5                                      ldr r3, [pc, #0x4a0]
003f7504  7d 1f a0 e3                                      mov r1, #0x1f4
003f7508  03 30 95 e7                                      ldr r3, [r5, r3]
003f750c  00 00 93 e5                                      ldr r0, [r3]
003f7510  1e c9 fd eb                                      bl #0x369990
003f7514  01 30 a0 e3                                      mov r3, #1
003f7518  b4 30 c8 e5                                      strb r3, [r8, #0xb4]
003f751c  34 71 84 e5                                      str r7, [r4, #0x134]
003f7520  38 71 84 e5                                      str r7, [r4, #0x138]
003f7524  3c 71 84 e5                                      str r7, [r4, #0x13c]
003f7528  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f752c  44 71 c4 e5                                      strb r7, [r4, #0x144]
003f7530  01 30 83 e2                                      add r3, r3, #1
003f7534  30 31 84 e5                                      str r3, [r4, #0x130]
003f7538  57 fe ff ea                                      b #0x3f6e9c
003f753c  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7540  25 00 53 e3                                      cmp r3, #0x25
003f7544  30 31 94 d5                                      ldrle r3, [r4, #0x130]
003f7548  26 30 a0 c3                                      movgt r3, #0x26
003f754c  01 30 83 d2                                      addle r3, r3, #1
003f7550  30 31 84 e5                                      str r3, [r4, #0x130]
003f7554  50 fe ff ea                                      b #0x3f6e9c
003f7558  78 e4 fc eb                                      bl #0x330740
003f755c  48 14 9f e5                                      ldr r1, [pc, #0x448]
003f7560  5b 7f 8d e2                                      add r7, sp, #0x16c
003f7564  b8 20 8d e2                                      add r2, sp, #0xb8
003f7568  04 20 42 e2                                      sub r2, r2, #4
003f756c  00 80 a0 e1                                      mov r8, r0
003f7570  01 10 8f e0                                      add r1, pc, r1
003f7574  07 00 a0 e1                                      mov r0, r7
003f7578  db 72 fc eb                                      bl #0x3140ec
003f757c  07 10 a0 e1                                      mov r1, r7
003f7580  08 00 a0 e1                                      mov r0, r8
003f7584  3f 01 fd eb                                      bl #0x337a88
003f7588  07 00 a0 e1                                      mov r0, r7
003f758c  06 71 fc eb                                      bl #0x3139ac
003f7590  7f 18 10 eb                                      bl #0x7fd794
003f7594  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f7598  00 00 53 e3                                      cmp r3, #0
003f759c  3e fe ff 0a                                      beq #0x3f6e9c
003f75a0  70 74 9f e5                                      ldr r7, [pc, #0x470]
003f75a4  00 10 a0 e3                                      mov r1, #0
003f75a8  01 20 a0 e1                                      mov r2, r1
003f75ac  07 80 95 e7                                      ldr r8, [r5, r7]
003f75b0  40 00 98 e5                                      ldr r0, [r8, #0x40]
003f75b4  af db fd eb                                      bl #0x36e478
003f75b8  45 35 d0 e5                                      ldrb r3, [r0, #0x545]
003f75bc  00 00 53 e3                                      cmp r3, #0
003f75c0  fb 02 00 1a                                      bne #0x3f81b4
003f75c4  07 30 95 e7                                      ldr r3, [r5, r7]
003f75c8  38 00 93 e5                                      ldr r0, [r3, #0x38]
003f75cc  ac 31 d0 e5                                      ldrb r3, [r0, #0x1ac]
003f75d0  00 00 53 e3                                      cmp r3, #0
003f75d4  00 00 00 1a                                      bne #0x3f75dc
003f75d8  80 25 fd eb                                      bl #0x340be0
003f75dc  07 70 95 e7                                      ldr r7, [r5, r7]
003f75e0  fe 15 a0 e3                                      mov r1, #0x3f800000
003f75e4  38 00 97 e5                                      ldr r0, [r7, #0x38]
003f75e8  0c 4c fd eb                                      bl #0x34a620
003f75ec  00 10 a0 e3                                      mov r1, #0
003f75f0  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f75f4  01 20 a0 e1                                      mov r2, r1
003f75f8  9e db fd eb                                      bl #0x36e478
003f75fc  00 70 a0 e1                                      mov r7, r0
003f7600  0d 5f 10 eb                                      bl #0x80f23c
003f7604  00 00 50 e3                                      cmp r0, #0
003f7608  23 fe ff 0a                                      beq #0x3f6e9c
003f760c  60 36 97 e5                                      ldr r3, [r7, #0x660]
003f7610  00 00 53 e3                                      cmp r3, #0
003f7614  20 fe ff 0a                                      beq #0x3f6e9c
003f7618  e8 24 01 e3                                      movw r2, #0x14e8
003f761c  02 00 93 e7                                      ldr r0, [r3, r2]
003f7620  00 00 50 e3                                      cmp r0, #0
003f7624  1c fe ff 0a                                      beq #0x3f6e9c
003f7628  ee c0 01 eb                                      bl #0x4679e8
003f762c  1a fe ff ea                                      b #0x3f6e9c
003f7630  42 e4 fc eb                                      bl #0x330740
003f7634  74 13 9f e5                                      ldr r1, [pc, #0x374]
003f7638  6d 7f 8d e2                                      add r7, sp, #0x1b4
003f763c  c0 20 8d e2                                      add r2, sp, #0xc0
003f7640  00 80 a0 e1                                      mov r8, r0
003f7644  01 10 8f e0                                      add r1, pc, r1
003f7648  07 00 a0 e1                                      mov r0, r7
003f764c  a6 72 fc eb                                      bl #0x3140ec
003f7650  07 10 a0 e1                                      mov r1, r7
003f7654  08 00 a0 e1                                      mov r0, r8
003f7658  0a 01 fd eb                                      bl #0x337a88
003f765c  07 00 a0 e1                                      mov r0, r7
003f7660  d1 70 fc eb                                      bl #0x3139ac
003f7664  f1 30 d4 e5                                      ldrb r3, [r4, #0xf1]
003f7668  00 00 53 e3                                      cmp r3, #0
003f766c  f3 01 00 1a                                      bne #0x3f7e40
003f7670  a0 73 9f e5                                      ldr r7, [pc, #0x3a0]
003f7674  07 30 95 e7                                      ldr r3, [r5, r7]
003f7678  01 20 a0 e3                                      mov r2, #1
003f767c  00 10 a0 e3                                      mov r1, #0
003f7680  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f7684  7b db fd eb                                      bl #0x36e478
003f7688  00 10 a0 e3                                      mov r1, #0
003f768c  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f7690  40 10 ff eb                                      bl #0x3bb798
003f7694  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7698  00 20 a0 e3                                      mov r2, #0
003f769c  f3 20 c4 e5                                      strb r2, [r4, #0xf3]
003f76a0  01 30 83 e2                                      add r3, r3, #1
003f76a4  30 31 84 e5                                      str r3, [r4, #0x130]
003f76a8  fb fd ff ea                                      b #0x3f6e9c
003f76ac  23 e4 fc eb                                      bl #0x330740
003f76b0  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
003f76b4  00 80 a0 e1                                      mov r8, r0
003f76b8  9d 7f 8d e2                                      add r7, sp, #0x274
003f76bc  e0 20 8d e2                                      add r2, sp, #0xe0
003f76c0  01 10 8f e0                                      add r1, pc, r1
003f76c4  59 ff ff ea                                      b #0x3f7430
003f76c8  1c e4 fc eb                                      bl #0x330740
003f76cc  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
003f76d0  a3 7f 8d e2                                      add r7, sp, #0x28c
003f76d4  e4 20 8d e2                                      add r2, sp, #0xe4
003f76d8  00 80 a0 e1                                      mov r8, r0
003f76dc  01 10 8f e0                                      add r1, pc, r1
003f76e0  07 00 a0 e1                                      mov r0, r7
003f76e4  80 72 fc eb                                      bl #0x3140ec
003f76e8  07 10 a0 e1                                      mov r1, r7
003f76ec  08 00 a0 e1                                      mov r0, r8
003f76f0  e4 00 fd eb                                      bl #0x337a88
003f76f4  07 00 a0 e1                                      mov r0, r7
003f76f8  ab 70 fc eb                                      bl #0x3139ac
003f76fc  04 00 a0 e1                                      mov r0, r4
003f7700  24 e2 ff eb                                      bl #0x3eff98
003f7704  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7708  01 30 83 e2                                      add r3, r3, #1
003f770c  30 31 84 e5                                      str r3, [r4, #0x130]
003f7710  e1 fd ff ea                                      b #0x3f6e9c
003f7714  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
003f7718  04 00 a0 e1                                      mov r0, r4
003f771c  fe 85 a0 e3                                      mov r8, #0x3f800000
003f7720  03 70 95 e7                                      ldr r7, [r5, r3]
003f7724  10 30 97 e5                                      ldr r3, [r7, #0x10]
003f7728  1c b0 93 e5                                      ldr fp, [r3, #0x1c]
003f772c  5d df ff eb                                      bl #0x3ef4a8
003f7730  cc 91 90 e5                                      ldr sb, [r0, #0x1cc]
003f7734  04 00 a0 e1                                      mov r0, r4
003f7738  5a df ff eb                                      bl #0x3ef4a8
003f773c  d0 a1 90 e5                                      ldr sl, [r0, #0x1d0]
003f7740  04 00 a0 e1                                      mov r0, r4
003f7744  57 df ff eb                                      bl #0x3ef4a8
003f7748  d4 31 90 e5                                      ldr r3, [r0, #0x1d4]
003f774c  58 10 8d e2                                      add r1, sp, #0x58
003f7750  0b 00 a0 e1                                      mov r0, fp
003f7754  04 10 41 e2                                      sub r1, r1, #4
003f7758  5c 30 8d e5                                      str r3, [sp, #0x5c]
003f775c  60 80 8d e5                                      str r8, [sp, #0x60]
003f7760  54 90 8d e5                                      str sb, [sp, #0x54]
003f7764  58 a0 8d e5                                      str sl, [sp, #0x58]
003f7768  66 47 06 eb                                      bl #0x589508
003f776c  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
003f7770  08 10 a0 e1                                      mov r1, r8
003f7774  38 00 97 e5                                      ldr r0, [r7, #0x38]
003f7778  03 80 95 e7                                      ldr r8, [r5, r3]
003f777c  01 30 a0 e3                                      mov r3, #1
003f7780  94 30 c8 e5                                      strb r3, [r8, #0x94]
003f7784  a5 4b fd eb                                      bl #0x34a620
003f7788  8a 5c ff eb                                      bl #0x3ce9b8
003f778c  44 00 97 e5                                      ldr r0, [r7, #0x44]
003f7790  5c 51 fd eb                                      bl #0x34bd08
003f7794  00 30 a0 e3                                      mov r3, #0
003f7798  94 30 c8 e5                                      strb r3, [r8, #0x94]
003f779c  28 31 94 e5                                      ldr r3, [r4, #0x128]
003f77a0  03 00 a0 e1                                      mov r0, r3
003f77a4  00 30 93 e5                                      ldr r3, [r3]
003f77a8  0f e0 a0 e1                                      mov lr, pc
003f77ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003f77b0  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f77b4  01 30 83 e2                                      add r3, r3, #1
003f77b8  30 31 84 e5                                      str r3, [r4, #0x130]
003f77bc  b6 fd ff ea                                      b #0x3f6e9c
003f77c0  de e3 fc eb                                      bl #0x330740
003f77c4  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
003f77c8  a9 7f 8d e2                                      add r7, sp, #0x2a4
003f77cc  e8 20 8d e2                                      add r2, sp, #0xe8
003f77d0  00 80 a0 e1                                      mov r8, r0
003f77d4  01 10 8f e0                                      add r1, pc, r1
003f77d8  07 00 a0 e1                                      mov r0, r7
003f77dc  42 72 fc eb                                      bl #0x3140ec
003f77e0  07 10 a0 e1                                      mov r1, r7
003f77e4  08 00 a0 e1                                      mov r0, r8
003f77e8  a6 00 fd eb                                      bl #0x337a88
003f77ec  07 00 a0 e1                                      mov r0, r7
003f77f0  6d 70 fc eb                                      bl #0x3139ac
003f77f4  04 00 a0 e1                                      mov r0, r4
003f77f8  29 e1 ff eb                                      bl #0x3efca4
003f77fc  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7800  01 30 83 e2                                      add r3, r3, #1
003f7804  30 31 84 e5                                      str r3, [r4, #0x130]
003f7808  a3 fd ff ea                                      b #0x3f6e9c
003f780c  cb e3 fc eb                                      bl #0x330740
003f7810  a8 11 9f e5                                      ldr r1, [pc, #0x1a8]
003f7814  00 80 a0 e1                                      mov r8, r0
003f7818  af 7f 8d e2                                      add r7, sp, #0x2bc
003f781c  ec 20 8d e2                                      add r2, sp, #0xec
003f7820  01 10 8f e0                                      add r1, pc, r1
003f7824  01 ff ff ea                                      b #0x3f7430
003f7828  c4 e3 fc eb                                      bl #0x330740
003f782c  90 11 9f e5                                      ldr r1, [pc, #0x190]
003f7830  b5 7f 8d e2                                      add r7, sp, #0x2d4
003f7834  f0 20 8d e2                                      add r2, sp, #0xf0
003f7838  00 80 a0 e1                                      mov r8, r0
003f783c  01 10 8f e0                                      add r1, pc, r1
003f7840  07 00 a0 e1                                      mov r0, r7
003f7844  28 72 fc eb                                      bl #0x3140ec
003f7848  07 10 a0 e1                                      mov r1, r7
003f784c  08 00 a0 e1                                      mov r0, r8
003f7850  8c 00 fd eb                                      bl #0x337a88
003f7854  07 00 a0 e1                                      mov r0, r7
003f7858  53 70 fc eb                                      bl #0x3139ac
003f785c  44 31 9f e5                                      ldr r3, [pc, #0x144]
003f7860  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003f7864  03 30 95 e7                                      ldr r3, [r5, r3]
003f7868  00 00 93 e5                                      ldr r0, [r3]
003f786c  60 c7 fd eb                                      bl #0x3695f4
003f7870  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7874  01 30 83 e2                                      add r3, r3, #1
003f7878  30 31 84 e5                                      str r3, [r4, #0x130]
003f787c  86 fd ff ea                                      b #0x3f6e9c
003f7880  ae e3 fc eb                                      bl #0x330740
003f7884  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
003f7888  bb 7f 8d e2                                      add r7, sp, #0x2ec
003f788c  f4 20 8d e2                                      add r2, sp, #0xf4
003f7890  00 80 a0 e1                                      mov r8, r0
003f7894  01 10 8f e0                                      add r1, pc, r1
003f7898  07 00 a0 e1                                      mov r0, r7
003f789c  12 72 fc eb                                      bl #0x3140ec
003f78a0  07 10 a0 e1                                      mov r1, r7
003f78a4  08 00 a0 e1                                      mov r0, r8
003f78a8  76 00 fd eb                                      bl #0x337a88
003f78ac  07 00 a0 e1                                      mov r0, r7
003f78b0  3d 70 fc eb                                      bl #0x3139ac
003f78b4  04 00 a0 e1                                      mov r0, r4
003f78b8  d6 e1 ff eb                                      bl #0x3f0018
003f78bc  b4 17 10 eb                                      bl #0x7fd794
003f78c0  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f78c4  00 00 53 e3                                      cmp r3, #0
003f78c8  70 fd ff 0a                                      beq #0x3f6e90
003f78cc  44 31 9f e5                                      ldr r3, [pc, #0x144]
003f78d0  00 10 a0 e3                                      mov r1, #0
003f78d4  01 20 a0 e1                                      mov r2, r1
003f78d8  03 70 95 e7                                      ldr r7, [r5, r3]
003f78dc  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f78e0  e4 da fd eb                                      bl #0x36e478
003f78e4  00 30 90 e5                                      ldr r3, [r0]
003f78e8  0f e0 a0 e1                                      mov lr, pc
003f78ec  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003f78f0  00 00 50 e3                                      cmp r0, #0
003f78f4  65 fd ff 1a                                      bne #0x3f6e90
003f78f8  a3 25 10 eb                                      bl #0x800f8c
003f78fc  00 30 90 e5                                      ldr r3, [r0]
003f7900  0f e0 a0 e1                                      mov lr, pc
003f7904  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003f7908  19 11 10 eb                                      bl #0x7fbd74
003f790c  50 11 10 eb                                      bl #0x7fbe54
003f7910  07 00 a0 e1                                      mov r0, r7
003f7914  03 10 a0 e3                                      mov r1, #3
003f7918  35 d2 fc eb                                      bl #0x32c1f4
003f791c  5b fd ff ea                                      b #0x3f6e90
; mapping-symbol data/literal pool
003f7920  f0 e0 59 00 b0 33 00 00 ac 40 00 00 84 08 00 00  .byte 0xf0, 0xe0, 0x59, 0x00, 0xb0, 0x33, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
003f7930  b8 00 4d 00 a8 00 4d 00 d0 ff 4c 00 54 8c 4c 00  .byte 0xb8, 0x00, 0x4d, 0x00, 0xa8, 0x00, 0x4d, 0x00, 0xd0, 0xff, 0x4c, 0x00, 0x54, 0x8c, 0x4c, 0x00
003f7940  d0 b0 4c 00 b4 b0 4c 00 0c 21 00 00 b4 7d 4c 00  .byte 0xd0, 0xb0, 0x4c, 0x00, 0xb4, 0xb0, 0x4c, 0x00, 0x0c, 0x21, 0x00, 0x00, 0xb4, 0x7d, 0x4c, 0x00
003f7950  34 22 00 00 08 45 00 00 70 20 00 00 c4 35 00 00  .byte 0x34, 0x22, 0x00, 0x00, 0x08, 0x45, 0x00, 0x00, 0x70, 0x20, 0x00, 0x00, 0xc4, 0x35, 0x00, 0x00
003f7960  4c a7 4c 00 58 a7 4c 00 88 fa 4c 00 38 fa 4c 00  .byte 0x4c, 0xa7, 0x4c, 0x00, 0x58, 0xa7, 0x4c, 0x00, 0x88, 0xfa, 0x4c, 0x00, 0x38, 0xfa, 0x4c, 0x00
003f7970  dc f9 4c 00 90 f9 4c 00 94 0c 00 00 10 0b 00 00  .byte 0xdc, 0xf9, 0x4c, 0x00, 0x90, 0xf9, 0x4c, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x10, 0x0b, 0x00, 0x00
003f7980  d0 f8 4c 00 3c f5 4c 00 34 f8 4c 00 b4 f7 4c 00  .byte 0xd0, 0xf8, 0x4c, 0x00, 0x3c, 0xf5, 0x4c, 0x00, 0x34, 0xf8, 0x4c, 0x00, 0xb4, 0xf7, 0x4c, 0x00
003f7990  40 f7 4c 00 ec f6 4c 00 a4 f6 4c 00 7c 42 00 00  .byte 0x40, 0xf7, 0x4c, 0x00, 0xec, 0xf6, 0x4c, 0x00, 0xa4, 0xf6, 0x4c, 0x00, 0x7c, 0x42, 0x00, 0x00
003f79a0  84 16 00 00 08 f6 4c 00 a4 0d 00 00 a8 f5 4c 00  .byte 0x84, 0x16, 0x00, 0x00, 0x08, 0xf6, 0x4c, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xa8, 0xf5, 0x4c, 0x00
003f79b0  d4 f4 4c 00 58 f4 4c 00 3c f4 4c 00 44 f3 4c 00  .byte 0xd4, 0xf4, 0x4c, 0x00, 0x58, 0xf4, 0x4c, 0x00, 0x3c, 0xf4, 0x4c, 0x00, 0x44, 0xf3, 0x4c, 0x00
003f79c0  f8 f2 4c 00 dc f2 4c 00 84 f2 4c 00 d0 f0 4c 00  .byte 0xf8, 0xf2, 0x4c, 0x00, 0xdc, 0xf2, 0x4c, 0x00, 0x84, 0xf2, 0x4c, 0x00, 0xd0, 0xf0, 0x4c, 0x00
003f79d0  20 1a 00 00 64 f0 4c 00 18 f0 4c 00 cc ef 4c 00  .byte 0x20, 0x1a, 0x00, 0x00, 0x64, 0xf0, 0x4c, 0x00, 0x18, 0xf0, 0x4c, 0x00, 0xcc, 0xef, 0x4c, 0x00
003f79e0  80 ef 4c 00 18 ef 4c 00 08 1b 00 00 c8 ee 4c 00  .byte 0x80, 0xef, 0x4c, 0x00, 0x18, 0xef, 0x4c, 0x00, 0x08, 0x1b, 0x00, 0x00, 0xc8, 0xee, 0x4c, 0x00
003f79f0  2c 0e 00 00 4c 08 00 00 68 ee 4c 00 f4 a2 4c 00  .byte 0x2c, 0x0e, 0x00, 0x00, 0x4c, 0x08, 0x00, 0x00, 0x68, 0xee, 0x4c, 0x00, 0xf4, 0xa2, 0x4c, 0x00
003f7a00  a8 9a 4c 00 64 ee 4c 00 84 ed 4c 00 60 ed 4c 00  .byte 0xa8, 0x9a, 0x4c, 0x00, 0x64, 0xee, 0x4c, 0x00, 0x84, 0xed, 0x4c, 0x00, 0x60, 0xed, 0x4c, 0x00
003f7a10  10 ed 4c 00 d4 ea 4c 00 f4 37 00 00 98 ea 4c 00  .byte 0x10, 0xed, 0x4c, 0x00, 0xd4, 0xea, 0x4c, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x98, 0xea, 0x4c, 0x00
003f7a20  f0 e6 4c 00 24 83 4c 00 00 ea 4c 00 2c 3f 00 00  .byte 0xf0, 0xe6, 0x4c, 0x00, 0x24, 0x83, 0x4c, 0x00, 0x00, 0xea, 0x4c, 0x00, 0x2c, 0x3f, 0x00, 0x00
003f7a30  04 12 00 00                                      .byte 0x04, 0x12, 0x00, 0x00
; decoder-mode: arm
003f7a34  41 e3 fc eb                                      bl #0x330740
003f7a38  74 10 1f e5                                      ldr r1, [pc, #-0x74]
003f7a3c  c1 7f 8d e2                                      add r7, sp, #0x304
003f7a40  f8 20 8d e2                                      add r2, sp, #0xf8
003f7a44  00 80 a0 e1                                      mov r8, r0
003f7a48  01 10 8f e0                                      add r1, pc, r1
003f7a4c  07 00 a0 e1                                      mov r0, r7
003f7a50  a5 71 fc eb                                      bl #0x3140ec
003f7a54  07 10 a0 e1                                      mov r1, r7
003f7a58  08 00 a0 e1                                      mov r0, r8
003f7a5c  09 00 fd eb                                      bl #0x337a88
003f7a60  07 00 a0 e1                                      mov r0, r7
003f7a64  d0 6f fc eb                                      bl #0x3139ac
003f7a68  a0 30 1f e5                                      ldr r3, [pc, #-0xa0]
003f7a6c  03 00 95 e7                                      ldr r0, [r5, r3]
003f7a70  18 78 01 eb                                      bl #0x455ad8
003f7a74  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7a78  01 30 83 e2                                      add r3, r3, #1
003f7a7c  30 31 84 e5                                      str r3, [r4, #0x130]
003f7a80  05 fd ff ea                                      b #0x3f6e9c
003f7a84  00 d4 00 eb                                      bl #0x42ca8c
003f7a88  01 10 a0 e3                                      mov r1, #1
003f7a8c  04 e9 00 eb                                      bl #0x431ea4
003f7a90  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7a94  01 30 83 e2                                      add r3, r3, #1
003f7a98  30 31 84 e5                                      str r3, [r4, #0x130]
003f7a9c  fe fc ff ea                                      b #0x3f6e9c
003f7aa0  26 e3 fc eb                                      bl #0x330740
003f7aa4  d8 10 1f e5                                      ldr r1, [pc, #-0xd8]
003f7aa8  85 7f 8d e2                                      add r7, sp, #0x214
003f7aac  d0 20 8d e2                                      add r2, sp, #0xd0
003f7ab0  00 80 a0 e1                                      mov r8, r0
003f7ab4  01 10 8f e0                                      add r1, pc, r1
003f7ab8  07 00 a0 e1                                      mov r0, r7
003f7abc  8a 71 fc eb                                      bl #0x3140ec
003f7ac0  07 10 a0 e1                                      mov r1, r7
003f7ac4  08 00 a0 e1                                      mov r0, r8
003f7ac8  ee ff fc eb                                      bl #0x337a88
003f7acc  07 00 a0 e1                                      mov r0, r7
003f7ad0  b5 6f fc eb                                      bl #0x3139ac
003f7ad4  04 00 a0 e1                                      mov r0, r4
003f7ad8  f0 f8 ff eb                                      bl #0x3f5ea0
003f7adc  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7ae0  01 30 83 e2                                      add r3, r3, #1
003f7ae4  30 31 84 e5                                      str r3, [r4, #0x130]
003f7ae8  eb fc ff ea                                      b #0x3f6e9c
003f7aec  13 e3 fc eb                                      bl #0x330740
003f7af0  20 11 1f e5                                      ldr r1, [pc, #-0x120]
003f7af4  8b 7f 8d e2                                      add r7, sp, #0x22c
003f7af8  d4 20 8d e2                                      add r2, sp, #0xd4
003f7afc  00 80 a0 e1                                      mov r8, r0
003f7b00  01 10 8f e0                                      add r1, pc, r1
003f7b04  07 00 a0 e1                                      mov r0, r7
003f7b08  77 71 fc eb                                      bl #0x3140ec
003f7b0c  07 10 a0 e1                                      mov r1, r7
003f7b10  08 00 a0 e1                                      mov r0, r8
003f7b14  db ff fc eb                                      bl #0x337a88
003f7b18  07 00 a0 e1                                      mov r0, r7
003f7b1c  a2 6f fc eb                                      bl #0x3139ac
003f7b20  04 00 a0 e1                                      mov r0, r4
003f7b24  83 ec ff eb                                      bl #0x3f2d38
003f7b28  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7b2c  01 30 83 e2                                      add r3, r3, #1
003f7b30  30 31 84 e5                                      str r3, [r4, #0x130]
003f7b34  d8 fc ff ea                                      b #0x3f6e9c
003f7b38  00 e3 fc eb                                      bl #0x330740
003f7b3c  68 11 1f e5                                      ldr r1, [pc, #-0x168]
003f7b40  91 7f 8d e2                                      add r7, sp, #0x244
003f7b44  d8 20 8d e2                                      add r2, sp, #0xd8
003f7b48  00 80 a0 e1                                      mov r8, r0
003f7b4c  01 10 8f e0                                      add r1, pc, r1
003f7b50  07 00 a0 e1                                      mov r0, r7
003f7b54  64 71 fc eb                                      bl #0x3140ec
003f7b58  07 10 a0 e1                                      mov r1, r7
003f7b5c  08 00 a0 e1                                      mov r0, r8
003f7b60  c8 ff fc eb                                      bl #0x337a88
003f7b64  07 00 a0 e1                                      mov r0, r7
003f7b68  8f 6f fc eb                                      bl #0x3139ac
003f7b6c  04 00 a0 e1                                      mov r0, r4
003f7b70  25 ea ff eb                                      bl #0x3f240c
003f7b74  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7b78  01 30 83 e2                                      add r3, r3, #1
003f7b7c  30 31 84 e5                                      str r3, [r4, #0x130]
003f7b80  c5 fc ff ea                                      b #0x3f6e9c
003f7b84  ed e2 fc eb                                      bl #0x330740
003f7b88  b0 11 1f e5                                      ldr r1, [pc, #-0x1b0]
003f7b8c  97 7f 8d e2                                      add r7, sp, #0x25c
003f7b90  dc 20 8d e2                                      add r2, sp, #0xdc
003f7b94  00 80 a0 e1                                      mov r8, r0
003f7b98  01 10 8f e0                                      add r1, pc, r1
003f7b9c  07 00 a0 e1                                      mov r0, r7
003f7ba0  51 71 fc eb                                      bl #0x3140ec
003f7ba4  07 10 a0 e1                                      mov r1, r7
003f7ba8  08 00 a0 e1                                      mov r0, r8
003f7bac  b5 ff fc eb                                      bl #0x337a88
003f7bb0  07 00 a0 e1                                      mov r0, r7
003f7bb4  7c 6f fc eb                                      bl #0x3139ac
003f7bb8  04 00 a0 e1                                      mov r0, r4
003f7bbc  11 e5 ff eb                                      bl #0x3f1008
003f7bc0  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7bc4  01 30 83 e2                                      add r3, r3, #1
003f7bc8  30 31 84 e5                                      str r3, [r4, #0x130]
003f7bcc  b2 fc ff ea                                      b #0x3f6e9c
003f7bd0  94 01 94 e5                                      ldr r0, [r4, #0x194]
003f7bd4  e8 06 02 eb                                      bl #0x47977c
003f7bd8  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7bdc  01 30 83 e2                                      add r3, r3, #1
003f7be0  30 31 84 e5                                      str r3, [r4, #0x130]
003f7be4  ac fc ff ea                                      b #0x3f6e9c
003f7be8  d4 e2 fc eb                                      bl #0x330740
003f7bec  10 12 1f e5                                      ldr r1, [pc, #-0x210]
003f7bf0  45 7e 8d e2                                      add r7, sp, #0x450
003f7bf4  04 70 87 e2                                      add r7, r7, #4
003f7bf8  4b 2f 8d e2                                      add r2, sp, #0x12c
003f7bfc  00 80 a0 e1                                      mov r8, r0
003f7c00  01 10 8f e0                                      add r1, pc, r1
003f7c04  07 00 a0 e1                                      mov r0, r7
003f7c08  37 71 fc eb                                      bl #0x3140ec
003f7c0c  07 10 a0 e1                                      mov r1, r7
003f7c10  08 00 a0 e1                                      mov r0, r8
003f7c14  9b ff fc eb                                      bl #0x337a88
003f7c18  07 00 a0 e1                                      mov r0, r7
003f7c1c  62 6f fc eb                                      bl #0x3139ac
003f7c20  40 32 1f e5                                      ldr r3, [pc, #-0x240]
003f7c24  03 00 95 e7                                      ldr r0, [r5, r3]
003f7c28  96 77 02 eb                                      bl #0x495a88
003f7c2c  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7c30  01 30 83 e2                                      add r3, r3, #1
003f7c34  30 31 84 e5                                      str r3, [r4, #0x130]
003f7c38  97 fc ff ea                                      b #0x3f6e9c
003f7c3c  bf e2 fc eb                                      bl #0x330740
003f7c40  5c 12 1f e5                                      ldr r1, [pc, #-0x25c]
003f7c44  73 7f 8d e2                                      add r7, sp, #0x1cc
003f7c48  c4 20 8d e2                                      add r2, sp, #0xc4
003f7c4c  00 80 a0 e1                                      mov r8, r0
003f7c50  01 10 8f e0                                      add r1, pc, r1
003f7c54  07 00 a0 e1                                      mov r0, r7
003f7c58  23 71 fc eb                                      bl #0x3140ec
003f7c5c  07 10 a0 e1                                      mov r1, r7
003f7c60  08 00 a0 e1                                      mov r0, r8
003f7c64  87 ff fc eb                                      bl #0x337a88
003f7c68  07 00 a0 e1                                      mov r0, r7
003f7c6c  4e 6f fc eb                                      bl #0x3139ac
003f7c70  88 32 1f e5                                      ldr r3, [pc, #-0x288]
003f7c74  03 00 95 e7                                      ldr r0, [r5, r3]
003f7c78  99 ce ff eb                                      bl #0x3eb6e4
003f7c7c  90 32 1f e5                                      ldr r3, [pc, #-0x290]
003f7c80  03 00 95 e7                                      ldr r0, [r5, r3]
003f7c84  50 bd ff eb                                      bl #0x3e71cc
003f7c88  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7c8c  01 30 83 e2                                      add r3, r3, #1
003f7c90  30 31 84 e5                                      str r3, [r4, #0x130]
003f7c94  80 fc ff ea                                      b #0x3f6e9c
003f7c98  a8 e2 fc eb                                      bl #0x330740
003f7c9c  ac 12 1f e5                                      ldr r1, [pc, #-0x2ac]
003f7ca0  55 7f 8d e2                                      add r7, sp, #0x154
003f7ca4  b8 80 8d e2                                      add r8, sp, #0xb8
003f7ca8  08 20 48 e2                                      sub r2, r8, #8
003f7cac  00 a0 a0 e1                                      mov sl, r0
003f7cb0  01 10 8f e0                                      add r1, pc, r1
003f7cb4  07 00 a0 e1                                      mov r0, r7
003f7cb8  0b 71 fc eb                                      bl #0x3140ec
003f7cbc  07 10 a0 e1                                      mov r1, r7
003f7cc0  0a 00 a0 e1                                      mov r0, sl
003f7cc4  6f ff fc eb                                      bl #0x337a88
003f7cc8  07 00 a0 e1                                      mov r0, r7
003f7ccc  36 6f fc eb                                      bl #0x3139ac
003f7cd0  6d d3 00 eb                                      bl #0x42ca8c
003f7cd4  e0 12 1f e5                                      ldr r1, [pc, #-0x2e0]
003f7cd8  00 70 a0 e1                                      mov r7, r0
003f7cdc  01 10 8f e0                                      add r1, pc, r1
003f7ce0  42 d5 00 eb                                      bl #0x42d1f0
003f7ce4  00 a0 a0 e1                                      mov sl, r0
003f7ce8  c1 9d 00 eb                                      bl #0x41f3f4
003f7cec  00 00 50 e3                                      cmp r0, #0
003f7cf0  8a 00 00 1a                                      bne #0x3f7f20
003f7cf4  fc 12 1f e5                                      ldr r1, [pc, #-0x2fc]
003f7cf8  07 00 a0 e1                                      mov r0, r7
003f7cfc  4f 7f 8d e2                                      add r7, sp, #0x13c
003f7d00  01 10 8f e0                                      add r1, pc, r1
003f7d04  39 d5 00 eb                                      bl #0x42d1f0
003f7d08  0c 03 1f e5                                      ldr r0, [pc, #-0x30c]
003f7d0c  00 00 8f e0                                      add r0, pc, r0
003f7d10  c1 61 fc eb                                      bl #0x31041c
003f7d14  89 e2 fc eb                                      bl #0x330740
003f7d18  18 13 1f e5                                      ldr r1, [pc, #-0x318]
003f7d1c  0c 20 48 e2                                      sub r2, r8, #0xc
003f7d20  00 a0 a0 e1                                      mov sl, r0
003f7d24  01 10 8f e0                                      add r1, pc, r1
003f7d28  07 00 a0 e1                                      mov r0, r7
003f7d2c  ee 70 fc eb                                      bl #0x3140ec
003f7d30  07 10 a0 e1                                      mov r1, r7
003f7d34  0a 00 a0 e1                                      mov r0, sl
003f7d38  52 ff fc eb                                      bl #0x337a88
003f7d3c  00 80 a0 e1                                      mov r8, r0
003f7d40  07 00 a0 e1                                      mov r0, r7
003f7d44  18 6f fc eb                                      bl #0x3139ac
003f7d48  00 00 58 e3                                      cmp r8, #0
003f7d4c  6f 00 00 1a                                      bne #0x3f7f10
003f7d50  40 73 1f e5                                      ldr r7, [pc, #-0x340]
003f7d54  00 80 a0 e3                                      mov r8, #0
003f7d58  08 a0 a0 e1                                      mov sl, r8
003f7d5c  07 70 95 e7                                      ldr r7, [r5, r7]
003f7d60  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f7d64  00 10 a0 e3                                      mov r1, #0
003f7d68  58 db fd eb                                      bl #0x36ead0
003f7d6c  00 00 58 e1                                      cmp r8, r0
003f7d70  55 00 00 aa                                      bge #0x3f7ecc
003f7d74  40 00 97 e5                                      ldr r0, [r7, #0x40]
003f7d78  08 10 a0 e1                                      mov r1, r8
003f7d7c  00 20 a0 e3                                      mov r2, #0
003f7d80  bc d9 fd eb                                      bl #0x36e478
003f7d84  60 36 90 e5                                      ldr r3, [r0, #0x660]
003f7d88  00 00 53 e3                                      cmp r3, #0
003f7d8c  02 00 00 0a                                      beq #0x3f7d9c
003f7d90  78 33 93 e5                                      ldr r3, [r3, #0x378]
003f7d94  00 00 53 e3                                      cmp r3, #0
003f7d98  08 a0 c3 15                                      strbne sl, [r3, #8]
003f7d9c  01 80 88 e2                                      add r8, r8, #1
003f7da0  ee ff ff ea                                      b #0x3f7d60
003f7da4  65 e2 fc eb                                      bl #0x330740
003f7da8  a4 13 1f e5                                      ldr r1, [pc, #-0x3a4]
003f7dac  79 7f 8d e2                                      add r7, sp, #0x1e4
003f7db0  c8 20 8d e2                                      add r2, sp, #0xc8
003f7db4  00 80 a0 e1                                      mov r8, r0
003f7db8  01 10 8f e0                                      add r1, pc, r1
003f7dbc  07 00 a0 e1                                      mov r0, r7
003f7dc0  c9 70 fc eb                                      bl #0x3140ec
003f7dc4  07 10 a0 e1                                      mov r1, r7
003f7dc8  08 00 a0 e1                                      mov r0, r8
003f7dcc  2d ff fc eb                                      bl #0x337a88
003f7dd0  07 00 a0 e1                                      mov r0, r7
003f7dd4  f4 6e fc eb                                      bl #0x3139ac
003f7dd8  c8 33 1f e5                                      ldr r3, [pc, #-0x3c8]
003f7ddc  03 00 95 e7                                      ldr r0, [r5, r3]
003f7de0  dd 9d fc eb                                      bl #0x31f55c
003f7de4  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7de8  01 30 83 e2                                      add r3, r3, #1
003f7dec  30 31 84 e5                                      str r3, [r4, #0x130]
003f7df0  29 fc ff ea                                      b #0x3f6e9c
003f7df4  51 e2 fc eb                                      bl #0x330740
003f7df8  f0 13 1f e5                                      ldr r1, [pc, #-0x3f0]
003f7dfc  7f 7f 8d e2                                      add r7, sp, #0x1fc
003f7e00  cc 20 8d e2                                      add r2, sp, #0xcc
003f7e04  00 80 a0 e1                                      mov r8, r0
003f7e08  01 10 8f e0                                      add r1, pc, r1
003f7e0c  07 00 a0 e1                                      mov r0, r7
003f7e10  b5 70 fc eb                                      bl #0x3140ec
003f7e14  07 10 a0 e1                                      mov r1, r7
003f7e18  08 00 a0 e1                                      mov r0, r8
003f7e1c  19 ff fc eb                                      bl #0x337a88
003f7e20  07 00 a0 e1                                      mov r0, r7
003f7e24  e0 6e fc eb                                      bl #0x3139ac
003f7e28  04 00 a0 e1                                      mov r0, r4
003f7e2c  2c eb ff eb                                      bl #0x3f2ae4
003f7e30  30 31 94 e5                                      ldr r3, [r4, #0x130]
003f7e34  01 30 83 e2                                      add r3, r3, #1
003f7e38  30 31 84 e5                                      str r3, [r4, #0x130]
003f7e3c  16 fc ff ea                                      b #0x3f6e9c
003f7e40  ec 00 94 e5                                      ldr r0, [r4, #0xec]
003f7e44  c8 a5 01 eb                                      bl #0x46156c
003f7e48  51 16 10 eb                                      bl #0x7fd794
003f7e4c  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f7e50  00 00 53 e3                                      cmp r3, #0
003f7e54  05 fe ff 0a                                      beq #0x3f7670
003f7e58  48 74 1f e5                                      ldr r7, [pc, #-0x448]
003f7e5c  07 a0 95 e7                                      ldr sl, [r5, r7]
003f7e60  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f7e64  82 dc fd eb                                      bl #0x36f074
003f7e68  00 00 50 e3                                      cmp r0, #0
003f7e6c  e2 00 00 1a                                      bne #0x3f81fc
003f7e70  40 30 9a e5                                      ldr r3, [sl, #0x40]
003f7e74  d0 36 d3 e5                                      ldrb r3, [r3, #0x6d0]
003f7e78  00 00 53 e3                                      cmp r3, #0
003f7e7c  00 80 a0 11                                      movne r8, r0
003f7e80  0b 00 00 1a                                      bne #0x3f7eb4
003f7e84  fa fd ff ea                                      b #0x3f7674
003f7e88  08 10 a0 e1                                      mov r1, r8
003f7e8c  01 20 a0 e3                                      mov r2, #1
003f7e90  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f7e94  77 d9 fd eb                                      bl #0x36e478
003f7e98  40 10 9a e5                                      ldr r1, [sl, #0x40]
003f7e9c  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f7ea0  01 20 a0 e3                                      mov r2, #1
003f7ea4  6d 1e 81 e2                                      add r1, r1, #0x6d0
003f7ea8  04 10 81 e2                                      add r1, r1, #4
003f7eac  c0 6f fe eb                                      bl #0x393db4
003f7eb0  01 80 88 e2                                      add r8, r8, #1
003f7eb4  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f7eb8  01 10 a0 e3                                      mov r1, #1
003f7ebc  03 db fd eb                                      bl #0x36ead0
003f7ec0  00 00 58 e1                                      cmp r8, r0
003f7ec4  ef ff ff ba                                      blt #0x3f7e88
003f7ec8  e9 fd ff ea                                      b #0x3f7674
003f7ecc  30 16 10 eb                                      bl #0x7fd794
003f7ed0  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f7ed4  00 00 53 e3                                      cmp r3, #0
003f7ed8  04 00 00 0a                                      beq #0x3f7ef0
003f7edc  38 00 97 e5                                      ldr r0, [r7, #0x38]
003f7ee0  ac 31 d0 e5                                      ldrb r3, [r0, #0x1ac]
003f7ee4  00 00 53 e3                                      cmp r3, #0
003f7ee8  00 00 00 1a                                      bne #0x3f7ef0
003f7eec  3b 23 fd eb                                      bl #0x340be0
003f7ef0  04 00 a0 e1                                      mov r0, r4
003f7ef4  00 10 a0 e3                                      mov r1, #0
003f7ef8  66 e2 ff eb                                      bl #0x3f0898
003f7efc  e3 fb ff ea                                      b #0x3f6e90
003f7f00  f5 30 d4 e5                                      ldrb r3, [r4, #0xf5]
003f7f04  00 00 53 e3                                      cmp r3, #0
003f7f08  e0 fb ff 0a                                      beq #0x3f6e90
003f7f0c  c6 fb ff ea                                      b #0x3f6e2c
003f7f10  d2 c9 00 eb                                      bl #0x42a660
003f7f14  00 10 a0 e3                                      mov r1, #0
003f7f18  5b c8 00 eb                                      bl #0x42a08c
003f7f1c  8b ff ff ea                                      b #0x3f7d50
003f7f20  0a 10 a0 e1                                      mov r1, sl
003f7f24  07 00 a0 e1                                      mov r0, r7
003f7f28  b6 d8 00 eb                                      bl #0x42e208
003f7f2c  70 ff ff ea                                      b #0x3f7cf4
003f7f30  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f7f34  4e dc fd eb                                      bl #0x36f074
003f7f38  00 00 50 e3                                      cmp r0, #0
003f7f3c  ba fb ff 0a                                      beq #0x3f6e2c
003f7f40  40 30 9a e5                                      ldr r3, [sl, #0x40]
003f7f44  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
003f7f48  00 00 53 e3                                      cmp r3, #0
003f7f4c  b6 fb ff 1a                                      bne #0x3f6e2c
003f7f50  ac fb ff ea                                      b #0x3f6e08
003f7f54  0c 24 10 eb                                      bl #0x800f8c
003f7f58  00 30 90 e5                                      ldr r3, [r0]
003f7f5c  0f e0 a0 e1                                      mov lr, pc
003f7f60  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
003f7f64  03 10 a0 e3                                      mov r1, #3
003f7f68  00 30 90 e5                                      ldr r3, [r0]
003f7f6c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
003f7f70  0f e0 a0 e1                                      mov lr, pc
003f7f74  08 f0 93 e5                                      ldr pc, [r3, #8]
003f7f78  10 fb ff ea                                      b #0x3f6bc0
003f7f7c  04 16 10 eb                                      bl #0x7fd794
003f7f80  05 30 d0 e5                                      ldrb r3, [r0, #5]
003f7f84  00 00 53 e3                                      cmp r3, #0
003f7f88  00 80 97 05                                      ldreq r8, [r7]
003f7f8c  00 80 98 15                                      ldrne r8, [r8]
003f7f90  28 70 8d e2                                      add r7, sp, #0x28
003f7f94  08 70 47 e2                                      sub r7, r7, #8
003f7f98  07 00 a0 e1                                      mov r0, r7
003f7f9c  66 7b fc eb                                      bl #0x316d3c
003f7fa0  04 00 a0 e1                                      mov r0, r4
003f7fa4  07 10 a0 e1                                      mov r1, r7
003f7fa8  08 20 a0 e1                                      mov r2, r8
003f7fac  11 e2 ff eb                                      bl #0x3f07f8
003f7fb0  00 00 50 e3                                      cmp r0, #0
003f7fb4  79 00 00 1a                                      bne #0x3f81a0
003f7fb8  0c 31 94 e5                                      ldr r3, [r4, #0x10c]
003f7fbc  78 20 a0 e3                                      mov r2, #0x78
003f7fc0  00 20 c3 e5                                      strb r2, [r3]
003f7fc4  08 11 94 e5                                      ldr r1, [r4, #0x108]
003f7fc8  0c 01 94 e5                                      ldr r0, [r4, #0x10c]
003f7fcc  00 00 51 e1                                      cmp r1, r0
003f7fd0  70 00 00 0a                                      beq #0x3f8198
003f7fd4  a8 20 8d e2                                      add r2, sp, #0xa8
003f7fd8  02 30 a0 e1                                      mov r3, r2
003f7fdc  2e c0 a0 e3                                      mov ip, #0x2e
003f7fe0  04 20 42 e2                                      sub r2, r2, #4
003f7fe4  a4 c0 cd e5                                      strb ip, [sp, #0xa4]
003f7fe8  05 5b fd eb                                      bl #0x34ec04
003f7fec  08 21 94 e5                                      ldr r2, [r4, #0x108]
003f7ff0  02 00 50 e1                                      cmp r0, r2
003f7ff4  67 00 00 0a                                      beq #0x3f8198
003f7ff8  0c 11 94 e5                                      ldr r1, [r4, #0x10c]
003f7ffc  00 30 61 e0                                      rsb r3, r1, r0
003f8000  01 00 73 e3                                      cmn r3, #1
003f8004  63 00 00 0a                                      beq #0x3f8198
003f8008  01 ab 8d e2                                      add sl, sp, #0x400
003f800c  0c a0 8a e2                                      add sl, sl, #0xc
003f8010  02 20 61 e0                                      rsb r2, r1, r2
003f8014  02 00 53 e1                                      cmp r3, r2
003f8018  03 20 81 90                                      addls r2, r1, r3
003f801c  02 20 81 80                                      addhi r2, r1, r2
003f8020  f8 80 84 e2                                      add r8, r4, #0xf8
003f8024  0a 00 a0 e1                                      mov r0, sl
003f8028  1c a4 8d e5                                      str sl, [sp, #0x41c]
003f802c  20 a4 8d e5                                      str sl, [sp, #0x420]
003f8030  ac 65 fc eb                                      bl #0x3116e8
003f8034  0a 00 58 e1                                      cmp r8, sl
003f8038  03 00 00 0a                                      beq #0x3f804c
003f803c  08 00 a0 e1                                      mov r0, r8
003f8040  20 14 9d e5                                      ldr r1, [sp, #0x420]
003f8044  1c 24 9d e5                                      ldr r2, [sp, #0x41c]
003f8048  64 62 fc eb                                      bl #0x3109e0
003f804c  0a 00 a0 e1                                      mov r0, sl
003f8050  55 6e fc eb                                      bl #0x3139ac
003f8054  48 16 1f e5                                      ldr r1, [pc, #-0x648]
003f8058  08 00 a0 e1                                      mov r0, r8
003f805c  01 10 8f e0                                      add r1, pc, r1
003f8060  c6 e6 ff eb                                      bl #0x3f1b80
003f8064  07 00 a0 e1                                      mov r0, r7
003f8068  55 7a fc eb                                      bl #0x3169c4
003f806c  70 fc ff ea                                      b #0x3f7234
003f8070  60 76 1f e5                                      ldr r7, [pc, #-0x660]
003f8074  07 30 95 e7                                      ldr r3, [r5, r7]
003f8078  cc 10 93 e5                                      ldr r1, [r3, #0xcc]
003f807c  d0 20 93 e5                                      ldr r2, [r3, #0xd0]
003f8080  02 00 51 e1                                      cmp r1, r2
003f8084  29 00 00 0a                                      beq #0x3f8130
003f8088  e8 10 93 e5                                      ldr r1, [r3, #0xe8]
003f808c  45 2f 8d e2                                      add r2, sp, #0x114
003f8090  eb 0f 8d e2                                      add r0, sp, #0x3ac
003f8094  1c 00 8d e5                                      str r0, [sp, #0x1c]
003f8098  13 70 fc eb                                      bl #0x3140ec
003f809c  88 16 1f e5                                      ldr r1, [pc, #-0x688]
003f80a0  88 b6 1f e5                                      ldr fp, [pc, #-0x688]
003f80a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003f80a8  01 10 8f e0                                      add r1, pc, r1
003f80ac  b3 e6 ff eb                                      bl #0x3f1b80
003f80b0  43 2f 8d e2                                      add r2, sp, #0x10c
003f80b4  e5 af 8d e2                                      add sl, sp, #0x394
003f80b8  11 9e 8d e2                                      add sb, sp, #0x110
003f80bc  df 8f 8d e2                                      add r8, sp, #0x37c
003f80c0  0b b0 8f e0                                      add fp, pc, fp
003f80c4  18 20 8d e5                                      str r2, [sp, #0x18]
003f80c8  c0 13 9d e5                                      ldr r1, [sp, #0x3c0]
003f80cc  09 20 a0 e1                                      mov r2, sb
003f80d0  0a 00 a0 e1                                      mov r0, sl
003f80d4  04 70 fc eb                                      bl #0x3140ec
003f80d8  0b 10 a0 e1                                      mov r1, fp
003f80dc  18 20 9d e5                                      ldr r2, [sp, #0x18]
003f80e0  08 00 a0 e1                                      mov r0, r8
003f80e4  00 70 fc eb                                      bl #0x3140ec
003f80e8  0a 10 a0 e1                                      mov r1, sl
003f80ec  08 20 a0 e1                                      mov r2, r8
003f80f0  04 00 a0 e1                                      mov r0, r4
003f80f4  91 ee ff eb                                      bl #0x3f3b40
003f80f8  00 30 a0 e1                                      mov r3, r0
003f80fc  08 00 a0 e1                                      mov r0, r8
003f8100  10 30 8d e5                                      str r3, [sp, #0x10]
003f8104  28 6e fc eb                                      bl #0x3139ac
003f8108  0a 00 a0 e1                                      mov r0, sl
003f810c  26 6e fc eb                                      bl #0x3139ac
003f8110  10 30 9d e5                                      ldr r3, [sp, #0x10]
003f8114  00 00 53 e3                                      cmp r3, #0
003f8118  ea ff ff 0a                                      beq #0x3f80c8
003f811c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003f8120  21 6e fc eb                                      bl #0x3139ac
003f8124  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f8128  00 00 53 e3                                      cmp r3, #0
003f812c  20 fc ff 1a                                      bne #0x3f71b4
003f8130  07 10 95 e7                                      ldr r1, [r5, r7]
003f8134  18 27 1f e5                                      ldr r2, [pc, #-0x718]
003f8138  18 37 1f e5                                      ldr r3, [pc, #-0x718]
003f813c  98 70 8d e2                                      add r7, sp, #0x98
003f8140  04 70 47 e2                                      sub r7, r7, #4
003f8144  38 10 91 e5                                      ldr r1, [r1, #0x38]
003f8148  01 c0 a0 e3                                      mov ip, #1
003f814c  02 20 8f e0                                      add r2, pc, r2
003f8150  03 30 8f e0                                      add r3, pc, r3
003f8154  00 80 a0 e3                                      mov r8, #0
003f8158  07 00 a0 e1                                      mov r0, r7
003f815c  00 11 8d e8                                      stm sp, {r8, ip}
003f8160  6f 4d fd eb                                      bl #0x34b724
003f8164  08 10 a0 e1                                      mov r1, r8
003f8168  07 00 a0 e1                                      mov r0, r7
003f816c  13 1f fd eb                                      bl #0x33fdc0
003f8170  00 10 50 e2                                      subs r1, r0, #0
003f8174  02 00 00 0a                                      beq #0x3f8184
003f8178  f4 30 91 e5                                      ldr r3, [r1, #0xf4]
003f817c  04 00 53 e3                                      cmp r3, #4
003f8180  00 00 00 0a                                      beq #0x3f8188
003f8184  00 10 a0 e3                                      mov r1, #0
003f8188  04 00 a0 e1                                      mov r0, r4
003f818c  de e4 ff eb                                      bl #0x3f150c
003f8190  38 30 94 e5                                      ldr r3, [r4, #0x38]
003f8194  06 fc ff ea                                      b #0x3f71b4
003f8198  f8 80 84 e2                                      add r8, r4, #0xf8
003f819c  b0 ff ff ea                                      b #0x3f8064
003f81a0  04 00 a0 e1                                      mov r0, r4
003f81a4  07 10 a0 e1                                      mov r1, r7
003f81a8  3f e0 ff eb                                      bl #0x3f02ac
003f81ac  f8 80 84 e2                                      add r8, r4, #0xf8
003f81b0  ab ff ff ea                                      b #0x3f8064
003f81b4  40 00 98 e5                                      ldr r0, [r8, #0x40]
003f81b8  ad db fd eb                                      bl #0x36f074
003f81bc  00 00 50 e3                                      cmp r0, #0
003f81c0  35 fb ff 0a                                      beq #0x3f6e9c
003f81c4  40 00 98 e5                                      ldr r0, [r8, #0x40]
003f81c8  f1 d9 fd eb                                      bl #0x36e994
003f81cc  00 00 50 e3                                      cmp r0, #0
003f81d0  31 fb ff 0a                                      beq #0x3f6e9c
003f81d4  40 00 98 e5                                      ldr r0, [r8, #0x40]
003f81d8  b7 d9 fd eb                                      bl #0x36e8bc
003f81dc  00 00 50 e3                                      cmp r0, #0
003f81e0  2d fb ff 1a                                      bne #0x3f6e9c
003f81e4  f6 fc ff ea                                      b #0x3f75c4
003f81e8  00 00 53 e3                                      cmp r3, #0
003f81ec  16 8e 83 12                                      addne r8, r3, #0x160
003f81f0  cc 37 1f 05                                      ldreq r3, [pc, #-0x7cc]
003f81f4  03 80 95 07                                      ldreq r8, [r5, r3]
003f81f8  17 fb ff ea                                      b #0x3f6e5c
003f81fc  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f8200  00 10 a0 e3                                      mov r1, #0
003f8204  01 20 a0 e3                                      mov r2, #1
003f8208  9a d8 fd eb                                      bl #0x36e478
003f820c  60 86 90 e5                                      ldr r8, [r0, #0x660]
003f8210  00 00 58 e3                                      cmp r8, #0
003f8214  16 fd ff 0a                                      beq #0x3f7674
003f8218  60 31 98 e5                                      ldr r3, [r8, #0x160]
003f821c  f4 27 1f e5                                      ldr r2, [pc, #-0x7f4]
003f8220  00 c0 a0 e3                                      mov ip, #0
003f8224  88 30 8d e5                                      str r3, [sp, #0x88]
003f8228  64 31 98 e5                                      ldr r3, [r8, #0x164]
003f822c  02 00 95 e7                                      ldr r0, [r5, r2]
003f8230  88 a0 8d e2                                      add sl, sp, #0x88
003f8234  8c 30 8d e5                                      str r3, [sp, #0x8c]
003f8238  68 e1 98 e5                                      ldr lr, [r8, #0x168]
003f823c  a8 20 8d e2                                      add r2, sp, #0xa8
003f8240  08 20 42 e2                                      sub r2, r2, #8
003f8244  90 e0 8d e5                                      str lr, [sp, #0x90]
003f8248  0c 30 a0 e1                                      mov r3, ip
003f824c  00 e0 a0 e3                                      mov lr, #0
003f8250  0a 10 a0 e1                                      mov r1, sl
003f8254  a0 e0 8d e5                                      str lr, [sp, #0xa0]
003f8258  00 c0 8d e5                                      str ip, [sp]
003f825c  04 c0 8d e5                                      str ip, [sp, #4]
003f8260  08 c0 8d e5                                      str ip, [sp, #8]
003f8264  a7 b4 04 eb                                      bl #0x525508
003f8268  00 00 50 e3                                      cmp r0, #0
003f826c  05 00 00 0a                                      beq #0x3f8288
003f8270  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
003f8274  0a 10 a0 e1                                      mov r1, sl
003f8278  08 00 a0 e1                                      mov r0, r8
003f827c  01 20 a0 e3                                      mov r2, #1
003f8280  90 30 8d e5                                      str r3, [sp, #0x90]
003f8284  ca 6e fe eb                                      bl #0x393db4
003f8288  16 9e 88 e2                                      add sb, r8, #0x160
003f828c  07 a0 95 e7                                      ldr sl, [r5, r7]
003f8290  00 80 a0 e3                                      mov r8, #0
003f8294  08 00 00 ea                                      b #0x3f82bc
003f8298  08 10 a0 e1                                      mov r1, r8
003f829c  01 20 a0 e3                                      mov r2, #1
003f82a0  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f82a4  73 d8 fd eb                                      bl #0x36e478
003f82a8  09 10 a0 e1                                      mov r1, sb
003f82ac  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f82b0  01 20 a0 e3                                      mov r2, #1
003f82b4  be 6e fe eb                                      bl #0x393db4
003f82b8  01 80 88 e2                                      add r8, r8, #1
003f82bc  40 00 9a e5                                      ldr r0, [sl, #0x40]
003f82c0  01 10 a0 e3                                      mov r1, #1
003f82c4  01 da fd eb                                      bl #0x36ead0
003f82c8  00 00 58 e1                                      cmp r8, r0
003f82cc  f1 ff ff ba                                      blt #0x3f8298
003f82d0  e7 fc ff ea                                      b #0x3f7674
003f82d4  0d 58 fc eb                                      bl #0x30e310

; FUNCTION 0x003f82d8, declared_size=2408, range_size=2408, mode=arm
; class-group: Level
; alias: _ZN5Level6UpdateEb
; demangled: Level::Update(bool)
; decoder-mode: arm
003f82d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f82dc  e0 48 9f e5                                      ldr r4, [pc, #0x8e0]
003f82e0  e0 68 9f e5                                      ldr r6, [pc, #0x8e0]
003f82e4  00 50 a0 e1                                      mov r5, r0
003f82e8  04 40 8f e0                                      add r4, pc, r4
003f82ec  06 30 94 e7                                      ldr r3, [r4, r6]
003f82f0  d4 08 9f e5                                      ldr r0, [pc, #0x8d4]
003f82f4  49 df 4d e2                                      sub sp, sp, #0x124
003f82f8  00 30 93 e5                                      ldr r3, [r3]
003f82fc  00 00 8f e0                                      add r0, pc, r0
003f8300  01 70 a0 e1                                      mov r7, r1
003f8304  1c 31 8d e5                                      str r3, [sp, #0x11c]
003f8308  e9 6c fc eb                                      bl #0x3136b4
003f830c  30 31 95 e5                                      ldr r3, [r5, #0x130]
003f8310  26 00 53 e3                                      cmp r3, #0x26
003f8314  0d 00 00 0a                                      beq #0x3f8350
003f8318  00 00 57 e3                                      cmp r7, #0
003f831c  0b 00 00 1a                                      bne #0x3f8350
003f8320  05 00 a0 e1                                      mov r0, r5
003f8324  99 f9 ff eb                                      bl #0x3f6990
003f8328  a0 08 9f e5                                      ldr r0, [pc, #0x8a0]
003f832c  00 00 8f e0                                      add r0, pc, r0
003f8330  e0 6c fc eb                                      bl #0x3136b8
003f8334  06 30 94 e7                                      ldr r3, [r4, r6]
003f8338  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
003f833c  00 30 93 e5                                      ldr r3, [r3]
003f8340  03 00 52 e1                                      cmp r2, r3
003f8344  1d 02 00 1a                                      bne #0x3f8bc0
003f8348  49 df 8d e2                                      add sp, sp, #0x124
003f834c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f8350  69 c8 00 eb                                      bl #0x42a4fc
003f8354  d8 30 90 e5                                      ldr r3, [r0, #0xd8]
003f8358  00 70 a0 e1                                      mov r7, r0
003f835c  00 00 53 e3                                      cmp r3, #0
003f8360  11 00 00 1a                                      bne #0x3f83ac
003f8364  68 a8 9f e5                                      ldr sl, [pc, #0x868]
003f8368  41 7f 8d e2                                      add r7, sp, #0x104
003f836c  0a 80 94 e7                                      ldr r8, [r4, sl]
003f8370  08 00 a0 e1                                      mov r0, r8
003f8374  43 fd fc eb                                      bl #0x337888
003f8378  58 18 9f e5                                      ldr r1, [pc, #0x858]
003f837c  70 20 8d e2                                      add r2, sp, #0x70
003f8380  07 00 a0 e1                                      mov r0, r7
003f8384  01 10 8f e0                                      add r1, pc, r1
003f8388  57 6f fc eb                                      bl #0x3140ec
003f838c  08 00 a0 e1                                      mov r0, r8
003f8390  07 10 a0 e1                                      mov r1, r7
003f8394  bb fd fc eb                                      bl #0x337a88
003f8398  00 00 50 e3                                      cmp r0, #0
003f839c  0c 00 00 0a                                      beq #0x3f83d4
003f83a0  07 00 a0 e1                                      mov r0, r7
003f83a4  80 6d fc eb                                      bl #0x3139ac
003f83a8  de ff ff ea                                      b #0x3f8328
003f83ac  c8 80 87 e2                                      add r8, r7, #0xc8
003f83b0  08 00 a0 e1                                      mov r0, r8
003f83b4  cc 10 97 e5                                      ldr r1, [r7, #0xcc]
003f83b8  e0 e5 ff eb                                      bl #0x3f1b40
003f83bc  00 30 a0 e3                                      mov r3, #0
003f83c0  d8 30 87 e5                                      str r3, [r7, #0xd8]
003f83c4  d4 80 87 e5                                      str r8, [r7, #0xd4]
003f83c8  d0 80 87 e5                                      str r8, [r7, #0xd0]
003f83cc  cc 30 87 e5                                      str r3, [r7, #0xcc]
003f83d0  e3 ff ff ea                                      b #0x3f8364
003f83d4  08 00 a0 e1                                      mov r0, r8
003f83d8  2a fd fc eb                                      bl #0x337888
003f83dc  f8 17 9f e5                                      ldr r1, [pc, #0x7f8]
003f83e0  ec 90 8d e2                                      add sb, sp, #0xec
003f83e4  6c 20 8d e2                                      add r2, sp, #0x6c
003f83e8  01 10 8f e0                                      add r1, pc, r1
003f83ec  09 00 a0 e1                                      mov r0, sb
003f83f0  3d 6f fc eb                                      bl #0x3140ec
003f83f4  09 10 a0 e1                                      mov r1, sb
003f83f8  08 00 a0 e1                                      mov r0, r8
003f83fc  a1 fd fc eb                                      bl #0x337a88
003f8400  00 b0 a0 e1                                      mov fp, r0
003f8404  09 00 a0 e1                                      mov r0, sb
003f8408  67 6d fc eb                                      bl #0x3139ac
003f840c  07 00 a0 e1                                      mov r0, r7
003f8410  65 6d fc eb                                      bl #0x3139ac
003f8414  00 00 5b e3                                      cmp fp, #0
003f8418  c2 ff ff 1a                                      bne #0x3f8328
003f841c  48 31 95 e5                                      ldr r3, [r5, #0x148]
003f8420  01 00 73 e3                                      cmn r3, #1
003f8424  04 01 00 1a                                      bne #0x3f883c
003f8428  b0 87 9f e5                                      ldr r8, [pc, #0x7b0]
003f842c  08 30 94 e7                                      ldr r3, [r4, r8]
003f8430  00 10 a0 e3                                      mov r1, #0
003f8434  01 20 a0 e3                                      mov r2, #1
003f8438  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f843c  0d d8 fd eb                                      bl #0x36e478
003f8440  60 06 90 e5                                      ldr r0, [r0, #0x660]
003f8444  00 00 50 e3                                      cmp r0, #0
003f8448  01 00 00 0a                                      beq #0x3f8454
003f844c  00 10 a0 e3                                      mov r1, #0
003f8450  0a 10 ff eb                                      bl #0x3bc480
003f8454  44 31 d5 e5                                      ldrb r3, [r5, #0x144]
003f8458  00 00 53 e3                                      cmp r3, #0
003f845c  4e 01 00 0a                                      beq #0x3f899c
003f8460  08 30 94 e7                                      ldr r3, [r4, r8]
003f8464  40 30 93 e5                                      ldr r3, [r3, #0x40]
003f8468  14 37 93 e5                                      ldr r3, [r3, #0x714]
003f846c  00 00 53 e3                                      cmp r3, #0
003f8470  45 01 00 0a                                      beq #0x3f898c
003f8474  94 01 95 e5                                      ldr r0, [r5, #0x194]
003f8478  12 05 02 eb                                      bl #0x4798c8
003f847c  08 20 94 e7                                      ldr r2, [r4, r8]
003f8480  38 30 95 e5                                      ldr r3, [r5, #0x38]
003f8484  10 20 92 e5                                      ldr r2, [r2, #0x10]
003f8488  00 00 53 e3                                      cmp r3, #0
003f848c  1c 70 92 e5                                      ldr r7, [r2, #0x1c]
003f8490  4c 01 00 0a                                      beq #0x3f89c8
003f8494  cc c1 93 e5                                      ldr ip, [r3, #0x1cc]
003f8498  d0 21 93 e5                                      ldr r2, [r3, #0x1d0]
003f849c  d4 31 93 e5                                      ldr r3, [r3, #0x1d4]
003f84a0  30 10 8d e2                                      add r1, sp, #0x30
003f84a4  07 00 a0 e1                                      mov r0, r7
003f84a8  fe 95 a0 e3                                      mov sb, #0x3f800000
003f84ac  30 c0 8d e5                                      str ip, [sp, #0x30]
003f84b0  34 20 8d e5                                      str r2, [sp, #0x34]
003f84b4  38 30 8d e5                                      str r3, [sp, #0x38]
003f84b8  3c 90 8d e5                                      str sb, [sp, #0x3c]
003f84bc  11 44 06 eb                                      bl #0x589508
003f84c0  08 70 94 e7                                      ldr r7, [r4, r8]
003f84c4  44 00 97 e5                                      ldr r0, [r7, #0x44]
003f84c8  0e 4e fd eb                                      bl #0x34bd08
003f84cc  97 c8 ff eb                                      bl #0x3ea730
003f84d0  00 20 a0 e3                                      mov r2, #0
003f84d4  00 30 a0 e3                                      mov r3, #0
003f84d8  56 c3 ff eb                                      bl #0x3e9238
003f84dc  05 68 ff eb                                      bl #0x3d24f8
003f84e0  09 10 a0 e1                                      mov r1, sb
003f84e4  38 00 97 e5                                      ldr r0, [r7, #0x38]
003f84e8  4c 48 fd eb                                      bl #0x34a620
003f84ec  31 59 ff eb                                      bl #0x3ce9b8
003f84f0  05 00 a0 e1                                      mov r0, r5
003f84f4  dd 04 00 eb                                      bl #0x3f9870
003f84f8  e4 36 9f e5                                      ldr r3, [pc, #0x6e4]
003f84fc  03 00 94 e7                                      ldr r0, [r4, r3]
003f8500  23 78 02 eb                                      bl #0x496594
003f8504  2c 31 95 e5                                      ldr r3, [r5, #0x12c]
003f8508  00 00 53 e3                                      cmp r3, #0
003f850c  04 00 00 0a                                      beq #0x3f8524
003f8510  d0 26 9f e5                                      ldr r2, [pc, #0x6d0]
003f8514  02 20 94 e7                                      ldr r2, [r4, r2]
003f8518  00 20 92 e5                                      ldr r2, [r2]
003f851c  02 00 53 e1                                      cmp r3, r2
003f8520  a1 01 00 0a                                      beq #0x3f8bac
003f8524  28 31 95 e5                                      ldr r3, [r5, #0x128]
003f8528  03 00 a0 e1                                      mov r0, r3
003f852c  00 30 93 e5                                      ldr r3, [r3]
003f8530  0f e0 a0 e1                                      mov lr, pc
003f8534  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003f8538  28 31 95 e5                                      ldr r3, [r5, #0x128]
003f853c  00 10 a0 e3                                      mov r1, #0
003f8540  08 30 93 e5                                      ldr r3, [r3, #8]
003f8544  03 00 a0 e1                                      mov r0, r3
003f8548  00 30 93 e5                                      ldr r3, [r3]
003f854c  0f e0 a0 e1                                      mov lr, pc
003f8550  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
003f8554  28 31 95 e5                                      ldr r3, [r5, #0x128]
003f8558  4c 00 8d e2                                      add r0, sp, #0x4c
003f855c  08 10 93 e5                                      ldr r1, [r3, #8]
003f8560  06 7b 06 eb                                      bl #0x597180
003f8564  28 31 95 e5                                      ldr r3, [r5, #0x128]
003f8568  08 00 93 e5                                      ldr r0, [r3, #8]
003f856c  47 7b 06 eb                                      bl #0x597290
003f8570  00 10 a0 e1                                      mov r1, r0
003f8574  40 00 8d e2                                      add r0, sp, #0x40
003f8578  00 7b 06 eb                                      bl #0x597180
003f857c  48 10 9d e5                                      ldr r1, [sp, #0x48]
003f8580  54 00 9d e5                                      ldr r0, [sp, #0x54]
003f8584  88 57 fc eb                                      bl #0x30e3ac
003f8588  a4 11 95 e5                                      ldr r1, [r5, #0x1a4]
003f858c  86 57 fc eb                                      bl #0x30e3ac
003f8590  08 30 94 e7                                      ldr r3, [r4, r8]
003f8594  00 b0 a0 e1                                      mov fp, r0
003f8598  40 10 9d e5                                      ldr r1, [sp, #0x40]
003f859c  10 30 93 e5                                      ldr r3, [r3, #0x10]
003f85a0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
003f85a4  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
003f85a8  7f 57 fc eb                                      bl #0x30e3ac
003f85ac  9c 11 95 e5                                      ldr r1, [r5, #0x19c]
003f85b0  7d 57 fc eb                                      bl #0x30e3ac
003f85b4  58 14 97 e5                                      ldr r1, [r7, #0x458]
003f85b8  eb 59 fc eb                                      bl #0x30ed6c
003f85bc  44 10 9d e5                                      ldr r1, [sp, #0x44]
003f85c0  00 90 a0 e1                                      mov sb, r0
003f85c4  50 00 9d e5                                      ldr r0, [sp, #0x50]
003f85c8  77 57 fc eb                                      bl #0x30e3ac
003f85cc  a0 11 95 e5                                      ldr r1, [r5, #0x1a0]
003f85d0  75 57 fc eb                                      bl #0x30e3ac
003f85d4  5c 14 97 e5                                      ldr r1, [r7, #0x45c]
003f85d8  e3 59 fc eb                                      bl #0x30ed6c
003f85dc  60 14 97 e5                                      ldr r1, [r7, #0x460]
003f85e0  00 30 a0 e1                                      mov r3, r0
003f85e4  0b 00 a0 e1                                      mov r0, fp
003f85e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003f85ec  de 59 fc eb                                      bl #0x30ed6c
003f85f0  09 10 a0 e1                                      mov r1, sb
003f85f4  00 70 a0 e1                                      mov r7, r0
003f85f8  09 00 a0 e1                                      mov r0, sb
003f85fc  da 59 fc eb                                      bl #0x30ed6c
003f8600  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f8604  00 90 a0 e1                                      mov sb, r0
003f8608  03 10 a0 e1                                      mov r1, r3
003f860c  03 00 a0 e1                                      mov r0, r3
003f8610  d5 59 fc eb                                      bl #0x30ed6c
003f8614  00 10 a0 e1                                      mov r1, r0
003f8618  09 00 a0 e1                                      mov r0, sb
003f861c  60 59 fc eb                                      bl #0x30eba4
003f8620  07 10 a0 e1                                      mov r1, r7
003f8624  00 90 a0 e1                                      mov sb, r0
003f8628  07 00 a0 e1                                      mov r0, r7
003f862c  ce 59 fc eb                                      bl #0x30ed6c
003f8630  00 10 a0 e1                                      mov r1, r0
003f8634  09 00 a0 e1                                      mov r0, sb
003f8638  59 59 fc eb                                      bl #0x30eba4
003f863c  98 58 fc eb                                      bl #0x30e8a4
003f8640  de 56 fc eb                                      bl #0x30e1c0
003f8644  15 58 fc eb                                      bl #0x30e6a0
003f8648  00 10 a0 e3                                      mov r1, #0
003f864c  00 90 a0 e1                                      mov sb, r0
003f8650  0b 00 a0 e1                                      mov r0, fp
003f8654  2c 58 fc eb                                      bl #0x30e70c
003f8658  08 30 94 e7                                      ldr r3, [r4, r8]
003f865c  38 70 95 e5                                      ldr r7, [r5, #0x38]
003f8660  00 00 50 e3                                      cmp r0, #0
003f8664  10 30 93 e5                                      ldr r3, [r3, #0x10]
003f8668  02 91 89 12                                      addne sb, sb, #0x80000000
003f866c  00 00 57 e3                                      cmp r7, #0
003f8670  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f8674  20 30 8d e5                                      str r3, [sp, #0x20]
003f8678  e8 00 00 0a                                      beq #0x3f8a20
003f867c  d8 01 97 e5                                      ldr r0, [r7, #0x1d8]
003f8680  b7 58 fc eb                                      bl #0x30e964
003f8684  09 10 a0 e1                                      mov r1, sb
003f8688  45 59 fc eb                                      bl #0x30eba4
003f868c  00 b0 a0 e1                                      mov fp, r0
003f8690  dc 01 97 e5                                      ldr r0, [r7, #0x1dc]
003f8694  b2 58 fc eb                                      bl #0x30e964
003f8698  09 10 a0 e1                                      mov r1, sb
003f869c  40 59 fc eb                                      bl #0x30eba4
003f86a0  1e 3e 87 e2                                      add r3, r7, #0x1e0
003f86a4  00 20 a0 e1                                      mov r2, r0
003f86a8  0b 10 a0 e1                                      mov r1, fp
003f86ac  20 00 9d e5                                      ldr r0, [sp, #0x20]
003f86b0  10 67 fd eb                                      bl #0x3522f8
003f86b4  30 75 9f e5                                      ldr r7, [pc, #0x530]
003f86b8  0a b0 94 e7                                      ldr fp, [r4, sl]
003f86bc  d4 90 8d e2                                      add sb, sp, #0xd4
003f86c0  07 70 8f e0                                      add r7, pc, r7
003f86c4  0b 00 a0 e1                                      mov r0, fp
003f86c8  6e fc fc eb                                      bl #0x337888
003f86cc  68 20 8d e2                                      add r2, sp, #0x68
003f86d0  09 00 a0 e1                                      mov r0, sb
003f86d4  07 10 a0 e1                                      mov r1, r7
003f86d8  83 6e fc eb                                      bl #0x3140ec
003f86dc  09 10 a0 e1                                      mov r1, sb
003f86e0  0b 00 a0 e1                                      mov r0, fp
003f86e4  e7 fc fc eb                                      bl #0x337a88
003f86e8  08 b0 94 e7                                      ldr fp, [r4, r8]
003f86ec  00 30 a0 e1                                      mov r3, r0
003f86f0  09 00 a0 e1                                      mov r0, sb
003f86f4  10 20 9b e5                                      ldr r2, [fp, #0x10]
003f86f8  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
003f86fc  30 94 d2 e5                                      ldrb sb, [r2, #0x430]
003f8700  1c 30 8d e5                                      str r3, [sp, #0x1c]
003f8704  a8 6c fc eb                                      bl #0x3139ac
003f8708  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f870c  09 00 53 e1                                      cmp r3, sb
003f8710  12 01 00 0a                                      beq #0x3f8b60
003f8714  0a b0 94 e7                                      ldr fp, [r4, sl]
003f8718  d0 74 9f e5                                      ldr r7, [pc, #0x4d0]
003f871c  a4 90 8d e2                                      add sb, sp, #0xa4
003f8720  0b 00 a0 e1                                      mov r0, fp
003f8724  07 70 8f e0                                      add r7, pc, r7
003f8728  56 fc fc eb                                      bl #0x337888
003f872c  60 20 8d e2                                      add r2, sp, #0x60
003f8730  09 00 a0 e1                                      mov r0, sb
003f8734  07 10 a0 e1                                      mov r1, r7
003f8738  6b 6e fc eb                                      bl #0x3140ec
003f873c  09 10 a0 e1                                      mov r1, sb
003f8740  0b 00 a0 e1                                      mov r0, fp
003f8744  cf fc fc eb                                      bl #0x337a88
003f8748  08 b0 94 e7                                      ldr fp, [r4, r8]
003f874c  00 30 a0 e1                                      mov r3, r0
003f8750  09 00 a0 e1                                      mov r0, sb
003f8754  10 20 9b e5                                      ldr r2, [fp, #0x10]
003f8758  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
003f875c  31 94 d2 e5                                      ldrb sb, [r2, #0x431]
003f8760  1c 30 8d e5                                      str r3, [sp, #0x1c]
003f8764  90 6c fc eb                                      bl #0x3139ac
003f8768  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f876c  09 00 53 e1                                      cmp r3, sb
003f8770  e7 00 00 0a                                      beq #0x3f8b14
003f8774  44 11 d5 e5                                      ldrb r1, [r5, #0x144]
003f8778  00 00 51 e3                                      cmp r1, #0
003f877c  11 00 00 1a                                      bne #0x3f87c8
003f8780  6c 34 9f e5                                      ldr r3, [pc, #0x46c]
003f8784  03 30 94 e7                                      ldr r3, [r4, r3]
003f8788  00 70 93 e5                                      ldr r7, [r3]
003f878c  32 30 d7 e5                                      ldrb r3, [r7, #0x32]
003f8790  00 00 53 e3                                      cmp r3, #0
003f8794  84 00 00 0a                                      beq #0x3f89ac
003f8798  07 00 a0 e1                                      mov r0, r7
003f879c  1c ce fd eb                                      bl #0x36c014
003f87a0  00 c0 a0 e3                                      mov ip, #0
003f87a4  24 11 95 e5                                      ldr r1, [r5, #0x124]
003f87a8  0c 30 a0 e1                                      mov r3, ip
003f87ac  0c 20 a0 e1                                      mov r2, ip
003f87b0  07 00 a0 e1                                      mov r0, r7
003f87b4  00 c0 8d e5                                      str ip, [sp]
003f87b8  04 c0 8d e5                                      str ip, [sp, #4]
003f87bc  12 cc fd eb                                      bl #0x36b80c
003f87c0  01 30 a0 e3                                      mov r3, #1
003f87c4  31 30 c7 e5                                      strb r3, [r7, #0x31]
003f87c8  01 30 a0 e3                                      mov r3, #1
003f87cc  44 31 c5 e5                                      strb r3, [r5, #0x144]
003f87d0  05 00 a0 e1                                      mov r0, r5
003f87d4  c1 e0 ff eb                                      bl #0x3f0ae0
003f87d8  05 00 a0 e1                                      mov r0, r5
003f87dc  b7 e3 ff eb                                      bl #0x3f16c0
003f87e0  45 c7 00 eb                                      bl #0x42a4fc
003f87e4  0a a0 94 e7                                      ldr sl, [r4, sl]
003f87e8  20 00 8d e5                                      str r0, [sp, #0x20]
003f87ec  74 70 8d e2                                      add r7, sp, #0x74
003f87f0  0a 00 a0 e1                                      mov r0, sl
003f87f4  23 fc fc eb                                      bl #0x337888
003f87f8  f8 13 9f e5                                      ldr r1, [pc, #0x3f8]
003f87fc  58 20 8d e2                                      add r2, sp, #0x58
003f8800  07 00 a0 e1                                      mov r0, r7
003f8804  01 10 8f e0                                      add r1, pc, r1
003f8808  37 6e fc eb                                      bl #0x3140ec
003f880c  0a 00 a0 e1                                      mov r0, sl
003f8810  07 10 a0 e1                                      mov r1, r7
003f8814  9b fc fc eb                                      bl #0x337a88
003f8818  00 a0 a0 e1                                      mov sl, r0
003f881c  07 00 a0 e1                                      mov r0, r7
003f8820  61 6c fc eb                                      bl #0x3139ac
003f8824  00 00 5a e3                                      cmp sl, #0
003f8828  0f 00 00 1a                                      bne #0x3f886c
003f882c  c8 03 9f e5                                      ldr r0, [pc, #0x3c8]
003f8830  00 00 8f e0                                      add r0, pc, r0
003f8834  9f 6b fc eb                                      bl #0x3136b8
003f8838  bd fe ff ea                                      b #0x3f8334
003f883c  9c 83 9f e5                                      ldr r8, [pc, #0x39c]
003f8840  08 00 94 e7                                      ldr r0, [r4, r8]
003f8844  8e 9b fc eb                                      bl #0x31f684
003f8848  00 00 50 e3                                      cmp r0, #0
003f884c  f6 fe ff 0a                                      beq #0x3f842c
003f8850  a8 23 9f e5                                      ldr r2, [pc, #0x3a8]
003f8854  0b 30 a0 e1                                      mov r3, fp
003f8858  48 11 95 e5                                      ldr r1, [r5, #0x148]
003f885c  02 00 94 e7                                      ldr r0, [r4, r2]
003f8860  00 20 e0 e3                                      mvn r2, #0
003f8864  55 9f 01 eb                                      bl #0x4605c0
003f8868  ef fe ff ea                                      b #0x3f842c
003f886c  90 a3 9f e5                                      ldr sl, [pc, #0x390]
003f8870  20 00 9d e5                                      ldr r0, [sp, #0x20]
003f8874  8c 73 9f e5                                      ldr r7, [pc, #0x38c]
003f8878  0a a0 8f e0                                      add sl, pc, sl
003f887c  00 10 9a e5                                      ldr r1, [sl]
003f8880  ca c7 00 eb                                      bl #0x42a7b0
003f8884  00 10 9a e5                                      ldr r1, [sl]
003f8888  20 00 9d e5                                      ldr r0, [sp, #0x20]
003f888c  07 70 8f e0                                      add r7, pc, r7
003f8890  0f 00 51 e3                                      cmp r1, #0xf
003f8894  00 10 a0 d3                                      movle r1, #0
003f8898  01 10 a0 c3                                      movgt r1, #1
003f889c  07 c8 00 eb                                      bl #0x42a8c0
003f88a0  08 00 94 e7                                      ldr r0, [r4, r8]
003f88a4  00 a0 97 e5                                      ldr sl, [r7]
003f88a8  6f 9b fc eb                                      bl #0x31f66c
003f88ac  0a 00 60 e0                                      rsb r0, r0, sl
003f88b0  00 00 50 e3                                      cmp r0, #0
003f88b4  00 00 87 e5                                      str r0, [r7]
003f88b8  db ff ff ca                                      bgt #0x3f882c
003f88bc  48 33 9f e5                                      ldr r3, [pc, #0x348]
003f88c0  17 2b 0d e3                                      movw r2, #0xdb17
003f88c4  52 2b 42 e3                                      movt r2, #0x2b52
003f88c8  03 30 94 e7                                      ldr r3, [r4, r3]
003f88cc  24 20 8d e5                                      str r2, [sp, #0x24]
003f88d0  38 23 9f e5                                      ldr r2, [pc, #0x338]
003f88d4  00 a0 93 e5                                      ldr sl, [r3]
003f88d8  6b c2 0f e3                                      movw ip, #0xf26b
003f88dc  30 b3 9f e5                                      ldr fp, [pc, #0x330]
003f88e0  30 93 9f e5                                      ldr sb, [pc, #0x330]
003f88e4  da c0 40 e3                                      movt ip, #0xda
003f88e8  28 c0 8d e5                                      str ip, [sp, #0x28]
003f88ec  00 70 a0 e3                                      mov r7, #0
003f88f0  2c 20 8d e5                                      str r2, [sp, #0x2c]
003f88f4  01 a0 4a e2                                      sub sl, sl, #1
003f88f8  00 00 57 e3                                      cmp r7, #0
003f88fc  5d 00 00 0a                                      beq #0x3f8a78
003f8900  07 00 a0 e1                                      mov r0, r7
003f8904  0c 11 95 e5                                      ldr r1, [r5, #0x10c]
003f8908  83 56 fc eb                                      bl #0x30e31c
003f890c  00 00 50 e3                                      cmp r0, #0
003f8910  58 00 00 0a                                      beq #0x3f8a78
003f8914  07 00 a0 e1                                      mov r0, r7
003f8918  37 dc ff eb                                      bl #0x3ef9fc
003f891c  20 00 9d e5                                      ldr r0, [sp, #0x20]
003f8920  84 c7 00 eb                                      bl #0x42a738
003f8924  20 00 9d e5                                      ldr r0, [sp, #0x20]
003f8928  00 10 a0 e3                                      mov r1, #0
003f892c  e3 c7 00 eb                                      bl #0x42a8c0
003f8930  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
003f8934  08 50 94 e7                                      ldr r5, [r4, r8]
003f8938  00 10 a0 e3                                      mov r1, #0
003f893c  03 30 8f e0                                      add r3, pc, r3
003f8940  88 23 01 e3                                      movw r2, #0x1388
003f8944  00 20 83 e5                                      str r2, [r3]
003f8948  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f894c  01 20 a0 e1                                      mov r2, r1
003f8950  7b d7 fd eb                                      bl #0x36e744
003f8954  64 36 90 e5                                      ldr r3, [r0, #0x664]
003f8958  00 c0 a0 e3                                      mov ip, #0
003f895c  01 e0 a0 e3                                      mov lr, #1
003f8960  05 00 a0 e1                                      mov r0, r5
003f8964  07 10 a0 e1                                      mov r1, r7
003f8968  0c 20 a0 e1                                      mov r2, ip
003f896c  c3 3f c3 e1                                      bic r3, r3, r3, asr #31
003f8970  00 50 8d e8                                      stm sp, {ip, lr}
003f8974  08 c0 8d e5                                      str ip, [sp, #8]
003f8978  0c c0 8d e5                                      str ip, [sp, #0xc]
003f897c  10 c0 8d e5                                      str ip, [sp, #0x10]
003f8980  14 c0 8d e5                                      str ip, [sp, #0x14]
003f8984  0f cd fc eb                                      bl #0x32bdc8
003f8988  a7 ff ff ea                                      b #0x3f882c
003f898c  6c 32 9f e5                                      ldr r3, [pc, #0x26c]
003f8990  03 00 94 e7                                      ldr r0, [r4, r3]
003f8994  78 8e 01 eb                                      bl #0x45c37c
003f8998  b5 fe ff ea                                      b #0x3f8474
003f899c  08 30 94 e7                                      ldr r3, [r4, r8]
003f89a0  40 00 93 e5                                      ldr r0, [r3, #0x40]
003f89a4  82 01 fe eb                                      bl #0x378fb4
003f89a8  ac fe ff ea                                      b #0x3f8460
003f89ac  1c 11 95 e5                                      ldr r1, [r5, #0x11c]
003f89b0  7d ce a0 e3                                      mov ip, #0x7d0
003f89b4  07 00 a0 e1                                      mov r0, r7
003f89b8  01 20 a0 e3                                      mov r2, #1
003f89bc  00 c0 8d e5                                      str ip, [sp]
003f89c0  ec cc fd eb                                      bl #0x36bd78
003f89c4  75 ff ff ea                                      b #0x3f87a0
003f89c8  50 22 9f e5                                      ldr r2, [pc, #0x250]
003f89cc  02 20 94 e7                                      ldr r2, [r4, r2]
003f89d0  00 20 92 e5                                      ldr r2, [r2]
003f89d4  02 00 52 e3                                      cmp r2, #2
003f89d8  00 30 83 05                                      streq r3, [r3]
003f89dc  ac fe ff 0a                                      beq #0x3f8494
003f89e0  01 00 52 e3                                      cmp r2, #1
003f89e4  aa fe ff 1a                                      bne #0x3f8494
003f89e8  34 02 9f e5                                      ldr r0, [pc, #0x234]
003f89ec  34 12 9f e5                                      ldr r1, [pc, #0x234]
003f89f0  34 22 9f e5                                      ldr r2, [pc, #0x234]
003f89f4  00 00 94 e7                                      ldr r0, [r4, r0]
003f89f8  30 32 9f e5                                      ldr r3, [pc, #0x230]
003f89fc  77 cf a0 e3                                      mov ip, #0x1dc
003f8a00  01 10 8f e0                                      add r1, pc, r1
003f8a04  03 30 8f e0                                      add r3, pc, r3
003f8a08  a8 00 80 e2                                      add r0, r0, #0xa8
003f8a0c  02 20 8f e0                                      add r2, pc, r2
003f8a10  00 c0 8d e5                                      str ip, [sp]
003f8a14  7a 55 fc eb                                      bl #0x30e004
003f8a18  38 30 95 e5                                      ldr r3, [r5, #0x38]
003f8a1c  9c fe ff ea                                      b #0x3f8494
003f8a20  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
003f8a24  03 30 94 e7                                      ldr r3, [r4, r3]
003f8a28  00 30 93 e5                                      ldr r3, [r3]
003f8a2c  02 00 53 e3                                      cmp r3, #2
003f8a30  00 70 87 05                                      streq r7, [r7]
003f8a34  10 ff ff 0a                                      beq #0x3f867c
003f8a38  01 00 53 e3                                      cmp r3, #1
003f8a3c  0e ff ff 1a                                      bne #0x3f867c
003f8a40  dc 01 9f e5                                      ldr r0, [pc, #0x1dc]
003f8a44  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
003f8a48  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
003f8a4c  00 00 94 e7                                      ldr r0, [r4, r0]
003f8a50  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
003f8a54  77 cf a0 e3                                      mov ip, #0x1dc
003f8a58  01 10 8f e0                                      add r1, pc, r1
003f8a5c  a8 00 80 e2                                      add r0, r0, #0xa8
003f8a60  02 20 8f e0                                      add r2, pc, r2
003f8a64  03 30 8f e0                                      add r3, pc, r3
003f8a68  00 c0 8d e5                                      str ip, [sp]
003f8a6c  64 55 fc eb                                      bl #0x30e004
003f8a70  38 70 95 e5                                      ldr r7, [r5, #0x38]
003f8a74  00 ff ff ea                                      b #0x3f867c
003f8a78  00 00 5a e3                                      cmp sl, #0
003f8a7c  0a 10 a0 01                                      moveq r1, sl
003f8a80  18 00 00 0a                                      beq #0x3f8ae8
003f8a84  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003f8a88  ab c6 0e e3                                      movw ip, #0xe6ab
003f8a8c  0a 10 a0 e1                                      mov r1, sl
003f8a90  03 20 94 e7                                      ldr r2, [r4, r3]
003f8a94  00 00 92 e5                                      ldr r0, [r2]
003f8a98  9c 00 00 e0                                      mul r0, ip, r0
003f8a9c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
003f8aa0  2b 0a 80 e2                                      add r0, r0, #0x2b000
003f8aa4  ff 0f 80 e2                                      add r0, r0, #0x3fc
003f8aa8  01 00 80 e2                                      add r0, r0, #1
003f8aac  9c c0 83 e0                                      umull ip, r3, ip, r0
003f8ab0  00 c0 63 e0                                      rsb ip, r3, r0
003f8ab4  ac 30 83 e0                                      add r3, r3, ip, lsr #1
003f8ab8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
003f8abc  a3 3b a0 e1                                      lsr r3, r3, #0x17
003f8ac0  9c 03 63 e0                                      mls r3, ip, r3, r0
003f8ac4  00 30 82 e5                                      str r3, [r2]
003f8ac8  03 00 a0 e1                                      mov r0, r3
003f8acc  16 58 fc eb                                      bl #0x30eb2c
003f8ad0  00 00 51 e3                                      cmp r1, #0
003f8ad4  48 20 a0 a3                                      movge r2, #0x48
003f8ad8  00 10 61 b2                                      rsblt r1, r1, #0
003f8adc  48 30 a0 b3                                      movlt r3, #0x48
003f8ae0  92 01 01 a0                                      mulge r1, r2, r1
003f8ae4  93 01 01 b0                                      mullt r1, r3, r1
003f8ae8  0b 30 94 e7                                      ldr r3, [r4, fp]
003f8aec  09 20 94 e7                                      ldr r2, [r4, sb]
003f8af0  00 00 93 e5                                      ldr r0, [r3]
003f8af4  00 20 92 e5                                      ldr r2, [r2]
003f8af8  01 00 80 e2                                      add r0, r0, #1
003f8afc  00 00 83 e5                                      str r0, [r3]
003f8b00  01 20 82 e0                                      add r2, r2, r1
003f8b04  04 30 d2 e5                                      ldrb r3, [r2, #4]
003f8b08  00 00 53 e3                                      cmp r3, #0
003f8b0c  20 70 92 15                                      ldrne r7, [r2, #0x20]
003f8b10  78 ff ff ea                                      b #0x3f88f8
003f8b14  10 30 9b e5                                      ldr r3, [fp, #0x10]
003f8b18  8c 90 8d e2                                      add sb, sp, #0x8c
003f8b1c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f8b20  1c 30 8d e5                                      str r3, [sp, #0x1c]
003f8b24  05 df fc eb                                      bl #0x330740
003f8b28  07 10 a0 e1                                      mov r1, r7
003f8b2c  00 b0 a0 e1                                      mov fp, r0
003f8b30  5c 20 8d e2                                      add r2, sp, #0x5c
003f8b34  09 00 a0 e1                                      mov r0, sb
003f8b38  6b 6d fc eb                                      bl #0x3140ec
003f8b3c  0b 00 a0 e1                                      mov r0, fp
003f8b40  09 10 a0 e1                                      mov r1, sb
003f8b44  cf fb fc eb                                      bl #0x337a88
003f8b48  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f8b4c  01 00 20 e2                                      eor r0, r0, #1
003f8b50  31 04 c3 e5                                      strb r0, [r3, #0x431]
003f8b54  09 00 a0 e1                                      mov r0, sb
003f8b58  93 6b fc eb                                      bl #0x3139ac
003f8b5c  04 ff ff ea                                      b #0x3f8774
003f8b60  10 30 9b e5                                      ldr r3, [fp, #0x10]
003f8b64  bc 90 8d e2                                      add sb, sp, #0xbc
003f8b68  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f8b6c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003f8b70  f2 de fc eb                                      bl #0x330740
003f8b74  07 10 a0 e1                                      mov r1, r7
003f8b78  00 b0 a0 e1                                      mov fp, r0
003f8b7c  64 20 8d e2                                      add r2, sp, #0x64
003f8b80  09 00 a0 e1                                      mov r0, sb
003f8b84  58 6d fc eb                                      bl #0x3140ec
003f8b88  0b 00 a0 e1                                      mov r0, fp
003f8b8c  09 10 a0 e1                                      mov r1, sb
003f8b90  bc fb fc eb                                      bl #0x337a88
003f8b94  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003f8b98  01 00 20 e2                                      eor r0, r0, #1
003f8b9c  30 04 c3 e5                                      strb r0, [r3, #0x430]
003f8ba0  09 00 a0 e1                                      mov r0, sb
003f8ba4  80 6b fc eb                                      bl #0x3139ac
003f8ba8  d9 fe ff ea                                      b #0x3f8714
003f8bac  03 00 a0 e1                                      mov r0, r3
003f8bb0  00 30 93 e5                                      ldr r3, [r3]
003f8bb4  0f e0 a0 e1                                      mov lr, pc
003f8bb8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003f8bbc  58 fe ff ea                                      b #0x3f8524
003f8bc0  d2 55 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f8bc4  a8 c7 59 00 ac 40 00 00 8c e8 4c 00 5c e8 4c 00  .byte 0xa8, 0xc7, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x8c, 0xe8, 0x4c, 0x00, 0x5c, 0xe8, 0x4c, 0x00
003f8bd4  84 08 00 00 c4 6b 4c 00 60 75 4c 00 f4 37 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0xc4, 0x6b, 0x4c, 0x00, 0x60, 0x75, 0x4c, 0x00, 0xf4, 0x37, 0x00, 0x00
003f8be4  08 1b 00 00 b0 42 00 00 30 73 4c 00 ec 72 4c 00  .byte 0x08, 0x1b, 0x00, 0x00, 0xb0, 0x42, 0x00, 0x00, 0x30, 0x73, 0x4c, 0x00, 0xec, 0x72, 0x4c, 0x00
003f8bf4  a4 0d 00 00 94 e3 4c 00 58 e3 4c 00 20 1a 00 00  .byte 0xa4, 0x0d, 0x00, 0x00, 0x94, 0xe3, 0x4c, 0x00, 0x58, 0xe3, 0x4c, 0x00, 0x20, 0x1a, 0x00, 0x00
003f8c04  68 a8 5a 00 d0 0e 5a 00 c0 18 00 00 94 0c 00 00  .byte 0x68, 0xa8, 0x5a, 0x00, 0xd0, 0x0e, 0x5a, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x94, 0x0c, 0x00, 0x00
003f8c14  88 10 00 00 74 08 00 00 20 0e 5a 00 c0 39 00 00  .byte 0x88, 0x10, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00, 0x20, 0x0e, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00
003f8c24  c0 19 00 00 d8 59 4c 00 e4 d1 4c 00 54 92 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xd8, 0x59, 0x4c, 0x00, 0xe4, 0xd1, 0x4c, 0x00, 0x54, 0x92, 0x4c, 0x00
003f8c34  80 59 4c 00 90 d1 4c 00 f4 91 4c 00              .byte 0x80, 0x59, 0x4c, 0x00, 0x90, 0xd1, 0x4c, 0x00, 0xf4, 0x91, 0x4c, 0x00

; FUNCTION 0x003f90b0, declared_size=532, range_size=532, mode=arm
; class-group: Level
; alias: _ZN5LevelD2Ev
; demangled: Level::~Level()
; decoder-mode: arm
003f90b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f90b4  e0 51 9f e5                                      ldr r5, [pc, #0x1e0]
003f90b8  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
003f90bc  00 40 a0 e1                                      mov r4, r0
003f90c0  05 50 8f e0                                      add r5, pc, r5
003f90c4  03 30 95 e7                                      ldr r3, [r5, r3]
003f90c8  08 30 83 e2                                      add r3, r3, #8
003f90cc  00 30 80 e5                                      str r3, [r0]
003f90d0  c9 d8 ff eb                                      bl #0x3ef3fc
003f90d4  04 00 a0 e1                                      mov r0, r4
003f90d8  e0 d8 ff eb                                      bl #0x3ef460
003f90dc  a8 50 ff eb                                      bl #0x3cd384
003f90e0  b2 67 ff eb                                      bl #0x3d2fb0
003f90e4  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
003f90e8  03 60 95 e7                                      ldr r6, [r5, r3]
003f90ec  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f90f0  00 00 53 e3                                      cmp r3, #0
003f90f4  61 00 00 1a                                      bne #0x3f9280
003f90f8  27 ba fe eb                                      bl #0x3a799c
003f90fc  c5 ff ff eb                                      bl #0x3f9018
003f9100  5b e4 ff eb                                      bl #0x3f2274
003f9104  d6 ff ff eb                                      bl #0x3f9064
003f9108  d5 ff ff eb                                      bl #0x3f9064
003f910c  78 e2 ff eb                                      bl #0x3f1af4
003f9110  90 31 9f e5                                      ldr r3, [pc, #0x190]
003f9114  03 00 95 e7                                      ldr r0, [r5, r3]
003f9118  63 84 01 eb                                      bl #0x45a2ac
003f911c  2b 97 00 eb                                      bl #0x41edd0
003f9120  94 97 00 eb                                      bl #0x41ef78
003f9124  fc 87 00 eb                                      bl #0x41b11c
003f9128  44 7c 00 eb                                      bl #0x418240
003f912c  78 31 9f e5                                      ldr r3, [pc, #0x178]
003f9130  03 00 95 e7                                      ldr r0, [r5, r3]
003f9134  60 c9 ff eb                                      bl #0x3eb6bc
003f9138  70 31 9f e5                                      ldr r3, [pc, #0x170]
003f913c  03 00 95 e7                                      ldr r0, [r5, r3]
003f9140  c9 b4 ff eb                                      bl #0x3e646c
003f9144  68 31 9f e5                                      ldr r3, [pc, #0x168]
003f9148  03 00 95 e7                                      ldr r0, [r5, r3]
003f914c  d3 6f 02 eb                                      bl #0x4950a0
003f9150  94 61 94 e5                                      ldr r6, [r4, #0x194]
003f9154  00 00 56 e3                                      cmp r6, #0
003f9158  05 00 00 0a                                      beq #0x3f9174
003f915c  06 00 a0 e1                                      mov r0, r6
003f9160  a1 02 02 eb                                      bl #0x479bec
003f9164  06 00 a0 e1                                      mov r0, r6
003f9168  b4 5c fc eb                                      bl #0x310440
003f916c  00 30 a0 e3                                      mov r3, #0
003f9170  94 31 84 e5                                      str r3, [r4, #0x194]
003f9174  58 61 94 e5                                      ldr r6, [r4, #0x158]
003f9178  00 00 56 e3                                      cmp r6, #0
003f917c  05 00 00 0a                                      beq #0x3f9198
003f9180  06 00 a0 e1                                      mov r0, r6
003f9184  2f e2 ff eb                                      bl #0x3f1a48
003f9188  06 00 a0 e1                                      mov r0, r6
003f918c  ab 5c fc eb                                      bl #0x310440
003f9190  00 30 a0 e3                                      mov r3, #0
003f9194  58 31 84 e5                                      str r3, [r4, #0x158]
003f9198  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
003f919c  00 00 56 e3                                      cmp r6, #0
003f91a0  05 00 00 0a                                      beq #0x3f91bc
003f91a4  06 00 a0 e1                                      mov r0, r6
003f91a8  26 e2 ff eb                                      bl #0x3f1a48
003f91ac  06 00 a0 e1                                      mov r0, r6
003f91b0  a2 5c fc eb                                      bl #0x310440
003f91b4  00 30 a0 e3                                      mov r3, #0
003f91b8  5c 31 84 e5                                      str r3, [r4, #0x15c]
003f91bc  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
003f91c0  07 60 95 e7                                      ldr r6, [r5, r7]
003f91c4  38 00 96 e5                                      ldr r0, [r6, #0x38]
003f91c8  3a 41 fd eb                                      bl #0x3496b8
003f91cc  00 10 a0 e3                                      mov r1, #0
003f91d0  50 00 96 e5                                      ldr r0, [r6, #0x50]
003f91d4  75 23 fe eb                                      bl #0x381fb0
003f91d8  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f91dc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f91e0  03 00 a0 e1                                      mov r0, r3
003f91e4  00 30 93 e5                                      ldr r3, [r3]
003f91e8  0f e0 a0 e1                                      mov lr, pc
003f91ec  68 f0 93 e5                                      ldr pc, [r3, #0x68]
003f91f0  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f91f4  00 10 a0 e3                                      mov r1, #0
003f91f8  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
003f91fc  af 3f 06 eb                                      bl #0x5890c0
003f9200  44 00 96 e5                                      ldr r0, [r6, #0x44]
003f9204  00 4b fd eb                                      bl #0x34be0c
003f9208  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003f920c  03 00 95 e7                                      ldr r0, [r5, r3]
003f9210  2e a9 04 eb                                      bl #0x5236d0
003f9214  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003f9218  03 00 95 e7                                      ldr r0, [r5, r3]
003f921c  10 f1 01 eb                                      bl #0x475664
003f9220  04 00 a0 e1                                      mov r0, r4
003f9224  a0 fc fc eb                                      bl #0x3384ac
003f9228  ec 30 94 e5                                      ldr r3, [r4, #0xec]
003f922c  00 00 53 e3                                      cmp r3, #0
003f9230  05 00 00 0a                                      beq #0x3f924c
003f9234  03 00 a0 e1                                      mov r0, r3
003f9238  00 30 93 e5                                      ldr r3, [r3]
003f923c  0f e0 a0 e1                                      mov lr, pc
003f9240  04 f0 93 e5                                      ldr pc, [r3, #4]
003f9244  00 30 a0 e3                                      mov r3, #0
003f9248  ec 30 84 e5                                      str r3, [r4, #0xec]
003f924c  07 50 95 e7                                      ldr r5, [r5, r7]
003f9250  05 00 a0 e1                                      mov r0, r5
003f9254  c0 98 fc eb                                      bl #0x31f55c
003f9258  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
003f925c  61 03 fe eb                                      bl #0x379fe8
003f9260  f8 00 84 e2                                      add r0, r4, #0xf8
003f9264  d0 69 fc eb                                      bl #0x3139ac
003f9268  44 00 84 e2                                      add r0, r4, #0x44
003f926c  64 0b fe eb                                      bl #0x37c004
003f9270  04 00 a0 e1                                      mov r0, r4
003f9274  c5 fc fc eb                                      bl #0x338590
003f9278  04 00 a0 e1                                      mov r0, r4
003f927c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f9280  04 00 96 e5                                      ldr r0, [r6, #4]
003f9284  93 e1 ff eb                                      bl #0x3f18d8
003f9288  00 30 a0 e3                                      mov r3, #0
003f928c  10 30 86 e5                                      str r3, [r6, #0x10]
003f9290  48 00 86 e9                                      stmib r6, {r3, r6}
003f9294  0c 60 86 e5                                      str r6, [r6, #0xc]
003f9298  96 ff ff ea                                      b #0x3f90f8
; mapping-symbol data/literal pool
003f929c  d0 b9 59 00 74 07 00 00 d8 43 00 00 20 1a 00 00  .byte 0xd0, 0xb9, 0x59, 0x00, 0x74, 0x07, 0x00, 0x00, 0xd8, 0x43, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00
003f92ac  2c 0e 00 00 4c 08 00 00 08 1b 00 00 f4 37 00 00  .byte 0x2c, 0x0e, 0x00, 0x00, 0x4c, 0x08, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003f92bc  04 12 00 00 38 48 00 00                          .byte 0x04, 0x12, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00

; FUNCTION 0x003f92c4, declared_size=532, range_size=532, mode=arm
; class-group: Level
; alias: _ZN5LevelD1Ev
; demangled: Level::~Level()
; decoder-mode: arm
003f92c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f92c8  e0 51 9f e5                                      ldr r5, [pc, #0x1e0]
003f92cc  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
003f92d0  00 40 a0 e1                                      mov r4, r0
003f92d4  05 50 8f e0                                      add r5, pc, r5
003f92d8  03 30 95 e7                                      ldr r3, [r5, r3]
003f92dc  08 30 83 e2                                      add r3, r3, #8
003f92e0  00 30 80 e5                                      str r3, [r0]
003f92e4  44 d8 ff eb                                      bl #0x3ef3fc
003f92e8  04 00 a0 e1                                      mov r0, r4
003f92ec  5b d8 ff eb                                      bl #0x3ef460
003f92f0  23 50 ff eb                                      bl #0x3cd384
003f92f4  2d 67 ff eb                                      bl #0x3d2fb0
003f92f8  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
003f92fc  03 60 95 e7                                      ldr r6, [r5, r3]
003f9300  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f9304  00 00 53 e3                                      cmp r3, #0
003f9308  61 00 00 1a                                      bne #0x3f9494
003f930c  a2 b9 fe eb                                      bl #0x3a799c
003f9310  40 ff ff eb                                      bl #0x3f9018
003f9314  d6 e3 ff eb                                      bl #0x3f2274
003f9318  51 ff ff eb                                      bl #0x3f9064
003f931c  50 ff ff eb                                      bl #0x3f9064
003f9320  f3 e1 ff eb                                      bl #0x3f1af4
003f9324  90 31 9f e5                                      ldr r3, [pc, #0x190]
003f9328  03 00 95 e7                                      ldr r0, [r5, r3]
003f932c  de 83 01 eb                                      bl #0x45a2ac
003f9330  a6 96 00 eb                                      bl #0x41edd0
003f9334  0f 97 00 eb                                      bl #0x41ef78
003f9338  77 87 00 eb                                      bl #0x41b11c
003f933c  bf 7b 00 eb                                      bl #0x418240
003f9340  78 31 9f e5                                      ldr r3, [pc, #0x178]
003f9344  03 00 95 e7                                      ldr r0, [r5, r3]
003f9348  db c8 ff eb                                      bl #0x3eb6bc
003f934c  70 31 9f e5                                      ldr r3, [pc, #0x170]
003f9350  03 00 95 e7                                      ldr r0, [r5, r3]
003f9354  44 b4 ff eb                                      bl #0x3e646c
003f9358  68 31 9f e5                                      ldr r3, [pc, #0x168]
003f935c  03 00 95 e7                                      ldr r0, [r5, r3]
003f9360  4e 6f 02 eb                                      bl #0x4950a0
003f9364  94 61 94 e5                                      ldr r6, [r4, #0x194]
003f9368  00 00 56 e3                                      cmp r6, #0
003f936c  05 00 00 0a                                      beq #0x3f9388
003f9370  06 00 a0 e1                                      mov r0, r6
003f9374  1c 02 02 eb                                      bl #0x479bec
003f9378  06 00 a0 e1                                      mov r0, r6
003f937c  2f 5c fc eb                                      bl #0x310440
003f9380  00 30 a0 e3                                      mov r3, #0
003f9384  94 31 84 e5                                      str r3, [r4, #0x194]
003f9388  58 61 94 e5                                      ldr r6, [r4, #0x158]
003f938c  00 00 56 e3                                      cmp r6, #0
003f9390  05 00 00 0a                                      beq #0x3f93ac
003f9394  06 00 a0 e1                                      mov r0, r6
003f9398  aa e1 ff eb                                      bl #0x3f1a48
003f939c  06 00 a0 e1                                      mov r0, r6
003f93a0  26 5c fc eb                                      bl #0x310440
003f93a4  00 30 a0 e3                                      mov r3, #0
003f93a8  58 31 84 e5                                      str r3, [r4, #0x158]
003f93ac  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
003f93b0  00 00 56 e3                                      cmp r6, #0
003f93b4  05 00 00 0a                                      beq #0x3f93d0
003f93b8  06 00 a0 e1                                      mov r0, r6
003f93bc  a1 e1 ff eb                                      bl #0x3f1a48
003f93c0  06 00 a0 e1                                      mov r0, r6
003f93c4  1d 5c fc eb                                      bl #0x310440
003f93c8  00 30 a0 e3                                      mov r3, #0
003f93cc  5c 31 84 e5                                      str r3, [r4, #0x15c]
003f93d0  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
003f93d4  07 60 95 e7                                      ldr r6, [r5, r7]
003f93d8  38 00 96 e5                                      ldr r0, [r6, #0x38]
003f93dc  b5 40 fd eb                                      bl #0x3496b8
003f93e0  00 10 a0 e3                                      mov r1, #0
003f93e4  50 00 96 e5                                      ldr r0, [r6, #0x50]
003f93e8  f0 22 fe eb                                      bl #0x381fb0
003f93ec  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f93f0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003f93f4  03 00 a0 e1                                      mov r0, r3
003f93f8  00 30 93 e5                                      ldr r3, [r3]
003f93fc  0f e0 a0 e1                                      mov lr, pc
003f9400  68 f0 93 e5                                      ldr pc, [r3, #0x68]
003f9404  10 30 96 e5                                      ldr r3, [r6, #0x10]
003f9408  00 10 a0 e3                                      mov r1, #0
003f940c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
003f9410  2a 3f 06 eb                                      bl #0x5890c0
003f9414  44 00 96 e5                                      ldr r0, [r6, #0x44]
003f9418  7b 4a fd eb                                      bl #0x34be0c
003f941c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003f9420  03 00 95 e7                                      ldr r0, [r5, r3]
003f9424  a9 a8 04 eb                                      bl #0x5236d0
003f9428  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003f942c  03 00 95 e7                                      ldr r0, [r5, r3]
003f9430  8b f0 01 eb                                      bl #0x475664
003f9434  04 00 a0 e1                                      mov r0, r4
003f9438  1b fc fc eb                                      bl #0x3384ac
003f943c  ec 30 94 e5                                      ldr r3, [r4, #0xec]
003f9440  00 00 53 e3                                      cmp r3, #0
003f9444  05 00 00 0a                                      beq #0x3f9460
003f9448  03 00 a0 e1                                      mov r0, r3
003f944c  00 30 93 e5                                      ldr r3, [r3]
003f9450  0f e0 a0 e1                                      mov lr, pc
003f9454  04 f0 93 e5                                      ldr pc, [r3, #4]
003f9458  00 30 a0 e3                                      mov r3, #0
003f945c  ec 30 84 e5                                      str r3, [r4, #0xec]
003f9460  07 50 95 e7                                      ldr r5, [r5, r7]
003f9464  05 00 a0 e1                                      mov r0, r5
003f9468  3b 98 fc eb                                      bl #0x31f55c
003f946c  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
003f9470  dc 02 fe eb                                      bl #0x379fe8
003f9474  f8 00 84 e2                                      add r0, r4, #0xf8
003f9478  4b 69 fc eb                                      bl #0x3139ac
003f947c  44 00 84 e2                                      add r0, r4, #0x44
003f9480  df 0a fe eb                                      bl #0x37c004
003f9484  04 00 a0 e1                                      mov r0, r4
003f9488  40 fc fc eb                                      bl #0x338590
003f948c  04 00 a0 e1                                      mov r0, r4
003f9490  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f9494  04 00 96 e5                                      ldr r0, [r6, #4]
003f9498  0e e1 ff eb                                      bl #0x3f18d8
003f949c  00 30 a0 e3                                      mov r3, #0
003f94a0  10 30 86 e5                                      str r3, [r6, #0x10]
003f94a4  48 00 86 e9                                      stmib r6, {r3, r6}
003f94a8  0c 60 86 e5                                      str r6, [r6, #0xc]
003f94ac  96 ff ff ea                                      b #0x3f930c
; mapping-symbol data/literal pool
003f94b0  bc b7 59 00 74 07 00 00 d8 43 00 00 20 1a 00 00  .byte 0xbc, 0xb7, 0x59, 0x00, 0x74, 0x07, 0x00, 0x00, 0xd8, 0x43, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00
003f94c0  2c 0e 00 00 4c 08 00 00 08 1b 00 00 f4 37 00 00  .byte 0x2c, 0x0e, 0x00, 0x00, 0x4c, 0x08, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003f94d0  04 12 00 00 38 48 00 00                          .byte 0x04, 0x12, 0x00, 0x00, 0x38, 0x48, 0x00, 0x00

; FUNCTION 0x003f94d8, declared_size=28, range_size=28, mode=arm
; class-group: Level
; alias: _ZN5LevelD0Ev
; demangled: Level::~Level()
; decoder-mode: arm
003f94d8  10 40 2d e9                                      push {r4, lr}
003f94dc  00 40 a0 e1                                      mov r4, r0
003f94e0  77 ff ff eb                                      bl #0x3f92c4
003f94e4  04 00 a0 e1                                      mov r0, r4
003f94e8  d4 5b fc eb                                      bl #0x310440
003f94ec  04 00 a0 e1                                      mov r0, r4
003f94f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f94f4, declared_size=892, range_size=892, mode=arm
; class-group: Level
; alias: _ZN5Level14CanMoveTowardsERK7Point3DIfES3_
; demangled: Level::CanMoveTowards(Point3D<float> const&, Point3D<float> const&)
; decoder-mode: arm
003f94f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f94f8  38 43 9f e5                                      ldr r4, [pc, #0x338]
003f94fc  38 53 9f e5                                      ldr r5, [pc, #0x338]
003f9500  24 d0 4d e2                                      sub sp, sp, #0x24
003f9504  04 40 8f e0                                      add r4, pc, r4
003f9508  05 30 94 e7                                      ldr r3, [r4, r5]
003f950c  00 70 a0 e1                                      mov r7, r0
003f9510  01 60 a0 e1                                      mov r6, r1
003f9514  40 30 93 e5                                      ldr r3, [r3, #0x40]
003f9518  02 80 a0 e1                                      mov r8, r2
003f951c  c4 36 93 e5                                      ldr r3, [r3, #0x6c4]
003f9520  01 00 53 e3                                      cmp r3, #1
003f9524  03 00 00 0a                                      beq #0x3f9538
003f9528  99 10 10 eb                                      bl #0x7fd794
003f952c  05 a0 d0 e5                                      ldrb sl, [r0, #5]
003f9530  00 00 5a e3                                      cmp sl, #0
003f9534  02 00 00 0a                                      beq #0x3f9544
003f9538  01 00 a0 e3                                      mov r0, #1
003f953c  24 d0 8d e2                                      add sp, sp, #0x24
003f9540  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f9544  00 00 98 e5                                      ldr r0, [r8]
003f9548  04 b0 98 e5                                      ldr fp, [r8, #4]
003f954c  00 10 a0 e1                                      mov r1, r0
003f9550  05 56 fc eb                                      bl #0x30ed6c
003f9554  0b 10 a0 e1                                      mov r1, fp
003f9558  00 90 a0 e1                                      mov sb, r0
003f955c  0b 00 a0 e1                                      mov r0, fp
003f9560  01 56 fc eb                                      bl #0x30ed6c
003f9564  00 10 a0 e1                                      mov r1, r0
003f9568  09 00 a0 e1                                      mov r0, sb
003f956c  8c 55 fc eb                                      bl #0x30eba4
003f9570  00 90 a0 e1                                      mov sb, r0
003f9574  08 00 98 e5                                      ldr r0, [r8, #8]
003f9578  00 10 a0 e1                                      mov r1, r0
003f957c  fa 55 fc eb                                      bl #0x30ed6c
003f9580  00 10 a0 e1                                      mov r1, r0
003f9584  09 00 a0 e1                                      mov r0, sb
003f9588  85 55 fc eb                                      bl #0x30eba4
003f958c  17 17 0b e3                                      movw r1, #0xb717
003f9590  02 01 c0 e3                                      bic r0, r0, #0x80000000
003f9594  d1 18 43 e3                                      movt r1, #0x38d1
003f9598  5b 54 fc eb                                      bl #0x30e70c
003f959c  00 00 50 e3                                      cmp r0, #0
003f95a0  e4 ff ff 1a                                      bne #0x3f9538
003f95a4  28 31 97 e5                                      ldr r3, [r7, #0x128]
003f95a8  04 30 93 e5                                      ldr r3, [r3, #4]
003f95ac  00 00 53 e3                                      cmp r3, #0
003f95b0  e0 ff ff 0a                                      beq #0x3f9538
003f95b4  03 00 a0 e1                                      mov r0, r3
003f95b8  00 30 93 e5                                      ldr r3, [r3]
003f95bc  0f e0 a0 e1                                      mov lr, pc
003f95c0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003f95c4  04 10 96 e5                                      ldr r1, [r6, #4]
003f95c8  00 70 a0 e1                                      mov r7, r0
003f95cc  04 00 90 e5                                      ldr r0, [r0, #4]
003f95d0  75 53 fc eb                                      bl #0x30e3ac
003f95d4  08 10 96 e5                                      ldr r1, [r6, #8]
003f95d8  00 b0 a0 e1                                      mov fp, r0
003f95dc  08 00 97 e5                                      ldr r0, [r7, #8]
003f95e0  71 53 fc eb                                      bl #0x30e3ac
003f95e4  00 10 96 e5                                      ldr r1, [r6]
003f95e8  00 90 a0 e1                                      mov sb, r0
003f95ec  00 00 97 e5                                      ldr r0, [r7]
003f95f0  6d 53 fc eb                                      bl #0x30e3ac
003f95f4  0c 10 8d e2                                      add r1, sp, #0xc
003f95f8  0c 00 8d e5                                      str r0, [sp, #0xc]
003f95fc  08 00 a0 e1                                      mov r0, r8
003f9600  10 b0 8d e5                                      str fp, [sp, #0x10]
003f9604  14 90 8d e5                                      str sb, [sp, #0x14]
003f9608  92 66 fc eb                                      bl #0x313058
003f960c  db 1f 00 e3                                      movw r1, #0xfdb
003f9610  02 01 c0 e3                                      bic r0, r0, #0x80000000
003f9614  c9 1f 43 e3                                      movt r1, #0x3fc9
003f9618  3b 54 fc eb                                      bl #0x30e70c
003f961c  00 00 50 e3                                      cmp r0, #0
003f9620  c4 ff ff 1a                                      bne #0x3f9538
003f9624  14 32 9f e5                                      ldr r3, [pc, #0x214]
003f9628  00 10 a0 e3                                      mov r1, #0
003f962c  18 10 8d e5                                      str r1, [sp, #0x18]
003f9630  03 30 94 e7                                      ldr r3, [r4, r3]
003f9634  1c 10 8d e5                                      str r1, [sp, #0x1c]
003f9638  00 60 93 e5                                      ldr r6, [r3]
003f963c  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
003f9640  9b 53 fc eb                                      bl #0x30e4b4
003f9644  00 00 50 e3                                      cmp r0, #0
003f9648  07 00 00 1a                                      bne #0x3f966c
003f964c  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
003f9650  03 30 94 e7                                      ldr r3, [r4, r3]
003f9654  00 30 93 e5                                      ldr r3, [r3]
003f9658  02 00 53 e3                                      cmp r3, #2
003f965c  00 a0 8a 05                                      streq sl, [sl]
003f9660  01 00 00 0a                                      beq #0x3f966c
003f9664  01 00 53 e3                                      cmp r3, #1
003f9668  4b 00 00 0a                                      beq #0x3f979c
003f966c  20 00 96 e5                                      ldr r0, [r6, #0x20]
003f9670  00 10 a0 e3                                      mov r1, #0
003f9674  8e 53 fc eb                                      bl #0x30e4b4
003f9678  00 00 50 e3                                      cmp r0, #0
003f967c  08 00 00 1a                                      bne #0x3f96a4
003f9680  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
003f9684  03 30 94 e7                                      ldr r3, [r4, r3]
003f9688  00 30 93 e5                                      ldr r3, [r3]
003f968c  02 00 53 e3                                      cmp r3, #2
003f9690  00 30 a0 03                                      moveq r3, #0
003f9694  00 30 83 05                                      streq r3, [r3]
003f9698  01 00 00 0a                                      beq #0x3f96a4
003f969c  01 00 53 e3                                      cmp r3, #1
003f96a0  57 00 00 0a                                      beq #0x3f9804
003f96a4  18 00 96 e5                                      ldr r0, [r6, #0x18]
003f96a8  00 10 a0 e3                                      mov r1, #0
003f96ac  80 53 fc eb                                      bl #0x30e4b4
003f96b0  00 00 50 e3                                      cmp r0, #0
003f96b4  08 00 00 1a                                      bne #0x3f96dc
003f96b8  84 31 9f e5                                      ldr r3, [pc, #0x184]
003f96bc  03 30 94 e7                                      ldr r3, [r4, r3]
003f96c0  00 30 93 e5                                      ldr r3, [r3]
003f96c4  02 00 53 e3                                      cmp r3, #2
003f96c8  00 30 a0 03                                      moveq r3, #0
003f96cc  00 30 83 05                                      streq r3, [r3]
003f96d0  01 00 00 0a                                      beq #0x3f96dc
003f96d4  01 00 53 e3                                      cmp r3, #1
003f96d8  3c 00 00 0a                                      beq #0x3f97d0
003f96dc  05 50 94 e7                                      ldr r5, [r4, r5]
003f96e0  18 70 8d e2                                      add r7, sp, #0x18
003f96e4  00 40 a0 e3                                      mov r4, #0
003f96e8  04 10 a0 e1                                      mov r1, r4
003f96ec  00 20 a0 e3                                      mov r2, #0
003f96f0  40 00 95 e5                                      ldr r0, [r5, #0x40]
003f96f4  12 d4 fd eb                                      bl #0x36e744
003f96f8  60 86 90 e5                                      ldr r8, [r0, #0x660]
003f96fc  01 40 84 e2                                      add r4, r4, #1
003f9700  00 00 58 e2                                      subs r0, r8, #0
003f9704  1f 00 00 0a                                      beq #0x3f9788
003f9708  00 30 98 e5                                      ldr r3, [r8]
003f970c  0f e0 a0 e1                                      mov lr, pc
003f9710  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003f9714  00 00 50 e3                                      cmp r0, #0
003f9718  07 10 a0 e1                                      mov r1, r7
003f971c  16 0e 88 e2                                      add r0, r8, #0x160
003f9720  18 00 00 1a                                      bne #0x3f9788
003f9724  fa 57 00 eb                                      bl #0x40f714
003f9728  1c 80 96 e5                                      ldr r8, [r6, #0x1c]
003f972c  18 a0 9d e5                                      ldr sl, [sp, #0x18]
003f9730  02 01 88 e2                                      add r0, r8, #0x80000000
003f9734  0a 10 a0 e1                                      mov r1, sl
003f9738  f3 53 fc eb                                      bl #0x30e70c
003f973c  00 00 50 e3                                      cmp r0, #0
003f9740  0a 10 a0 e1                                      mov r1, sl
003f9744  08 00 a0 e1                                      mov r0, r8
003f9748  11 00 00 0a                                      beq #0x3f9794
003f974c  e9 52 fc eb                                      bl #0x30e2f8
003f9750  00 00 50 e3                                      cmp r0, #0
003f9754  0e 00 00 0a                                      beq #0x3f9794
003f9758  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
003f975c  18 00 96 e5                                      ldr r0, [r6, #0x18]
003f9760  08 10 a0 e1                                      mov r1, r8
003f9764  02 01 80 e2                                      add r0, r0, #0x80000000
003f9768  e7 53 fc eb                                      bl #0x30e70c
003f976c  00 00 50 e3                                      cmp r0, #0
003f9770  08 00 a0 e1                                      mov r0, r8
003f9774  06 00 00 0a                                      beq #0x3f9794
003f9778  20 10 96 e5                                      ldr r1, [r6, #0x20]
003f977c  e2 53 fc eb                                      bl #0x30e70c
003f9780  00 00 50 e3                                      cmp r0, #0
003f9784  02 00 00 0a                                      beq #0x3f9794
003f9788  04 00 54 e3                                      cmp r4, #4
003f978c  d5 ff ff 1a                                      bne #0x3f96e8
003f9790  68 ff ff ea                                      b #0x3f9538
003f9794  00 00 a0 e3                                      mov r0, #0
003f9798  67 ff ff ea                                      b #0x3f953c
003f979c  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
003f97a0  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003f97a4  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
003f97a8  00 00 94 e7                                      ldr r0, [r4, r0]
003f97ac  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003f97b0  60 c0 a0 e3                                      mov ip, #0x60
003f97b4  01 10 8f e0                                      add r1, pc, r1
003f97b8  02 20 8f e0                                      add r2, pc, r2
003f97bc  03 30 8f e0                                      add r3, pc, r3
003f97c0  a8 00 80 e2                                      add r0, r0, #0xa8
003f97c4  00 c0 8d e5                                      str ip, [sp]
003f97c8  0d 52 fc eb                                      bl #0x30e004
003f97cc  a6 ff ff ea                                      b #0x3f966c
003f97d0  70 00 9f e5                                      ldr r0, [pc, #0x70]
003f97d4  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003f97d8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003f97dc  00 00 94 e7                                      ldr r0, [r4, r0]
003f97e0  78 30 9f e5                                      ldr r3, [pc, #0x78]
003f97e4  62 c0 a0 e3                                      mov ip, #0x62
003f97e8  01 10 8f e0                                      add r1, pc, r1
003f97ec  02 20 8f e0                                      add r2, pc, r2
003f97f0  03 30 8f e0                                      add r3, pc, r3
003f97f4  a8 00 80 e2                                      add r0, r0, #0xa8
003f97f8  00 c0 8d e5                                      str ip, [sp]
003f97fc  00 52 fc eb                                      bl #0x30e004
003f9800  b5 ff ff ea                                      b #0x3f96dc
003f9804  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003f9808  54 10 9f e5                                      ldr r1, [pc, #0x54]
003f980c  54 20 9f e5                                      ldr r2, [pc, #0x54]
003f9810  00 00 94 e7                                      ldr r0, [r4, r0]
003f9814  50 30 9f e5                                      ldr r3, [pc, #0x50]
003f9818  61 c0 a0 e3                                      mov ip, #0x61
003f981c  01 10 8f e0                                      add r1, pc, r1
003f9820  02 20 8f e0                                      add r2, pc, r2
003f9824  03 30 8f e0                                      add r3, pc, r3
003f9828  a8 00 80 e2                                      add r0, r0, #0xa8
003f982c  00 c0 8d e5                                      str ip, [sp]
003f9830  f3 51 fc eb                                      bl #0x30e004
003f9834  9a ff ff ea                                      b #0x3f96a4
; mapping-symbol data/literal pool
003f9838  8c b5 59 00 f4 37 00 00 c8 32 00 00 c0 39 00 00  .byte 0x8c, 0xb5, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc8, 0x32, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003f9848  c0 19 00 00 24 4c 4c 00 b0 d6 4c 00 d4 d6 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x24, 0x4c, 0x4c, 0x00, 0xb0, 0xd6, 0x4c, 0x00, 0xd4, 0xd6, 0x4c, 0x00
003f9858  f0 4b 4c 00 14 d7 4c 00 a0 d6 4c 00 bc 4b 4c 00  .byte 0xf0, 0x4b, 0x4c, 0x00, 0x14, 0xd7, 0x4c, 0x00, 0xa0, 0xd6, 0x4c, 0x00, 0xbc, 0x4b, 0x4c, 0x00
003f9868  b8 d6 4c 00 6c d6 4c 00                          .byte 0xb8, 0xd6, 0x4c, 0x00, 0x6c, 0xd6, 0x4c, 0x00

; FUNCTION 0x003f9870, declared_size=800, range_size=800, mode=arm
; class-group: Level
; alias: _ZN5Level16UpdateCameraZoomEv
; demangled: Level::UpdateCameraZoom()
; decoder-mode: arm
003f9870  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f9874  dc 52 9f e5                                      ldr r5, [pc, #0x2dc]
003f9878  dc 62 9f e5                                      ldr r6, [pc, #0x2dc]
003f987c  14 d0 4d e2                                      sub sp, sp, #0x14
003f9880  05 50 8f e0                                      add r5, pc, r5
003f9884  06 30 95 e7                                      ldr r3, [r5, r6]
003f9888  00 70 a0 e1                                      mov r7, r0
003f988c  40 30 93 e5                                      ldr r3, [r3, #0x40]
003f9890  c4 36 93 e5                                      ldr r3, [r3, #0x6c4]
003f9894  01 00 53 e3                                      cmp r3, #1
003f9898  03 00 00 0a                                      beq #0x3f98ac
003f989c  bc 0f 10 eb                                      bl #0x7fd794
003f98a0  05 80 d0 e5                                      ldrb r8, [r0, #5]
003f98a4  00 00 58 e3                                      cmp r8, #0
003f98a8  01 00 00 0a                                      beq #0x3f98b4
003f98ac  14 d0 8d e2                                      add sp, sp, #0x14
003f98b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f98b4  a4 32 9f e5                                      ldr r3, [pc, #0x2a4]
003f98b8  00 10 a0 e3                                      mov r1, #0
003f98bc  08 10 8d e5                                      str r1, [sp, #8]
003f98c0  03 30 95 e7                                      ldr r3, [r5, r3]
003f98c4  0c 10 8d e5                                      str r1, [sp, #0xc]
003f98c8  00 40 93 e5                                      ldr r4, [r3]
003f98cc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003f98d0  f7 52 fc eb                                      bl #0x30e4b4
003f98d4  00 00 50 e3                                      cmp r0, #0
003f98d8  66 00 00 0a                                      beq #0x3f9a78
003f98dc  20 00 94 e5                                      ldr r0, [r4, #0x20]
003f98e0  00 10 a0 e3                                      mov r1, #0
003f98e4  f2 52 fc eb                                      bl #0x30e4b4
003f98e8  00 00 50 e3                                      cmp r0, #0
003f98ec  08 00 00 1a                                      bne #0x3f9914
003f98f0  6c 32 9f e5                                      ldr r3, [pc, #0x26c]
003f98f4  03 30 95 e7                                      ldr r3, [r5, r3]
003f98f8  00 30 93 e5                                      ldr r3, [r3]
003f98fc  02 00 53 e3                                      cmp r3, #2
003f9900  00 30 a0 03                                      moveq r3, #0
003f9904  00 30 83 05                                      streq r3, [r3]
003f9908  01 00 00 0a                                      beq #0x3f9914
003f990c  01 00 53 e3                                      cmp r3, #1
003f9910  76 00 00 0a                                      beq #0x3f9af0
003f9914  18 00 94 e5                                      ldr r0, [r4, #0x18]
003f9918  00 10 a0 e3                                      mov r1, #0
003f991c  e4 52 fc eb                                      bl #0x30e4b4
003f9920  00 00 50 e3                                      cmp r0, #0
003f9924  08 00 00 1a                                      bne #0x3f994c
003f9928  34 32 9f e5                                      ldr r3, [pc, #0x234]
003f992c  03 30 95 e7                                      ldr r3, [r5, r3]
003f9930  00 30 93 e5                                      ldr r3, [r3]
003f9934  02 00 53 e3                                      cmp r3, #2
003f9938  00 30 a0 03                                      moveq r3, #0
003f993c  00 30 83 05                                      streq r3, [r3]
003f9940  01 00 00 0a                                      beq #0x3f994c
003f9944  01 00 53 e3                                      cmp r3, #1
003f9948  75 00 00 0a                                      beq #0x3f9b24
003f994c  06 80 95 e7                                      ldr r8, [r5, r6]
003f9950  02 61 e0 e3                                      mvn r6, #0x80000000
003f9954  02 65 46 e2                                      sub r6, r6, #0x800000
003f9958  00 50 a0 e3                                      mov r5, #0
003f995c  08 a0 8d e2                                      add sl, sp, #8
003f9960  05 10 a0 e1                                      mov r1, r5
003f9964  00 20 a0 e3                                      mov r2, #0
003f9968  40 00 98 e5                                      ldr r0, [r8, #0x40]
003f996c  74 d3 fd eb                                      bl #0x36e744
003f9970  60 96 90 e5                                      ldr sb, [r0, #0x660]
003f9974  01 50 85 e2                                      add r5, r5, #1
003f9978  00 00 59 e2                                      subs r0, sb, #0
003f997c  23 00 00 0a                                      beq #0x3f9a10
003f9980  00 30 99 e5                                      ldr r3, [sb]
003f9984  0f e0 a0 e1                                      mov lr, pc
003f9988  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003f998c  00 00 50 e3                                      cmp r0, #0
003f9990  0a 10 a0 e1                                      mov r1, sl
003f9994  16 0e 89 e2                                      add r0, sb, #0x160
003f9998  1c 00 00 1a                                      bne #0x3f9a10
003f999c  5c 57 00 eb                                      bl #0x40f714
003f99a0  08 10 9d e5                                      ldr r1, [sp, #8]
003f99a4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003f99a8  02 11 c1 e3                                      bic r1, r1, #0x80000000
003f99ac  7e 52 fc eb                                      bl #0x30e3ac
003f99b0  06 10 a0 e1                                      mov r1, r6
003f99b4  00 b0 a0 e1                                      mov fp, r0
003f99b8  53 53 fc eb                                      bl #0x30e70c
003f99bc  0c 90 9d e5                                      ldr sb, [sp, #0xc]
003f99c0  00 00 50 e3                                      cmp r0, #0
003f99c4  20 00 94 e5                                      ldr r0, [r4, #0x20]
003f99c8  09 10 a0 e1                                      mov r1, sb
003f99cc  0b 60 a0 11                                      movne r6, fp
003f99d0  75 52 fc eb                                      bl #0x30e3ac
003f99d4  00 b0 a0 e1                                      mov fp, r0
003f99d8  0b 10 a0 e1                                      mov r1, fp
003f99dc  06 00 a0 e1                                      mov r0, r6
003f99e0  44 52 fc eb                                      bl #0x30e2f8
003f99e4  18 10 94 e5                                      ldr r1, [r4, #0x18]
003f99e8  00 00 50 e3                                      cmp r0, #0
003f99ec  09 00 a0 e1                                      mov r0, sb
003f99f0  0b 60 a0 11                                      movne r6, fp
003f99f4  6a 54 fc eb                                      bl #0x30eba4
003f99f8  00 90 a0 e1                                      mov sb, r0
003f99fc  09 10 a0 e1                                      mov r1, sb
003f9a00  06 00 a0 e1                                      mov r0, r6
003f9a04  3b 52 fc eb                                      bl #0x30e2f8
003f9a08  00 00 50 e3                                      cmp r0, #0
003f9a0c  09 60 a0 11                                      movne r6, sb
003f9a10  04 00 55 e3                                      cmp r5, #4
003f9a14  d1 ff ff 1a                                      bne #0x3f9960
003f9a18  0c 50 94 e5                                      ldr r5, [r4, #0xc]
003f9a1c  06 10 a0 e1                                      mov r1, r6
003f9a20  05 00 a0 e1                                      mov r0, r5
003f9a24  60 52 fc eb                                      bl #0x30e3ac
003f9a28  06 10 a0 e1                                      mov r1, r6
003f9a2c  02 81 c0 e3                                      bic r8, r0, #0x80000000
003f9a30  05 00 a0 e1                                      mov r0, r5
003f9a34  2f 52 fc eb                                      bl #0x30e2f8
003f9a38  00 00 50 e3                                      cmp r0, #0
003f9a3c  22 00 00 1a                                      bne #0x3f9acc
003f9a40  05 00 a0 e1                                      mov r0, r5
003f9a44  06 10 a0 e1                                      mov r1, r6
003f9a48  2f 53 fc eb                                      bl #0x30e70c
003f9a4c  00 00 50 e3                                      cmp r0, #0
003f9a50  95 ff ff 0a                                      beq #0x3f98ac
003f9a54  10 10 94 e5                                      ldr r1, [r4, #0x10]
003f9a58  08 00 a0 e1                                      mov r0, r8
003f9a5c  c2 54 fc eb                                      bl #0x30ed6c
003f9a60  28 51 97 e5                                      ldr r5, [r7, #0x128]
003f9a64  00 10 a0 e1                                      mov r1, r0
003f9a68  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
003f9a6c  4c 54 fc eb                                      bl #0x30eba4
003f9a70  8c 00 85 e5                                      str r0, [r5, #0x8c]
003f9a74  8c ff ff ea                                      b #0x3f98ac
003f9a78  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003f9a7c  03 30 95 e7                                      ldr r3, [r5, r3]
003f9a80  00 30 93 e5                                      ldr r3, [r3]
003f9a84  02 00 53 e3                                      cmp r3, #2
003f9a88  00 80 88 05                                      streq r8, [r8]
003f9a8c  92 ff ff 0a                                      beq #0x3f98dc
003f9a90  01 00 53 e3                                      cmp r3, #1
003f9a94  90 ff ff 1a                                      bne #0x3f98dc
003f9a98  c8 00 9f e5                                      ldr r0, [pc, #0xc8]
003f9a9c  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003f9aa0  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
003f9aa4  00 00 95 e7                                      ldr r0, [r5, r0]
003f9aa8  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003f9aac  24 c0 a0 e3                                      mov ip, #0x24
003f9ab0  01 10 8f e0                                      add r1, pc, r1
003f9ab4  02 20 8f e0                                      add r2, pc, r2
003f9ab8  03 30 8f e0                                      add r3, pc, r3
003f9abc  a8 00 80 e2                                      add r0, r0, #0xa8
003f9ac0  00 c0 8d e5                                      str ip, [sp]
003f9ac4  4e 51 fc eb                                      bl #0x30e004
003f9ac8  83 ff ff ea                                      b #0x3f98dc
003f9acc  10 10 94 e5                                      ldr r1, [r4, #0x10]
003f9ad0  08 00 a0 e1                                      mov r0, r8
003f9ad4  a4 54 fc eb                                      bl #0x30ed6c
003f9ad8  28 51 97 e5                                      ldr r5, [r7, #0x128]
003f9adc  00 10 a0 e1                                      mov r1, r0
003f9ae0  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
003f9ae4  30 52 fc eb                                      bl #0x30e3ac
003f9ae8  8c 00 85 e5                                      str r0, [r5, #0x8c]
003f9aec  6e ff ff ea                                      b #0x3f98ac
003f9af0  70 00 9f e5                                      ldr r0, [pc, #0x70]
003f9af4  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003f9af8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003f9afc  00 00 95 e7                                      ldr r0, [r5, r0]
003f9b00  78 30 9f e5                                      ldr r3, [pc, #0x78]
003f9b04  25 c0 a0 e3                                      mov ip, #0x25
003f9b08  01 10 8f e0                                      add r1, pc, r1
003f9b0c  02 20 8f e0                                      add r2, pc, r2
003f9b10  03 30 8f e0                                      add r3, pc, r3
003f9b14  a8 00 80 e2                                      add r0, r0, #0xa8
003f9b18  00 c0 8d e5                                      str ip, [sp]
003f9b1c  38 51 fc eb                                      bl #0x30e004
003f9b20  7b ff ff ea                                      b #0x3f9914
003f9b24  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003f9b28  54 10 9f e5                                      ldr r1, [pc, #0x54]
003f9b2c  54 20 9f e5                                      ldr r2, [pc, #0x54]
003f9b30  00 00 95 e7                                      ldr r0, [r5, r0]
003f9b34  50 30 9f e5                                      ldr r3, [pc, #0x50]
003f9b38  26 c0 a0 e3                                      mov ip, #0x26
003f9b3c  01 10 8f e0                                      add r1, pc, r1
003f9b40  02 20 8f e0                                      add r2, pc, r2
003f9b44  03 30 8f e0                                      add r3, pc, r3
003f9b48  a8 00 80 e2                                      add r0, r0, #0xa8
003f9b4c  00 c0 8d e5                                      str ip, [sp]
003f9b50  2b 51 fc eb                                      bl #0x30e004
003f9b54  7c ff ff ea                                      b #0x3f994c
; mapping-symbol data/literal pool
003f9b58  10 b2 59 00 f4 37 00 00 c8 32 00 00 c0 39 00 00  .byte 0x10, 0xb2, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc8, 0x32, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003f9b68  c0 19 00 00 28 49 4c 00 b4 d3 4c 00 d8 d3 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x28, 0x49, 0x4c, 0x00, 0xb4, 0xd3, 0x4c, 0x00, 0xd8, 0xd3, 0x4c, 0x00
003f9b78  d0 48 4c 00 cc d3 4c 00 80 d3 4c 00 9c 48 4c 00  .byte 0xd0, 0x48, 0x4c, 0x00, 0xcc, 0xd3, 0x4c, 0x00, 0x80, 0xd3, 0x4c, 0x00, 0x9c, 0x48, 0x4c, 0x00
003f9b88  c0 d3 4c 00 4c d3 4c 00                          .byte 0xc0, 0xd3, 0x4c, 0x00, 0x4c, 0xd3, 0x4c, 0x00

; FUNCTION 0x00474260, declared_size=184, range_size=184, mode=arm
; class-group: Level
; alias: _ZN5Level15GetRimLightFileEv
; demangled: Level::GetRimLightFile()
; decoder-mode: arm
00474260  30 40 2d e9                                      push {r4, r5, lr}
00474264  38 30 91 e5                                      ldr r3, [r1, #0x38]
00474268  90 20 9f e5                                      ldr r2, [pc, #0x90]
0047426c  0c d0 4d e2                                      sub sp, sp, #0xc
00474270  00 00 53 e3                                      cmp r3, #0
00474274  01 50 a0 e1                                      mov r5, r1
00474278  00 40 a0 e1                                      mov r4, r0
0047427c  02 20 8f e0                                      add r2, pc, r2
00474280  08 00 00 0a                                      beq #0x4742a8
00474284  10 40 84 e5                                      str r4, [r4, #0x10]
00474288  14 40 84 e5                                      str r4, [r4, #0x14]
0047428c  04 00 a0 e1                                      mov r0, r4
00474290  f8 22 93 e5                                      ldr r2, [r3, #0x2f8]
00474294  fc 12 93 e5                                      ldr r1, [r3, #0x2fc]
00474298  12 75 fa eb                                      bl #0x3116e8
0047429c  04 00 a0 e1                                      mov r0, r4
004742a0  0c d0 8d e2                                      add sp, sp, #0xc
004742a4  30 80 bd e8                                      pop {r4, r5, pc}
004742a8  54 10 9f e5                                      ldr r1, [pc, #0x54]
004742ac  01 10 92 e7                                      ldr r1, [r2, r1]
004742b0  00 10 91 e5                                      ldr r1, [r1]
004742b4  02 00 51 e3                                      cmp r1, #2
004742b8  00 30 83 05                                      streq r3, [r3]
004742bc  f0 ff ff 0a                                      beq #0x474284
004742c0  01 00 51 e3                                      cmp r1, #1
004742c4  ee ff ff 1a                                      bne #0x474284
004742c8  38 00 9f e5                                      ldr r0, [pc, #0x38]
004742cc  38 10 9f e5                                      ldr r1, [pc, #0x38]
004742d0  38 30 9f e5                                      ldr r3, [pc, #0x38]
004742d4  00 00 92 e7                                      ldr r0, [r2, r0]
004742d8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004742dc  03 30 8f e0                                      add r3, pc, r3
004742e0  77 cf a0 e3                                      mov ip, #0x1dc
004742e4  01 10 8f e0                                      add r1, pc, r1
004742e8  a8 00 80 e2                                      add r0, r0, #0xa8
004742ec  02 20 8f e0                                      add r2, pc, r2
004742f0  00 c0 8d e5                                      str ip, [sp]
004742f4  42 67 fa eb                                      bl #0x30e004
004742f8  38 30 95 e5                                      ldr r3, [r5, #0x38]
004742fc  e0 ff ff ea                                      b #0x474284
; mapping-symbol data/literal pool
00474300  14 08 52 00 c0 39 00 00 c0 19 00 00 f4 a0 44 00  .byte 0x14, 0x08, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xf4, 0xa0, 0x44, 0x00
00474310  7c d9 44 00 04 19 45 00                          .byte 0x7c, 0xd9, 0x44, 0x00, 0x04, 0x19, 0x45, 0x00
