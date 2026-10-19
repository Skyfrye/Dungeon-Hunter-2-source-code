; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9f84, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5SNameC2EPKc
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005b9f84  00 20 a0 e3                                      mov r2, #0
005b9f88  04 20 c0 e5                                      strb r2, [r0, #4]
005b9f8c  00 10 80 e5                                      str r1, [r0]
005b9f90  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9f94, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5SNameC1EPKc
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005b9f94  00 20 a0 e3                                      mov r2, #0
005b9f98  04 20 c0 e5                                      strb r2, [r0, #4]
005b9f9c  00 10 80 e5                                      str r1, [r0]
005b9fa0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9fa4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5SName10setManagedEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::setManaged() const
; decoder-mode: arm
005b9fa4  01 30 a0 e3                                      mov r3, #1
005b9fa8  04 30 c0 e5                                      strb r3, [r0, #4]
005b9fac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9fb0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5SName3getEv
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::get() const
; decoder-mode: arm
005b9fb0  00 00 90 e5                                      ldr r0, [r0]
005b9fb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba7b0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5SNameltERKSA_
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName const&) const
; decoder-mode: arm
005ba7b0  10 40 2d e9                                      push {r4, lr}
005ba7b4  00 00 90 e5                                      ldr r0, [r0]
005ba7b8  00 10 91 e5                                      ldr r1, [r1]
005ba7bc  d6 4e f5 eb                                      bl #0x30e31c
005ba7c0  a0 0f a0 e1                                      lsr r0, r0, #0x1f
005ba7c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ba7c8, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5SNameD1Ev
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::~SName()
; decoder-mode: arm
005ba7c8  10 40 2d e9                                      push {r4, lr}
005ba7cc  04 30 d0 e5                                      ldrb r3, [r0, #4]
005ba7d0  00 40 a0 e1                                      mov r4, r0
005ba7d4  00 00 53 e3                                      cmp r3, #0
005ba7d8  03 00 00 0a                                      beq #0x5ba7ec
005ba7dc  00 00 90 e5                                      ldr r0, [r0]
005ba7e0  00 00 50 e3                                      cmp r0, #0
005ba7e4  00 00 00 0a                                      beq #0x5ba7ec
005ba7e8  32 4e f5 eb                                      bl #0x30e0b8
005ba7ec  04 00 a0 e1                                      mov r0, r4
005ba7f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ba7f4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE5SNameD2Ev
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SName::~SName()
; decoder-mode: arm
005ba7f4  10 40 2d e9                                      push {r4, lr}
005ba7f8  04 30 d0 e5                                      ldrb r3, [r0, #4]
005ba7fc  00 40 a0 e1                                      mov r4, r0
005ba800  00 00 53 e3                                      cmp r3, #0
005ba804  03 00 00 0a                                      beq #0x5ba818
005ba808  00 00 90 e5                                      ldr r0, [r0]
005ba80c  00 00 50 e3                                      cmp r0, #0
005ba810  00 00 00 0a                                      beq #0x5ba818
005ba814  27 4e f5 eb                                      bl #0x30e0b8
005ba818  04 00 a0 e1                                      mov r0, r4
005ba81c  10 80 bd e8                                      pop {r4, pc}
