; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ba6b4, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
005ba6b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005ba6b8  14 00 90 e8                                      ldm r0, {r2, r4}
005ba6bc  cc 3c 0c e3                                      movw r3, #0xcccc
005ba6c0  cc 3c 40 e3                                      movt r3, #0xccc
005ba6c4  04 20 62 e0                                      rsb r2, r2, r4
005ba6c8  42 21 a0 e1                                      asr r2, r2, #2
005ba6cc  01 50 a0 e1                                      mov r5, r1
005ba6d0  82 40 82 e0                                      add r4, r2, r2, lsl #1
005ba6d4  04 42 84 e0                                      add r4, r4, r4, lsl #4
005ba6d8  04 44 84 e0                                      add r4, r4, r4, lsl #8
005ba6dc  04 48 84 e0                                      add r4, r4, r4, lsl #16
005ba6e0  04 41 82 e0                                      add r4, r2, r4, lsl #2
005ba6e4  03 30 64 e0                                      rsb r3, r4, r3
005ba6e8  01 00 53 e1                                      cmp r3, r1
005ba6ec  0b 00 00 3a                                      blo #0x5ba720
005ba6f0  cc 3c 0c e3                                      movw r3, #0xcccc
005ba6f4  05 00 54 e1                                      cmp r4, r5
005ba6f8  04 00 84 20                                      addhs r0, r4, r4
005ba6fc  05 00 84 30                                      addlo r0, r4, r5
005ba700  03 36 83 e1                                      orr r3, r3, r3, lsl #12
005ba704  03 00 50 e1                                      cmp r0, r3
005ba708  01 00 00 8a                                      bhi #0x5ba714
005ba70c  04 00 50 e1                                      cmp r0, r4
005ba710  01 00 00 2a                                      bhs #0x5ba71c
005ba714  cc 0c 0c e3                                      movw r0, #0xcccc
005ba718  00 06 80 e1                                      orr r0, r0, r0, lsl #12
005ba71c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005ba720  08 00 9f e5                                      ldr r0, [pc, #8]
005ba724  00 00 8f e0                                      add r0, pc, r0
005ba728  c4 39 05 eb                                      bl #0x708e40
005ba72c  ef ff ff ea                                      b #0x5ba6f0
; mapping-symbol data/literal pool
005ba730  44 3d 30 00                                      .byte 0x44, 0x3d, 0x30, 0x00

; FUNCTION 0x005bb4c0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005bb4c0  70 40 2d e9                                      push {r4, r5, r6, lr}
005bb4c4  04 40 90 e5                                      ldr r4, [r0, #4]
005bb4c8  00 50 90 e5                                      ldr r5, [r0]
005bb4cc  00 60 a0 e1                                      mov r6, r0
005bb4d0  05 00 54 e1                                      cmp r4, r5
005bb4d4  0b 00 00 0a                                      beq #0x5bb508
005bb4d8  14 00 14 e5                                      ldr r0, [r4, #-0x14]
005bb4dc  14 40 44 e2                                      sub r4, r4, #0x14
005bb4e0  00 00 50 e3                                      cmp r0, #0
005bb4e4  05 00 00 0a                                      beq #0x5bb500
005bb4e8  00 30 90 e5                                      ldr r3, [r0]
005bb4ec  01 30 43 e2                                      sub r3, r3, #1
005bb4f0  00 00 53 e3                                      cmp r3, #0
005bb4f4  00 30 80 e5                                      str r3, [r0]
005bb4f8  00 00 00 1a                                      bne #0x5bb500
005bb4fc  26 a6 03 eb                                      bl #0x6a4d9c
005bb500  04 00 55 e1                                      cmp r5, r4
005bb504  f3 ff ff 1a                                      bne #0x5bb4d8
005bb508  00 00 96 e5                                      ldr r0, [r6]
005bb50c  00 00 50 e3                                      cmp r0, #0
005bb510  00 00 00 0a                                      beq #0x5bb518
005bb514  cd 53 f5 eb                                      bl #0x310450
005bb518  06 00 a0 e1                                      mov r0, r6
005bb51c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005bb6d8, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPSB_SH_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*, std::__false_type const&)
; decoder-mode: arm
005bb6d8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005bb6dc  04 40 90 e5                                      ldr r4, [r0, #4]
005bb6e0  00 50 a0 e1                                      mov r5, r0
005bb6e4  01 80 a0 e1                                      mov r8, r1
005bb6e8  04 30 62 e0                                      rsb r3, r2, r4
005bb6ec  43 31 a0 e1                                      asr r3, r3, #2
005bb6f0  83 a0 83 e0                                      add sl, r3, r3, lsl #1
005bb6f4  0a a2 8a e0                                      add sl, sl, sl, lsl #4
005bb6f8  0a a4 8a e0                                      add sl, sl, sl, lsl #8
005bb6fc  0a a8 8a e0                                      add sl, sl, sl, lsl #16
005bb700  0a a1 83 e0                                      add sl, r3, sl, lsl #2
005bb704  00 00 5a e3                                      cmp sl, #0
005bb708  01 70 a0 d1                                      movle r7, r1
005bb70c  24 00 00 da                                      ble #0x5bb7a4
005bb710  14 60 82 e2                                      add r6, r2, #0x14
005bb714  14 40 81 e2                                      add r4, r1, #0x14
005bb718  0a 70 a0 e1                                      mov r7, sl
005bb71c  14 30 16 e5                                      ldr r3, [r6, #-0x14]
005bb720  00 00 53 e3                                      cmp r3, #0
005bb724  00 20 93 15                                      ldrne r2, [r3]
005bb728  01 20 82 12                                      addne r2, r2, #1
005bb72c  00 20 83 15                                      strne r2, [r3]
005bb730  14 00 14 e5                                      ldr r0, [r4, #-0x14]
005bb734  14 30 04 e5                                      str r3, [r4, #-0x14]
005bb738  00 00 50 e3                                      cmp r0, #0
005bb73c  05 00 00 0a                                      beq #0x5bb758
005bb740  00 30 90 e5                                      ldr r3, [r0]
005bb744  01 30 43 e2                                      sub r3, r3, #1
005bb748  00 00 53 e3                                      cmp r3, #0
005bb74c  00 30 80 e5                                      str r3, [r0]
005bb750  00 00 00 1a                                      bne #0x5bb758
005bb754  90 a5 03 eb                                      bl #0x6a4d9c
005bb758  b0 31 56 e1                                      ldrh r3, [r6, #-0x10]
005bb75c  01 70 57 e2                                      subs r7, r7, #1
005bb760  b0 31 44 e1                                      strh r3, [r4, #-0x10]
005bb764  0e 30 56 e5                                      ldrb r3, [r6, #-0xe]
005bb768  0e 30 44 e5                                      strb r3, [r4, #-0xe]
005bb76c  0d 30 56 e5                                      ldrb r3, [r6, #-0xd]
005bb770  0d 30 44 e5                                      strb r3, [r4, #-0xd]
005bb774  0c 30 16 e5                                      ldr r3, [r6, #-0xc]
005bb778  0c 30 04 e5                                      str r3, [r4, #-0xc]
005bb77c  08 30 16 e5                                      ldr r3, [r6, #-8]
005bb780  08 30 04 e5                                      str r3, [r4, #-8]
005bb784  04 30 16 e5                                      ldr r3, [r6, #-4]
005bb788  14 60 86 e2                                      add r6, r6, #0x14
005bb78c  04 30 04 e5                                      str r3, [r4, #-4]
005bb790  14 40 84 e2                                      add r4, r4, #0x14
005bb794  e0 ff ff 1a                                      bne #0x5bb71c
005bb798  14 70 a0 e3                                      mov r7, #0x14
005bb79c  97 8a 27 e0                                      mla r7, r7, sl, r8
005bb7a0  04 40 95 e5                                      ldr r4, [r5, #4]
005bb7a4  07 00 54 e1                                      cmp r4, r7
005bb7a8  0c 00 00 0a                                      beq #0x5bb7e0
005bb7ac  07 60 a0 e1                                      mov r6, r7
005bb7b0  00 00 96 e5                                      ldr r0, [r6]
005bb7b4  14 60 86 e2                                      add r6, r6, #0x14
005bb7b8  00 00 50 e3                                      cmp r0, #0
005bb7bc  05 00 00 0a                                      beq #0x5bb7d8
005bb7c0  00 30 90 e5                                      ldr r3, [r0]
005bb7c4  01 30 43 e2                                      sub r3, r3, #1
005bb7c8  00 00 53 e3                                      cmp r3, #0
005bb7cc  00 30 80 e5                                      str r3, [r0]
005bb7d0  00 00 00 1a                                      bne #0x5bb7d8
005bb7d4  70 a5 03 eb                                      bl #0x6a4d9c
005bb7d8  06 00 54 e1                                      cmp r4, r6
005bb7dc  f3 ff ff 1a                                      bne #0x5bb7b0
005bb7e0  04 70 85 e5                                      str r7, [r5, #4]
005bb7e4  08 00 a0 e1                                      mov r0, r8
005bb7e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005bb904, declared_size=1104, range_size=1104, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPSB_jRKSB_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&, std::__false_type const&)
; decoder-mode: arm
005bb904  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005bb908  00 c0 90 e5                                      ldr ip, [r0]
005bb90c  24 d0 4d e2                                      sub sp, sp, #0x24
005bb910  03 40 a0 e1                                      mov r4, r3
005bb914  0c 00 53 e1                                      cmp r3, ip
005bb918  01 70 a0 e1                                      mov r7, r1
005bb91c  04 50 90 35                                      ldrlo r5, [r0, #4]
005bb920  23 00 00 3a                                      blo #0x5bb9b4
005bb924  04 50 90 e5                                      ldr r5, [r0, #4]
005bb928  05 00 53 e1                                      cmp r3, r5
005bb92c  20 00 00 2a                                      bhs #0x5bb9b4
005bb930  00 30 93 e5                                      ldr r3, [r3]
005bb934  08 30 8d e5                                      str r3, [sp, #8]
005bb938  00 00 53 e3                                      cmp r3, #0
005bb93c  00 10 93 15                                      ldrne r1, [r3]
005bb940  01 10 81 12                                      addne r1, r1, #1
005bb944  00 10 83 15                                      strne r1, [r3]
005bb948  10 c0 94 e5                                      ldr ip, [r4, #0x10]
005bb94c  06 60 d4 e5                                      ldrb r6, [r4, #6]
005bb950  07 50 d4 e5                                      ldrb r5, [r4, #7]
005bb954  08 e0 94 e5                                      ldr lr, [r4, #8]
005bb958  0c 80 94 e5                                      ldr r8, [r4, #0xc]
005bb95c  18 c0 8d e5                                      str ip, [sp, #0x18]
005bb960  1c c0 8d e2                                      add ip, sp, #0x1c
005bb964  0e 60 cd e5                                      strb r6, [sp, #0xe]
005bb968  0f 50 cd e5                                      strb r5, [sp, #0xf]
005bb96c  10 e0 8d e5                                      str lr, [sp, #0x10]
005bb970  14 80 8d e5                                      str r8, [sp, #0x14]
005bb974  00 c0 8d e5                                      str ip, [sp]
005bb978  b4 40 d4 e1                                      ldrh r4, [r4, #4]
005bb97c  07 10 a0 e1                                      mov r1, r7
005bb980  08 30 8d e2                                      add r3, sp, #8
005bb984  bc 40 cd e1                                      strh r4, [sp, #0xc]
005bb988  dd ff ff eb                                      bl #0x5bb904
005bb98c  08 00 9d e5                                      ldr r0, [sp, #8]
005bb990  00 00 50 e3                                      cmp r0, #0
005bb994  04 00 00 0a                                      beq #0x5bb9ac
005bb998  00 30 90 e5                                      ldr r3, [r0]
005bb99c  01 30 43 e2                                      sub r3, r3, #1
005bb9a0  00 00 53 e3                                      cmp r3, #0
005bb9a4  00 30 80 e5                                      str r3, [r0]
005bb9a8  6c 00 00 0a                                      beq #0x5bbb60
005bb9ac  24 d0 8d e2                                      add sp, sp, #0x24
005bb9b0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005bb9b4  05 30 67 e0                                      rsb r3, r7, r5
005bb9b8  43 31 a0 e1                                      asr r3, r3, #2
005bb9bc  83 60 83 e0                                      add r6, r3, r3, lsl #1
005bb9c0  06 62 86 e0                                      add r6, r6, r6, lsl #4
005bb9c4  06 64 86 e0                                      add r6, r6, r6, lsl #8
005bb9c8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005bb9cc  06 61 83 e0                                      add r6, r3, r6, lsl #2
005bb9d0  06 00 52 e1                                      cmp r2, r6
005bb9d4  63 00 00 3a                                      blo #0x5bbb68
005bb9d8  14 30 a0 e3                                      mov r3, #0x14
005bb9dc  02 20 66 e0                                      rsb r2, r6, r2
005bb9e0  93 52 22 e0                                      mla r2, r3, r2, r5
005bb9e4  02 30 65 e0                                      rsb r3, r5, r2
005bb9e8  43 31 a0 e1                                      asr r3, r3, #2
005bb9ec  83 10 83 e0                                      add r1, r3, r3, lsl #1
005bb9f0  01 12 81 e0                                      add r1, r1, r1, lsl #4
005bb9f4  01 14 81 e0                                      add r1, r1, r1, lsl #8
005bb9f8  01 18 81 e0                                      add r1, r1, r1, lsl #16
005bb9fc  01 11 83 e0                                      add r1, r3, r1, lsl #2
005bba00  00 00 51 e3                                      cmp r1, #0
005bba04  15 00 00 da                                      ble #0x5bba60
005bba08  14 50 85 e2                                      add r5, r5, #0x14
005bba0c  00 30 94 e5                                      ldr r3, [r4]
005bba10  14 30 05 e5                                      str r3, [r5, #-0x14]
005bba14  00 00 53 e3                                      cmp r3, #0
005bba18  00 c0 93 15                                      ldrne ip, [r3]
005bba1c  01 c0 8c 12                                      addne ip, ip, #1
005bba20  00 c0 83 15                                      strne ip, [r3]
005bba24  b4 30 d4 e1                                      ldrh r3, [r4, #4]
005bba28  01 10 51 e2                                      subs r1, r1, #1
005bba2c  b0 31 45 e1                                      strh r3, [r5, #-0x10]
005bba30  06 30 d4 e5                                      ldrb r3, [r4, #6]
005bba34  0e 30 45 e5                                      strb r3, [r5, #-0xe]
005bba38  07 30 d4 e5                                      ldrb r3, [r4, #7]
005bba3c  0d 30 45 e5                                      strb r3, [r5, #-0xd]
005bba40  08 30 94 e5                                      ldr r3, [r4, #8]
005bba44  0c 30 05 e5                                      str r3, [r5, #-0xc]
005bba48  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bba4c  08 30 05 e5                                      str r3, [r5, #-8]
005bba50  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bba54  04 30 05 e5                                      str r3, [r5, #-4]
005bba58  14 50 85 e2                                      add r5, r5, #0x14
005bba5c  ea ff ff 1a                                      bne #0x5bba0c
005bba60  00 00 56 e3                                      cmp r6, #0
005bba64  04 20 80 e5                                      str r2, [r0, #4]
005bba68  b5 00 00 da                                      ble #0x5bbd44
005bba6c  14 70 87 e2                                      add r7, r7, #0x14
005bba70  14 20 82 e2                                      add r2, r2, #0x14
005bba74  07 30 a0 e1                                      mov r3, r7
005bba78  06 c0 a0 e1                                      mov ip, r6
005bba7c  14 10 13 e5                                      ldr r1, [r3, #-0x14]
005bba80  14 10 02 e5                                      str r1, [r2, #-0x14]
005bba84  00 00 51 e3                                      cmp r1, #0
005bba88  00 50 91 15                                      ldrne r5, [r1]
005bba8c  01 50 85 12                                      addne r5, r5, #1
005bba90  00 50 81 15                                      strne r5, [r1]
005bba94  b0 11 53 e1                                      ldrh r1, [r3, #-0x10]
005bba98  01 c0 5c e2                                      subs ip, ip, #1
005bba9c  b0 11 42 e1                                      strh r1, [r2, #-0x10]
005bbaa0  0e 10 53 e5                                      ldrb r1, [r3, #-0xe]
005bbaa4  0e 10 42 e5                                      strb r1, [r2, #-0xe]
005bbaa8  0d 10 53 e5                                      ldrb r1, [r3, #-0xd]
005bbaac  0d 10 42 e5                                      strb r1, [r2, #-0xd]
005bbab0  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
005bbab4  0c 10 02 e5                                      str r1, [r2, #-0xc]
005bbab8  08 10 13 e5                                      ldr r1, [r3, #-8]
005bbabc  08 10 02 e5                                      str r1, [r2, #-8]
005bbac0  04 10 13 e5                                      ldr r1, [r3, #-4]
005bbac4  14 30 83 e2                                      add r3, r3, #0x14
005bbac8  04 10 02 e5                                      str r1, [r2, #-4]
005bbacc  14 20 82 e2                                      add r2, r2, #0x14
005bbad0  e9 ff ff 1a                                      bne #0x5bba7c
005bbad4  04 30 90 e5                                      ldr r3, [r0, #4]
005bbad8  14 20 a0 e3                                      mov r2, #0x14
005bbadc  92 36 23 e0                                      mla r3, r2, r6, r3
005bbae0  04 30 80 e5                                      str r3, [r0, #4]
005bbae4  00 30 94 e5                                      ldr r3, [r4]
005bbae8  00 00 53 e3                                      cmp r3, #0
005bbaec  00 20 93 15                                      ldrne r2, [r3]
005bbaf0  01 20 82 12                                      addne r2, r2, #1
005bbaf4  00 20 83 15                                      strne r2, [r3]
005bbaf8  14 00 17 e5                                      ldr r0, [r7, #-0x14]
005bbafc  14 30 07 e5                                      str r3, [r7, #-0x14]
005bbb00  00 00 50 e3                                      cmp r0, #0
005bbb04  05 00 00 0a                                      beq #0x5bbb20
005bbb08  00 30 90 e5                                      ldr r3, [r0]
005bbb0c  01 30 43 e2                                      sub r3, r3, #1
005bbb10  00 00 53 e3                                      cmp r3, #0
005bbb14  00 30 80 e5                                      str r3, [r0]
005bbb18  00 00 00 1a                                      bne #0x5bbb20
005bbb1c  9e a4 03 eb                                      bl #0x6a4d9c
005bbb20  b4 30 d4 e1                                      ldrh r3, [r4, #4]
005bbb24  01 60 56 e2                                      subs r6, r6, #1
005bbb28  b0 31 47 e1                                      strh r3, [r7, #-0x10]
005bbb2c  06 30 d4 e5                                      ldrb r3, [r4, #6]
005bbb30  0e 30 47 e5                                      strb r3, [r7, #-0xe]
005bbb34  07 30 d4 e5                                      ldrb r3, [r4, #7]
005bbb38  0d 30 47 e5                                      strb r3, [r7, #-0xd]
005bbb3c  08 30 94 e5                                      ldr r3, [r4, #8]
005bbb40  0c 30 07 e5                                      str r3, [r7, #-0xc]
005bbb44  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bbb48  08 30 07 e5                                      str r3, [r7, #-8]
005bbb4c  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bbb50  04 30 07 e5                                      str r3, [r7, #-4]
005bbb54  14 70 87 e2                                      add r7, r7, #0x14
005bbb58  e1 ff ff 1a                                      bne #0x5bbae4
005bbb5c  92 ff ff ea                                      b #0x5bb9ac
005bbb60  8d a4 03 eb                                      bl #0x6a4d9c
005bbb64  90 ff ff ea                                      b #0x5bb9ac
005bbb68  14 a0 a0 e3                                      mov sl, #0x14
005bbb6c  9a 02 0a e0                                      mul sl, sl, r2
005bbb70  4a 31 a0 e1                                      asr r3, sl, #2
005bbb74  05 60 6a e0                                      rsb r6, sl, r5
005bbb78  83 c0 83 e0                                      add ip, r3, r3, lsl #1
005bbb7c  0c c2 8c e0                                      add ip, ip, ip, lsl #4
005bbb80  0c c4 8c e0                                      add ip, ip, ip, lsl #8
005bbb84  0c c8 8c e0                                      add ip, ip, ip, lsl #16
005bbb88  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005bbb8c  00 00 5c e3                                      cmp ip, #0
005bbb90  05 20 a0 d1                                      movle r2, r5
005bbb94  18 00 00 da                                      ble #0x5bbbfc
005bbb98  14 20 86 e2                                      add r2, r6, #0x14
005bbb9c  14 30 85 e2                                      add r3, r5, #0x14
005bbba0  14 10 12 e5                                      ldr r1, [r2, #-0x14]
005bbba4  14 10 03 e5                                      str r1, [r3, #-0x14]
005bbba8  00 00 51 e3                                      cmp r1, #0
005bbbac  00 80 91 15                                      ldrne r8, [r1]
005bbbb0  01 80 88 12                                      addne r8, r8, #1
005bbbb4  00 80 81 15                                      strne r8, [r1]
005bbbb8  b0 11 52 e1                                      ldrh r1, [r2, #-0x10]
005bbbbc  01 c0 5c e2                                      subs ip, ip, #1
005bbbc0  b0 11 43 e1                                      strh r1, [r3, #-0x10]
005bbbc4  0e 10 52 e5                                      ldrb r1, [r2, #-0xe]
005bbbc8  0e 10 43 e5                                      strb r1, [r3, #-0xe]
005bbbcc  0d 10 52 e5                                      ldrb r1, [r2, #-0xd]
005bbbd0  0d 10 43 e5                                      strb r1, [r3, #-0xd]
005bbbd4  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
005bbbd8  0c 10 03 e5                                      str r1, [r3, #-0xc]
005bbbdc  08 10 12 e5                                      ldr r1, [r2, #-8]
005bbbe0  08 10 03 e5                                      str r1, [r3, #-8]
005bbbe4  04 10 12 e5                                      ldr r1, [r2, #-4]
005bbbe8  14 20 82 e2                                      add r2, r2, #0x14
005bbbec  04 10 03 e5                                      str r1, [r3, #-4]
005bbbf0  14 30 83 e2                                      add r3, r3, #0x14
005bbbf4  e9 ff ff 1a                                      bne #0x5bbba0
005bbbf8  04 20 90 e5                                      ldr r2, [r0, #4]
005bbbfc  06 30 67 e0                                      rsb r3, r7, r6
005bbc00  43 31 a0 e1                                      asr r3, r3, #2
005bbc04  0a 20 82 e0                                      add r2, r2, sl
005bbc08  83 80 83 e0                                      add r8, r3, r3, lsl #1
005bbc0c  04 20 80 e5                                      str r2, [r0, #4]
005bbc10  08 82 88 e0                                      add r8, r8, r8, lsl #4
005bbc14  08 84 88 e0                                      add r8, r8, r8, lsl #8
005bbc18  08 88 88 e0                                      add r8, r8, r8, lsl #16
005bbc1c  08 81 83 e0                                      add r8, r3, r8, lsl #2
005bbc20  00 00 58 e3                                      cmp r8, #0
005bbc24  1e 00 00 da                                      ble #0x5bbca4
005bbc28  14 30 16 e5                                      ldr r3, [r6, #-0x14]
005bbc2c  00 00 53 e3                                      cmp r3, #0
005bbc30  00 20 93 15                                      ldrne r2, [r3]
005bbc34  01 20 82 12                                      addne r2, r2, #1
005bbc38  00 20 83 15                                      strne r2, [r3]
005bbc3c  14 00 15 e5                                      ldr r0, [r5, #-0x14]
005bbc40  14 30 05 e5                                      str r3, [r5, #-0x14]
005bbc44  00 00 50 e3                                      cmp r0, #0
005bbc48  05 00 00 0a                                      beq #0x5bbc64
005bbc4c  00 30 90 e5                                      ldr r3, [r0]
005bbc50  01 30 43 e2                                      sub r3, r3, #1
005bbc54  00 00 53 e3                                      cmp r3, #0
005bbc58  00 30 80 e5                                      str r3, [r0]
005bbc5c  00 00 00 1a                                      bne #0x5bbc64
005bbc60  4d a4 03 eb                                      bl #0x6a4d9c
005bbc64  b0 31 56 e1                                      ldrh r3, [r6, #-0x10]
005bbc68  01 80 58 e2                                      subs r8, r8, #1
005bbc6c  b0 31 45 e1                                      strh r3, [r5, #-0x10]
005bbc70  0e 30 56 e5                                      ldrb r3, [r6, #-0xe]
005bbc74  0e 30 45 e5                                      strb r3, [r5, #-0xe]
005bbc78  0d 30 56 e5                                      ldrb r3, [r6, #-0xd]
005bbc7c  0d 30 45 e5                                      strb r3, [r5, #-0xd]
005bbc80  0c 30 16 e5                                      ldr r3, [r6, #-0xc]
005bbc84  0c 30 05 e5                                      str r3, [r5, #-0xc]
005bbc88  08 30 16 e5                                      ldr r3, [r6, #-8]
005bbc8c  08 30 05 e5                                      str r3, [r5, #-8]
005bbc90  04 30 16 e5                                      ldr r3, [r6, #-4]
005bbc94  14 60 46 e2                                      sub r6, r6, #0x14
005bbc98  04 30 05 e5                                      str r3, [r5, #-4]
005bbc9c  14 50 45 e2                                      sub r5, r5, #0x14
005bbca0  e0 ff ff 1a                                      bne #0x5bbc28
005bbca4  4a a1 a0 e1                                      asr sl, sl, #2
005bbca8  8a 50 8a e0                                      add r5, sl, sl, lsl #1
005bbcac  05 52 85 e0                                      add r5, r5, r5, lsl #4
005bbcb0  05 54 85 e0                                      add r5, r5, r5, lsl #8
005bbcb4  05 58 85 e0                                      add r5, r5, r5, lsl #16
005bbcb8  05 51 8a e0                                      add r5, sl, r5, lsl #2
005bbcbc  00 00 55 e3                                      cmp r5, #0
005bbcc0  39 ff ff da                                      ble #0x5bb9ac
005bbcc4  14 70 87 e2                                      add r7, r7, #0x14
005bbcc8  00 30 94 e5                                      ldr r3, [r4]
005bbccc  00 00 53 e3                                      cmp r3, #0
005bbcd0  00 20 93 15                                      ldrne r2, [r3]
005bbcd4  01 20 82 12                                      addne r2, r2, #1
005bbcd8  00 20 83 15                                      strne r2, [r3]
005bbcdc  14 00 17 e5                                      ldr r0, [r7, #-0x14]
005bbce0  14 30 07 e5                                      str r3, [r7, #-0x14]
005bbce4  00 00 50 e3                                      cmp r0, #0
005bbce8  05 00 00 0a                                      beq #0x5bbd04
005bbcec  00 30 90 e5                                      ldr r3, [r0]
005bbcf0  01 30 43 e2                                      sub r3, r3, #1
005bbcf4  00 00 53 e3                                      cmp r3, #0
005bbcf8  00 30 80 e5                                      str r3, [r0]
005bbcfc  00 00 00 1a                                      bne #0x5bbd04
005bbd00  25 a4 03 eb                                      bl #0x6a4d9c
005bbd04  b4 10 d4 e1                                      ldrh r1, [r4, #4]
005bbd08  01 50 55 e2                                      subs r5, r5, #1
005bbd0c  b0 11 47 e1                                      strh r1, [r7, #-0x10]
005bbd10  06 30 d4 e5                                      ldrb r3, [r4, #6]
005bbd14  0e 30 47 e5                                      strb r3, [r7, #-0xe]
005bbd18  07 30 d4 e5                                      ldrb r3, [r4, #7]
005bbd1c  0d 30 47 e5                                      strb r3, [r7, #-0xd]
005bbd20  08 30 94 e5                                      ldr r3, [r4, #8]
005bbd24  0c 30 07 e5                                      str r3, [r7, #-0xc]
005bbd28  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005bbd2c  08 30 07 e5                                      str r3, [r7, #-8]
005bbd30  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bbd34  04 30 07 e5                                      str r3, [r7, #-4]
005bbd38  14 70 87 e2                                      add r7, r7, #0x14
005bbd3c  e1 ff ff 1a                                      bne #0x5bbcc8
005bbd40  19 ff ff ea                                      b #0x5bb9ac
005bbd44  14 30 a0 e3                                      mov r3, #0x14
005bbd48  93 26 22 e0                                      mla r2, r3, r6, r2
005bbd4c  04 20 80 e5                                      str r2, [r0, #4]
005bbd50  15 ff ff ea                                      b #0x5bb9ac

; FUNCTION 0x005bbd54, declared_size=688, range_size=688, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPSB_RKSB_RKSt12__false_typejb
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
005bbd54  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005bbd58  20 40 9d e5                                      ldr r4, [sp, #0x20]
005bbd5c  01 50 a0 e1                                      mov r5, r1
005bbd60  02 60 a0 e1                                      mov r6, r2
005bbd64  04 10 a0 e1                                      mov r1, r4
005bbd68  00 70 a0 e1                                      mov r7, r0
005bbd6c  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
005bbd70  4f fa ff eb                                      bl #0x5ba6b4
005bbd74  14 80 a0 e3                                      mov r8, #0x14
005bbd78  98 00 08 e0                                      mul r8, r8, r0
005bbd7c  00 10 a0 e3                                      mov r1, #0
005bbd80  08 00 a0 e1                                      mov r0, r8
005bbd84  f7 51 f5 eb                                      bl #0x310568
005bbd88  00 20 97 e5                                      ldr r2, [r7]
005bbd8c  00 90 a0 e1                                      mov sb, r0
005bbd90  05 30 62 e0                                      rsb r3, r2, r5
005bbd94  43 31 a0 e1                                      asr r3, r3, #2
005bbd98  83 c0 83 e0                                      add ip, r3, r3, lsl #1
005bbd9c  0c c2 8c e0                                      add ip, ip, ip, lsl #4
005bbda0  0c c4 8c e0                                      add ip, ip, ip, lsl #8
005bbda4  0c c8 8c e0                                      add ip, ip, ip, lsl #16
005bbda8  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005bbdac  00 00 5c e3                                      cmp ip, #0
005bbdb0  00 c0 a0 d1                                      movle ip, r0
005bbdb4  1a 00 00 da                                      ble #0x5bbe24
005bbdb8  14 30 80 e2                                      add r3, r0, #0x14
005bbdbc  14 20 82 e2                                      add r2, r2, #0x14
005bbdc0  0c 00 a0 e1                                      mov r0, ip
005bbdc4  14 10 12 e5                                      ldr r1, [r2, #-0x14]
005bbdc8  14 10 03 e5                                      str r1, [r3, #-0x14]
005bbdcc  00 00 51 e3                                      cmp r1, #0
005bbdd0  00 e0 91 15                                      ldrne lr, [r1]
005bbdd4  01 e0 8e 12                                      addne lr, lr, #1
005bbdd8  00 e0 81 15                                      strne lr, [r1]
005bbddc  b0 11 52 e1                                      ldrh r1, [r2, #-0x10]
005bbde0  01 00 50 e2                                      subs r0, r0, #1
005bbde4  b0 11 43 e1                                      strh r1, [r3, #-0x10]
005bbde8  0e 10 52 e5                                      ldrb r1, [r2, #-0xe]
005bbdec  0e 10 43 e5                                      strb r1, [r3, #-0xe]
005bbdf0  0d 10 52 e5                                      ldrb r1, [r2, #-0xd]
005bbdf4  0d 10 43 e5                                      strb r1, [r3, #-0xd]
005bbdf8  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
005bbdfc  0c 10 03 e5                                      str r1, [r3, #-0xc]
005bbe00  08 10 12 e5                                      ldr r1, [r2, #-8]
005bbe04  08 10 03 e5                                      str r1, [r3, #-8]
005bbe08  04 10 12 e5                                      ldr r1, [r2, #-4]
005bbe0c  14 20 82 e2                                      add r2, r2, #0x14
005bbe10  04 10 03 e5                                      str r1, [r3, #-4]
005bbe14  14 30 83 e2                                      add r3, r3, #0x14
005bbe18  e9 ff ff 1a                                      bne #0x5bbdc4
005bbe1c  14 30 a0 e3                                      mov r3, #0x14
005bbe20  93 9c 2c e0                                      mla ip, r3, ip, sb
005bbe24  01 00 54 e3                                      cmp r4, #1
005bbe28  5f 00 00 0a                                      beq #0x5bbfac
005bbe2c  14 30 a0 e3                                      mov r3, #0x14
005bbe30  93 c4 24 e0                                      mla r4, r3, r4, ip
005bbe34  04 30 6c e0                                      rsb r3, ip, r4
005bbe38  43 31 a0 e1                                      asr r3, r3, #2
005bbe3c  83 10 83 e0                                      add r1, r3, r3, lsl #1
005bbe40  01 12 81 e0                                      add r1, r1, r1, lsl #4
005bbe44  01 14 81 e0                                      add r1, r1, r1, lsl #8
005bbe48  01 18 81 e0                                      add r1, r1, r1, lsl #16
005bbe4c  01 11 83 e0                                      add r1, r3, r1, lsl #2
005bbe50  00 00 51 e3                                      cmp r1, #0
005bbe54  15 00 00 da                                      ble #0x5bbeb0
005bbe58  14 30 8c e2                                      add r3, ip, #0x14
005bbe5c  00 20 96 e5                                      ldr r2, [r6]
005bbe60  14 20 03 e5                                      str r2, [r3, #-0x14]
005bbe64  00 00 52 e3                                      cmp r2, #0
005bbe68  00 00 92 15                                      ldrne r0, [r2]
005bbe6c  01 00 80 12                                      addne r0, r0, #1
005bbe70  00 00 82 15                                      strne r0, [r2]
005bbe74  b4 20 d6 e1                                      ldrh r2, [r6, #4]
005bbe78  01 10 51 e2                                      subs r1, r1, #1
005bbe7c  b0 21 43 e1                                      strh r2, [r3, #-0x10]
005bbe80  06 20 d6 e5                                      ldrb r2, [r6, #6]
005bbe84  0e 20 43 e5                                      strb r2, [r3, #-0xe]
005bbe88  07 20 d6 e5                                      ldrb r2, [r6, #7]
005bbe8c  0d 20 43 e5                                      strb r2, [r3, #-0xd]
005bbe90  08 20 96 e5                                      ldr r2, [r6, #8]
005bbe94  0c 20 03 e5                                      str r2, [r3, #-0xc]
005bbe98  0c 20 96 e5                                      ldr r2, [r6, #0xc]
005bbe9c  08 20 03 e5                                      str r2, [r3, #-8]
005bbea0  10 20 96 e5                                      ldr r2, [r6, #0x10]
005bbea4  04 20 03 e5                                      str r2, [r3, #-4]
005bbea8  14 30 83 e2                                      add r3, r3, #0x14
005bbeac  ea ff ff 1a                                      bne #0x5bbe5c
005bbeb0  00 00 5a e3                                      cmp sl, #0
005bbeb4  16 00 00 0a                                      beq #0x5bbf14
005bbeb8  04 00 97 e5                                      ldr r0, [r7, #4]
005bbebc  00 60 97 e5                                      ldr r6, [r7]
005bbec0  00 00 56 e1                                      cmp r6, r0
005bbec4  0d 00 00 0a                                      beq #0x5bbf00
005bbec8  00 50 a0 e1                                      mov r5, r0
005bbecc  14 00 15 e5                                      ldr r0, [r5, #-0x14]
005bbed0  14 50 45 e2                                      sub r5, r5, #0x14
005bbed4  00 00 50 e3                                      cmp r0, #0
005bbed8  05 00 00 0a                                      beq #0x5bbef4
005bbedc  00 30 90 e5                                      ldr r3, [r0]
005bbee0  01 30 43 e2                                      sub r3, r3, #1
005bbee4  00 00 53 e3                                      cmp r3, #0
005bbee8  00 30 80 e5                                      str r3, [r0]
005bbeec  00 00 00 1a                                      bne #0x5bbef4
005bbef0  a9 a3 03 eb                                      bl #0x6a4d9c
005bbef4  05 00 56 e1                                      cmp r6, r5
005bbef8  f3 ff ff 1a                                      bne #0x5bbecc
005bbefc  00 00 97 e5                                      ldr r0, [r7]
005bbf00  08 80 89 e0                                      add r8, sb, r8
005bbf04  51 51 f5 eb                                      bl #0x310450
005bbf08  10 01 87 e9                                      stmib r7, {r4, r8}
005bbf0c  00 90 87 e5                                      str sb, [r7]
005bbf10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005bbf14  04 00 97 e5                                      ldr r0, [r7, #4]
005bbf18  00 30 65 e0                                      rsb r3, r5, r0
005bbf1c  43 31 a0 e1                                      asr r3, r3, #2
005bbf20  83 c0 83 e0                                      add ip, r3, r3, lsl #1
005bbf24  0c c2 8c e0                                      add ip, ip, ip, lsl #4
005bbf28  0c c4 8c e0                                      add ip, ip, ip, lsl #8
005bbf2c  0c c8 8c e0                                      add ip, ip, ip, lsl #16
005bbf30  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005bbf34  00 00 5c e3                                      cmp ip, #0
005bbf38  df ff ff da                                      ble #0x5bbebc
005bbf3c  14 50 85 e2                                      add r5, r5, #0x14
005bbf40  14 30 84 e2                                      add r3, r4, #0x14
005bbf44  0c 10 a0 e1                                      mov r1, ip
005bbf48  14 20 15 e5                                      ldr r2, [r5, #-0x14]
005bbf4c  14 20 03 e5                                      str r2, [r3, #-0x14]
005bbf50  00 00 52 e3                                      cmp r2, #0
005bbf54  00 00 92 15                                      ldrne r0, [r2]
005bbf58  01 00 80 12                                      addne r0, r0, #1
005bbf5c  00 00 82 15                                      strne r0, [r2]
005bbf60  b0 21 55 e1                                      ldrh r2, [r5, #-0x10]
005bbf64  01 10 51 e2                                      subs r1, r1, #1
005bbf68  b0 21 43 e1                                      strh r2, [r3, #-0x10]
005bbf6c  0e 20 55 e5                                      ldrb r2, [r5, #-0xe]
005bbf70  0e 20 43 e5                                      strb r2, [r3, #-0xe]
005bbf74  0d 20 55 e5                                      ldrb r2, [r5, #-0xd]
005bbf78  0d 20 43 e5                                      strb r2, [r3, #-0xd]
005bbf7c  0c 20 15 e5                                      ldr r2, [r5, #-0xc]
005bbf80  0c 20 03 e5                                      str r2, [r3, #-0xc]
005bbf84  08 20 15 e5                                      ldr r2, [r5, #-8]
005bbf88  08 20 03 e5                                      str r2, [r3, #-8]
005bbf8c  04 20 15 e5                                      ldr r2, [r5, #-4]
005bbf90  14 50 85 e2                                      add r5, r5, #0x14
005bbf94  04 20 03 e5                                      str r2, [r3, #-4]
005bbf98  14 30 83 e2                                      add r3, r3, #0x14
005bbf9c  e9 ff ff 1a                                      bne #0x5bbf48
005bbfa0  14 30 a0 e3                                      mov r3, #0x14
005bbfa4  93 4c 24 e0                                      mla r4, r3, ip, r4
005bbfa8  c2 ff ff ea                                      b #0x5bbeb8
005bbfac  00 30 96 e5                                      ldr r3, [r6]
005bbfb0  14 40 8c e2                                      add r4, ip, #0x14
005bbfb4  00 30 8c e5                                      str r3, [ip]
005bbfb8  00 00 53 e3                                      cmp r3, #0
005bbfbc  00 20 93 15                                      ldrne r2, [r3]
005bbfc0  01 20 82 12                                      addne r2, r2, #1
005bbfc4  00 20 83 15                                      strne r2, [r3]
005bbfc8  b4 20 d6 e1                                      ldrh r2, [r6, #4]
005bbfcc  00 00 5a e3                                      cmp sl, #0
005bbfd0  b4 20 cc e1                                      strh r2, [ip, #4]
005bbfd4  06 30 d6 e5                                      ldrb r3, [r6, #6]
005bbfd8  06 30 cc e5                                      strb r3, [ip, #6]
005bbfdc  07 30 d6 e5                                      ldrb r3, [r6, #7]
005bbfe0  07 30 cc e5                                      strb r3, [ip, #7]
005bbfe4  08 30 96 e5                                      ldr r3, [r6, #8]
005bbfe8  08 30 8c e5                                      str r3, [ip, #8]
005bbfec  0c 30 96 e5                                      ldr r3, [r6, #0xc]
005bbff0  0c 30 8c e5                                      str r3, [ip, #0xc]
005bbff4  10 30 96 e5                                      ldr r3, [r6, #0x10]
005bbff8  10 30 8c e5                                      str r3, [ip, #0x10]
005bbffc  ad ff ff 1a                                      bne #0x5bbeb8
005bc000  c3 ff ff ea                                      b #0x5bbf14

; FUNCTION 0x005bc004, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPSB_jRKSB_
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&)
; decoder-mode: arm
005bc004  30 40 2d e9                                      push {r4, r5, lr}
005bc008  00 40 52 e2                                      subs r4, r2, #0
005bc00c  14 d0 4d e2                                      sub sp, sp, #0x14
005bc010  03 50 a0 e1                                      mov r5, r3
005bc014  0f 00 00 0a                                      beq #0x5bc058
005bc018  04 e0 90 e5                                      ldr lr, [r0, #4]
005bc01c  08 c0 90 e5                                      ldr ip, [r0, #8]
005bc020  0c c0 6e e0                                      rsb ip, lr, ip
005bc024  4c c1 a0 e1                                      asr ip, ip, #2
005bc028  8c e0 8c e0                                      add lr, ip, ip, lsl #1
005bc02c  0e e2 8e e0                                      add lr, lr, lr, lsl #4
005bc030  0e e4 8e e0                                      add lr, lr, lr, lsl #8
005bc034  0e e8 8e e0                                      add lr, lr, lr, lsl #16
005bc038  0e c1 8c e0                                      add ip, ip, lr, lsl #2
005bc03c  0c 00 54 e1                                      cmp r4, ip
005bc040  06 00 00 9a                                      bls #0x5bc060
005bc044  03 20 a0 e1                                      mov r2, r3
005bc048  00 c0 a0 e3                                      mov ip, #0
005bc04c  08 30 8d e2                                      add r3, sp, #8
005bc050  10 10 8d e8                                      stm sp, {r4, ip}
005bc054  3e ff ff eb                                      bl #0x5bbd54
005bc058  14 d0 8d e2                                      add sp, sp, #0x14
005bc05c  30 80 bd e8                                      pop {r4, r5, pc}
005bc060  0c c0 8d e2                                      add ip, sp, #0xc
005bc064  00 c0 8d e5                                      str ip, [sp]
005bc068  25 fe ff eb                                      bl #0x5bb904
005bc06c  f9 ff ff ea                                      b #0x5bc058

; FUNCTION 0x005bc070, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKSB_
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&)
; decoder-mode: arm
005bc070  30 40 2d e9                                      push {r4, r5, lr}
005bc074  10 10 90 e8                                      ldm r0, {r4, ip}
005bc078  02 30 a0 e1                                      mov r3, r2
005bc07c  0c d0 4d e2                                      sub sp, sp, #0xc
005bc080  0c 20 64 e0                                      rsb r2, r4, ip
005bc084  42 21 a0 e1                                      asr r2, r2, #2
005bc088  82 50 82 e0                                      add r5, r2, r2, lsl #1
005bc08c  05 52 85 e0                                      add r5, r5, r5, lsl #4
005bc090  05 54 85 e0                                      add r5, r5, r5, lsl #8
005bc094  05 58 85 e0                                      add r5, r5, r5, lsl #16
005bc098  05 21 82 e0                                      add r2, r2, r5, lsl #2
005bc09c  02 00 51 e1                                      cmp r1, r2
005bc0a0  08 00 00 2a                                      bhs #0x5bc0c8
005bc0a4  14 30 a0 e3                                      mov r3, #0x14
005bc0a8  93 41 21 e0                                      mla r1, r3, r1, r4
005bc0ac  0c 00 51 e1                                      cmp r1, ip
005bc0b0  02 00 00 0a                                      beq #0x5bc0c0
005bc0b4  0c 20 a0 e1                                      mov r2, ip
005bc0b8  04 30 8d e2                                      add r3, sp, #4
005bc0bc  85 fd ff eb                                      bl #0x5bb6d8
005bc0c0  0c d0 8d e2                                      add sp, sp, #0xc
005bc0c4  30 80 bd e8                                      pop {r4, r5, pc}
005bc0c8  01 20 62 e0                                      rsb r2, r2, r1
005bc0cc  0c 10 a0 e1                                      mov r1, ip
005bc0d0  cb ff ff eb                                      bl #0x5bc004
005bc0d4  f9 ff ff ea                                      b #0x5bc0c0

; FUNCTION 0x005bc0d8, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionINS0_5video19SShaderParameterDefEtLb0ENS4_6detail30globalmaterialparametermanager10SPropetiesENS7_12SValueTraitsEE6SEntryENS1_10SAllocatorISB_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKSB_
; demangled: std::vector<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry const&)
; decoder-mode: arm
005bc0d8  10 40 2d e9                                      push {r4, lr}
005bc0dc  18 00 90 e9                                      ldmib r0, {r3, r4}
005bc0e0  10 d0 4d e2                                      sub sp, sp, #0x10
005bc0e4  00 c0 a0 e1                                      mov ip, r0
005bc0e8  04 00 53 e1                                      cmp r3, r4
005bc0ec  01 20 a0 e1                                      mov r2, r1
005bc0f0  16 00 00 0a                                      beq #0x5bc150
005bc0f4  00 10 91 e5                                      ldr r1, [r1]
005bc0f8  00 10 83 e5                                      str r1, [r3]
005bc0fc  00 00 51 e3                                      cmp r1, #0
005bc100  00 00 91 15                                      ldrne r0, [r1]
005bc104  01 00 80 12                                      addne r0, r0, #1
005bc108  00 00 81 15                                      strne r0, [r1]
005bc10c  b4 10 d2 e1                                      ldrh r1, [r2, #4]
005bc110  b4 10 c3 e1                                      strh r1, [r3, #4]
005bc114  06 10 d2 e5                                      ldrb r1, [r2, #6]
005bc118  06 10 c3 e5                                      strb r1, [r3, #6]
005bc11c  07 10 d2 e5                                      ldrb r1, [r2, #7]
005bc120  07 10 c3 e5                                      strb r1, [r3, #7]
005bc124  08 10 92 e5                                      ldr r1, [r2, #8]
005bc128  08 10 83 e5                                      str r1, [r3, #8]
005bc12c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005bc130  0c 10 83 e5                                      str r1, [r3, #0xc]
005bc134  10 20 92 e5                                      ldr r2, [r2, #0x10]
005bc138  10 20 83 e5                                      str r2, [r3, #0x10]
005bc13c  04 30 9c e5                                      ldr r3, [ip, #4]
005bc140  14 30 83 e2                                      add r3, r3, #0x14
005bc144  04 30 8c e5                                      str r3, [ip, #4]
005bc148  10 d0 8d e2                                      add sp, sp, #0x10
005bc14c  10 80 bd e8                                      pop {r4, pc}
005bc150  01 c0 a0 e3                                      mov ip, #1
005bc154  03 10 a0 e1                                      mov r1, r3
005bc158  0c 30 8d e2                                      add r3, sp, #0xc
005bc15c  04 c0 8d e5                                      str ip, [sp, #4]
005bc160  00 c0 8d e5                                      str ip, [sp]
005bc164  fa fe ff eb                                      bl #0x5bbd54
005bc168  f6 ff ff ea                                      b #0x5bc148
