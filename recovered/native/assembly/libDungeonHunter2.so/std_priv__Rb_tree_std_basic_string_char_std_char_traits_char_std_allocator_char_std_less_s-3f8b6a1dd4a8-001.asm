; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003291a8, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003291a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003291ac  00 40 51 e2                                      subs r4, r1, #0
003291b0  00 60 a0 e1                                      mov r6, r0
003291b4  0e 00 00 0a                                      beq #0x3291f4
003291b8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003291bc  06 00 a0 e1                                      mov r0, r6
003291c0  f8 ff ff eb                                      bl #0x3291a8
003291c4  48 00 84 e2                                      add r0, r4, #0x48
003291c8  08 50 94 e5                                      ldr r5, [r4, #8]
003291cc  f6 a9 ff eb                                      bl #0x3139ac
003291d0  30 00 84 e2                                      add r0, r4, #0x30
003291d4  f4 a9 ff eb                                      bl #0x3139ac
003291d8  10 00 84 e2                                      add r0, r4, #0x10
003291dc  f2 a9 ff eb                                      bl #0x3139ac
003291e0  04 00 a0 e1                                      mov r0, r4
003291e4  60 10 a0 e3                                      mov r1, #0x60
003291e8  44 7f 0f eb                                      bl #0x708f00
003291ec  00 40 55 e2                                      subs r4, r5, #0
003291f0  f0 ff ff 1a                                      bne #0x3291b8
003291f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0032e470, declared_size=108, range_size=108, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_create_nodeERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> const&)
; decoder-mode: arm
0032e470  30 40 2d e9                                      push {r4, r5, lr}
0032e474  0c d0 4d e2                                      sub sp, sp, #0xc
0032e478  60 30 a0 e3                                      mov r3, #0x60
0032e47c  08 00 8d e2                                      add r0, sp, #8
0032e480  04 30 20 e5                                      str r3, [r0, #-4]!
0032e484  01 50 a0 e1                                      mov r5, r1
0032e488  8c 6a 0f eb                                      bl #0x708ec0
0032e48c  05 10 a0 e1                                      mov r1, r5
0032e490  00 40 a0 e1                                      mov r4, r0
0032e494  10 00 80 e2                                      add r0, r0, #0x10
0032e498  1e f5 ff eb                                      bl #0x32b918
0032e49c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0032e4a0  20 10 85 e2                                      add r1, r5, #0x20
0032e4a4  30 00 84 e2                                      add r0, r4, #0x30
0032e4a8  28 30 84 e5                                      str r3, [r4, #0x28]
0032e4ac  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0032e4b0  2c 30 84 e5                                      str r3, [r4, #0x2c]
0032e4b4  17 f5 ff eb                                      bl #0x32b918
0032e4b8  38 10 85 e2                                      add r1, r5, #0x38
0032e4bc  48 00 84 e2                                      add r0, r4, #0x48
0032e4c0  14 f5 ff eb                                      bl #0x32b918
0032e4c4  00 30 a0 e3                                      mov r3, #0
0032e4c8  0c 30 84 e5                                      str r3, [r4, #0xc]
0032e4cc  08 30 84 e5                                      str r3, [r4, #8]
0032e4d0  04 00 a0 e1                                      mov r0, r4
0032e4d4  0c d0 8d e2                                      add sp, sp, #0xc
0032e4d8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0032e4dc, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SH_SH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0032e4dc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0032e4e0  02 00 51 e1                                      cmp r1, r2
0032e4e4  0c d0 4d e2                                      sub sp, sp, #0xc
0032e4e8  01 40 a0 e1                                      mov r4, r1
0032e4ec  02 50 a0 e1                                      mov r5, r2
0032e4f0  00 60 a0 e1                                      mov r6, r0
0032e4f4  23 00 00 0a                                      beq #0x32e588
0032e4f8  24 20 9d e5                                      ldr r2, [sp, #0x24]
0032e4fc  00 00 52 e3                                      cmp r2, #0
0032e500  12 00 00 0a                                      beq #0x32e550
0032e504  03 10 a0 e1                                      mov r1, r3
0032e508  04 00 a0 e1                                      mov r0, r4
0032e50c  d7 ff ff eb                                      bl #0x32e470
0032e510  0c 00 85 e5                                      str r0, [r5, #0xc]
0032e514  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0032e518  00 70 a0 e1                                      mov r7, r0
0032e51c  03 00 55 e1                                      cmp r5, r3
0032e520  16 00 00 0a                                      beq #0x32e580
0032e524  07 00 a0 e1                                      mov r0, r7
0032e528  04 50 87 e5                                      str r5, [r7, #4]
0032e52c  04 10 84 e2                                      add r1, r4, #4
0032e530  8a 94 ff eb                                      bl #0x313760
0032e534  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032e538  06 00 a0 e1                                      mov r0, r6
0032e53c  01 30 83 e2                                      add r3, r3, #1
0032e540  10 30 84 e5                                      str r3, [r4, #0x10]
0032e544  00 70 86 e5                                      str r7, [r6]
0032e548  0c d0 8d e2                                      add sp, sp, #0xc
0032e54c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032e550  20 20 9d e5                                      ldr r2, [sp, #0x20]
0032e554  00 00 52 e3                                      cmp r2, #0
0032e558  12 00 00 0a                                      beq #0x32e5a8
0032e55c  03 10 a0 e1                                      mov r1, r3
0032e560  04 00 a0 e1                                      mov r0, r4
0032e564  c1 ff ff eb                                      bl #0x32e470
0032e568  08 00 85 e5                                      str r0, [r5, #8]
0032e56c  08 30 94 e5                                      ldr r3, [r4, #8]
0032e570  00 70 a0 e1                                      mov r7, r0
0032e574  03 00 55 e1                                      cmp r5, r3
0032e578  08 00 84 05                                      streq r0, [r4, #8]
0032e57c  e8 ff ff ea                                      b #0x32e524
0032e580  0c 70 84 e5                                      str r7, [r4, #0xc]
0032e584  e6 ff ff ea                                      b #0x32e524
0032e588  03 10 a0 e1                                      mov r1, r3
0032e58c  04 00 a0 e1                                      mov r0, r4
0032e590  b6 ff ff eb                                      bl #0x32e470
0032e594  00 70 a0 e1                                      mov r7, r0
0032e598  08 00 84 e5                                      str r0, [r4, #8]
0032e59c  04 00 84 e5                                      str r0, [r4, #4]
0032e5a0  0c 00 84 e5                                      str r0, [r4, #0xc]
0032e5a4  de ff ff ea                                      b #0x32e524
0032e5a8  14 00 81 e2                                      add r0, r1, #0x14
0032e5ac  10 20 85 e2                                      add r2, r5, #0x10
0032e5b0  03 10 a0 e1                                      mov r1, r3
0032e5b4  04 30 8d e5                                      str r3, [sp, #4]
0032e5b8  8e 95 ff eb                                      bl #0x313bf8
0032e5bc  00 00 50 e3                                      cmp r0, #0
0032e5c0  04 30 9d e5                                      ldr r3, [sp, #4]
0032e5c4  ce ff ff 0a                                      beq #0x32e504
0032e5c8  e3 ff ff ea                                      b #0x32e55c

; FUNCTION 0x0032e5cc, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> const&)
; decoder-mode: arm
0032e5cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032e5d0  04 50 91 e5                                      ldr r5, [r1, #4]
0032e5d4  14 d0 4d e2                                      sub sp, sp, #0x14
0032e5d8  01 90 a0 e1                                      mov sb, r1
0032e5dc  00 00 55 e3                                      cmp r5, #0
0032e5e0  00 40 a0 e1                                      mov r4, r0
0032e5e4  02 80 a0 e1                                      mov r8, r2
0032e5e8  38 00 00 0a                                      beq #0x32e6d0
0032e5ec  14 70 92 e5                                      ldr r7, [r2, #0x14]
0032e5f0  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0032e5f4  0b a0 67 e0                                      rsb sl, r7, fp
0032e5f8  04 00 00 ea                                      b #0x32e610
0032e5fc  08 30 95 e5                                      ldr r3, [r5, #8]
0032e600  01 10 a0 e3                                      mov r1, #1
0032e604  00 00 53 e3                                      cmp r3, #0
0032e608  16 00 00 0a                                      beq #0x32e668
0032e60c  03 50 a0 e1                                      mov r5, r3
0032e610  24 30 95 e5                                      ldr r3, [r5, #0x24]
0032e614  20 60 95 e5                                      ldr r6, [r5, #0x20]
0032e618  07 00 a0 e1                                      mov r0, r7
0032e61c  03 10 a0 e1                                      mov r1, r3
0032e620  06 60 63 e0                                      rsb r6, r3, r6
0032e624  0a 00 56 e1                                      cmp r6, sl
0032e628  06 20 a0 b1                                      movlt r2, r6
0032e62c  0a 20 a0 a1                                      movge r2, sl
0032e630  ea 7f ff eb                                      bl #0x30e5e0
0032e634  00 00 50 e3                                      cmp r0, #0
0032e638  05 20 a0 e1                                      mov r2, r5
0032e63c  03 00 00 1a                                      bne #0x32e650
0032e640  06 00 5a e1                                      cmp sl, r6
0032e644  ec ff ff ba                                      blt #0x32e5fc
0032e648  00 00 a0 d3                                      movle r0, #0
0032e64c  01 00 a0 c3                                      movgt r0, #1
0032e650  00 00 50 e3                                      cmp r0, #0
0032e654  e8 ff ff ba                                      blt #0x32e5fc
0032e658  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0032e65c  00 10 a0 e3                                      mov r1, #0
0032e660  00 00 53 e3                                      cmp r3, #0
0032e664  e8 ff ff 1a                                      bne #0x32e60c
0032e668  00 00 51 e3                                      cmp r1, #0
0032e66c  05 a0 a0 01                                      moveq sl, r5
0032e670  17 00 00 1a                                      bne #0x32e6d4
0032e674  24 00 92 e5                                      ldr r0, [r2, #0x24]
0032e678  20 60 92 e5                                      ldr r6, [r2, #0x20]
0032e67c  0b b0 67 e0                                      rsb fp, r7, fp
0032e680  07 10 a0 e1                                      mov r1, r7
0032e684  06 60 60 e0                                      rsb r6, r0, r6
0032e688  06 00 5b e1                                      cmp fp, r6
0032e68c  0b 20 a0 b1                                      movlt r2, fp
0032e690  06 20 a0 a1                                      movge r2, r6
0032e694  d1 7f ff eb                                      bl #0x30e5e0
0032e698  00 00 50 e3                                      cmp r0, #0
0032e69c  03 00 00 1a                                      bne #0x32e6b0
0032e6a0  0b 00 56 e1                                      cmp r6, fp
0032e6a4  20 00 00 ba                                      blt #0x32e72c
0032e6a8  00 00 a0 d3                                      movle r0, #0
0032e6ac  01 00 a0 c3                                      movgt r0, #1
0032e6b0  00 00 50 e3                                      cmp r0, #0
0032e6b4  00 30 a0 a3                                      movge r3, #0
0032e6b8  00 a0 84 a5                                      strge sl, [r4]
0032e6bc  04 30 c4 a5                                      strbge r3, [r4, #4]
0032e6c0  19 00 00 ba                                      blt #0x32e72c
0032e6c4  04 00 a0 e1                                      mov r0, r4
0032e6c8  14 d0 8d e2                                      add sp, sp, #0x14
0032e6cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032e6d0  01 50 a0 e1                                      mov r5, r1
0032e6d4  08 30 99 e5                                      ldr r3, [sb, #8]
0032e6d8  03 00 55 e1                                      cmp r5, r3
0032e6dc  32 00 00 0a                                      beq #0x32e7ac
0032e6e0  00 30 d5 e5                                      ldrb r3, [r5]
0032e6e4  00 00 53 e3                                      cmp r3, #0
0032e6e8  03 00 00 1a                                      bne #0x32e6fc
0032e6ec  04 30 95 e5                                      ldr r3, [r5, #4]
0032e6f0  04 30 93 e5                                      ldr r3, [r3, #4]
0032e6f4  03 00 55 e1                                      cmp r5, r3
0032e6f8  26 00 00 0a                                      beq #0x32e798
0032e6fc  08 20 95 e5                                      ldr r2, [r5, #8]
0032e700  00 00 52 e3                                      cmp r2, #0
0032e704  01 00 00 1a                                      bne #0x32e710
0032e708  14 00 00 ea                                      b #0x32e760
0032e70c  03 20 a0 e1                                      mov r2, r3
0032e710  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0032e714  00 00 53 e3                                      cmp r3, #0
0032e718  fb ff ff 1a                                      bne #0x32e70c
0032e71c  02 a0 a0 e1                                      mov sl, r2
0032e720  14 70 98 e5                                      ldr r7, [r8, #0x14]
0032e724  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0032e728  d1 ff ff ea                                      b #0x32e674
0032e72c  00 c0 a0 e3                                      mov ip, #0
0032e730  05 20 a0 e1                                      mov r2, r5
0032e734  08 30 a0 e1                                      mov r3, r8
0032e738  09 10 a0 e1                                      mov r1, sb
0032e73c  08 00 8d e2                                      add r0, sp, #8
0032e740  04 c0 8d e5                                      str ip, [sp, #4]
0032e744  00 c0 8d e5                                      str ip, [sp]
0032e748  63 ff ff eb                                      bl #0x32e4dc
0032e74c  08 30 9d e5                                      ldr r3, [sp, #8]
0032e750  01 20 a0 e3                                      mov r2, #1
0032e754  04 20 c4 e5                                      strb r2, [r4, #4]
0032e758  00 30 84 e5                                      str r3, [r4]
0032e75c  d8 ff ff ea                                      b #0x32e6c4
0032e760  04 30 95 e5                                      ldr r3, [r5, #4]
0032e764  08 20 93 e5                                      ldr r2, [r3, #8]
0032e768  02 00 55 e1                                      cmp r5, r2
0032e76c  01 00 00 0a                                      beq #0x32e778
0032e770  19 00 00 ea                                      b #0x32e7dc
0032e774  02 30 a0 e1                                      mov r3, r2
0032e778  04 20 93 e5                                      ldr r2, [r3, #4]
0032e77c  08 10 92 e5                                      ldr r1, [r2, #8]
0032e780  03 00 51 e1                                      cmp r1, r3
0032e784  fa ff ff 0a                                      beq #0x32e774
0032e788  14 70 98 e5                                      ldr r7, [r8, #0x14]
0032e78c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0032e790  02 a0 a0 e1                                      mov sl, r2
0032e794  b6 ff ff ea                                      b #0x32e674
0032e798  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0032e79c  14 70 98 e5                                      ldr r7, [r8, #0x14]
0032e7a0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0032e7a4  02 a0 a0 e1                                      mov sl, r2
0032e7a8  b1 ff ff ea                                      b #0x32e674
0032e7ac  05 20 a0 e1                                      mov r2, r5
0032e7b0  08 30 a0 e1                                      mov r3, r8
0032e7b4  00 c0 a0 e3                                      mov ip, #0
0032e7b8  09 10 a0 e1                                      mov r1, sb
0032e7bc  0c 00 8d e2                                      add r0, sp, #0xc
0032e7c0  20 10 8d e8                                      stm sp, {r5, ip}
0032e7c4  44 ff ff eb                                      bl #0x32e4dc
0032e7c8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0032e7cc  01 20 a0 e3                                      mov r2, #1
0032e7d0  04 20 c4 e5                                      strb r2, [r4, #4]
0032e7d4  00 30 84 e5                                      str r3, [r4]
0032e7d8  b9 ff ff ea                                      b #0x32e6c4
0032e7dc  03 20 a0 e1                                      mov r2, r3
0032e7e0  cd ff ff ea                                      b #0x32e71c

; FUNCTION 0x0032e7e4, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueENS_17_Rb_tree_iteratorIS9_SD_EERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> const&)
; decoder-mode: arm
0032e7e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032e7e8  44 d0 4d e2                                      sub sp, sp, #0x44
0032e7ec  14 20 8d e5                                      str r2, [sp, #0x14]
0032e7f0  00 50 92 e5                                      ldr r5, [r2]
0032e7f4  08 20 91 e5                                      ldr r2, [r1, #8]
0032e7f8  01 60 a0 e1                                      mov r6, r1
0032e7fc  00 70 a0 e1                                      mov r7, r0
0032e800  02 00 55 e1                                      cmp r5, r2
0032e804  03 80 a0 e1                                      mov r8, r3
0032e808  7c 00 00 0a                                      beq #0x32ea00
0032e80c  01 00 55 e1                                      cmp r5, r1
0032e810  d0 00 00 0a                                      beq #0x32eb58
0032e814  00 30 d5 e5                                      ldrb r3, [r5]
0032e818  00 00 53 e3                                      cmp r3, #0
0032e81c  35 00 00 0a                                      beq #0x32e8f8
0032e820  08 40 95 e5                                      ldr r4, [r5, #8]
0032e824  00 00 54 e3                                      cmp r4, #0
0032e828  01 00 00 1a                                      bne #0x32e834
0032e82c  39 00 00 ea                                      b #0x32e918
0032e830  03 40 a0 e1                                      mov r4, r3
0032e834  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0032e838  00 00 53 e3                                      cmp r3, #0
0032e83c  fb ff ff 1a                                      bne #0x32e830
0032e840  24 30 95 e5                                      ldr r3, [r5, #0x24]
0032e844  14 90 98 e5                                      ldr sb, [r8, #0x14]
0032e848  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0032e84c  20 20 95 e5                                      ldr r2, [r5, #0x20]
0032e850  03 10 a0 e1                                      mov r1, r3
0032e854  0b b0 69 e0                                      rsb fp, sb, fp
0032e858  02 20 63 e0                                      rsb r2, r3, r2
0032e85c  18 20 8d e5                                      str r2, [sp, #0x18]
0032e860  09 00 a0 e1                                      mov r0, sb
0032e864  0b 00 52 e1                                      cmp r2, fp
0032e868  0b 20 a0 a1                                      movge r2, fp
0032e86c  0c 30 8d e5                                      str r3, [sp, #0xc]
0032e870  1c 20 8d e5                                      str r2, [sp, #0x1c]
0032e874  59 7f ff eb                                      bl #0x30e5e0
0032e878  00 00 50 e3                                      cmp r0, #0
0032e87c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0032e880  05 00 00 1a                                      bne #0x32e89c
0032e884  18 20 9d e5                                      ldr r2, [sp, #0x18]
0032e888  02 00 5b e1                                      cmp fp, r2
0032e88c  00 00 e0 b3                                      mvnlt r0, #0
0032e890  01 00 00 ba                                      blt #0x32e89c
0032e894  00 00 a0 d3                                      movle r0, #0
0032e898  01 00 a0 c3                                      movgt r0, #1
0032e89c  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0032e8a0  28 00 00 1a                                      bne #0x32e948
0032e8a4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0032e8a8  00 00 54 e3                                      cmp r4, #0
0032e8ac  01 00 00 1a                                      bne #0x32e8b8
0032e8b0  cc 00 00 ea                                      b #0x32ebe8
0032e8b4  02 40 a0 e1                                      mov r4, r2
0032e8b8  08 20 94 e5                                      ldr r2, [r4, #8]
0032e8bc  00 00 52 e3                                      cmp r2, #0
0032e8c0  fb ff ff 1a                                      bne #0x32e8b4
0032e8c4  00 00 5c e3                                      cmp ip, #0
0032e8c8  43 00 00 1a                                      bne #0x32e9dc
0032e8cc  03 00 a0 e1                                      mov r0, r3
0032e8d0  09 10 a0 e1                                      mov r1, sb
0032e8d4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0032e8d8  40 7f ff eb                                      bl #0x30e5e0
0032e8dc  00 00 50 e3                                      cmp r0, #0
0032e8e0  34 00 00 1a                                      bne #0x32e9b8
0032e8e4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0032e8e8  03 00 5b e1                                      cmp fp, r3
0032e8ec  32 00 00 ca                                      bgt #0x32e9bc
0032e8f0  00 50 87 e5                                      str r5, [r7]
0032e8f4  3e 00 00 ea                                      b #0x32e9f4
0032e8f8  04 30 95 e5                                      ldr r3, [r5, #4]
0032e8fc  04 30 93 e5                                      ldr r3, [r3, #4]
0032e900  03 00 55 e1                                      cmp r5, r3
0032e904  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0032e908  cc ff ff 0a                                      beq #0x32e840
0032e90c  08 40 95 e5                                      ldr r4, [r5, #8]
0032e910  00 00 54 e3                                      cmp r4, #0
0032e914  c6 ff ff 1a                                      bne #0x32e834
0032e918  04 40 95 e5                                      ldr r4, [r5, #4]
0032e91c  08 30 94 e5                                      ldr r3, [r4, #8]
0032e920  03 00 55 e1                                      cmp r5, r3
0032e924  01 00 00 0a                                      beq #0x32e930
0032e928  c4 ff ff ea                                      b #0x32e840
0032e92c  03 40 a0 e1                                      mov r4, r3
0032e930  04 30 94 e5                                      ldr r3, [r4, #4]
0032e934  08 20 93 e5                                      ldr r2, [r3, #8]
0032e938  04 00 52 e1                                      cmp r2, r4
0032e93c  fa ff ff 0a                                      beq #0x32e92c
0032e940  03 40 a0 e1                                      mov r4, r3
0032e944  bd ff ff ea                                      b #0x32e840
0032e948  24 20 94 e5                                      ldr r2, [r4, #0x24]
0032e94c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0032e950  09 10 a0 e1                                      mov r1, sb
0032e954  02 00 a0 e1                                      mov r0, r2
0032e958  0a a0 62 e0                                      rsb sl, r2, sl
0032e95c  0a 00 5b e1                                      cmp fp, sl
0032e960  0b 20 a0 b1                                      movlt r2, fp
0032e964  0a 20 a0 a1                                      movge r2, sl
0032e968  0c 30 8d e5                                      str r3, [sp, #0xc]
0032e96c  10 c0 8d e5                                      str ip, [sp, #0x10]
0032e970  1a 7f ff eb                                      bl #0x30e5e0
0032e974  00 00 50 e3                                      cmp r0, #0
0032e978  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0032e97c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0032e980  6f 00 00 1a                                      bne #0x32eb44
0032e984  0a 00 5b e1                                      cmp fp, sl
0032e988  c5 ff ff da                                      ble #0x32e8a4
0032e98c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0032e990  00 00 5c e3                                      cmp ip, #0
0032e994  62 00 00 0a                                      beq #0x32eb24
0032e998  00 c0 a0 e3                                      mov ip, #0
0032e99c  06 10 a0 e1                                      mov r1, r6
0032e9a0  05 20 a0 e1                                      mov r2, r5
0032e9a4  08 30 a0 e1                                      mov r3, r8
0032e9a8  07 00 a0 e1                                      mov r0, r7
0032e9ac  20 10 8d e8                                      stm sp, {r5, ip}
0032e9b0  c9 fe ff eb                                      bl #0x32e4dc
0032e9b4  0e 00 00 ea                                      b #0x32e9f4
0032e9b8  cc ff ff aa                                      bge #0x32e8f0
0032e9bc  04 00 56 e1                                      cmp r6, r4
0032e9c0  9b 00 00 0a                                      beq #0x32ec34
0032e9c4  14 00 86 e2                                      add r0, r6, #0x14
0032e9c8  08 10 a0 e1                                      mov r1, r8
0032e9cc  10 20 84 e2                                      add r2, r4, #0x10
0032e9d0  88 94 ff eb                                      bl #0x313bf8
0032e9d4  00 00 50 e3                                      cmp r0, #0
0032e9d8  93 00 00 1a                                      bne #0x32ec2c
0032e9dc  06 10 a0 e1                                      mov r1, r6
0032e9e0  08 20 a0 e1                                      mov r2, r8
0032e9e4  20 00 8d e2                                      add r0, sp, #0x20
0032e9e8  f7 fe ff eb                                      bl #0x32e5cc
0032e9ec  20 30 9d e5                                      ldr r3, [sp, #0x20]
0032e9f0  00 30 87 e5                                      str r3, [r7]
0032e9f4  07 00 a0 e1                                      mov r0, r7
0032e9f8  44 d0 8d e2                                      add sp, sp, #0x44
0032e9fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032ea00  10 30 91 e5                                      ldr r3, [r1, #0x10]
0032ea04  00 00 53 e3                                      cmp r3, #0
0032ea08  9f 00 00 0a                                      beq #0x32ec8c
0032ea0c  14 30 98 e5                                      ldr r3, [r8, #0x14]
0032ea10  24 10 95 e5                                      ldr r1, [r5, #0x24]
0032ea14  10 40 98 e5                                      ldr r4, [r8, #0x10]
0032ea18  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0032ea1c  03 00 a0 e1                                      mov r0, r3
0032ea20  04 40 63 e0                                      rsb r4, r3, r4
0032ea24  0a a0 61 e0                                      rsb sl, r1, sl
0032ea28  04 00 5a e1                                      cmp sl, r4
0032ea2c  0a 20 a0 b1                                      movlt r2, sl
0032ea30  04 20 a0 a1                                      movge r2, r4
0032ea34  e9 7e ff eb                                      bl #0x30e5e0
0032ea38  00 00 50 e3                                      cmp r0, #0
0032ea3c  03 00 00 1a                                      bne #0x32ea50
0032ea40  0a 00 54 e1                                      cmp r4, sl
0032ea44  d3 ff ff ba                                      blt #0x32e998
0032ea48  00 00 a0 d3                                      movle r0, #0
0032ea4c  01 00 a0 c3                                      movgt r0, #1
0032ea50  00 00 50 e3                                      cmp r0, #0
0032ea54  cf ff ff ba                                      blt #0x32e998
0032ea58  14 a0 86 e2                                      add sl, r6, #0x14
0032ea5c  10 10 85 e2                                      add r1, r5, #0x10
0032ea60  0a 00 a0 e1                                      mov r0, sl
0032ea64  08 20 a0 e1                                      mov r2, r8
0032ea68  62 94 ff eb                                      bl #0x313bf8
0032ea6c  00 00 50 e3                                      cmp r0, #0
0032ea70  81 00 00 0a                                      beq #0x32ec7c
0032ea74  14 30 9d e5                                      ldr r3, [sp, #0x14]
0032ea78  00 c0 93 e5                                      ldr ip, [r3]
0032ea7c  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0032ea80  00 00 54 e3                                      cmp r4, #0
0032ea84  22 00 00 1a                                      bne #0x32eb14
0032ea88  04 30 9c e5                                      ldr r3, [ip, #4]
0032ea8c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0032ea90  02 00 5c e1                                      cmp ip, r2
0032ea94  0c 40 a0 11                                      movne r4, ip
0032ea98  04 00 00 1a                                      bne #0x32eab0
0032ea9c  03 40 a0 e1                                      mov r4, r3
0032eaa0  04 30 93 e5                                      ldr r3, [r3, #4]
0032eaa4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0032eaa8  04 00 52 e1                                      cmp r2, r4
0032eaac  fa ff ff 0a                                      beq #0x32ea9c
0032eab0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0032eab4  02 00 53 e1                                      cmp r3, r2
0032eab8  03 40 a0 11                                      movne r4, r3
0032eabc  04 00 56 e1                                      cmp r6, r4
0032eac0  7f 00 00 0a                                      beq #0x32ecc4
0032eac4  0a 00 a0 e1                                      mov r0, sl
0032eac8  08 10 a0 e1                                      mov r1, r8
0032eacc  10 20 84 e2                                      add r2, r4, #0x10
0032ead0  48 94 ff eb                                      bl #0x313bf8
0032ead4  00 00 50 e3                                      cmp r0, #0
0032ead8  60 00 00 0a                                      beq #0x32ec60
0032eadc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0032eae0  00 c0 92 e5                                      ldr ip, [r2]
0032eae4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0032eae8  00 00 5e e3                                      cmp lr, #0
0032eaec  6c 00 00 0a                                      beq #0x32eca4
0032eaf0  00 c0 a0 e3                                      mov ip, #0
0032eaf4  06 10 a0 e1                                      mov r1, r6
0032eaf8  04 20 a0 e1                                      mov r2, r4
0032eafc  08 30 a0 e1                                      mov r3, r8
0032eb00  07 00 a0 e1                                      mov r0, r7
0032eb04  10 10 8d e8                                      stm sp, {r4, ip}
0032eb08  73 fe ff eb                                      bl #0x32e4dc
0032eb0c  b8 ff ff ea                                      b #0x32e9f4
0032eb10  03 40 a0 e1                                      mov r4, r3
0032eb14  08 30 94 e5                                      ldr r3, [r4, #8]
0032eb18  00 00 53 e3                                      cmp r3, #0
0032eb1c  fb ff ff 1a                                      bne #0x32eb10
0032eb20  e5 ff ff ea                                      b #0x32eabc
0032eb24  06 10 a0 e1                                      mov r1, r6
0032eb28  04 20 a0 e1                                      mov r2, r4
0032eb2c  08 30 a0 e1                                      mov r3, r8
0032eb30  07 00 a0 e1                                      mov r0, r7
0032eb34  00 c0 8d e5                                      str ip, [sp]
0032eb38  04 40 8d e5                                      str r4, [sp, #4]
0032eb3c  66 fe ff eb                                      bl #0x32e4dc
0032eb40  ab ff ff ea                                      b #0x32e9f4
0032eb44  56 ff ff aa                                      bge #0x32e8a4
0032eb48  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0032eb4c  00 00 5c e3                                      cmp ip, #0
0032eb50  90 ff ff 1a                                      bne #0x32e998
0032eb54  f2 ff ff ea                                      b #0x32eb24
0032eb58  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0032eb5c  14 10 93 e5                                      ldr r1, [r3, #0x14]
0032eb60  10 90 93 e5                                      ldr sb, [r3, #0x10]
0032eb64  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0032eb68  24 30 94 e5                                      ldr r3, [r4, #0x24]
0032eb6c  09 90 61 e0                                      rsb sb, r1, sb
0032eb70  0a a0 63 e0                                      rsb sl, r3, sl
0032eb74  0a 00 59 e1                                      cmp sb, sl
0032eb78  09 20 a0 b1                                      movlt r2, sb
0032eb7c  0a 20 a0 a1                                      movge r2, sl
0032eb80  03 00 a0 e1                                      mov r0, r3
0032eb84  95 7e ff eb                                      bl #0x30e5e0
0032eb88  00 00 50 e3                                      cmp r0, #0
0032eb8c  03 00 00 1a                                      bne #0x32eba0
0032eb90  09 00 5a e1                                      cmp sl, sb
0032eb94  03 00 00 ba                                      blt #0x32eba8
0032eb98  00 00 a0 d3                                      movle r0, #0
0032eb9c  01 00 a0 c3                                      movgt r0, #1
0032eba0  00 00 50 e3                                      cmp r0, #0
0032eba4  08 00 00 aa                                      bge #0x32ebcc
0032eba8  00 c0 a0 e3                                      mov ip, #0
0032ebac  06 10 a0 e1                                      mov r1, r6
0032ebb0  04 20 a0 e1                                      mov r2, r4
0032ebb4  08 30 a0 e1                                      mov r3, r8
0032ebb8  07 00 a0 e1                                      mov r0, r7
0032ebbc  00 c0 8d e5                                      str ip, [sp]
0032ebc0  04 50 8d e5                                      str r5, [sp, #4]
0032ebc4  44 fe ff eb                                      bl #0x32e4dc
0032ebc8  89 ff ff ea                                      b #0x32e9f4
0032ebcc  06 10 a0 e1                                      mov r1, r6
0032ebd0  08 20 a0 e1                                      mov r2, r8
0032ebd4  28 00 8d e2                                      add r0, sp, #0x28
0032ebd8  7b fe ff eb                                      bl #0x32e5cc
0032ebdc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0032ebe0  00 30 87 e5                                      str r3, [r7]
0032ebe4  82 ff ff ea                                      b #0x32e9f4
0032ebe8  04 20 95 e5                                      ldr r2, [r5, #4]
0032ebec  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0032ebf0  01 00 55 e1                                      cmp r5, r1
0032ebf4  05 40 a0 11                                      movne r4, r5
0032ebf8  04 00 00 0a                                      beq #0x32ec10
0032ebfc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0032ec00  01 00 52 e1                                      cmp r2, r1
0032ec04  02 40 a0 11                                      movne r4, r2
0032ec08  2d ff ff ea                                      b #0x32e8c4
0032ec0c  01 20 a0 e1                                      mov r2, r1
0032ec10  04 10 92 e5                                      ldr r1, [r2, #4]
0032ec14  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0032ec18  02 00 50 e1                                      cmp r0, r2
0032ec1c  fa ff ff 0a                                      beq #0x32ec0c
0032ec20  02 40 a0 e1                                      mov r4, r2
0032ec24  01 20 a0 e1                                      mov r2, r1
0032ec28  f3 ff ff ea                                      b #0x32ebfc
0032ec2c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0032ec30  00 50 92 e5                                      ldr r5, [r2]
0032ec34  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0032ec38  00 00 5c e3                                      cmp ip, #0
0032ec3c  ab ff ff 1a                                      bne #0x32eaf0
0032ec40  06 10 a0 e1                                      mov r1, r6
0032ec44  05 20 a0 e1                                      mov r2, r5
0032ec48  08 30 a0 e1                                      mov r3, r8
0032ec4c  07 00 a0 e1                                      mov r0, r7
0032ec50  00 c0 8d e5                                      str ip, [sp]
0032ec54  04 50 8d e5                                      str r5, [sp, #4]
0032ec58  1f fe ff eb                                      bl #0x32e4dc
0032ec5c  64 ff ff ea                                      b #0x32e9f4
0032ec60  06 10 a0 e1                                      mov r1, r6
0032ec64  08 20 a0 e1                                      mov r2, r8
0032ec68  30 00 8d e2                                      add r0, sp, #0x30
0032ec6c  56 fe ff eb                                      bl #0x32e5cc
0032ec70  30 30 9d e5                                      ldr r3, [sp, #0x30]
0032ec74  00 30 87 e5                                      str r3, [r7]
0032ec78  5d ff ff ea                                      b #0x32e9f4
0032ec7c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0032ec80  00 30 92 e5                                      ldr r3, [r2]
0032ec84  00 30 87 e5                                      str r3, [r7]
0032ec88  59 ff ff ea                                      b #0x32e9f4
0032ec8c  08 20 a0 e1                                      mov r2, r8
0032ec90  38 00 8d e2                                      add r0, sp, #0x38
0032ec94  4c fe ff eb                                      bl #0x32e5cc
0032ec98  38 30 9d e5                                      ldr r3, [sp, #0x38]
0032ec9c  00 30 87 e5                                      str r3, [r7]
0032eca0  53 ff ff ea                                      b #0x32e9f4
0032eca4  06 10 a0 e1                                      mov r1, r6
0032eca8  0c 20 a0 e1                                      mov r2, ip
0032ecac  08 30 a0 e1                                      mov r3, r8
0032ecb0  07 00 a0 e1                                      mov r0, r7
0032ecb4  00 e0 8d e5                                      str lr, [sp]
0032ecb8  04 c0 8d e5                                      str ip, [sp, #4]
0032ecbc  06 fe ff eb                                      bl #0x32e4dc
0032ecc0  4b ff ff ea                                      b #0x32e9f4
0032ecc4  00 e0 a0 e3                                      mov lr, #0
0032ecc8  06 10 a0 e1                                      mov r1, r6
0032eccc  0c 20 a0 e1                                      mov r2, ip
0032ecd0  08 30 a0 e1                                      mov r3, r8
0032ecd4  07 00 a0 e1                                      mov r0, r7
0032ecd8  00 e0 8d e5                                      str lr, [sp]
0032ecdc  04 c0 8d e5                                      str ip, [sp, #4]
0032ece0  fd fd ff eb                                      bl #0x32e4dc
0032ece4  42 ff ff ea                                      b #0x32e9f4
