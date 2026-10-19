; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9fb8, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6SEntryC2Ev
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005b9fb8  00 10 a0 e3                                      mov r1, #0
005b9fbc  00 20 e0 e3                                      mvn r2, #0
005b9fc0  10 10 80 e5                                      str r1, [r0, #0x10]
005b9fc4  00 10 80 e5                                      str r1, [r0]
005b9fc8  ff 10 a0 e3                                      mov r1, #0xff
005b9fcc  0c 20 80 e5                                      str r2, [r0, #0xc]
005b9fd0  b4 10 c0 e1                                      strh r1, [r0, #4]
005b9fd4  06 20 c0 e5                                      strb r2, [r0, #6]
005b9fd8  07 20 c0 e5                                      strb r2, [r0, #7]
005b9fdc  08 20 80 e5                                      str r2, [r0, #8]
005b9fe0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9fe4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6SEntryC1Ev
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry()
; decoder-mode: arm
005b9fe4  00 10 a0 e3                                      mov r1, #0
005b9fe8  00 20 e0 e3                                      mvn r2, #0
005b9fec  10 10 80 e5                                      str r1, [r0, #0x10]
005b9ff0  00 10 80 e5                                      str r1, [r0]
005b9ff4  ff 10 a0 e3                                      mov r1, #0xff
005b9ff8  0c 20 80 e5                                      str r2, [r0, #0xc]
005b9ffc  b4 10 c0 e1                                      strh r1, [r0, #4]
005ba000  06 20 c0 e5                                      strb r2, [r0, #6]
005ba004  07 20 c0 e5                                      strb r2, [r0, #7]
005ba008  08 20 80 e5                                      str r2, [r0, #8]
005ba00c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba010, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6SEntryC2ERKS4_NSt4priv17_Rb_tree_iteratorISt4pairIKNS9_5SNameENS9_8SIdValueEENSD_11_MapTraitsTISJ_EEEE
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(glitch::video::SShaderParameterDef const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005ba010  00 c0 91 e5                                      ldr ip, [r1]
005ba014  00 30 a0 e1                                      mov r3, r0
005ba018  00 c0 80 e5                                      str ip, [r0]
005ba01c  00 00 5c e3                                      cmp ip, #0
005ba020  00 00 9c 15                                      ldrne r0, [ip]
005ba024  01 00 80 12                                      addne r0, r0, #1
005ba028  00 00 8c 15                                      strne r0, [ip]
005ba02c  b4 00 d1 e1                                      ldrh r0, [r1, #4]
005ba030  b4 00 c3 e1                                      strh r0, [r3, #4]
005ba034  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005ba038  03 00 a0 e1                                      mov r0, r3
005ba03c  06 c0 c3 e5                                      strb ip, [r3, #6]
005ba040  07 c0 d1 e5                                      ldrb ip, [r1, #7]
005ba044  07 c0 c3 e5                                      strb ip, [r3, #7]
005ba048  08 c0 91 e5                                      ldr ip, [r1, #8]
005ba04c  08 c0 83 e5                                      str ip, [r3, #8]
005ba050  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ba054  0c 10 83 e5                                      str r1, [r3, #0xc]
005ba058  00 20 92 e5                                      ldr r2, [r2]
005ba05c  10 20 83 e5                                      str r2, [r3, #0x10]
005ba060  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba064, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6SEntryC1ERKS4_NSt4priv17_Rb_tree_iteratorISt4pairIKNS9_5SNameENS9_8SIdValueEENSD_11_MapTraitsTISJ_EEEE
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::SEntry(glitch::video::SShaderParameterDef const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005ba064  00 c0 91 e5                                      ldr ip, [r1]
005ba068  00 30 a0 e1                                      mov r3, r0
005ba06c  00 c0 80 e5                                      str ip, [r0]
005ba070  00 00 5c e3                                      cmp ip, #0
005ba074  00 00 9c 15                                      ldrne r0, [ip]
005ba078  01 00 80 12                                      addne r0, r0, #1
005ba07c  00 00 8c 15                                      strne r0, [ip]
005ba080  b4 00 d1 e1                                      ldrh r0, [r1, #4]
005ba084  b4 00 c3 e1                                      strh r0, [r3, #4]
005ba088  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005ba08c  03 00 a0 e1                                      mov r0, r3
005ba090  06 c0 c3 e5                                      strb ip, [r3, #6]
005ba094  07 c0 d1 e5                                      ldrb ip, [r1, #7]
005ba098  07 c0 c3 e5                                      strb ip, [r3, #7]
005ba09c  08 c0 91 e5                                      ldr ip, [r1, #8]
005ba0a0  08 c0 83 e5                                      str ip, [r3, #8]
005ba0a4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005ba0a8  0c 10 83 e5                                      str r1, [r3, #0xc]
005ba0ac  00 20 92 e5                                      ldr r2, [r2]
005ba0b0  10 20 83 e5                                      str r2, [r3, #0x10]
005ba0b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005bc5c4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6SEntry5resetEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::reset()
; decoder-mode: arm
005bc5c4  10 40 2d e9                                      push {r4, lr}
005bc5c8  00 40 a0 e1                                      mov r4, r0
005bc5cc  00 00 90 e5                                      ldr r0, [r0]
005bc5d0  00 30 a0 e3                                      mov r3, #0
005bc5d4  00 30 84 e5                                      str r3, [r4]
005bc5d8  03 00 50 e1                                      cmp r0, r3
005bc5dc  05 00 00 0a                                      beq #0x5bc5f8
005bc5e0  00 30 90 e5                                      ldr r3, [r0]
005bc5e4  01 30 43 e2                                      sub r3, r3, #1
005bc5e8  00 00 53 e3                                      cmp r3, #0
005bc5ec  00 30 80 e5                                      str r3, [r0]
005bc5f0  00 00 00 1a                                      bne #0x5bc5f8
005bc5f4  e8 a1 03 eb                                      bl #0x6a4d9c
005bc5f8  00 20 a0 e3                                      mov r2, #0
005bc5fc  00 30 e0 e3                                      mvn r3, #0
005bc600  10 20 84 e5                                      str r2, [r4, #0x10]
005bc604  ff 20 a0 e3                                      mov r2, #0xff
005bc608  0c 30 84 e5                                      str r3, [r4, #0xc]
005bc60c  b4 20 c4 e1                                      strh r2, [r4, #4]
005bc610  06 30 c4 e5                                      strb r3, [r4, #6]
005bc614  07 30 c4 e5                                      strb r3, [r4, #7]
005bc618  08 30 84 e5                                      str r3, [r4, #8]
005bc61c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005bc620, declared_size=128, range_size=128, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE6SEntry3setERKS4_NSt4priv17_Rb_tree_iteratorISt4pairIKNS9_5SNameENS9_8SIdValueEENSD_11_MapTraitsTISJ_EEEE
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SEntry::set(glitch::video::SShaderParameterDef const&, std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
005bc620  70 40 2d e9                                      push {r4, r5, r6, lr}
005bc624  00 30 91 e5                                      ldr r3, [r1]
005bc628  02 60 a0 e1                                      mov r6, r2
005bc62c  00 40 a0 e1                                      mov r4, r0
005bc630  00 00 53 e3                                      cmp r3, #0
005bc634  00 20 93 15                                      ldrne r2, [r3]
005bc638  01 50 a0 e1                                      mov r5, r1
005bc63c  01 20 82 12                                      addne r2, r2, #1
005bc640  00 20 83 15                                      strne r2, [r3]
005bc644  00 00 90 e5                                      ldr r0, [r0]
005bc648  00 30 84 e5                                      str r3, [r4]
005bc64c  00 00 50 e3                                      cmp r0, #0
005bc650  05 00 00 0a                                      beq #0x5bc66c
005bc654  00 30 90 e5                                      ldr r3, [r0]
005bc658  01 30 43 e2                                      sub r3, r3, #1
005bc65c  00 00 53 e3                                      cmp r3, #0
005bc660  00 30 80 e5                                      str r3, [r0]
005bc664  00 00 00 1a                                      bne #0x5bc66c
005bc668  cb a1 03 eb                                      bl #0x6a4d9c
005bc66c  b4 30 d5 e1                                      ldrh r3, [r5, #4]
005bc670  b4 30 c4 e1                                      strh r3, [r4, #4]
005bc674  06 30 d5 e5                                      ldrb r3, [r5, #6]
005bc678  06 30 c4 e5                                      strb r3, [r4, #6]
005bc67c  07 30 d5 e5                                      ldrb r3, [r5, #7]
005bc680  07 30 c4 e5                                      strb r3, [r4, #7]
005bc684  08 30 95 e5                                      ldr r3, [r5, #8]
005bc688  08 30 84 e5                                      str r3, [r4, #8]
005bc68c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005bc690  0c 30 84 e5                                      str r3, [r4, #0xc]
005bc694  00 30 96 e5                                      ldr r3, [r6]
005bc698  10 30 84 e5                                      str r3, [r4, #0x10]
005bc69c  70 80 bd e8                                      pop {r4, r5, r6, pc}
