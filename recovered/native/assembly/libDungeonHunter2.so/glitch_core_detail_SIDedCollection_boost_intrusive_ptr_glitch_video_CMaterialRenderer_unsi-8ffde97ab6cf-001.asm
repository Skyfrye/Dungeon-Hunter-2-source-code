; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d8128, declared_size=140, range_size=140, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video17CMaterialRendererEEEtLb0ENS7_6detail23materialrenderermanager11SPropertiesENS3_15sidedcollection12SValueTraitsEE6SEntryESH_iEET0_T_SJ_SI_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005d8128  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005d812c  01 10 60 e0                                      rsb r1, r0, r1
005d8130  c1 51 a0 e1                                      asr r5, r1, #3
005d8134  00 00 55 e3                                      cmp r5, #0
005d8138  08 d0 4d e2                                      sub sp, sp, #8
005d813c  00 40 a0 e1                                      mov r4, r0
005d8140  02 a0 a0 e1                                      mov sl, r2
005d8144  17 00 00 da                                      ble #0x5d81a8
005d8148  05 80 a0 e1                                      mov r8, r5
005d814c  00 60 a0 e3                                      mov r6, #0
005d8150  04 90 8d e2                                      add sb, sp, #4
005d8154  06 30 94 e7                                      ldr r3, [r4, r6]
005d8158  0a 70 a0 e1                                      mov r7, sl
005d815c  09 00 a0 e1                                      mov r0, sb
005d8160  00 00 53 e3                                      cmp r3, #0
005d8164  04 30 8d e5                                      str r3, [sp, #4]
005d8168  00 20 93 15                                      ldrne r2, [r3]
005d816c  03 20 a0 01                                      moveq r2, r3
005d8170  01 20 82 12                                      addne r2, r2, #1
005d8174  00 20 83 15                                      strne r2, [r3]
005d8178  04 20 9d 15                                      ldrne r2, [sp, #4]
005d817c  06 30 9a e7                                      ldr r3, [sl, r6]
005d8180  06 20 a7 e7                                      str r2, [r7, r6]!
005d8184  04 30 8d e5                                      str r3, [sp, #4]
005d8188  4a e8 f5 eb                                      bl #0x3522b8
005d818c  06 30 84 e0                                      add r3, r4, r6
005d8190  04 30 93 e5                                      ldr r3, [r3, #4]
005d8194  01 80 58 e2                                      subs r8, r8, #1
005d8198  08 60 86 e2                                      add r6, r6, #8
005d819c  04 30 87 e5                                      str r3, [r7, #4]
005d81a0  eb ff ff 1a                                      bne #0x5d8154
005d81a4  85 a1 8a e0                                      add sl, sl, r5, lsl #3
005d81a8  0a 00 a0 e1                                      mov r0, sl
005d81ac  08 d0 8d e2                                      add sp, sp, #8
005d81b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005d81b4, declared_size=136, range_size=136, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv
; alias: _ZNSt4priv15__copy_backwardIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video17CMaterialRendererEEEtLb0ENS7_6detail23materialrenderermanager11SPropertiesENS3_15sidedcollection12SValueTraitsEE6SEntryESH_iEET0_T_SJ_SI_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry* std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005d81b4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005d81b8  01 00 60 e0                                      rsb r0, r0, r1
005d81bc  c0 41 a0 e1                                      asr r4, r0, #3
005d81c0  00 00 54 e3                                      cmp r4, #0
005d81c4  0c d0 4d e2                                      sub sp, sp, #0xc
005d81c8  02 a0 a0 e1                                      mov sl, r2
005d81cc  17 00 00 da                                      ble #0x5d8230
005d81d0  01 60 a0 e1                                      mov r6, r1
005d81d4  02 50 a0 e1                                      mov r5, r2
005d81d8  04 70 a0 e1                                      mov r7, r4
005d81dc  04 80 8d e2                                      add r8, sp, #4
005d81e0  08 20 16 e5                                      ldr r2, [r6, #-8]
005d81e4  08 00 a0 e1                                      mov r0, r8
005d81e8  04 20 8d e5                                      str r2, [sp, #4]
005d81ec  00 00 52 e3                                      cmp r2, #0
005d81f0  00 30 92 15                                      ldrne r3, [r2]
005d81f4  01 30 83 12                                      addne r3, r3, #1
005d81f8  00 30 82 15                                      strne r3, [r2]
005d81fc  08 30 15 e5                                      ldr r3, [r5, #-8]
005d8200  04 20 9d 15                                      ldrne r2, [sp, #4]
005d8204  04 30 8d e5                                      str r3, [sp, #4]
005d8208  08 20 05 e5                                      str r2, [r5, #-8]
005d820c  29 e8 f5 eb                                      bl #0x3522b8
005d8210  04 30 16 e5                                      ldr r3, [r6, #-4]
005d8214  01 70 57 e2                                      subs r7, r7, #1
005d8218  08 60 46 e2                                      sub r6, r6, #8
005d821c  04 30 05 e5                                      str r3, [r5, #-4]
005d8220  08 50 45 e2                                      sub r5, r5, #8
005d8224  ed ff ff 1a                                      bne #0x5d81e0
005d8228  07 30 e0 e3                                      mvn r3, #7
005d822c  93 a4 2a e0                                      mla sl, r3, r4, sl
005d8230  0a 00 a0 e1                                      mov r0, sl
005d8234  0c d0 8d e2                                      add sp, sp, #0xc
005d8238  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
