; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d82b8, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video17CMaterialRendererEEEtLb0ENS6_6detail23materialrenderermanager11SPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPSF_SL_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::__false_type const&)
; decoder-mode: arm
005d82b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d82bc  04 30 90 e5                                      ldr r3, [r0, #4]
005d82c0  10 d0 4d e2                                      sub sp, sp, #0x10
005d82c4  01 50 a0 e1                                      mov r5, r1
005d82c8  00 40 a0 e1                                      mov r4, r0
005d82cc  03 10 a0 e1                                      mov r1, r3
005d82d0  02 00 a0 e1                                      mov r0, r2
005d82d4  00 c0 a0 e3                                      mov ip, #0
005d82d8  05 20 a0 e1                                      mov r2, r5
005d82dc  0c 30 8d e2                                      add r3, sp, #0xc
005d82e0  00 c0 8d e5                                      str ip, [sp]
005d82e4  8f ff ff eb                                      bl #0x5d8128
005d82e8  04 70 94 e5                                      ldr r7, [r4, #4]
005d82ec  00 80 a0 e1                                      mov r8, r0
005d82f0  00 00 57 e1                                      cmp r7, r0
005d82f4  05 00 00 0a                                      beq #0x5d8310
005d82f8  00 60 a0 e1                                      mov r6, r0
005d82fc  06 00 a0 e1                                      mov r0, r6
005d8300  08 60 86 e2                                      add r6, r6, #8
005d8304  eb e7 f5 eb                                      bl #0x3522b8
005d8308  06 00 57 e1                                      cmp r7, r6
005d830c  fa ff ff 1a                                      bne #0x5d82fc
005d8310  04 80 84 e5                                      str r8, [r4, #4]
005d8314  05 00 a0 e1                                      mov r0, r5
005d8318  10 d0 8d e2                                      add sp, sp, #0x10
005d831c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005d8320, declared_size=464, range_size=464, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video17CMaterialRendererEEEtLb0ENS6_6detail23materialrenderermanager11SPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPSF_jRKSF_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&)
; decoder-mode: arm
005d8320  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005d8324  00 c0 90 e5                                      ldr ip, [r0]
005d8328  03 40 a0 e1                                      mov r4, r3
005d832c  24 d0 4d e2                                      sub sp, sp, #0x24
005d8330  0c 00 53 e1                                      cmp r3, ip
005d8334  01 50 a0 e1                                      mov r5, r1
005d8338  04 30 90 35                                      ldrlo r3, [r0, #4]
005d833c  14 00 00 3a                                      blo #0x5d8394
005d8340  04 30 90 e5                                      ldr r3, [r0, #4]
005d8344  03 00 54 e1                                      cmp r4, r3
005d8348  11 00 00 2a                                      bhs #0x5d8394
005d834c  00 30 94 e5                                      ldr r3, [r4]
005d8350  00 00 53 e3                                      cmp r3, #0
005d8354  08 30 8d e5                                      str r3, [sp, #8]
005d8358  00 10 93 15                                      ldrne r1, [r3]
005d835c  01 10 81 12                                      addne r1, r1, #1
005d8360  00 10 83 15                                      strne r1, [r3]
005d8364  04 c0 94 e5                                      ldr ip, [r4, #4]
005d8368  08 40 8d e2                                      add r4, sp, #8
005d836c  05 10 a0 e1                                      mov r1, r5
005d8370  0c c0 8d e5                                      str ip, [sp, #0xc]
005d8374  04 30 a0 e1                                      mov r3, r4
005d8378  1c c0 8d e2                                      add ip, sp, #0x1c
005d837c  00 c0 8d e5                                      str ip, [sp]
005d8380  e6 ff ff eb                                      bl #0x5d8320
005d8384  04 00 a0 e1                                      mov r0, r4
005d8388  ca e7 f5 eb                                      bl #0x3522b8
005d838c  24 d0 8d e2                                      add sp, sp, #0x24
005d8390  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005d8394  03 e0 65 e0                                      rsb lr, r5, r3
005d8398  ce e1 a0 e1                                      asr lr, lr, #3
005d839c  0e 00 52 e1                                      cmp r2, lr
005d83a0  0e 80 a0 e1                                      mov r8, lr
005d83a4  23 00 00 2a                                      bhs #0x5d8438
005d83a8  82 61 a0 e1                                      lsl r6, r2, #3
005d83ac  03 10 66 e0                                      rsb r1, r6, r3
005d83b0  c6 e1 a0 e1                                      asr lr, r6, #3
005d83b4  00 00 5e e3                                      cmp lr, #0
005d83b8  03 20 a0 d1                                      movle r2, r3
005d83bc  0e 00 00 da                                      ble #0x5d83fc
005d83c0  00 20 a0 e3                                      mov r2, #0
005d83c4  02 c0 91 e7                                      ldr ip, [r1, r2]
005d83c8  02 80 81 e0                                      add r8, r1, r2
005d83cc  02 70 83 e0                                      add r7, r3, r2
005d83d0  00 00 5c e3                                      cmp ip, #0
005d83d4  02 c0 83 e7                                      str ip, [r3, r2]
005d83d8  00 a0 9c 15                                      ldrne sl, [ip]
005d83dc  08 20 82 e2                                      add r2, r2, #8
005d83e0  01 a0 8a 12                                      addne sl, sl, #1
005d83e4  00 a0 8c 15                                      strne sl, [ip]
005d83e8  04 c0 98 e5                                      ldr ip, [r8, #4]
005d83ec  01 e0 5e e2                                      subs lr, lr, #1
005d83f0  04 c0 87 e5                                      str ip, [r7, #4]
005d83f4  f2 ff ff 1a                                      bne #0x5d83c4
005d83f8  04 20 90 e5                                      ldr r2, [r0, #4]
005d83fc  06 20 82 e0                                      add r2, r2, r6
005d8400  04 20 80 e5                                      str r2, [r0, #4]
005d8404  00 70 a0 e3                                      mov r7, #0
005d8408  03 20 a0 e1                                      mov r2, r3
005d840c  05 00 a0 e1                                      mov r0, r5
005d8410  18 30 8d e2                                      add r3, sp, #0x18
005d8414  00 70 8d e5                                      str r7, [sp]
005d8418  65 ff ff eb                                      bl #0x5d81b4
005d841c  05 00 a0 e1                                      mov r0, r5
005d8420  06 10 85 e0                                      add r1, r5, r6
005d8424  04 20 a0 e1                                      mov r2, r4
005d8428  14 30 8d e2                                      add r3, sp, #0x14
005d842c  00 70 8d e5                                      str r7, [sp]
005d8430  81 ff ff eb                                      bl #0x5d823c
005d8434  d4 ff ff ea                                      b #0x5d838c
005d8438  02 20 6e e0                                      rsb r2, lr, r2
005d843c  52 70 bc e7                                      sbfx r7, r2, #0, #0x1d
005d8440  00 00 57 e3                                      cmp r7, #0
005d8444  82 21 83 e0                                      add r2, r3, r2, lsl #3
005d8448  0c 00 00 da                                      ble #0x5d8480
005d844c  00 c0 a0 e3                                      mov ip, #0
005d8450  00 10 94 e5                                      ldr r1, [r4]
005d8454  0c 60 83 e0                                      add r6, r3, ip
005d8458  00 00 51 e3                                      cmp r1, #0
005d845c  0c 10 83 e7                                      str r1, [r3, ip]
005d8460  00 a0 91 15                                      ldrne sl, [r1]
005d8464  08 c0 8c e2                                      add ip, ip, #8
005d8468  01 a0 8a 12                                      addne sl, sl, #1
005d846c  00 a0 81 15                                      strne sl, [r1]
005d8470  04 10 94 e5                                      ldr r1, [r4, #4]
005d8474  01 70 57 e2                                      subs r7, r7, #1
005d8478  04 10 86 e5                                      str r1, [r6, #4]
005d847c  f3 ff ff 1a                                      bne #0x5d8450
005d8480  00 00 5e e3                                      cmp lr, #0
005d8484  04 20 80 e5                                      str r2, [r0, #4]
005d8488  0e 00 00 da                                      ble #0x5d84c8
005d848c  00 10 a0 e3                                      mov r1, #0
005d8490  01 c0 95 e7                                      ldr ip, [r5, r1]
005d8494  01 70 85 e0                                      add r7, r5, r1
005d8498  01 60 82 e0                                      add r6, r2, r1
005d849c  00 00 5c e3                                      cmp ip, #0
005d84a0  01 c0 82 e7                                      str ip, [r2, r1]
005d84a4  00 a0 9c 15                                      ldrne sl, [ip]
005d84a8  08 10 81 e2                                      add r1, r1, #8
005d84ac  01 a0 8a 12                                      addne sl, sl, #1
005d84b0  00 a0 8c 15                                      strne sl, [ip]
005d84b4  04 c0 97 e5                                      ldr ip, [r7, #4]
005d84b8  01 e0 5e e2                                      subs lr, lr, #1
005d84bc  04 c0 86 e5                                      str ip, [r6, #4]
005d84c0  f2 ff ff 1a                                      bne #0x5d8490
005d84c4  04 20 90 e5                                      ldr r2, [r0, #4]
005d84c8  88 21 82 e0                                      add r2, r2, r8, lsl #3
005d84cc  04 20 80 e5                                      str r2, [r0, #4]
005d84d0  03 10 a0 e1                                      mov r1, r3
005d84d4  00 c0 a0 e3                                      mov ip, #0
005d84d8  05 00 a0 e1                                      mov r0, r5
005d84dc  04 20 a0 e1                                      mov r2, r4
005d84e0  10 30 8d e2                                      add r3, sp, #0x10
005d84e4  00 c0 8d e5                                      str ip, [sp]
005d84e8  53 ff ff eb                                      bl #0x5d823c
005d84ec  a6 ff ff ea                                      b #0x5d838c

; FUNCTION 0x005d8688, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video17CMaterialRendererEEEtLb0ENS6_6detail23materialrenderermanager11SPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005d8688  70 40 2d e9                                      push {r4, r5, r6, lr}
005d868c  04 40 90 e5                                      ldr r4, [r0, #4]
005d8690  00 50 90 e5                                      ldr r5, [r0]
005d8694  00 60 a0 e1                                      mov r6, r0
005d8698  05 00 54 e1                                      cmp r4, r5
005d869c  04 00 00 0a                                      beq #0x5d86b4
005d86a0  08 40 44 e2                                      sub r4, r4, #8
005d86a4  04 00 a0 e1                                      mov r0, r4
005d86a8  02 e7 f5 eb                                      bl #0x3522b8
005d86ac  04 00 55 e1                                      cmp r5, r4
005d86b0  fa ff ff 1a                                      bne #0x5d86a0
005d86b4  00 00 96 e5                                      ldr r0, [r6]
005d86b8  00 00 50 e3                                      cmp r0, #0
005d86bc  00 00 00 0a                                      beq #0x5d86c4
005d86c0  62 df f4 eb                                      bl #0x310450
005d86c4  06 00 a0 e1                                      mov r0, r6
005d86c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005d86cc, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video17CMaterialRendererEEEtLb0ENS6_6detail23materialrenderermanager11SPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
005d86cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005d86d0  14 00 90 e8                                      ldm r0, {r2, r4}
005d86d4  ff 3f 0f e3                                      movw r3, #0xffff
005d86d8  ff 3f 41 e3                                      movt r3, #0x1fff
005d86dc  04 40 62 e0                                      rsb r4, r2, r4
005d86e0  c4 41 a0 e1                                      asr r4, r4, #3
005d86e4  03 30 64 e0                                      rsb r3, r4, r3
005d86e8  01 00 53 e1                                      cmp r3, r1
005d86ec  01 50 a0 e1                                      mov r5, r1
005d86f0  08 00 00 3a                                      blo #0x5d8718
005d86f4  05 00 54 e1                                      cmp r4, r5
005d86f8  04 00 84 20                                      addhs r0, r4, r4
005d86fc  05 00 84 30                                      addlo r0, r4, r5
005d8700  1e 02 70 e3                                      cmn r0, #0xe0000001
005d8704  01 00 00 8a                                      bhi #0x5d8710
005d8708  04 00 50 e1                                      cmp r0, r4
005d870c  00 00 00 2a                                      bhs #0x5d8714
005d8710  0e 02 e0 e3                                      mvn r0, #0xe0000000
005d8714  70 80 bd e8                                      pop {r4, r5, r6, pc}
005d8718  08 00 9f e5                                      ldr r0, [pc, #8]
005d871c  00 00 8f e0                                      add r0, pc, r0
005d8720  c6 c1 04 eb                                      bl #0x708e40
005d8724  f2 ff ff ea                                      b #0x5d86f4
; mapping-symbol data/literal pool
005d8728  4c 5d 2e 00                                      .byte 0x4c, 0x5d, 0x2e, 0x00

; FUNCTION 0x005d872c, declared_size=432, range_size=432, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video17CMaterialRendererEEEtLb0ENS6_6detail23materialrenderermanager11SPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPSF_RKSF_RKSt12__false_typejb
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
005d872c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d8730  0c d0 4d e2                                      sub sp, sp, #0xc
005d8734  30 50 9d e5                                      ldr r5, [sp, #0x30]
005d8738  34 30 dd e5                                      ldrb r3, [sp, #0x34]
005d873c  01 40 a0 e1                                      mov r4, r1
005d8740  05 10 a0 e1                                      mov r1, r5
005d8744  02 60 a0 e1                                      mov r6, r2
005d8748  00 70 a0 e1                                      mov r7, r0
005d874c  04 30 8d e5                                      str r3, [sp, #4]
005d8750  dd ff ff eb                                      bl #0x5d86cc
005d8754  80 81 a0 e1                                      lsl r8, r0, #3
005d8758  08 00 a0 e1                                      mov r0, r8
005d875c  00 10 a0 e3                                      mov r1, #0
005d8760  80 df f4 eb                                      bl #0x310568
005d8764  00 a0 a0 e1                                      mov sl, r0
005d8768  00 00 97 e5                                      ldr r0, [r7]
005d876c  04 b0 60 e0                                      rsb fp, r0, r4
005d8770  cb b1 a0 e1                                      asr fp, fp, #3
005d8774  00 00 5b e3                                      cmp fp, #0
005d8778  0a b0 a0 d1                                      movle fp, sl
005d877c  0f 00 00 da                                      ble #0x5d87c0
005d8780  0b 10 a0 e1                                      mov r1, fp
005d8784  00 30 a0 e3                                      mov r3, #0
005d8788  03 20 90 e7                                      ldr r2, [r0, r3]
005d878c  03 e0 80 e0                                      add lr, r0, r3
005d8790  03 c0 8a e0                                      add ip, sl, r3
005d8794  00 00 52 e3                                      cmp r2, #0
005d8798  03 20 8a e7                                      str r2, [sl, r3]
005d879c  00 90 92 15                                      ldrne sb, [r2]
005d87a0  08 30 83 e2                                      add r3, r3, #8
005d87a4  01 90 89 12                                      addne sb, sb, #1
005d87a8  00 90 82 15                                      strne sb, [r2]
005d87ac  04 20 9e e5                                      ldr r2, [lr, #4]
005d87b0  01 10 51 e2                                      subs r1, r1, #1
005d87b4  04 20 8c e5                                      str r2, [ip, #4]
005d87b8  f2 ff ff 1a                                      bne #0x5d8788
005d87bc  8b b1 8a e0                                      add fp, sl, fp, lsl #3
005d87c0  01 00 55 e3                                      cmp r5, #1
005d87c4  3a 00 00 0a                                      beq #0x5d88b4
005d87c8  55 10 bc e7                                      sbfx r1, r5, #0, #0x1d
005d87cc  00 00 51 e3                                      cmp r1, #0
005d87d0  85 51 8b e0                                      add r5, fp, r5, lsl #3
005d87d4  0c 00 00 da                                      ble #0x5d880c
005d87d8  00 20 a0 e3                                      mov r2, #0
005d87dc  00 30 96 e5                                      ldr r3, [r6]
005d87e0  02 00 8b e0                                      add r0, fp, r2
005d87e4  00 00 53 e3                                      cmp r3, #0
005d87e8  02 30 8b e7                                      str r3, [fp, r2]
005d87ec  00 c0 93 15                                      ldrne ip, [r3]
005d87f0  08 20 82 e2                                      add r2, r2, #8
005d87f4  01 c0 8c 12                                      addne ip, ip, #1
005d87f8  00 c0 83 15                                      strne ip, [r3]
005d87fc  04 30 96 e5                                      ldr r3, [r6, #4]
005d8800  01 10 51 e2                                      subs r1, r1, #1
005d8804  04 30 80 e5                                      str r3, [r0, #4]
005d8808  f3 ff ff 1a                                      bne #0x5d87dc
005d880c  04 30 9d e5                                      ldr r3, [sp, #4]
005d8810  00 00 53 e3                                      cmp r3, #0
005d8814  04 60 97 15                                      ldrne r6, [r7, #4]
005d8818  15 00 00 1a                                      bne #0x5d8874
005d881c  04 60 97 e5                                      ldr r6, [r7, #4]
005d8820  06 e0 64 e0                                      rsb lr, r4, r6
005d8824  ce e1 a0 e1                                      asr lr, lr, #3
005d8828  00 00 5e e3                                      cmp lr, #0
005d882c  10 00 00 da                                      ble #0x5d8874
005d8830  04 30 9d e5                                      ldr r3, [sp, #4]
005d8834  0e 10 a0 e1                                      mov r1, lr
005d8838  03 20 94 e7                                      ldr r2, [r4, r3]
005d883c  03 c0 84 e0                                      add ip, r4, r3
005d8840  03 00 85 e0                                      add r0, r5, r3
005d8844  00 00 52 e3                                      cmp r2, #0
005d8848  03 20 85 e7                                      str r2, [r5, r3]
005d884c  00 60 92 15                                      ldrne r6, [r2]
005d8850  08 30 83 e2                                      add r3, r3, #8
005d8854  01 60 86 12                                      addne r6, r6, #1
005d8858  00 60 82 15                                      strne r6, [r2]
005d885c  04 20 9c e5                                      ldr r2, [ip, #4]
005d8860  01 10 51 e2                                      subs r1, r1, #1
005d8864  04 20 80 e5                                      str r2, [r0, #4]
005d8868  f2 ff ff 1a                                      bne #0x5d8838
005d886c  04 60 97 e5                                      ldr r6, [r7, #4]
005d8870  8e 51 85 e0                                      add r5, r5, lr, lsl #3
005d8874  00 40 97 e5                                      ldr r4, [r7]
005d8878  06 00 54 e1                                      cmp r4, r6
005d887c  06 00 a0 01                                      moveq r0, r6
005d8880  05 00 00 0a                                      beq #0x5d889c
005d8884  08 60 46 e2                                      sub r6, r6, #8
005d8888  06 00 a0 e1                                      mov r0, r6
005d888c  89 e6 f5 eb                                      bl #0x3522b8
005d8890  06 00 54 e1                                      cmp r4, r6
005d8894  fa ff ff 1a                                      bne #0x5d8884
005d8898  00 00 97 e5                                      ldr r0, [r7]
005d889c  08 80 8a e0                                      add r8, sl, r8
005d88a0  ea de f4 eb                                      bl #0x310450
005d88a4  20 01 87 e9                                      stmib r7, {r5, r8}
005d88a8  00 a0 87 e5                                      str sl, [r7]
005d88ac  0c d0 8d e2                                      add sp, sp, #0xc
005d88b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d88b4  00 30 96 e5                                      ldr r3, [r6]
005d88b8  08 50 8b e2                                      add r5, fp, #8
005d88bc  00 00 53 e3                                      cmp r3, #0
005d88c0  00 30 8b e5                                      str r3, [fp]
005d88c4  00 20 93 15                                      ldrne r2, [r3]
005d88c8  01 20 82 12                                      addne r2, r2, #1
005d88cc  00 20 83 15                                      strne r2, [r3]
005d88d0  04 30 96 e5                                      ldr r3, [r6, #4]
005d88d4  04 30 8b e5                                      str r3, [fp, #4]
005d88d8  cb ff ff ea                                      b #0x5d880c

; FUNCTION 0x005d88dc, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video17CMaterialRendererEEEtLb0ENS6_6detail23materialrenderermanager11SPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPSF_jRKSF_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
005d88dc  30 40 2d e9                                      push {r4, r5, lr}
005d88e0  00 40 52 e2                                      subs r4, r2, #0
005d88e4  14 d0 4d e2                                      sub sp, sp, #0x14
005d88e8  03 50 a0 e1                                      mov r5, r3
005d88ec  09 00 00 0a                                      beq #0x5d8918
005d88f0  04 e0 90 e5                                      ldr lr, [r0, #4]
005d88f4  08 c0 90 e5                                      ldr ip, [r0, #8]
005d88f8  0c c0 6e e0                                      rsb ip, lr, ip
005d88fc  cc 01 54 e1                                      cmp r4, ip, asr #3
005d8900  06 00 00 9a                                      bls #0x5d8920
005d8904  03 20 a0 e1                                      mov r2, r3
005d8908  00 c0 a0 e3                                      mov ip, #0
005d890c  08 30 8d e2                                      add r3, sp, #8
005d8910  10 10 8d e8                                      stm sp, {r4, ip}
005d8914  84 ff ff eb                                      bl #0x5d872c
005d8918  14 d0 8d e2                                      add sp, sp, #0x14
005d891c  30 80 bd e8                                      pop {r4, r5, pc}
005d8920  0c c0 8d e2                                      add ip, sp, #0xc
005d8924  00 c0 8d e5                                      str ip, [sp]
005d8928  7c fe ff eb                                      bl #0x5d8320
005d892c  f9 ff ff ea                                      b #0x5d8918

; FUNCTION 0x005d8930, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video17CMaterialRendererEEEtLb0ENS6_6detail23materialrenderermanager11SPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKSF_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
005d8930  10 40 2d e9                                      push {r4, lr}
005d8934  10 10 90 e8                                      ldm r0, {r4, ip}
005d8938  02 30 a0 e1                                      mov r3, r2
005d893c  08 d0 4d e2                                      sub sp, sp, #8
005d8940  0c 20 64 e0                                      rsb r2, r4, ip
005d8944  c2 21 a0 e1                                      asr r2, r2, #3
005d8948  02 00 51 e1                                      cmp r1, r2
005d894c  07 00 00 2a                                      bhs #0x5d8970
005d8950  81 11 84 e0                                      add r1, r4, r1, lsl #3
005d8954  0c 00 51 e1                                      cmp r1, ip
005d8958  02 00 00 0a                                      beq #0x5d8968
005d895c  0c 20 a0 e1                                      mov r2, ip
005d8960  04 30 8d e2                                      add r3, sp, #4
005d8964  53 fe ff eb                                      bl #0x5d82b8
005d8968  08 d0 8d e2                                      add sp, sp, #8
005d896c  10 80 bd e8                                      pop {r4, pc}
005d8970  01 20 62 e0                                      rsb r2, r2, r1
005d8974  0c 10 a0 e1                                      mov r1, ip
005d8978  d7 ff ff eb                                      bl #0x5d88dc
005d897c  f9 ff ff ea                                      b #0x5d8968
