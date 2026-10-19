; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e862c, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
005e862c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e8630  14 00 90 e8                                      ldm r0, {r2, r4}
005e8634  ff 3f 0f e3                                      movw r3, #0xffff
005e8638  ff 3f 41 e3                                      movt r3, #0x1fff
005e863c  04 40 62 e0                                      rsb r4, r2, r4
005e8640  c4 41 a0 e1                                      asr r4, r4, #3
005e8644  03 30 64 e0                                      rsb r3, r4, r3
005e8648  01 00 53 e1                                      cmp r3, r1
005e864c  01 50 a0 e1                                      mov r5, r1
005e8650  08 00 00 3a                                      blo #0x5e8678
005e8654  05 00 54 e1                                      cmp r4, r5
005e8658  04 00 84 20                                      addhs r0, r4, r4
005e865c  05 00 84 30                                      addlo r0, r4, r5
005e8660  1e 02 70 e3                                      cmn r0, #0xe0000001
005e8664  01 00 00 8a                                      bhi #0x5e8670
005e8668  04 00 50 e1                                      cmp r0, r4
005e866c  00 00 00 2a                                      bhs #0x5e8674
005e8670  0e 02 e0 e3                                      mvn r0, #0xe0000000
005e8674  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e8678  08 00 9f e5                                      ldr r0, [pc, #8]
005e867c  00 00 8f e0                                      add r0, pc, r0
005e8680  ee 81 04 eb                                      bl #0x708e40
005e8684  f2 ff ff ea                                      b #0x5e8654
; mapping-symbol data/literal pool
005e8688  ec 5d 2d 00                                      .byte 0xec, 0x5d, 0x2d, 0x00

; FUNCTION 0x005e959c, declared_size=440, range_size=440, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPSF_RKSF_RKSt12__false_typejb
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
005e959c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e95a0  0c d0 4d e2                                      sub sp, sp, #0xc
005e95a4  30 50 9d e5                                      ldr r5, [sp, #0x30]
005e95a8  34 30 dd e5                                      ldrb r3, [sp, #0x34]
005e95ac  01 40 a0 e1                                      mov r4, r1
005e95b0  05 10 a0 e1                                      mov r1, r5
005e95b4  02 60 a0 e1                                      mov r6, r2
005e95b8  00 70 a0 e1                                      mov r7, r0
005e95bc  04 30 8d e5                                      str r3, [sp, #4]
005e95c0  19 fc ff eb                                      bl #0x5e862c
005e95c4  80 81 a0 e1                                      lsl r8, r0, #3
005e95c8  08 00 a0 e1                                      mov r0, r8
005e95cc  00 10 a0 e3                                      mov r1, #0
005e95d0  e4 9b f4 eb                                      bl #0x310568
005e95d4  00 a0 a0 e1                                      mov sl, r0
005e95d8  00 00 97 e5                                      ldr r0, [r7]
005e95dc  04 b0 60 e0                                      rsb fp, r0, r4
005e95e0  cb b1 a0 e1                                      asr fp, fp, #3
005e95e4  00 00 5b e3                                      cmp fp, #0
005e95e8  0a b0 a0 d1                                      movle fp, sl
005e95ec  0f 00 00 da                                      ble #0x5e9630
005e95f0  0b 10 a0 e1                                      mov r1, fp
005e95f4  00 30 a0 e3                                      mov r3, #0
005e95f8  03 20 90 e7                                      ldr r2, [r0, r3]
005e95fc  03 e0 80 e0                                      add lr, r0, r3
005e9600  03 c0 8a e0                                      add ip, sl, r3
005e9604  00 00 52 e3                                      cmp r2, #0
005e9608  03 20 8a e7                                      str r2, [sl, r3]
005e960c  04 90 92 15                                      ldrne sb, [r2, #4]
005e9610  08 30 83 e2                                      add r3, r3, #8
005e9614  01 90 89 12                                      addne sb, sb, #1
005e9618  04 90 82 15                                      strne sb, [r2, #4]
005e961c  04 20 9e e5                                      ldr r2, [lr, #4]
005e9620  01 10 51 e2                                      subs r1, r1, #1
005e9624  04 20 8c e5                                      str r2, [ip, #4]
005e9628  f2 ff ff 1a                                      bne #0x5e95f8
005e962c  8b b1 8a e0                                      add fp, sl, fp, lsl #3
005e9630  01 00 55 e3                                      cmp r5, #1
005e9634  3c 00 00 0a                                      beq #0x5e972c
005e9638  55 10 bc e7                                      sbfx r1, r5, #0, #0x1d
005e963c  00 00 51 e3                                      cmp r1, #0
005e9640  85 51 8b e0                                      add r5, fp, r5, lsl #3
005e9644  0c 00 00 da                                      ble #0x5e967c
005e9648  00 20 a0 e3                                      mov r2, #0
005e964c  00 30 96 e5                                      ldr r3, [r6]
005e9650  02 00 8b e0                                      add r0, fp, r2
005e9654  00 00 53 e3                                      cmp r3, #0
005e9658  02 30 8b e7                                      str r3, [fp, r2]
005e965c  04 c0 93 15                                      ldrne ip, [r3, #4]
005e9660  08 20 82 e2                                      add r2, r2, #8
005e9664  01 c0 8c 12                                      addne ip, ip, #1
005e9668  04 c0 83 15                                      strne ip, [r3, #4]
005e966c  04 30 96 e5                                      ldr r3, [r6, #4]
005e9670  01 10 51 e2                                      subs r1, r1, #1
005e9674  04 30 80 e5                                      str r3, [r0, #4]
005e9678  f3 ff ff 1a                                      bne #0x5e964c
005e967c  04 30 9d e5                                      ldr r3, [sp, #4]
005e9680  00 00 53 e3                                      cmp r3, #0
005e9684  04 00 97 15                                      ldrne r0, [r7, #4]
005e9688  15 00 00 1a                                      bne #0x5e96e4
005e968c  04 00 97 e5                                      ldr r0, [r7, #4]
005e9690  00 60 64 e0                                      rsb r6, r4, r0
005e9694  c6 61 a0 e1                                      asr r6, r6, #3
005e9698  00 00 56 e3                                      cmp r6, #0
005e969c  10 00 00 da                                      ble #0x5e96e4
005e96a0  04 30 9d e5                                      ldr r3, [sp, #4]
005e96a4  06 10 a0 e1                                      mov r1, r6
005e96a8  03 20 94 e7                                      ldr r2, [r4, r3]
005e96ac  03 c0 84 e0                                      add ip, r4, r3
005e96b0  03 00 85 e0                                      add r0, r5, r3
005e96b4  00 00 52 e3                                      cmp r2, #0
005e96b8  03 20 85 e7                                      str r2, [r5, r3]
005e96bc  04 e0 92 15                                      ldrne lr, [r2, #4]
005e96c0  08 30 83 e2                                      add r3, r3, #8
005e96c4  01 e0 8e 12                                      addne lr, lr, #1
005e96c8  04 e0 82 15                                      strne lr, [r2, #4]
005e96cc  04 20 9c e5                                      ldr r2, [ip, #4]
005e96d0  01 10 51 e2                                      subs r1, r1, #1
005e96d4  04 20 80 e5                                      str r2, [r0, #4]
005e96d8  f2 ff ff 1a                                      bne #0x5e96a8
005e96dc  04 00 97 e5                                      ldr r0, [r7, #4]
005e96e0  86 51 85 e0                                      add r5, r5, r6, lsl #3
005e96e4  00 60 97 e5                                      ldr r6, [r7]
005e96e8  00 00 56 e1                                      cmp r6, r0
005e96ec  08 00 00 0a                                      beq #0x5e9714
005e96f0  00 40 a0 e1                                      mov r4, r0
005e96f4  08 00 14 e5                                      ldr r0, [r4, #-8]
005e96f8  08 40 44 e2                                      sub r4, r4, #8
005e96fc  00 00 50 e3                                      cmp r0, #0
005e9700  00 00 00 0a                                      beq #0x5e9708
005e9704  9e cf f4 eb                                      bl #0x31d584
005e9708  04 00 56 e1                                      cmp r6, r4
005e970c  f8 ff ff 1a                                      bne #0x5e96f4
005e9710  00 00 97 e5                                      ldr r0, [r7]
005e9714  08 80 8a e0                                      add r8, sl, r8
005e9718  4c 9b f4 eb                                      bl #0x310450
005e971c  20 01 87 e9                                      stmib r7, {r5, r8}
005e9720  00 a0 87 e5                                      str sl, [r7]
005e9724  0c d0 8d e2                                      add sp, sp, #0xc
005e9728  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e972c  00 30 96 e5                                      ldr r3, [r6]
005e9730  08 50 8b e2                                      add r5, fp, #8
005e9734  00 00 53 e3                                      cmp r3, #0
005e9738  00 30 8b e5                                      str r3, [fp]
005e973c  04 20 93 15                                      ldrne r2, [r3, #4]
005e9740  01 20 82 12                                      addne r2, r2, #1
005e9744  04 20 83 15                                      strne r2, [r3, #4]
005e9748  04 30 96 e5                                      ldr r3, [r6, #4]
005e974c  04 30 8b e5                                      str r3, [fp, #4]
005e9750  c9 ff ff ea                                      b #0x5e967c

; FUNCTION 0x005e9754, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005e9754  70 40 2d e9                                      push {r4, r5, r6, lr}
005e9758  04 40 90 e5                                      ldr r4, [r0, #4]
005e975c  00 50 90 e5                                      ldr r5, [r0]
005e9760  00 60 a0 e1                                      mov r6, r0
005e9764  05 00 54 e1                                      cmp r4, r5
005e9768  06 00 00 0a                                      beq #0x5e9788
005e976c  08 00 14 e5                                      ldr r0, [r4, #-8]
005e9770  08 40 44 e2                                      sub r4, r4, #8
005e9774  00 00 50 e3                                      cmp r0, #0
005e9778  00 00 00 0a                                      beq #0x5e9780
005e977c  80 cf f4 eb                                      bl #0x31d584
005e9780  04 00 55 e1                                      cmp r5, r4
005e9784  f8 ff ff 1a                                      bne #0x5e976c
005e9788  00 00 96 e5                                      ldr r0, [r6]
005e978c  00 00 50 e3                                      cmp r0, #0
005e9790  00 00 00 0a                                      beq #0x5e9798
005e9794  2d 9b f4 eb                                      bl #0x310450
005e9798  06 00 a0 e1                                      mov r0, r6
005e979c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e9a4c, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPSF_SL_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::__false_type const&)
; decoder-mode: arm
005e9a4c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e9a50  04 40 90 e5                                      ldr r4, [r0, #4]
005e9a54  00 50 a0 e1                                      mov r5, r0
005e9a58  02 60 a0 e1                                      mov r6, r2
005e9a5c  04 a0 62 e0                                      rsb sl, r2, r4
005e9a60  ca a1 a0 e1                                      asr sl, sl, #3
005e9a64  00 00 5a e3                                      cmp sl, #0
005e9a68  01 70 a0 e1                                      mov r7, r1
005e9a6c  01 80 a0 d1                                      movle r8, r1
005e9a70  14 00 00 da                                      ble #0x5e9ac8
005e9a74  0a 80 a0 e1                                      mov r8, sl
005e9a78  00 40 a0 e3                                      mov r4, #0
005e9a7c  04 30 96 e7                                      ldr r3, [r6, r4]
005e9a80  00 00 53 e3                                      cmp r3, #0
005e9a84  04 20 93 15                                      ldrne r2, [r3, #4]
005e9a88  01 20 82 12                                      addne r2, r2, #1
005e9a8c  04 20 83 15                                      strne r2, [r3, #4]
005e9a90  04 00 97 e7                                      ldr r0, [r7, r4]
005e9a94  04 30 87 e7                                      str r3, [r7, r4]
005e9a98  00 00 50 e3                                      cmp r0, #0
005e9a9c  00 00 00 0a                                      beq #0x5e9aa4
005e9aa0  b7 ce f4 eb                                      bl #0x31d584
005e9aa4  04 30 86 e0                                      add r3, r6, r4
005e9aa8  04 20 93 e5                                      ldr r2, [r3, #4]
005e9aac  01 80 58 e2                                      subs r8, r8, #1
005e9ab0  04 30 87 e0                                      add r3, r7, r4
005e9ab4  04 20 83 e5                                      str r2, [r3, #4]
005e9ab8  08 40 84 e2                                      add r4, r4, #8
005e9abc  ee ff ff 1a                                      bne #0x5e9a7c
005e9ac0  04 40 95 e5                                      ldr r4, [r5, #4]
005e9ac4  8a 81 87 e0                                      add r8, r7, sl, lsl #3
005e9ac8  08 00 54 e1                                      cmp r4, r8
005e9acc  07 00 00 0a                                      beq #0x5e9af0
005e9ad0  08 60 a0 e1                                      mov r6, r8
005e9ad4  00 00 96 e5                                      ldr r0, [r6]
005e9ad8  08 60 86 e2                                      add r6, r6, #8
005e9adc  00 00 50 e3                                      cmp r0, #0
005e9ae0  00 00 00 0a                                      beq #0x5e9ae8
005e9ae4  a6 ce f4 eb                                      bl #0x31d584
005e9ae8  06 00 54 e1                                      cmp r4, r6
005e9aec  f8 ff ff 1a                                      bne #0x5e9ad4
005e9af0  04 80 85 e5                                      str r8, [r5, #4]
005e9af4  07 00 a0 e1                                      mov r0, r7
005e9af8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005e9afc, declared_size=624, range_size=624, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPSF_jRKSF_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&)
; decoder-mode: arm
005e9afc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e9b00  00 c0 90 e5                                      ldr ip, [r0]
005e9b04  18 d0 4d e2                                      sub sp, sp, #0x18
005e9b08  03 40 a0 e1                                      mov r4, r3
005e9b0c  0c 00 53 e1                                      cmp r3, ip
005e9b10  01 50 a0 e1                                      mov r5, r1
005e9b14  04 60 90 35                                      ldrlo r6, [r0, #4]
005e9b18  15 00 00 3a                                      blo #0x5e9b74
005e9b1c  04 60 90 e5                                      ldr r6, [r0, #4]
005e9b20  06 00 53 e1                                      cmp r3, r6
005e9b24  12 00 00 2a                                      bhs #0x5e9b74
005e9b28  00 30 93 e5                                      ldr r3, [r3]
005e9b2c  00 00 53 e3                                      cmp r3, #0
005e9b30  0c 30 8d e5                                      str r3, [sp, #0xc]
005e9b34  04 10 93 15                                      ldrne r1, [r3, #4]
005e9b38  01 10 81 12                                      addne r1, r1, #1
005e9b3c  04 10 83 15                                      strne r1, [r3, #4]
005e9b40  04 c0 94 e5                                      ldr ip, [r4, #4]
005e9b44  05 10 a0 e1                                      mov r1, r5
005e9b48  0c 30 8d e2                                      add r3, sp, #0xc
005e9b4c  10 c0 8d e5                                      str ip, [sp, #0x10]
005e9b50  14 c0 8d e2                                      add ip, sp, #0x14
005e9b54  00 c0 8d e5                                      str ip, [sp]
005e9b58  e7 ff ff eb                                      bl #0x5e9afc
005e9b5c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005e9b60  00 00 50 e3                                      cmp r0, #0
005e9b64  00 00 00 0a                                      beq #0x5e9b6c
005e9b68  85 ce f4 eb                                      bl #0x31d584
005e9b6c  18 d0 8d e2                                      add sp, sp, #0x18
005e9b70  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e9b74  06 70 65 e0                                      rsb r7, r5, r6
005e9b78  c7 71 a0 e1                                      asr r7, r7, #3
005e9b7c  07 00 52 e1                                      cmp r2, r7
005e9b80  3f 00 00 2a                                      bhs #0x5e9c84
005e9b84  82 a1 a0 e1                                      lsl sl, r2, #3
005e9b88  06 70 6a e0                                      rsb r7, sl, r6
005e9b8c  ca 11 a0 e1                                      asr r1, sl, #3
005e9b90  00 00 51 e3                                      cmp r1, #0
005e9b94  06 30 a0 d1                                      movle r3, r6
005e9b98  0e 00 00 da                                      ble #0x5e9bd8
005e9b9c  00 30 a0 e3                                      mov r3, #0
005e9ba0  03 20 97 e7                                      ldr r2, [r7, r3]
005e9ba4  03 80 87 e0                                      add r8, r7, r3
005e9ba8  03 c0 86 e0                                      add ip, r6, r3
005e9bac  00 00 52 e3                                      cmp r2, #0
005e9bb0  03 20 86 e7                                      str r2, [r6, r3]
005e9bb4  04 90 92 15                                      ldrne sb, [r2, #4]
005e9bb8  08 30 83 e2                                      add r3, r3, #8
005e9bbc  01 90 89 12                                      addne sb, sb, #1
005e9bc0  04 90 82 15                                      strne sb, [r2, #4]
005e9bc4  04 20 98 e5                                      ldr r2, [r8, #4]
005e9bc8  01 10 51 e2                                      subs r1, r1, #1
005e9bcc  04 20 8c e5                                      str r2, [ip, #4]
005e9bd0  f2 ff ff 1a                                      bne #0x5e9ba0
005e9bd4  04 30 90 e5                                      ldr r3, [r0, #4]
005e9bd8  07 80 65 e0                                      rsb r8, r5, r7
005e9bdc  c8 81 a0 e1                                      asr r8, r8, #3
005e9be0  0a 30 83 e0                                      add r3, r3, sl
005e9be4  00 00 58 e3                                      cmp r8, #0
005e9be8  04 30 80 e5                                      str r3, [r0, #4]
005e9bec  0f 00 00 da                                      ble #0x5e9c30
005e9bf0  08 30 17 e5                                      ldr r3, [r7, #-8]
005e9bf4  00 00 53 e3                                      cmp r3, #0
005e9bf8  04 20 93 15                                      ldrne r2, [r3, #4]
005e9bfc  01 20 82 12                                      addne r2, r2, #1
005e9c00  04 20 83 15                                      strne r2, [r3, #4]
005e9c04  08 00 16 e5                                      ldr r0, [r6, #-8]
005e9c08  08 30 06 e5                                      str r3, [r6, #-8]
005e9c0c  00 00 50 e3                                      cmp r0, #0
005e9c10  00 00 00 0a                                      beq #0x5e9c18
005e9c14  5a ce f4 eb                                      bl #0x31d584
005e9c18  04 30 17 e5                                      ldr r3, [r7, #-4]
005e9c1c  01 80 58 e2                                      subs r8, r8, #1
005e9c20  08 70 47 e2                                      sub r7, r7, #8
005e9c24  04 30 06 e5                                      str r3, [r6, #-4]
005e9c28  08 60 46 e2                                      sub r6, r6, #8
005e9c2c  ef ff ff 1a                                      bne #0x5e9bf0
005e9c30  ca 71 a0 e1                                      asr r7, sl, #3
005e9c34  00 00 57 e3                                      cmp r7, #0
005e9c38  cb ff ff da                                      ble #0x5e9b6c
005e9c3c  00 60 a0 e3                                      mov r6, #0
005e9c40  00 30 94 e5                                      ldr r3, [r4]
005e9c44  00 00 53 e3                                      cmp r3, #0
005e9c48  04 20 93 15                                      ldrne r2, [r3, #4]
005e9c4c  01 20 82 12                                      addne r2, r2, #1
005e9c50  04 20 83 15                                      strne r2, [r3, #4]
005e9c54  06 00 95 e7                                      ldr r0, [r5, r6]
005e9c58  06 30 85 e7                                      str r3, [r5, r6]
005e9c5c  00 00 50 e3                                      cmp r0, #0
005e9c60  00 00 00 0a                                      beq #0x5e9c68
005e9c64  46 ce f4 eb                                      bl #0x31d584
005e9c68  04 20 94 e5                                      ldr r2, [r4, #4]
005e9c6c  06 30 85 e0                                      add r3, r5, r6
005e9c70  01 70 57 e2                                      subs r7, r7, #1
005e9c74  04 20 83 e5                                      str r2, [r3, #4]
005e9c78  08 60 86 e2                                      add r6, r6, #8
005e9c7c  ef ff ff 1a                                      bne #0x5e9c40
005e9c80  b9 ff ff ea                                      b #0x5e9b6c
005e9c84  02 20 67 e0                                      rsb r2, r7, r2
005e9c88  52 c0 bc e7                                      sbfx ip, r2, #0, #0x1d
005e9c8c  00 00 5c e3                                      cmp ip, #0
005e9c90  82 21 86 e0                                      add r2, r6, r2, lsl #3
005e9c94  0c 00 00 da                                      ble #0x5e9ccc
005e9c98  00 10 a0 e3                                      mov r1, #0
005e9c9c  00 30 94 e5                                      ldr r3, [r4]
005e9ca0  01 80 86 e0                                      add r8, r6, r1
005e9ca4  00 00 53 e3                                      cmp r3, #0
005e9ca8  01 30 86 e7                                      str r3, [r6, r1]
005e9cac  04 a0 93 15                                      ldrne sl, [r3, #4]
005e9cb0  08 10 81 e2                                      add r1, r1, #8
005e9cb4  01 a0 8a 12                                      addne sl, sl, #1
005e9cb8  04 a0 83 15                                      strne sl, [r3, #4]
005e9cbc  04 30 94 e5                                      ldr r3, [r4, #4]
005e9cc0  01 c0 5c e2                                      subs ip, ip, #1
005e9cc4  04 30 88 e5                                      str r3, [r8, #4]
005e9cc8  f3 ff ff 1a                                      bne #0x5e9c9c
005e9ccc  00 00 57 e3                                      cmp r7, #0
005e9cd0  04 20 80 e5                                      str r2, [r0, #4]
005e9cd4  87 21 82 d0                                      addle r2, r2, r7, lsl #3
005e9cd8  04 20 80 d5                                      strle r2, [r0, #4]
005e9cdc  a2 ff ff da                                      ble #0x5e9b6c
005e9ce0  07 60 a0 e1                                      mov r6, r7
005e9ce4  00 30 a0 e3                                      mov r3, #0
005e9ce8  03 10 95 e7                                      ldr r1, [r5, r3]
005e9cec  03 80 85 e0                                      add r8, r5, r3
005e9cf0  03 c0 82 e0                                      add ip, r2, r3
005e9cf4  00 00 51 e3                                      cmp r1, #0
005e9cf8  03 10 82 e7                                      str r1, [r2, r3]
005e9cfc  04 a0 91 15                                      ldrne sl, [r1, #4]
005e9d00  08 30 83 e2                                      add r3, r3, #8
005e9d04  01 a0 8a 12                                      addne sl, sl, #1
005e9d08  04 a0 81 15                                      strne sl, [r1, #4]
005e9d0c  04 10 98 e5                                      ldr r1, [r8, #4]
005e9d10  01 60 56 e2                                      subs r6, r6, #1
005e9d14  04 10 8c e5                                      str r1, [ip, #4]
005e9d18  f2 ff ff 1a                                      bne #0x5e9ce8
005e9d1c  04 30 90 e5                                      ldr r3, [r0, #4]
005e9d20  87 31 83 e0                                      add r3, r3, r7, lsl #3
005e9d24  04 30 80 e5                                      str r3, [r0, #4]
005e9d28  00 30 94 e5                                      ldr r3, [r4]
005e9d2c  00 00 53 e3                                      cmp r3, #0
005e9d30  04 20 93 15                                      ldrne r2, [r3, #4]
005e9d34  01 20 82 12                                      addne r2, r2, #1
005e9d38  04 20 83 15                                      strne r2, [r3, #4]
005e9d3c  06 00 95 e7                                      ldr r0, [r5, r6]
005e9d40  06 30 85 e7                                      str r3, [r5, r6]
005e9d44  00 00 50 e3                                      cmp r0, #0
005e9d48  00 00 00 0a                                      beq #0x5e9d50
005e9d4c  0c ce f4 eb                                      bl #0x31d584
005e9d50  04 20 94 e5                                      ldr r2, [r4, #4]
005e9d54  06 30 85 e0                                      add r3, r5, r6
005e9d58  01 70 57 e2                                      subs r7, r7, #1
005e9d5c  04 20 83 e5                                      str r2, [r3, #4]
005e9d60  08 60 86 e2                                      add r6, r6, #8
005e9d64  ef ff ff 1a                                      bne #0x5e9d28
005e9d68  7f ff ff ea                                      b #0x5e9b6c

; FUNCTION 0x005e9d6c, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPSF_jRKSF_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
005e9d6c  30 40 2d e9                                      push {r4, r5, lr}
005e9d70  00 40 52 e2                                      subs r4, r2, #0
005e9d74  14 d0 4d e2                                      sub sp, sp, #0x14
005e9d78  03 50 a0 e1                                      mov r5, r3
005e9d7c  09 00 00 0a                                      beq #0x5e9da8
005e9d80  04 e0 90 e5                                      ldr lr, [r0, #4]
005e9d84  08 c0 90 e5                                      ldr ip, [r0, #8]
005e9d88  0c c0 6e e0                                      rsb ip, lr, ip
005e9d8c  cc 01 54 e1                                      cmp r4, ip, asr #3
005e9d90  06 00 00 9a                                      bls #0x5e9db0
005e9d94  03 20 a0 e1                                      mov r2, r3
005e9d98  00 c0 a0 e3                                      mov ip, #0
005e9d9c  08 30 8d e2                                      add r3, sp, #8
005e9da0  10 10 8d e8                                      stm sp, {r4, ip}
005e9da4  fc fd ff eb                                      bl #0x5e959c
005e9da8  14 d0 8d e2                                      add sp, sp, #0x14
005e9dac  30 80 bd e8                                      pop {r4, r5, pc}
005e9db0  0c c0 8d e2                                      add ip, sp, #0xc
005e9db4  00 c0 8d e5                                      str ip, [sp]
005e9db8  4f ff ff eb                                      bl #0x5e9afc
005e9dbc  f9 ff ff ea                                      b #0x5e9da8

; FUNCTION 0x005e9dc0, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKSF_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
005e9dc0  10 40 2d e9                                      push {r4, lr}
005e9dc4  10 10 90 e8                                      ldm r0, {r4, ip}
005e9dc8  02 30 a0 e1                                      mov r3, r2
005e9dcc  08 d0 4d e2                                      sub sp, sp, #8
005e9dd0  0c 20 64 e0                                      rsb r2, r4, ip
005e9dd4  c2 21 a0 e1                                      asr r2, r2, #3
005e9dd8  02 00 51 e1                                      cmp r1, r2
005e9ddc  07 00 00 2a                                      bhs #0x5e9e00
005e9de0  81 11 84 e0                                      add r1, r4, r1, lsl #3
005e9de4  0c 00 51 e1                                      cmp r1, ip
005e9de8  02 00 00 0a                                      beq #0x5e9df8
005e9dec  0c 20 a0 e1                                      mov r2, ip
005e9df0  04 30 8d e2                                      add r3, sp, #4
005e9df4  14 ff ff eb                                      bl #0x5e9a4c
005e9df8  08 d0 8d e2                                      add sp, sp, #8
005e9dfc  10 80 bd e8                                      pop {r4, pc}
005e9e00  01 20 62 e0                                      rsb r2, r2, r1
005e9e04  0c 10 a0 e1                                      mov r1, ip
005e9e08  d7 ff ff eb                                      bl #0x5e9d6c
005e9e0c  f9 ff ff ea                                      b #0x5e9df8
