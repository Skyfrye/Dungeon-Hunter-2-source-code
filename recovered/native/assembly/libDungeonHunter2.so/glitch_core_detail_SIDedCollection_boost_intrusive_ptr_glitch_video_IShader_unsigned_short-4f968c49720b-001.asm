; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e54e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005e54e4  00 20 a0 e3                                      mov r2, #0
005e54e8  04 20 80 e5                                      str r2, [r0, #4]
005e54ec  00 20 80 e5                                      str r2, [r0]
005e54f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e54f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005e54f4  00 20 a0 e3                                      mov r2, #0
005e54f8  04 20 80 e5                                      str r2, [r0, #4]
005e54fc  00 20 80 e5                                      str r2, [r0]
005e5500  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e5504, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC2ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::IShader> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e5504  00 30 91 e5                                      ldr r3, [r1]
005e5508  00 10 a0 e1                                      mov r1, r0
005e550c  00 30 80 e5                                      str r3, [r0]
005e5510  00 00 53 e3                                      cmp r3, #0
005e5514  04 00 93 15                                      ldrne r0, [r3, #4]
005e5518  01 00 80 12                                      addne r0, r0, #1
005e551c  04 00 83 15                                      strne r0, [r3, #4]
005e5520  00 30 92 e5                                      ldr r3, [r2]
005e5524  01 00 a0 e1                                      mov r0, r1
005e5528  04 30 81 e5                                      str r3, [r1, #4]
005e552c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e5530, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntryC1ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::IShader> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e5530  00 30 91 e5                                      ldr r3, [r1]
005e5534  00 10 a0 e1                                      mov r1, r0
005e5538  00 30 80 e5                                      str r3, [r0]
005e553c  00 00 53 e3                                      cmp r3, #0
005e5540  04 00 93 15                                      ldrne r0, [r3, #4]
005e5544  01 00 80 12                                      addne r0, r0, #1
005e5548  04 00 83 15                                      strne r0, [r3, #4]
005e554c  00 30 92 e5                                      ldr r3, [r2]
005e5550  01 00 a0 e1                                      mov r0, r1
005e5554  04 30 81 e5                                      str r3, [r1, #4]
005e5558  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e60a4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntry3setERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSD_5SNameENSD_8SIdValueEENSH_11_MapTraitsTISN_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(boost::intrusive_ptr<glitch::video::IShader> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005e60a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005e60a8  00 30 91 e5                                      ldr r3, [r1]
005e60ac  02 50 a0 e1                                      mov r5, r2
005e60b0  00 40 a0 e1                                      mov r4, r0
005e60b4  00 00 53 e3                                      cmp r3, #0
005e60b8  04 20 93 15                                      ldrne r2, [r3, #4]
005e60bc  01 20 82 12                                      addne r2, r2, #1
005e60c0  04 20 83 15                                      strne r2, [r3, #4]
005e60c4  00 00 90 e5                                      ldr r0, [r0]
005e60c8  00 30 84 e5                                      str r3, [r4]
005e60cc  00 00 50 e3                                      cmp r0, #0
005e60d0  00 00 00 0a                                      beq #0x5e60d8
005e60d4  2a dd f4 eb                                      bl #0x31d584
005e60d8  00 30 95 e5                                      ldr r3, [r5]
005e60dc  04 30 84 e5                                      str r3, [r4, #4]
005e60e0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e60e4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE6SEntry5resetEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset()
; decoder-mode: arm
005e60e4  10 40 2d e9                                      push {r4, lr}
005e60e8  00 40 a0 e1                                      mov r4, r0
005e60ec  00 00 90 e5                                      ldr r0, [r0]
005e60f0  00 30 a0 e3                                      mov r3, #0
005e60f4  00 30 84 e5                                      str r3, [r4]
005e60f8  03 00 50 e1                                      cmp r0, r3
005e60fc  00 00 00 0a                                      beq #0x5e6104
005e6100  1f dd f4 eb                                      bl #0x31d584
005e6104  00 30 a0 e3                                      mov r3, #0
005e6108  04 30 84 e5                                      str r3, [r4, #4]
005e610c  10 80 bd e8                                      pop {r4, pc}
