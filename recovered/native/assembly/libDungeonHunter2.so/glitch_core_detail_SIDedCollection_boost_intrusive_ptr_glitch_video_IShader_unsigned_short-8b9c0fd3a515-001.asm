; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e5490, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE8SIdValueC2Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005e5490  00 20 a0 e3                                      mov r2, #0
005e5494  b4 10 c0 e1                                      strh r1, [r0, #4]
005e5498  00 20 80 e5                                      str r2, [r0]
005e549c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e54a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE8SIdValueC1Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005e54a0  00 20 a0 e3                                      mov r2, #0
005e54a4  b4 10 c0 e1                                      strh r1, [r0, #4]
005e54a8  00 20 80 e5                                      str r2, [r0]
005e54ac  1e ff 2f e1                                      bx lr
