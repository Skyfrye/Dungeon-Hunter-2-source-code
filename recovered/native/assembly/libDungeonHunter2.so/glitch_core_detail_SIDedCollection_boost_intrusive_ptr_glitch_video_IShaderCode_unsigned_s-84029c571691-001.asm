; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e129c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video11IShaderCodeEEEtLb0ENS3_15sidedcollection16SEmptyPropertiesENSA_12SValueTraitsEE6SEntryESF_iEET0_T_SH_SG_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006e129c  01 10 60 e0                                      rsb r1, r0, r1
006e12a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e12a4  c1 51 a0 e1                                      asr r5, r1, #3
006e12a8  00 00 55 e3                                      cmp r5, #0
006e12ac  00 40 a0 e1                                      mov r4, r0
006e12b0  02 70 a0 e1                                      mov r7, r2
006e12b4  13 00 00 da                                      ble #0x6e1308
006e12b8  05 80 a0 e1                                      mov r8, r5
006e12bc  00 60 a0 e3                                      mov r6, #0
006e12c0  06 30 94 e7                                      ldr r3, [r4, r6]
006e12c4  00 00 53 e3                                      cmp r3, #0
006e12c8  04 20 93 15                                      ldrne r2, [r3, #4]
006e12cc  01 20 82 12                                      addne r2, r2, #1
006e12d0  04 20 83 15                                      strne r2, [r3, #4]
006e12d4  06 00 97 e7                                      ldr r0, [r7, r6]
006e12d8  06 30 87 e7                                      str r3, [r7, r6]
006e12dc  00 00 50 e3                                      cmp r0, #0
006e12e0  00 00 00 0a                                      beq #0x6e12e8
006e12e4  a6 f0 f0 eb                                      bl #0x31d584
006e12e8  06 30 84 e0                                      add r3, r4, r6
006e12ec  04 20 93 e5                                      ldr r2, [r3, #4]
006e12f0  01 80 58 e2                                      subs r8, r8, #1
006e12f4  06 30 87 e0                                      add r3, r7, r6
006e12f8  04 20 83 e5                                      str r2, [r3, #4]
006e12fc  08 60 86 e2                                      add r6, r6, #8
006e1300  ee ff ff 1a                                      bne #0x6e12c0
006e1304  85 71 87 e0                                      add r7, r7, r5, lsl #3
006e1308  07 00 a0 e1                                      mov r0, r7
006e130c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e1380, declared_size=116, range_size=116, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv
; alias: _ZNSt4priv15__copy_backwardIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video11IShaderCodeEEEtLb0ENS3_15sidedcollection16SEmptyPropertiesENSA_12SValueTraitsEE6SEntryESF_iEET0_T_SH_SG_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006e1380  01 00 60 e0                                      rsb r0, r0, r1
006e1384  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e1388  c0 41 a0 e1                                      asr r4, r0, #3
006e138c  00 00 54 e3                                      cmp r4, #0
006e1390  02 80 a0 e1                                      mov r8, r2
006e1394  14 00 00 da                                      ble #0x6e13ec
006e1398  01 60 a0 e1                                      mov r6, r1
006e139c  02 50 a0 e1                                      mov r5, r2
006e13a0  04 70 a0 e1                                      mov r7, r4
006e13a4  08 30 16 e5                                      ldr r3, [r6, #-8]
006e13a8  00 00 53 e3                                      cmp r3, #0
006e13ac  04 20 93 15                                      ldrne r2, [r3, #4]
006e13b0  01 20 82 12                                      addne r2, r2, #1
006e13b4  04 20 83 15                                      strne r2, [r3, #4]
006e13b8  08 00 15 e5                                      ldr r0, [r5, #-8]
006e13bc  08 30 05 e5                                      str r3, [r5, #-8]
006e13c0  00 00 50 e3                                      cmp r0, #0
006e13c4  00 00 00 0a                                      beq #0x6e13cc
006e13c8  6d f0 f0 eb                                      bl #0x31d584
006e13cc  04 30 16 e5                                      ldr r3, [r6, #-4]
006e13d0  01 70 57 e2                                      subs r7, r7, #1
006e13d4  08 60 46 e2                                      sub r6, r6, #8
006e13d8  04 30 05 e5                                      str r3, [r5, #-4]
006e13dc  08 50 45 e2                                      sub r5, r5, #8
006e13e0  ef ff ff 1a                                      bne #0x6e13a4
006e13e4  07 30 e0 e3                                      mvn r3, #7
006e13e8  93 84 28 e0                                      mla r8, r3, r4, r8
006e13ec  08 00 a0 e1                                      mov r0, r8
006e13f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
