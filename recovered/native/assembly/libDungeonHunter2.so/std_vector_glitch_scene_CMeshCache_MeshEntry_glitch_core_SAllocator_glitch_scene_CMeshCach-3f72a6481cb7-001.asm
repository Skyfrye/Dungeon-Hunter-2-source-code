; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006be768, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CMeshCache9MeshEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006be768  70 40 2d e9                                      push {r4, r5, r6, lr}
006be76c  04 40 90 e5                                      ldr r4, [r0, #4]
006be770  00 50 90 e5                                      ldr r5, [r0]
006be774  00 60 a0 e1                                      mov r6, r0
006be778  05 00 54 e1                                      cmp r4, r5
006be77c  04 00 00 0a                                      beq #0x6be794
006be780  1c 40 44 e2                                      sub r4, r4, #0x1c
006be784  04 00 a0 e1                                      mov r0, r4
006be788  e8 ff ff eb                                      bl #0x6be730
006be78c  04 00 55 e1                                      cmp r5, r4
006be790  fa ff ff 1a                                      bne #0x6be780
006be794  00 00 96 e5                                      ldr r0, [r6]
006be798  00 00 50 e3                                      cmp r0, #0
006be79c  00 00 00 0a                                      beq #0x6be7a4
006be7a0  2a 47 f1 eb                                      bl #0x310450
006be7a4  06 00 a0 e1                                      mov r0, r6
006be7a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006be810, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CMeshCache9MeshEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::scene::CMeshCache::MeshEntry*, std::__false_type const&)
; decoder-mode: arm
006be810  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006be814  00 70 a0 e1                                      mov r7, r0
006be818  04 00 90 e5                                      ldr r0, [r0, #4]
006be81c  1c 30 81 e2                                      add r3, r1, #0x1c
006be820  01 60 a0 e1                                      mov r6, r1
006be824  00 00 53 e1                                      cmp r3, r0
006be828  11 00 00 0a                                      beq #0x6be874
006be82c  00 30 63 e0                                      rsb r3, r3, r0
006be830  43 31 a0 e1                                      asr r3, r3, #2
006be834  83 41 83 e0                                      add r4, r3, r3, lsl #3
006be838  04 43 84 e0                                      add r4, r4, r4, lsl #6
006be83c  84 41 83 e0                                      add r4, r3, r4, lsl #3
006be840  84 47 84 e0                                      add r4, r4, r4, lsl #15
006be844  84 41 83 e0                                      add r4, r3, r4, lsl #3
006be848  00 40 64 e2                                      rsb r4, r4, #0
006be84c  00 00 54 e3                                      cmp r4, #0
006be850  07 00 00 da                                      ble #0x6be874
006be854  01 00 a0 e1                                      mov r0, r1
006be858  1c 50 80 e2                                      add r5, r0, #0x1c
006be85c  05 10 a0 e1                                      mov r1, r5
006be860  d6 ff ff eb                                      bl #0x6be7c0
006be864  01 40 54 e2                                      subs r4, r4, #1
006be868  05 00 a0 e1                                      mov r0, r5
006be86c  f9 ff ff 1a                                      bne #0x6be858
006be870  04 00 97 e5                                      ldr r0, [r7, #4]
006be874  1c 00 40 e2                                      sub r0, r0, #0x1c
006be878  04 00 87 e5                                      str r0, [r7, #4]
006be87c  ab ff ff eb                                      bl #0x6be730
006be880  06 00 a0 e1                                      mov r0, r6
006be884  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006be9cc, declared_size=152, range_size=152, mode=arm
; class-group: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CMeshCache9MeshEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::scene::CMeshCache::MeshEntry*, glitch::scene::CMeshCache::MeshEntry*, std::__false_type const&)
; decoder-mode: arm
006be9cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006be9d0  04 40 90 e5                                      ldr r4, [r0, #4]
006be9d4  00 50 a0 e1                                      mov r5, r0
006be9d8  02 80 a0 e1                                      mov r8, r2
006be9dc  04 30 62 e0                                      rsb r3, r2, r4
006be9e0  43 31 a0 e1                                      asr r3, r3, #2
006be9e4  01 70 a0 e1                                      mov r7, r1
006be9e8  83 a1 83 e0                                      add sl, r3, r3, lsl #3
006be9ec  0a a3 8a e0                                      add sl, sl, sl, lsl #6
006be9f0  8a a1 83 e0                                      add sl, r3, sl, lsl #3
006be9f4  8a a7 8a e0                                      add sl, sl, sl, lsl #15
006be9f8  8a a1 83 e0                                      add sl, r3, sl, lsl #3
006be9fc  00 a0 6a e2                                      rsb sl, sl, #0
006bea00  00 00 5a e3                                      cmp sl, #0
006bea04  01 a0 a0 d1                                      movle sl, r1
006bea08  0a 00 00 da                                      ble #0x6bea38
006bea0c  0a 60 a0 e1                                      mov r6, sl
006bea10  00 40 a0 e3                                      mov r4, #0
006bea14  04 00 87 e0                                      add r0, r7, r4
006bea18  04 10 88 e0                                      add r1, r8, r4
006bea1c  67 ff ff eb                                      bl #0x6be7c0
006bea20  01 60 56 e2                                      subs r6, r6, #1
006bea24  1c 40 84 e2                                      add r4, r4, #0x1c
006bea28  f9 ff ff 1a                                      bne #0x6bea14
006bea2c  1c 30 a0 e3                                      mov r3, #0x1c
006bea30  93 7a 2a e0                                      mla sl, r3, sl, r7
006bea34  04 40 95 e5                                      ldr r4, [r5, #4]
006bea38  0a 00 54 e1                                      cmp r4, sl
006bea3c  05 00 00 0a                                      beq #0x6bea58
006bea40  0a 60 a0 e1                                      mov r6, sl
006bea44  06 00 a0 e1                                      mov r0, r6
006bea48  1c 60 86 e2                                      add r6, r6, #0x1c
006bea4c  37 ff ff eb                                      bl #0x6be730
006bea50  06 00 54 e1                                      cmp r4, r6
006bea54  fa ff ff 1a                                      bne #0x6bea44
006bea58  04 a0 85 e5                                      str sl, [r5, #4]
006bea5c  07 00 a0 e1                                      mov r0, r7
006bea60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006bf3d4, declared_size=436, range_size=436, mode=arm
; class-group: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CMeshCache9MeshEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::CMeshCache::MeshEntry const&)
; decoder-mode: arm
006bf3d4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bf3d8  50 00 90 e9                                      ldmib r0, {r4, r6}
006bf3dc  00 70 a0 e1                                      mov r7, r0
006bf3e0  01 80 a0 e1                                      mov r8, r1
006bf3e4  06 00 54 e1                                      cmp r4, r6
006bf3e8  0f 00 00 0a                                      beq #0x6bf42c
006bf3ec  10 40 84 e5                                      str r4, [r4, #0x10]
006bf3f0  14 40 84 e5                                      str r4, [r4, #0x14]
006bf3f4  10 20 98 e5                                      ldr r2, [r8, #0x10]
006bf3f8  04 00 a0 e1                                      mov r0, r4
006bf3fc  14 10 91 e5                                      ldr r1, [r1, #0x14]
006bf400  fb 9a f1 eb                                      bl #0x325ff4
006bf404  18 30 98 e5                                      ldr r3, [r8, #0x18]
006bf408  00 00 53 e3                                      cmp r3, #0
006bf40c  18 30 84 e5                                      str r3, [r4, #0x18]
006bf410  04 20 93 15                                      ldrne r2, [r3, #4]
006bf414  01 20 82 12                                      addne r2, r2, #1
006bf418  04 20 83 15                                      strne r2, [r3, #4]
006bf41c  04 30 97 e5                                      ldr r3, [r7, #4]
006bf420  1c 30 83 e2                                      add r3, r3, #0x1c
006bf424  04 30 87 e5                                      str r3, [r7, #4]
006bf428  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bf42c  00 20 90 e5                                      ldr r2, [r0]
006bf430  49 32 09 e3                                      movw r3, #0x9249
006bf434  03 36 83 e1                                      orr r3, r3, r3, lsl #12
006bf438  06 20 62 e0                                      rsb r2, r2, r6
006bf43c  42 21 a0 e1                                      asr r2, r2, #2
006bf440  82 11 82 e0                                      add r1, r2, r2, lsl #3
006bf444  01 13 81 e0                                      add r1, r1, r1, lsl #6
006bf448  81 11 82 e0                                      add r1, r2, r1, lsl #3
006bf44c  81 17 81 e0                                      add r1, r1, r1, lsl #15
006bf450  81 21 82 e0                                      add r2, r2, r1, lsl #3
006bf454  00 20 62 e2                                      rsb r2, r2, #0
006bf458  01 00 52 e3                                      cmp r2, #1
006bf45c  02 10 82 20                                      addhs r1, r2, r2
006bf460  01 10 82 32                                      addlo r1, r2, #1
006bf464  03 00 51 e1                                      cmp r1, r3
006bf468  41 00 00 9a                                      bls #0x6bf574
006bf46c  03 b0 e0 e3                                      mvn fp, #3
006bf470  0b 00 a0 e1                                      mov r0, fp
006bf474  00 10 a0 e3                                      mov r1, #0
006bf478  3a 44 f1 eb                                      bl #0x310568
006bf47c  00 50 97 e5                                      ldr r5, [r7]
006bf480  00 a0 a0 e1                                      mov sl, r0
006bf484  06 60 65 e0                                      rsb r6, r5, r6
006bf488  46 61 a0 e1                                      asr r6, r6, #2
006bf48c  86 91 86 e0                                      add sb, r6, r6, lsl #3
006bf490  09 93 89 e0                                      add sb, sb, sb, lsl #6
006bf494  89 91 86 e0                                      add sb, r6, sb, lsl #3
006bf498  89 97 89 e0                                      add sb, sb, sb, lsl #15
006bf49c  89 91 86 e0                                      add sb, r6, sb, lsl #3
006bf4a0  00 90 69 e2                                      rsb sb, sb, #0
006bf4a4  00 00 59 e3                                      cmp sb, #0
006bf4a8  00 90 a0 d1                                      movle sb, r0
006bf4ac  13 00 00 da                                      ble #0x6bf500
006bf4b0  09 60 a0 e1                                      mov r6, sb
006bf4b4  00 40 a0 e1                                      mov r4, r0
006bf4b8  10 40 84 e5                                      str r4, [r4, #0x10]
006bf4bc  14 40 84 e5                                      str r4, [r4, #0x14]
006bf4c0  10 20 95 e5                                      ldr r2, [r5, #0x10]
006bf4c4  04 00 a0 e1                                      mov r0, r4
006bf4c8  14 10 95 e5                                      ldr r1, [r5, #0x14]
006bf4cc  c8 9a f1 eb                                      bl #0x325ff4
006bf4d0  18 30 95 e5                                      ldr r3, [r5, #0x18]
006bf4d4  1c 50 85 e2                                      add r5, r5, #0x1c
006bf4d8  00 00 53 e3                                      cmp r3, #0
006bf4dc  18 30 84 e5                                      str r3, [r4, #0x18]
006bf4e0  04 20 93 15                                      ldrne r2, [r3, #4]
006bf4e4  1c 40 84 e2                                      add r4, r4, #0x1c
006bf4e8  01 20 82 12                                      addne r2, r2, #1
006bf4ec  04 20 83 15                                      strne r2, [r3, #4]
006bf4f0  01 60 56 e2                                      subs r6, r6, #1
006bf4f4  ef ff ff 1a                                      bne #0x6bf4b8
006bf4f8  1c 30 a0 e3                                      mov r3, #0x1c
006bf4fc  93 a9 29 e0                                      mla sb, r3, sb, sl
006bf500  10 90 89 e5                                      str sb, [sb, #0x10]
006bf504  14 90 89 e5                                      str sb, [sb, #0x14]
006bf508  10 20 98 e5                                      ldr r2, [r8, #0x10]
006bf50c  09 00 a0 e1                                      mov r0, sb
006bf510  14 10 98 e5                                      ldr r1, [r8, #0x14]
006bf514  b6 9a f1 eb                                      bl #0x325ff4
006bf518  18 30 98 e5                                      ldr r3, [r8, #0x18]
006bf51c  18 30 89 e5                                      str r3, [sb, #0x18]
006bf520  00 00 53 e3                                      cmp r3, #0
006bf524  04 20 93 15                                      ldrne r2, [r3, #4]
006bf528  1c 90 89 e2                                      add sb, sb, #0x1c
006bf52c  01 20 82 12                                      addne r2, r2, #1
006bf530  04 20 83 15                                      strne r2, [r3, #4]
006bf534  04 40 97 e5                                      ldr r4, [r7, #4]
006bf538  00 50 97 e5                                      ldr r5, [r7]
006bf53c  05 00 54 e1                                      cmp r4, r5
006bf540  05 00 00 0a                                      beq #0x6bf55c
006bf544  1c 40 44 e2                                      sub r4, r4, #0x1c
006bf548  04 00 a0 e1                                      mov r0, r4
006bf54c  77 fc ff eb                                      bl #0x6be730
006bf550  04 00 55 e1                                      cmp r5, r4
006bf554  fa ff ff 1a                                      bne #0x6bf544
006bf558  00 50 97 e5                                      ldr r5, [r7]
006bf55c  05 00 a0 e1                                      mov r0, r5
006bf560  0b b0 8a e0                                      add fp, sl, fp
006bf564  b9 43 f1 eb                                      bl #0x310450
006bf568  00 0a 87 e9                                      stmib r7, {sb, fp}
006bf56c  00 a0 87 e5                                      str sl, [r7]
006bf570  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bf574  01 00 52 e1                                      cmp r2, r1
006bf578  bb ff ff 8a                                      bhi #0x6bf46c
006bf57c  1c b0 a0 e3                                      mov fp, #0x1c
006bf580  9b 01 0b e0                                      mul fp, fp, r1
006bf584  b9 ff ff ea                                      b #0x6bf470
