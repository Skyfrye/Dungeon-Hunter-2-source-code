; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e08b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE8SIdValueC2Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
006e08b0  b0 10 c0 e1                                      strh r1, [r0]
006e08b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e08b8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE8SIdValueC1Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
006e08b8  b0 10 c0 e1                                      strh r1, [r0]
006e08bc  1e ff 2f e1                                      bx lr
