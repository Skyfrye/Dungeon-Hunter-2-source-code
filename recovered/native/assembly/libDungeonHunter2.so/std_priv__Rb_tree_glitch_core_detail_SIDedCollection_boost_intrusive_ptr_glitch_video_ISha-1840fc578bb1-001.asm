; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e0f0c, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video11IShaderCodeEEEtLb0ENS3_15sidedcollection16SEmptyPropertiesENSA_12SValueTraitsEE5SNameESt4lessISE_ESt4pairIKSE_NSD_8SIdValueEENS_10_Select1stISK_EENS_11_MapTraitsTISK_EENS2_10SAllocatorISK_LNS1_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSK_SV_SV_.clone.1
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.1]
; decoder-mode: arm
006e0f0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e0f10  02 00 51 e1                                      cmp r1, r2
006e0f14  0c d0 4d e2                                      sub sp, sp, #0xc
006e0f18  01 40 a0 e1                                      mov r4, r1
006e0f1c  00 50 a0 e1                                      mov r5, r0
006e0f20  18 00 00 0a                                      beq #0x6e0f88
006e0f24  20 10 9d e5                                      ldr r1, [sp, #0x20]
006e0f28  00 00 51 e3                                      cmp r1, #0
006e0f2c  34 00 00 0a                                      beq #0x6e1004
006e0f30  00 10 a0 e3                                      mov r1, #0
006e0f34  1c 00 a0 e3                                      mov r0, #0x1c
006e0f38  04 20 8d e5                                      str r2, [sp, #4]
006e0f3c  00 30 8d e5                                      str r3, [sp]
006e0f40  88 bd f0 eb                                      bl #0x310568
006e0f44  00 30 9d e5                                      ldr r3, [sp]
006e0f48  00 10 a0 e3                                      mov r1, #0
006e0f4c  00 60 a0 e1                                      mov r6, r0
006e0f50  00 c0 93 e5                                      ldr ip, [r3]
006e0f54  10 c0 80 e5                                      str ip, [r0, #0x10]
006e0f58  04 c0 d3 e5                                      ldrb ip, [r3, #4]
006e0f5c  14 c0 c0 e5                                      strb ip, [r0, #0x14]
006e0f60  b8 30 d3 e1                                      ldrh r3, [r3, #8]
006e0f64  0c 10 80 e5                                      str r1, [r0, #0xc]
006e0f68  08 10 80 e5                                      str r1, [r0, #8]
006e0f6c  b8 31 c0 e1                                      strh r3, [r0, #0x18]
006e0f70  04 20 9d e5                                      ldr r2, [sp, #4]
006e0f74  08 00 82 e5                                      str r0, [r2, #8]
006e0f78  08 30 94 e5                                      ldr r3, [r4, #8]
006e0f7c  03 00 52 e1                                      cmp r2, r3
006e0f80  08 00 84 05                                      streq r0, [r4, #8]
006e0f84  13 00 00 ea                                      b #0x6e0fd8
006e0f88  00 10 a0 e3                                      mov r1, #0
006e0f8c  1c 00 a0 e3                                      mov r0, #0x1c
006e0f90  04 20 8d e5                                      str r2, [sp, #4]
006e0f94  00 30 8d e5                                      str r3, [sp]
006e0f98  72 bd f0 eb                                      bl #0x310568
006e0f9c  00 30 9d e5                                      ldr r3, [sp]
006e0fa0  00 10 a0 e3                                      mov r1, #0
006e0fa4  00 60 a0 e1                                      mov r6, r0
006e0fa8  00 c0 93 e5                                      ldr ip, [r3]
006e0fac  10 c0 80 e5                                      str ip, [r0, #0x10]
006e0fb0  04 c0 d3 e5                                      ldrb ip, [r3, #4]
006e0fb4  14 c0 c0 e5                                      strb ip, [r0, #0x14]
006e0fb8  b8 30 d3 e1                                      ldrh r3, [r3, #8]
006e0fbc  0c 10 80 e5                                      str r1, [r0, #0xc]
006e0fc0  08 10 80 e5                                      str r1, [r0, #8]
006e0fc4  b8 31 c0 e1                                      strh r3, [r0, #0x18]
006e0fc8  08 00 84 e5                                      str r0, [r4, #8]
006e0fcc  04 00 84 e5                                      str r0, [r4, #4]
006e0fd0  0c 00 84 e5                                      str r0, [r4, #0xc]
006e0fd4  04 20 9d e5                                      ldr r2, [sp, #4]
006e0fd8  06 00 a0 e1                                      mov r0, r6
006e0fdc  04 20 86 e5                                      str r2, [r6, #4]
006e0fe0  04 10 84 e2                                      add r1, r4, #4
006e0fe4  dd c9 f0 eb                                      bl #0x313760
006e0fe8  10 30 94 e5                                      ldr r3, [r4, #0x10]
006e0fec  05 00 a0 e1                                      mov r0, r5
006e0ff0  01 30 83 e2                                      add r3, r3, #1
006e0ff4  10 30 84 e5                                      str r3, [r4, #0x10]
006e0ff8  00 60 85 e5                                      str r6, [r5]
006e0ffc  0c d0 8d e2                                      add sp, sp, #0xc
006e1000  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e1004  03 00 a0 e1                                      mov r0, r3
006e1008  10 10 82 e2                                      add r1, r2, #0x10
006e100c  04 20 8d e5                                      str r2, [sp, #4]
006e1010  00 30 8d e5                                      str r3, [sp]
006e1014  54 fe ff eb                                      bl #0x6e096c
006e1018  00 70 50 e2                                      subs r7, r0, #0
006e101c  04 20 9d e5                                      ldr r2, [sp, #4]
006e1020  00 30 9d e5                                      ldr r3, [sp]
006e1024  c1 ff ff 1a                                      bne #0x6e0f30
006e1028  07 10 a0 e1                                      mov r1, r7
006e102c  1c 00 a0 e3                                      mov r0, #0x1c
006e1030  04 20 8d e5                                      str r2, [sp, #4]
006e1034  00 30 8d e5                                      str r3, [sp]
006e1038  4a bd f0 eb                                      bl #0x310568
006e103c  00 30 9d e5                                      ldr r3, [sp]
006e1040  00 60 a0 e1                                      mov r6, r0
006e1044  00 10 93 e5                                      ldr r1, [r3]
006e1048  10 10 80 e5                                      str r1, [r0, #0x10]
006e104c  04 10 d3 e5                                      ldrb r1, [r3, #4]
006e1050  14 10 c0 e5                                      strb r1, [r0, #0x14]
006e1054  b8 30 d3 e1                                      ldrh r3, [r3, #8]
006e1058  0c 70 80 e5                                      str r7, [r0, #0xc]
006e105c  08 70 80 e5                                      str r7, [r0, #8]
006e1060  b8 31 c0 e1                                      strh r3, [r0, #0x18]
006e1064  04 20 9d e5                                      ldr r2, [sp, #4]
006e1068  0c 00 82 e5                                      str r0, [r2, #0xc]
006e106c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e1070  03 00 52 e1                                      cmp r2, r3
006e1074  0c 00 84 05                                      streq r0, [r4, #0xc]
006e1078  d6 ff ff ea                                      b #0x6e0fd8

; FUNCTION 0x006e107c, declared_size=440, range_size=440, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video11IShaderCodeEEEtLb0ENS3_15sidedcollection16SEmptyPropertiesENSA_12SValueTraitsEE5SNameESt4lessISE_ESt4pairIKSE_NSD_8SIdValueEENS_10_Select1stISK_EENS_11_MapTraitsTISK_EENS2_10SAllocatorISK_LNS1_6memory13E_MEMORY_HINTE0EEEE13insert_uniqueERKSK_
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::insert_unique(std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&)
; decoder-mode: arm
006e107c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e1080  04 50 91 e5                                      ldr r5, [r1, #4]
006e1084  10 d0 4d e2                                      sub sp, sp, #0x10
006e1088  01 60 a0 e1                                      mov r6, r1
006e108c  00 00 55 e3                                      cmp r5, #0
006e1090  00 40 a0 e1                                      mov r4, r0
006e1094  02 70 a0 e1                                      mov r7, r2
006e1098  01 50 a0 01                                      moveq r5, r1
006e109c  1b 00 00 0a                                      beq #0x6e1110
006e10a0  00 a0 92 e5                                      ldr sl, [r2]
006e10a4  00 00 00 ea                                      b #0x6e10ac
006e10a8  03 50 a0 e1                                      mov r5, r3
006e10ac  10 80 95 e5                                      ldr r8, [r5, #0x10]
006e10b0  0a 00 a0 e1                                      mov r0, sl
006e10b4  08 10 a0 e1                                      mov r1, r8
006e10b8  97 b4 f0 eb                                      bl #0x30e31c
006e10bc  00 00 50 e3                                      cmp r0, #0
006e10c0  08 30 95 b5                                      ldrlt r3, [r5, #8]
006e10c4  0c 30 95 a5                                      ldrge r3, [r5, #0xc]
006e10c8  01 20 a0 b3                                      movlt r2, #1
006e10cc  00 20 a0 a3                                      movge r2, #0
006e10d0  00 00 53 e3                                      cmp r3, #0
006e10d4  f3 ff ff 1a                                      bne #0x6e10a8
006e10d8  00 00 52 e3                                      cmp r2, #0
006e10dc  05 90 a0 01                                      moveq sb, r5
006e10e0  0a 00 00 1a                                      bne #0x6e1110
006e10e4  08 00 a0 e1                                      mov r0, r8
006e10e8  0a 10 a0 e1                                      mov r1, sl
006e10ec  8a b4 f0 eb                                      bl #0x30e31c
006e10f0  00 00 50 e3                                      cmp r0, #0
006e10f4  00 30 a0 a3                                      movge r3, #0
006e10f8  00 90 84 a5                                      strge sb, [r4]
006e10fc  04 30 c4 a5                                      strbge r3, [r4, #4]
006e1100  1f 00 00 ba                                      blt #0x6e1184
006e1104  04 00 a0 e1                                      mov r0, r4
006e1108  10 d0 8d e2                                      add sp, sp, #0x10
006e110c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e1110  08 30 96 e5                                      ldr r3, [r6, #8]
006e1114  03 00 55 e1                                      cmp r5, r3
006e1118  3a 00 00 0a                                      beq #0x6e1208
006e111c  00 30 d5 e5                                      ldrb r3, [r5]
006e1120  00 00 53 e3                                      cmp r3, #0
006e1124  03 00 00 1a                                      bne #0x6e1138
006e1128  04 30 95 e5                                      ldr r3, [r5, #4]
006e112c  04 30 93 e5                                      ldr r3, [r3, #4]
006e1130  03 00 55 e1                                      cmp r5, r3
006e1134  2e 00 00 0a                                      beq #0x6e11f4
006e1138  08 20 95 e5                                      ldr r2, [r5, #8]
006e113c  00 00 52 e3                                      cmp r2, #0
006e1140  01 00 00 1a                                      bne #0x6e114c
006e1144  1a 00 00 ea                                      b #0x6e11b4
006e1148  03 20 a0 e1                                      mov r2, r3
006e114c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
006e1150  00 00 53 e3                                      cmp r3, #0
006e1154  fb ff ff 1a                                      bne #0x6e1148
006e1158  10 80 92 e5                                      ldr r8, [r2, #0x10]
006e115c  00 a0 97 e5                                      ldr sl, [r7]
006e1160  02 90 a0 e1                                      mov sb, r2
006e1164  08 00 a0 e1                                      mov r0, r8
006e1168  0a 10 a0 e1                                      mov r1, sl
006e116c  6a b4 f0 eb                                      bl #0x30e31c
006e1170  00 00 50 e3                                      cmp r0, #0
006e1174  00 30 a0 a3                                      movge r3, #0
006e1178  00 90 84 a5                                      strge sb, [r4]
006e117c  04 30 c4 a5                                      strbge r3, [r4, #4]
006e1180  df ff ff aa                                      bge #0x6e1104
006e1184  05 20 a0 e1                                      mov r2, r5
006e1188  07 30 a0 e1                                      mov r3, r7
006e118c  00 c0 a0 e3                                      mov ip, #0
006e1190  06 10 a0 e1                                      mov r1, r6
006e1194  08 00 8d e2                                      add r0, sp, #8
006e1198  00 c0 8d e5                                      str ip, [sp]
006e119c  5a ff ff eb                                      bl #0x6e0f0c
006e11a0  08 30 9d e5                                      ldr r3, [sp, #8]
006e11a4  01 20 a0 e3                                      mov r2, #1
006e11a8  04 20 c4 e5                                      strb r2, [r4, #4]
006e11ac  00 30 84 e5                                      str r3, [r4]
006e11b0  d3 ff ff ea                                      b #0x6e1104
006e11b4  04 30 95 e5                                      ldr r3, [r5, #4]
006e11b8  08 20 93 e5                                      ldr r2, [r3, #8]
006e11bc  02 00 55 e1                                      cmp r5, r2
006e11c0  03 90 a0 11                                      movne sb, r3
006e11c4  00 a0 97 15                                      ldrne sl, [r7]
006e11c8  10 80 93 15                                      ldrne r8, [r3, #0x10]
006e11cc  01 00 00 0a                                      beq #0x6e11d8
006e11d0  c3 ff ff ea                                      b #0x6e10e4
006e11d4  09 30 a0 e1                                      mov r3, sb
006e11d8  04 90 93 e5                                      ldr sb, [r3, #4]
006e11dc  08 20 99 e5                                      ldr r2, [sb, #8]
006e11e0  03 00 52 e1                                      cmp r2, r3
006e11e4  fa ff ff 0a                                      beq #0x6e11d4
006e11e8  00 a0 97 e5                                      ldr sl, [r7]
006e11ec  10 80 99 e5                                      ldr r8, [sb, #0x10]
006e11f0  bb ff ff ea                                      b #0x6e10e4
006e11f4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006e11f8  00 a0 97 e5                                      ldr sl, [r7]
006e11fc  03 90 a0 e1                                      mov sb, r3
006e1200  10 80 93 e5                                      ldr r8, [r3, #0x10]
006e1204  b6 ff ff ea                                      b #0x6e10e4
006e1208  05 20 a0 e1                                      mov r2, r5
006e120c  07 30 a0 e1                                      mov r3, r7
006e1210  06 10 a0 e1                                      mov r1, r6
006e1214  0c 00 8d e2                                      add r0, sp, #0xc
006e1218  00 50 8d e5                                      str r5, [sp]
006e121c  3a ff ff eb                                      bl #0x6e0f0c
006e1220  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e1224  01 20 a0 e3                                      mov r2, #1
006e1228  04 20 c4 e5                                      strb r2, [r4, #4]
006e122c  00 30 84 e5                                      str r3, [r4]
006e1230  b3 ff ff ea                                      b #0x6e1104

; FUNCTION 0x006e16c8, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video11IShaderCodeEEEtLb0ENS3_15sidedcollection16SEmptyPropertiesENSA_12SValueTraitsEE5SNameESt4lessISE_ESt4pairIKSE_NSD_8SIdValueEENS_10_Select1stISK_EENS_11_MapTraitsTISK_EENS2_10SAllocatorISK_LNS1_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
006e16c8  70 40 2d e9                                      push {r4, r5, r6, lr}
006e16cc  00 40 51 e2                                      subs r4, r1, #0
006e16d0  00 50 a0 e1                                      mov r5, r0
006e16d4  0e 00 00 0a                                      beq #0x6e1714
006e16d8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006e16dc  05 00 a0 e1                                      mov r0, r5
006e16e0  f8 ff ff eb                                      bl #0x6e16c8
006e16e4  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
006e16e8  08 60 94 e5                                      ldr r6, [r4, #8]
006e16ec  00 00 53 e3                                      cmp r3, #0
006e16f0  03 00 00 0a                                      beq #0x6e1704
006e16f4  10 00 94 e5                                      ldr r0, [r4, #0x10]
006e16f8  00 00 50 e3                                      cmp r0, #0
006e16fc  00 00 00 0a                                      beq #0x6e1704
006e1700  6c b2 f0 eb                                      bl #0x30e0b8
006e1704  04 00 a0 e1                                      mov r0, r4
006e1708  50 bb f0 eb                                      bl #0x310450
006e170c  00 40 56 e2                                      subs r4, r6, #0
006e1710  f0 ff ff 1a                                      bne #0x6e16d8
006e1714  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e1b88, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv8_Rb_treeIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video11IShaderCodeEEEtLb0ENS3_15sidedcollection16SEmptyPropertiesENSA_12SValueTraitsEE5SNameESt4lessISE_ESt4pairIKSE_NSD_8SIdValueEENS_10_Select1stISK_EENS_11_MapTraitsTISK_EENS2_10SAllocatorISK_LNS1_6memory13E_MEMORY_HINTE0EEEE5eraseENS_17_Rb_tree_iteratorISK_SO_EE
; demangled: std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName, std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName>, std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> >, glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, (glitch::memory::E_MEMORY_HINT)0> >::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>, std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SName const, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> > >)
; decoder-mode: arm
006e1b88  70 40 2d e9                                      push {r4, r5, r6, lr}
006e1b8c  00 40 a0 e1                                      mov r4, r0
006e1b90  0c 30 84 e2                                      add r3, r4, #0xc
006e1b94  00 00 91 e5                                      ldr r0, [r1]
006e1b98  08 20 84 e2                                      add r2, r4, #8
006e1b9c  04 10 84 e2                                      add r1, r4, #4
006e1ba0  17 51 f1 eb                                      bl #0x336004
006e1ba4  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
006e1ba8  00 50 a0 e1                                      mov r5, r0
006e1bac  00 00 53 e3                                      cmp r3, #0
006e1bb0  03 00 00 0a                                      beq #0x6e1bc4
006e1bb4  10 00 90 e5                                      ldr r0, [r0, #0x10]
006e1bb8  00 00 50 e3                                      cmp r0, #0
006e1bbc  00 00 00 0a                                      beq #0x6e1bc4
006e1bc0  3c b1 f0 eb                                      bl #0x30e0b8
006e1bc4  05 00 a0 e1                                      mov r0, r5
006e1bc8  20 ba f0 eb                                      bl #0x310450
006e1bcc  10 30 94 e5                                      ldr r3, [r4, #0x10]
006e1bd0  01 30 43 e2                                      sub r3, r3, #1
006e1bd4  10 30 84 e5                                      str r3, [r4, #0x10]
006e1bd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
