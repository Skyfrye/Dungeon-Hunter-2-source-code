; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e55cc, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
005e55cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005e55d0  14 00 90 e8                                      ldm r0, {r2, r4}
005e55d4  ff 3f 0f e3                                      movw r3, #0xffff
005e55d8  ff 3f 41 e3                                      movt r3, #0x1fff
005e55dc  04 40 62 e0                                      rsb r4, r2, r4
005e55e0  c4 41 a0 e1                                      asr r4, r4, #3
005e55e4  03 30 64 e0                                      rsb r3, r4, r3
005e55e8  01 00 53 e1                                      cmp r3, r1
005e55ec  01 50 a0 e1                                      mov r5, r1
005e55f0  08 00 00 3a                                      blo #0x5e5618
005e55f4  05 00 54 e1                                      cmp r4, r5
005e55f8  04 00 84 20                                      addhs r0, r4, r4
005e55fc  05 00 84 30                                      addlo r0, r4, r5
005e5600  1e 02 70 e3                                      cmn r0, #0xe0000001
005e5604  01 00 00 8a                                      bhi #0x5e5610
005e5608  04 00 50 e1                                      cmp r0, r4
005e560c  00 00 00 2a                                      bhs #0x5e5614
005e5610  0e 02 e0 e3                                      mvn r0, #0xe0000000
005e5614  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e5618  08 00 9f e5                                      ldr r0, [pc, #8]
005e561c  00 00 8f e0                                      add r0, pc, r0
005e5620  06 8e 04 eb                                      bl #0x708e40
005e5624  f2 ff ff ea                                      b #0x5e55f4
; mapping-symbol data/literal pool
005e5628  4c 8e 2d 00                                      .byte 0x4c, 0x8e, 0x2d, 0x00

; FUNCTION 0x005e5d18, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPSF_SL_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::__false_type const&)
; decoder-mode: arm
005e5d18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e5d1c  04 30 90 e5                                      ldr r3, [r0, #4]
005e5d20  10 d0 4d e2                                      sub sp, sp, #0x10
005e5d24  01 50 a0 e1                                      mov r5, r1
005e5d28  00 40 a0 e1                                      mov r4, r0
005e5d2c  03 10 a0 e1                                      mov r1, r3
005e5d30  02 00 a0 e1                                      mov r0, r2
005e5d34  00 c0 a0 e3                                      mov ip, #0
005e5d38  05 20 a0 e1                                      mov r2, r5
005e5d3c  0c 30 8d e2                                      add r3, sp, #0xc
005e5d40  00 c0 8d e5                                      str ip, [sp]
005e5d44  d6 ff ff eb                                      bl #0x5e5ca4
005e5d48  04 70 94 e5                                      ldr r7, [r4, #4]
005e5d4c  00 80 a0 e1                                      mov r8, r0
005e5d50  00 00 57 e1                                      cmp r7, r0
005e5d54  07 00 00 0a                                      beq #0x5e5d78
005e5d58  00 60 a0 e1                                      mov r6, r0
005e5d5c  00 00 96 e5                                      ldr r0, [r6]
005e5d60  08 60 86 e2                                      add r6, r6, #8
005e5d64  00 00 50 e3                                      cmp r0, #0
005e5d68  00 00 00 0a                                      beq #0x5e5d70
005e5d6c  04 de f4 eb                                      bl #0x31d584
005e5d70  06 00 57 e1                                      cmp r7, r6
005e5d74  f8 ff ff 1a                                      bne #0x5e5d5c
005e5d78  04 80 84 e5                                      str r8, [r4, #4]
005e5d7c  05 00 a0 e1                                      mov r0, r5
005e5d80  10 d0 8d e2                                      add sp, sp, #0x10
005e5d84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e5e60, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005e5e60  70 40 2d e9                                      push {r4, r5, r6, lr}
005e5e64  04 40 90 e5                                      ldr r4, [r0, #4]
005e5e68  00 50 90 e5                                      ldr r5, [r0]
005e5e6c  00 60 a0 e1                                      mov r6, r0
005e5e70  05 00 54 e1                                      cmp r4, r5
005e5e74  06 00 00 0a                                      beq #0x5e5e94
005e5e78  08 00 14 e5                                      ldr r0, [r4, #-8]
005e5e7c  08 40 44 e2                                      sub r4, r4, #8
005e5e80  00 00 50 e3                                      cmp r0, #0
005e5e84  00 00 00 0a                                      beq #0x5e5e8c
005e5e88  bd dd f4 eb                                      bl #0x31d584
005e5e8c  04 00 55 e1                                      cmp r5, r4
005e5e90  f8 ff ff 1a                                      bne #0x5e5e78
005e5e94  00 00 96 e5                                      ldr r0, [r6]
005e5e98  00 00 50 e3                                      cmp r0, #0
005e5e9c  00 00 00 0a                                      beq #0x5e5ea4
005e5ea0  6a a9 f4 eb                                      bl #0x310450
005e5ea4  06 00 a0 e1                                      mov r0, r6
005e5ea8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e5eec, declared_size=440, range_size=440, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPSF_RKSF_RKSt12__false_typejb
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
005e5eec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e5ef0  0c d0 4d e2                                      sub sp, sp, #0xc
005e5ef4  30 50 9d e5                                      ldr r5, [sp, #0x30]
005e5ef8  34 30 dd e5                                      ldrb r3, [sp, #0x34]
005e5efc  01 40 a0 e1                                      mov r4, r1
005e5f00  05 10 a0 e1                                      mov r1, r5
005e5f04  02 60 a0 e1                                      mov r6, r2
005e5f08  00 70 a0 e1                                      mov r7, r0
005e5f0c  04 30 8d e5                                      str r3, [sp, #4]
005e5f10  ad fd ff eb                                      bl #0x5e55cc
005e5f14  80 81 a0 e1                                      lsl r8, r0, #3
005e5f18  08 00 a0 e1                                      mov r0, r8
005e5f1c  00 10 a0 e3                                      mov r1, #0
005e5f20  90 a9 f4 eb                                      bl #0x310568
005e5f24  00 a0 a0 e1                                      mov sl, r0
005e5f28  00 00 97 e5                                      ldr r0, [r7]
005e5f2c  04 b0 60 e0                                      rsb fp, r0, r4
005e5f30  cb b1 a0 e1                                      asr fp, fp, #3
005e5f34  00 00 5b e3                                      cmp fp, #0
005e5f38  0a b0 a0 d1                                      movle fp, sl
005e5f3c  0f 00 00 da                                      ble #0x5e5f80
005e5f40  0b 10 a0 e1                                      mov r1, fp
005e5f44  00 30 a0 e3                                      mov r3, #0
005e5f48  03 20 90 e7                                      ldr r2, [r0, r3]
005e5f4c  03 e0 80 e0                                      add lr, r0, r3
005e5f50  03 c0 8a e0                                      add ip, sl, r3
005e5f54  00 00 52 e3                                      cmp r2, #0
005e5f58  03 20 8a e7                                      str r2, [sl, r3]
005e5f5c  04 90 92 15                                      ldrne sb, [r2, #4]
005e5f60  08 30 83 e2                                      add r3, r3, #8
005e5f64  01 90 89 12                                      addne sb, sb, #1
005e5f68  04 90 82 15                                      strne sb, [r2, #4]
005e5f6c  04 20 9e e5                                      ldr r2, [lr, #4]
005e5f70  01 10 51 e2                                      subs r1, r1, #1
005e5f74  04 20 8c e5                                      str r2, [ip, #4]
005e5f78  f2 ff ff 1a                                      bne #0x5e5f48
005e5f7c  8b b1 8a e0                                      add fp, sl, fp, lsl #3
005e5f80  01 00 55 e3                                      cmp r5, #1
005e5f84  3c 00 00 0a                                      beq #0x5e607c
005e5f88  55 10 bc e7                                      sbfx r1, r5, #0, #0x1d
005e5f8c  00 00 51 e3                                      cmp r1, #0
005e5f90  85 51 8b e0                                      add r5, fp, r5, lsl #3
005e5f94  0c 00 00 da                                      ble #0x5e5fcc
005e5f98  00 20 a0 e3                                      mov r2, #0
005e5f9c  00 30 96 e5                                      ldr r3, [r6]
005e5fa0  02 00 8b e0                                      add r0, fp, r2
005e5fa4  00 00 53 e3                                      cmp r3, #0
005e5fa8  02 30 8b e7                                      str r3, [fp, r2]
005e5fac  04 c0 93 15                                      ldrne ip, [r3, #4]
005e5fb0  08 20 82 e2                                      add r2, r2, #8
005e5fb4  01 c0 8c 12                                      addne ip, ip, #1
005e5fb8  04 c0 83 15                                      strne ip, [r3, #4]
005e5fbc  04 30 96 e5                                      ldr r3, [r6, #4]
005e5fc0  01 10 51 e2                                      subs r1, r1, #1
005e5fc4  04 30 80 e5                                      str r3, [r0, #4]
005e5fc8  f3 ff ff 1a                                      bne #0x5e5f9c
005e5fcc  04 30 9d e5                                      ldr r3, [sp, #4]
005e5fd0  00 00 53 e3                                      cmp r3, #0
005e5fd4  04 00 97 15                                      ldrne r0, [r7, #4]
005e5fd8  15 00 00 1a                                      bne #0x5e6034
005e5fdc  04 00 97 e5                                      ldr r0, [r7, #4]
005e5fe0  00 60 64 e0                                      rsb r6, r4, r0
005e5fe4  c6 61 a0 e1                                      asr r6, r6, #3
005e5fe8  00 00 56 e3                                      cmp r6, #0
005e5fec  10 00 00 da                                      ble #0x5e6034
005e5ff0  04 30 9d e5                                      ldr r3, [sp, #4]
005e5ff4  06 10 a0 e1                                      mov r1, r6
005e5ff8  03 20 94 e7                                      ldr r2, [r4, r3]
005e5ffc  03 c0 84 e0                                      add ip, r4, r3
005e6000  03 00 85 e0                                      add r0, r5, r3
005e6004  00 00 52 e3                                      cmp r2, #0
005e6008  03 20 85 e7                                      str r2, [r5, r3]
005e600c  04 e0 92 15                                      ldrne lr, [r2, #4]
005e6010  08 30 83 e2                                      add r3, r3, #8
005e6014  01 e0 8e 12                                      addne lr, lr, #1
005e6018  04 e0 82 15                                      strne lr, [r2, #4]
005e601c  04 20 9c e5                                      ldr r2, [ip, #4]
005e6020  01 10 51 e2                                      subs r1, r1, #1
005e6024  04 20 80 e5                                      str r2, [r0, #4]
005e6028  f2 ff ff 1a                                      bne #0x5e5ff8
005e602c  04 00 97 e5                                      ldr r0, [r7, #4]
005e6030  86 51 85 e0                                      add r5, r5, r6, lsl #3
005e6034  00 60 97 e5                                      ldr r6, [r7]
005e6038  00 00 56 e1                                      cmp r6, r0
005e603c  08 00 00 0a                                      beq #0x5e6064
005e6040  00 40 a0 e1                                      mov r4, r0
005e6044  08 00 14 e5                                      ldr r0, [r4, #-8]
005e6048  08 40 44 e2                                      sub r4, r4, #8
005e604c  00 00 50 e3                                      cmp r0, #0
005e6050  00 00 00 0a                                      beq #0x5e6058
005e6054  4a dd f4 eb                                      bl #0x31d584
005e6058  04 00 56 e1                                      cmp r6, r4
005e605c  f8 ff ff 1a                                      bne #0x5e6044
005e6060  00 00 97 e5                                      ldr r0, [r7]
005e6064  08 80 8a e0                                      add r8, sl, r8
005e6068  f8 a8 f4 eb                                      bl #0x310450
005e606c  20 01 87 e9                                      stmib r7, {r5, r8}
005e6070  00 a0 87 e5                                      str sl, [r7]
005e6074  0c d0 8d e2                                      add sp, sp, #0xc
005e6078  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e607c  00 30 96 e5                                      ldr r3, [r6]
005e6080  08 50 8b e2                                      add r5, fp, #8
005e6084  00 00 53 e3                                      cmp r3, #0
005e6088  00 30 8b e5                                      str r3, [fp]
005e608c  04 20 93 15                                      ldrne r2, [r3, #4]
005e6090  01 20 82 12                                      addne r2, r2, #1
005e6094  04 20 83 15                                      strne r2, [r3, #4]
005e6098  04 30 96 e5                                      ldr r3, [r6, #4]
005e609c  04 30 8b e5                                      str r3, [fp, #4]
005e60a0  c9 ff ff ea                                      b #0x5e5fcc

; FUNCTION 0x005e6110, declared_size=468, range_size=468, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPSF_jRKSF_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&)
; decoder-mode: arm
005e6110  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005e6114  00 c0 90 e5                                      ldr ip, [r0]
005e6118  03 40 a0 e1                                      mov r4, r3
005e611c  24 d0 4d e2                                      sub sp, sp, #0x24
005e6120  0c 00 53 e1                                      cmp r3, ip
005e6124  01 50 a0 e1                                      mov r5, r1
005e6128  04 30 90 35                                      ldrlo r3, [r0, #4]
005e612c  14 00 00 3a                                      blo #0x5e6184
005e6130  04 30 90 e5                                      ldr r3, [r0, #4]
005e6134  03 00 54 e1                                      cmp r4, r3
005e6138  11 00 00 2a                                      bhs #0x5e6184
005e613c  00 30 94 e5                                      ldr r3, [r4]
005e6140  00 00 53 e3                                      cmp r3, #0
005e6144  08 30 8d e5                                      str r3, [sp, #8]
005e6148  04 10 93 15                                      ldrne r1, [r3, #4]
005e614c  01 10 81 12                                      addne r1, r1, #1
005e6150  04 10 83 15                                      strne r1, [r3, #4]
005e6154  04 c0 94 e5                                      ldr ip, [r4, #4]
005e6158  05 10 a0 e1                                      mov r1, r5
005e615c  08 30 8d e2                                      add r3, sp, #8
005e6160  0c c0 8d e5                                      str ip, [sp, #0xc]
005e6164  1c c0 8d e2                                      add ip, sp, #0x1c
005e6168  00 c0 8d e5                                      str ip, [sp]
005e616c  e7 ff ff eb                                      bl #0x5e6110
005e6170  08 00 9d e5                                      ldr r0, [sp, #8]
005e6174  00 00 50 e3                                      cmp r0, #0
005e6178  57 00 00 0a                                      beq #0x5e62dc
005e617c  00 dd f4 eb                                      bl #0x31d584
005e6180  55 00 00 ea                                      b #0x5e62dc
005e6184  03 e0 65 e0                                      rsb lr, r5, r3
005e6188  ce e1 a0 e1                                      asr lr, lr, #3
005e618c  0e 00 52 e1                                      cmp r2, lr
005e6190  0e 80 a0 e1                                      mov r8, lr
005e6194  23 00 00 2a                                      bhs #0x5e6228
005e6198  82 61 a0 e1                                      lsl r6, r2, #3
005e619c  03 10 66 e0                                      rsb r1, r6, r3
005e61a0  c6 e1 a0 e1                                      asr lr, r6, #3
005e61a4  00 00 5e e3                                      cmp lr, #0
005e61a8  03 20 a0 d1                                      movle r2, r3
005e61ac  0e 00 00 da                                      ble #0x5e61ec
005e61b0  00 20 a0 e3                                      mov r2, #0
005e61b4  02 c0 91 e7                                      ldr ip, [r1, r2]
005e61b8  02 80 81 e0                                      add r8, r1, r2
005e61bc  02 70 83 e0                                      add r7, r3, r2
005e61c0  00 00 5c e3                                      cmp ip, #0
005e61c4  02 c0 83 e7                                      str ip, [r3, r2]
005e61c8  04 a0 9c 15                                      ldrne sl, [ip, #4]
005e61cc  08 20 82 e2                                      add r2, r2, #8
005e61d0  01 a0 8a 12                                      addne sl, sl, #1
005e61d4  04 a0 8c 15                                      strne sl, [ip, #4]
005e61d8  04 c0 98 e5                                      ldr ip, [r8, #4]
005e61dc  01 e0 5e e2                                      subs lr, lr, #1
005e61e0  04 c0 87 e5                                      str ip, [r7, #4]
005e61e4  f2 ff ff 1a                                      bne #0x5e61b4
005e61e8  04 20 90 e5                                      ldr r2, [r0, #4]
005e61ec  06 20 82 e0                                      add r2, r2, r6
005e61f0  04 20 80 e5                                      str r2, [r0, #4]
005e61f4  00 70 a0 e3                                      mov r7, #0
005e61f8  03 20 a0 e1                                      mov r2, r3
005e61fc  05 00 a0 e1                                      mov r0, r5
005e6200  18 30 8d e2                                      add r3, sp, #0x18
005e6204  00 70 8d e5                                      str r7, [sp]
005e6208  de fe ff eb                                      bl #0x5e5d88
005e620c  05 00 a0 e1                                      mov r0, r5
005e6210  06 10 85 e0                                      add r1, r5, r6
005e6214  04 20 a0 e1                                      mov r2, r4
005e6218  14 30 8d e2                                      add r3, sp, #0x14
005e621c  00 70 8d e5                                      str r7, [sp]
005e6220  f5 fe ff eb                                      bl #0x5e5dfc
005e6224  2c 00 00 ea                                      b #0x5e62dc
005e6228  02 20 6e e0                                      rsb r2, lr, r2
005e622c  52 70 bc e7                                      sbfx r7, r2, #0, #0x1d
005e6230  00 00 57 e3                                      cmp r7, #0
005e6234  82 21 83 e0                                      add r2, r3, r2, lsl #3
005e6238  0c 00 00 da                                      ble #0x5e6270
005e623c  00 c0 a0 e3                                      mov ip, #0
005e6240  00 10 94 e5                                      ldr r1, [r4]
005e6244  0c 60 83 e0                                      add r6, r3, ip
005e6248  00 00 51 e3                                      cmp r1, #0
005e624c  0c 10 83 e7                                      str r1, [r3, ip]
005e6250  04 a0 91 15                                      ldrne sl, [r1, #4]
005e6254  08 c0 8c e2                                      add ip, ip, #8
005e6258  01 a0 8a 12                                      addne sl, sl, #1
005e625c  04 a0 81 15                                      strne sl, [r1, #4]
005e6260  04 10 94 e5                                      ldr r1, [r4, #4]
005e6264  01 70 57 e2                                      subs r7, r7, #1
005e6268  04 10 86 e5                                      str r1, [r6, #4]
005e626c  f3 ff ff 1a                                      bne #0x5e6240
005e6270  00 00 5e e3                                      cmp lr, #0
005e6274  04 20 80 e5                                      str r2, [r0, #4]
005e6278  0e 00 00 da                                      ble #0x5e62b8
005e627c  00 10 a0 e3                                      mov r1, #0
005e6280  01 c0 95 e7                                      ldr ip, [r5, r1]
005e6284  01 70 85 e0                                      add r7, r5, r1
005e6288  01 60 82 e0                                      add r6, r2, r1
005e628c  00 00 5c e3                                      cmp ip, #0
005e6290  01 c0 82 e7                                      str ip, [r2, r1]
005e6294  04 a0 9c 15                                      ldrne sl, [ip, #4]
005e6298  08 10 81 e2                                      add r1, r1, #8
005e629c  01 a0 8a 12                                      addne sl, sl, #1
005e62a0  04 a0 8c 15                                      strne sl, [ip, #4]
005e62a4  04 c0 97 e5                                      ldr ip, [r7, #4]
005e62a8  01 e0 5e e2                                      subs lr, lr, #1
005e62ac  04 c0 86 e5                                      str ip, [r6, #4]
005e62b0  f2 ff ff 1a                                      bne #0x5e6280
005e62b4  04 20 90 e5                                      ldr r2, [r0, #4]
005e62b8  88 21 82 e0                                      add r2, r2, r8, lsl #3
005e62bc  04 20 80 e5                                      str r2, [r0, #4]
005e62c0  03 10 a0 e1                                      mov r1, r3
005e62c4  00 c0 a0 e3                                      mov ip, #0
005e62c8  05 00 a0 e1                                      mov r0, r5
005e62cc  04 20 a0 e1                                      mov r2, r4
005e62d0  10 30 8d e2                                      add r3, sp, #0x10
005e62d4  00 c0 8d e5                                      str ip, [sp]
005e62d8  c7 fe ff eb                                      bl #0x5e5dfc
005e62dc  24 d0 8d e2                                      add sp, sp, #0x24
005e62e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x005e62e4, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPSF_jRKSF_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
005e62e4  30 40 2d e9                                      push {r4, r5, lr}
005e62e8  00 40 52 e2                                      subs r4, r2, #0
005e62ec  14 d0 4d e2                                      sub sp, sp, #0x14
005e62f0  03 50 a0 e1                                      mov r5, r3
005e62f4  09 00 00 0a                                      beq #0x5e6320
005e62f8  04 e0 90 e5                                      ldr lr, [r0, #4]
005e62fc  08 c0 90 e5                                      ldr ip, [r0, #8]
005e6300  0c c0 6e e0                                      rsb ip, lr, ip
005e6304  cc 01 54 e1                                      cmp r4, ip, asr #3
005e6308  06 00 00 9a                                      bls #0x5e6328
005e630c  03 20 a0 e1                                      mov r2, r3
005e6310  00 c0 a0 e3                                      mov ip, #0
005e6314  08 30 8d e2                                      add r3, sp, #8
005e6318  10 10 8d e8                                      stm sp, {r4, ip}
005e631c  f2 fe ff eb                                      bl #0x5e5eec
005e6320  14 d0 8d e2                                      add sp, sp, #0x14
005e6324  30 80 bd e8                                      pop {r4, r5, pc}
005e6328  0c c0 8d e2                                      add ip, sp, #0xc
005e632c  00 c0 8d e5                                      str ip, [sp]
005e6330  76 ff ff eb                                      bl #0x5e6110
005e6334  f9 ff ff ea                                      b #0x5e6320

; FUNCTION 0x005e6338, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE6SEntryENS1_10SAllocatorISF_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKSF_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
005e6338  10 40 2d e9                                      push {r4, lr}
005e633c  10 10 90 e8                                      ldm r0, {r4, ip}
005e6340  02 30 a0 e1                                      mov r3, r2
005e6344  08 d0 4d e2                                      sub sp, sp, #8
005e6348  0c 20 64 e0                                      rsb r2, r4, ip
005e634c  c2 21 a0 e1                                      asr r2, r2, #3
005e6350  02 00 51 e1                                      cmp r1, r2
005e6354  07 00 00 2a                                      bhs #0x5e6378
005e6358  81 11 84 e0                                      add r1, r4, r1, lsl #3
005e635c  0c 00 51 e1                                      cmp r1, ip
005e6360  02 00 00 0a                                      beq #0x5e6370
005e6364  0c 20 a0 e1                                      mov r2, ip
005e6368  04 30 8d e2                                      add r3, sp, #4
005e636c  69 fe ff eb                                      bl #0x5e5d18
005e6370  08 d0 8d e2                                      add sp, sp, #8
005e6374  10 80 bd e8                                      pop {r4, pc}
005e6378  01 20 62 e0                                      rsb r2, r2, r1
005e637c  0c 10 a0 e1                                      mov r1, ip
005e6380  d7 ff ff eb                                      bl #0x5e62e4
005e6384  f9 ff ff ea                                      b #0x5e6370
