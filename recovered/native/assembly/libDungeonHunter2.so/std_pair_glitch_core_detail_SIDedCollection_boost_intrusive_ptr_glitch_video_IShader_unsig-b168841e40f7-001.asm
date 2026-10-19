; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e5bec, declared_size=60, range_size=60, mode=arm
; class-group: std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>
; alias: _ZNSt4pairIKN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video7IShaderEEEtLb0ENS6_6detail13shadermanager17SShaderPropertiesENS2_15sidedcollection12SValueTraitsEE5SNameENSE_8SIdValueEED1Ev
; demangled: std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>::~pair()
; decoder-mode: arm
005e5bec  10 40 2d e9                                      push {r4, lr}
005e5bf0  00 40 a0 e1                                      mov r4, r0
005e5bf4  08 00 90 e5                                      ldr r0, [r0, #8]
005e5bf8  00 00 50 e3                                      cmp r0, #0
005e5bfc  00 00 00 0a                                      beq #0x5e5c04
005e5c00  5f de f4 eb                                      bl #0x31d584
005e5c04  04 30 d4 e5                                      ldrb r3, [r4, #4]
005e5c08  00 00 53 e3                                      cmp r3, #0
005e5c0c  03 00 00 0a                                      beq #0x5e5c20
005e5c10  00 00 94 e5                                      ldr r0, [r4]
005e5c14  00 00 50 e3                                      cmp r0, #0
005e5c18  00 00 00 0a                                      beq #0x5e5c20
005e5c1c  25 a1 f4 eb                                      bl #0x30e0b8
005e5c20  04 00 a0 e1                                      mov r0, r4
005e5c24  10 80 bd e8                                      pop {r4, pc}
