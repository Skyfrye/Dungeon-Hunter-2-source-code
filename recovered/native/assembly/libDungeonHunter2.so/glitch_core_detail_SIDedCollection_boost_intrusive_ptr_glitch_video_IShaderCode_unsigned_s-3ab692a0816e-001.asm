; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e0788, declared_size=56, range_size=56, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE3getEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::get(unsigned short) const
; decoder-mode: arm
006e0788  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
006e078c  18 20 90 e5                                      ldr r2, [r0, #0x18]
006e0790  20 30 9f e5                                      ldr r3, [pc, #0x20]
006e0794  0c c0 62 e0                                      rsb ip, r2, ip
006e0798  cc 01 51 e1                                      cmp r1, ip, asr #3
006e079c  03 30 8f e0                                      add r3, pc, r3
006e07a0  01 00 00 2a                                      bhs #0x6e07ac
006e07a4  81 01 82 e0                                      add r0, r2, r1, lsl #3
006e07a8  1e ff 2f e1                                      bx lr
006e07ac  08 20 9f e5                                      ldr r2, [pc, #8]
006e07b0  02 00 93 e7                                      ldr r0, [r3, r2]
006e07b4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006e07b8  f4 42 2b 00 4c 19 00 00                          .byte 0xf4, 0x42, 0x2b, 0x00, 0x4c, 0x19, 0x00, 0x00

; FUNCTION 0x006e07c0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE4sizeEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::size() const
; decoder-mode: arm
006e07c0  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
006e07c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e07c8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE9getNextIdEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::getNextId() const
; decoder-mode: arm
006e07c8  b4 02 d0 e1                                      ldrh r0, [r0, #0x24]
006e07cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e07d0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEEC2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
006e07d0  00 20 a0 e3                                      mov r2, #0
006e07d4  00 30 a0 e1                                      mov r3, r0
006e07d8  b6 22 c0 e1                                      strh r2, [r0, #0x26]
006e07dc  04 20 80 e5                                      str r2, [r0, #4]
006e07e0  00 20 c0 e5                                      strb r2, [r0]
006e07e4  08 00 83 e5                                      str r0, [r3, #8]
006e07e8  0c 00 83 e5                                      str r0, [r3, #0xc]
006e07ec  10 20 80 e5                                      str r2, [r0, #0x10]
006e07f0  18 20 80 e5                                      str r2, [r0, #0x18]
006e07f4  1c 20 80 e5                                      str r2, [r0, #0x1c]
006e07f8  20 20 80 e5                                      str r2, [r0, #0x20]
006e07fc  b4 22 c0 e1                                      strh r2, [r0, #0x24]
006e0800  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e082c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEEC1Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection()
; decoder-mode: arm
006e082c  00 20 a0 e3                                      mov r2, #0
006e0830  00 30 a0 e1                                      mov r3, r0
006e0834  b6 22 c0 e1                                      strh r2, [r0, #0x26]
006e0838  04 20 80 e5                                      str r2, [r0, #4]
006e083c  00 20 c0 e5                                      strb r2, [r0]
006e0840  08 00 83 e5                                      str r0, [r3, #8]
006e0844  0c 00 83 e5                                      str r0, [r3, #0xc]
006e0848  10 20 80 e5                                      str r2, [r0, #0x10]
006e084c  18 20 80 e5                                      str r2, [r0, #0x18]
006e0850  1c 20 80 e5                                      str r2, [r0, #0x1c]
006e0854  20 20 80 e5                                      str r2, [r0, #0x20]
006e0858  b4 22 c0 e1                                      strh r2, [r0, #0x24]
006e085c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0860, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short)
; decoder-mode: arm
006e0860  18 30 90 e5                                      ldr r3, [r0, #0x18]
006e0864  81 31 83 e0                                      add r3, r3, r1, lsl #3
006e0868  04 00 93 e5                                      ldr r0, [r3, #4]
006e086c  18 00 80 e2                                      add r0, r0, #0x18
006e0870  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0874, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE13getPropertiesEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::getProperties(unsigned short) const
; decoder-mode: arm
006e0874  18 30 90 e5                                      ldr r3, [r0, #0x18]
006e0878  81 31 83 e0                                      add r3, r3, r1, lsl #3
006e087c  04 00 93 e5                                      ldr r0, [r3, #4]
006e0880  18 00 80 e2                                      add r0, r0, #0x18
006e0884  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0888, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE7idBeginEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::idBegin() const
; decoder-mode: arm
006e0888  08 00 90 e5                                      ldr r0, [r0, #8]
006e088c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0890, declared_size=4, range_size=4, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5idEndEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::idEnd() const
; decoder-mode: arm
006e0890  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e0894, declared_size=28, range_size=28, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE8getMaxIDEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::getMaxID() const
; decoder-mode: arm
006e0894  18 30 90 e5                                      ldr r3, [r0, #0x18]
006e0898  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006e089c  00 00 63 e0                                      rsb r0, r3, r0
006e08a0  c0 01 a0 e1                                      asr r0, r0, #3
006e08a4  01 00 40 e2                                      sub r0, r0, #1
006e08a8  70 00 ff e6                                      uxth r0, r0
006e08ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e1718, declared_size=64, range_size=64, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEED2Ev
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection()
; decoder-mode: arm
006e1718  10 40 2d e9                                      push {r4, lr}
006e171c  00 40 a0 e1                                      mov r4, r0
006e1720  18 00 80 e2                                      add r0, r0, #0x18
006e1724  4b ff ff eb                                      bl #0x6e1458
006e1728  10 30 94 e5                                      ldr r3, [r4, #0x10]
006e172c  00 00 53 e3                                      cmp r3, #0
006e1730  06 00 00 0a                                      beq #0x6e1750
006e1734  04 00 a0 e1                                      mov r0, r4
006e1738  04 10 94 e5                                      ldr r1, [r4, #4]
006e173c  e1 ff ff eb                                      bl #0x6e16c8
006e1740  00 30 a0 e3                                      mov r3, #0
006e1744  10 30 84 e5                                      str r3, [r4, #0x10]
006e1748  18 00 84 e9                                      stmib r4, {r3, r4}
006e174c  0c 40 84 e5                                      str r4, [r4, #0xc]
006e1750  04 00 a0 e1                                      mov r0, r4
006e1754  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e1ab4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZNK6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE5getIdEPKc
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) const
; decoder-mode: arm
006e1ab4  30 40 2d e9                                      push {r4, r5, lr}
006e1ab8  0c d0 4d e2                                      sub sp, sp, #0xc
006e1abc  00 30 a0 e3                                      mov r3, #0
006e1ac0  00 10 8d e5                                      str r1, [sp]
006e1ac4  0d 10 a0 e1                                      mov r1, sp
006e1ac8  04 30 cd e5                                      strb r3, [sp, #4]
006e1acc  00 40 a0 e1                                      mov r4, r0
006e1ad0  d7 fd ff eb                                      bl #0x6e1234
006e1ad4  04 30 dd e5                                      ldrb r3, [sp, #4]
006e1ad8  00 50 a0 e1                                      mov r5, r0
006e1adc  00 00 53 e3                                      cmp r3, #0
006e1ae0  03 00 00 0a                                      beq #0x6e1af4
006e1ae4  00 00 9d e5                                      ldr r0, [sp]
006e1ae8  00 00 50 e3                                      cmp r0, #0
006e1aec  00 00 00 0a                                      beq #0x6e1af4
006e1af0  70 b1 f0 eb                                      bl #0x30e0b8
006e1af4  04 00 55 e1                                      cmp r5, r4
006e1af8  ff 0f 0f 03                                      movweq r0, #0xffff
006e1afc  b8 01 d5 11                                      ldrhne r0, [r5, #0x18]
006e1b00  0c d0 8d e2                                      add sp, sp, #0xc
006e1b04  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006e1bdc, declared_size=404, range_size=404, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6insertEPKcRKS7_b
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*, boost::intrusive_ptr<glitch::video::IShaderCode> const&, bool)
; decoder-mode: arm
006e1bdc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e1be0  00 40 a0 e1                                      mov r4, r0
006e1be4  b6 02 d0 e1                                      ldrh r0, [r0, #0x26]
006e1be8  b4 52 d4 e1                                      ldrh r5, [r4, #0x24]
006e1bec  34 d0 4d e2                                      sub sp, sp, #0x34
006e1bf0  01 00 80 e2                                      add r0, r0, #1
006e1bf4  b6 02 c4 e1                                      strh r0, [r4, #0x26]
006e1bf8  01 e0 a0 e1                                      mov lr, r1
006e1bfc  00 c0 a0 e3                                      mov ip, #0
006e1c00  02 60 a0 e1                                      mov r6, r2
006e1c04  24 00 8d e2                                      add r0, sp, #0x24
006e1c08  04 10 a0 e1                                      mov r1, r4
006e1c0c  08 20 8d e2                                      add r2, sp, #8
006e1c10  03 70 a0 e1                                      mov r7, r3
006e1c14  08 e0 8d e5                                      str lr, [sp, #8]
006e1c18  0c c0 cd e5                                      strb ip, [sp, #0xc]
006e1c1c  1c e0 8d e5                                      str lr, [sp, #0x1c]
006e1c20  20 c0 cd e5                                      strb ip, [sp, #0x20]
006e1c24  b0 51 cd e1                                      strh r5, [sp, #0x10]
006e1c28  13 fd ff eb                                      bl #0x6e107c
006e1c2c  0c 30 dd e5                                      ldrb r3, [sp, #0xc]
006e1c30  00 00 53 e3                                      cmp r3, #0
006e1c34  03 00 00 0a                                      beq #0x6e1c48
006e1c38  08 00 9d e5                                      ldr r0, [sp, #8]
006e1c3c  00 00 50 e3                                      cmp r0, #0
006e1c40  00 00 00 0a                                      beq #0x6e1c48
006e1c44  1b b1 f0 eb                                      bl #0x30e0b8
006e1c48  00 00 57 e3                                      cmp r7, #0
006e1c4c  24 30 9d 15                                      ldrne r3, [sp, #0x24]
006e1c50  01 20 a0 13                                      movne r2, #1
006e1c54  14 20 c3 15                                      strbne r2, [r3, #0x14]
006e1c58  18 30 94 e5                                      ldr r3, [r4, #0x18]
006e1c5c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006e1c60  01 20 63 e0                                      rsb r2, r3, r1
006e1c64  c2 01 55 e1                                      cmp r5, r2, asr #3
006e1c68  1b 00 00 3a                                      blo #0x6e1cdc
006e1c6c  00 30 96 e5                                      ldr r3, [r6]
006e1c70  24 20 9d e5                                      ldr r2, [sp, #0x24]
006e1c74  00 00 53 e3                                      cmp r3, #0
006e1c78  14 30 8d e5                                      str r3, [sp, #0x14]
006e1c7c  04 10 93 15                                      ldrne r1, [r3, #4]
006e1c80  01 10 81 12                                      addne r1, r1, #1
006e1c84  04 10 83 15                                      strne r1, [r3, #4]
006e1c88  1c 10 94 15                                      ldrne r1, [r4, #0x1c]
006e1c8c  20 30 94 e5                                      ldr r3, [r4, #0x20]
006e1c90  18 20 8d e5                                      str r2, [sp, #0x18]
006e1c94  03 00 51 e1                                      cmp r1, r3
006e1c98  2c 00 00 0a                                      beq #0x6e1d50
006e1c9c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e1ca0  00 30 81 e5                                      str r3, [r1]
006e1ca4  00 00 53 e3                                      cmp r3, #0
006e1ca8  04 20 93 15                                      ldrne r2, [r3, #4]
006e1cac  01 20 82 12                                      addne r2, r2, #1
006e1cb0  04 20 83 15                                      strne r2, [r3, #4]
006e1cb4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006e1cb8  04 30 81 e5                                      str r3, [r1, #4]
006e1cbc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006e1cc0  08 30 83 e2                                      add r3, r3, #8
006e1cc4  1c 30 84 e5                                      str r3, [r4, #0x1c]
006e1cc8  14 00 9d e5                                      ldr r0, [sp, #0x14]
006e1ccc  00 00 50 e3                                      cmp r0, #0
006e1cd0  0e 00 00 0a                                      beq #0x6e1d10
006e1cd4  2a ee f0 eb                                      bl #0x31d584
006e1cd8  0c 00 00 ea                                      b #0x6e1d10
006e1cdc  00 20 96 e5                                      ldr r2, [r6]
006e1ce0  24 70 9d e5                                      ldr r7, [sp, #0x24]
006e1ce4  85 61 83 e0                                      add r6, r3, r5, lsl #3
006e1ce8  00 00 52 e3                                      cmp r2, #0
006e1cec  04 10 92 15                                      ldrne r1, [r2, #4]
006e1cf0  01 10 81 12                                      addne r1, r1, #1
006e1cf4  04 10 82 15                                      strne r1, [r2, #4]
006e1cf8  85 01 93 e7                                      ldr r0, [r3, r5, lsl #3]
006e1cfc  85 21 83 e7                                      str r2, [r3, r5, lsl #3]
006e1d00  00 00 50 e3                                      cmp r0, #0
006e1d04  00 00 00 0a                                      beq #0x6e1d0c
006e1d08  1d ee f0 eb                                      bl #0x31d584
006e1d0c  04 70 86 e5                                      str r7, [r6, #4]
006e1d10  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
006e1d14  18 00 94 e5                                      ldr r0, [r4, #0x18]
006e1d18  b4 32 d4 e1                                      ldrh r3, [r4, #0x24]
006e1d1c  02 20 60 e0                                      rsb r2, r0, r2
006e1d20  c2 21 a0 e1                                      asr r2, r2, #3
006e1d24  01 30 83 e2                                      add r3, r3, #1
006e1d28  73 30 ff e6                                      uxth r3, r3
006e1d2c  02 00 53 e1                                      cmp r3, r2
006e1d30  b4 32 c4 e1                                      strh r3, [r4, #0x24]
006e1d34  02 00 00 2a                                      bhs #0x6e1d44
006e1d38  83 11 90 e7                                      ldr r1, [r0, r3, lsl #3]
006e1d3c  00 00 51 e3                                      cmp r1, #0
006e1d40  f7 ff ff 1a                                      bne #0x6e1d24
006e1d44  05 00 a0 e1                                      mov r0, r5
006e1d48  34 d0 8d e2                                      add sp, sp, #0x34
006e1d4c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e1d50  01 c0 a0 e3                                      mov ip, #1
006e1d54  18 00 84 e2                                      add r0, r4, #0x18
006e1d58  14 20 8d e2                                      add r2, sp, #0x14
006e1d5c  2c 30 8d e2                                      add r3, sp, #0x2c
006e1d60  04 c0 8d e5                                      str ip, [sp, #4]
006e1d64  00 c0 8d e5                                      str ip, [sp]
006e1d68  cd fd ff eb                                      bl #0x6e14a4
006e1d6c  d5 ff ff ea                                      b #0x6e1cc8

; FUNCTION 0x006e1d88, declared_size=204, range_size=204, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6renameEtPKcb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::rename(unsigned short, char const*, bool)
; decoder-mode: arm
006e1d88  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e1d8c  00 40 a0 e1                                      mov r4, r0
006e1d90  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
006e1d94  18 00 90 e5                                      ldr r0, [r0, #0x18]
006e1d98  24 d0 4d e2                                      sub sp, sp, #0x24
006e1d9c  01 c0 a0 e1                                      mov ip, r1
006e1da0  06 60 60 e0                                      rsb r6, r0, r6
006e1da4  c6 01 51 e1                                      cmp r1, r6, asr #3
006e1da8  02 50 a0 e1                                      mov r5, r2
006e1dac  03 60 a0 e1                                      mov r6, r3
006e1db0  24 00 00 2a                                      bhs #0x6e1e48
006e1db4  81 31 90 e7                                      ldr r3, [r0, r1, lsl #3]
006e1db8  81 71 80 e0                                      add r7, r0, r1, lsl #3
006e1dbc  00 00 53 e3                                      cmp r3, #0
006e1dc0  20 00 00 0a                                      beq #0x6e1e48
006e1dc4  00 30 a0 e3                                      mov r3, #0
006e1dc8  14 00 8d e2                                      add r0, sp, #0x14
006e1dcc  04 10 a0 e1                                      mov r1, r4
006e1dd0  0d 20 a0 e1                                      mov r2, sp
006e1dd4  04 30 cd e5                                      strb r3, [sp, #4]
006e1dd8  10 30 cd e5                                      strb r3, [sp, #0x10]
006e1ddc  00 50 8d e5                                      str r5, [sp]
006e1de0  b8 c0 cd e1                                      strh ip, [sp, #8]
006e1de4  0c 50 8d e5                                      str r5, [sp, #0xc]
006e1de8  a3 fc ff eb                                      bl #0x6e107c
006e1dec  04 30 dd e5                                      ldrb r3, [sp, #4]
006e1df0  00 00 53 e3                                      cmp r3, #0
006e1df4  03 00 00 0a                                      beq #0x6e1e08
006e1df8  00 00 9d e5                                      ldr r0, [sp]
006e1dfc  00 00 50 e3                                      cmp r0, #0
006e1e00  00 00 00 0a                                      beq #0x6e1e08
006e1e04  ab b0 f0 eb                                      bl #0x30e0b8
006e1e08  18 30 dd e5                                      ldrb r3, [sp, #0x18]
006e1e0c  00 00 53 e3                                      cmp r3, #0
006e1e10  0c 00 00 0a                                      beq #0x6e1e48
006e1e14  04 30 97 e5                                      ldr r3, [r7, #4]
006e1e18  20 10 8d e2                                      add r1, sp, #0x20
006e1e1c  04 00 a0 e1                                      mov r0, r4
006e1e20  04 30 21 e5                                      str r3, [r1, #-4]!
006e1e24  57 ff ff eb                                      bl #0x6e1b88
006e1e28  00 00 56 e3                                      cmp r6, #0
006e1e2c  14 30 9d 15                                      ldrne r3, [sp, #0x14]
006e1e30  01 20 a0 13                                      movne r2, #1
006e1e34  01 00 a0 e3                                      mov r0, #1
006e1e38  14 20 c3 15                                      strbne r2, [r3, #0x14]
006e1e3c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006e1e40  04 30 87 e5                                      str r3, [r7, #4]
006e1e44  00 00 00 ea                                      b #0x6e1e4c
006e1e48  00 00 a0 e3                                      mov r0, #0
006e1e4c  24 d0 8d e2                                      add sp, sp, #0x24
006e1e50  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006e1e54, declared_size=252, range_size=252, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6removeEtb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short, bool)
; decoder-mode: arm
006e1e54  70 40 2d e9                                      push {r4, r5, r6, lr}
006e1e58  00 40 a0 e1                                      mov r4, r0
006e1e5c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006e1e60  18 00 90 e5                                      ldr r0, [r0, #0x18]
006e1e64  10 d0 4d e2                                      sub sp, sp, #0x10
006e1e68  01 50 a0 e1                                      mov r5, r1
006e1e6c  03 30 60 e0                                      rsb r3, r0, r3
006e1e70  c3 01 51 e1                                      cmp r1, r3, asr #3
006e1e74  2d 00 00 2a                                      bhs #0x6e1f30
006e1e78  81 31 90 e7                                      ldr r3, [r0, r1, lsl #3]
006e1e7c  81 61 80 e0                                      add r6, r0, r1, lsl #3
006e1e80  00 00 53 e3                                      cmp r3, #0
006e1e84  29 00 00 0a                                      beq #0x6e1f30
006e1e88  04 30 93 e5                                      ldr r3, [r3, #4]
006e1e8c  01 00 53 e3                                      cmp r3, #1
006e1e90  01 00 00 0a                                      beq #0x6e1e9c
006e1e94  00 00 52 e3                                      cmp r2, #0
006e1e98  24 00 00 0a                                      beq #0x6e1f30
006e1e9c  04 30 96 e5                                      ldr r3, [r6, #4]
006e1ea0  10 10 8d e2                                      add r1, sp, #0x10
006e1ea4  04 00 a0 e1                                      mov r0, r4
006e1ea8  04 30 21 e5                                      str r3, [r1, #-4]!
006e1eac  35 ff ff eb                                      bl #0x6e1b88
006e1eb0  06 00 a0 e1                                      mov r0, r6
006e1eb4  f8 fd ff eb                                      bl #0x6e169c
006e1eb8  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
006e1ebc  b6 32 d4 e1                                      ldrh r3, [r4, #0x26]
006e1ec0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006e1ec4  18 10 94 e5                                      ldr r1, [r4, #0x18]
006e1ec8  05 00 52 e1                                      cmp r2, r5
006e1ecc  01 30 43 e2                                      sub r3, r3, #1
006e1ed0  b4 52 c4 81                                      strhhi r5, [r4, #0x24]
006e1ed4  01 00 50 e1                                      cmp r0, r1
006e1ed8  b6 32 c4 e1                                      strh r3, [r4, #0x26]
006e1edc  19 00 00 0a                                      beq #0x6e1f48
006e1ee0  00 30 a0 e1                                      mov r3, r0
006e1ee4  08 20 13 e5                                      ldr r2, [r3, #-8]
006e1ee8  00 00 52 e3                                      cmp r2, #0
006e1eec  12 00 00 0a                                      beq #0x6e1f3c
006e1ef0  00 30 63 e0                                      rsb r3, r3, r0
006e1ef4  00 10 61 e0                                      rsb r1, r1, r0
006e1ef8  c3 31 a0 e1                                      asr r3, r3, #3
006e1efc  c1 11 63 e0                                      rsb r1, r3, r1, asr #3
006e1f00  18 00 84 e2                                      add r0, r4, #0x18
006e1f04  00 30 a0 e3                                      mov r3, #0
006e1f08  04 20 8d e2                                      add r2, sp, #4
006e1f0c  08 30 8d e5                                      str r3, [sp, #8]
006e1f10  04 30 8d e5                                      str r3, [sp, #4]
006e1f14  d2 fe ff eb                                      bl #0x6e1a64
006e1f18  04 00 9d e5                                      ldr r0, [sp, #4]
006e1f1c  00 00 50 e3                                      cmp r0, #0
006e1f20  08 00 00 0a                                      beq #0x6e1f48
006e1f24  96 ed f0 eb                                      bl #0x31d584
006e1f28  01 00 a0 e3                                      mov r0, #1
006e1f2c  00 00 00 ea                                      b #0x6e1f34
006e1f30  00 00 a0 e3                                      mov r0, #0
006e1f34  10 d0 8d e2                                      add sp, sp, #0x10
006e1f38  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e1f3c  08 30 43 e2                                      sub r3, r3, #8
006e1f40  03 00 51 e1                                      cmp r1, r3
006e1f44  e6 ff ff 1a                                      bne #0x6e1ee4
006e1f48  01 00 a0 e3                                      mov r0, #1
006e1f4c  f8 ff ff ea                                      b #0x6e1f34

; FUNCTION 0x006e1f50, declared_size=200, range_size=200, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE9removeAllEb
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool)
; decoder-mode: arm
006e1f50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e1f54  08 30 90 e5                                      ldr r3, [r0, #8]
006e1f58  00 50 a0 e1                                      mov r5, r0
006e1f5c  01 70 a0 e1                                      mov r7, r1
006e1f60  03 00 55 e1                                      cmp r5, r3
006e1f64  00 60 a0 e3                                      mov r6, #0
006e1f68  11 00 00 0a                                      beq #0x6e1fb4
006e1f6c  0c 40 93 e5                                      ldr r4, [r3, #0xc]
006e1f70  00 00 54 e3                                      cmp r4, #0
006e1f74  01 00 00 1a                                      bne #0x6e1f80
006e1f78  0f 00 00 ea                                      b #0x6e1fbc
006e1f7c  02 40 a0 e1                                      mov r4, r2
006e1f80  08 20 94 e5                                      ldr r2, [r4, #8]
006e1f84  00 00 52 e3                                      cmp r2, #0
006e1f88  fb ff ff 1a                                      bne #0x6e1f7c
006e1f8c  b8 11 d3 e1                                      ldrh r1, [r3, #0x18]
006e1f90  05 00 a0 e1                                      mov r0, r5
006e1f94  07 20 a0 e1                                      mov r2, r7
006e1f98  ad ff ff eb                                      bl #0x6e1e54
006e1f9c  00 00 50 e3                                      cmp r0, #0
006e1fa0  01 60 86 12                                      addne r6, r6, #1
006e1fa4  76 60 ff 16                                      uxthne r6, r6
006e1fa8  04 30 a0 e1                                      mov r3, r4
006e1fac  03 00 55 e1                                      cmp r5, r3
006e1fb0  ed ff ff 1a                                      bne #0x6e1f6c
006e1fb4  06 00 a0 e1                                      mov r0, r6
006e1fb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e1fbc  04 20 93 e5                                      ldr r2, [r3, #4]
006e1fc0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006e1fc4  01 00 53 e1                                      cmp r3, r1
006e1fc8  03 40 a0 11                                      movne r4, r3
006e1fcc  00 10 a0 13                                      movne r1, #0
006e1fd0  05 00 00 1a                                      bne #0x6e1fec
006e1fd4  02 40 a0 e1                                      mov r4, r2
006e1fd8  04 20 92 e5                                      ldr r2, [r2, #4]
006e1fdc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006e1fe0  04 00 51 e1                                      cmp r1, r4
006e1fe4  fa ff ff 0a                                      beq #0x6e1fd4
006e1fe8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006e1fec  02 00 51 e1                                      cmp r1, r2
006e1ff0  02 40 a0 11                                      movne r4, r2
006e1ff4  b8 11 d3 e1                                      ldrh r1, [r3, #0x18]
006e1ff8  05 00 a0 e1                                      mov r0, r5
006e1ffc  07 20 a0 e1                                      mov r2, r7
006e2000  93 ff ff eb                                      bl #0x6e1e54
006e2004  00 00 50 e3                                      cmp r0, #0
006e2008  01 60 86 12                                      addne r6, r6, #1
006e200c  76 60 ff 16                                      uxthne r6, r6
006e2010  04 30 a0 e1                                      mov r3, r4
006e2014  e4 ff ff ea                                      b #0x6e1fac

; FUNCTION 0x006e2018, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE9removeAllEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeAll()
; decoder-mode: arm
006e2018  00 10 a0 e3                                      mov r1, #0
006e201c  cb ff ff ea                                      b #0x6e1f50

; FUNCTION 0x006e2020, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE12removeUnusedEv
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::removeUnused()
; decoder-mode: arm
006e2020  00 10 a0 e3                                      mov r1, #0
006e2024  c9 ff ff ea                                      b #0x6e1f50

; FUNCTION 0x006e2054, declared_size=8, range_size=8, mode=arm
; class-group: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>
; alias: _ZN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS_5video11IShaderCodeEEEtLb0ENS1_15sidedcollection16SEmptyPropertiesENS8_12SValueTraitsEE6removeEt
; demangled: glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::remove(unsigned short)
; decoder-mode: arm
006e2054  00 20 a0 e3                                      mov r2, #0
006e2058  7d ff ff ea                                      b #0x6e1e54
