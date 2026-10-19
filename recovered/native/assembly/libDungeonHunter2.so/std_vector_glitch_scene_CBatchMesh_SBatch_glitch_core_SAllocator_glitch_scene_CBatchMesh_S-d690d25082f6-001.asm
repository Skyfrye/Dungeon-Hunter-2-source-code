; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057a398, declared_size=272, range_size=272, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh6SBatchENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0057a398  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057a39c  00 40 a0 e1                                      mov r4, r0
0057a3a0  00 20 90 e5                                      ldr r2, [r0]
0057a3a4  08 00 90 e5                                      ldr r0, [r0, #8]
0057a3a8  08 d0 4d e2                                      sub sp, sp, #8
0057a3ac  01 30 a0 e1                                      mov r3, r1
0057a3b0  00 00 62 e0                                      rsb r0, r2, r0
0057a3b4  40 01 a0 e1                                      asr r0, r0, #2
0057a3b8  04 10 8d e5                                      str r1, [sp, #4]
0057a3bc  80 10 80 e0                                      add r1, r0, r0, lsl #1
0057a3c0  01 12 81 e0                                      add r1, r1, r1, lsl #4
0057a3c4  01 14 81 e0                                      add r1, r1, r1, lsl #8
0057a3c8  01 18 81 e0                                      add r1, r1, r1, lsl #16
0057a3cc  01 01 80 e0                                      add r0, r0, r1, lsl #2
0057a3d0  00 00 53 e1                                      cmp r3, r0
0057a3d4  24 00 00 9a                                      bls #0x57a46c
0057a3d8  cc 1c 0c e3                                      movw r1, #0xcccc
0057a3dc  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0057a3e0  01 00 53 e1                                      cmp r3, r1
0057a3e4  22 00 00 8a                                      bhi #0x57a474
0057a3e8  04 30 94 e5                                      ldr r3, [r4, #4]
0057a3ec  00 00 52 e3                                      cmp r2, #0
0057a3f0  03 10 62 e0                                      rsb r1, r2, r3
0057a3f4  41 11 a0 e1                                      asr r1, r1, #2
0057a3f8  81 50 81 e0                                      add r5, r1, r1, lsl #1
0057a3fc  05 52 85 e0                                      add r5, r5, r5, lsl #4
0057a400  05 54 85 e0                                      add r5, r5, r5, lsl #8
0057a404  05 58 85 e0                                      add r5, r5, r5, lsl #16
0057a408  05 51 81 e0                                      add r5, r1, r5, lsl #2
0057a40c  1d 00 00 0a                                      beq #0x57a488
0057a410  04 00 a0 e1                                      mov r0, r4
0057a414  04 10 8d e2                                      add r1, sp, #4
0057a418  71 fd ff eb                                      bl #0x5799e4
0057a41c  04 60 94 e5                                      ldr r6, [r4, #4]
0057a420  00 70 94 e5                                      ldr r7, [r4]
0057a424  00 80 a0 e1                                      mov r8, r0
0057a428  07 00 56 e1                                      cmp r6, r7
0057a42c  05 00 00 0a                                      beq #0x57a448
0057a430  14 60 46 e2                                      sub r6, r6, #0x14
0057a434  06 00 a0 e1                                      mov r0, r6
0057a438  ca ff ff eb                                      bl #0x57a368
0057a43c  06 00 57 e1                                      cmp r7, r6
0057a440  fa ff ff 1a                                      bne #0x57a430
0057a444  00 60 94 e5                                      ldr r6, [r4]
0057a448  06 00 a0 e1                                      mov r0, r6
0057a44c  ff 57 f6 eb                                      bl #0x310450
0057a450  04 20 9d e5                                      ldr r2, [sp, #4]
0057a454  14 30 a0 e3                                      mov r3, #0x14
0057a458  93 85 25 e0                                      mla r5, r3, r5, r8
0057a45c  93 82 23 e0                                      mla r3, r3, r2, r8
0057a460  04 50 84 e5                                      str r5, [r4, #4]
0057a464  08 30 84 e5                                      str r3, [r4, #8]
0057a468  00 80 84 e5                                      str r8, [r4]
0057a46c  08 d0 8d e2                                      add sp, sp, #8
0057a470  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0057a474  28 00 9f e5                                      ldr r0, [pc, #0x28]
0057a478  00 00 8f e0                                      add r0, pc, r0
0057a47c  6f 3a 06 eb                                      bl #0x708e40
0057a480  00 20 94 e5                                      ldr r2, [r4]
0057a484  d7 ff ff ea                                      b #0x57a3e8
0057a488  04 30 9d e5                                      ldr r3, [sp, #4]
0057a48c  14 00 a0 e3                                      mov r0, #0x14
0057a490  02 10 a0 e1                                      mov r1, r2
0057a494  90 03 00 e0                                      mul r0, r0, r3
0057a498  32 58 f6 eb                                      bl #0x310568
0057a49c  00 80 a0 e1                                      mov r8, r0
0057a4a0  ea ff ff ea                                      b #0x57a450
; mapping-symbol data/literal pool
0057a4a4  f0 3f 34 00                                      .byte 0xf0, 0x3f, 0x34, 0x00

; FUNCTION 0x0057a558, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh6SBatchENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0057a558  70 40 2d e9                                      push {r4, r5, r6, lr}
0057a55c  04 40 90 e5                                      ldr r4, [r0, #4]
0057a560  00 50 90 e5                                      ldr r5, [r0]
0057a564  00 60 a0 e1                                      mov r6, r0
0057a568  05 00 54 e1                                      cmp r4, r5
0057a56c  04 00 00 0a                                      beq #0x57a584
0057a570  14 40 44 e2                                      sub r4, r4, #0x14
0057a574  04 00 a0 e1                                      mov r0, r4
0057a578  7a ff ff eb                                      bl #0x57a368
0057a57c  04 00 55 e1                                      cmp r5, r4
0057a580  fa ff ff 1a                                      bne #0x57a570
0057a584  00 00 96 e5                                      ldr r0, [r6]
0057a588  00 00 50 e3                                      cmp r0, #0
0057a58c  00 00 00 0a                                      beq #0x57a594
0057a590  ae 57 f6 eb                                      bl #0x310450
0057a594  06 00 a0 e1                                      mov r0, r6
0057a598  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0057b748, declared_size=440, range_size=440, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh6SBatchENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::CBatchMesh::SBatch const&)
; decoder-mode: arm
0057b748  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057b74c  04 80 90 e5                                      ldr r8, [r0, #4]
0057b750  08 30 90 e5                                      ldr r3, [r0, #8]
0057b754  14 d0 4d e2                                      sub sp, sp, #0x14
0057b758  00 50 a0 e1                                      mov r5, r0
0057b75c  03 00 58 e1                                      cmp r8, r3
0057b760  01 40 a0 e1                                      mov r4, r1
0057b764  1c 00 00 0a                                      beq #0x57b7dc
0057b768  00 30 91 e5                                      ldr r3, [r1]
0057b76c  00 30 88 e5                                      str r3, [r8]
0057b770  00 00 53 e3                                      cmp r3, #0
0057b774  04 20 93 15                                      ldrne r2, [r3, #4]
0057b778  01 20 82 12                                      addne r2, r2, #1
0057b77c  04 20 83 15                                      strne r2, [r3, #4]
0057b780  04 30 91 e5                                      ldr r3, [r1, #4]
0057b784  04 30 88 e5                                      str r3, [r8, #4]
0057b788  00 00 53 e3                                      cmp r3, #0
0057b78c  00 20 93 15                                      ldrne r2, [r3]
0057b790  01 20 82 12                                      addne r2, r2, #1
0057b794  00 20 83 15                                      strne r2, [r3]
0057b798  08 30 91 e5                                      ldr r3, [r1, #8]
0057b79c  08 30 88 e5                                      str r3, [r8, #8]
0057b7a0  00 00 53 e3                                      cmp r3, #0
0057b7a4  00 20 93 15                                      ldrne r2, [r3]
0057b7a8  01 20 82 12                                      addne r2, r2, #1
0057b7ac  00 20 83 15                                      strne r2, [r3]
0057b7b0  bc 30 d1 e1                                      ldrh r3, [r1, #0xc]
0057b7b4  bc 30 c8 e1                                      strh r3, [r8, #0xc]
0057b7b8  be 30 d1 e1                                      ldrh r3, [r1, #0xe]
0057b7bc  be 30 c8 e1                                      strh r3, [r8, #0xe]
0057b7c0  b0 41 d1 e1                                      ldrh r4, [r1, #0x10]
0057b7c4  b0 41 c8 e1                                      strh r4, [r8, #0x10]
0057b7c8  04 30 90 e5                                      ldr r3, [r0, #4]
0057b7cc  14 30 83 e2                                      add r3, r3, #0x14
0057b7d0  04 30 80 e5                                      str r3, [r0, #4]
0057b7d4  14 d0 8d e2                                      add sp, sp, #0x14
0057b7d8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0057b7dc  00 20 90 e5                                      ldr r2, [r0]
0057b7e0  cc 3c 0c e3                                      movw r3, #0xcccc
0057b7e4  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0057b7e8  08 20 62 e0                                      rsb r2, r2, r8
0057b7ec  42 21 a0 e1                                      asr r2, r2, #2
0057b7f0  82 10 82 e0                                      add r1, r2, r2, lsl #1
0057b7f4  01 12 81 e0                                      add r1, r1, r1, lsl #4
0057b7f8  01 14 81 e0                                      add r1, r1, r1, lsl #8
0057b7fc  01 18 81 e0                                      add r1, r1, r1, lsl #16
0057b800  01 21 82 e0                                      add r2, r2, r1, lsl #2
0057b804  01 00 52 e3                                      cmp r2, #1
0057b808  02 10 82 20                                      addhs r1, r2, r2
0057b80c  01 10 82 32                                      addlo r1, r2, #1
0057b810  03 00 51 e1                                      cmp r1, r3
0057b814  34 00 00 9a                                      bls #0x57b8ec
0057b818  0f 70 e0 e3                                      mvn r7, #0xf
0057b81c  00 10 a0 e3                                      mov r1, #0
0057b820  07 00 a0 e1                                      mov r0, r7
0057b824  4f 53 f6 eb                                      bl #0x310568
0057b828  00 60 a0 e1                                      mov r6, r0
0057b82c  06 20 a0 e1                                      mov r2, r6
0057b830  00 00 95 e5                                      ldr r0, [r5]
0057b834  08 10 a0 e1                                      mov r1, r8
0057b838  0c 30 8d e2                                      add r3, sp, #0xc
0057b83c  00 c0 a0 e3                                      mov ip, #0
0057b840  00 c0 8d e5                                      str ip, [sp]
0057b844  ca f7 ff eb                                      bl #0x579774
0057b848  00 30 94 e5                                      ldr r3, [r4]
0057b84c  14 a0 80 e2                                      add sl, r0, #0x14
0057b850  00 30 80 e5                                      str r3, [r0]
0057b854  00 00 53 e3                                      cmp r3, #0
0057b858  04 20 93 15                                      ldrne r2, [r3, #4]
0057b85c  01 20 82 12                                      addne r2, r2, #1
0057b860  04 20 83 15                                      strne r2, [r3, #4]
0057b864  04 30 94 e5                                      ldr r3, [r4, #4]
0057b868  04 30 80 e5                                      str r3, [r0, #4]
0057b86c  00 00 53 e3                                      cmp r3, #0
0057b870  00 20 93 15                                      ldrne r2, [r3]
0057b874  01 20 82 12                                      addne r2, r2, #1
0057b878  00 20 83 15                                      strne r2, [r3]
0057b87c  08 30 94 e5                                      ldr r3, [r4, #8]
0057b880  08 30 80 e5                                      str r3, [r0, #8]
0057b884  00 00 53 e3                                      cmp r3, #0
0057b888  00 20 93 15                                      ldrne r2, [r3]
0057b88c  01 20 82 12                                      addne r2, r2, #1
0057b890  00 20 83 15                                      strne r2, [r3]
0057b894  bc 30 d4 e1                                      ldrh r3, [r4, #0xc]
0057b898  bc 30 c0 e1                                      strh r3, [r0, #0xc]
0057b89c  be 30 d4 e1                                      ldrh r3, [r4, #0xe]
0057b8a0  be 30 c0 e1                                      strh r3, [r0, #0xe]
0057b8a4  b0 41 d4 e1                                      ldrh r4, [r4, #0x10]
0057b8a8  b0 41 c0 e1                                      strh r4, [r0, #0x10]
0057b8ac  04 40 95 e5                                      ldr r4, [r5, #4]
0057b8b0  00 80 95 e5                                      ldr r8, [r5]
0057b8b4  08 00 54 e1                                      cmp r4, r8
0057b8b8  05 00 00 0a                                      beq #0x57b8d4
0057b8bc  14 40 44 e2                                      sub r4, r4, #0x14
0057b8c0  04 00 a0 e1                                      mov r0, r4
0057b8c4  a7 fa ff eb                                      bl #0x57a368
0057b8c8  04 00 58 e1                                      cmp r8, r4
0057b8cc  fa ff ff 1a                                      bne #0x57b8bc
0057b8d0  00 80 95 e5                                      ldr r8, [r5]
0057b8d4  08 00 a0 e1                                      mov r0, r8
0057b8d8  07 70 86 e0                                      add r7, r6, r7
0057b8dc  db 52 f6 eb                                      bl #0x310450
0057b8e0  08 70 85 e5                                      str r7, [r5, #8]
0057b8e4  40 04 85 e8                                      stm r5, {r6, sl}
0057b8e8  b9 ff ff ea                                      b #0x57b7d4
0057b8ec  01 00 52 e1                                      cmp r2, r1
0057b8f0  c8 ff ff 8a                                      bhi #0x57b818
0057b8f4  14 70 a0 e3                                      mov r7, #0x14
0057b8f8  97 01 07 e0                                      mul r7, r7, r1
0057b8fc  c6 ff ff ea                                      b #0x57b81c

; FUNCTION 0x0057bb4c, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh6SBatchENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch*, std::__false_type const&)
; decoder-mode: arm
0057bb4c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0057bb50  04 40 90 e5                                      ldr r4, [r0, #4]
0057bb54  00 50 a0 e1                                      mov r5, r0
0057bb58  02 80 a0 e1                                      mov r8, r2
0057bb5c  04 30 62 e0                                      rsb r3, r2, r4
0057bb60  43 31 a0 e1                                      asr r3, r3, #2
0057bb64  01 70 a0 e1                                      mov r7, r1
0057bb68  83 a0 83 e0                                      add sl, r3, r3, lsl #1
0057bb6c  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0057bb70  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0057bb74  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0057bb78  0a a1 83 e0                                      add sl, r3, sl, lsl #2
0057bb7c  00 00 5a e3                                      cmp sl, #0
0057bb80  01 a0 a0 d1                                      movle sl, r1
0057bb84  0a 00 00 da                                      ble #0x57bbb4
0057bb88  0a 60 a0 e1                                      mov r6, sl
0057bb8c  00 40 a0 e3                                      mov r4, #0
0057bb90  04 00 87 e0                                      add r0, r7, r4
0057bb94  04 10 88 e0                                      add r1, r8, r4
0057bb98  bb ff ff eb                                      bl #0x57ba8c
0057bb9c  01 60 56 e2                                      subs r6, r6, #1
0057bba0  14 40 84 e2                                      add r4, r4, #0x14
0057bba4  f9 ff ff 1a                                      bne #0x57bb90
0057bba8  14 30 a0 e3                                      mov r3, #0x14
0057bbac  93 7a 2a e0                                      mla sl, r3, sl, r7
0057bbb0  04 40 95 e5                                      ldr r4, [r5, #4]
0057bbb4  0a 00 54 e1                                      cmp r4, sl
0057bbb8  05 00 00 0a                                      beq #0x57bbd4
0057bbbc  0a 60 a0 e1                                      mov r6, sl
0057bbc0  06 00 a0 e1                                      mov r0, r6
0057bbc4  14 60 86 e2                                      add r6, r6, #0x14
0057bbc8  e6 f9 ff eb                                      bl #0x57a368
0057bbcc  06 00 54 e1                                      cmp r4, r6
0057bbd0  fa ff ff 1a                                      bne #0x57bbc0
0057bbd4  04 a0 85 e5                                      str sl, [r5, #4]
0057bbd8  07 00 a0 e1                                      mov r0, r7
0057bbdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
