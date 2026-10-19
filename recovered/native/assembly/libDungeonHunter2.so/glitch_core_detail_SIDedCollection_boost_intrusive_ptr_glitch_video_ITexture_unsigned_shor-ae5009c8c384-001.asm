; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e84cc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005e84cc  00 20 a0 e3                                      mov r2, #0
005e84d0  04 20 80 e5                                      str r2, [r0, #4]
005e84d4  00 20 80 e5                                      str r2, [r0]
005e84d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e84dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005e84dc  00 20 a0 e3                                      mov r2, #0
005e84e0  04 20 80 e5                                      str r2, [r0, #4]
005e84e4  00 20 80 e5                                      str r2, [r0]
005e84e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e84ec, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC2ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::ITexture> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e84ec  00 30 91 e5                                      ldr r3, [r1]
005e84f0  00 10 a0 e1                                      mov r1, r0
005e84f4  00 30 80 e5                                      str r3, [r0]
005e84f8  00 00 53 e3                                      cmp r3, #0
005e84fc  04 00 93 15                                      ldrne r0, [r3, #4]
005e8500  01 00 80 12                                      addne r0, r0, #1
005e8504  04 00 83 15                                      strne r0, [r3, #4]
005e8508  00 30 92 e5                                      ldr r3, [r2]
005e850c  01 00 a0 e1                                      mov r0, r1
005e8510  04 30 81 e5                                      str r3, [r1, #4]
005e8514  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e8518, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC1ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::ITexture> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e8518  00 30 91 e5                                      ldr r3, [r1]
005e851c  00 10 a0 e1                                      mov r1, r0
005e8520  00 30 80 e5                                      str r3, [r0]
005e8524  00 00 53 e3                                      cmp r3, #0
005e8528  04 00 93 15                                      ldrne r0, [r3, #4]
005e852c  01 00 80 12                                      addne r0, r0, #1
005e8530  04 00 83 15                                      strne r0, [r3, #4]
005e8534  00 30 92 e5                                      ldr r3, [r2]
005e8538  01 00 a0 e1                                      mov r0, r1
005e853c  04 30 81 e5                                      str r3, [r1, #4]
005e8540  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e9e10, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6SEntry3setERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(boost::intrusive_ptr<glitch::video::ITexture> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e9e10  70 40 2d e9                                      push {r4, r5, r6, lr}
005e9e14  00 30 91 e5                                      ldr r3, [r1]
005e9e18  02 50 a0 e1                                      mov r5, r2
005e9e1c  00 40 a0 e1                                      mov r4, r0
005e9e20  00 00 53 e3                                      cmp r3, #0
005e9e24  04 20 93 15                                      ldrne r2, [r3, #4]
005e9e28  01 20 82 12                                      addne r2, r2, #1
005e9e2c  04 20 83 15                                      strne r2, [r3, #4]
005e9e30  00 00 90 e5                                      ldr r0, [r0]
005e9e34  00 30 84 e5                                      str r3, [r4]
005e9e38  00 00 50 e3                                      cmp r0, #0
005e9e3c  00 00 00 0a                                      beq #0x5e9e44
005e9e40  cf cd f4 eb                                      bl #0x31d584
005e9e44  00 30 95 e5                                      ldr r3, [r5]
005e9e48  04 30 84 e5                                      str r3, [r4, #4]
005e9e4c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e9e50, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE6SEntry5resetEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset()
; decoder-mode: arm
005e9e50  10 40 2d e9                                      push {r4, lr}
005e9e54  00 40 a0 e1                                      mov r4, r0
005e9e58  00 00 90 e5                                      ldr r0, [r0]
005e9e5c  00 30 a0 e3                                      mov r3, #0
005e9e60  00 30 84 e5                                      str r3, [r4]
005e9e64  03 00 50 e1                                      cmp r0, r3
005e9e68  00 00 00 0a                                      beq #0x5e9e70
005e9e6c  c4 cd f4 eb                                      bl #0x31d584
005e9e70  00 30 a0 e3                                      mov r3, #0
005e9e74  04 30 84 e5                                      str r3, [r4, #4]
005e9e78  10 80 bd e8                                      pop {r4, pc}
