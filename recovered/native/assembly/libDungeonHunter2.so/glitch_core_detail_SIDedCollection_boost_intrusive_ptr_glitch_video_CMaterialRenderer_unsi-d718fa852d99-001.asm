; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7e34, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE8SIdValueC2Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005d7e34  00 20 a0 e3                                      mov r2, #0
005d7e38  00 20 80 e5                                      str r2, [r0]
005d7e3c  00 20 e0 e3                                      mvn r2, #0
005d7e40  04 20 80 e5                                      str r2, [r0, #4]
005d7e44  11 20 a0 e3                                      mov r2, #0x11
005d7e48  ba 10 c0 e1                                      strh r1, [r0, #0xa]
005d7e4c  b8 20 c0 e1                                      strh r2, [r0, #8]
005d7e50  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7e54, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE8SIdValueC1Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005d7e54  00 20 a0 e3                                      mov r2, #0
005d7e58  00 20 80 e5                                      str r2, [r0]
005d7e5c  00 20 e0 e3                                      mvn r2, #0
005d7e60  04 20 80 e5                                      str r2, [r0, #4]
005d7e64  11 20 a0 e3                                      mov r2, #0x11
005d7e68  ba 10 c0 e1                                      strh r1, [r0, #0xa]
005d7e6c  b8 20 c0 e1                                      strh r2, [r0, #8]
005d7e70  1e ff 2f e1                                      bx lr
