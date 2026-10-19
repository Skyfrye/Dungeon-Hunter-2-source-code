; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00330bb0, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00330bb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00330bb4  00 40 51 e2                                      subs r4, r1, #0
00330bb8  00 60 a0 e1                                      mov r6, r0
00330bbc  0a 00 00 0a                                      beq #0x330bec
00330bc0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00330bc4  06 00 a0 e1                                      mov r0, r6
00330bc8  f8 ff ff eb                                      bl #0x330bb0
00330bcc  08 50 94 e5                                      ldr r5, [r4, #8]
00330bd0  10 00 84 e2                                      add r0, r4, #0x10
00330bd4  74 8b ff eb                                      bl #0x3139ac
00330bd8  04 00 a0 e1                                      mov r0, r4
00330bdc  2c 10 a0 e3                                      mov r1, #0x2c
00330be0  c6 60 0f eb                                      bl #0x708f00
00330be4  00 40 55 e2                                      subs r4, r5, #0
00330be8  f4 ff ff 1a                                      bne #0x330bc0
00330bec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003345ec, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE14_M_create_nodeERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> const&)
; decoder-mode: arm
003345ec  30 40 2d e9                                      push {r4, r5, lr}
003345f0  0c d0 4d e2                                      sub sp, sp, #0xc
003345f4  2c 30 a0 e3                                      mov r3, #0x2c
003345f8  08 00 8d e2                                      add r0, sp, #8
003345fc  04 30 20 e5                                      str r3, [r0, #-4]!
00334600  01 50 a0 e1                                      mov r5, r1
00334604  2d 52 0f eb                                      bl #0x708ec0
00334608  00 40 a0 e1                                      mov r4, r0
0033460c  10 00 80 e2                                      add r0, r0, #0x10
00334610  20 00 84 e5                                      str r0, [r4, #0x20]
00334614  24 00 84 e5                                      str r0, [r4, #0x24]
00334618  10 20 95 e5                                      ldr r2, [r5, #0x10]
0033461c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00334620  30 74 ff eb                                      bl #0x3116e8
00334624  18 20 d5 e5                                      ldrb r2, [r5, #0x18]
00334628  00 30 a0 e3                                      mov r3, #0
0033462c  0c 30 84 e5                                      str r3, [r4, #0xc]
00334630  28 20 c4 e5                                      strb r2, [r4, #0x28]
00334634  08 30 84 e5                                      str r3, [r4, #8]
00334638  04 00 a0 e1                                      mov r0, r4
0033463c  0c d0 8d e2                                      add sp, sp, #0xc
00334640  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00334644, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_copyEPNS_18_Rb_tree_node_baseESD_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00334644  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00334648  01 40 a0 e1                                      mov r4, r1
0033464c  10 10 81 e2                                      add r1, r1, #0x10
00334650  02 50 a0 e1                                      mov r5, r2
00334654  00 70 a0 e1                                      mov r7, r0
00334658  e3 ff ff eb                                      bl #0x3345ec
0033465c  00 30 d4 e5                                      ldrb r3, [r4]
00334660  04 50 80 e5                                      str r5, [r0, #4]
00334664  00 80 a0 e1                                      mov r8, r0
00334668  00 30 c0 e5                                      strb r3, [r0]
0033466c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00334670  00 00 51 e3                                      cmp r1, #0
00334674  03 00 00 0a                                      beq #0x334688
00334678  07 00 a0 e1                                      mov r0, r7
0033467c  08 20 a0 e1                                      mov r2, r8
00334680  ef ff ff eb                                      bl #0x334644
00334684  0c 00 88 e5                                      str r0, [r8, #0xc]
00334688  08 50 94 e5                                      ldr r5, [r4, #8]
0033468c  00 00 55 e3                                      cmp r5, #0
00334690  13 00 00 0a                                      beq #0x3346e4
00334694  08 60 a0 e1                                      mov r6, r8
00334698  10 10 85 e2                                      add r1, r5, #0x10
0033469c  07 00 a0 e1                                      mov r0, r7
003346a0  d1 ff ff eb                                      bl #0x3345ec
003346a4  00 30 d5 e5                                      ldrb r3, [r5]
003346a8  00 40 a0 e1                                      mov r4, r0
003346ac  04 20 a0 e1                                      mov r2, r4
003346b0  00 30 c4 e5                                      strb r3, [r4]
003346b4  08 40 86 e5                                      str r4, [r6, #8]
003346b8  04 60 84 e5                                      str r6, [r4, #4]
003346bc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003346c0  07 00 a0 e1                                      mov r0, r7
003346c4  04 60 a0 e1                                      mov r6, r4
003346c8  00 10 53 e2                                      subs r1, r3, #0
003346cc  01 00 00 0a                                      beq #0x3346d8
003346d0  db ff ff eb                                      bl #0x334644
003346d4  0c 00 84 e5                                      str r0, [r4, #0xc]
003346d8  08 50 95 e5                                      ldr r5, [r5, #8]
003346dc  00 00 55 e3                                      cmp r5, #0
003346e0  ec ff ff 1a                                      bne #0x334698
003346e4  08 00 a0 e1                                      mov r0, r8
003346e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003346ec, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EEC1ERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_Rb_tree(std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > > const&)
; decoder-mode: arm
003346ec  70 40 2d e9                                      push {r4, r5, r6, lr}
003346f0  00 30 a0 e3                                      mov r3, #0
003346f4  00 40 a0 e1                                      mov r4, r0
003346f8  10 30 80 e5                                      str r3, [r0, #0x10]
003346fc  04 30 80 e5                                      str r3, [r0, #4]
00334700  00 30 c0 e5                                      strb r3, [r0]
00334704  08 00 84 e5                                      str r0, [r4, #8]
00334708  0c 00 84 e5                                      str r0, [r4, #0xc]
0033470c  01 50 a0 e1                                      mov r5, r1
00334710  04 10 91 e5                                      ldr r1, [r1, #4]
00334714  03 00 51 e1                                      cmp r1, r3
00334718  0d 00 00 0a                                      beq #0x334754
0033471c  00 20 a0 e1                                      mov r2, r0
00334720  c7 ff ff eb                                      bl #0x334644
00334724  04 00 84 e5                                      str r0, [r4, #4]
00334728  00 30 a0 e1                                      mov r3, r0
0033472c  03 20 a0 e1                                      mov r2, r3
00334730  08 30 93 e5                                      ldr r3, [r3, #8]
00334734  00 00 53 e3                                      cmp r3, #0
00334738  fb ff ff 1a                                      bne #0x33472c
0033473c  08 20 84 e5                                      str r2, [r4, #8]
00334740  00 30 a0 e1                                      mov r3, r0
00334744  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00334748  00 00 50 e3                                      cmp r0, #0
0033474c  fb ff ff 1a                                      bne #0x334740
00334750  0c 30 84 e5                                      str r3, [r4, #0xc]
00334754  10 30 95 e5                                      ldr r3, [r5, #0x10]
00334758  04 00 a0 e1                                      mov r0, r4
0033475c  10 30 84 e5                                      str r3, [r4, #0x10]
00334760  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033695c, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE5eraseENS_17_Rb_tree_iteratorIS5_S9_EE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::erase(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >)
; decoder-mode: arm
0033695c  70 40 2d e9                                      push {r4, r5, r6, lr}
00336960  00 40 a0 e1                                      mov r4, r0
00336964  08 20 84 e2                                      add r2, r4, #8
00336968  00 00 91 e5                                      ldr r0, [r1]
0033696c  0c 30 84 e2                                      add r3, r4, #0xc
00336970  04 10 84 e2                                      add r1, r4, #4
00336974  a2 fd ff eb                                      bl #0x336004
00336978  00 50 a0 e1                                      mov r5, r0
0033697c  10 00 80 e2                                      add r0, r0, #0x10
00336980  33 86 ff eb                                      bl #0x318254
00336984  00 00 55 e3                                      cmp r5, #0
00336988  02 00 00 0a                                      beq #0x336998
0033698c  05 00 a0 e1                                      mov r0, r5
00336990  2c 10 a0 e3                                      mov r1, #0x2c
00336994  59 49 0f eb                                      bl #0x708f00
00336998  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033699c  01 30 43 e2                                      sub r3, r3, #1
003369a0  10 30 84 e5                                      str r3, [r4, #0x10]
003369a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00336a7c, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00336a7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00336a80  02 00 51 e1                                      cmp r1, r2
00336a84  0c d0 4d e2                                      sub sp, sp, #0xc
00336a88  01 40 a0 e1                                      mov r4, r1
00336a8c  02 50 a0 e1                                      mov r5, r2
00336a90  00 60 a0 e1                                      mov r6, r0
00336a94  23 00 00 0a                                      beq #0x336b28
00336a98  24 20 9d e5                                      ldr r2, [sp, #0x24]
00336a9c  00 00 52 e3                                      cmp r2, #0
00336aa0  12 00 00 0a                                      beq #0x336af0
00336aa4  03 10 a0 e1                                      mov r1, r3
00336aa8  04 00 a0 e1                                      mov r0, r4
00336aac  ce f6 ff eb                                      bl #0x3345ec
00336ab0  0c 00 85 e5                                      str r0, [r5, #0xc]
00336ab4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00336ab8  00 70 a0 e1                                      mov r7, r0
00336abc  03 00 55 e1                                      cmp r5, r3
00336ac0  16 00 00 0a                                      beq #0x336b20
00336ac4  07 00 a0 e1                                      mov r0, r7
00336ac8  04 50 87 e5                                      str r5, [r7, #4]
00336acc  04 10 84 e2                                      add r1, r4, #4
00336ad0  22 73 ff eb                                      bl #0x313760
00336ad4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00336ad8  06 00 a0 e1                                      mov r0, r6
00336adc  01 30 83 e2                                      add r3, r3, #1
00336ae0  10 30 84 e5                                      str r3, [r4, #0x10]
00336ae4  00 70 86 e5                                      str r7, [r6]
00336ae8  0c d0 8d e2                                      add sp, sp, #0xc
00336aec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00336af0  20 20 9d e5                                      ldr r2, [sp, #0x20]
00336af4  00 00 52 e3                                      cmp r2, #0
00336af8  12 00 00 0a                                      beq #0x336b48
00336afc  03 10 a0 e1                                      mov r1, r3
00336b00  04 00 a0 e1                                      mov r0, r4
00336b04  b8 f6 ff eb                                      bl #0x3345ec
00336b08  08 00 85 e5                                      str r0, [r5, #8]
00336b0c  08 30 94 e5                                      ldr r3, [r4, #8]
00336b10  00 70 a0 e1                                      mov r7, r0
00336b14  03 00 55 e1                                      cmp r5, r3
00336b18  08 00 84 05                                      streq r0, [r4, #8]
00336b1c  e8 ff ff ea                                      b #0x336ac4
00336b20  0c 70 84 e5                                      str r7, [r4, #0xc]
00336b24  e6 ff ff ea                                      b #0x336ac4
00336b28  03 10 a0 e1                                      mov r1, r3
00336b2c  04 00 a0 e1                                      mov r0, r4
00336b30  ad f6 ff eb                                      bl #0x3345ec
00336b34  00 70 a0 e1                                      mov r7, r0
00336b38  08 00 84 e5                                      str r0, [r4, #8]
00336b3c  04 00 84 e5                                      str r0, [r4, #4]
00336b40  0c 00 84 e5                                      str r0, [r4, #0xc]
00336b44  de ff ff ea                                      b #0x336ac4
00336b48  14 00 81 e2                                      add r0, r1, #0x14
00336b4c  10 20 85 e2                                      add r2, r5, #0x10
00336b50  03 10 a0 e1                                      mov r1, r3
00336b54  04 30 8d e5                                      str r3, [sp, #4]
00336b58  26 74 ff eb                                      bl #0x313bf8
00336b5c  00 00 50 e3                                      cmp r0, #0
00336b60  04 30 9d e5                                      ldr r3, [sp, #4]
00336b64  ce ff ff 0a                                      beq #0x336aa4
00336b68  e3 ff ff ea                                      b #0x336afc

; FUNCTION 0x00336b6c, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> const&)
; decoder-mode: arm
00336b6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00336b70  04 50 91 e5                                      ldr r5, [r1, #4]
00336b74  14 d0 4d e2                                      sub sp, sp, #0x14
00336b78  01 90 a0 e1                                      mov sb, r1
00336b7c  00 00 55 e3                                      cmp r5, #0
00336b80  00 40 a0 e1                                      mov r4, r0
00336b84  02 80 a0 e1                                      mov r8, r2
00336b88  38 00 00 0a                                      beq #0x336c70
00336b8c  14 70 92 e5                                      ldr r7, [r2, #0x14]
00336b90  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00336b94  0b a0 67 e0                                      rsb sl, r7, fp
00336b98  04 00 00 ea                                      b #0x336bb0
00336b9c  08 30 95 e5                                      ldr r3, [r5, #8]
00336ba0  01 10 a0 e3                                      mov r1, #1
00336ba4  00 00 53 e3                                      cmp r3, #0
00336ba8  16 00 00 0a                                      beq #0x336c08
00336bac  03 50 a0 e1                                      mov r5, r3
00336bb0  24 30 95 e5                                      ldr r3, [r5, #0x24]
00336bb4  20 60 95 e5                                      ldr r6, [r5, #0x20]
00336bb8  07 00 a0 e1                                      mov r0, r7
00336bbc  03 10 a0 e1                                      mov r1, r3
00336bc0  06 60 63 e0                                      rsb r6, r3, r6
00336bc4  0a 00 56 e1                                      cmp r6, sl
00336bc8  06 20 a0 b1                                      movlt r2, r6
00336bcc  0a 20 a0 a1                                      movge r2, sl
00336bd0  82 5e ff eb                                      bl #0x30e5e0
00336bd4  00 00 50 e3                                      cmp r0, #0
00336bd8  05 20 a0 e1                                      mov r2, r5
00336bdc  03 00 00 1a                                      bne #0x336bf0
00336be0  06 00 5a e1                                      cmp sl, r6
00336be4  ec ff ff ba                                      blt #0x336b9c
00336be8  00 00 a0 d3                                      movle r0, #0
00336bec  01 00 a0 c3                                      movgt r0, #1
00336bf0  00 00 50 e3                                      cmp r0, #0
00336bf4  e8 ff ff ba                                      blt #0x336b9c
00336bf8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00336bfc  00 10 a0 e3                                      mov r1, #0
00336c00  00 00 53 e3                                      cmp r3, #0
00336c04  e8 ff ff 1a                                      bne #0x336bac
00336c08  00 00 51 e3                                      cmp r1, #0
00336c0c  05 a0 a0 01                                      moveq sl, r5
00336c10  17 00 00 1a                                      bne #0x336c74
00336c14  24 00 92 e5                                      ldr r0, [r2, #0x24]
00336c18  20 60 92 e5                                      ldr r6, [r2, #0x20]
00336c1c  0b b0 67 e0                                      rsb fp, r7, fp
00336c20  07 10 a0 e1                                      mov r1, r7
00336c24  06 60 60 e0                                      rsb r6, r0, r6
00336c28  06 00 5b e1                                      cmp fp, r6
00336c2c  0b 20 a0 b1                                      movlt r2, fp
00336c30  06 20 a0 a1                                      movge r2, r6
00336c34  69 5e ff eb                                      bl #0x30e5e0
00336c38  00 00 50 e3                                      cmp r0, #0
00336c3c  03 00 00 1a                                      bne #0x336c50
00336c40  0b 00 56 e1                                      cmp r6, fp
00336c44  20 00 00 ba                                      blt #0x336ccc
00336c48  00 00 a0 d3                                      movle r0, #0
00336c4c  01 00 a0 c3                                      movgt r0, #1
00336c50  00 00 50 e3                                      cmp r0, #0
00336c54  00 30 a0 a3                                      movge r3, #0
00336c58  00 a0 84 a5                                      strge sl, [r4]
00336c5c  04 30 c4 a5                                      strbge r3, [r4, #4]
00336c60  19 00 00 ba                                      blt #0x336ccc
00336c64  04 00 a0 e1                                      mov r0, r4
00336c68  14 d0 8d e2                                      add sp, sp, #0x14
00336c6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00336c70  01 50 a0 e1                                      mov r5, r1
00336c74  08 30 99 e5                                      ldr r3, [sb, #8]
00336c78  03 00 55 e1                                      cmp r5, r3
00336c7c  32 00 00 0a                                      beq #0x336d4c
00336c80  00 30 d5 e5                                      ldrb r3, [r5]
00336c84  00 00 53 e3                                      cmp r3, #0
00336c88  03 00 00 1a                                      bne #0x336c9c
00336c8c  04 30 95 e5                                      ldr r3, [r5, #4]
00336c90  04 30 93 e5                                      ldr r3, [r3, #4]
00336c94  03 00 55 e1                                      cmp r5, r3
00336c98  26 00 00 0a                                      beq #0x336d38
00336c9c  08 20 95 e5                                      ldr r2, [r5, #8]
00336ca0  00 00 52 e3                                      cmp r2, #0
00336ca4  01 00 00 1a                                      bne #0x336cb0
00336ca8  14 00 00 ea                                      b #0x336d00
00336cac  03 20 a0 e1                                      mov r2, r3
00336cb0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00336cb4  00 00 53 e3                                      cmp r3, #0
00336cb8  fb ff ff 1a                                      bne #0x336cac
00336cbc  02 a0 a0 e1                                      mov sl, r2
00336cc0  14 70 98 e5                                      ldr r7, [r8, #0x14]
00336cc4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00336cc8  d1 ff ff ea                                      b #0x336c14
00336ccc  00 c0 a0 e3                                      mov ip, #0
00336cd0  05 20 a0 e1                                      mov r2, r5
00336cd4  08 30 a0 e1                                      mov r3, r8
00336cd8  09 10 a0 e1                                      mov r1, sb
00336cdc  08 00 8d e2                                      add r0, sp, #8
00336ce0  04 c0 8d e5                                      str ip, [sp, #4]
00336ce4  00 c0 8d e5                                      str ip, [sp]
00336ce8  63 ff ff eb                                      bl #0x336a7c
00336cec  08 30 9d e5                                      ldr r3, [sp, #8]
00336cf0  01 20 a0 e3                                      mov r2, #1
00336cf4  04 20 c4 e5                                      strb r2, [r4, #4]
00336cf8  00 30 84 e5                                      str r3, [r4]
00336cfc  d8 ff ff ea                                      b #0x336c64
00336d00  04 30 95 e5                                      ldr r3, [r5, #4]
00336d04  08 20 93 e5                                      ldr r2, [r3, #8]
00336d08  02 00 55 e1                                      cmp r5, r2
00336d0c  01 00 00 0a                                      beq #0x336d18
00336d10  19 00 00 ea                                      b #0x336d7c
00336d14  02 30 a0 e1                                      mov r3, r2
00336d18  04 20 93 e5                                      ldr r2, [r3, #4]
00336d1c  08 10 92 e5                                      ldr r1, [r2, #8]
00336d20  03 00 51 e1                                      cmp r1, r3
00336d24  fa ff ff 0a                                      beq #0x336d14
00336d28  14 70 98 e5                                      ldr r7, [r8, #0x14]
00336d2c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00336d30  02 a0 a0 e1                                      mov sl, r2
00336d34  b6 ff ff ea                                      b #0x336c14
00336d38  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00336d3c  14 70 98 e5                                      ldr r7, [r8, #0x14]
00336d40  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00336d44  02 a0 a0 e1                                      mov sl, r2
00336d48  b1 ff ff ea                                      b #0x336c14
00336d4c  05 20 a0 e1                                      mov r2, r5
00336d50  08 30 a0 e1                                      mov r3, r8
00336d54  00 c0 a0 e3                                      mov ip, #0
00336d58  09 10 a0 e1                                      mov r1, sb
00336d5c  0c 00 8d e2                                      add r0, sp, #0xc
00336d60  20 10 8d e8                                      stm sp, {r5, ip}
00336d64  44 ff ff eb                                      bl #0x336a7c
00336d68  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00336d6c  01 20 a0 e3                                      mov r2, #1
00336d70  04 20 c4 e5                                      strb r2, [r4, #4]
00336d74  00 30 84 e5                                      str r3, [r4]
00336d78  b9 ff ff ea                                      b #0x336c64
00336d7c  03 20 a0 e1                                      mov r2, r3
00336d80  cd ff ff ea                                      b #0x336cbc

; FUNCTION 0x00336d84, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> const&)
; decoder-mode: arm
00336d84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00336d88  44 d0 4d e2                                      sub sp, sp, #0x44
00336d8c  14 20 8d e5                                      str r2, [sp, #0x14]
00336d90  00 50 92 e5                                      ldr r5, [r2]
00336d94  08 20 91 e5                                      ldr r2, [r1, #8]
00336d98  01 60 a0 e1                                      mov r6, r1
00336d9c  00 70 a0 e1                                      mov r7, r0
00336da0  02 00 55 e1                                      cmp r5, r2
00336da4  03 80 a0 e1                                      mov r8, r3
00336da8  7c 00 00 0a                                      beq #0x336fa0
00336dac  01 00 55 e1                                      cmp r5, r1
00336db0  d0 00 00 0a                                      beq #0x3370f8
00336db4  00 30 d5 e5                                      ldrb r3, [r5]
00336db8  00 00 53 e3                                      cmp r3, #0
00336dbc  35 00 00 0a                                      beq #0x336e98
00336dc0  08 40 95 e5                                      ldr r4, [r5, #8]
00336dc4  00 00 54 e3                                      cmp r4, #0
00336dc8  01 00 00 1a                                      bne #0x336dd4
00336dcc  39 00 00 ea                                      b #0x336eb8
00336dd0  03 40 a0 e1                                      mov r4, r3
00336dd4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00336dd8  00 00 53 e3                                      cmp r3, #0
00336ddc  fb ff ff 1a                                      bne #0x336dd0
00336de0  24 30 95 e5                                      ldr r3, [r5, #0x24]
00336de4  14 90 98 e5                                      ldr sb, [r8, #0x14]
00336de8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00336dec  20 20 95 e5                                      ldr r2, [r5, #0x20]
00336df0  03 10 a0 e1                                      mov r1, r3
00336df4  0b b0 69 e0                                      rsb fp, sb, fp
00336df8  02 20 63 e0                                      rsb r2, r3, r2
00336dfc  18 20 8d e5                                      str r2, [sp, #0x18]
00336e00  09 00 a0 e1                                      mov r0, sb
00336e04  0b 00 52 e1                                      cmp r2, fp
00336e08  0b 20 a0 a1                                      movge r2, fp
00336e0c  0c 30 8d e5                                      str r3, [sp, #0xc]
00336e10  1c 20 8d e5                                      str r2, [sp, #0x1c]
00336e14  f1 5d ff eb                                      bl #0x30e5e0
00336e18  00 00 50 e3                                      cmp r0, #0
00336e1c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00336e20  05 00 00 1a                                      bne #0x336e3c
00336e24  18 20 9d e5                                      ldr r2, [sp, #0x18]
00336e28  02 00 5b e1                                      cmp fp, r2
00336e2c  00 00 e0 b3                                      mvnlt r0, #0
00336e30  01 00 00 ba                                      blt #0x336e3c
00336e34  00 00 a0 d3                                      movle r0, #0
00336e38  01 00 a0 c3                                      movgt r0, #1
00336e3c  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
00336e40  28 00 00 1a                                      bne #0x336ee8
00336e44  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00336e48  00 00 54 e3                                      cmp r4, #0
00336e4c  01 00 00 1a                                      bne #0x336e58
00336e50  cc 00 00 ea                                      b #0x337188
00336e54  02 40 a0 e1                                      mov r4, r2
00336e58  08 20 94 e5                                      ldr r2, [r4, #8]
00336e5c  00 00 52 e3                                      cmp r2, #0
00336e60  fb ff ff 1a                                      bne #0x336e54
00336e64  00 00 5c e3                                      cmp ip, #0
00336e68  43 00 00 1a                                      bne #0x336f7c
00336e6c  03 00 a0 e1                                      mov r0, r3
00336e70  09 10 a0 e1                                      mov r1, sb
00336e74  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00336e78  d8 5d ff eb                                      bl #0x30e5e0
00336e7c  00 00 50 e3                                      cmp r0, #0
00336e80  34 00 00 1a                                      bne #0x336f58
00336e84  18 30 9d e5                                      ldr r3, [sp, #0x18]
00336e88  03 00 5b e1                                      cmp fp, r3
00336e8c  32 00 00 ca                                      bgt #0x336f5c
00336e90  00 50 87 e5                                      str r5, [r7]
00336e94  3e 00 00 ea                                      b #0x336f94
00336e98  04 30 95 e5                                      ldr r3, [r5, #4]
00336e9c  04 30 93 e5                                      ldr r3, [r3, #4]
00336ea0  03 00 55 e1                                      cmp r5, r3
00336ea4  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00336ea8  cc ff ff 0a                                      beq #0x336de0
00336eac  08 40 95 e5                                      ldr r4, [r5, #8]
00336eb0  00 00 54 e3                                      cmp r4, #0
00336eb4  c6 ff ff 1a                                      bne #0x336dd4
00336eb8  04 40 95 e5                                      ldr r4, [r5, #4]
00336ebc  08 30 94 e5                                      ldr r3, [r4, #8]
00336ec0  03 00 55 e1                                      cmp r5, r3
00336ec4  01 00 00 0a                                      beq #0x336ed0
00336ec8  c4 ff ff ea                                      b #0x336de0
00336ecc  03 40 a0 e1                                      mov r4, r3
00336ed0  04 30 94 e5                                      ldr r3, [r4, #4]
00336ed4  08 20 93 e5                                      ldr r2, [r3, #8]
00336ed8  04 00 52 e1                                      cmp r2, r4
00336edc  fa ff ff 0a                                      beq #0x336ecc
00336ee0  03 40 a0 e1                                      mov r4, r3
00336ee4  bd ff ff ea                                      b #0x336de0
00336ee8  24 20 94 e5                                      ldr r2, [r4, #0x24]
00336eec  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00336ef0  09 10 a0 e1                                      mov r1, sb
00336ef4  02 00 a0 e1                                      mov r0, r2
00336ef8  0a a0 62 e0                                      rsb sl, r2, sl
00336efc  0a 00 5b e1                                      cmp fp, sl
00336f00  0b 20 a0 b1                                      movlt r2, fp
00336f04  0a 20 a0 a1                                      movge r2, sl
00336f08  0c 30 8d e5                                      str r3, [sp, #0xc]
00336f0c  10 c0 8d e5                                      str ip, [sp, #0x10]
00336f10  b2 5d ff eb                                      bl #0x30e5e0
00336f14  00 00 50 e3                                      cmp r0, #0
00336f18  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00336f1c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00336f20  6f 00 00 1a                                      bne #0x3370e4
00336f24  0a 00 5b e1                                      cmp fp, sl
00336f28  c5 ff ff da                                      ble #0x336e44
00336f2c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00336f30  00 00 5c e3                                      cmp ip, #0
00336f34  62 00 00 0a                                      beq #0x3370c4
00336f38  00 c0 a0 e3                                      mov ip, #0
00336f3c  06 10 a0 e1                                      mov r1, r6
00336f40  05 20 a0 e1                                      mov r2, r5
00336f44  08 30 a0 e1                                      mov r3, r8
00336f48  07 00 a0 e1                                      mov r0, r7
00336f4c  20 10 8d e8                                      stm sp, {r5, ip}
00336f50  c9 fe ff eb                                      bl #0x336a7c
00336f54  0e 00 00 ea                                      b #0x336f94
00336f58  cc ff ff aa                                      bge #0x336e90
00336f5c  04 00 56 e1                                      cmp r6, r4
00336f60  9b 00 00 0a                                      beq #0x3371d4
00336f64  14 00 86 e2                                      add r0, r6, #0x14
00336f68  08 10 a0 e1                                      mov r1, r8
00336f6c  10 20 84 e2                                      add r2, r4, #0x10
00336f70  20 73 ff eb                                      bl #0x313bf8
00336f74  00 00 50 e3                                      cmp r0, #0
00336f78  93 00 00 1a                                      bne #0x3371cc
00336f7c  06 10 a0 e1                                      mov r1, r6
00336f80  08 20 a0 e1                                      mov r2, r8
00336f84  20 00 8d e2                                      add r0, sp, #0x20
00336f88  f7 fe ff eb                                      bl #0x336b6c
00336f8c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00336f90  00 30 87 e5                                      str r3, [r7]
00336f94  07 00 a0 e1                                      mov r0, r7
00336f98  44 d0 8d e2                                      add sp, sp, #0x44
00336f9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00336fa0  10 30 91 e5                                      ldr r3, [r1, #0x10]
00336fa4  00 00 53 e3                                      cmp r3, #0
00336fa8  9f 00 00 0a                                      beq #0x33722c
00336fac  14 30 98 e5                                      ldr r3, [r8, #0x14]
00336fb0  24 10 95 e5                                      ldr r1, [r5, #0x24]
00336fb4  10 40 98 e5                                      ldr r4, [r8, #0x10]
00336fb8  20 a0 95 e5                                      ldr sl, [r5, #0x20]
00336fbc  03 00 a0 e1                                      mov r0, r3
00336fc0  04 40 63 e0                                      rsb r4, r3, r4
00336fc4  0a a0 61 e0                                      rsb sl, r1, sl
00336fc8  04 00 5a e1                                      cmp sl, r4
00336fcc  0a 20 a0 b1                                      movlt r2, sl
00336fd0  04 20 a0 a1                                      movge r2, r4
00336fd4  81 5d ff eb                                      bl #0x30e5e0
00336fd8  00 00 50 e3                                      cmp r0, #0
00336fdc  03 00 00 1a                                      bne #0x336ff0
00336fe0  0a 00 54 e1                                      cmp r4, sl
00336fe4  d3 ff ff ba                                      blt #0x336f38
00336fe8  00 00 a0 d3                                      movle r0, #0
00336fec  01 00 a0 c3                                      movgt r0, #1
00336ff0  00 00 50 e3                                      cmp r0, #0
00336ff4  cf ff ff ba                                      blt #0x336f38
00336ff8  14 a0 86 e2                                      add sl, r6, #0x14
00336ffc  10 10 85 e2                                      add r1, r5, #0x10
00337000  0a 00 a0 e1                                      mov r0, sl
00337004  08 20 a0 e1                                      mov r2, r8
00337008  fa 72 ff eb                                      bl #0x313bf8
0033700c  00 00 50 e3                                      cmp r0, #0
00337010  81 00 00 0a                                      beq #0x33721c
00337014  14 30 9d e5                                      ldr r3, [sp, #0x14]
00337018  00 c0 93 e5                                      ldr ip, [r3]
0033701c  0c 40 9c e5                                      ldr r4, [ip, #0xc]
00337020  00 00 54 e3                                      cmp r4, #0
00337024  22 00 00 1a                                      bne #0x3370b4
00337028  04 30 9c e5                                      ldr r3, [ip, #4]
0033702c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00337030  02 00 5c e1                                      cmp ip, r2
00337034  0c 40 a0 11                                      movne r4, ip
00337038  04 00 00 1a                                      bne #0x337050
0033703c  03 40 a0 e1                                      mov r4, r3
00337040  04 30 93 e5                                      ldr r3, [r3, #4]
00337044  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00337048  04 00 52 e1                                      cmp r2, r4
0033704c  fa ff ff 0a                                      beq #0x33703c
00337050  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00337054  02 00 53 e1                                      cmp r3, r2
00337058  03 40 a0 11                                      movne r4, r3
0033705c  04 00 56 e1                                      cmp r6, r4
00337060  7f 00 00 0a                                      beq #0x337264
00337064  0a 00 a0 e1                                      mov r0, sl
00337068  08 10 a0 e1                                      mov r1, r8
0033706c  10 20 84 e2                                      add r2, r4, #0x10
00337070  e0 72 ff eb                                      bl #0x313bf8
00337074  00 00 50 e3                                      cmp r0, #0
00337078  60 00 00 0a                                      beq #0x337200
0033707c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00337080  00 c0 92 e5                                      ldr ip, [r2]
00337084  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00337088  00 00 5e e3                                      cmp lr, #0
0033708c  6c 00 00 0a                                      beq #0x337244
00337090  00 c0 a0 e3                                      mov ip, #0
00337094  06 10 a0 e1                                      mov r1, r6
00337098  04 20 a0 e1                                      mov r2, r4
0033709c  08 30 a0 e1                                      mov r3, r8
003370a0  07 00 a0 e1                                      mov r0, r7
003370a4  10 10 8d e8                                      stm sp, {r4, ip}
003370a8  73 fe ff eb                                      bl #0x336a7c
003370ac  b8 ff ff ea                                      b #0x336f94
003370b0  03 40 a0 e1                                      mov r4, r3
003370b4  08 30 94 e5                                      ldr r3, [r4, #8]
003370b8  00 00 53 e3                                      cmp r3, #0
003370bc  fb ff ff 1a                                      bne #0x3370b0
003370c0  e5 ff ff ea                                      b #0x33705c
003370c4  06 10 a0 e1                                      mov r1, r6
003370c8  04 20 a0 e1                                      mov r2, r4
003370cc  08 30 a0 e1                                      mov r3, r8
003370d0  07 00 a0 e1                                      mov r0, r7
003370d4  00 c0 8d e5                                      str ip, [sp]
003370d8  04 40 8d e5                                      str r4, [sp, #4]
003370dc  66 fe ff eb                                      bl #0x336a7c
003370e0  ab ff ff ea                                      b #0x336f94
003370e4  56 ff ff aa                                      bge #0x336e44
003370e8  0c c0 94 e5                                      ldr ip, [r4, #0xc]
003370ec  00 00 5c e3                                      cmp ip, #0
003370f0  90 ff ff 1a                                      bne #0x336f38
003370f4  f2 ff ff ea                                      b #0x3370c4
003370f8  0c 40 95 e5                                      ldr r4, [r5, #0xc]
003370fc  14 10 93 e5                                      ldr r1, [r3, #0x14]
00337100  10 90 93 e5                                      ldr sb, [r3, #0x10]
00337104  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00337108  24 30 94 e5                                      ldr r3, [r4, #0x24]
0033710c  09 90 61 e0                                      rsb sb, r1, sb
00337110  0a a0 63 e0                                      rsb sl, r3, sl
00337114  0a 00 59 e1                                      cmp sb, sl
00337118  09 20 a0 b1                                      movlt r2, sb
0033711c  0a 20 a0 a1                                      movge r2, sl
00337120  03 00 a0 e1                                      mov r0, r3
00337124  2d 5d ff eb                                      bl #0x30e5e0
00337128  00 00 50 e3                                      cmp r0, #0
0033712c  03 00 00 1a                                      bne #0x337140
00337130  09 00 5a e1                                      cmp sl, sb
00337134  03 00 00 ba                                      blt #0x337148
00337138  00 00 a0 d3                                      movle r0, #0
0033713c  01 00 a0 c3                                      movgt r0, #1
00337140  00 00 50 e3                                      cmp r0, #0
00337144  08 00 00 aa                                      bge #0x33716c
00337148  00 c0 a0 e3                                      mov ip, #0
0033714c  06 10 a0 e1                                      mov r1, r6
00337150  04 20 a0 e1                                      mov r2, r4
00337154  08 30 a0 e1                                      mov r3, r8
00337158  07 00 a0 e1                                      mov r0, r7
0033715c  00 c0 8d e5                                      str ip, [sp]
00337160  04 50 8d e5                                      str r5, [sp, #4]
00337164  44 fe ff eb                                      bl #0x336a7c
00337168  89 ff ff ea                                      b #0x336f94
0033716c  06 10 a0 e1                                      mov r1, r6
00337170  08 20 a0 e1                                      mov r2, r8
00337174  28 00 8d e2                                      add r0, sp, #0x28
00337178  7b fe ff eb                                      bl #0x336b6c
0033717c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00337180  00 30 87 e5                                      str r3, [r7]
00337184  82 ff ff ea                                      b #0x336f94
00337188  04 20 95 e5                                      ldr r2, [r5, #4]
0033718c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00337190  01 00 55 e1                                      cmp r5, r1
00337194  05 40 a0 11                                      movne r4, r5
00337198  04 00 00 0a                                      beq #0x3371b0
0033719c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003371a0  01 00 52 e1                                      cmp r2, r1
003371a4  02 40 a0 11                                      movne r4, r2
003371a8  2d ff ff ea                                      b #0x336e64
003371ac  01 20 a0 e1                                      mov r2, r1
003371b0  04 10 92 e5                                      ldr r1, [r2, #4]
003371b4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
003371b8  02 00 50 e1                                      cmp r0, r2
003371bc  fa ff ff 0a                                      beq #0x3371ac
003371c0  02 40 a0 e1                                      mov r4, r2
003371c4  01 20 a0 e1                                      mov r2, r1
003371c8  f3 ff ff ea                                      b #0x33719c
003371cc  14 20 9d e5                                      ldr r2, [sp, #0x14]
003371d0  00 50 92 e5                                      ldr r5, [r2]
003371d4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
003371d8  00 00 5c e3                                      cmp ip, #0
003371dc  ab ff ff 1a                                      bne #0x337090
003371e0  06 10 a0 e1                                      mov r1, r6
003371e4  05 20 a0 e1                                      mov r2, r5
003371e8  08 30 a0 e1                                      mov r3, r8
003371ec  07 00 a0 e1                                      mov r0, r7
003371f0  00 c0 8d e5                                      str ip, [sp]
003371f4  04 50 8d e5                                      str r5, [sp, #4]
003371f8  1f fe ff eb                                      bl #0x336a7c
003371fc  64 ff ff ea                                      b #0x336f94
00337200  06 10 a0 e1                                      mov r1, r6
00337204  08 20 a0 e1                                      mov r2, r8
00337208  30 00 8d e2                                      add r0, sp, #0x30
0033720c  56 fe ff eb                                      bl #0x336b6c
00337210  30 30 9d e5                                      ldr r3, [sp, #0x30]
00337214  00 30 87 e5                                      str r3, [r7]
00337218  5d ff ff ea                                      b #0x336f94
0033721c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00337220  00 30 92 e5                                      ldr r3, [r2]
00337224  00 30 87 e5                                      str r3, [r7]
00337228  59 ff ff ea                                      b #0x336f94
0033722c  08 20 a0 e1                                      mov r2, r8
00337230  38 00 8d e2                                      add r0, sp, #0x38
00337234  4c fe ff eb                                      bl #0x336b6c
00337238  38 30 9d e5                                      ldr r3, [sp, #0x38]
0033723c  00 30 87 e5                                      str r3, [r7]
00337240  53 ff ff ea                                      b #0x336f94
00337244  06 10 a0 e1                                      mov r1, r6
00337248  0c 20 a0 e1                                      mov r2, ip
0033724c  08 30 a0 e1                                      mov r3, r8
00337250  07 00 a0 e1                                      mov r0, r7
00337254  00 e0 8d e5                                      str lr, [sp]
00337258  04 c0 8d e5                                      str ip, [sp, #4]
0033725c  06 fe ff eb                                      bl #0x336a7c
00337260  4b ff ff ea                                      b #0x336f94
00337264  00 e0 a0 e3                                      mov lr, #0
00337268  06 10 a0 e1                                      mov r1, r6
0033726c  0c 20 a0 e1                                      mov r2, ip
00337270  08 30 a0 e1                                      mov r3, r8
00337274  07 00 a0 e1                                      mov r0, r7
00337278  00 e0 8d e5                                      str lr, [sp]
0033727c  04 c0 8d e5                                      str ip, [sp, #4]
00337280  fd fd ff eb                                      bl #0x336a7c
00337284  42 ff ff ea                                      b #0x336f94
