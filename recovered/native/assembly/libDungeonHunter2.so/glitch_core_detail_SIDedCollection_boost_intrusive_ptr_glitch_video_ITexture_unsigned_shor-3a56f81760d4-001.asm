; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e85b4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE8SIdValueC1Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005e85b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005e85b8  00 40 a0 e1                                      mov r4, r0
005e85bc  01 50 a0 e1                                      mov r5, r1
005e85c0  10 00 84 e5                                      str r0, [r4, #0x10]
005e85c4  14 00 84 e5                                      str r0, [r4, #0x14]
005e85c8  10 10 a0 e3                                      mov r1, #0x10
005e85cc  f5 e0 f4 eb                                      bl #0x3209a8
005e85d0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e85d4  00 20 a0 e3                                      mov r2, #0
005e85d8  04 00 a0 e1                                      mov r0, r4
005e85dc  00 20 c3 e5                                      strb r2, [r3]
005e85e0  27 30 a0 e3                                      mov r3, #0x27
005e85e4  18 30 84 e5                                      str r3, [r4, #0x18]
005e85e8  bc 51 c4 e1                                      strh r5, [r4, #0x1c]
005e85ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e85f0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE8SIdValueC2Et
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(unsigned short)
; decoder-mode: arm
005e85f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005e85f4  00 40 a0 e1                                      mov r4, r0
005e85f8  01 50 a0 e1                                      mov r5, r1
005e85fc  10 00 84 e5                                      str r0, [r4, #0x10]
005e8600  14 00 84 e5                                      str r0, [r4, #0x14]
005e8604  10 10 a0 e3                                      mov r1, #0x10
005e8608  e6 e0 f4 eb                                      bl #0x3209a8
005e860c  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e8610  00 20 a0 e3                                      mov r2, #0
005e8614  04 00 a0 e1                                      mov r0, r4
005e8618  00 20 c3 e5                                      strb r2, [r3]
005e861c  27 30 a0 e3                                      mov r3, #0x27
005e8620  18 30 84 e5                                      str r3, [r4, #0x18]
005e8624  bc 51 c4 e1                                      strh r5, [r4, #0x1c]
005e8628  70 80 bd e8                                      pop {r4, r5, r6, pc}
