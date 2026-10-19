; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e54b0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameC2EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005e54b0  00 20 a0 e3                                      mov r2, #0
005e54b4  04 20 c0 e5                                      strb r2, [r0, #4]
005e54b8  00 10 80 e5                                      str r1, [r0]
005e54bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e54c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameC1EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005e54c0  00 20 a0 e3                                      mov r2, #0
005e54c4  04 20 c0 e5                                      strb r2, [r0, #4]
005e54c8  00 10 80 e5                                      str r1, [r0]
005e54cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e54d0, declared_size=12, range_size=12, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5SName10setManagedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged() const
; decoder-mode: arm
005e54d0  01 30 a0 e3                                      mov r3, #1
005e54d4  04 30 c0 e5                                      strb r3, [r0, #4]
005e54d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e54dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5SName3getEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::get() const
; decoder-mode: arm
005e54dc  00 00 90 e5                                      ldr r0, [r0]
005e54e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e555c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameltERKSE_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const&) const
; decoder-mode: arm
005e555c  10 40 2d e9                                      push {r4, lr}
005e5560  00 00 90 e5                                      ldr r0, [r0]
005e5564  00 10 91 e5                                      ldr r1, [r1]
005e5568  6b a3 f4 eb                                      bl #0x30e31c
005e556c  a0 0f a0 e1                                      lsr r0, r0, #0x1f
005e5570  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e5574, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameD1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
005e5574  10 40 2d e9                                      push {r4, lr}
005e5578  04 30 d0 e5                                      ldrb r3, [r0, #4]
005e557c  00 40 a0 e1                                      mov r4, r0
005e5580  00 00 53 e3                                      cmp r3, #0
005e5584  03 00 00 0a                                      beq #0x5e5598
005e5588  00 00 90 e5                                      ldr r0, [r0]
005e558c  00 00 50 e3                                      cmp r0, #0
005e5590  00 00 00 0a                                      beq #0x5e5598
005e5594  c7 a2 f4 eb                                      bl #0x30e0b8
005e5598  04 00 a0 e1                                      mov r0, r4
005e559c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e55a0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video7IShaderEEEtLb0ENS5_6detail13shadermanager17SShaderPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameD2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
005e55a0  10 40 2d e9                                      push {r4, lr}
005e55a4  04 30 d0 e5                                      ldrb r3, [r0, #4]
005e55a8  00 40 a0 e1                                      mov r4, r0
005e55ac  00 00 53 e3                                      cmp r3, #0
005e55b0  03 00 00 0a                                      beq #0x5e55c4
005e55b4  00 00 90 e5                                      ldr r0, [r0]
005e55b8  00 00 50 e3                                      cmp r0, #0
005e55bc  00 00 00 0a                                      beq #0x5e55c4
005e55c0  bc a2 f4 eb                                      bl #0x30e0b8
005e55c4  04 00 a0 e1                                      mov r0, r4
005e55c8  10 80 bd e8                                      pop {r4, pc}
