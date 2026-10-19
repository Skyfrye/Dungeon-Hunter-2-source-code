; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b9f64, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE8SIdValueC2Et
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005b9f64  01 20 a0 e3                                      mov r2, #1
005b9f68  b4 10 c0 e1                                      strh r1, [r0, #4]
005b9f6c  00 20 80 e5                                      str r2, [r0]
005b9f70  1e ff 2f e1                                      bx lr

; FUNCTION 0x005b9f74, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionINS_5video19SShaderParameterDefEtLb0ENS3_6detail30globalmaterialparametermanager10SPropetiesENS6_12SValueTraitsEE8SIdValueC1Et
; demangled: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false, glitch::video::detail::globalmaterialparametermanager::SPropeties, glitch::video::detail::globalmaterialparametermanager::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005b9f74  01 20 a0 e3                                      mov r2, #1
005b9f78  b4 10 c0 e1                                      strh r1, [r0, #4]
005b9f7c  00 20 80 e5                                      str r2, [r0]
005b9f80  1e ff 2f e1                                      bx lr
