; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e8498, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5SNameC2EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005e8498  00 20 a0 e3                                      mov r2, #0
005e849c  04 20 c0 e5                                      strb r2, [r0, #4]
005e84a0  00 10 80 e5                                      str r1, [r0]
005e84a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e84a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5SNameC1EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005e84a8  00 20 a0 e3                                      mov r2, #0
005e84ac  04 20 c0 e5                                      strb r2, [r0, #4]
005e84b0  00 10 80 e5                                      str r1, [r0]
005e84b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e84b8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5SName10setManagedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged() const
; decoder-mode: arm
005e84b8  01 30 a0 e3                                      mov r3, #1
005e84bc  04 30 c0 e5                                      strb r3, [r0, #4]
005e84c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e84c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5SName3getEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::get() const
; decoder-mode: arm
005e84c4  00 00 90 e5                                      ldr r0, [r0]
005e84c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e8544, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5SNameltERKSE_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const&) const
; decoder-mode: arm
005e8544  10 40 2d e9                                      push {r4, lr}
005e8548  00 00 90 e5                                      ldr r0, [r0]
005e854c  00 10 91 e5                                      ldr r1, [r1]
005e8550  71 97 f4 eb                                      bl #0x30e31c
005e8554  a0 0f a0 e1                                      lsr r0, r0, #0x1f
005e8558  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e855c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5SNameD1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
005e855c  10 40 2d e9                                      push {r4, lr}
005e8560  04 30 d0 e5                                      ldrb r3, [r0, #4]
005e8564  00 40 a0 e1                                      mov r4, r0
005e8568  00 00 53 e3                                      cmp r3, #0
005e856c  03 00 00 0a                                      beq #0x5e8580
005e8570  00 00 90 e5                                      ldr r0, [r0]
005e8574  00 00 50 e3                                      cmp r0, #0
005e8578  00 00 00 0a                                      beq #0x5e8580
005e857c  cd 96 f4 eb                                      bl #0x30e0b8
005e8580  04 00 a0 e1                                      mov r0, r4
005e8584  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e8588, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video8ITextureEEEtLb0ENS5_6detail14texturemanager18STexturePropertiesENS1_15sidedcollection12SValueTraitsEE5SNameD2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>, unsigned short, false, glitch::video::detail::texturemanager::STextureProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
005e8588  10 40 2d e9                                      push {r4, lr}
005e858c  04 30 d0 e5                                      ldrb r3, [r0, #4]
005e8590  00 40 a0 e1                                      mov r4, r0
005e8594  00 00 53 e3                                      cmp r3, #0
005e8598  03 00 00 0a                                      beq #0x5e85ac
005e859c  00 00 90 e5                                      ldr r0, [r0]
005e85a0  00 00 50 e3                                      cmp r0, #0
005e85a4  00 00 00 0a                                      beq #0x5e85ac
005e85a8  c2 96 f4 eb                                      bl #0x30e0b8
005e85ac  04 00 a0 e1                                      mov r0, r4
005e85b0  10 80 bd e8                                      pop {r4, pc}
