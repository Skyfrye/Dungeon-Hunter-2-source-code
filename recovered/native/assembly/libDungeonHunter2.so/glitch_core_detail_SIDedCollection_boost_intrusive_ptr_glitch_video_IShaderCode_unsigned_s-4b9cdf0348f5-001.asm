; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e08c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5SNameC2EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
006e08c0  00 20 a0 e3                                      mov r2, #0
006e08c4  04 20 c0 e5                                      strb r2, [r0, #4]
006e08c8  00 10 80 e5                                      str r1, [r0]
006e08cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e08d0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5SNameC1EPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*)
; decoder-mode: arm
006e08d0  00 20 a0 e3                                      mov r2, #0
006e08d4  04 20 c0 e5                                      strb r2, [r0, #4]
006e08d8  00 10 80 e5                                      str r1, [r0]
006e08dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e08e0, declared_size=12, range_size=12, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5SName10setManagedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged() const
; decoder-mode: arm
006e08e0  01 30 a0 e3                                      mov r3, #1
006e08e4  04 30 c0 e5                                      strb r3, [r0, #4]
006e08e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e08ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5SName3getEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::get() const
; decoder-mode: arm
006e08ec  00 00 90 e5                                      ldr r0, [r0]
006e08f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e096c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5SNameltERKSC_
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const&) const
; decoder-mode: arm
006e096c  10 40 2d e9                                      push {r4, lr}
006e0970  00 00 90 e5                                      ldr r0, [r0]
006e0974  00 10 91 e5                                      ldr r1, [r1]
006e0978  67 b6 f0 eb                                      bl #0x30e31c
006e097c  a0 0f a0 e1                                      lsr r0, r0, #0x1f
006e0980  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e0984, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5SNameD1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
006e0984  10 40 2d e9                                      push {r4, lr}
006e0988  04 30 d0 e5                                      ldrb r3, [r0, #4]
006e098c  00 40 a0 e1                                      mov r4, r0
006e0990  00 00 53 e3                                      cmp r3, #0
006e0994  03 00 00 0a                                      beq #0x6e09a8
006e0998  00 00 90 e5                                      ldr r0, [r0]
006e099c  00 00 50 e3                                      cmp r0, #0
006e09a0  00 00 00 0a                                      beq #0x6e09a8
006e09a4  c3 b5 f0 eb                                      bl #0x30e0b8
006e09a8  04 00 a0 e1                                      mov r0, r4
006e09ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e09b0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5SNameD2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName()
; decoder-mode: arm
006e09b0  10 40 2d e9                                      push {r4, lr}
006e09b4  04 30 d0 e5                                      ldrb r3, [r0, #4]
006e09b8  00 40 a0 e1                                      mov r4, r0
006e09bc  00 00 53 e3                                      cmp r3, #0
006e09c0  03 00 00 0a                                      beq #0x6e09d4
006e09c4  00 00 90 e5                                      ldr r0, [r0]
006e09c8  00 00 50 e3                                      cmp r0, #0
006e09cc  00 00 00 0a                                      beq #0x6e09d4
006e09d0  b8 b5 f0 eb                                      bl #0x30e0b8
006e09d4  04 00 a0 e1                                      mov r0, r4
006e09d8  10 80 bd e8                                      pop {r4, pc}
