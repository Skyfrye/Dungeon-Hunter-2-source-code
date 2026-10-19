; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510ce0, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsP8PropertyS2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00510ce0  70 40 2d e9                                      push {r4, r5, r6, lr}
00510ce4  00 40 51 e2                                      subs r4, r1, #0
00510ce8  00 60 a0 e1                                      mov r6, r0
00510cec  0a 00 00 0a                                      beq #0x510d1c
00510cf0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00510cf4  06 00 a0 e1                                      mov r0, r6
00510cf8  f8 ff ff eb                                      bl #0x510ce0
00510cfc  08 50 94 e5                                      ldr r5, [r4, #8]
00510d00  10 00 84 e2                                      add r0, r4, #0x10
00510d04  e3 ff ff eb                                      bl #0x510c98
00510d08  04 00 a0 e1                                      mov r0, r4
00510d0c  40 10 a0 e3                                      mov r1, #0x40
00510d10  7a e0 07 eb                                      bl #0x708f00
00510d14  00 40 55 e2                                      subs r4, r5, #0
00510d18  f4 ff ff 1a                                      bne #0x510cf0
00510d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00511298, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsP8PropertyS2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE14_M_create_nodeERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > const&)
; decoder-mode: arm
00511298  30 40 2d e9                                      push {r4, r5, lr}
0051129c  0c d0 4d e2                                      sub sp, sp, #0xc
005112a0  40 30 a0 e3                                      mov r3, #0x40
005112a4  08 00 8d e2                                      add r0, sp, #8
005112a8  04 30 20 e5                                      str r3, [r0, #-4]!
005112ac  01 50 a0 e1                                      mov r5, r1
005112b0  02 df 07 eb                                      bl #0x708ec0
005112b4  05 10 a0 e1                                      mov r1, r5
005112b8  00 40 a0 e1                                      mov r4, r0
005112bc  10 00 80 e2                                      add r0, r0, #0x10
005112c0  94 69 f8 eb                                      bl #0x32b918
005112c4  18 10 85 e2                                      add r1, r5, #0x18
005112c8  28 00 84 e2                                      add r0, r4, #0x28
005112cc  97 ff ff eb                                      bl #0x511130
005112d0  00 30 a0 e3                                      mov r3, #0
005112d4  0c 30 84 e5                                      str r3, [r4, #0xc]
005112d8  08 30 84 e5                                      str r3, [r4, #8]
005112dc  04 00 a0 e1                                      mov r0, r4
005112e0  0c d0 8d e2                                      add sp, sp, #0xc
005112e4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005112e8, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsP8PropertyS2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE7_M_copyEPNS_18_Rb_tree_node_baseESJ_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
005112e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005112ec  01 40 a0 e1                                      mov r4, r1
005112f0  10 10 81 e2                                      add r1, r1, #0x10
005112f4  02 50 a0 e1                                      mov r5, r2
005112f8  00 70 a0 e1                                      mov r7, r0
005112fc  e5 ff ff eb                                      bl #0x511298
00511300  00 30 d4 e5                                      ldrb r3, [r4]
00511304  04 50 80 e5                                      str r5, [r0, #4]
00511308  00 80 a0 e1                                      mov r8, r0
0051130c  00 30 c0 e5                                      strb r3, [r0]
00511310  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00511314  00 00 51 e3                                      cmp r1, #0
00511318  03 00 00 0a                                      beq #0x51132c
0051131c  07 00 a0 e1                                      mov r0, r7
00511320  08 20 a0 e1                                      mov r2, r8
00511324  ef ff ff eb                                      bl #0x5112e8
00511328  0c 00 88 e5                                      str r0, [r8, #0xc]
0051132c  08 50 94 e5                                      ldr r5, [r4, #8]
00511330  00 00 55 e3                                      cmp r5, #0
00511334  13 00 00 0a                                      beq #0x511388
00511338  08 60 a0 e1                                      mov r6, r8
0051133c  10 10 85 e2                                      add r1, r5, #0x10
00511340  07 00 a0 e1                                      mov r0, r7
00511344  d3 ff ff eb                                      bl #0x511298
00511348  00 30 d5 e5                                      ldrb r3, [r5]
0051134c  00 40 a0 e1                                      mov r4, r0
00511350  04 20 a0 e1                                      mov r2, r4
00511354  00 30 c4 e5                                      strb r3, [r4]
00511358  08 40 86 e5                                      str r4, [r6, #8]
0051135c  04 60 84 e5                                      str r6, [r4, #4]
00511360  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00511364  07 00 a0 e1                                      mov r0, r7
00511368  04 60 a0 e1                                      mov r6, r4
0051136c  00 10 53 e2                                      subs r1, r3, #0
00511370  01 00 00 0a                                      beq #0x51137c
00511374  db ff ff eb                                      bl #0x5112e8
00511378  0c 00 84 e5                                      str r0, [r4, #0xc]
0051137c  08 50 95 e5                                      ldr r5, [r5, #8]
00511380  00 00 55 e3                                      cmp r5, #0
00511384  ec ff ff 1a                                      bne #0x51133c
00511388  08 00 a0 e1                                      mov r0, r8
0051138c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00511390, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsP8PropertyS2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EEC1ERKSH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::_Rb_tree(std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > const&)
; decoder-mode: arm
00511390  70 40 2d e9                                      push {r4, r5, r6, lr}
00511394  00 30 a0 e3                                      mov r3, #0
00511398  00 40 a0 e1                                      mov r4, r0
0051139c  10 30 80 e5                                      str r3, [r0, #0x10]
005113a0  04 30 80 e5                                      str r3, [r0, #4]
005113a4  00 30 c0 e5                                      strb r3, [r0]
005113a8  08 00 84 e5                                      str r0, [r4, #8]
005113ac  0c 00 84 e5                                      str r0, [r4, #0xc]
005113b0  01 50 a0 e1                                      mov r5, r1
005113b4  04 10 91 e5                                      ldr r1, [r1, #4]
005113b8  03 00 51 e1                                      cmp r1, r3
005113bc  0d 00 00 0a                                      beq #0x5113f8
005113c0  00 20 a0 e1                                      mov r2, r0
005113c4  c7 ff ff eb                                      bl #0x5112e8
005113c8  04 00 84 e5                                      str r0, [r4, #4]
005113cc  00 30 a0 e1                                      mov r3, r0
005113d0  03 20 a0 e1                                      mov r2, r3
005113d4  08 30 93 e5                                      ldr r3, [r3, #8]
005113d8  00 00 53 e3                                      cmp r3, #0
005113dc  fb ff ff 1a                                      bne #0x5113d0
005113e0  08 20 84 e5                                      str r2, [r4, #8]
005113e4  00 30 a0 e1                                      mov r3, r0
005113e8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
005113ec  00 00 50 e3                                      cmp r0, #0
005113f0  fb ff ff 1a                                      bne #0x5113e4
005113f4  0c 30 84 e5                                      str r3, [r4, #0xc]
005113f8  10 30 95 e5                                      ldr r3, [r5, #0x10]
005113fc  04 00 a0 e1                                      mov r0, r4
00511400  10 30 84 e5                                      str r3, [r4, #0x10]
00511404  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00511548, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsP8PropertyS2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSB_SJ_SJ_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00511548  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0051154c  02 00 51 e1                                      cmp r1, r2
00511550  0c d0 4d e2                                      sub sp, sp, #0xc
00511554  01 40 a0 e1                                      mov r4, r1
00511558  02 50 a0 e1                                      mov r5, r2
0051155c  00 60 a0 e1                                      mov r6, r0
00511560  23 00 00 0a                                      beq #0x5115f4
00511564  24 20 9d e5                                      ldr r2, [sp, #0x24]
00511568  00 00 52 e3                                      cmp r2, #0
0051156c  12 00 00 0a                                      beq #0x5115bc
00511570  03 10 a0 e1                                      mov r1, r3
00511574  04 00 a0 e1                                      mov r0, r4
00511578  46 ff ff eb                                      bl #0x511298
0051157c  0c 00 85 e5                                      str r0, [r5, #0xc]
00511580  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00511584  00 70 a0 e1                                      mov r7, r0
00511588  03 00 55 e1                                      cmp r5, r3
0051158c  16 00 00 0a                                      beq #0x5115ec
00511590  07 00 a0 e1                                      mov r0, r7
00511594  04 50 87 e5                                      str r5, [r7, #4]
00511598  04 10 84 e2                                      add r1, r4, #4
0051159c  6f 08 f8 eb                                      bl #0x313760
005115a0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005115a4  06 00 a0 e1                                      mov r0, r6
005115a8  01 30 83 e2                                      add r3, r3, #1
005115ac  10 30 84 e5                                      str r3, [r4, #0x10]
005115b0  00 70 86 e5                                      str r7, [r6]
005115b4  0c d0 8d e2                                      add sp, sp, #0xc
005115b8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005115bc  20 20 9d e5                                      ldr r2, [sp, #0x20]
005115c0  00 00 52 e3                                      cmp r2, #0
005115c4  12 00 00 0a                                      beq #0x511614
005115c8  03 10 a0 e1                                      mov r1, r3
005115cc  04 00 a0 e1                                      mov r0, r4
005115d0  30 ff ff eb                                      bl #0x511298
005115d4  08 00 85 e5                                      str r0, [r5, #8]
005115d8  08 30 94 e5                                      ldr r3, [r4, #8]
005115dc  00 70 a0 e1                                      mov r7, r0
005115e0  03 00 55 e1                                      cmp r5, r3
005115e4  08 00 84 05                                      streq r0, [r4, #8]
005115e8  e8 ff ff ea                                      b #0x511590
005115ec  0c 70 84 e5                                      str r7, [r4, #0xc]
005115f0  e6 ff ff ea                                      b #0x511590
005115f4  03 10 a0 e1                                      mov r1, r3
005115f8  04 00 a0 e1                                      mov r0, r4
005115fc  25 ff ff eb                                      bl #0x511298
00511600  00 70 a0 e1                                      mov r7, r0
00511604  08 00 84 e5                                      str r0, [r4, #8]
00511608  04 00 84 e5                                      str r0, [r4, #4]
0051160c  0c 00 84 e5                                      str r0, [r4, #0xc]
00511610  de ff ff ea                                      b #0x511590
00511614  14 00 81 e2                                      add r0, r1, #0x14
00511618  10 20 85 e2                                      add r2, r5, #0x10
0051161c  03 10 a0 e1                                      mov r1, r3
00511620  04 30 8d e5                                      str r3, [sp, #4]
00511624  73 09 f8 eb                                      bl #0x313bf8
00511628  00 00 50 e3                                      cmp r0, #0
0051162c  04 30 9d e5                                      ldr r3, [sp, #4]
00511630  ce ff ff 0a                                      beq #0x511570
00511634  e3 ff ff ea                                      b #0x5115c8

; FUNCTION 0x00511c48, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsP8PropertyS2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE13insert_uniqueERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > const&)
; decoder-mode: arm
00511c48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00511c4c  04 50 91 e5                                      ldr r5, [r1, #4]
00511c50  14 d0 4d e2                                      sub sp, sp, #0x14
00511c54  01 90 a0 e1                                      mov sb, r1
00511c58  00 00 55 e3                                      cmp r5, #0
00511c5c  00 40 a0 e1                                      mov r4, r0
00511c60  02 80 a0 e1                                      mov r8, r2
00511c64  38 00 00 0a                                      beq #0x511d4c
00511c68  14 70 92 e5                                      ldr r7, [r2, #0x14]
00511c6c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00511c70  0b a0 67 e0                                      rsb sl, r7, fp
00511c74  04 00 00 ea                                      b #0x511c8c
00511c78  08 30 95 e5                                      ldr r3, [r5, #8]
00511c7c  01 10 a0 e3                                      mov r1, #1
00511c80  00 00 53 e3                                      cmp r3, #0
00511c84  16 00 00 0a                                      beq #0x511ce4
00511c88  03 50 a0 e1                                      mov r5, r3
00511c8c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00511c90  20 60 95 e5                                      ldr r6, [r5, #0x20]
00511c94  07 00 a0 e1                                      mov r0, r7
00511c98  03 10 a0 e1                                      mov r1, r3
00511c9c  06 60 63 e0                                      rsb r6, r3, r6
00511ca0  0a 00 56 e1                                      cmp r6, sl
00511ca4  06 20 a0 b1                                      movlt r2, r6
00511ca8  0a 20 a0 a1                                      movge r2, sl
00511cac  4b f2 f7 eb                                      bl #0x30e5e0
00511cb0  00 00 50 e3                                      cmp r0, #0
00511cb4  05 20 a0 e1                                      mov r2, r5
00511cb8  03 00 00 1a                                      bne #0x511ccc
00511cbc  06 00 5a e1                                      cmp sl, r6
00511cc0  ec ff ff ba                                      blt #0x511c78
00511cc4  00 00 a0 d3                                      movle r0, #0
00511cc8  01 00 a0 c3                                      movgt r0, #1
00511ccc  00 00 50 e3                                      cmp r0, #0
00511cd0  e8 ff ff ba                                      blt #0x511c78
00511cd4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00511cd8  00 10 a0 e3                                      mov r1, #0
00511cdc  00 00 53 e3                                      cmp r3, #0
00511ce0  e8 ff ff 1a                                      bne #0x511c88
00511ce4  00 00 51 e3                                      cmp r1, #0
00511ce8  05 a0 a0 01                                      moveq sl, r5
00511cec  17 00 00 1a                                      bne #0x511d50
00511cf0  24 00 92 e5                                      ldr r0, [r2, #0x24]
00511cf4  20 60 92 e5                                      ldr r6, [r2, #0x20]
00511cf8  0b b0 67 e0                                      rsb fp, r7, fp
00511cfc  07 10 a0 e1                                      mov r1, r7
00511d00  06 60 60 e0                                      rsb r6, r0, r6
00511d04  06 00 5b e1                                      cmp fp, r6
00511d08  0b 20 a0 b1                                      movlt r2, fp
00511d0c  06 20 a0 a1                                      movge r2, r6
00511d10  32 f2 f7 eb                                      bl #0x30e5e0
00511d14  00 00 50 e3                                      cmp r0, #0
00511d18  03 00 00 1a                                      bne #0x511d2c
00511d1c  0b 00 56 e1                                      cmp r6, fp
00511d20  20 00 00 ba                                      blt #0x511da8
00511d24  00 00 a0 d3                                      movle r0, #0
00511d28  01 00 a0 c3                                      movgt r0, #1
00511d2c  00 00 50 e3                                      cmp r0, #0
00511d30  00 30 a0 a3                                      movge r3, #0
00511d34  00 a0 84 a5                                      strge sl, [r4]
00511d38  04 30 c4 a5                                      strbge r3, [r4, #4]
00511d3c  19 00 00 ba                                      blt #0x511da8
00511d40  04 00 a0 e1                                      mov r0, r4
00511d44  14 d0 8d e2                                      add sp, sp, #0x14
00511d48  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00511d4c  01 50 a0 e1                                      mov r5, r1
00511d50  08 30 99 e5                                      ldr r3, [sb, #8]
00511d54  03 00 55 e1                                      cmp r5, r3
00511d58  32 00 00 0a                                      beq #0x511e28
00511d5c  00 30 d5 e5                                      ldrb r3, [r5]
00511d60  00 00 53 e3                                      cmp r3, #0
00511d64  03 00 00 1a                                      bne #0x511d78
00511d68  04 30 95 e5                                      ldr r3, [r5, #4]
00511d6c  04 30 93 e5                                      ldr r3, [r3, #4]
00511d70  03 00 55 e1                                      cmp r5, r3
00511d74  26 00 00 0a                                      beq #0x511e14
00511d78  08 20 95 e5                                      ldr r2, [r5, #8]
00511d7c  00 00 52 e3                                      cmp r2, #0
00511d80  01 00 00 1a                                      bne #0x511d8c
00511d84  14 00 00 ea                                      b #0x511ddc
00511d88  03 20 a0 e1                                      mov r2, r3
00511d8c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00511d90  00 00 53 e3                                      cmp r3, #0
00511d94  fb ff ff 1a                                      bne #0x511d88
00511d98  02 a0 a0 e1                                      mov sl, r2
00511d9c  14 70 98 e5                                      ldr r7, [r8, #0x14]
00511da0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00511da4  d1 ff ff ea                                      b #0x511cf0
00511da8  00 c0 a0 e3                                      mov ip, #0
00511dac  05 20 a0 e1                                      mov r2, r5
00511db0  08 30 a0 e1                                      mov r3, r8
00511db4  09 10 a0 e1                                      mov r1, sb
00511db8  08 00 8d e2                                      add r0, sp, #8
00511dbc  04 c0 8d e5                                      str ip, [sp, #4]
00511dc0  00 c0 8d e5                                      str ip, [sp]
00511dc4  df fd ff eb                                      bl #0x511548
00511dc8  08 30 9d e5                                      ldr r3, [sp, #8]
00511dcc  01 20 a0 e3                                      mov r2, #1
00511dd0  04 20 c4 e5                                      strb r2, [r4, #4]
00511dd4  00 30 84 e5                                      str r3, [r4]
00511dd8  d8 ff ff ea                                      b #0x511d40
00511ddc  04 30 95 e5                                      ldr r3, [r5, #4]
00511de0  08 20 93 e5                                      ldr r2, [r3, #8]
00511de4  02 00 55 e1                                      cmp r5, r2
00511de8  01 00 00 0a                                      beq #0x511df4
00511dec  19 00 00 ea                                      b #0x511e58
00511df0  02 30 a0 e1                                      mov r3, r2
00511df4  04 20 93 e5                                      ldr r2, [r3, #4]
00511df8  08 10 92 e5                                      ldr r1, [r2, #8]
00511dfc  03 00 51 e1                                      cmp r1, r3
00511e00  fa ff ff 0a                                      beq #0x511df0
00511e04  14 70 98 e5                                      ldr r7, [r8, #0x14]
00511e08  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00511e0c  02 a0 a0 e1                                      mov sl, r2
00511e10  b6 ff ff ea                                      b #0x511cf0
00511e14  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00511e18  14 70 98 e5                                      ldr r7, [r8, #0x14]
00511e1c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00511e20  02 a0 a0 e1                                      mov sl, r2
00511e24  b1 ff ff ea                                      b #0x511cf0
00511e28  05 20 a0 e1                                      mov r2, r5
00511e2c  08 30 a0 e1                                      mov r3, r8
00511e30  00 c0 a0 e3                                      mov ip, #0
00511e34  09 10 a0 e1                                      mov r1, sb
00511e38  0c 00 8d e2                                      add r0, sp, #0xc
00511e3c  20 10 8d e8                                      stm sp, {r5, ip}
00511e40  c0 fd ff eb                                      bl #0x511548
00511e44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00511e48  01 20 a0 e3                                      mov r2, #1
00511e4c  04 20 c4 e5                                      strb r2, [r4, #4]
00511e50  00 30 84 e5                                      str r3, [r4]
00511e54  b9 ff ff ea                                      b #0x511d40
00511e58  03 20 a0 e1                                      mov r2, r3
00511e5c  cd ff ff ea                                      b #0x511d98

; FUNCTION 0x00512e14, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsP8PropertyS2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE13insert_uniqueENS_17_Rb_tree_iteratorISB_SF_EERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > const&)
; decoder-mode: arm
00512e14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00512e18  44 d0 4d e2                                      sub sp, sp, #0x44
00512e1c  14 20 8d e5                                      str r2, [sp, #0x14]
00512e20  00 50 92 e5                                      ldr r5, [r2]
00512e24  08 20 91 e5                                      ldr r2, [r1, #8]
00512e28  01 60 a0 e1                                      mov r6, r1
00512e2c  00 70 a0 e1                                      mov r7, r0
00512e30  02 00 55 e1                                      cmp r5, r2
00512e34  03 80 a0 e1                                      mov r8, r3
00512e38  7c 00 00 0a                                      beq #0x513030
00512e3c  01 00 55 e1                                      cmp r5, r1
00512e40  d0 00 00 0a                                      beq #0x513188
00512e44  00 30 d5 e5                                      ldrb r3, [r5]
00512e48  00 00 53 e3                                      cmp r3, #0
00512e4c  35 00 00 0a                                      beq #0x512f28
00512e50  08 40 95 e5                                      ldr r4, [r5, #8]
00512e54  00 00 54 e3                                      cmp r4, #0
00512e58  01 00 00 1a                                      bne #0x512e64
00512e5c  39 00 00 ea                                      b #0x512f48
00512e60  03 40 a0 e1                                      mov r4, r3
00512e64  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00512e68  00 00 53 e3                                      cmp r3, #0
00512e6c  fb ff ff 1a                                      bne #0x512e60
00512e70  24 30 95 e5                                      ldr r3, [r5, #0x24]
00512e74  14 90 98 e5                                      ldr sb, [r8, #0x14]
00512e78  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00512e7c  20 20 95 e5                                      ldr r2, [r5, #0x20]
00512e80  03 10 a0 e1                                      mov r1, r3
00512e84  0b b0 69 e0                                      rsb fp, sb, fp
00512e88  02 20 63 e0                                      rsb r2, r3, r2
00512e8c  18 20 8d e5                                      str r2, [sp, #0x18]
00512e90  09 00 a0 e1                                      mov r0, sb
00512e94  0b 00 52 e1                                      cmp r2, fp
00512e98  0b 20 a0 a1                                      movge r2, fp
00512e9c  0c 30 8d e5                                      str r3, [sp, #0xc]
00512ea0  1c 20 8d e5                                      str r2, [sp, #0x1c]
00512ea4  cd ed f7 eb                                      bl #0x30e5e0
00512ea8  00 00 50 e3                                      cmp r0, #0
00512eac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00512eb0  05 00 00 1a                                      bne #0x512ecc
00512eb4  18 20 9d e5                                      ldr r2, [sp, #0x18]
00512eb8  02 00 5b e1                                      cmp fp, r2
00512ebc  00 00 e0 b3                                      mvnlt r0, #0
00512ec0  01 00 00 ba                                      blt #0x512ecc
00512ec4  00 00 a0 d3                                      movle r0, #0
00512ec8  01 00 a0 c3                                      movgt r0, #1
00512ecc  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
00512ed0  28 00 00 1a                                      bne #0x512f78
00512ed4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00512ed8  00 00 54 e3                                      cmp r4, #0
00512edc  01 00 00 1a                                      bne #0x512ee8
00512ee0  cc 00 00 ea                                      b #0x513218
00512ee4  02 40 a0 e1                                      mov r4, r2
00512ee8  08 20 94 e5                                      ldr r2, [r4, #8]
00512eec  00 00 52 e3                                      cmp r2, #0
00512ef0  fb ff ff 1a                                      bne #0x512ee4
00512ef4  00 00 5c e3                                      cmp ip, #0
00512ef8  43 00 00 1a                                      bne #0x51300c
00512efc  03 00 a0 e1                                      mov r0, r3
00512f00  09 10 a0 e1                                      mov r1, sb
00512f04  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00512f08  b4 ed f7 eb                                      bl #0x30e5e0
00512f0c  00 00 50 e3                                      cmp r0, #0
00512f10  34 00 00 1a                                      bne #0x512fe8
00512f14  18 30 9d e5                                      ldr r3, [sp, #0x18]
00512f18  03 00 5b e1                                      cmp fp, r3
00512f1c  32 00 00 ca                                      bgt #0x512fec
00512f20  00 50 87 e5                                      str r5, [r7]
00512f24  3e 00 00 ea                                      b #0x513024
00512f28  04 30 95 e5                                      ldr r3, [r5, #4]
00512f2c  04 30 93 e5                                      ldr r3, [r3, #4]
00512f30  03 00 55 e1                                      cmp r5, r3
00512f34  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00512f38  cc ff ff 0a                                      beq #0x512e70
00512f3c  08 40 95 e5                                      ldr r4, [r5, #8]
00512f40  00 00 54 e3                                      cmp r4, #0
00512f44  c6 ff ff 1a                                      bne #0x512e64
00512f48  04 40 95 e5                                      ldr r4, [r5, #4]
00512f4c  08 30 94 e5                                      ldr r3, [r4, #8]
00512f50  03 00 55 e1                                      cmp r5, r3
00512f54  01 00 00 0a                                      beq #0x512f60
00512f58  c4 ff ff ea                                      b #0x512e70
00512f5c  03 40 a0 e1                                      mov r4, r3
00512f60  04 30 94 e5                                      ldr r3, [r4, #4]
00512f64  08 20 93 e5                                      ldr r2, [r3, #8]
00512f68  04 00 52 e1                                      cmp r2, r4
00512f6c  fa ff ff 0a                                      beq #0x512f5c
00512f70  03 40 a0 e1                                      mov r4, r3
00512f74  bd ff ff ea                                      b #0x512e70
00512f78  24 20 94 e5                                      ldr r2, [r4, #0x24]
00512f7c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00512f80  09 10 a0 e1                                      mov r1, sb
00512f84  02 00 a0 e1                                      mov r0, r2
00512f88  0a a0 62 e0                                      rsb sl, r2, sl
00512f8c  0a 00 5b e1                                      cmp fp, sl
00512f90  0b 20 a0 b1                                      movlt r2, fp
00512f94  0a 20 a0 a1                                      movge r2, sl
00512f98  0c 30 8d e5                                      str r3, [sp, #0xc]
00512f9c  10 c0 8d e5                                      str ip, [sp, #0x10]
00512fa0  8e ed f7 eb                                      bl #0x30e5e0
00512fa4  00 00 50 e3                                      cmp r0, #0
00512fa8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00512fac  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00512fb0  6f 00 00 1a                                      bne #0x513174
00512fb4  0a 00 5b e1                                      cmp fp, sl
00512fb8  c5 ff ff da                                      ble #0x512ed4
00512fbc  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00512fc0  00 00 5c e3                                      cmp ip, #0
00512fc4  62 00 00 0a                                      beq #0x513154
00512fc8  00 c0 a0 e3                                      mov ip, #0
00512fcc  06 10 a0 e1                                      mov r1, r6
00512fd0  05 20 a0 e1                                      mov r2, r5
00512fd4  08 30 a0 e1                                      mov r3, r8
00512fd8  07 00 a0 e1                                      mov r0, r7
00512fdc  20 10 8d e8                                      stm sp, {r5, ip}
00512fe0  58 f9 ff eb                                      bl #0x511548
00512fe4  0e 00 00 ea                                      b #0x513024
00512fe8  cc ff ff aa                                      bge #0x512f20
00512fec  04 00 56 e1                                      cmp r6, r4
00512ff0  9b 00 00 0a                                      beq #0x513264
00512ff4  14 00 86 e2                                      add r0, r6, #0x14
00512ff8  08 10 a0 e1                                      mov r1, r8
00512ffc  10 20 84 e2                                      add r2, r4, #0x10
00513000  fc 02 f8 eb                                      bl #0x313bf8
00513004  00 00 50 e3                                      cmp r0, #0
00513008  93 00 00 1a                                      bne #0x51325c
0051300c  06 10 a0 e1                                      mov r1, r6
00513010  08 20 a0 e1                                      mov r2, r8
00513014  20 00 8d e2                                      add r0, sp, #0x20
00513018  0a fb ff eb                                      bl #0x511c48
0051301c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00513020  00 30 87 e5                                      str r3, [r7]
00513024  07 00 a0 e1                                      mov r0, r7
00513028  44 d0 8d e2                                      add sp, sp, #0x44
0051302c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00513030  10 30 91 e5                                      ldr r3, [r1, #0x10]
00513034  00 00 53 e3                                      cmp r3, #0
00513038  9f 00 00 0a                                      beq #0x5132bc
0051303c  14 30 98 e5                                      ldr r3, [r8, #0x14]
00513040  24 10 95 e5                                      ldr r1, [r5, #0x24]
00513044  10 40 98 e5                                      ldr r4, [r8, #0x10]
00513048  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0051304c  03 00 a0 e1                                      mov r0, r3
00513050  04 40 63 e0                                      rsb r4, r3, r4
00513054  0a a0 61 e0                                      rsb sl, r1, sl
00513058  04 00 5a e1                                      cmp sl, r4
0051305c  0a 20 a0 b1                                      movlt r2, sl
00513060  04 20 a0 a1                                      movge r2, r4
00513064  5d ed f7 eb                                      bl #0x30e5e0
00513068  00 00 50 e3                                      cmp r0, #0
0051306c  03 00 00 1a                                      bne #0x513080
00513070  0a 00 54 e1                                      cmp r4, sl
00513074  d3 ff ff ba                                      blt #0x512fc8
00513078  00 00 a0 d3                                      movle r0, #0
0051307c  01 00 a0 c3                                      movgt r0, #1
00513080  00 00 50 e3                                      cmp r0, #0
00513084  cf ff ff ba                                      blt #0x512fc8
00513088  14 a0 86 e2                                      add sl, r6, #0x14
0051308c  10 10 85 e2                                      add r1, r5, #0x10
00513090  0a 00 a0 e1                                      mov r0, sl
00513094  08 20 a0 e1                                      mov r2, r8
00513098  d6 02 f8 eb                                      bl #0x313bf8
0051309c  00 00 50 e3                                      cmp r0, #0
005130a0  81 00 00 0a                                      beq #0x5132ac
005130a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
005130a8  00 c0 93 e5                                      ldr ip, [r3]
005130ac  0c 40 9c e5                                      ldr r4, [ip, #0xc]
005130b0  00 00 54 e3                                      cmp r4, #0
005130b4  22 00 00 1a                                      bne #0x513144
005130b8  04 30 9c e5                                      ldr r3, [ip, #4]
005130bc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005130c0  02 00 5c e1                                      cmp ip, r2
005130c4  0c 40 a0 11                                      movne r4, ip
005130c8  04 00 00 1a                                      bne #0x5130e0
005130cc  03 40 a0 e1                                      mov r4, r3
005130d0  04 30 93 e5                                      ldr r3, [r3, #4]
005130d4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005130d8  04 00 52 e1                                      cmp r2, r4
005130dc  fa ff ff 0a                                      beq #0x5130cc
005130e0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005130e4  02 00 53 e1                                      cmp r3, r2
005130e8  03 40 a0 11                                      movne r4, r3
005130ec  04 00 56 e1                                      cmp r6, r4
005130f0  7f 00 00 0a                                      beq #0x5132f4
005130f4  0a 00 a0 e1                                      mov r0, sl
005130f8  08 10 a0 e1                                      mov r1, r8
005130fc  10 20 84 e2                                      add r2, r4, #0x10
00513100  bc 02 f8 eb                                      bl #0x313bf8
00513104  00 00 50 e3                                      cmp r0, #0
00513108  60 00 00 0a                                      beq #0x513290
0051310c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00513110  00 c0 92 e5                                      ldr ip, [r2]
00513114  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00513118  00 00 5e e3                                      cmp lr, #0
0051311c  6c 00 00 0a                                      beq #0x5132d4
00513120  00 c0 a0 e3                                      mov ip, #0
00513124  06 10 a0 e1                                      mov r1, r6
00513128  04 20 a0 e1                                      mov r2, r4
0051312c  08 30 a0 e1                                      mov r3, r8
00513130  07 00 a0 e1                                      mov r0, r7
00513134  10 10 8d e8                                      stm sp, {r4, ip}
00513138  02 f9 ff eb                                      bl #0x511548
0051313c  b8 ff ff ea                                      b #0x513024
00513140  03 40 a0 e1                                      mov r4, r3
00513144  08 30 94 e5                                      ldr r3, [r4, #8]
00513148  00 00 53 e3                                      cmp r3, #0
0051314c  fb ff ff 1a                                      bne #0x513140
00513150  e5 ff ff ea                                      b #0x5130ec
00513154  06 10 a0 e1                                      mov r1, r6
00513158  04 20 a0 e1                                      mov r2, r4
0051315c  08 30 a0 e1                                      mov r3, r8
00513160  07 00 a0 e1                                      mov r0, r7
00513164  00 c0 8d e5                                      str ip, [sp]
00513168  04 40 8d e5                                      str r4, [sp, #4]
0051316c  f5 f8 ff eb                                      bl #0x511548
00513170  ab ff ff ea                                      b #0x513024
00513174  56 ff ff aa                                      bge #0x512ed4
00513178  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0051317c  00 00 5c e3                                      cmp ip, #0
00513180  90 ff ff 1a                                      bne #0x512fc8
00513184  f2 ff ff ea                                      b #0x513154
00513188  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0051318c  14 10 93 e5                                      ldr r1, [r3, #0x14]
00513190  10 90 93 e5                                      ldr sb, [r3, #0x10]
00513194  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00513198  24 30 94 e5                                      ldr r3, [r4, #0x24]
0051319c  09 90 61 e0                                      rsb sb, r1, sb
005131a0  0a a0 63 e0                                      rsb sl, r3, sl
005131a4  0a 00 59 e1                                      cmp sb, sl
005131a8  09 20 a0 b1                                      movlt r2, sb
005131ac  0a 20 a0 a1                                      movge r2, sl
005131b0  03 00 a0 e1                                      mov r0, r3
005131b4  09 ed f7 eb                                      bl #0x30e5e0
005131b8  00 00 50 e3                                      cmp r0, #0
005131bc  03 00 00 1a                                      bne #0x5131d0
005131c0  09 00 5a e1                                      cmp sl, sb
005131c4  03 00 00 ba                                      blt #0x5131d8
005131c8  00 00 a0 d3                                      movle r0, #0
005131cc  01 00 a0 c3                                      movgt r0, #1
005131d0  00 00 50 e3                                      cmp r0, #0
005131d4  08 00 00 aa                                      bge #0x5131fc
005131d8  00 c0 a0 e3                                      mov ip, #0
005131dc  06 10 a0 e1                                      mov r1, r6
005131e0  04 20 a0 e1                                      mov r2, r4
005131e4  08 30 a0 e1                                      mov r3, r8
005131e8  07 00 a0 e1                                      mov r0, r7
005131ec  00 c0 8d e5                                      str ip, [sp]
005131f0  04 50 8d e5                                      str r5, [sp, #4]
005131f4  d3 f8 ff eb                                      bl #0x511548
005131f8  89 ff ff ea                                      b #0x513024
005131fc  06 10 a0 e1                                      mov r1, r6
00513200  08 20 a0 e1                                      mov r2, r8
00513204  28 00 8d e2                                      add r0, sp, #0x28
00513208  8e fa ff eb                                      bl #0x511c48
0051320c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00513210  00 30 87 e5                                      str r3, [r7]
00513214  82 ff ff ea                                      b #0x513024
00513218  04 20 95 e5                                      ldr r2, [r5, #4]
0051321c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00513220  01 00 55 e1                                      cmp r5, r1
00513224  05 40 a0 11                                      movne r4, r5
00513228  04 00 00 0a                                      beq #0x513240
0051322c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00513230  01 00 52 e1                                      cmp r2, r1
00513234  02 40 a0 11                                      movne r4, r2
00513238  2d ff ff ea                                      b #0x512ef4
0051323c  01 20 a0 e1                                      mov r2, r1
00513240  04 10 92 e5                                      ldr r1, [r2, #4]
00513244  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00513248  02 00 50 e1                                      cmp r0, r2
0051324c  fa ff ff 0a                                      beq #0x51323c
00513250  02 40 a0 e1                                      mov r4, r2
00513254  01 20 a0 e1                                      mov r2, r1
00513258  f3 ff ff ea                                      b #0x51322c
0051325c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00513260  00 50 92 e5                                      ldr r5, [r2]
00513264  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00513268  00 00 5c e3                                      cmp ip, #0
0051326c  ab ff ff 1a                                      bne #0x513120
00513270  06 10 a0 e1                                      mov r1, r6
00513274  05 20 a0 e1                                      mov r2, r5
00513278  08 30 a0 e1                                      mov r3, r8
0051327c  07 00 a0 e1                                      mov r0, r7
00513280  00 c0 8d e5                                      str ip, [sp]
00513284  04 50 8d e5                                      str r5, [sp, #4]
00513288  ae f8 ff eb                                      bl #0x511548
0051328c  64 ff ff ea                                      b #0x513024
00513290  06 10 a0 e1                                      mov r1, r6
00513294  08 20 a0 e1                                      mov r2, r8
00513298  30 00 8d e2                                      add r0, sp, #0x30
0051329c  69 fa ff eb                                      bl #0x511c48
005132a0  30 30 9d e5                                      ldr r3, [sp, #0x30]
005132a4  00 30 87 e5                                      str r3, [r7]
005132a8  5d ff ff ea                                      b #0x513024
005132ac  14 20 9d e5                                      ldr r2, [sp, #0x14]
005132b0  00 30 92 e5                                      ldr r3, [r2]
005132b4  00 30 87 e5                                      str r3, [r7]
005132b8  59 ff ff ea                                      b #0x513024
005132bc  08 20 a0 e1                                      mov r2, r8
005132c0  38 00 8d e2                                      add r0, sp, #0x38
005132c4  5f fa ff eb                                      bl #0x511c48
005132c8  38 30 9d e5                                      ldr r3, [sp, #0x38]
005132cc  00 30 87 e5                                      str r3, [r7]
005132d0  53 ff ff ea                                      b #0x513024
005132d4  06 10 a0 e1                                      mov r1, r6
005132d8  0c 20 a0 e1                                      mov r2, ip
005132dc  08 30 a0 e1                                      mov r3, r8
005132e0  07 00 a0 e1                                      mov r0, r7
005132e4  00 e0 8d e5                                      str lr, [sp]
005132e8  04 c0 8d e5                                      str ip, [sp, #4]
005132ec  95 f8 ff eb                                      bl #0x511548
005132f0  4b ff ff ea                                      b #0x513024
005132f4  00 e0 a0 e3                                      mov lr, #0
005132f8  06 10 a0 e1                                      mov r1, r6
005132fc  0c 20 a0 e1                                      mov r2, ip
00513300  08 30 a0 e1                                      mov r3, r8
00513304  07 00 a0 e1                                      mov r0, r7
00513308  00 e0 8d e5                                      str lr, [sp]
0051330c  04 c0 8d e5                                      str ip, [sp, #4]
00513310  8c f8 ff eb                                      bl #0x511548
00513314  42 ff ff ea                                      b #0x513024
