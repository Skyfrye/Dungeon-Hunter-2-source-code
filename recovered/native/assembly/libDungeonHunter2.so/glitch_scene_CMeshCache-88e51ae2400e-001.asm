; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006be474, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCacheC2EPNS_5video12IVideoDriverE
; demangled: glitch::scene::CMeshCache::CMeshCache(glitch::video::IVideoDriver*)
; decoder-mode: arm
006be474  38 20 9f e5                                      ldr r2, [pc, #0x38]
006be478  04 40 2d e5                                      str r4, [sp, #-4]!
006be47c  34 40 9f e5                                      ldr r4, [pc, #0x34]
006be480  02 20 8f e0                                      add r2, pc, r2
006be484  00 c0 a0 e3                                      mov ip, #0
006be488  04 40 92 e7                                      ldr r4, [r2, r4]
006be48c  14 10 80 e5                                      str r1, [r0, #0x14]
006be490  01 10 a0 e3                                      mov r1, #1
006be494  08 40 84 e2                                      add r4, r4, #8
006be498  04 10 80 e5                                      str r1, [r0, #4]
006be49c  00 40 80 e5                                      str r4, [r0]
006be4a0  10 c0 80 e5                                      str ip, [r0, #0x10]
006be4a4  08 c0 80 e5                                      str ip, [r0, #8]
006be4a8  0c c0 80 e5                                      str ip, [r0, #0xc]
006be4ac  10 00 bd e8                                      ldm sp!, {r4}
006be4b0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006be4b4  10 66 2d 00 d8 16 00 00                          .byte 0x10, 0x66, 0x2d, 0x00, 0xd8, 0x16, 0x00, 0x00

; FUNCTION 0x006be4bc, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCacheC1EPNS_5video12IVideoDriverE
; demangled: glitch::scene::CMeshCache::CMeshCache(glitch::video::IVideoDriver*)
; decoder-mode: arm
006be4bc  38 20 9f e5                                      ldr r2, [pc, #0x38]
006be4c0  04 40 2d e5                                      str r4, [sp, #-4]!
006be4c4  34 40 9f e5                                      ldr r4, [pc, #0x34]
006be4c8  02 20 8f e0                                      add r2, pc, r2
006be4cc  00 c0 a0 e3                                      mov ip, #0
006be4d0  04 40 92 e7                                      ldr r4, [r2, r4]
006be4d4  14 10 80 e5                                      str r1, [r0, #0x14]
006be4d8  01 10 a0 e3                                      mov r1, #1
006be4dc  08 40 84 e2                                      add r4, r4, #8
006be4e0  04 10 80 e5                                      str r1, [r0, #4]
006be4e4  00 40 80 e5                                      str r4, [r0]
006be4e8  10 c0 80 e5                                      str ip, [r0, #0x10]
006be4ec  08 c0 80 e5                                      str ip, [r0, #8]
006be4f0  0c c0 80 e5                                      str ip, [r0, #0xc]
006be4f4  10 00 bd e8                                      ldm sp!, {r4}
006be4f8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006be4fc  c8 65 2d 00 d8 16 00 00                          .byte 0xc8, 0x65, 0x2d, 0x00, 0xd8, 0x16, 0x00, 0x00

; FUNCTION 0x006be504, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZNK6glitch5scene10CMeshCache12getMeshCountEv
; demangled: glitch::scene::CMeshCache::getMeshCount() const
; decoder-mode: arm
006be504  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006be508  08 30 90 e5                                      ldr r3, [r0, #8]
006be50c  02 30 63 e0                                      rsb r3, r3, r2
006be510  43 31 a0 e1                                      asr r3, r3, #2
006be514  83 21 83 e0                                      add r2, r3, r3, lsl #3
006be518  02 23 82 e0                                      add r2, r2, r2, lsl #6
006be51c  82 21 83 e0                                      add r2, r3, r2, lsl #3
006be520  82 27 82 e0                                      add r2, r2, r2, lsl #15
006be524  82 31 83 e0                                      add r3, r3, r2, lsl #3
006be528  00 00 63 e2                                      rsb r0, r3, #0
006be52c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006be530, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZNK6glitch5scene10CMeshCache12getMeshIndexERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEE
; demangled: glitch::scene::CMeshCache::getMeshIndex(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&) const
; decoder-mode: arm
006be530  04 40 2d e5                                      str r4, [sp, #-4]!
006be534  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006be538  08 30 90 e5                                      ldr r3, [r0, #8]
006be53c  02 20 63 e0                                      rsb r2, r3, r2
006be540  42 21 a0 e1                                      asr r2, r2, #2
006be544  82 c1 82 e0                                      add ip, r2, r2, lsl #3
006be548  0c c3 8c e0                                      add ip, ip, ip, lsl #6
006be54c  8c c1 82 e0                                      add ip, r2, ip, lsl #3
006be550  8c c7 8c e0                                      add ip, ip, ip, lsl #15
006be554  8c c1 82 e0                                      add ip, r2, ip, lsl #3
006be558  00 c0 6c e2                                      rsb ip, ip, #0
006be55c  00 00 5c e3                                      cmp ip, #0
006be560  0f 00 00 0a                                      beq #0x6be5a4
006be564  00 40 91 e5                                      ldr r4, [r1]
006be568  18 20 93 e5                                      ldr r2, [r3, #0x18]
006be56c  04 00 52 e1                                      cmp r2, r4
006be570  00 00 a0 03                                      moveq r0, #0
006be574  0b 00 00 0a                                      beq #0x6be5a8
006be578  1c 20 a0 e3                                      mov r2, #0x1c
006be57c  00 00 a0 e3                                      mov r0, #0
006be580  03 00 00 ea                                      b #0x6be594
006be584  18 10 91 e5                                      ldr r1, [r1, #0x18]
006be588  1c 20 82 e2                                      add r2, r2, #0x1c
006be58c  04 00 51 e1                                      cmp r1, r4
006be590  04 00 00 0a                                      beq #0x6be5a8
006be594  01 00 80 e2                                      add r0, r0, #1
006be598  0c 00 50 e1                                      cmp r0, ip
006be59c  02 10 83 e0                                      add r1, r3, r2
006be5a0  f7 ff ff 1a                                      bne #0x6be584
006be5a4  00 00 e0 e3                                      mvn r0, #0
006be5a8  10 00 bd e8                                      ldm sp!, {r4}
006be5ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006be5b0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache14getMeshByIndexEj
; demangled: glitch::scene::CMeshCache::getMeshByIndex(unsigned int)
; decoder-mode: arm
006be5b0  08 30 91 e5                                      ldr r3, [r1, #8]
006be5b4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
006be5b8  0c c0 63 e0                                      rsb ip, r3, ip
006be5bc  4c c1 a0 e1                                      asr ip, ip, #2
006be5c0  8c 11 8c e0                                      add r1, ip, ip, lsl #3
006be5c4  01 13 81 e0                                      add r1, r1, r1, lsl #6
006be5c8  81 11 8c e0                                      add r1, ip, r1, lsl #3
006be5cc  81 17 81 e0                                      add r1, r1, r1, lsl #15
006be5d0  81 c1 8c e0                                      add ip, ip, r1, lsl #3
006be5d4  00 c0 6c e2                                      rsb ip, ip, #0
006be5d8  0c 00 52 e1                                      cmp r2, ip
006be5dc  00 30 a0 23                                      movhs r3, #0
006be5e0  00 30 80 25                                      strhs r3, [r0]
006be5e4  1e ff 2f 21                                      bxhs lr
006be5e8  1c 10 a0 e3                                      mov r1, #0x1c
006be5ec  91 32 23 e0                                      mla r3, r1, r2, r3
006be5f0  18 30 93 e5                                      ldr r3, [r3, #0x18]
006be5f4  00 00 53 e3                                      cmp r3, #0
006be5f8  00 30 80 e5                                      str r3, [r0]
006be5fc  04 20 93 15                                      ldrne r2, [r3, #4]
006be600  01 20 82 12                                      addne r2, r2, #1
006be604  04 20 83 15                                      strne r2, [r3, #4]
006be608  1e ff 2f e1                                      bx lr

; FUNCTION 0x006be60c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZNK6glitch5scene10CMeshCache15getMeshFilenameEj
; demangled: glitch::scene::CMeshCache::getMeshFilename(unsigned int) const
; decoder-mode: arm
006be60c  08 30 90 e5                                      ldr r3, [r0, #8]
006be610  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006be614  02 20 63 e0                                      rsb r2, r3, r2
006be618  42 21 a0 e1                                      asr r2, r2, #2
006be61c  82 01 82 e0                                      add r0, r2, r2, lsl #3
006be620  00 03 80 e0                                      add r0, r0, r0, lsl #6
006be624  80 01 82 e0                                      add r0, r2, r0, lsl #3
006be628  80 07 80 e0                                      add r0, r0, r0, lsl #15
006be62c  80 21 82 e0                                      add r2, r2, r0, lsl #3
006be630  00 20 62 e2                                      rsb r2, r2, #0
006be634  02 00 51 e1                                      cmp r1, r2
006be638  1c 20 a0 33                                      movlo r2, #0x1c
006be63c  92 31 23 30                                      mlalo r3, r2, r1, r3
006be640  00 00 a0 23                                      movhs r0, #0
006be644  14 00 93 35                                      ldrlo r0, [r3, #0x14]
006be648  1e ff 2f e1                                      bx lr

; FUNCTION 0x006be64c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZNK6glitch5scene10CMeshCache15getMeshFilenameERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEE
; demangled: glitch::scene::CMeshCache::getMeshFilename(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&) const
; decoder-mode: arm
006be64c  30 00 2d e9                                      push {r4, r5}
006be650  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006be654  08 30 90 e5                                      ldr r3, [r0, #8]
006be658  02 20 63 e0                                      rsb r2, r3, r2
006be65c  42 21 a0 e1                                      asr r2, r2, #2
006be660  82 41 82 e0                                      add r4, r2, r2, lsl #3
006be664  04 43 84 e0                                      add r4, r4, r4, lsl #6
006be668  84 41 82 e0                                      add r4, r2, r4, lsl #3
006be66c  84 47 84 e0                                      add r4, r4, r4, lsl #15
006be670  84 41 82 e0                                      add r4, r2, r4, lsl #3
006be674  00 40 64 e2                                      rsb r4, r4, #0
006be678  00 00 54 e3                                      cmp r4, #0
006be67c  0e 00 00 0a                                      beq #0x6be6bc
006be680  00 50 91 e5                                      ldr r5, [r1]
006be684  18 20 93 e5                                      ldr r2, [r3, #0x18]
006be688  05 00 52 e1                                      cmp r2, r5
006be68c  1c 10 a0 13                                      movne r1, #0x1c
006be690  00 20 a0 13                                      movne r2, #0
006be694  04 00 00 1a                                      bne #0x6be6ac
006be698  0b 00 00 ea                                      b #0x6be6cc
006be69c  18 c0 90 e5                                      ldr ip, [r0, #0x18]
006be6a0  1c 10 81 e2                                      add r1, r1, #0x1c
006be6a4  05 00 5c e1                                      cmp ip, r5
006be6a8  06 00 00 0a                                      beq #0x6be6c8
006be6ac  01 20 82 e2                                      add r2, r2, #1
006be6b0  04 00 52 e1                                      cmp r2, r4
006be6b4  01 00 83 e0                                      add r0, r3, r1
006be6b8  f7 ff ff 1a                                      bne #0x6be69c
006be6bc  00 00 a0 e3                                      mov r0, #0
006be6c0  30 00 bd e8                                      pop {r4, r5}
006be6c4  1e ff 2f e1                                      bx lr
006be6c8  00 30 a0 e1                                      mov r3, r0
006be6cc  14 00 93 e5                                      ldr r0, [r3, #0x14]
006be6d0  fa ff ff ea                                      b #0x6be6c0

; FUNCTION 0x006be6d4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache12isMeshLoadedEPKc
; demangled: glitch::scene::CMeshCache::isMeshLoaded(char const*)
; decoder-mode: arm
006be6d4  04 e0 2d e5                                      str lr, [sp, #-4]!
006be6d8  0c d0 4d e2                                      sub sp, sp, #0xc
006be6dc  01 20 a0 e1                                      mov r2, r1
006be6e0  00 30 90 e5                                      ldr r3, [r0]
006be6e4  00 10 a0 e1                                      mov r1, r0
006be6e8  04 00 8d e2                                      add r0, sp, #4
006be6ec  0f e0 a0 e1                                      mov lr, pc
006be6f0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006be6f4  04 00 9d e5                                      ldr r0, [sp, #4]
006be6f8  00 00 50 e3                                      cmp r0, #0
006be6fc  01 00 00 0a                                      beq #0x6be708
006be700  9f 7b f1 eb                                      bl #0x31d584
006be704  01 00 a0 e3                                      mov r0, #1
006be708  0c d0 8d e2                                      add sp, sp, #0xc
006be70c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006be888, declared_size=176, range_size=176, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache17clearUnusedMeshesEv
; demangled: glitch::scene::CMeshCache::clearUnusedMeshes()
; decoder-mode: arm
006be888  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006be88c  00 60 a0 e1                                      mov r6, r0
006be890  0c c0 96 e5                                      ldr ip, [r6, #0xc]
006be894  08 00 90 e5                                      ldr r0, [r0, #8]
006be898  08 d0 4d e2                                      sub sp, sp, #8
006be89c  0c 30 60 e0                                      rsb r3, r0, ip
006be8a0  43 31 a0 e1                                      asr r3, r3, #2
006be8a4  83 21 83 e0                                      add r2, r3, r3, lsl #3
006be8a8  02 23 82 e0                                      add r2, r2, r2, lsl #6
006be8ac  82 21 83 e0                                      add r2, r3, r2, lsl #3
006be8b0  82 27 82 e0                                      add r2, r2, r2, lsl #15
006be8b4  82 31 83 e0                                      add r3, r3, r2, lsl #3
006be8b8  00 00 53 e3                                      cmp r3, #0
006be8bc  1b 00 00 0a                                      beq #0x6be930
006be8c0  08 80 86 e2                                      add r8, r6, #8
006be8c4  00 40 a0 e3                                      mov r4, #0
006be8c8  1c 50 a0 e3                                      mov r5, #0x1c
006be8cc  04 70 8d e2                                      add r7, sp, #4
006be8d0  0a 00 00 ea                                      b #0x6be900
006be8d4  0c 30 60 e0                                      rsb r3, r0, ip
006be8d8  43 31 a0 e1                                      asr r3, r3, #2
006be8dc  01 40 84 e2                                      add r4, r4, #1
006be8e0  83 21 83 e0                                      add r2, r3, r3, lsl #3
006be8e4  02 23 82 e0                                      add r2, r2, r2, lsl #6
006be8e8  82 21 83 e0                                      add r2, r3, r2, lsl #3
006be8ec  82 27 82 e0                                      add r2, r2, r2, lsl #15
006be8f0  82 31 83 e0                                      add r3, r3, r2, lsl #3
006be8f4  00 30 63 e2                                      rsb r3, r3, #0
006be8f8  03 00 54 e1                                      cmp r4, r3
006be8fc  0b 00 00 2a                                      bhs #0x6be930
006be900  95 04 21 e0                                      mla r1, r5, r4, r0
006be904  18 30 91 e5                                      ldr r3, [r1, #0x18]
006be908  04 30 93 e5                                      ldr r3, [r3, #4]
006be90c  01 00 53 e3                                      cmp r3, #1
006be910  ef ff ff 1a                                      bne #0x6be8d4
006be914  08 00 a0 e1                                      mov r0, r8
006be918  07 20 a0 e1                                      mov r2, r7
006be91c  bb ff ff eb                                      bl #0x6be810
006be920  01 40 44 e2                                      sub r4, r4, #1
006be924  08 00 96 e5                                      ldr r0, [r6, #8]
006be928  0c c0 96 e5                                      ldr ip, [r6, #0xc]
006be92c  e8 ff ff ea                                      b #0x6be8d4
006be930  08 d0 8d e2                                      add sp, sp, #8
006be934  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006be938, declared_size=148, range_size=148, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache10removeMeshERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEE
; demangled: glitch::scene::CMeshCache::removeMesh(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&)
; decoder-mode: arm
006be938  10 40 2d e9                                      push {r4, lr}
006be93c  00 30 91 e5                                      ldr r3, [r1]
006be940  08 d0 4d e2                                      sub sp, sp, #8
006be944  00 00 53 e3                                      cmp r3, #0
006be948  18 00 00 0a                                      beq #0x6be9b0
006be94c  08 10 90 e5                                      ldr r1, [r0, #8]
006be950  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006be954  02 20 61 e0                                      rsb r2, r1, r2
006be958  42 21 a0 e1                                      asr r2, r2, #2
006be95c  82 41 82 e0                                      add r4, r2, r2, lsl #3
006be960  04 43 84 e0                                      add r4, r4, r4, lsl #6
006be964  84 41 82 e0                                      add r4, r2, r4, lsl #3
006be968  84 47 84 e0                                      add r4, r4, r4, lsl #15
006be96c  84 41 82 e0                                      add r4, r2, r4, lsl #3
006be970  00 40 64 e2                                      rsb r4, r4, #0
006be974  00 00 54 e3                                      cmp r4, #0
006be978  0c 00 00 0a                                      beq #0x6be9b0
006be97c  18 20 91 e5                                      ldr r2, [r1, #0x18]
006be980  02 00 53 e1                                      cmp r3, r2
006be984  1c 10 81 12                                      addne r1, r1, #0x1c
006be988  00 20 a0 13                                      movne r2, #0
006be98c  03 00 00 1a                                      bne #0x6be9a0
006be990  09 00 00 ea                                      b #0x6be9bc
006be994  04 c0 11 e5                                      ldr ip, [r1, #-4]
006be998  0c 00 53 e1                                      cmp r3, ip
006be99c  05 00 00 0a                                      beq #0x6be9b8
006be9a0  01 20 82 e2                                      add r2, r2, #1
006be9a4  04 00 52 e1                                      cmp r2, r4
006be9a8  1c 10 81 e2                                      add r1, r1, #0x1c
006be9ac  f8 ff ff 1a                                      bne #0x6be994
006be9b0  08 d0 8d e2                                      add sp, sp, #8
006be9b4  10 80 bd e8                                      pop {r4, pc}
006be9b8  1c 10 41 e2                                      sub r1, r1, #0x1c
006be9bc  04 20 8d e2                                      add r2, sp, #4
006be9c0  08 00 80 e2                                      add r0, r0, #8
006be9c4  91 ff ff eb                                      bl #0x6be810
006be9c8  f8 ff ff ea                                      b #0x6be9b0

; FUNCTION 0x006bea64, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache5clearEv
; demangled: glitch::scene::CMeshCache::clear()
; decoder-mode: arm
006bea64  04 e0 2d e5                                      str lr, [sp, #-4]!
006bea68  08 10 90 e5                                      ldr r1, [r0, #8]
006bea6c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006bea70  0c d0 4d e2                                      sub sp, sp, #0xc
006bea74  02 00 51 e1                                      cmp r1, r2
006bea78  02 00 00 0a                                      beq #0x6bea88
006bea7c  08 00 80 e2                                      add r0, r0, #8
006bea80  04 30 8d e2                                      add r3, sp, #4
006bea84  d0 ff ff eb                                      bl #0x6be9cc
006bea88  0c d0 8d e2                                      add sp, sp, #0xc
006bea8c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006bea90, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCacheD1Ev
; demangled: glitch::scene::CMeshCache::~CMeshCache()
; decoder-mode: arm
006bea90  30 30 9f e5                                      ldr r3, [pc, #0x30]
006bea94  30 20 9f e5                                      ldr r2, [pc, #0x30]
006bea98  70 40 2d e9                                      push {r4, r5, r6, lr}
006bea9c  03 30 8f e0                                      add r3, pc, r3
006beaa0  02 20 93 e7                                      ldr r2, [r3, r2]
006beaa4  00 40 a0 e1                                      mov r4, r0
006beaa8  00 50 a0 e1                                      mov r5, r0
006beaac  08 20 82 e2                                      add r2, r2, #8
006beab0  08 20 84 e4                                      str r2, [r4], #8
006beab4  ea ff ff eb                                      bl #0x6bea64
006beab8  04 00 a0 e1                                      mov r0, r4
006beabc  29 ff ff eb                                      bl #0x6be768
006beac0  05 00 a0 e1                                      mov r0, r5
006beac4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006beac8  f4 5f 2d 00 d8 16 00 00                          .byte 0xf4, 0x5f, 0x2d, 0x00, 0xd8, 0x16, 0x00, 0x00

; FUNCTION 0x006bead0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCacheD0Ev
; demangled: glitch::scene::CMeshCache::~CMeshCache()
; decoder-mode: arm
006bead0  10 40 2d e9                                      push {r4, lr}
006bead4  00 40 a0 e1                                      mov r4, r0
006bead8  ec ff ff eb                                      bl #0x6bea90
006beadc  04 00 a0 e1                                      mov r0, r4
006beae0  f2 3d f1 eb                                      bl #0x30e2b0
006beae4  04 00 a0 e1                                      mov r0, r4
006beae8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006beaec, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCacheD2Ev
; demangled: glitch::scene::CMeshCache::~CMeshCache()
; decoder-mode: arm
006beaec  30 30 9f e5                                      ldr r3, [pc, #0x30]
006beaf0  30 20 9f e5                                      ldr r2, [pc, #0x30]
006beaf4  70 40 2d e9                                      push {r4, r5, r6, lr}
006beaf8  03 30 8f e0                                      add r3, pc, r3
006beafc  02 20 93 e7                                      ldr r2, [r3, r2]
006beb00  00 40 a0 e1                                      mov r4, r0
006beb04  00 50 a0 e1                                      mov r5, r0
006beb08  08 20 82 e2                                      add r2, r2, #8
006beb0c  08 20 84 e4                                      str r2, [r4], #8
006beb10  d3 ff ff eb                                      bl #0x6bea64
006beb14  04 00 a0 e1                                      mov r0, r4
006beb18  12 ff ff eb                                      bl #0x6be768
006beb1c  05 00 a0 e1                                      mov r0, r5
006beb20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006beb24  98 5f 2d 00 d8 16 00 00                          .byte 0x98, 0x5f, 0x2d, 0x00, 0xd8, 0x16, 0x00, 0x00

; FUNCTION 0x006bec0c, declared_size=260, range_size=260, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache10removeMeshERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
; demangled: glitch::scene::CMeshCache::removeMesh(boost::intrusive_ptr<glitch::scene::IMesh const> const&)
; decoder-mode: arm
006bec0c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bec10  00 30 91 e5                                      ldr r3, [r1]
006bec14  14 d0 4d e2                                      sub sp, sp, #0x14
006bec18  01 90 a0 e1                                      mov sb, r1
006bec1c  00 00 53 e3                                      cmp r3, #0
006bec20  00 a0 a0 e1                                      mov sl, r0
006bec24  37 00 00 0a                                      beq #0x6bed08
006bec28  08 60 90 e5                                      ldr r6, [r0, #8]
006bec2c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
006bec30  08 30 66 e0                                      rsb r3, r6, r8
006bec34  43 31 a0 e1                                      asr r3, r3, #2
006bec38  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bec3c  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bec40  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bec44  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bec48  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bec4c  00 00 53 e3                                      cmp r3, #0
006bec50  2c 00 00 0a                                      beq #0x6bed08
006bec54  00 40 a0 e3                                      mov r4, #0
006bec58  04 50 a0 e1                                      mov r5, r4
006bec5c  08 b0 8d e2                                      add fp, sp, #8
006bec60  00 70 e0 e3                                      mvn r7, #0
006bec64  0d 00 00 ea                                      b #0x6beca0
006bec68  08 60 9a e5                                      ldr r6, [sl, #8]
006bec6c  0c 80 9a e5                                      ldr r8, [sl, #0xc]
006bec70  08 30 66 e0                                      rsb r3, r6, r8
006bec74  43 31 a0 e1                                      asr r3, r3, #2
006bec78  01 50 85 e2                                      add r5, r5, #1
006bec7c  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bec80  1c 40 84 e2                                      add r4, r4, #0x1c
006bec84  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bec88  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bec8c  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bec90  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bec94  00 30 63 e2                                      rsb r3, r3, #0
006bec98  03 00 55 e1                                      cmp r5, r3
006bec9c  19 00 00 2a                                      bhs #0x6bed08
006beca0  04 10 86 e0                                      add r1, r6, r4
006beca4  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006beca8  00 20 a0 e3                                      mov r2, #0
006becac  0b 00 a0 e1                                      mov r0, fp
006becb0  02 00 5c e1                                      cmp ip, r2
006becb4  ff 30 a0 e3                                      mov r3, #0xff
006becb8  0c 10 a0 e1                                      mov r1, ip
006becbc  eb ff ff 0a                                      beq #0x6bec70
006becc0  00 c0 9c e5                                      ldr ip, [ip]
006becc4  00 70 8d e5                                      str r7, [sp]
006becc8  04 70 8d e5                                      str r7, [sp, #4]
006beccc  0f e0 a0 e1                                      mov lr, pc
006becd0  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006becd4  08 60 9d e5                                      ldr r6, [sp, #8]
006becd8  00 80 99 e5                                      ldr r8, [sb]
006becdc  00 00 56 e3                                      cmp r6, #0
006bece0  06 00 a0 e1                                      mov r0, r6
006bece4  00 00 00 0a                                      beq #0x6becec
006bece8  25 7a f1 eb                                      bl #0x31d584
006becec  08 00 56 e1                                      cmp r6, r8
006becf0  dc ff ff 1a                                      bne #0x6bec68
006becf4  08 10 9a e5                                      ldr r1, [sl, #8]
006becf8  08 00 8a e2                                      add r0, sl, #8
006becfc  0c 20 8d e2                                      add r2, sp, #0xc
006bed00  04 10 81 e0                                      add r1, r1, r4
006bed04  c1 fe ff eb                                      bl #0x6be810
006bed08  14 d0 8d e2                                      add sp, sp, #0x14
006bed0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006bee14, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZNK6glitch5scene10CMeshCache15getMeshFilenameERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
; demangled: glitch::scene::CMeshCache::getMeshFilename(boost::intrusive_ptr<glitch::scene::IMesh const> const&) const
; decoder-mode: arm
006bee14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bee18  08 60 90 e5                                      ldr r6, [r0, #8]
006bee1c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
006bee20  14 d0 4d e2                                      sub sp, sp, #0x14
006bee24  00 a0 a0 e1                                      mov sl, r0
006bee28  08 30 66 e0                                      rsb r3, r6, r8
006bee2c  43 31 a0 e1                                      asr r3, r3, #2
006bee30  01 b0 a0 e1                                      mov fp, r1
006bee34  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bee38  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bee3c  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bee40  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bee44  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bee48  00 00 53 e3                                      cmp r3, #0
006bee4c  2b 00 00 0a                                      beq #0x6bef00
006bee50  00 40 a0 e3                                      mov r4, #0
006bee54  04 50 a0 e1                                      mov r5, r4
006bee58  0c 90 8d e2                                      add sb, sp, #0xc
006bee5c  00 70 e0 e3                                      mvn r7, #0
006bee60  0d 00 00 ea                                      b #0x6bee9c
006bee64  08 60 9a e5                                      ldr r6, [sl, #8]
006bee68  0c 80 9a e5                                      ldr r8, [sl, #0xc]
006bee6c  08 30 66 e0                                      rsb r3, r6, r8
006bee70  43 31 a0 e1                                      asr r3, r3, #2
006bee74  01 50 85 e2                                      add r5, r5, #1
006bee78  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bee7c  1c 40 84 e2                                      add r4, r4, #0x1c
006bee80  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bee84  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bee88  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bee8c  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bee90  00 30 63 e2                                      rsb r3, r3, #0
006bee94  03 00 55 e1                                      cmp r5, r3
006bee98  18 00 00 2a                                      bhs #0x6bef00
006bee9c  04 10 86 e0                                      add r1, r6, r4
006beea0  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006beea4  00 20 a0 e3                                      mov r2, #0
006beea8  09 00 a0 e1                                      mov r0, sb
006beeac  02 00 5c e1                                      cmp ip, r2
006beeb0  ff 30 a0 e3                                      mov r3, #0xff
006beeb4  0c 10 a0 e1                                      mov r1, ip
006beeb8  eb ff ff 0a                                      beq #0x6bee6c
006beebc  00 c0 9c e5                                      ldr ip, [ip]
006beec0  00 70 8d e5                                      str r7, [sp]
006beec4  04 70 8d e5                                      str r7, [sp, #4]
006beec8  0f e0 a0 e1                                      mov lr, pc
006beecc  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006beed0  0c 60 9d e5                                      ldr r6, [sp, #0xc]
006beed4  00 80 9b e5                                      ldr r8, [fp]
006beed8  00 00 56 e3                                      cmp r6, #0
006beedc  06 00 a0 e1                                      mov r0, r6
006beee0  00 00 00 0a                                      beq #0x6beee8
006beee4  a6 79 f1 eb                                      bl #0x31d584
006beee8  08 00 56 e1                                      cmp r6, r8
006beeec  dc ff ff 1a                                      bne #0x6bee64
006beef0  08 30 9a e5                                      ldr r3, [sl, #8]
006beef4  04 40 83 e0                                      add r4, r3, r4
006beef8  14 00 94 e5                                      ldr r0, [r4, #0x14]
006beefc  00 00 00 ea                                      b #0x6bef04
006bef00  00 00 a0 e3                                      mov r0, #0
006bef04  14 d0 8d e2                                      add sp, sp, #0x14
006bef08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006bef0c, declared_size=240, range_size=240, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZNK6glitch5scene10CMeshCache12getMeshIndexERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
; demangled: glitch::scene::CMeshCache::getMeshIndex(boost::intrusive_ptr<glitch::scene::IMesh const> const&) const
; decoder-mode: arm
006bef0c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bef10  08 60 90 e5                                      ldr r6, [r0, #8]
006bef14  0c 80 90 e5                                      ldr r8, [r0, #0xc]
006bef18  14 d0 4d e2                                      sub sp, sp, #0x14
006bef1c  00 a0 a0 e1                                      mov sl, r0
006bef20  08 30 66 e0                                      rsb r3, r6, r8
006bef24  43 31 a0 e1                                      asr r3, r3, #2
006bef28  01 b0 a0 e1                                      mov fp, r1
006bef2c  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bef30  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bef34  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bef38  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bef3c  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bef40  00 00 53 e3                                      cmp r3, #0
006bef44  29 00 00 0a                                      beq #0x6beff0
006bef48  00 40 a0 e3                                      mov r4, #0
006bef4c  04 50 a0 e1                                      mov r5, r4
006bef50  0c 90 8d e2                                      add sb, sp, #0xc
006bef54  00 70 e0 e3                                      mvn r7, #0
006bef58  0d 00 00 ea                                      b #0x6bef94
006bef5c  08 60 9a e5                                      ldr r6, [sl, #8]
006bef60  0c 80 9a e5                                      ldr r8, [sl, #0xc]
006bef64  08 30 66 e0                                      rsb r3, r6, r8
006bef68  43 31 a0 e1                                      asr r3, r3, #2
006bef6c  01 50 85 e2                                      add r5, r5, #1
006bef70  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bef74  1c 40 84 e2                                      add r4, r4, #0x1c
006bef78  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bef7c  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bef80  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bef84  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bef88  00 30 63 e2                                      rsb r3, r3, #0
006bef8c  03 00 55 e1                                      cmp r5, r3
006bef90  16 00 00 2a                                      bhs #0x6beff0
006bef94  04 10 86 e0                                      add r1, r6, r4
006bef98  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006bef9c  00 20 a0 e3                                      mov r2, #0
006befa0  09 00 a0 e1                                      mov r0, sb
006befa4  02 00 5c e1                                      cmp ip, r2
006befa8  ff 30 a0 e3                                      mov r3, #0xff
006befac  0c 10 a0 e1                                      mov r1, ip
006befb0  eb ff ff 0a                                      beq #0x6bef64
006befb4  00 c0 9c e5                                      ldr ip, [ip]
006befb8  00 70 8d e5                                      str r7, [sp]
006befbc  04 70 8d e5                                      str r7, [sp, #4]
006befc0  0f e0 a0 e1                                      mov lr, pc
006befc4  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006befc8  0c 60 9d e5                                      ldr r6, [sp, #0xc]
006befcc  00 80 9b e5                                      ldr r8, [fp]
006befd0  00 00 56 e3                                      cmp r6, #0
006befd4  06 00 a0 e1                                      mov r0, r6
006befd8  00 00 00 0a                                      beq #0x6befe0
006befdc  68 79 f1 eb                                      bl #0x31d584
006befe0  08 00 56 e1                                      cmp r6, r8
006befe4  dc ff ff 1a                                      bne #0x6bef5c
006befe8  05 00 a0 e1                                      mov r0, r5
006befec  00 00 00 ea                                      b #0x6beff4
006beff0  00 00 e0 e3                                      mvn r0, #0
006beff4  14 d0 8d e2                                      add sp, sp, #0x14
006beff8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006bf32c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache15setMeshFilenameEjPKc
; demangled: glitch::scene::CMeshCache::setMeshFilename(unsigned int, char const*)
; decoder-mode: arm
006bf32c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006bf330  08 50 90 e5                                      ldr r5, [r0, #8]
006bf334  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006bf338  02 70 a0 e1                                      mov r7, r2
006bf33c  00 40 a0 e1                                      mov r4, r0
006bf340  03 30 65 e0                                      rsb r3, r5, r3
006bf344  43 31 a0 e1                                      asr r3, r3, #2
006bf348  01 60 a0 e1                                      mov r6, r1
006bf34c  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bf350  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bf354  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bf358  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bf35c  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bf360  00 30 63 e2                                      rsb r3, r3, #0
006bf364  03 00 51 e1                                      cmp r1, r3
006bf368  01 00 00 3a                                      blo #0x6bf374
006bf36c  00 00 a0 e3                                      mov r0, #0
006bf370  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006bf374  07 00 a0 e1                                      mov r0, r7
006bf378  b5 3a f1 eb                                      bl #0x30de54
006bf37c  00 20 87 e0                                      add r2, r7, r0
006bf380  1c 00 a0 e3                                      mov r0, #0x1c
006bf384  07 10 a0 e1                                      mov r1, r7
006bf388  90 56 20 e0                                      mla r0, r0, r6, r5
006bf38c  fd 85 f1 eb                                      bl #0x320b88
006bf390  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006bf394  08 00 94 e5                                      ldr r0, [r4, #8]
006bf398  03 30 60 e0                                      rsb r3, r0, r3
006bf39c  43 31 a0 e1                                      asr r3, r3, #2
006bf3a0  83 11 83 e0                                      add r1, r3, r3, lsl #3
006bf3a4  01 13 81 e0                                      add r1, r1, r1, lsl #6
006bf3a8  81 11 83 e0                                      add r1, r3, r1, lsl #3
006bf3ac  81 17 81 e0                                      add r1, r1, r1, lsl #15
006bf3b0  81 11 83 e0                                      add r1, r3, r1, lsl #3
006bf3b4  00 10 61 e2                                      rsb r1, r1, #0
006bf3b8  01 00 51 e3                                      cmp r1, #1
006bf3bc  02 00 00 9a                                      bls #0x6bf3cc
006bf3c0  98 ff ff eb                                      bl #0x6bf228
006bf3c4  01 00 a0 e3                                      mov r0, #1
006bf3c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006bf3cc  01 00 a0 e3                                      mov r0, #1
006bf3d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006bf588, declared_size=296, range_size=296, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache7addMeshEPKcRKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEE
; demangled: glitch::scene::CMeshCache::addMesh(char const*, boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&)
; decoder-mode: arm
006bf588  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006bf58c  14 51 9f e5                                      ldr r5, [pc, #0x114]
006bf590  14 71 9f e5                                      ldr r7, [pc, #0x114]
006bf594  24 d0 4d e2                                      sub sp, sp, #0x24
006bf598  05 50 8f e0                                      add r5, pc, r5
006bf59c  07 30 95 e7                                      ldr r3, [r5, r7]
006bf5a0  00 80 a0 e1                                      mov r8, r0
006bf5a4  01 60 a0 e1                                      mov r6, r1
006bf5a8  00 30 93 e5                                      ldr r3, [r3]
006bf5ac  0d 00 a0 e1                                      mov r0, sp
006bf5b0  10 10 a0 e3                                      mov r1, #0x10
006bf5b4  02 a0 a0 e1                                      mov sl, r2
006bf5b8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006bf5bc  10 d0 8d e5                                      str sp, [sp, #0x10]
006bf5c0  14 d0 8d e5                                      str sp, [sp, #0x14]
006bf5c4  f7 84 f1 eb                                      bl #0x3209a8
006bf5c8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006bf5cc  00 20 a0 e3                                      mov r2, #0
006bf5d0  0d 40 a0 e1                                      mov r4, sp
006bf5d4  00 20 c3 e5                                      strb r2, [r3]
006bf5d8  00 30 9a e5                                      ldr r3, [sl]
006bf5dc  18 20 8d e5                                      str r2, [sp, #0x18]
006bf5e0  02 00 53 e1                                      cmp r3, r2
006bf5e4  18 30 8d 05                                      streq r3, [sp, #0x18]
006bf5e8  07 00 00 0a                                      beq #0x6bf60c
006bf5ec  04 20 93 e5                                      ldr r2, [r3, #4]
006bf5f0  01 20 82 e2                                      add r2, r2, #1
006bf5f4  04 20 83 e5                                      str r2, [r3, #4]
006bf5f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006bf5fc  18 30 8d e5                                      str r3, [sp, #0x18]
006bf600  00 00 50 e3                                      cmp r0, #0
006bf604  00 00 00 0a                                      beq #0x6bf60c
006bf608  dd 77 f1 eb                                      bl #0x31d584
006bf60c  06 00 a0 e1                                      mov r0, r6
006bf610  0f 3a f1 eb                                      bl #0x30de54
006bf614  06 10 a0 e1                                      mov r1, r6
006bf618  00 20 86 e0                                      add r2, r6, r0
006bf61c  0d 00 a0 e1                                      mov r0, sp
006bf620  58 85 f1 eb                                      bl #0x320b88
006bf624  14 20 9d e5                                      ldr r2, [sp, #0x14]
006bf628  10 30 9d e5                                      ldr r3, [sp, #0x10]
006bf62c  02 00 53 e1                                      cmp r3, r2
006bf630  0f 00 00 0a                                      beq #0x6bf674
006bf634  00 30 a0 e3                                      mov r3, #0
006bf638  03 10 d2 e7                                      ldrb r1, [r2, r3]
006bf63c  03 20 82 e0                                      add r2, r2, r3
006bf640  01 30 83 e2                                      add r3, r3, #1
006bf644  71 00 ef e6                                      uxtb r0, r1
006bf648  41 c0 40 e2                                      sub ip, r0, #0x41
006bf64c  7c c0 ef e6                                      uxtb ip, ip
006bf650  19 00 5c e3                                      cmp ip, #0x19
006bf654  20 10 80 92                                      addls r1, r0, #0x20
006bf658  71 10 ef 96                                      uxtbls r1, r1
006bf65c  00 10 c2 e5                                      strb r1, [r2]
006bf660  14 20 9d e5                                      ldr r2, [sp, #0x14]
006bf664  10 10 9d e5                                      ldr r1, [sp, #0x10]
006bf668  01 10 62 e0                                      rsb r1, r2, r1
006bf66c  01 00 53 e1                                      cmp r3, r1
006bf670  f0 ff ff 3a                                      blo #0x6bf638
006bf674  08 00 88 e2                                      add r0, r8, #8
006bf678  0d 10 a0 e1                                      mov r1, sp
006bf67c  54 ff ff eb                                      bl #0x6bf3d4
006bf680  0d 00 a0 e1                                      mov r0, sp
006bf684  29 fc ff eb                                      bl #0x6be730
006bf688  07 30 95 e7                                      ldr r3, [r5, r7]
006bf68c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006bf690  00 30 93 e5                                      ldr r3, [r3]
006bf694  03 00 52 e1                                      cmp r2, r3
006bf698  01 00 00 1a                                      bne #0x6bf6a4
006bf69c  24 d0 8d e2                                      add sp, sp, #0x24
006bf6a0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006bf6a4  19 3b f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006bf6a8  f8 54 2d 00 ac 40 00 00                          .byte 0xf8, 0x54, 0x2d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006bf6b0, declared_size=408, range_size=408, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache14addTerrainMeshEPKcRKN5boost13intrusive_ptrINS_5video6CImageEEESA_RKNS_4core11dimension2dIfEEfRKNSC_IiEE
; demangled: glitch::scene::CMeshCache::addTerrainMesh(char const*, boost::intrusive_ptr<glitch::video::CImage> const&, boost::intrusive_ptr<glitch::video::CImage> const&, glitch::core::dimension2d<float> const&, float, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
006bf6b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bf6b4  00 60 52 e2                                      subs r6, r2, #0
006bf6b8  20 d0 4d e2                                      sub sp, sp, #0x20
006bf6bc  00 50 a0 e1                                      mov r5, r0
006bf6c0  01 40 a0 e1                                      mov r4, r1
006bf6c4  03 a0 a0 e1                                      mov sl, r3
006bf6c8  00 60 80 05                                      streq r6, [r0]
006bf6cc  4c 00 00 0a                                      beq #0x6bf804
006bf6d0  00 30 91 e5                                      ldr r3, [r1]
006bf6d4  01 00 a0 e1                                      mov r0, r1
006bf6d8  06 10 a0 e1                                      mov r1, r6
006bf6dc  0f e0 a0 e1                                      mov lr, pc
006bf6e0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006bf6e4  00 70 50 e2                                      subs r7, r0, #0
006bf6e8  48 00 00 1a                                      bne #0x6bf810
006bf6ec  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006bf6f0  14 e0 94 e5                                      ldr lr, [r4, #0x14]
006bf6f4  1c 80 8d e2                                      add r8, sp, #0x1c
006bf6f8  00 c0 8d e5                                      str ip, [sp]
006bf6fc  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006bf700  08 00 a0 e1                                      mov r0, r8
006bf704  0a 10 a0 e1                                      mov r1, sl
006bf708  40 20 9d e5                                      ldr r2, [sp, #0x40]
006bf70c  44 30 9d e5                                      ldr r3, [sp, #0x44]
006bf710  04 e0 8d e5                                      str lr, [sp, #4]
006bf714  08 c0 8d e5                                      str ip, [sp, #8]
006bf718  0c 70 8d e5                                      str r7, [sp, #0xc]
006bf71c  b7 5d 00 eb                                      bl #0x6d6e00
006bf720  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006bf724  00 00 50 e3                                      cmp r0, #0
006bf728  00 00 85 05                                      streq r0, [r5]
006bf72c  34 00 00 0a                                      beq #0x6bf804
006bf730  20 90 8d e2                                      add sb, sp, #0x20
006bf734  07 10 a0 e1                                      mov r1, r7
006bf738  30 00 a0 e3                                      mov r0, #0x30
006bf73c  08 70 29 e5                                      str r7, [sb, #-8]!
006bf740  99 d2 f9 eb                                      bl #0x5341ac
006bf744  09 10 a0 e1                                      mov r1, sb
006bf748  07 20 a0 e1                                      mov r2, r7
006bf74c  00 a0 a0 e1                                      mov sl, r0
006bf750  6e 6d fb eb                                      bl #0x59ad10
006bf754  18 00 9d e5                                      ldr r0, [sp, #0x18]
006bf758  00 00 50 e3                                      cmp r0, #0
006bf75c  00 00 00 0a                                      beq #0x6bf764
006bf760  87 77 f1 eb                                      bl #0x31d584
006bf764  00 00 5a e3                                      cmp sl, #0
006bf768  2f 00 00 0a                                      beq #0x6bf82c
006bf76c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006bf770  00 00 53 e3                                      cmp r3, #0
006bf774  0a 00 00 0a                                      beq #0x6bf7a4
006bf778  24 10 9a e5                                      ldr r1, [sl, #0x24]
006bf77c  28 20 9a e5                                      ldr r2, [sl, #0x28]
006bf780  02 00 51 e1                                      cmp r1, r2
006bf784  2b 00 00 0a                                      beq #0x6bf838
006bf788  00 30 81 e5                                      str r3, [r1]
006bf78c  04 20 93 e5                                      ldr r2, [r3, #4]
006bf790  01 20 82 e2                                      add r2, r2, #1
006bf794  04 20 83 e5                                      str r2, [r3, #4]
006bf798  24 30 9a e5                                      ldr r3, [sl, #0x24]
006bf79c  04 30 83 e2                                      add r3, r3, #4
006bf7a0  24 30 8a e5                                      str r3, [sl, #0x24]
006bf7a4  0a 00 a0 e1                                      mov r0, sl
006bf7a8  84 6a fb eb                                      bl #0x59a1c0
006bf7ac  00 30 94 e5                                      ldr r3, [r4]
006bf7b0  20 20 8d e2                                      add r2, sp, #0x20
006bf7b4  04 00 a0 e1                                      mov r0, r4
006bf7b8  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006bf7bc  0c a0 22 e5                                      str sl, [r2, #-0xc]!
006bf7c0  04 c0 9a e5                                      ldr ip, [sl, #4]
006bf7c4  06 10 a0 e1                                      mov r1, r6
006bf7c8  01 c0 8c e2                                      add ip, ip, #1
006bf7cc  04 c0 8a e5                                      str ip, [sl, #4]
006bf7d0  33 ff 2f e1                                      blx r3
006bf7d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006bf7d8  00 00 50 e3                                      cmp r0, #0
006bf7dc  00 00 00 0a                                      beq #0x6bf7e4
006bf7e0  67 77 f1 eb                                      bl #0x31d584
006bf7e4  00 a0 85 e5                                      str sl, [r5]
006bf7e8  04 30 9a e5                                      ldr r3, [sl, #4]
006bf7ec  01 30 83 e2                                      add r3, r3, #1
006bf7f0  04 30 8a e5                                      str r3, [sl, #4]
006bf7f4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006bf7f8  00 00 50 e3                                      cmp r0, #0
006bf7fc  00 00 00 0a                                      beq #0x6bf804
006bf800  5f 77 f1 eb                                      bl #0x31d584
006bf804  05 00 a0 e1                                      mov r0, r5
006bf808  20 d0 8d e2                                      add sp, sp, #0x20
006bf80c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bf810  04 10 a0 e1                                      mov r1, r4
006bf814  06 20 a0 e1                                      mov r2, r6
006bf818  00 30 94 e5                                      ldr r3, [r4]
006bf81c  05 00 a0 e1                                      mov r0, r5
006bf820  0f e0 a0 e1                                      mov lr, pc
006bf824  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006bf828  f5 ff ff ea                                      b #0x6bf804
006bf82c  00 a0 85 e5                                      str sl, [r5]
006bf830  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006bf834  ef ff ff ea                                      b #0x6bf7f8
006bf838  08 20 a0 e1                                      mov r2, r8
006bf83c  20 00 8a e2                                      add r0, sl, #0x20
006bf840  32 fd ff eb                                      bl #0x6bed10
006bf844  d6 ff ff ea                                      b #0x6bf7a4

; FUNCTION 0x006bf848, declared_size=324, range_size=324, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache15setMeshFilenameERKN5boost13intrusive_ptrIKNS0_5IMeshEEEPKc
; demangled: glitch::scene::CMeshCache::setMeshFilename(boost::intrusive_ptr<glitch::scene::IMesh const> const&, char const*)
; decoder-mode: arm
006bf848  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bf84c  08 60 90 e5                                      ldr r6, [r0, #8]
006bf850  0c 80 90 e5                                      ldr r8, [r0, #0xc]
006bf854  1c d0 4d e2                                      sub sp, sp, #0x1c
006bf858  0c 20 8d e5                                      str r2, [sp, #0xc]
006bf85c  08 30 66 e0                                      rsb r3, r6, r8
006bf860  43 31 a0 e1                                      asr r3, r3, #2
006bf864  00 a0 a0 e1                                      mov sl, r0
006bf868  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bf86c  01 b0 a0 e1                                      mov fp, r1
006bf870  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bf874  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bf878  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bf87c  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bf880  00 00 53 e3                                      cmp r3, #0
006bf884  3d 00 00 0a                                      beq #0x6bf980
006bf888  00 40 a0 e3                                      mov r4, #0
006bf88c  04 50 a0 e1                                      mov r5, r4
006bf890  14 90 8d e2                                      add sb, sp, #0x14
006bf894  00 70 e0 e3                                      mvn r7, #0
006bf898  0d 00 00 ea                                      b #0x6bf8d4
006bf89c  08 60 9a e5                                      ldr r6, [sl, #8]
006bf8a0  0c 80 9a e5                                      ldr r8, [sl, #0xc]
006bf8a4  08 30 66 e0                                      rsb r3, r6, r8
006bf8a8  43 31 a0 e1                                      asr r3, r3, #2
006bf8ac  01 50 85 e2                                      add r5, r5, #1
006bf8b0  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bf8b4  1c 40 84 e2                                      add r4, r4, #0x1c
006bf8b8  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bf8bc  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bf8c0  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bf8c4  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bf8c8  00 30 63 e2                                      rsb r3, r3, #0
006bf8cc  03 00 55 e1                                      cmp r5, r3
006bf8d0  2a 00 00 2a                                      bhs #0x6bf980
006bf8d4  04 10 86 e0                                      add r1, r6, r4
006bf8d8  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006bf8dc  00 20 a0 e3                                      mov r2, #0
006bf8e0  09 00 a0 e1                                      mov r0, sb
006bf8e4  02 00 5c e1                                      cmp ip, r2
006bf8e8  ff 30 a0 e3                                      mov r3, #0xff
006bf8ec  0c 10 a0 e1                                      mov r1, ip
006bf8f0  eb ff ff 0a                                      beq #0x6bf8a4
006bf8f4  00 c0 9c e5                                      ldr ip, [ip]
006bf8f8  00 70 8d e5                                      str r7, [sp]
006bf8fc  04 70 8d e5                                      str r7, [sp, #4]
006bf900  0f e0 a0 e1                                      mov lr, pc
006bf904  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006bf908  14 60 9d e5                                      ldr r6, [sp, #0x14]
006bf90c  00 80 9b e5                                      ldr r8, [fp]
006bf910  00 00 56 e3                                      cmp r6, #0
006bf914  06 00 a0 e1                                      mov r0, r6
006bf918  00 00 00 0a                                      beq #0x6bf920
006bf91c  18 77 f1 eb                                      bl #0x31d584
006bf920  08 00 56 e1                                      cmp r6, r8
006bf924  dc ff ff 1a                                      bne #0x6bf89c
006bf928  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006bf92c  48 39 f1 eb                                      bl #0x30de54
006bf930  08 30 9a e5                                      ldr r3, [sl, #8]
006bf934  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006bf938  00 20 81 e0                                      add r2, r1, r0
006bf93c  04 00 83 e0                                      add r0, r3, r4
006bf940  90 84 f1 eb                                      bl #0x320b88
006bf944  0c 30 9a e5                                      ldr r3, [sl, #0xc]
006bf948  08 00 9a e5                                      ldr r0, [sl, #8]
006bf94c  03 30 60 e0                                      rsb r3, r0, r3
006bf950  43 31 a0 e1                                      asr r3, r3, #2
006bf954  83 11 83 e0                                      add r1, r3, r3, lsl #3
006bf958  01 13 81 e0                                      add r1, r1, r1, lsl #6
006bf95c  81 11 83 e0                                      add r1, r3, r1, lsl #3
006bf960  81 17 81 e0                                      add r1, r1, r1, lsl #15
006bf964  81 11 83 e0                                      add r1, r3, r1, lsl #3
006bf968  00 10 61 e2                                      rsb r1, r1, #0
006bf96c  01 00 51 e3                                      cmp r1, #1
006bf970  00 00 00 9a                                      bls #0x6bf978
006bf974  2b fe ff eb                                      bl #0x6bf228
006bf978  01 00 a0 e3                                      mov r0, #1
006bf97c  00 00 00 ea                                      b #0x6bf984
006bf980  00 00 a0 e3                                      mov r0, #0
006bf984  1c d0 8d e2                                      add sp, sp, #0x1c
006bf988  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006bf98c, declared_size=216, range_size=216, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache15setMeshFilenameERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEEPKc
; demangled: glitch::scene::CMeshCache::setMeshFilename(boost::intrusive_ptr<glitch::scene::IAnimatedMesh const> const&, char const*)
; decoder-mode: arm
006bf98c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006bf990  08 40 90 e5                                      ldr r4, [r0, #8]
006bf994  0c 30 90 e5                                      ldr r3, [r0, #0xc]
006bf998  00 50 a0 e1                                      mov r5, r0
006bf99c  02 60 a0 e1                                      mov r6, r2
006bf9a0  03 30 64 e0                                      rsb r3, r4, r3
006bf9a4  43 31 a0 e1                                      asr r3, r3, #2
006bf9a8  83 c1 83 e0                                      add ip, r3, r3, lsl #3
006bf9ac  0c c3 8c e0                                      add ip, ip, ip, lsl #6
006bf9b0  8c c1 83 e0                                      add ip, r3, ip, lsl #3
006bf9b4  8c c7 8c e0                                      add ip, ip, ip, lsl #15
006bf9b8  8c c1 83 e0                                      add ip, r3, ip, lsl #3
006bf9bc  00 c0 6c e2                                      rsb ip, ip, #0
006bf9c0  00 00 5c e3                                      cmp ip, #0
006bf9c4  0e 00 00 0a                                      beq #0x6bfa04
006bf9c8  18 30 94 e5                                      ldr r3, [r4, #0x18]
006bf9cc  00 70 91 e5                                      ldr r7, [r1]
006bf9d0  07 00 53 e1                                      cmp r3, r7
006bf9d4  1c 20 a0 13                                      movne r2, #0x1c
006bf9d8  00 30 a0 13                                      movne r3, #0
006bf9dc  04 00 00 1a                                      bne #0x6bf9f4
006bf9e0  0a 00 00 ea                                      b #0x6bfa10
006bf9e4  18 00 91 e5                                      ldr r0, [r1, #0x18]
006bf9e8  1c 20 82 e2                                      add r2, r2, #0x1c
006bf9ec  07 00 50 e1                                      cmp r0, r7
006bf9f0  05 00 00 0a                                      beq #0x6bfa0c
006bf9f4  01 30 83 e2                                      add r3, r3, #1
006bf9f8  03 00 5c e1                                      cmp ip, r3
006bf9fc  02 10 84 e0                                      add r1, r4, r2
006bfa00  f7 ff ff 1a                                      bne #0x6bf9e4
006bfa04  00 00 a0 e3                                      mov r0, #0
006bfa08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006bfa0c  01 40 a0 e1                                      mov r4, r1
006bfa10  06 00 a0 e1                                      mov r0, r6
006bfa14  0e 39 f1 eb                                      bl #0x30de54
006bfa18  06 10 a0 e1                                      mov r1, r6
006bfa1c  00 20 86 e0                                      add r2, r6, r0
006bfa20  04 00 a0 e1                                      mov r0, r4
006bfa24  57 84 f1 eb                                      bl #0x320b88
006bfa28  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006bfa2c  08 00 95 e5                                      ldr r0, [r5, #8]
006bfa30  03 30 60 e0                                      rsb r3, r0, r3
006bfa34  43 31 a0 e1                                      asr r3, r3, #2
006bfa38  83 11 83 e0                                      add r1, r3, r3, lsl #3
006bfa3c  01 13 81 e0                                      add r1, r1, r1, lsl #6
006bfa40  81 11 83 e0                                      add r1, r3, r1, lsl #3
006bfa44  81 17 81 e0                                      add r1, r1, r1, lsl #15
006bfa48  81 11 83 e0                                      add r1, r3, r1, lsl #3
006bfa4c  00 10 61 e2                                      rsb r1, r1, #0
006bfa50  01 00 51 e3                                      cmp r1, #1
006bfa54  00 00 00 9a                                      bls #0x6bfa5c
006bfa58  f2 fd ff eb                                      bl #0x6bf228
006bfa5c  01 00 a0 e3                                      mov r0, #1
006bfa60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006bfbc0, declared_size=300, range_size=300, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache17getMeshByFilenameEPKc
; demangled: glitch::scene::CMeshCache::getMeshByFilename(char const*)
; decoder-mode: arm
006bfbc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bfbc4  18 51 9f e5                                      ldr r5, [pc, #0x118]
006bfbc8  18 71 9f e5                                      ldr r7, [pc, #0x118]
006bfbcc  20 d0 4d e2                                      sub sp, sp, #0x20
006bfbd0  05 50 8f e0                                      add r5, pc, r5
006bfbd4  07 30 95 e7                                      ldr r3, [r5, r7]
006bfbd8  00 80 a0 e1                                      mov r8, r0
006bfbdc  01 a0 a0 e1                                      mov sl, r1
006bfbe0  00 30 93 e5                                      ldr r3, [r3]
006bfbe4  10 10 a0 e3                                      mov r1, #0x10
006bfbe8  0d 00 a0 e1                                      mov r0, sp
006bfbec  02 90 a0 e1                                      mov sb, r2
006bfbf0  1c 30 8d e5                                      str r3, [sp, #0x1c]
006bfbf4  10 d0 8d e5                                      str sp, [sp, #0x10]
006bfbf8  14 d0 8d e5                                      str sp, [sp, #0x14]
006bfbfc  69 83 f1 eb                                      bl #0x3209a8
006bfc00  10 30 9d e5                                      ldr r3, [sp, #0x10]
006bfc04  00 60 a0 e3                                      mov r6, #0
006bfc08  09 00 a0 e1                                      mov r0, sb
006bfc0c  00 60 c3 e5                                      strb r6, [r3]
006bfc10  18 60 8d e5                                      str r6, [sp, #0x18]
006bfc14  8e 38 f1 eb                                      bl #0x30de54
006bfc18  09 10 a0 e1                                      mov r1, sb
006bfc1c  00 20 89 e0                                      add r2, sb, r0
006bfc20  0d 00 a0 e1                                      mov r0, sp
006bfc24  d7 83 f1 eb                                      bl #0x320b88
006bfc28  14 30 9d e5                                      ldr r3, [sp, #0x14]
006bfc2c  10 20 9d e5                                      ldr r2, [sp, #0x10]
006bfc30  0d 40 a0 e1                                      mov r4, sp
006bfc34  02 00 53 e1                                      cmp r3, r2
006bfc38  0e 00 00 0a                                      beq #0x6bfc78
006bfc3c  06 20 d3 e7                                      ldrb r2, [r3, r6]
006bfc40  06 30 83 e0                                      add r3, r3, r6
006bfc44  01 60 86 e2                                      add r6, r6, #1
006bfc48  72 10 ef e6                                      uxtb r1, r2
006bfc4c  41 00 41 e2                                      sub r0, r1, #0x41
006bfc50  70 00 ef e6                                      uxtb r0, r0
006bfc54  19 00 50 e3                                      cmp r0, #0x19
006bfc58  20 20 81 92                                      addls r2, r1, #0x20
006bfc5c  72 20 ef 96                                      uxtbls r2, r2
006bfc60  00 20 c3 e5                                      strb r2, [r3]
006bfc64  14 30 9d e5                                      ldr r3, [sp, #0x14]
006bfc68  10 20 9d e5                                      ldr r2, [sp, #0x10]
006bfc6c  02 20 63 e0                                      rsb r2, r3, r2
006bfc70  02 00 56 e1                                      cmp r6, r2
006bfc74  f0 ff ff 3a                                      blo #0x6bfc3c
006bfc78  08 00 8a e2                                      add r0, sl, #8
006bfc7c  0d 10 a0 e1                                      mov r1, sp
006bfc80  77 ff ff eb                                      bl #0x6bfa64
006bfc84  01 00 70 e3                                      cmn r0, #1
006bfc88  00 30 a0 03                                      moveq r3, #0
006bfc8c  00 30 88 05                                      streq r3, [r8]
006bfc90  08 00 00 0a                                      beq #0x6bfcb8
006bfc94  08 30 9a e5                                      ldr r3, [sl, #8]
006bfc98  1c 20 a0 e3                                      mov r2, #0x1c
006bfc9c  92 30 20 e0                                      mla r0, r2, r0, r3
006bfca0  18 30 90 e5                                      ldr r3, [r0, #0x18]
006bfca4  00 00 53 e3                                      cmp r3, #0
006bfca8  00 30 88 e5                                      str r3, [r8]
006bfcac  04 20 93 15                                      ldrne r2, [r3, #4]
006bfcb0  01 20 82 12                                      addne r2, r2, #1
006bfcb4  04 20 83 15                                      strne r2, [r3, #4]
006bfcb8  0d 00 a0 e1                                      mov r0, sp
006bfcbc  9b fa ff eb                                      bl #0x6be730
006bfcc0  07 30 95 e7                                      ldr r3, [r5, r7]
006bfcc4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006bfcc8  08 00 a0 e1                                      mov r0, r8
006bfccc  00 30 93 e5                                      ldr r3, [r3]
006bfcd0  03 00 52 e1                                      cmp r2, r3
006bfcd4  01 00 00 1a                                      bne #0x6bfce0
006bfcd8  20 d0 8d e2                                      add sp, sp, #0x20
006bfcdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bfce0  8a 39 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006bfce4  c0 4e 2d 00 ac 40 00 00                          .byte 0xc0, 0x4e, 0x2d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006bfcec, declared_size=428, range_size=428, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache16addHillPlaneMeshEjPKcRKNS_4core11dimension2dIfEERKNS5_IjEERKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNSD_INSE_27CMaterialVertexAttributeMapEEEfS8_S8_
; demangled: glitch::scene::CMeshCache::addHillPlaneMesh(unsigned int, char const*, glitch::core::dimension2d<float> const&, glitch::core::dimension2d<unsigned int> const&, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&, float, glitch::core::dimension2d<float> const&, glitch::core::dimension2d<float> const&)
; decoder-mode: arm
006bfcec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bfcf0  00 60 53 e2                                      subs r6, r3, #0
006bfcf4  28 d0 4d e2                                      sub sp, sp, #0x28
006bfcf8  00 50 a0 e1                                      mov r5, r0
006bfcfc  01 40 a0 e1                                      mov r4, r1
006bfd00  02 a0 a0 e1                                      mov sl, r2
006bfd04  00 60 80 05                                      streq r6, [r0]
006bfd08  51 00 00 0a                                      beq #0x6bfe54
006bfd0c  00 30 91 e5                                      ldr r3, [r1]
006bfd10  01 00 a0 e1                                      mov r0, r1
006bfd14  06 10 a0 e1                                      mov r1, r6
006bfd18  0f e0 a0 e1                                      mov lr, pc
006bfd1c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006bfd20  00 70 50 e2                                      subs r7, r0, #0
006bfd24  4d 00 00 1a                                      bne #0x6bfe60
006bfd28  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006bfd2c  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bfd30  24 80 8d e2                                      add r8, sp, #0x24
006bfd34  00 c0 8d e5                                      str ip, [sp]
006bfd38  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006bfd3c  08 00 a0 e1                                      mov r0, r8
006bfd40  0a 10 a0 e1                                      mov r1, sl
006bfd44  04 c0 8d e5                                      str ip, [sp, #4]
006bfd48  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006bfd4c  48 30 9d e5                                      ldr r3, [sp, #0x48]
006bfd50  08 c0 8d e5                                      str ip, [sp, #8]
006bfd54  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006bfd58  0c c0 8d e5                                      str ip, [sp, #0xc]
006bfd5c  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006bfd60  10 c0 8d e5                                      str ip, [sp, #0x10]
006bfd64  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006bfd68  14 c0 8d e5                                      str ip, [sp, #0x14]
006bfd6c  aa 61 00 eb                                      bl #0x6d841c
006bfd70  24 00 9d e5                                      ldr r0, [sp, #0x24]
006bfd74  00 00 50 e3                                      cmp r0, #0
006bfd78  00 00 85 05                                      streq r0, [r5]
006bfd7c  34 00 00 0a                                      beq #0x6bfe54
006bfd80  28 90 8d e2                                      add sb, sp, #0x28
006bfd84  07 10 a0 e1                                      mov r1, r7
006bfd88  30 00 a0 e3                                      mov r0, #0x30
006bfd8c  08 70 29 e5                                      str r7, [sb, #-8]!
006bfd90  05 d1 f9 eb                                      bl #0x5341ac
006bfd94  09 10 a0 e1                                      mov r1, sb
006bfd98  07 20 a0 e1                                      mov r2, r7
006bfd9c  00 a0 a0 e1                                      mov sl, r0
006bfda0  da 6b fb eb                                      bl #0x59ad10
006bfda4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006bfda8  00 00 50 e3                                      cmp r0, #0
006bfdac  00 00 00 0a                                      beq #0x6bfdb4
006bfdb0  f3 75 f1 eb                                      bl #0x31d584
006bfdb4  00 00 5a e3                                      cmp sl, #0
006bfdb8  2f 00 00 0a                                      beq #0x6bfe7c
006bfdbc  24 30 9d e5                                      ldr r3, [sp, #0x24]
006bfdc0  00 00 53 e3                                      cmp r3, #0
006bfdc4  0a 00 00 0a                                      beq #0x6bfdf4
006bfdc8  24 10 9a e5                                      ldr r1, [sl, #0x24]
006bfdcc  28 20 9a e5                                      ldr r2, [sl, #0x28]
006bfdd0  02 00 51 e1                                      cmp r1, r2
006bfdd4  2b 00 00 0a                                      beq #0x6bfe88
006bfdd8  00 30 81 e5                                      str r3, [r1]
006bfddc  04 20 93 e5                                      ldr r2, [r3, #4]
006bfde0  01 20 82 e2                                      add r2, r2, #1
006bfde4  04 20 83 e5                                      str r2, [r3, #4]
006bfde8  24 30 9a e5                                      ldr r3, [sl, #0x24]
006bfdec  04 30 83 e2                                      add r3, r3, #4
006bfdf0  24 30 8a e5                                      str r3, [sl, #0x24]
006bfdf4  0a 00 a0 e1                                      mov r0, sl
006bfdf8  f0 68 fb eb                                      bl #0x59a1c0
006bfdfc  00 30 94 e5                                      ldr r3, [r4]
006bfe00  28 20 8d e2                                      add r2, sp, #0x28
006bfe04  04 00 a0 e1                                      mov r0, r4
006bfe08  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006bfe0c  0c a0 22 e5                                      str sl, [r2, #-0xc]!
006bfe10  04 c0 9a e5                                      ldr ip, [sl, #4]
006bfe14  06 10 a0 e1                                      mov r1, r6
006bfe18  01 c0 8c e2                                      add ip, ip, #1
006bfe1c  04 c0 8a e5                                      str ip, [sl, #4]
006bfe20  33 ff 2f e1                                      blx r3
006bfe24  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006bfe28  00 00 50 e3                                      cmp r0, #0
006bfe2c  00 00 00 0a                                      beq #0x6bfe34
006bfe30  d3 75 f1 eb                                      bl #0x31d584
006bfe34  00 a0 85 e5                                      str sl, [r5]
006bfe38  04 30 9a e5                                      ldr r3, [sl, #4]
006bfe3c  01 30 83 e2                                      add r3, r3, #1
006bfe40  04 30 8a e5                                      str r3, [sl, #4]
006bfe44  24 00 9d e5                                      ldr r0, [sp, #0x24]
006bfe48  00 00 50 e3                                      cmp r0, #0
006bfe4c  00 00 00 0a                                      beq #0x6bfe54
006bfe50  cb 75 f1 eb                                      bl #0x31d584
006bfe54  05 00 a0 e1                                      mov r0, r5
006bfe58  28 d0 8d e2                                      add sp, sp, #0x28
006bfe5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bfe60  04 10 a0 e1                                      mov r1, r4
006bfe64  06 20 a0 e1                                      mov r2, r6
006bfe68  00 30 94 e5                                      ldr r3, [r4]
006bfe6c  05 00 a0 e1                                      mov r0, r5
006bfe70  0f e0 a0 e1                                      mov lr, pc
006bfe74  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006bfe78  f5 ff ff ea                                      b #0x6bfe54
006bfe7c  00 a0 85 e5                                      str sl, [r5]
006bfe80  24 00 9d e5                                      ldr r0, [sp, #0x24]
006bfe84  ef ff ff ea                                      b #0x6bfe48
006bfe88  08 20 a0 e1                                      mov r2, r8
006bfe8c  20 00 8a e2                                      add r0, sl, #0x20
006bfe90  9e fb ff eb                                      bl #0x6bed10
006bfe94  d6 ff ff ea                                      b #0x6bfdf4

; FUNCTION 0x006bfe98, declared_size=396, range_size=396, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache13addSphereMeshEjPKcfjj
; demangled: glitch::scene::CMeshCache::addSphereMesh(unsigned int, char const*, float, unsigned int, unsigned int)
; decoder-mode: arm
006bfe98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bfe9c  00 60 53 e2                                      subs r6, r3, #0
006bfea0  18 d0 4d e2                                      sub sp, sp, #0x18
006bfea4  00 50 a0 e1                                      mov r5, r0
006bfea8  01 40 a0 e1                                      mov r4, r1
006bfeac  02 a0 a0 e1                                      mov sl, r2
006bfeb0  00 60 80 05                                      streq r6, [r0]
006bfeb4  49 00 00 0a                                      beq #0x6bffe0
006bfeb8  00 30 91 e5                                      ldr r3, [r1]
006bfebc  01 00 a0 e1                                      mov r0, r1
006bfec0  06 10 a0 e1                                      mov r1, r6
006bfec4  0f e0 a0 e1                                      mov lr, pc
006bfec8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006bfecc  00 70 50 e2                                      subs r7, r0, #0
006bfed0  45 00 00 1a                                      bne #0x6bffec
006bfed4  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006bfed8  14 20 94 e5                                      ldr r2, [r4, #0x14]
006bfedc  14 80 8d e2                                      add r8, sp, #0x14
006bfee0  00 c0 8d e5                                      str ip, [sp]
006bfee4  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006bfee8  08 00 a0 e1                                      mov r0, r8
006bfeec  0a 10 a0 e1                                      mov r1, sl
006bfef0  38 30 9d e5                                      ldr r3, [sp, #0x38]
006bfef4  04 c0 8d e5                                      str ip, [sp, #4]
006bfef8  42 5e 00 eb                                      bl #0x6d7808
006bfefc  14 00 9d e5                                      ldr r0, [sp, #0x14]
006bff00  00 00 50 e3                                      cmp r0, #0
006bff04  00 00 85 05                                      streq r0, [r5]
006bff08  34 00 00 0a                                      beq #0x6bffe0
006bff0c  18 90 8d e2                                      add sb, sp, #0x18
006bff10  07 10 a0 e1                                      mov r1, r7
006bff14  30 00 a0 e3                                      mov r0, #0x30
006bff18  08 70 29 e5                                      str r7, [sb, #-8]!
006bff1c  a2 d0 f9 eb                                      bl #0x5341ac
006bff20  09 10 a0 e1                                      mov r1, sb
006bff24  07 20 a0 e1                                      mov r2, r7
006bff28  00 a0 a0 e1                                      mov sl, r0
006bff2c  77 6b fb eb                                      bl #0x59ad10
006bff30  10 00 9d e5                                      ldr r0, [sp, #0x10]
006bff34  00 00 50 e3                                      cmp r0, #0
006bff38  00 00 00 0a                                      beq #0x6bff40
006bff3c  90 75 f1 eb                                      bl #0x31d584
006bff40  00 00 5a e3                                      cmp sl, #0
006bff44  2f 00 00 0a                                      beq #0x6c0008
006bff48  14 30 9d e5                                      ldr r3, [sp, #0x14]
006bff4c  00 00 53 e3                                      cmp r3, #0
006bff50  0a 00 00 0a                                      beq #0x6bff80
006bff54  24 10 9a e5                                      ldr r1, [sl, #0x24]
006bff58  28 20 9a e5                                      ldr r2, [sl, #0x28]
006bff5c  02 00 51 e1                                      cmp r1, r2
006bff60  2b 00 00 0a                                      beq #0x6c0014
006bff64  00 30 81 e5                                      str r3, [r1]
006bff68  04 20 93 e5                                      ldr r2, [r3, #4]
006bff6c  01 20 82 e2                                      add r2, r2, #1
006bff70  04 20 83 e5                                      str r2, [r3, #4]
006bff74  24 30 9a e5                                      ldr r3, [sl, #0x24]
006bff78  04 30 83 e2                                      add r3, r3, #4
006bff7c  24 30 8a e5                                      str r3, [sl, #0x24]
006bff80  0a 00 a0 e1                                      mov r0, sl
006bff84  8d 68 fb eb                                      bl #0x59a1c0
006bff88  00 30 94 e5                                      ldr r3, [r4]
006bff8c  18 20 8d e2                                      add r2, sp, #0x18
006bff90  04 00 a0 e1                                      mov r0, r4
006bff94  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006bff98  0c a0 22 e5                                      str sl, [r2, #-0xc]!
006bff9c  04 c0 9a e5                                      ldr ip, [sl, #4]
006bffa0  06 10 a0 e1                                      mov r1, r6
006bffa4  01 c0 8c e2                                      add ip, ip, #1
006bffa8  04 c0 8a e5                                      str ip, [sl, #4]
006bffac  33 ff 2f e1                                      blx r3
006bffb0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006bffb4  00 00 50 e3                                      cmp r0, #0
006bffb8  00 00 00 0a                                      beq #0x6bffc0
006bffbc  70 75 f1 eb                                      bl #0x31d584
006bffc0  00 a0 85 e5                                      str sl, [r5]
006bffc4  04 30 9a e5                                      ldr r3, [sl, #4]
006bffc8  01 30 83 e2                                      add r3, r3, #1
006bffcc  04 30 8a e5                                      str r3, [sl, #4]
006bffd0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006bffd4  00 00 50 e3                                      cmp r0, #0
006bffd8  00 00 00 0a                                      beq #0x6bffe0
006bffdc  68 75 f1 eb                                      bl #0x31d584
006bffe0  05 00 a0 e1                                      mov r0, r5
006bffe4  18 d0 8d e2                                      add sp, sp, #0x18
006bffe8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bffec  04 10 a0 e1                                      mov r1, r4
006bfff0  06 20 a0 e1                                      mov r2, r6
006bfff4  00 30 94 e5                                      ldr r3, [r4]
006bfff8  05 00 a0 e1                                      mov r0, r5
006bfffc  0f e0 a0 e1                                      mov lr, pc
006c0000  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c0004  f5 ff ff ea                                      b #0x6bffe0
006c0008  00 a0 85 e5                                      str sl, [r5]
006c000c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006c0010  ef ff ff ea                                      b #0x6bffd4
006c0014  08 20 a0 e1                                      mov r2, r8
006c0018  20 00 8a e2                                      add r0, sl, #0x20
006c001c  3b fb ff eb                                      bl #0x6bed10
006c0020  d6 ff ff ea                                      b #0x6bff80

; FUNCTION 0x006c0024, declared_size=436, range_size=436, mode=arm
; class-group: glitch::scene::CMeshCache
; alias: _ZN6glitch5scene10CMeshCache12addArrowMeshEjPKcNS_5video6SColorES5_jjffff
; demangled: glitch::scene::CMeshCache::addArrowMesh(unsigned int, char const*, glitch::video::SColor, glitch::video::SColor, unsigned int, unsigned int, float, float, float, float)
; decoder-mode: arm
006c0024  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006c0028  00 60 53 e2                                      subs r6, r3, #0
006c002c  30 d0 4d e2                                      sub sp, sp, #0x30
006c0030  00 50 a0 e1                                      mov r5, r0
006c0034  01 40 a0 e1                                      mov r4, r1
006c0038  02 a0 a0 e1                                      mov sl, r2
006c003c  00 60 80 05                                      streq r6, [r0]
006c0040  53 00 00 0a                                      beq #0x6c0194
006c0044  00 30 91 e5                                      ldr r3, [r1]
006c0048  01 00 a0 e1                                      mov r0, r1
006c004c  06 10 a0 e1                                      mov r1, r6
006c0050  0f e0 a0 e1                                      mov lr, pc
006c0054  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006c0058  00 70 50 e2                                      subs r7, r0, #0
006c005c  4f 00 00 1a                                      bne #0x6c01a0
006c0060  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006c0064  14 20 94 e5                                      ldr r2, [r4, #0x14]
006c0068  2c 80 8d e2                                      add r8, sp, #0x2c
006c006c  00 c0 8d e5                                      str ip, [sp]
006c0070  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006c0074  08 00 a0 e1                                      mov r0, r8
006c0078  0a 10 a0 e1                                      mov r1, sl
006c007c  04 c0 8d e5                                      str ip, [sp, #4]
006c0080  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006c0084  58 30 9d e5                                      ldr r3, [sp, #0x58]
006c0088  08 c0 8d e5                                      str ip, [sp, #8]
006c008c  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006c0090  0c c0 8d e5                                      str ip, [sp, #0xc]
006c0094  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
006c0098  10 c0 8d e5                                      str ip, [sp, #0x10]
006c009c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006c00a0  14 c0 8d e5                                      str ip, [sp, #0x14]
006c00a4  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006c00a8  18 c0 8d e5                                      str ip, [sp, #0x18]
006c00ac  89 69 00 eb                                      bl #0x6da6d8
006c00b0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c00b4  00 00 50 e3                                      cmp r0, #0
006c00b8  00 00 85 05                                      streq r0, [r5]
006c00bc  34 00 00 0a                                      beq #0x6c0194
006c00c0  30 90 8d e2                                      add sb, sp, #0x30
006c00c4  07 10 a0 e1                                      mov r1, r7
006c00c8  30 00 a0 e3                                      mov r0, #0x30
006c00cc  08 70 29 e5                                      str r7, [sb, #-8]!
006c00d0  35 d0 f9 eb                                      bl #0x5341ac
006c00d4  09 10 a0 e1                                      mov r1, sb
006c00d8  07 20 a0 e1                                      mov r2, r7
006c00dc  00 a0 a0 e1                                      mov sl, r0
006c00e0  0a 6b fb eb                                      bl #0x59ad10
006c00e4  28 00 9d e5                                      ldr r0, [sp, #0x28]
006c00e8  00 00 50 e3                                      cmp r0, #0
006c00ec  00 00 00 0a                                      beq #0x6c00f4
006c00f0  23 75 f1 eb                                      bl #0x31d584
006c00f4  00 00 5a e3                                      cmp sl, #0
006c00f8  2f 00 00 0a                                      beq #0x6c01bc
006c00fc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006c0100  00 00 53 e3                                      cmp r3, #0
006c0104  0a 00 00 0a                                      beq #0x6c0134
006c0108  24 10 9a e5                                      ldr r1, [sl, #0x24]
006c010c  28 20 9a e5                                      ldr r2, [sl, #0x28]
006c0110  02 00 51 e1                                      cmp r1, r2
006c0114  2b 00 00 0a                                      beq #0x6c01c8
006c0118  00 30 81 e5                                      str r3, [r1]
006c011c  04 20 93 e5                                      ldr r2, [r3, #4]
006c0120  01 20 82 e2                                      add r2, r2, #1
006c0124  04 20 83 e5                                      str r2, [r3, #4]
006c0128  24 30 9a e5                                      ldr r3, [sl, #0x24]
006c012c  04 30 83 e2                                      add r3, r3, #4
006c0130  24 30 8a e5                                      str r3, [sl, #0x24]
006c0134  0a 00 a0 e1                                      mov r0, sl
006c0138  20 68 fb eb                                      bl #0x59a1c0
006c013c  00 30 94 e5                                      ldr r3, [r4]
006c0140  30 20 8d e2                                      add r2, sp, #0x30
006c0144  04 00 a0 e1                                      mov r0, r4
006c0148  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006c014c  0c a0 22 e5                                      str sl, [r2, #-0xc]!
006c0150  04 c0 9a e5                                      ldr ip, [sl, #4]
006c0154  06 10 a0 e1                                      mov r1, r6
006c0158  01 c0 8c e2                                      add ip, ip, #1
006c015c  04 c0 8a e5                                      str ip, [sl, #4]
006c0160  33 ff 2f e1                                      blx r3
006c0164  24 00 9d e5                                      ldr r0, [sp, #0x24]
006c0168  00 00 50 e3                                      cmp r0, #0
006c016c  00 00 00 0a                                      beq #0x6c0174
006c0170  03 75 f1 eb                                      bl #0x31d584
006c0174  00 a0 85 e5                                      str sl, [r5]
006c0178  04 30 9a e5                                      ldr r3, [sl, #4]
006c017c  01 30 83 e2                                      add r3, r3, #1
006c0180  04 30 8a e5                                      str r3, [sl, #4]
006c0184  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c0188  00 00 50 e3                                      cmp r0, #0
006c018c  00 00 00 0a                                      beq #0x6c0194
006c0190  fb 74 f1 eb                                      bl #0x31d584
006c0194  05 00 a0 e1                                      mov r0, r5
006c0198  30 d0 8d e2                                      add sp, sp, #0x30
006c019c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006c01a0  04 10 a0 e1                                      mov r1, r4
006c01a4  06 20 a0 e1                                      mov r2, r6
006c01a8  00 30 94 e5                                      ldr r3, [r4]
006c01ac  05 00 a0 e1                                      mov r0, r5
006c01b0  0f e0 a0 e1                                      mov lr, pc
006c01b4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c01b8  f5 ff ff ea                                      b #0x6c0194
006c01bc  00 a0 85 e5                                      str sl, [r5]
006c01c0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006c01c4  ef ff ff ea                                      b #0x6c0188
006c01c8  08 20 a0 e1                                      mov r2, r8
006c01cc  20 00 8a e2                                      add r0, sl, #0x20
006c01d0  ce fa ff eb                                      bl #0x6bed10
006c01d4  d6 ff ff ea                                      b #0x6c0134
