; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d7e74, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameC2EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005d7e74  00 20 a0 e3                                      mov r2, #0
005d7e78  04 20 c0 e5                                      strb r2, [r0, #4]
005d7e7c  00 10 80 e5                                      str r1, [r0]
005d7e80  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7e84, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameC1EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
005d7e84  00 20 a0 e3                                      mov r2, #0
005d7e88  04 20 c0 e5                                      strb r2, [r0, #4]
005d7e8c  00 10 80 e5                                      str r1, [r0]
005d7e90  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7e94, declared_size=12, range_size=12, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5SName10setManagedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged() const
; decoder-mode: arm
005d7e94  01 30 a0 e3                                      mov r3, #1
005d7e98  04 30 c0 e5                                      strb r3, [r0, #4]
005d7e9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d7ea0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5SName3getEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::get() const
; decoder-mode: arm
005d7ea0  00 00 90 e5                                      ldr r0, [r0]
005d7ea4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005d84f0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameltERKSE_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const&) const
; decoder-mode: arm
005d84f0  10 40 2d e9                                      push {r4, lr}
005d84f4  00 00 90 e5                                      ldr r0, [r0]
005d84f8  00 10 91 e5                                      ldr r1, [r1]
005d84fc  86 d7 f4 eb                                      bl #0x30e31c
005d8500  a0 0f a0 e1                                      lsr r0, r0, #0x1f
005d8504  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d8578, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameD1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
005d8578  10 40 2d e9                                      push {r4, lr}
005d857c  04 30 d0 e5                                      ldrb r3, [r0, #4]
005d8580  00 40 a0 e1                                      mov r4, r0
005d8584  00 00 53 e3                                      cmp r3, #0
005d8588  03 00 00 0a                                      beq #0x5d859c
005d858c  00 00 90 e5                                      ldr r0, [r0]
005d8590  00 00 50 e3                                      cmp r0, #0
005d8594  00 00 00 0a                                      beq #0x5d859c
005d8598  c6 d6 f4 eb                                      bl #0x30e0b8
005d859c  04 00 a0 e1                                      mov r0, r4
005d85a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d85a4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtLb0ENS5_6detail23materialrenderermanager11SPropertiesENS1_15sidedcollection12SValueTraitsEE5SNameD2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
005d85a4  10 40 2d e9                                      push {r4, lr}
005d85a8  04 30 d0 e5                                      ldrb r3, [r0, #4]
005d85ac  00 40 a0 e1                                      mov r4, r0
005d85b0  00 00 53 e3                                      cmp r3, #0
005d85b4  03 00 00 0a                                      beq #0x5d85c8
005d85b8  00 00 90 e5                                      ldr r0, [r0]
005d85bc  00 00 50 e3                                      cmp r0, #0
005d85c0  00 00 00 0a                                      beq #0x5d85c8
005d85c4  bb d6 f4 eb                                      bl #0x30e0b8
005d85c8  04 00 a0 e1                                      mov r0, r4
005d85cc  10 80 bd e8                                      pop {r4, pc}
