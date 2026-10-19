; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e92c0, declared_size=72, range_size=72, mode=arm
; class-group: std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>
; alias: _ZNSt4pairIKN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video8ITextureEEEtLb0ENS6_6detail14texturemanager18STexturePropertiesENS2_15sidedcollection12SValueTraitsEE5SNameENSE_8SIdValueEED1Ev
; demangled: std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>::~pair()
; decoder-mode: arm
005e92c0  10 40 2d e9                                      push {r4, lr}
005e92c4  08 30 80 e2                                      add r3, r0, #8
005e92c8  00 40 a0 e1                                      mov r4, r0
005e92cc  14 00 93 e5                                      ldr r0, [r3, #0x14]
005e92d0  03 00 50 e1                                      cmp r0, r3
005e92d4  02 00 00 0a                                      beq #0x5e92e4
005e92d8  00 00 50 e3                                      cmp r0, #0
005e92dc  00 00 00 0a                                      beq #0x5e92e4
005e92e0  5a 9c f4 eb                                      bl #0x310450
005e92e4  04 30 d4 e5                                      ldrb r3, [r4, #4]
005e92e8  00 00 53 e3                                      cmp r3, #0
005e92ec  03 00 00 0a                                      beq #0x5e9300
005e92f0  00 00 94 e5                                      ldr r0, [r4]
005e92f4  00 00 50 e3                                      cmp r0, #0
005e92f8  00 00 00 0a                                      beq #0x5e9300
005e92fc  6d 93 f4 eb                                      bl #0x30e0b8
005e9300  04 00 a0 e1                                      mov r0, r4
005e9304  10 80 bd e8                                      pop {r4, pc}
