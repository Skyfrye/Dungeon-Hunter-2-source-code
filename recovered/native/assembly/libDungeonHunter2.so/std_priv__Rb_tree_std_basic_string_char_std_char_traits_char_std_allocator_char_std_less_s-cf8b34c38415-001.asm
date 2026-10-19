; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050a7e8, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPN6glitch5scene10ISceneNodeEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::scene::ISceneNode*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0050a7e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0050a7ec  00 40 51 e2                                      subs r4, r1, #0
0050a7f0  00 60 a0 e1                                      mov r6, r0
0050a7f4  06 00 00 1a                                      bne #0x50a814
0050a7f8  1a 00 00 ea                                      b #0x50a868
0050a7fc  bf f9 07 eb                                      bl #0x708f00
0050a800  04 00 a0 e1                                      mov r0, r4
0050a804  2c 10 a0 e3                                      mov r1, #0x2c
0050a808  bc f9 07 eb                                      bl #0x708f00
0050a80c  00 40 55 e2                                      subs r4, r5, #0
0050a810  14 00 00 0a                                      beq #0x50a868
0050a814  06 00 a0 e1                                      mov r0, r6
0050a818  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0050a81c  f1 ff ff eb                                      bl #0x50a7e8
0050a820  10 20 84 e2                                      add r2, r4, #0x10
0050a824  14 30 92 e5                                      ldr r3, [r2, #0x14]
0050a828  08 50 94 e5                                      ldr r5, [r4, #8]
0050a82c  02 00 53 e1                                      cmp r3, r2
0050a830  03 00 a0 e1                                      mov r0, r3
0050a834  f1 ff ff 0a                                      beq #0x50a800
0050a838  00 00 53 e3                                      cmp r3, #0
0050a83c  ef ff ff 0a                                      beq #0x50a800
0050a840  00 10 92 e5                                      ldr r1, [r2]
0050a844  01 10 63 e0                                      rsb r1, r3, r1
0050a848  80 00 51 e3                                      cmp r1, #0x80
0050a84c  ea ff ff 9a                                      bls #0x50a7fc
0050a850  fa 16 f8 eb                                      bl #0x310440
0050a854  04 00 a0 e1                                      mov r0, r4
0050a858  2c 10 a0 e3                                      mov r1, #0x2c
0050a85c  a7 f9 07 eb                                      bl #0x708f00
0050a860  00 40 55 e2                                      subs r4, r5, #0
0050a864  ea ff ff 1a                                      bne #0x50a814
0050a868  70 80 bd e8                                      pop {r4, r5, r6, pc}
