; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e08f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6SEntryC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
006e08f4  00 20 a0 e3                                      mov r2, #0
006e08f8  04 20 80 e5                                      str r2, [r0, #4]
006e08fc  00 20 80 e5                                      str r2, [r0]
006e0900  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0904, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6SEntryC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
006e0904  00 20 a0 e3                                      mov r2, #0
006e0908  04 20 80 e5                                      str r2, [r0, #4]
006e090c  00 20 80 e5                                      str r2, [r0]
006e0910  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0914, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6SEntryC2ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSB_5SNameENSB_8SIdValueEENSF_11_MapTraitsTISL_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::IShaderCode> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
006e0914  00 30 91 e5                                      ldr r3, [r1]
006e0918  00 10 a0 e1                                      mov r1, r0
006e091c  00 30 80 e5                                      str r3, [r0]
006e0920  00 00 53 e3                                      cmp r3, #0
006e0924  04 00 93 15                                      ldrne r0, [r3, #4]
006e0928  01 00 80 12                                      addne r0, r0, #1
006e092c  04 00 83 15                                      strne r0, [r3, #4]
006e0930  00 30 92 e5                                      ldr r3, [r2]
006e0934  01 00 a0 e1                                      mov r0, r1
006e0938  04 30 81 e5                                      str r3, [r1, #4]
006e093c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0940, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6SEntryC1ERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSB_5SNameENSB_8SIdValueEENSF_11_MapTraitsTISL_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::IShaderCode> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
006e0940  00 30 91 e5                                      ldr r3, [r1]
006e0944  00 10 a0 e1                                      mov r1, r0
006e0948  00 30 80 e5                                      str r3, [r0]
006e094c  00 00 53 e3                                      cmp r3, #0
006e0950  04 00 93 15                                      ldrne r0, [r3, #4]
006e0954  01 00 80 12                                      addne r0, r0, #1
006e0958  04 00 83 15                                      strne r0, [r3, #4]
006e095c  00 30 92 e5                                      ldr r3, [r2]
006e0960  01 00 a0 e1                                      mov r0, r1
006e0964  04 30 81 e5                                      str r3, [r1, #4]
006e0968  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e165c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6SEntry3setERKS7_NSt4priv17_Rb_tree_iteratorISt4pairIKNSB_5SNameENSB_8SIdValueEENSF_11_MapTraitsTISL_EEEE
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(boost::intrusive_ptr<glitch::video::IShaderCode> const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
006e165c  70 40 2d e9                                      push {r4, r5, r6, lr}
006e1660  00 30 91 e5                                      ldr r3, [r1]
006e1664  02 50 a0 e1                                      mov r5, r2
006e1668  00 40 a0 e1                                      mov r4, r0
006e166c  00 00 53 e3                                      cmp r3, #0
006e1670  04 20 93 15                                      ldrne r2, [r3, #4]
006e1674  01 20 82 12                                      addne r2, r2, #1
006e1678  04 20 83 15                                      strne r2, [r3, #4]
006e167c  00 00 90 e5                                      ldr r0, [r0]
006e1680  00 30 84 e5                                      str r3, [r4]
006e1684  00 00 50 e3                                      cmp r0, #0
006e1688  00 00 00 0a                                      beq #0x6e1690
006e168c  bc ef f0 eb                                      bl #0x31d584
006e1690  00 30 95 e5                                      ldr r3, [r5]
006e1694  04 30 84 e5                                      str r3, [r4, #4]
006e1698  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e169c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6SEntry5resetEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset()
; decoder-mode: arm
006e169c  10 40 2d e9                                      push {r4, lr}
006e16a0  00 40 a0 e1                                      mov r4, r0
006e16a4  00 00 90 e5                                      ldr r0, [r0]
006e16a8  00 30 a0 e3                                      mov r3, #0
006e16ac  00 30 84 e5                                      str r3, [r4]
006e16b0  03 00 50 e1                                      cmp r0, r3
006e16b4  00 00 00 0a                                      beq #0x6e16bc
006e16b8  b1 ef f0 eb                                      bl #0x31d584
006e16bc  00 30 a0 e3                                      mov r3, #0
006e16c0  04 30 84 e5                                      str r3, [r4, #4]
006e16c4  10 80 bd e8                                      pop {r4, pc}
