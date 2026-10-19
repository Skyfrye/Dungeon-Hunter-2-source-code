; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7ea8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005d7ea8  00 20 a0 e3                                      mov r2, #0
005d7eac  04 20 80 e5                                      str r2, [r0, #4]
005d7eb0  00 20 80 e5                                      str r2, [r0]
005d7eb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7eb8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005d7eb8  00 20 a0 e3                                      mov r2, #0
005d7ebc  04 20 80 e5                                      str r2, [r0, #4]
005d7ec0  00 20 80 e5                                      str r2, [r0]
005d7ec4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7ec8, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC2ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005d7ec8  00 30 91 e5                                      ldr r3, [r1]
005d7ecc  00 10 a0 e1                                      mov r1, r0
005d7ed0  00 30 80 e5                                      str r3, [r0]
005d7ed4  00 00 53 e3                                      cmp r3, #0
005d7ed8  00 00 93 15                                      ldrne r0, [r3]
005d7edc  01 00 80 12                                      addne r0, r0, #1
005d7ee0  00 00 83 15                                      strne r0, [r3]
005d7ee4  00 30 92 e5                                      ldr r3, [r2]
005d7ee8  01 00 a0 e1                                      mov r0, r1
005d7eec  04 30 81 e5                                      str r3, [r1, #4]
005d7ef0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7ef4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC1ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005d7ef4  00 30 91 e5                                      ldr r3, [r1]
005d7ef8  00 10 a0 e1                                      mov r1, r0
005d7efc  00 30 80 e5                                      str r3, [r0]
005d7f00  00 00 53 e3                                      cmp r3, #0
005d7f04  00 00 93 15                                      ldrne r0, [r3]
005d7f08  01 00 80 12                                      addne r0, r0, #1
005d7f0c  00 00 83 15                                      strne r0, [r3]
005d7f10  00 30 92 e5                                      ldr r3, [r2]
005d7f14  01 00 a0 e1                                      mov r0, r1
005d7f18  04 30 81 e5                                      str r3, [r1, #4]
005d7f1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d8098, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntry5resetEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset()
; decoder-mode: arm
005d8098  30 40 2d e9                                      push {r4, r5, lr}
005d809c  00 30 90 e5                                      ldr r3, [r0]
005d80a0  0c d0 4d e2                                      sub sp, sp, #0xc
005d80a4  00 40 a0 e1                                      mov r4, r0
005d80a8  00 50 a0 e3                                      mov r5, #0
005d80ac  08 00 8d e2                                      add r0, sp, #8
005d80b0  08 30 20 e5                                      str r3, [r0, #-8]!
005d80b4  00 50 84 e5                                      str r5, [r4]
005d80b8  0d 00 a0 e1                                      mov r0, sp
005d80bc  04 50 8d e5                                      str r5, [sp, #4]
005d80c0  7c e8 f5 eb                                      bl #0x3522b8
005d80c4  04 00 8d e2                                      add r0, sp, #4
005d80c8  7a e8 f5 eb                                      bl #0x3522b8
005d80cc  04 50 84 e5                                      str r5, [r4, #4]
005d80d0  0c d0 8d e2                                      add sp, sp, #0xc
005d80d4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005d80d8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntry3setERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005d80d8  30 40 2d e9                                      push {r4, r5, lr}
005d80dc  00 30 91 e5                                      ldr r3, [r1]
005d80e0  0c d0 4d e2                                      sub sp, sp, #0xc
005d80e4  02 50 a0 e1                                      mov r5, r2
005d80e8  04 30 8d e5                                      str r3, [sp, #4]
005d80ec  00 00 53 e3                                      cmp r3, #0
005d80f0  00 20 93 15                                      ldrne r2, [r3]
005d80f4  00 40 a0 e1                                      mov r4, r0
005d80f8  01 20 82 12                                      addne r2, r2, #1
005d80fc  00 20 83 15                                      strne r2, [r3]
005d8100  04 30 9d 15                                      ldrne r3, [sp, #4]
005d8104  00 20 90 e5                                      ldr r2, [r0]
005d8108  08 00 8d e2                                      add r0, sp, #8
005d810c  00 30 84 e5                                      str r3, [r4]
005d8110  04 20 20 e5                                      str r2, [r0, #-4]!
005d8114  67 e8 f5 eb                                      bl #0x3522b8
005d8118  00 30 95 e5                                      ldr r3, [r5]
005d811c  04 30 84 e5                                      str r3, [r4, #4]
005d8120  0c d0 8d e2                                      add sp, sp, #0xc
005d8124  30 80 bd e8                                      pop {r4, r5, pc}
