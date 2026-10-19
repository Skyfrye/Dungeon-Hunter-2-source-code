; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00370fd0, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00370fd0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00370fd4  00 40 51 e2                                      subs r4, r1, #0
00370fd8  00 70 a0 e1                                      mov r7, r0
00370fdc  1a 00 00 0a                                      beq #0x37104c
00370fe0  00 80 a0 e3                                      mov r8, #0
00370fe4  04 00 00 ea                                      b #0x370ffc
00370fe8  04 00 a0 e1                                      mov r0, r4
00370fec  2c 10 a0 e3                                      mov r1, #0x2c
00370ff0  c2 5f 0e eb                                      bl #0x708f00
00370ff4  00 40 55 e2                                      subs r4, r5, #0
00370ff8  13 00 00 0a                                      beq #0x37104c
00370ffc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00371000  07 00 a0 e1                                      mov r0, r7
00371004  f1 ff ff eb                                      bl #0x370fd0
00371008  24 30 94 e5                                      ldr r3, [r4, #0x24]
0037100c  08 50 94 e5                                      ldr r5, [r4, #8]
00371010  00 00 53 e3                                      cmp r3, #0
00371014  f3 ff ff 0a                                      beq #0x370fe8
00371018  14 60 84 e2                                      add r6, r4, #0x14
0037101c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00371020  06 00 a0 e1                                      mov r0, r6
00371024  db ff ff eb                                      bl #0x370f98
00371028  20 60 84 e5                                      str r6, [r4, #0x20]
0037102c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00371030  18 80 84 e5                                      str r8, [r4, #0x18]
00371034  24 80 84 e5                                      str r8, [r4, #0x24]
00371038  04 00 a0 e1                                      mov r0, r4
0037103c  2c 10 a0 e3                                      mov r1, #0x2c
00371040  ae 5f 0e eb                                      bl #0x708f00
00371044  00 40 55 e2                                      subs r4, r5, #0
00371048  eb ff ff 1a                                      bne #0x370ffc
0037104c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003772dc, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE14_M_create_nodeERKSB_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::_M_create_node(std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > const&)
; decoder-mode: arm
003772dc  30 40 2d e9                                      push {r4, r5, lr}
003772e0  0c d0 4d e2                                      sub sp, sp, #0xc
003772e4  08 00 8d e2                                      add r0, sp, #8
003772e8  2c 30 a0 e3                                      mov r3, #0x2c
003772ec  04 30 20 e5                                      str r3, [r0, #-4]!
003772f0  01 50 a0 e1                                      mov r5, r1
003772f4  f1 46 0e eb                                      bl #0x708ec0
003772f8  05 10 a0 e1                                      mov r1, r5
003772fc  04 30 91 e4                                      ldr r3, [r1], #4
00377300  00 40 a0 e1                                      mov r4, r0
00377304  14 00 80 e2                                      add r0, r0, #0x14
00377308  10 30 84 e5                                      str r3, [r4, #0x10]
0037730c  d4 ff ff eb                                      bl #0x377264
00377310  00 30 a0 e3                                      mov r3, #0
00377314  0c 30 84 e5                                      str r3, [r4, #0xc]
00377318  08 30 84 e5                                      str r3, [r4, #8]
0037731c  04 00 a0 e1                                      mov r0, r4
00377320  0c d0 8d e2                                      add sp, sp, #0xc
00377324  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00377328, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE7_M_copyEPNS_18_Rb_tree_node_baseESJ_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00377328  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037732c  01 40 a0 e1                                      mov r4, r1
00377330  10 10 81 e2                                      add r1, r1, #0x10
00377334  02 50 a0 e1                                      mov r5, r2
00377338  00 70 a0 e1                                      mov r7, r0
0037733c  e6 ff ff eb                                      bl #0x3772dc
00377340  00 30 d4 e5                                      ldrb r3, [r4]
00377344  04 50 80 e5                                      str r5, [r0, #4]
00377348  00 80 a0 e1                                      mov r8, r0
0037734c  00 30 c0 e5                                      strb r3, [r0]
00377350  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00377354  00 00 51 e3                                      cmp r1, #0
00377358  03 00 00 0a                                      beq #0x37736c
0037735c  07 00 a0 e1                                      mov r0, r7
00377360  08 20 a0 e1                                      mov r2, r8
00377364  ef ff ff eb                                      bl #0x377328
00377368  0c 00 88 e5                                      str r0, [r8, #0xc]
0037736c  08 50 94 e5                                      ldr r5, [r4, #8]
00377370  00 00 55 e3                                      cmp r5, #0
00377374  13 00 00 0a                                      beq #0x3773c8
00377378  08 60 a0 e1                                      mov r6, r8
0037737c  10 10 85 e2                                      add r1, r5, #0x10
00377380  07 00 a0 e1                                      mov r0, r7
00377384  d4 ff ff eb                                      bl #0x3772dc
00377388  00 30 d5 e5                                      ldrb r3, [r5]
0037738c  00 40 a0 e1                                      mov r4, r0
00377390  04 20 a0 e1                                      mov r2, r4
00377394  00 30 c4 e5                                      strb r3, [r4]
00377398  08 40 86 e5                                      str r4, [r6, #8]
0037739c  04 60 84 e5                                      str r6, [r4, #4]
003773a0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003773a4  07 00 a0 e1                                      mov r0, r7
003773a8  04 60 a0 e1                                      mov r6, r4
003773ac  00 10 53 e2                                      subs r1, r3, #0
003773b0  01 00 00 0a                                      beq #0x3773bc
003773b4  db ff ff eb                                      bl #0x377328
003773b8  0c 00 84 e5                                      str r0, [r4, #0xc]
003773bc  08 50 95 e5                                      ldr r5, [r5, #8]
003773c0  00 00 55 e3                                      cmp r5, #0
003773c4  ec ff ff 1a                                      bne #0x37737c
003773c8  08 00 a0 e1                                      mov r0, r8
003773cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003773d0, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EEC1ERKSH_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::_Rb_tree(std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > > const&)
; decoder-mode: arm
003773d0  70 40 2d e9                                      push {r4, r5, r6, lr}
003773d4  00 30 a0 e3                                      mov r3, #0
003773d8  00 40 a0 e1                                      mov r4, r0
003773dc  10 30 80 e5                                      str r3, [r0, #0x10]
003773e0  04 30 80 e5                                      str r3, [r0, #4]
003773e4  00 30 c0 e5                                      strb r3, [r0]
003773e8  08 00 84 e5                                      str r0, [r4, #8]
003773ec  0c 00 84 e5                                      str r0, [r4, #0xc]
003773f0  01 50 a0 e1                                      mov r5, r1
003773f4  04 10 91 e5                                      ldr r1, [r1, #4]
003773f8  03 00 51 e1                                      cmp r1, r3
003773fc  0d 00 00 0a                                      beq #0x377438
00377400  00 20 a0 e1                                      mov r2, r0
00377404  c7 ff ff eb                                      bl #0x377328
00377408  04 00 84 e5                                      str r0, [r4, #4]
0037740c  00 30 a0 e1                                      mov r3, r0
00377410  03 20 a0 e1                                      mov r2, r3
00377414  08 30 93 e5                                      ldr r3, [r3, #8]
00377418  00 00 53 e3                                      cmp r3, #0
0037741c  fb ff ff 1a                                      bne #0x377410
00377420  08 20 84 e5                                      str r2, [r4, #8]
00377424  00 30 a0 e1                                      mov r3, r0
00377428  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0037742c  00 00 50 e3                                      cmp r0, #0
00377430  fb ff ff 1a                                      bne #0x377424
00377434  0c 30 84 e5                                      str r3, [r4, #0xc]
00377438  10 30 95 e5                                      ldr r3, [r5, #0x10]
0037743c  04 00 a0 e1                                      mov r0, r4
00377440  10 30 84 e5                                      str r3, [r4, #0x10]
00377444  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00378660, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EEaSERKSH_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::operator=(std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > > const&)
; decoder-mode: arm
00378660  01 00 50 e1                                      cmp r0, r1
00378664  70 40 2d e9                                      push {r4, r5, r6, lr}
00378668  01 50 a0 e1                                      mov r5, r1
0037866c  00 40 a0 e1                                      mov r4, r0
00378670  1b 00 00 0a                                      beq #0x3786e4
00378674  10 30 90 e5                                      ldr r3, [r0, #0x10]
00378678  00 00 53 e3                                      cmp r3, #0
0037867c  1a 00 00 1a                                      bne #0x3786ec
00378680  00 30 a0 e3                                      mov r3, #0
00378684  10 30 84 e5                                      str r3, [r4, #0x10]
00378688  04 10 95 e5                                      ldr r1, [r5, #4]
0037868c  03 00 51 e1                                      cmp r1, r3
00378690  04 10 84 05                                      streq r1, [r4, #4]
00378694  08 40 84 05                                      streq r4, [r4, #8]
00378698  0c 40 84 05                                      streq r4, [r4, #0xc]
0037869c  10 00 00 0a                                      beq #0x3786e4
003786a0  04 00 a0 e1                                      mov r0, r4
003786a4  04 20 a0 e1                                      mov r2, r4
003786a8  1e fb ff eb                                      bl #0x377328
003786ac  04 00 84 e5                                      str r0, [r4, #4]
003786b0  00 30 a0 e1                                      mov r3, r0
003786b4  03 20 a0 e1                                      mov r2, r3
003786b8  08 30 93 e5                                      ldr r3, [r3, #8]
003786bc  00 00 53 e3                                      cmp r3, #0
003786c0  fb ff ff 1a                                      bne #0x3786b4
003786c4  08 20 84 e5                                      str r2, [r4, #8]
003786c8  00 30 a0 e1                                      mov r3, r0
003786cc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003786d0  00 00 50 e3                                      cmp r0, #0
003786d4  fb ff ff 1a                                      bne #0x3786c8
003786d8  0c 30 84 e5                                      str r3, [r4, #0xc]
003786dc  10 30 95 e5                                      ldr r3, [r5, #0x10]
003786e0  10 30 84 e5                                      str r3, [r4, #0x10]
003786e4  04 00 a0 e1                                      mov r0, r4
003786e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003786ec  04 10 90 e5                                      ldr r1, [r0, #4]
003786f0  36 e2 ff eb                                      bl #0x370fd0
003786f4  00 30 a0 e3                                      mov r3, #0
003786f8  10 30 84 e5                                      str r3, [r4, #0x10]
003786fc  18 00 84 e9                                      stmib r4, {r3, r4}
00378700  0c 40 84 e5                                      str r4, [r4, #0xc]
00378704  dd ff ff ea                                      b #0x378680

; FUNCTION 0x00813a44, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSB_SJ_SJ_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00813a44  02 00 51 e1                                      cmp r1, r2
00813a48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00813a4c  01 40 a0 e1                                      mov r4, r1
00813a50  02 50 a0 e1                                      mov r5, r2
00813a54  00 60 a0 e1                                      mov r6, r0
00813a58  22 00 00 0a                                      beq #0x813ae8
00813a5c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00813a60  00 00 52 e3                                      cmp r2, #0
00813a64  11 00 00 0a                                      beq #0x813ab0
00813a68  03 10 a0 e1                                      mov r1, r3
00813a6c  04 00 a0 e1                                      mov r0, r4
00813a70  19 8e ed eb                                      bl #0x3772dc
00813a74  0c 00 85 e5                                      str r0, [r5, #0xc]
00813a78  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00813a7c  00 70 a0 e1                                      mov r7, r0
00813a80  03 00 55 e1                                      cmp r5, r3
00813a84  15 00 00 0a                                      beq #0x813ae0
00813a88  07 00 a0 e1                                      mov r0, r7
00813a8c  04 50 87 e5                                      str r5, [r7, #4]
00813a90  04 10 84 e2                                      add r1, r4, #4
00813a94  31 ff eb eb                                      bl #0x313760
00813a98  10 30 94 e5                                      ldr r3, [r4, #0x10]
00813a9c  06 00 a0 e1                                      mov r0, r6
00813aa0  01 30 83 e2                                      add r3, r3, #1
00813aa4  10 30 84 e5                                      str r3, [r4, #0x10]
00813aa8  00 70 86 e5                                      str r7, [r6]
00813aac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00813ab0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00813ab4  00 00 52 e3                                      cmp r2, #0
00813ab8  12 00 00 0a                                      beq #0x813b08
00813abc  03 10 a0 e1                                      mov r1, r3
00813ac0  04 00 a0 e1                                      mov r0, r4
00813ac4  04 8e ed eb                                      bl #0x3772dc
00813ac8  08 00 85 e5                                      str r0, [r5, #8]
00813acc  08 30 94 e5                                      ldr r3, [r4, #8]
00813ad0  00 70 a0 e1                                      mov r7, r0
00813ad4  03 00 55 e1                                      cmp r5, r3
00813ad8  08 00 84 05                                      streq r0, [r4, #8]
00813adc  e9 ff ff ea                                      b #0x813a88
00813ae0  0c 70 84 e5                                      str r7, [r4, #0xc]
00813ae4  e7 ff ff ea                                      b #0x813a88
00813ae8  03 10 a0 e1                                      mov r1, r3
00813aec  04 00 a0 e1                                      mov r0, r4
00813af0  f9 8d ed eb                                      bl #0x3772dc
00813af4  00 70 a0 e1                                      mov r7, r0
00813af8  08 00 84 e5                                      str r0, [r4, #8]
00813afc  04 00 84 e5                                      str r0, [r4, #4]
00813b00  0c 00 84 e5                                      str r0, [r4, #0xc]
00813b04  df ff ff ea                                      b #0x813a88
00813b08  00 10 93 e5                                      ldr r1, [r3]
00813b0c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00813b10  02 00 51 e1                                      cmp r1, r2
00813b14  d3 ff ff aa                                      bge #0x813a68
00813b18  e7 ff ff ea                                      b #0x813abc

; FUNCTION 0x00813b1c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE13insert_uniqueERKSB_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::insert_unique(std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > const&)
; decoder-mode: arm
00813b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00813b20  04 c0 91 e5                                      ldr ip, [r1, #4]
00813b24  10 d0 4d e2                                      sub sp, sp, #0x10
00813b28  00 40 a0 e1                                      mov r4, r0
00813b2c  00 00 5c e3                                      cmp ip, #0
00813b30  02 30 a0 e1                                      mov r3, r2
00813b34  01 c0 a0 01                                      moveq ip, r1
00813b38  15 00 00 0a                                      beq #0x813b94
00813b3c  00 60 92 e5                                      ldr r6, [r2]
00813b40  00 00 00 ea                                      b #0x813b48
00813b44  02 c0 a0 e1                                      mov ip, r2
00813b48  10 00 9c e5                                      ldr r0, [ip, #0x10]
00813b4c  01 50 a0 e3                                      mov r5, #1
00813b50  06 00 50 e1                                      cmp r0, r6
00813b54  08 20 9c c5                                      ldrgt r2, [ip, #8]
00813b58  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00813b5c  00 50 a0 d3                                      movle r5, #0
00813b60  00 00 52 e3                                      cmp r2, #0
00813b64  f6 ff ff 1a                                      bne #0x813b44
00813b68  00 00 55 e3                                      cmp r5, #0
00813b6c  0c 50 a0 01                                      moveq r5, ip
00813b70  07 00 00 1a                                      bne #0x813b94
00813b74  00 00 56 e1                                      cmp r6, r0
00813b78  00 30 a0 d3                                      movle r3, #0
00813b7c  00 50 84 d5                                      strle r5, [r4]
00813b80  04 30 c4 d5                                      strble r3, [r4, #4]
00813b84  1c 00 00 ca                                      bgt #0x813bfc
00813b88  04 00 a0 e1                                      mov r0, r4
00813b8c  10 d0 8d e2                                      add sp, sp, #0x10
00813b90  70 80 bd e8                                      pop {r4, r5, r6, pc}
00813b94  08 20 91 e5                                      ldr r2, [r1, #8]
00813b98  02 00 5c e1                                      cmp ip, r2
00813b9c  36 00 00 0a                                      beq #0x813c7c
00813ba0  00 20 dc e5                                      ldrb r2, [ip]
00813ba4  00 00 52 e3                                      cmp r2, #0
00813ba8  03 00 00 1a                                      bne #0x813bbc
00813bac  04 20 9c e5                                      ldr r2, [ip, #4]
00813bb0  04 20 92 e5                                      ldr r2, [r2, #4]
00813bb4  02 00 5c e1                                      cmp ip, r2
00813bb8  2a 00 00 0a                                      beq #0x813c68
00813bbc  08 00 9c e5                                      ldr r0, [ip, #8]
00813bc0  00 00 50 e3                                      cmp r0, #0
00813bc4  01 00 00 1a                                      bne #0x813bd0
00813bc8  16 00 00 ea                                      b #0x813c28
00813bcc  02 00 a0 e1                                      mov r0, r2
00813bd0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00813bd4  00 00 52 e3                                      cmp r2, #0
00813bd8  fb ff ff 1a                                      bne #0x813bcc
00813bdc  00 60 93 e5                                      ldr r6, [r3]
00813be0  00 50 a0 e1                                      mov r5, r0
00813be4  10 00 90 e5                                      ldr r0, [r0, #0x10]
00813be8  00 00 56 e1                                      cmp r6, r0
00813bec  00 30 a0 d3                                      movle r3, #0
00813bf0  00 50 84 d5                                      strle r5, [r4]
00813bf4  04 30 c4 d5                                      strble r3, [r4, #4]
00813bf8  e2 ff ff da                                      ble #0x813b88
00813bfc  0c 20 a0 e1                                      mov r2, ip
00813c00  08 00 8d e2                                      add r0, sp, #8
00813c04  00 c0 a0 e3                                      mov ip, #0
00813c08  04 c0 8d e5                                      str ip, [sp, #4]
00813c0c  00 c0 8d e5                                      str ip, [sp]
00813c10  8b ff ff eb                                      bl #0x813a44
00813c14  08 30 9d e5                                      ldr r3, [sp, #8]
00813c18  01 20 a0 e3                                      mov r2, #1
00813c1c  04 20 c4 e5                                      strb r2, [r4, #4]
00813c20  00 30 84 e5                                      str r3, [r4]
00813c24  d7 ff ff ea                                      b #0x813b88
00813c28  04 20 9c e5                                      ldr r2, [ip, #4]
00813c2c  08 00 92 e5                                      ldr r0, [r2, #8]
00813c30  00 00 5c e1                                      cmp ip, r0
00813c34  02 50 a0 11                                      movne r5, r2
00813c38  00 60 93 15                                      ldrne r6, [r3]
00813c3c  10 00 92 15                                      ldrne r0, [r2, #0x10]
00813c40  01 00 00 0a                                      beq #0x813c4c
00813c44  ca ff ff ea                                      b #0x813b74
00813c48  05 20 a0 e1                                      mov r2, r5
00813c4c  04 50 92 e5                                      ldr r5, [r2, #4]
00813c50  08 00 95 e5                                      ldr r0, [r5, #8]
00813c54  02 00 50 e1                                      cmp r0, r2
00813c58  fa ff ff 0a                                      beq #0x813c48
00813c5c  00 60 93 e5                                      ldr r6, [r3]
00813c60  10 00 95 e5                                      ldr r0, [r5, #0x10]
00813c64  c2 ff ff ea                                      b #0x813b74
00813c68  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00813c6c  00 60 93 e5                                      ldr r6, [r3]
00813c70  02 50 a0 e1                                      mov r5, r2
00813c74  10 00 92 e5                                      ldr r0, [r2, #0x10]
00813c78  bd ff ff ea                                      b #0x813b74
00813c7c  0c 20 a0 e1                                      mov r2, ip
00813c80  00 e0 a0 e3                                      mov lr, #0
00813c84  0c 00 8d e2                                      add r0, sp, #0xc
00813c88  00 50 8d e8                                      stm sp, {ip, lr}
00813c8c  6c ff ff eb                                      bl #0x813a44
00813c90  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00813c94  01 20 a0 e3                                      mov r2, #1
00813c98  04 20 c4 e5                                      strb r2, [r4, #4]
00813c9c  00 30 84 e5                                      str r3, [r4]
00813ca0  b8 ff ff ea                                      b #0x813b88

; FUNCTION 0x00813ca4, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiN9NetStruct14tPacketHistoryES2_SaIS3_IS4_S7_EEEENS_10_Select1stISB_EENS_11_MapTraitsTISB_EESaISB_EE13insert_uniqueENS_17_Rb_tree_iteratorISB_SF_EERKSB_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_Select1st<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > >, std::allocator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > > >, std::pair<int const, std::map<int, NetStruct::tPacketHistory, std::less<int>, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > > const&)
; decoder-mode: arm
00813ca4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00813ca8  00 40 92 e5                                      ldr r4, [r2]
00813cac  08 20 91 e5                                      ldr r2, [r1, #8]
00813cb0  2c d0 4d e2                                      sub sp, sp, #0x2c
00813cb4  01 50 a0 e1                                      mov r5, r1
00813cb8  02 00 54 e1                                      cmp r4, r2
00813cbc  00 70 a0 e1                                      mov r7, r0
00813cc0  03 60 a0 e1                                      mov r6, r3
00813cc4  5a 00 00 0a                                      beq #0x813e34
00813cc8  01 00 54 e1                                      cmp r4, r1
00813ccc  78 00 00 0a                                      beq #0x813eb4
00813cd0  00 30 d4 e5                                      ldrb r3, [r4]
00813cd4  00 00 53 e3                                      cmp r3, #0
00813cd8  3a 00 00 0a                                      beq #0x813dc8
00813cdc  08 c0 94 e5                                      ldr ip, [r4, #8]
00813ce0  00 00 5c e3                                      cmp ip, #0
00813ce4  01 00 00 1a                                      bne #0x813cf0
00813ce8  3e 00 00 ea                                      b #0x813de8
00813cec  03 c0 a0 e1                                      mov ip, r3
00813cf0  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00813cf4  00 00 53 e3                                      cmp r3, #0
00813cf8  fb ff ff 1a                                      bne #0x813cec
00813cfc  00 20 96 e5                                      ldr r2, [r6]
00813d00  10 00 94 e5                                      ldr r0, [r4, #0x10]
00813d04  00 00 52 e1                                      cmp r2, r0
00813d08  00 10 a0 a3                                      movge r1, #0
00813d0c  01 10 a0 b3                                      movlt r1, #1
00813d10  00 00 51 e3                                      cmp r1, #0
00813d14  1b 00 00 1a                                      bne #0x813d88
00813d18  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00813d1c  00 00 58 e3                                      cmp r8, #0
00813d20  7d 00 00 0a                                      beq #0x813f1c
00813d24  08 c0 a0 e1                                      mov ip, r8
00813d28  00 00 00 ea                                      b #0x813d30
00813d2c  03 c0 a0 e1                                      mov ip, r3
00813d30  08 30 9c e5                                      ldr r3, [ip, #8]
00813d34  00 00 53 e3                                      cmp r3, #0
00813d38  fb ff ff 1a                                      bne #0x813d2c
00813d3c  00 00 51 e3                                      cmp r1, #0
00813d40  34 00 00 1a                                      bne #0x813e18
00813d44  00 00 52 e1                                      cmp r2, r0
00813d48  63 00 00 da                                      ble #0x813edc
00813d4c  0c 00 55 e1                                      cmp r5, ip
00813d50  02 00 00 0a                                      beq #0x813d60
00813d54  10 30 9c e5                                      ldr r3, [ip, #0x10]
00813d58  03 00 52 e1                                      cmp r2, r3
00813d5c  2d 00 00 aa                                      bge #0x813e18
00813d60  00 00 58 e3                                      cmp r8, #0
00813d64  4a 00 00 1a                                      bne #0x813e94
00813d68  05 10 a0 e1                                      mov r1, r5
00813d6c  04 20 a0 e1                                      mov r2, r4
00813d70  06 30 a0 e1                                      mov r3, r6
00813d74  07 00 a0 e1                                      mov r0, r7
00813d78  00 80 8d e5                                      str r8, [sp]
00813d7c  04 40 8d e5                                      str r4, [sp, #4]
00813d80  2f ff ff eb                                      bl #0x813a44
00813d84  0c 00 00 ea                                      b #0x813dbc
00813d88  10 30 9c e5                                      ldr r3, [ip, #0x10]
00813d8c  03 00 52 e1                                      cmp r2, r3
00813d90  e0 ff ff da                                      ble #0x813d18
00813d94  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00813d98  00 00 5e e3                                      cmp lr, #0
00813d9c  56 00 00 0a                                      beq #0x813efc
00813da0  00 c0 a0 e3                                      mov ip, #0
00813da4  05 10 a0 e1                                      mov r1, r5
00813da8  04 20 a0 e1                                      mov r2, r4
00813dac  06 30 a0 e1                                      mov r3, r6
00813db0  07 00 a0 e1                                      mov r0, r7
00813db4  10 10 8d e8                                      stm sp, {r4, ip}
00813db8  21 ff ff eb                                      bl #0x813a44
00813dbc  07 00 a0 e1                                      mov r0, r7
00813dc0  2c d0 8d e2                                      add sp, sp, #0x2c
00813dc4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00813dc8  04 30 94 e5                                      ldr r3, [r4, #4]
00813dcc  04 30 93 e5                                      ldr r3, [r3, #4]
00813dd0  03 00 54 e1                                      cmp r4, r3
00813dd4  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00813dd8  c7 ff ff 0a                                      beq #0x813cfc
00813ddc  08 c0 94 e5                                      ldr ip, [r4, #8]
00813de0  00 00 5c e3                                      cmp ip, #0
00813de4  c1 ff ff 1a                                      bne #0x813cf0
00813de8  04 c0 94 e5                                      ldr ip, [r4, #4]
00813dec  08 30 9c e5                                      ldr r3, [ip, #8]
00813df0  03 00 54 e1                                      cmp r4, r3
00813df4  01 00 00 0a                                      beq #0x813e00
00813df8  bf ff ff ea                                      b #0x813cfc
00813dfc  03 c0 a0 e1                                      mov ip, r3
00813e00  04 30 9c e5                                      ldr r3, [ip, #4]
00813e04  08 20 93 e5                                      ldr r2, [r3, #8]
00813e08  0c 00 52 e1                                      cmp r2, ip
00813e0c  fa ff ff 0a                                      beq #0x813dfc
00813e10  03 c0 a0 e1                                      mov ip, r3
00813e14  b8 ff ff ea                                      b #0x813cfc
00813e18  05 10 a0 e1                                      mov r1, r5
00813e1c  06 20 a0 e1                                      mov r2, r6
00813e20  08 00 8d e2                                      add r0, sp, #8
00813e24  3c ff ff eb                                      bl #0x813b1c
00813e28  08 30 9d e5                                      ldr r3, [sp, #8]
00813e2c  00 30 87 e5                                      str r3, [r7]
00813e30  e1 ff ff ea                                      b #0x813dbc
00813e34  10 20 91 e5                                      ldr r2, [r1, #0x10]
00813e38  00 00 52 e3                                      cmp r2, #0
00813e3c  52 00 00 0a                                      beq #0x813f8c
00813e40  00 20 93 e5                                      ldr r2, [r3]
00813e44  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00813e48  0c 00 52 e1                                      cmp r2, ip
00813e4c  54 00 00 ba                                      blt #0x813fa4
00813e50  21 00 00 da                                      ble #0x813edc
00813e54  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00813e58  00 00 5e e3                                      cmp lr, #0
00813e5c  3c 00 00 0a                                      beq #0x813f54
00813e60  0e c0 a0 e1                                      mov ip, lr
00813e64  00 00 00 ea                                      b #0x813e6c
00813e68  03 c0 a0 e1                                      mov ip, r3
00813e6c  08 30 9c e5                                      ldr r3, [ip, #8]
00813e70  00 00 53 e3                                      cmp r3, #0
00813e74  fb ff ff 1a                                      bne #0x813e68
00813e78  0c 00 55 e1                                      cmp r5, ip
00813e7c  5c 00 00 0a                                      beq #0x813ff4
00813e80  10 30 9c e5                                      ldr r3, [ip, #0x10]
00813e84  03 00 52 e1                                      cmp r2, r3
00813e88  4a 00 00 aa                                      bge #0x813fb8
00813e8c  00 00 5e e3                                      cmp lr, #0
00813e90  4f 00 00 0a                                      beq #0x813fd4
00813e94  00 e0 a0 e3                                      mov lr, #0
00813e98  05 10 a0 e1                                      mov r1, r5
00813e9c  0c 20 a0 e1                                      mov r2, ip
00813ea0  06 30 a0 e1                                      mov r3, r6
00813ea4  07 00 a0 e1                                      mov r0, r7
00813ea8  00 50 8d e8                                      stm sp, {ip, lr}
00813eac  e4 fe ff eb                                      bl #0x813a44
00813eb0  c1 ff ff ea                                      b #0x813dbc
00813eb4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00813eb8  00 c0 93 e5                                      ldr ip, [r3]
00813ebc  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00813ec0  0c 00 5e e1                                      cmp lr, ip
00813ec4  06 00 00 aa                                      bge #0x813ee4
00813ec8  00 c0 a0 e3                                      mov ip, #0
00813ecc  00 c0 8d e5                                      str ip, [sp]
00813ed0  04 40 8d e5                                      str r4, [sp, #4]
00813ed4  da fe ff eb                                      bl #0x813a44
00813ed8  b7 ff ff ea                                      b #0x813dbc
00813edc  00 40 87 e5                                      str r4, [r7]
00813ee0  b5 ff ff ea                                      b #0x813dbc
00813ee4  03 20 a0 e1                                      mov r2, r3
00813ee8  10 00 8d e2                                      add r0, sp, #0x10
00813eec  0a ff ff eb                                      bl #0x813b1c
00813ef0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00813ef4  00 30 87 e5                                      str r3, [r7]
00813ef8  af ff ff ea                                      b #0x813dbc
00813efc  05 10 a0 e1                                      mov r1, r5
00813f00  0c 20 a0 e1                                      mov r2, ip
00813f04  06 30 a0 e1                                      mov r3, r6
00813f08  07 00 a0 e1                                      mov r0, r7
00813f0c  00 e0 8d e5                                      str lr, [sp]
00813f10  04 c0 8d e5                                      str ip, [sp, #4]
00813f14  ca fe ff eb                                      bl #0x813a44
00813f18  a7 ff ff ea                                      b #0x813dbc
00813f1c  04 30 94 e5                                      ldr r3, [r4, #4]
00813f20  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00813f24  0c 00 54 e1                                      cmp r4, ip
00813f28  04 c0 a0 11                                      movne ip, r4
00813f2c  04 00 00 1a                                      bne #0x813f44
00813f30  03 c0 a0 e1                                      mov ip, r3
00813f34  04 30 93 e5                                      ldr r3, [r3, #4]
00813f38  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00813f3c  0a 00 5c e1                                      cmp ip, sl
00813f40  fa ff ff 0a                                      beq #0x813f30
00813f44  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00813f48  0a 00 53 e1                                      cmp r3, sl
00813f4c  03 c0 a0 11                                      movne ip, r3
00813f50  79 ff ff ea                                      b #0x813d3c
00813f54  04 30 94 e5                                      ldr r3, [r4, #4]
00813f58  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00813f5c  01 00 54 e1                                      cmp r4, r1
00813f60  04 c0 a0 11                                      movne ip, r4
00813f64  04 00 00 1a                                      bne #0x813f7c
00813f68  03 c0 a0 e1                                      mov ip, r3
00813f6c  04 30 93 e5                                      ldr r3, [r3, #4]
00813f70  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00813f74  0c 00 51 e1                                      cmp r1, ip
00813f78  fa ff ff 0a                                      beq #0x813f68
00813f7c  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00813f80  01 00 53 e1                                      cmp r3, r1
00813f84  03 c0 a0 11                                      movne ip, r3
00813f88  ba ff ff ea                                      b #0x813e78
00813f8c  03 20 a0 e1                                      mov r2, r3
00813f90  20 00 8d e2                                      add r0, sp, #0x20
00813f94  e0 fe ff eb                                      bl #0x813b1c
00813f98  20 30 9d e5                                      ldr r3, [sp, #0x20]
00813f9c  00 30 87 e5                                      str r3, [r7]
00813fa0  85 ff ff ea                                      b #0x813dbc
00813fa4  00 c0 a0 e3                                      mov ip, #0
00813fa8  04 20 a0 e1                                      mov r2, r4
00813fac  10 10 8d e8                                      stm sp, {r4, ip}
00813fb0  a3 fe ff eb                                      bl #0x813a44
00813fb4  80 ff ff ea                                      b #0x813dbc
00813fb8  05 10 a0 e1                                      mov r1, r5
00813fbc  06 20 a0 e1                                      mov r2, r6
00813fc0  18 00 8d e2                                      add r0, sp, #0x18
00813fc4  d4 fe ff eb                                      bl #0x813b1c
00813fc8  18 30 9d e5                                      ldr r3, [sp, #0x18]
00813fcc  00 30 87 e5                                      str r3, [r7]
00813fd0  79 ff ff ea                                      b #0x813dbc
00813fd4  05 10 a0 e1                                      mov r1, r5
00813fd8  04 20 a0 e1                                      mov r2, r4
00813fdc  06 30 a0 e1                                      mov r3, r6
00813fe0  07 00 a0 e1                                      mov r0, r7
00813fe4  00 e0 8d e5                                      str lr, [sp]
00813fe8  04 40 8d e5                                      str r4, [sp, #4]
00813fec  94 fe ff eb                                      bl #0x813a44
00813ff0  71 ff ff ea                                      b #0x813dbc
00813ff4  00 c0 a0 e3                                      mov ip, #0
00813ff8  05 10 a0 e1                                      mov r1, r5
00813ffc  04 20 a0 e1                                      mov r2, r4
00814000  06 30 a0 e1                                      mov r3, r6
00814004  07 00 a0 e1                                      mov r0, r7
00814008  00 c0 8d e5                                      str ip, [sp]
0081400c  04 40 8d e5                                      str r4, [sp, #4]
00814010  8b fe ff eb                                      bl #0x813a44
00814014  68 ff ff ea                                      b #0x813dbc
