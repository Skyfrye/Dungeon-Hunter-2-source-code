; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050b598, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager9SceneNodeEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findISsEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::_M_find<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
0050b598  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0050b59c  04 40 90 e5                                      ldr r4, [r0, #4]
0050b5a0  00 a0 a0 e1                                      mov sl, r0
0050b5a4  00 90 a0 e1                                      mov sb, r0
0050b5a8  00 00 54 e3                                      cmp r4, #0
0050b5ac  29 00 00 0a                                      beq #0x50b658
0050b5b0  10 60 91 e5                                      ldr r6, [r1, #0x10]
0050b5b4  14 70 91 e5                                      ldr r7, [r1, #0x14]
0050b5b8  00 80 a0 e1                                      mov r8, r0
0050b5bc  06 60 67 e0                                      rsb r6, r7, r6
0050b5c0  05 00 00 ea                                      b #0x50b5dc
0050b5c4  06 00 55 e1                                      cmp r5, r6
0050b5c8  0f 00 00 ba                                      blt #0x50b60c
0050b5cc  04 80 a0 e1                                      mov r8, r4
0050b5d0  08 40 94 e5                                      ldr r4, [r4, #8]
0050b5d4  00 00 54 e3                                      cmp r4, #0
0050b5d8  0e 00 00 0a                                      beq #0x50b618
0050b5dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
0050b5e0  20 50 94 e5                                      ldr r5, [r4, #0x20]
0050b5e4  07 10 a0 e1                                      mov r1, r7
0050b5e8  03 00 a0 e1                                      mov r0, r3
0050b5ec  05 50 63 e0                                      rsb r5, r3, r5
0050b5f0  05 00 56 e1                                      cmp r6, r5
0050b5f4  06 20 a0 b1                                      movlt r2, r6
0050b5f8  05 20 a0 a1                                      movge r2, r5
0050b5fc  f7 0b f8 eb                                      bl #0x30e5e0
0050b600  00 00 50 e3                                      cmp r0, #0
0050b604  ee ff ff 0a                                      beq #0x50b5c4
0050b608  ef ff ff aa                                      bge #0x50b5cc
0050b60c  0c 40 94 e5                                      ldr r4, [r4, #0xc]
0050b610  00 00 54 e3                                      cmp r4, #0
0050b614  f0 ff ff 1a                                      bne #0x50b5dc
0050b618  0a 00 58 e1                                      cmp r8, sl
0050b61c  0c 00 00 0a                                      beq #0x50b654
0050b620  24 30 98 e5                                      ldr r3, [r8, #0x24]
0050b624  20 40 98 e5                                      ldr r4, [r8, #0x20]
0050b628  07 00 a0 e1                                      mov r0, r7
0050b62c  03 10 a0 e1                                      mov r1, r3
0050b630  04 40 63 e0                                      rsb r4, r3, r4
0050b634  06 00 54 e1                                      cmp r4, r6
0050b638  04 20 a0 b1                                      movlt r2, r4
0050b63c  06 20 a0 a1                                      movge r2, r6
0050b640  e6 0b f8 eb                                      bl #0x30e5e0
0050b644  00 00 50 e3                                      cmp r0, #0
0050b648  04 00 00 1a                                      bne #0x50b660
0050b64c  04 00 56 e1                                      cmp r6, r4
0050b650  00 00 00 ba                                      blt #0x50b658
0050b654  08 90 a0 e1                                      mov sb, r8
0050b658  09 00 a0 e1                                      mov r0, sb
0050b65c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0050b660  fb ff ff aa                                      bge #0x50b654
0050b664  09 00 a0 e1                                      mov r0, sb
0050b668  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
