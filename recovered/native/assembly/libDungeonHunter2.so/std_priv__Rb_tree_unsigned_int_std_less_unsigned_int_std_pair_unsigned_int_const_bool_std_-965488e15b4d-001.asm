; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008022c8, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, bool>, std::priv::_Select1st<std::pair<unsigned int const, bool> >, std::priv::_MapTraitsT<std::pair<unsigned int const, bool> >, std::allocator<std::pair<unsigned int const, bool> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, bool>, std::priv::_Select1st<std::pair<unsigned int const, bool> >, std::priv::_MapTraitsT<std::pair<unsigned int const, bool> >, std::allocator<std::pair<unsigned int const, bool> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
008022c8  70 40 2d e9                                      push {r4, r5, r6, lr}
008022cc  00 40 51 e2                                      subs r4, r1, #0
008022d0  00 60 a0 e1                                      mov r6, r0
008022d4  08 00 00 0a                                      beq #0x8022fc
008022d8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
008022dc  06 00 a0 e1                                      mov r0, r6
008022e0  f8 ff ff eb                                      bl #0x8022c8
008022e4  08 50 94 e5                                      ldr r5, [r4, #8]
008022e8  04 00 a0 e1                                      mov r0, r4
008022ec  18 10 a0 e3                                      mov r1, #0x18
008022f0  10 f0 02 eb                                      bl #0x8be338
008022f4  00 40 55 e2                                      subs r4, r5, #0
008022f8  f6 ff ff 1a                                      bne #0x8022d8
008022fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008023fc, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, bool>, std::priv::_Select1st<std::pair<unsigned int const, bool> >, std::priv::_MapTraitsT<std::pair<unsigned int const, bool> >, std::allocator<std::pair<unsigned int const, bool> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE5eraseENS_17_Rb_tree_iteratorIS5_S9_EE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, bool>, std::priv::_Select1st<std::pair<unsigned int const, bool> >, std::priv::_MapTraitsT<std::pair<unsigned int const, bool> >, std::allocator<std::pair<unsigned int const, bool> > >::erase(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, bool>, std::priv::_MapTraitsT<std::pair<unsigned int const, bool> > >)
; decoder-mode: arm
008023fc  10 40 2d e9                                      push {r4, lr}
00802400  00 40 a0 e1                                      mov r4, r0
00802404  08 20 84 e2                                      add r2, r4, #8
00802408  00 00 91 e5                                      ldr r0, [r1]
0080240c  0c 30 84 e2                                      add r3, r4, #0xc
00802410  04 10 84 e2                                      add r1, r4, #4
00802414  fa ce ec eb                                      bl #0x336004
00802418  00 00 50 e3                                      cmp r0, #0
0080241c  01 00 00 0a                                      beq #0x802428
00802420  18 10 a0 e3                                      mov r1, #0x18
00802424  c3 ef 02 eb                                      bl #0x8be338
00802428  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080242c  01 30 43 e2                                      sub r3, r3, #1
00802430  10 30 84 e5                                      str r3, [r4, #0x10]
00802434  10 80 bd e8                                      pop {r4, pc}
