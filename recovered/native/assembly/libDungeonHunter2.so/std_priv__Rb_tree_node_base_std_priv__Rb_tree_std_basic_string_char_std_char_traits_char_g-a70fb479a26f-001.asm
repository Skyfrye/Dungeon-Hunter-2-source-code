; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00659768, declared_size=268, range_size=268, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
00659768  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065976c  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00659770  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00659774  34 d0 4d e2                                      sub sp, sp, #0x34
00659778  02 20 8f e0                                      add r2, pc, r2
0065977c  0c 30 8d e5                                      str r3, [sp, #0xc]
00659780  03 30 92 e7                                      ldr r3, [r2, r3]
00659784  08 20 8d e5                                      str r2, [sp, #8]
00659788  00 b0 a0 e1                                      mov fp, r0
0065978c  00 30 93 e5                                      ldr r3, [r3]
00659790  01 a0 a0 e1                                      mov sl, r1
00659794  2c 30 8d e5                                      str r3, [sp, #0x2c]
00659798  04 50 90 e5                                      ldr r5, [r0, #4]
0065979c  00 00 55 e3                                      cmp r5, #0
006597a0  26 00 00 0a                                      beq #0x659840
006597a4  14 80 8d e2                                      add r8, sp, #0x14
006597a8  10 90 8d e2                                      add sb, sp, #0x10
006597ac  00 10 9a e5                                      ldr r1, [sl]
006597b0  09 20 a0 e1                                      mov r2, sb
006597b4  08 00 a0 e1                                      mov r0, r8
006597b8  1f 32 f3 eb                                      bl #0x32603c
006597bc  24 30 95 e5                                      ldr r3, [r5, #0x24]
006597c0  28 40 9d e5                                      ldr r4, [sp, #0x28]
006597c4  20 70 95 e5                                      ldr r7, [r5, #0x20]
006597c8  24 60 9d e5                                      ldr r6, [sp, #0x24]
006597cc  03 00 a0 e1                                      mov r0, r3
006597d0  07 70 63 e0                                      rsb r7, r3, r7
006597d4  06 60 64 e0                                      rsb r6, r4, r6
006597d8  07 00 56 e1                                      cmp r6, r7
006597dc  06 20 a0 b1                                      movlt r2, r6
006597e0  07 20 a0 a1                                      movge r2, r7
006597e4  04 10 a0 e1                                      mov r1, r4
006597e8  7c d3 f2 eb                                      bl #0x30e5e0
006597ec  00 30 50 e2                                      subs r3, r0, #0
006597f0  04 00 00 1a                                      bne #0x659808
006597f4  06 00 57 e1                                      cmp r7, r6
006597f8  00 30 e0 b3                                      mvnlt r3, #0
006597fc  01 00 00 ba                                      blt #0x659808
00659800  00 30 a0 d3                                      movle r3, #0
00659804  01 30 a0 c3                                      movgt r3, #1
00659808  08 00 54 e1                                      cmp r4, r8
0065980c  05 00 00 0a                                      beq #0x659828
00659810  00 00 54 e3                                      cmp r4, #0
00659814  03 00 00 0a                                      beq #0x659828
00659818  04 00 a0 e1                                      mov r0, r4
0065981c  04 30 8d e5                                      str r3, [sp, #4]
00659820  0a db f2 eb                                      bl #0x310450
00659824  04 30 9d e5                                      ldr r3, [sp, #4]
00659828  00 00 53 e3                                      cmp r3, #0
0065982c  05 b0 a0 a1                                      movge fp, r5
00659830  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00659834  08 50 95 a5                                      ldrge r5, [r5, #8]
00659838  00 00 55 e3                                      cmp r5, #0
0065983c  da ff ff 1a                                      bne #0x6597ac
00659840  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00659844  08 10 9d e5                                      ldr r1, [sp, #8]
00659848  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0065984c  00 30 91 e7                                      ldr r3, [r1, r0]
00659850  0b 00 a0 e1                                      mov r0, fp
00659854  00 30 93 e5                                      ldr r3, [r3]
00659858  03 00 52 e1                                      cmp r2, r3
0065985c  01 00 00 1a                                      bne #0x659868
00659860  34 d0 8d e2                                      add sp, sp, #0x34
00659864  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00659868  a8 d2 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065986c  18 b3 33 00 ac 40 00 00                          .byte 0x18, 0xb3, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00659a8c, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE7_M_findIS9_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_find<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
00659a8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00659a90  04 40 90 e5                                      ldr r4, [r0, #4]
00659a94  00 a0 a0 e1                                      mov sl, r0
00659a98  00 90 a0 e1                                      mov sb, r0
00659a9c  00 00 54 e3                                      cmp r4, #0
00659aa0  29 00 00 0a                                      beq #0x659b4c
00659aa4  10 60 91 e5                                      ldr r6, [r1, #0x10]
00659aa8  14 70 91 e5                                      ldr r7, [r1, #0x14]
00659aac  00 80 a0 e1                                      mov r8, r0
00659ab0  06 60 67 e0                                      rsb r6, r7, r6
00659ab4  05 00 00 ea                                      b #0x659ad0
00659ab8  06 00 55 e1                                      cmp r5, r6
00659abc  0f 00 00 ba                                      blt #0x659b00
00659ac0  04 80 a0 e1                                      mov r8, r4
00659ac4  08 40 94 e5                                      ldr r4, [r4, #8]
00659ac8  00 00 54 e3                                      cmp r4, #0
00659acc  0e 00 00 0a                                      beq #0x659b0c
00659ad0  24 30 94 e5                                      ldr r3, [r4, #0x24]
00659ad4  20 50 94 e5                                      ldr r5, [r4, #0x20]
00659ad8  07 10 a0 e1                                      mov r1, r7
00659adc  03 00 a0 e1                                      mov r0, r3
00659ae0  05 50 63 e0                                      rsb r5, r3, r5
00659ae4  05 00 56 e1                                      cmp r6, r5
00659ae8  06 20 a0 b1                                      movlt r2, r6
00659aec  05 20 a0 a1                                      movge r2, r5
00659af0  ba d2 f2 eb                                      bl #0x30e5e0
00659af4  00 00 50 e3                                      cmp r0, #0
00659af8  ee ff ff 0a                                      beq #0x659ab8
00659afc  ef ff ff aa                                      bge #0x659ac0
00659b00  0c 40 94 e5                                      ldr r4, [r4, #0xc]
00659b04  00 00 54 e3                                      cmp r4, #0
00659b08  f0 ff ff 1a                                      bne #0x659ad0
00659b0c  0a 00 58 e1                                      cmp r8, sl
00659b10  0c 00 00 0a                                      beq #0x659b48
00659b14  24 30 98 e5                                      ldr r3, [r8, #0x24]
00659b18  20 40 98 e5                                      ldr r4, [r8, #0x20]
00659b1c  07 00 a0 e1                                      mov r0, r7
00659b20  03 10 a0 e1                                      mov r1, r3
00659b24  04 40 63 e0                                      rsb r4, r3, r4
00659b28  06 00 54 e1                                      cmp r4, r6
00659b2c  04 20 a0 b1                                      movlt r2, r4
00659b30  06 20 a0 a1                                      movge r2, r6
00659b34  a9 d2 f2 eb                                      bl #0x30e5e0
00659b38  00 00 50 e3                                      cmp r0, #0
00659b3c  04 00 00 1a                                      bne #0x659b54
00659b40  04 00 56 e1                                      cmp r6, r4
00659b44  00 00 00 ba                                      blt #0x659b4c
00659b48  08 90 a0 e1                                      mov sb, r8
00659b4c  09 00 a0 e1                                      mov r0, sb
00659b50  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00659b54  fb ff ff aa                                      bge #0x659b48
00659b58  09 00 a0 e1                                      mov r0, sb
00659b5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00659d9c, declared_size=416, range_size=416, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEESt4lessIS9_ESt4pairIKS9_PNS3_7collada8CResFileEENS_10_Select1stISH_EENS_11_MapTraitsTISH_EENS5_ISH_LS7_0EEEE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*> >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
00659d9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00659da0  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
00659da4  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
00659da8  54 d0 4d e2                                      sub sp, sp, #0x54
00659dac  02 20 8f e0                                      add r2, pc, r2
00659db0  0c 30 8d e5                                      str r3, [sp, #0xc]
00659db4  03 30 92 e7                                      ldr r3, [r2, r3]
00659db8  04 20 8d e5                                      str r2, [sp, #4]
00659dbc  08 00 8d e5                                      str r0, [sp, #8]
00659dc0  04 50 90 e5                                      ldr r5, [r0, #4]
00659dc4  00 30 93 e5                                      ldr r3, [r3]
00659dc8  01 90 a0 e1                                      mov sb, r1
00659dcc  00 00 55 e3                                      cmp r5, #0
00659dd0  4c 30 8d e5                                      str r3, [sp, #0x4c]
00659dd4  4a 00 00 0a                                      beq #0x659f04
00659dd8  00 a0 a0 e1                                      mov sl, r0
00659ddc  34 80 8d e2                                      add r8, sp, #0x34
00659de0  18 b0 8d e2                                      add fp, sp, #0x18
00659de4  00 10 99 e5                                      ldr r1, [sb]
00659de8  0b 20 a0 e1                                      mov r2, fp
00659dec  08 00 a0 e1                                      mov r0, r8
00659df0  91 30 f3 eb                                      bl #0x32603c
00659df4  24 30 95 e5                                      ldr r3, [r5, #0x24]
00659df8  48 40 9d e5                                      ldr r4, [sp, #0x48]
00659dfc  20 70 95 e5                                      ldr r7, [r5, #0x20]
00659e00  44 60 9d e5                                      ldr r6, [sp, #0x44]
00659e04  03 00 a0 e1                                      mov r0, r3
00659e08  07 70 63 e0                                      rsb r7, r3, r7
00659e0c  06 60 64 e0                                      rsb r6, r4, r6
00659e10  07 00 56 e1                                      cmp r6, r7
00659e14  06 20 a0 b1                                      movlt r2, r6
00659e18  07 20 a0 a1                                      movge r2, r7
00659e1c  04 10 a0 e1                                      mov r1, r4
00659e20  ee d1 f2 eb                                      bl #0x30e5e0
00659e24  00 30 50 e2                                      subs r3, r0, #0
00659e28  04 00 00 1a                                      bne #0x659e40
00659e2c  06 00 57 e1                                      cmp r7, r6
00659e30  00 30 e0 b3                                      mvnlt r3, #0
00659e34  01 00 00 ba                                      blt #0x659e40
00659e38  00 30 a0 d3                                      movle r3, #0
00659e3c  01 30 a0 c3                                      movgt r3, #1
00659e40  08 00 54 e1                                      cmp r4, r8
00659e44  05 00 00 0a                                      beq #0x659e60
00659e48  00 00 54 e3                                      cmp r4, #0
00659e4c  03 00 00 0a                                      beq #0x659e60
00659e50  04 00 a0 e1                                      mov r0, r4
00659e54  00 30 8d e5                                      str r3, [sp]
00659e58  7c d9 f2 eb                                      bl #0x310450
00659e5c  00 30 9d e5                                      ldr r3, [sp]
00659e60  00 00 53 e3                                      cmp r3, #0
00659e64  05 a0 a0 a1                                      movge sl, r5
00659e68  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00659e6c  08 50 95 a5                                      ldrge r5, [r5, #8]
00659e70  00 00 55 e3                                      cmp r5, #0
00659e74  da ff ff 1a                                      bne #0x659de4
00659e78  08 00 9d e5                                      ldr r0, [sp, #8]
00659e7c  00 00 5a e1                                      cmp sl, r0
00659e80  20 00 00 0a                                      beq #0x659f08
00659e84  1c 50 8d e2                                      add r5, sp, #0x1c
00659e88  00 10 99 e5                                      ldr r1, [sb]
00659e8c  14 20 8d e2                                      add r2, sp, #0x14
00659e90  05 00 a0 e1                                      mov r0, r5
00659e94  68 30 f3 eb                                      bl #0x32603c
00659e98  24 30 9a e5                                      ldr r3, [sl, #0x24]
00659e9c  30 40 9d e5                                      ldr r4, [sp, #0x30]
00659ea0  20 70 9a e5                                      ldr r7, [sl, #0x20]
00659ea4  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00659ea8  03 10 a0 e1                                      mov r1, r3
00659eac  07 70 63 e0                                      rsb r7, r3, r7
00659eb0  06 60 64 e0                                      rsb r6, r4, r6
00659eb4  06 00 57 e1                                      cmp r7, r6
00659eb8  07 20 a0 b1                                      movlt r2, r7
00659ebc  06 20 a0 a1                                      movge r2, r6
00659ec0  04 00 a0 e1                                      mov r0, r4
00659ec4  c5 d1 f2 eb                                      bl #0x30e5e0
00659ec8  00 80 50 e2                                      subs r8, r0, #0
00659ecc  04 00 00 1a                                      bne #0x659ee4
00659ed0  07 00 56 e1                                      cmp r6, r7
00659ed4  00 80 e0 b3                                      mvnlt r8, #0
00659ed8  01 00 00 ba                                      blt #0x659ee4
00659edc  00 80 a0 d3                                      movle r8, #0
00659ee0  01 80 a0 c3                                      movgt r8, #1
00659ee4  05 00 54 e1                                      cmp r4, r5
00659ee8  03 00 00 0a                                      beq #0x659efc
00659eec  00 00 54 e3                                      cmp r4, #0
00659ef0  01 00 00 0a                                      beq #0x659efc
00659ef4  04 00 a0 e1                                      mov r0, r4
00659ef8  54 d9 f2 eb                                      bl #0x310450
00659efc  00 00 58 e3                                      cmp r8, #0
00659f00  00 00 00 aa                                      bge #0x659f08
00659f04  08 a0 9d e5                                      ldr sl, [sp, #8]
00659f08  04 20 9d e5                                      ldr r2, [sp, #4]
00659f0c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00659f10  0a 00 a0 e1                                      mov r0, sl
00659f14  01 30 92 e7                                      ldr r3, [r2, r1]
00659f18  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00659f1c  00 30 93 e5                                      ldr r3, [r3]
00659f20  03 00 52 e1                                      cmp r2, r3
00659f24  01 00 00 1a                                      bne #0x659f30
00659f28  54 d0 8d e2                                      add sp, sp, #0x54
00659f2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00659f30  f6 d0 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00659f34  e4 ac 33 00 ac 40 00 00                          .byte 0xe4, 0xac, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00
