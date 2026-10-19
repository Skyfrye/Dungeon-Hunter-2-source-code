; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510d78, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsS5_ISsP8PropertyS2_SaIS3_IS4_S7_EEES2_SaIS3_IS4_SA_EEEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00510d78  70 40 2d e9                                      push {r4, r5, r6, lr}
00510d7c  00 40 51 e2                                      subs r4, r1, #0
00510d80  00 60 a0 e1                                      mov r6, r0
00510d84  0a 00 00 0a                                      beq #0x510db4
00510d88  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00510d8c  06 00 a0 e1                                      mov r0, r6
00510d90  f8 ff ff eb                                      bl #0x510d78
00510d94  08 50 94 e5                                      ldr r5, [r4, #8]
00510d98  10 00 84 e2                                      add r0, r4, #0x10
00510d9c  df ff ff eb                                      bl #0x510d20
00510da0  04 00 a0 e1                                      mov r0, r4
00510da4  40 10 a0 e3                                      mov r1, #0x40
00510da8  54 e0 07 eb                                      bl #0x708f00
00510dac  00 40 55 e2                                      subs r4, r5, #0
00510db0  f4 ff ff 1a                                      bne #0x510d88
00510db4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00511408, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsS5_ISsP8PropertyS2_SaIS3_IS4_S7_EEES2_SaIS3_IS4_SA_EEEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE14_M_create_nodeERKSE_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > const&)
; decoder-mode: arm
00511408  30 40 2d e9                                      push {r4, r5, lr}
0051140c  0c d0 4d e2                                      sub sp, sp, #0xc
00511410  40 30 a0 e3                                      mov r3, #0x40
00511414  08 00 8d e2                                      add r0, sp, #8
00511418  04 30 20 e5                                      str r3, [r0, #-4]!
0051141c  01 50 a0 e1                                      mov r5, r1
00511420  a6 de 07 eb                                      bl #0x708ec0
00511424  05 10 a0 e1                                      mov r1, r5
00511428  00 40 a0 e1                                      mov r4, r0
0051142c  10 00 80 e2                                      add r0, r0, #0x10
00511430  38 69 f8 eb                                      bl #0x32b918
00511434  18 10 85 e2                                      add r1, r5, #0x18
00511438  28 00 84 e2                                      add r0, r4, #0x28
0051143c  d3 ff ff eb                                      bl #0x511390
00511440  00 30 a0 e3                                      mov r3, #0
00511444  0c 30 84 e5                                      str r3, [r4, #0xc]
00511448  08 30 84 e5                                      str r3, [r4, #8]
0051144c  04 00 a0 e1                                      mov r0, r4
00511450  0c d0 8d e2                                      add sp, sp, #0xc
00511454  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00511458, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsS5_ISsP8PropertyS2_SaIS3_IS4_S7_EEES2_SaIS3_IS4_SA_EEEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSE_SM_SM_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00511458  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0051145c  02 00 51 e1                                      cmp r1, r2
00511460  0c d0 4d e2                                      sub sp, sp, #0xc
00511464  01 40 a0 e1                                      mov r4, r1
00511468  02 50 a0 e1                                      mov r5, r2
0051146c  00 60 a0 e1                                      mov r6, r0
00511470  23 00 00 0a                                      beq #0x511504
00511474  24 20 9d e5                                      ldr r2, [sp, #0x24]
00511478  00 00 52 e3                                      cmp r2, #0
0051147c  12 00 00 0a                                      beq #0x5114cc
00511480  03 10 a0 e1                                      mov r1, r3
00511484  04 00 a0 e1                                      mov r0, r4
00511488  de ff ff eb                                      bl #0x511408
0051148c  0c 00 85 e5                                      str r0, [r5, #0xc]
00511490  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00511494  00 70 a0 e1                                      mov r7, r0
00511498  03 00 55 e1                                      cmp r5, r3
0051149c  16 00 00 0a                                      beq #0x5114fc
005114a0  07 00 a0 e1                                      mov r0, r7
005114a4  04 50 87 e5                                      str r5, [r7, #4]
005114a8  04 10 84 e2                                      add r1, r4, #4
005114ac  ab 08 f8 eb                                      bl #0x313760
005114b0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005114b4  06 00 a0 e1                                      mov r0, r6
005114b8  01 30 83 e2                                      add r3, r3, #1
005114bc  10 30 84 e5                                      str r3, [r4, #0x10]
005114c0  00 70 86 e5                                      str r7, [r6]
005114c4  0c d0 8d e2                                      add sp, sp, #0xc
005114c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005114cc  20 20 9d e5                                      ldr r2, [sp, #0x20]
005114d0  00 00 52 e3                                      cmp r2, #0
005114d4  12 00 00 0a                                      beq #0x511524
005114d8  03 10 a0 e1                                      mov r1, r3
005114dc  04 00 a0 e1                                      mov r0, r4
005114e0  c8 ff ff eb                                      bl #0x511408
005114e4  08 00 85 e5                                      str r0, [r5, #8]
005114e8  08 30 94 e5                                      ldr r3, [r4, #8]
005114ec  00 70 a0 e1                                      mov r7, r0
005114f0  03 00 55 e1                                      cmp r5, r3
005114f4  08 00 84 05                                      streq r0, [r4, #8]
005114f8  e8 ff ff ea                                      b #0x5114a0
005114fc  0c 70 84 e5                                      str r7, [r4, #0xc]
00511500  e6 ff ff ea                                      b #0x5114a0
00511504  03 10 a0 e1                                      mov r1, r3
00511508  04 00 a0 e1                                      mov r0, r4
0051150c  bd ff ff eb                                      bl #0x511408
00511510  00 70 a0 e1                                      mov r7, r0
00511514  08 00 84 e5                                      str r0, [r4, #8]
00511518  04 00 84 e5                                      str r0, [r4, #4]
0051151c  0c 00 84 e5                                      str r0, [r4, #0xc]
00511520  de ff ff ea                                      b #0x5114a0
00511524  14 00 81 e2                                      add r0, r1, #0x14
00511528  10 20 85 e2                                      add r2, r5, #0x10
0051152c  03 10 a0 e1                                      mov r1, r3
00511530  04 30 8d e5                                      str r3, [sp, #4]
00511534  af 09 f8 eb                                      bl #0x313bf8
00511538  00 00 50 e3                                      cmp r0, #0
0051153c  04 30 9d e5                                      ldr r3, [sp, #4]
00511540  ce ff ff 0a                                      beq #0x511480
00511544  e3 ff ff ea                                      b #0x5114d8

; FUNCTION 0x00511818, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsS5_ISsP8PropertyS2_SaIS3_IS4_S7_EEES2_SaIS3_IS4_SA_EEEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE13insert_uniqueERKSE_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > const&)
; decoder-mode: arm
00511818  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051181c  04 50 91 e5                                      ldr r5, [r1, #4]
00511820  14 d0 4d e2                                      sub sp, sp, #0x14
00511824  01 90 a0 e1                                      mov sb, r1
00511828  00 00 55 e3                                      cmp r5, #0
0051182c  00 40 a0 e1                                      mov r4, r0
00511830  02 80 a0 e1                                      mov r8, r2
00511834  38 00 00 0a                                      beq #0x51191c
00511838  14 70 92 e5                                      ldr r7, [r2, #0x14]
0051183c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00511840  0b a0 67 e0                                      rsb sl, r7, fp
00511844  04 00 00 ea                                      b #0x51185c
00511848  08 30 95 e5                                      ldr r3, [r5, #8]
0051184c  01 10 a0 e3                                      mov r1, #1
00511850  00 00 53 e3                                      cmp r3, #0
00511854  16 00 00 0a                                      beq #0x5118b4
00511858  03 50 a0 e1                                      mov r5, r3
0051185c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00511860  20 60 95 e5                                      ldr r6, [r5, #0x20]
00511864  07 00 a0 e1                                      mov r0, r7
00511868  03 10 a0 e1                                      mov r1, r3
0051186c  06 60 63 e0                                      rsb r6, r3, r6
00511870  0a 00 56 e1                                      cmp r6, sl
00511874  06 20 a0 b1                                      movlt r2, r6
00511878  0a 20 a0 a1                                      movge r2, sl
0051187c  57 f3 f7 eb                                      bl #0x30e5e0
00511880  00 00 50 e3                                      cmp r0, #0
00511884  05 20 a0 e1                                      mov r2, r5
00511888  03 00 00 1a                                      bne #0x51189c
0051188c  06 00 5a e1                                      cmp sl, r6
00511890  ec ff ff ba                                      blt #0x511848
00511894  00 00 a0 d3                                      movle r0, #0
00511898  01 00 a0 c3                                      movgt r0, #1
0051189c  00 00 50 e3                                      cmp r0, #0
005118a0  e8 ff ff ba                                      blt #0x511848
005118a4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005118a8  00 10 a0 e3                                      mov r1, #0
005118ac  00 00 53 e3                                      cmp r3, #0
005118b0  e8 ff ff 1a                                      bne #0x511858
005118b4  00 00 51 e3                                      cmp r1, #0
005118b8  05 a0 a0 01                                      moveq sl, r5
005118bc  17 00 00 1a                                      bne #0x511920
005118c0  24 00 92 e5                                      ldr r0, [r2, #0x24]
005118c4  20 60 92 e5                                      ldr r6, [r2, #0x20]
005118c8  0b b0 67 e0                                      rsb fp, r7, fp
005118cc  07 10 a0 e1                                      mov r1, r7
005118d0  06 60 60 e0                                      rsb r6, r0, r6
005118d4  06 00 5b e1                                      cmp fp, r6
005118d8  0b 20 a0 b1                                      movlt r2, fp
005118dc  06 20 a0 a1                                      movge r2, r6
005118e0  3e f3 f7 eb                                      bl #0x30e5e0
005118e4  00 00 50 e3                                      cmp r0, #0
005118e8  03 00 00 1a                                      bne #0x5118fc
005118ec  0b 00 56 e1                                      cmp r6, fp
005118f0  20 00 00 ba                                      blt #0x511978
005118f4  00 00 a0 d3                                      movle r0, #0
005118f8  01 00 a0 c3                                      movgt r0, #1
005118fc  00 00 50 e3                                      cmp r0, #0
00511900  00 30 a0 a3                                      movge r3, #0
00511904  00 a0 84 a5                                      strge sl, [r4]
00511908  04 30 c4 a5                                      strbge r3, [r4, #4]
0051190c  19 00 00 ba                                      blt #0x511978
00511910  04 00 a0 e1                                      mov r0, r4
00511914  14 d0 8d e2                                      add sp, sp, #0x14
00511918  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051191c  01 50 a0 e1                                      mov r5, r1
00511920  08 30 99 e5                                      ldr r3, [sb, #8]
00511924  03 00 55 e1                                      cmp r5, r3
00511928  32 00 00 0a                                      beq #0x5119f8
0051192c  00 30 d5 e5                                      ldrb r3, [r5]
00511930  00 00 53 e3                                      cmp r3, #0
00511934  03 00 00 1a                                      bne #0x511948
00511938  04 30 95 e5                                      ldr r3, [r5, #4]
0051193c  04 30 93 e5                                      ldr r3, [r3, #4]
00511940  03 00 55 e1                                      cmp r5, r3
00511944  26 00 00 0a                                      beq #0x5119e4
00511948  08 20 95 e5                                      ldr r2, [r5, #8]
0051194c  00 00 52 e3                                      cmp r2, #0
00511950  01 00 00 1a                                      bne #0x51195c
00511954  14 00 00 ea                                      b #0x5119ac
00511958  03 20 a0 e1                                      mov r2, r3
0051195c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00511960  00 00 53 e3                                      cmp r3, #0
00511964  fb ff ff 1a                                      bne #0x511958
00511968  02 a0 a0 e1                                      mov sl, r2
0051196c  14 70 98 e5                                      ldr r7, [r8, #0x14]
00511970  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00511974  d1 ff ff ea                                      b #0x5118c0
00511978  00 c0 a0 e3                                      mov ip, #0
0051197c  05 20 a0 e1                                      mov r2, r5
00511980  08 30 a0 e1                                      mov r3, r8
00511984  09 10 a0 e1                                      mov r1, sb
00511988  08 00 8d e2                                      add r0, sp, #8
0051198c  04 c0 8d e5                                      str ip, [sp, #4]
00511990  00 c0 8d e5                                      str ip, [sp]
00511994  af fe ff eb                                      bl #0x511458
00511998  08 30 9d e5                                      ldr r3, [sp, #8]
0051199c  01 20 a0 e3                                      mov r2, #1
005119a0  04 20 c4 e5                                      strb r2, [r4, #4]
005119a4  00 30 84 e5                                      str r3, [r4]
005119a8  d8 ff ff ea                                      b #0x511910
005119ac  04 30 95 e5                                      ldr r3, [r5, #4]
005119b0  08 20 93 e5                                      ldr r2, [r3, #8]
005119b4  02 00 55 e1                                      cmp r5, r2
005119b8  01 00 00 0a                                      beq #0x5119c4
005119bc  19 00 00 ea                                      b #0x511a28
005119c0  02 30 a0 e1                                      mov r3, r2
005119c4  04 20 93 e5                                      ldr r2, [r3, #4]
005119c8  08 10 92 e5                                      ldr r1, [r2, #8]
005119cc  03 00 51 e1                                      cmp r1, r3
005119d0  fa ff ff 0a                                      beq #0x5119c0
005119d4  14 70 98 e5                                      ldr r7, [r8, #0x14]
005119d8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
005119dc  02 a0 a0 e1                                      mov sl, r2
005119e0  b6 ff ff ea                                      b #0x5118c0
005119e4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005119e8  14 70 98 e5                                      ldr r7, [r8, #0x14]
005119ec  10 b0 98 e5                                      ldr fp, [r8, #0x10]
005119f0  02 a0 a0 e1                                      mov sl, r2
005119f4  b1 ff ff ea                                      b #0x5118c0
005119f8  05 20 a0 e1                                      mov r2, r5
005119fc  08 30 a0 e1                                      mov r3, r8
00511a00  00 c0 a0 e3                                      mov ip, #0
00511a04  09 10 a0 e1                                      mov r1, sb
00511a08  0c 00 8d e2                                      add r0, sp, #0xc
00511a0c  20 10 8d e8                                      stm sp, {r5, ip}
00511a10  90 fe ff eb                                      bl #0x511458
00511a14  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00511a18  01 20 a0 e3                                      mov r2, #1
00511a1c  04 20 c4 e5                                      strb r2, [r4, #4]
00511a20  00 30 84 e5                                      str r3, [r4]
00511a24  b9 ff ff ea                                      b #0x511910
00511a28  03 20 a0 e1                                      mov r2, r3
00511a2c  cd ff ff ea                                      b #0x511968

; FUNCTION 0x00511fd0, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsS5_ISsP8PropertyS2_SaIS3_IS4_S7_EEES2_SaIS3_IS4_SA_EEEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE13insert_uniqueENS_17_Rb_tree_iteratorISE_SI_EERKSE_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > const&)
; decoder-mode: arm
00511fd0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00511fd4  44 d0 4d e2                                      sub sp, sp, #0x44
00511fd8  14 20 8d e5                                      str r2, [sp, #0x14]
00511fdc  00 50 92 e5                                      ldr r5, [r2]
00511fe0  08 20 91 e5                                      ldr r2, [r1, #8]
00511fe4  01 60 a0 e1                                      mov r6, r1
00511fe8  00 70 a0 e1                                      mov r7, r0
00511fec  02 00 55 e1                                      cmp r5, r2
00511ff0  03 80 a0 e1                                      mov r8, r3
00511ff4  7c 00 00 0a                                      beq #0x5121ec
00511ff8  01 00 55 e1                                      cmp r5, r1
00511ffc  d0 00 00 0a                                      beq #0x512344
00512000  00 30 d5 e5                                      ldrb r3, [r5]
00512004  00 00 53 e3                                      cmp r3, #0
00512008  35 00 00 0a                                      beq #0x5120e4
0051200c  08 40 95 e5                                      ldr r4, [r5, #8]
00512010  00 00 54 e3                                      cmp r4, #0
00512014  01 00 00 1a                                      bne #0x512020
00512018  39 00 00 ea                                      b #0x512104
0051201c  03 40 a0 e1                                      mov r4, r3
00512020  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00512024  00 00 53 e3                                      cmp r3, #0
00512028  fb ff ff 1a                                      bne #0x51201c
0051202c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00512030  14 90 98 e5                                      ldr sb, [r8, #0x14]
00512034  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00512038  20 20 95 e5                                      ldr r2, [r5, #0x20]
0051203c  03 10 a0 e1                                      mov r1, r3
00512040  0b b0 69 e0                                      rsb fp, sb, fp
00512044  02 20 63 e0                                      rsb r2, r3, r2
00512048  18 20 8d e5                                      str r2, [sp, #0x18]
0051204c  09 00 a0 e1                                      mov r0, sb
00512050  0b 00 52 e1                                      cmp r2, fp
00512054  0b 20 a0 a1                                      movge r2, fp
00512058  0c 30 8d e5                                      str r3, [sp, #0xc]
0051205c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00512060  5e f1 f7 eb                                      bl #0x30e5e0
00512064  00 00 50 e3                                      cmp r0, #0
00512068  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051206c  05 00 00 1a                                      bne #0x512088
00512070  18 20 9d e5                                      ldr r2, [sp, #0x18]
00512074  02 00 5b e1                                      cmp fp, r2
00512078  00 00 e0 b3                                      mvnlt r0, #0
0051207c  01 00 00 ba                                      blt #0x512088
00512080  00 00 a0 d3                                      movle r0, #0
00512084  01 00 a0 c3                                      movgt r0, #1
00512088  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0051208c  28 00 00 1a                                      bne #0x512134
00512090  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00512094  00 00 54 e3                                      cmp r4, #0
00512098  01 00 00 1a                                      bne #0x5120a4
0051209c  cc 00 00 ea                                      b #0x5123d4
005120a0  02 40 a0 e1                                      mov r4, r2
005120a4  08 20 94 e5                                      ldr r2, [r4, #8]
005120a8  00 00 52 e3                                      cmp r2, #0
005120ac  fb ff ff 1a                                      bne #0x5120a0
005120b0  00 00 5c e3                                      cmp ip, #0
005120b4  43 00 00 1a                                      bne #0x5121c8
005120b8  03 00 a0 e1                                      mov r0, r3
005120bc  09 10 a0 e1                                      mov r1, sb
005120c0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005120c4  45 f1 f7 eb                                      bl #0x30e5e0
005120c8  00 00 50 e3                                      cmp r0, #0
005120cc  34 00 00 1a                                      bne #0x5121a4
005120d0  18 30 9d e5                                      ldr r3, [sp, #0x18]
005120d4  03 00 5b e1                                      cmp fp, r3
005120d8  32 00 00 ca                                      bgt #0x5121a8
005120dc  00 50 87 e5                                      str r5, [r7]
005120e0  3e 00 00 ea                                      b #0x5121e0
005120e4  04 30 95 e5                                      ldr r3, [r5, #4]
005120e8  04 30 93 e5                                      ldr r3, [r3, #4]
005120ec  03 00 55 e1                                      cmp r5, r3
005120f0  0c 40 95 05                                      ldreq r4, [r5, #0xc]
005120f4  cc ff ff 0a                                      beq #0x51202c
005120f8  08 40 95 e5                                      ldr r4, [r5, #8]
005120fc  00 00 54 e3                                      cmp r4, #0
00512100  c6 ff ff 1a                                      bne #0x512020
00512104  04 40 95 e5                                      ldr r4, [r5, #4]
00512108  08 30 94 e5                                      ldr r3, [r4, #8]
0051210c  03 00 55 e1                                      cmp r5, r3
00512110  01 00 00 0a                                      beq #0x51211c
00512114  c4 ff ff ea                                      b #0x51202c
00512118  03 40 a0 e1                                      mov r4, r3
0051211c  04 30 94 e5                                      ldr r3, [r4, #4]
00512120  08 20 93 e5                                      ldr r2, [r3, #8]
00512124  04 00 52 e1                                      cmp r2, r4
00512128  fa ff ff 0a                                      beq #0x512118
0051212c  03 40 a0 e1                                      mov r4, r3
00512130  bd ff ff ea                                      b #0x51202c
00512134  24 20 94 e5                                      ldr r2, [r4, #0x24]
00512138  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0051213c  09 10 a0 e1                                      mov r1, sb
00512140  02 00 a0 e1                                      mov r0, r2
00512144  0a a0 62 e0                                      rsb sl, r2, sl
00512148  0a 00 5b e1                                      cmp fp, sl
0051214c  0b 20 a0 b1                                      movlt r2, fp
00512150  0a 20 a0 a1                                      movge r2, sl
00512154  0c 30 8d e5                                      str r3, [sp, #0xc]
00512158  10 c0 8d e5                                      str ip, [sp, #0x10]
0051215c  1f f1 f7 eb                                      bl #0x30e5e0
00512160  00 00 50 e3                                      cmp r0, #0
00512164  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00512168  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0051216c  6f 00 00 1a                                      bne #0x512330
00512170  0a 00 5b e1                                      cmp fp, sl
00512174  c5 ff ff da                                      ble #0x512090
00512178  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0051217c  00 00 5c e3                                      cmp ip, #0
00512180  62 00 00 0a                                      beq #0x512310
00512184  00 c0 a0 e3                                      mov ip, #0
00512188  06 10 a0 e1                                      mov r1, r6
0051218c  05 20 a0 e1                                      mov r2, r5
00512190  08 30 a0 e1                                      mov r3, r8
00512194  07 00 a0 e1                                      mov r0, r7
00512198  20 10 8d e8                                      stm sp, {r5, ip}
0051219c  ad fc ff eb                                      bl #0x511458
005121a0  0e 00 00 ea                                      b #0x5121e0
005121a4  cc ff ff aa                                      bge #0x5120dc
005121a8  04 00 56 e1                                      cmp r6, r4
005121ac  9b 00 00 0a                                      beq #0x512420
005121b0  14 00 86 e2                                      add r0, r6, #0x14
005121b4  08 10 a0 e1                                      mov r1, r8
005121b8  10 20 84 e2                                      add r2, r4, #0x10
005121bc  8d 06 f8 eb                                      bl #0x313bf8
005121c0  00 00 50 e3                                      cmp r0, #0
005121c4  93 00 00 1a                                      bne #0x512418
005121c8  06 10 a0 e1                                      mov r1, r6
005121cc  08 20 a0 e1                                      mov r2, r8
005121d0  20 00 8d e2                                      add r0, sp, #0x20
005121d4  8f fd ff eb                                      bl #0x511818
005121d8  20 30 9d e5                                      ldr r3, [sp, #0x20]
005121dc  00 30 87 e5                                      str r3, [r7]
005121e0  07 00 a0 e1                                      mov r0, r7
005121e4  44 d0 8d e2                                      add sp, sp, #0x44
005121e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005121ec  10 30 91 e5                                      ldr r3, [r1, #0x10]
005121f0  00 00 53 e3                                      cmp r3, #0
005121f4  9f 00 00 0a                                      beq #0x512478
005121f8  14 30 98 e5                                      ldr r3, [r8, #0x14]
005121fc  24 10 95 e5                                      ldr r1, [r5, #0x24]
00512200  10 40 98 e5                                      ldr r4, [r8, #0x10]
00512204  20 a0 95 e5                                      ldr sl, [r5, #0x20]
00512208  03 00 a0 e1                                      mov r0, r3
0051220c  04 40 63 e0                                      rsb r4, r3, r4
00512210  0a a0 61 e0                                      rsb sl, r1, sl
00512214  04 00 5a e1                                      cmp sl, r4
00512218  0a 20 a0 b1                                      movlt r2, sl
0051221c  04 20 a0 a1                                      movge r2, r4
00512220  ee f0 f7 eb                                      bl #0x30e5e0
00512224  00 00 50 e3                                      cmp r0, #0
00512228  03 00 00 1a                                      bne #0x51223c
0051222c  0a 00 54 e1                                      cmp r4, sl
00512230  d3 ff ff ba                                      blt #0x512184
00512234  00 00 a0 d3                                      movle r0, #0
00512238  01 00 a0 c3                                      movgt r0, #1
0051223c  00 00 50 e3                                      cmp r0, #0
00512240  cf ff ff ba                                      blt #0x512184
00512244  14 a0 86 e2                                      add sl, r6, #0x14
00512248  10 10 85 e2                                      add r1, r5, #0x10
0051224c  0a 00 a0 e1                                      mov r0, sl
00512250  08 20 a0 e1                                      mov r2, r8
00512254  67 06 f8 eb                                      bl #0x313bf8
00512258  00 00 50 e3                                      cmp r0, #0
0051225c  81 00 00 0a                                      beq #0x512468
00512260  14 30 9d e5                                      ldr r3, [sp, #0x14]
00512264  00 c0 93 e5                                      ldr ip, [r3]
00512268  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0051226c  00 00 54 e3                                      cmp r4, #0
00512270  22 00 00 1a                                      bne #0x512300
00512274  04 30 9c e5                                      ldr r3, [ip, #4]
00512278  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0051227c  02 00 5c e1                                      cmp ip, r2
00512280  0c 40 a0 11                                      movne r4, ip
00512284  04 00 00 1a                                      bne #0x51229c
00512288  03 40 a0 e1                                      mov r4, r3
0051228c  04 30 93 e5                                      ldr r3, [r3, #4]
00512290  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00512294  04 00 52 e1                                      cmp r2, r4
00512298  fa ff ff 0a                                      beq #0x512288
0051229c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005122a0  02 00 53 e1                                      cmp r3, r2
005122a4  03 40 a0 11                                      movne r4, r3
005122a8  04 00 56 e1                                      cmp r6, r4
005122ac  7f 00 00 0a                                      beq #0x5124b0
005122b0  0a 00 a0 e1                                      mov r0, sl
005122b4  08 10 a0 e1                                      mov r1, r8
005122b8  10 20 84 e2                                      add r2, r4, #0x10
005122bc  4d 06 f8 eb                                      bl #0x313bf8
005122c0  00 00 50 e3                                      cmp r0, #0
005122c4  60 00 00 0a                                      beq #0x51244c
005122c8  14 20 9d e5                                      ldr r2, [sp, #0x14]
005122cc  00 c0 92 e5                                      ldr ip, [r2]
005122d0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005122d4  00 00 5e e3                                      cmp lr, #0
005122d8  6c 00 00 0a                                      beq #0x512490
005122dc  00 c0 a0 e3                                      mov ip, #0
005122e0  06 10 a0 e1                                      mov r1, r6
005122e4  04 20 a0 e1                                      mov r2, r4
005122e8  08 30 a0 e1                                      mov r3, r8
005122ec  07 00 a0 e1                                      mov r0, r7
005122f0  10 10 8d e8                                      stm sp, {r4, ip}
005122f4  57 fc ff eb                                      bl #0x511458
005122f8  b8 ff ff ea                                      b #0x5121e0
005122fc  03 40 a0 e1                                      mov r4, r3
00512300  08 30 94 e5                                      ldr r3, [r4, #8]
00512304  00 00 53 e3                                      cmp r3, #0
00512308  fb ff ff 1a                                      bne #0x5122fc
0051230c  e5 ff ff ea                                      b #0x5122a8
00512310  06 10 a0 e1                                      mov r1, r6
00512314  04 20 a0 e1                                      mov r2, r4
00512318  08 30 a0 e1                                      mov r3, r8
0051231c  07 00 a0 e1                                      mov r0, r7
00512320  00 c0 8d e5                                      str ip, [sp]
00512324  04 40 8d e5                                      str r4, [sp, #4]
00512328  4a fc ff eb                                      bl #0x511458
0051232c  ab ff ff ea                                      b #0x5121e0
00512330  56 ff ff aa                                      bge #0x512090
00512334  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00512338  00 00 5c e3                                      cmp ip, #0
0051233c  90 ff ff 1a                                      bne #0x512184
00512340  f2 ff ff ea                                      b #0x512310
00512344  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00512348  14 10 93 e5                                      ldr r1, [r3, #0x14]
0051234c  10 90 93 e5                                      ldr sb, [r3, #0x10]
00512350  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00512354  24 30 94 e5                                      ldr r3, [r4, #0x24]
00512358  09 90 61 e0                                      rsb sb, r1, sb
0051235c  0a a0 63 e0                                      rsb sl, r3, sl
00512360  0a 00 59 e1                                      cmp sb, sl
00512364  09 20 a0 b1                                      movlt r2, sb
00512368  0a 20 a0 a1                                      movge r2, sl
0051236c  03 00 a0 e1                                      mov r0, r3
00512370  9a f0 f7 eb                                      bl #0x30e5e0
00512374  00 00 50 e3                                      cmp r0, #0
00512378  03 00 00 1a                                      bne #0x51238c
0051237c  09 00 5a e1                                      cmp sl, sb
00512380  03 00 00 ba                                      blt #0x512394
00512384  00 00 a0 d3                                      movle r0, #0
00512388  01 00 a0 c3                                      movgt r0, #1
0051238c  00 00 50 e3                                      cmp r0, #0
00512390  08 00 00 aa                                      bge #0x5123b8
00512394  00 c0 a0 e3                                      mov ip, #0
00512398  06 10 a0 e1                                      mov r1, r6
0051239c  04 20 a0 e1                                      mov r2, r4
005123a0  08 30 a0 e1                                      mov r3, r8
005123a4  07 00 a0 e1                                      mov r0, r7
005123a8  00 c0 8d e5                                      str ip, [sp]
005123ac  04 50 8d e5                                      str r5, [sp, #4]
005123b0  28 fc ff eb                                      bl #0x511458
005123b4  89 ff ff ea                                      b #0x5121e0
005123b8  06 10 a0 e1                                      mov r1, r6
005123bc  08 20 a0 e1                                      mov r2, r8
005123c0  28 00 8d e2                                      add r0, sp, #0x28
005123c4  13 fd ff eb                                      bl #0x511818
005123c8  28 30 9d e5                                      ldr r3, [sp, #0x28]
005123cc  00 30 87 e5                                      str r3, [r7]
005123d0  82 ff ff ea                                      b #0x5121e0
005123d4  04 20 95 e5                                      ldr r2, [r5, #4]
005123d8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005123dc  01 00 55 e1                                      cmp r5, r1
005123e0  05 40 a0 11                                      movne r4, r5
005123e4  04 00 00 0a                                      beq #0x5123fc
005123e8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005123ec  01 00 52 e1                                      cmp r2, r1
005123f0  02 40 a0 11                                      movne r4, r2
005123f4  2d ff ff ea                                      b #0x5120b0
005123f8  01 20 a0 e1                                      mov r2, r1
005123fc  04 10 92 e5                                      ldr r1, [r2, #4]
00512400  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00512404  02 00 50 e1                                      cmp r0, r2
00512408  fa ff ff 0a                                      beq #0x5123f8
0051240c  02 40 a0 e1                                      mov r4, r2
00512410  01 20 a0 e1                                      mov r2, r1
00512414  f3 ff ff ea                                      b #0x5123e8
00512418  14 20 9d e5                                      ldr r2, [sp, #0x14]
0051241c  00 50 92 e5                                      ldr r5, [r2]
00512420  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00512424  00 00 5c e3                                      cmp ip, #0
00512428  ab ff ff 1a                                      bne #0x5122dc
0051242c  06 10 a0 e1                                      mov r1, r6
00512430  05 20 a0 e1                                      mov r2, r5
00512434  08 30 a0 e1                                      mov r3, r8
00512438  07 00 a0 e1                                      mov r0, r7
0051243c  00 c0 8d e5                                      str ip, [sp]
00512440  04 50 8d e5                                      str r5, [sp, #4]
00512444  03 fc ff eb                                      bl #0x511458
00512448  64 ff ff ea                                      b #0x5121e0
0051244c  06 10 a0 e1                                      mov r1, r6
00512450  08 20 a0 e1                                      mov r2, r8
00512454  30 00 8d e2                                      add r0, sp, #0x30
00512458  ee fc ff eb                                      bl #0x511818
0051245c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00512460  00 30 87 e5                                      str r3, [r7]
00512464  5d ff ff ea                                      b #0x5121e0
00512468  14 20 9d e5                                      ldr r2, [sp, #0x14]
0051246c  00 30 92 e5                                      ldr r3, [r2]
00512470  00 30 87 e5                                      str r3, [r7]
00512474  59 ff ff ea                                      b #0x5121e0
00512478  08 20 a0 e1                                      mov r2, r8
0051247c  38 00 8d e2                                      add r0, sp, #0x38
00512480  e4 fc ff eb                                      bl #0x511818
00512484  38 30 9d e5                                      ldr r3, [sp, #0x38]
00512488  00 30 87 e5                                      str r3, [r7]
0051248c  53 ff ff ea                                      b #0x5121e0
00512490  06 10 a0 e1                                      mov r1, r6
00512494  0c 20 a0 e1                                      mov r2, ip
00512498  08 30 a0 e1                                      mov r3, r8
0051249c  07 00 a0 e1                                      mov r0, r7
005124a0  00 e0 8d e5                                      str lr, [sp]
005124a4  04 c0 8d e5                                      str ip, [sp, #4]
005124a8  ea fb ff eb                                      bl #0x511458
005124ac  4b ff ff ea                                      b #0x5121e0
005124b0  00 e0 a0 e3                                      mov lr, #0
005124b4  06 10 a0 e1                                      mov r1, r6
005124b8  0c 20 a0 e1                                      mov r2, ip
005124bc  08 30 a0 e1                                      mov r3, r8
005124c0  07 00 a0 e1                                      mov r0, r7
005124c4  00 e0 8d e5                                      str lr, [sp]
005124c8  04 c0 8d e5                                      str ip, [sp, #4]
005124cc  e1 fb ff eb                                      bl #0x511458
005124d0  42 ff ff ea                                      b #0x5121e0
