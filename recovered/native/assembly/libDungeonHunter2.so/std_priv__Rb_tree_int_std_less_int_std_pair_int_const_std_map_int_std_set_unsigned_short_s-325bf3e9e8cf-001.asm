; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080ae10, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiSt3setItS1_ItESaItEES2_SaIS3_IS4_S9_EEEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080ae10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080ae14  00 40 51 e2                                      subs r4, r1, #0
0080ae18  00 70 a0 e1                                      mov r7, r0
0080ae1c  1a 00 00 0a                                      beq #0x80ae8c
0080ae20  00 80 a0 e3                                      mov r8, #0
0080ae24  04 00 00 ea                                      b #0x80ae3c
0080ae28  04 00 a0 e1                                      mov r0, r4
0080ae2c  2c 10 a0 e3                                      mov r1, #0x2c
0080ae30  40 cd 02 eb                                      bl #0x8be338
0080ae34  00 40 55 e2                                      subs r4, r5, #0
0080ae38  13 00 00 0a                                      beq #0x80ae8c
0080ae3c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0080ae40  07 00 a0 e1                                      mov r0, r7
0080ae44  f1 ff ff eb                                      bl #0x80ae10
0080ae48  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080ae4c  08 50 94 e5                                      ldr r5, [r4, #8]
0080ae50  00 00 53 e3                                      cmp r3, #0
0080ae54  f3 ff ff 0a                                      beq #0x80ae28
0080ae58  14 60 84 e2                                      add r6, r4, #0x14
0080ae5c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0080ae60  06 00 a0 e1                                      mov r0, r6
0080ae64  58 ff ff eb                                      bl #0x80abcc
0080ae68  20 60 84 e5                                      str r6, [r4, #0x20]
0080ae6c  1c 60 84 e5                                      str r6, [r4, #0x1c]
0080ae70  18 80 84 e5                                      str r8, [r4, #0x18]
0080ae74  24 80 84 e5                                      str r8, [r4, #0x24]
0080ae78  04 00 a0 e1                                      mov r0, r4
0080ae7c  2c 10 a0 e3                                      mov r1, #0x2c
0080ae80  2c cd 02 eb                                      bl #0x8be338
0080ae84  00 40 55 e2                                      subs r4, r5, #0
0080ae88  eb ff ff 1a                                      bne #0x80ae3c
0080ae8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080c354, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiSt3setItS1_ItESaItEES2_SaIS3_IS4_S9_EEEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE14_M_create_nodeERKSD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >::_M_create_node(std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > const&)
; decoder-mode: arm
0080c354  30 40 2d e9                                      push {r4, r5, lr}
0080c358  0c d0 4d e2                                      sub sp, sp, #0xc
0080c35c  08 00 8d e2                                      add r0, sp, #8
0080c360  2c 30 a0 e3                                      mov r3, #0x2c
0080c364  04 30 20 e5                                      str r3, [r0, #-4]!
0080c368  01 50 a0 e1                                      mov r5, r1
0080c36c  e9 c7 02 eb                                      bl #0x8be318
0080c370  05 10 a0 e1                                      mov r1, r5
0080c374  04 30 91 e4                                      ldr r3, [r1], #4
0080c378  00 40 a0 e1                                      mov r4, r0
0080c37c  14 00 80 e2                                      add r0, r0, #0x14
0080c380  10 30 84 e5                                      str r3, [r4, #0x10]
0080c384  d4 ff ff eb                                      bl #0x80c2dc
0080c388  00 30 a0 e3                                      mov r3, #0
0080c38c  0c 30 84 e5                                      str r3, [r4, #0xc]
0080c390  08 30 84 e5                                      str r3, [r4, #8]
0080c394  04 00 a0 e1                                      mov r0, r4
0080c398  0c d0 8d e2                                      add sp, sp, #0xc
0080c39c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0080c3a0, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiSt3setItS1_ItESaItEES2_SaIS3_IS4_S9_EEEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSD_SL_SL_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0080c3a0  02 00 51 e1                                      cmp r1, r2
0080c3a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080c3a8  01 40 a0 e1                                      mov r4, r1
0080c3ac  02 50 a0 e1                                      mov r5, r2
0080c3b0  00 60 a0 e1                                      mov r6, r0
0080c3b4  22 00 00 0a                                      beq #0x80c444
0080c3b8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0080c3bc  00 00 52 e3                                      cmp r2, #0
0080c3c0  11 00 00 0a                                      beq #0x80c40c
0080c3c4  03 10 a0 e1                                      mov r1, r3
0080c3c8  04 00 a0 e1                                      mov r0, r4
0080c3cc  e0 ff ff eb                                      bl #0x80c354
0080c3d0  0c 00 85 e5                                      str r0, [r5, #0xc]
0080c3d4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0080c3d8  00 70 a0 e1                                      mov r7, r0
0080c3dc  03 00 55 e1                                      cmp r5, r3
0080c3e0  15 00 00 0a                                      beq #0x80c43c
0080c3e4  07 00 a0 e1                                      mov r0, r7
0080c3e8  04 50 87 e5                                      str r5, [r7, #4]
0080c3ec  04 10 84 e2                                      add r1, r4, #4
0080c3f0  da 1c ec eb                                      bl #0x313760
0080c3f4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080c3f8  06 00 a0 e1                                      mov r0, r6
0080c3fc  01 30 83 e2                                      add r3, r3, #1
0080c400  10 30 84 e5                                      str r3, [r4, #0x10]
0080c404  00 70 86 e5                                      str r7, [r6]
0080c408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080c40c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0080c410  00 00 52 e3                                      cmp r2, #0
0080c414  12 00 00 0a                                      beq #0x80c464
0080c418  03 10 a0 e1                                      mov r1, r3
0080c41c  04 00 a0 e1                                      mov r0, r4
0080c420  cb ff ff eb                                      bl #0x80c354
0080c424  08 00 85 e5                                      str r0, [r5, #8]
0080c428  08 30 94 e5                                      ldr r3, [r4, #8]
0080c42c  00 70 a0 e1                                      mov r7, r0
0080c430  03 00 55 e1                                      cmp r5, r3
0080c434  08 00 84 05                                      streq r0, [r4, #8]
0080c438  e9 ff ff ea                                      b #0x80c3e4
0080c43c  0c 70 84 e5                                      str r7, [r4, #0xc]
0080c440  e7 ff ff ea                                      b #0x80c3e4
0080c444  03 10 a0 e1                                      mov r1, r3
0080c448  04 00 a0 e1                                      mov r0, r4
0080c44c  c0 ff ff eb                                      bl #0x80c354
0080c450  00 70 a0 e1                                      mov r7, r0
0080c454  08 00 84 e5                                      str r0, [r4, #8]
0080c458  04 00 84 e5                                      str r0, [r4, #4]
0080c45c  0c 00 84 e5                                      str r0, [r4, #0xc]
0080c460  df ff ff ea                                      b #0x80c3e4
0080c464  00 10 93 e5                                      ldr r1, [r3]
0080c468  10 20 95 e5                                      ldr r2, [r5, #0x10]
0080c46c  02 00 51 e1                                      cmp r1, r2
0080c470  d3 ff ff aa                                      bge #0x80c3c4
0080c474  e7 ff ff ea                                      b #0x80c418

; FUNCTION 0x0080c478, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiSt3setItS1_ItESaItEES2_SaIS3_IS4_S9_EEEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueERKSD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >::insert_unique(std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > const&)
; decoder-mode: arm
0080c478  70 40 2d e9                                      push {r4, r5, r6, lr}
0080c47c  04 c0 91 e5                                      ldr ip, [r1, #4]
0080c480  10 d0 4d e2                                      sub sp, sp, #0x10
0080c484  00 40 a0 e1                                      mov r4, r0
0080c488  00 00 5c e3                                      cmp ip, #0
0080c48c  02 30 a0 e1                                      mov r3, r2
0080c490  01 c0 a0 01                                      moveq ip, r1
0080c494  15 00 00 0a                                      beq #0x80c4f0
0080c498  00 60 92 e5                                      ldr r6, [r2]
0080c49c  00 00 00 ea                                      b #0x80c4a4
0080c4a0  02 c0 a0 e1                                      mov ip, r2
0080c4a4  10 00 9c e5                                      ldr r0, [ip, #0x10]
0080c4a8  01 50 a0 e3                                      mov r5, #1
0080c4ac  06 00 50 e1                                      cmp r0, r6
0080c4b0  08 20 9c c5                                      ldrgt r2, [ip, #8]
0080c4b4  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
0080c4b8  00 50 a0 d3                                      movle r5, #0
0080c4bc  00 00 52 e3                                      cmp r2, #0
0080c4c0  f6 ff ff 1a                                      bne #0x80c4a0
0080c4c4  00 00 55 e3                                      cmp r5, #0
0080c4c8  0c 50 a0 01                                      moveq r5, ip
0080c4cc  07 00 00 1a                                      bne #0x80c4f0
0080c4d0  00 00 56 e1                                      cmp r6, r0
0080c4d4  00 30 a0 d3                                      movle r3, #0
0080c4d8  00 50 84 d5                                      strle r5, [r4]
0080c4dc  04 30 c4 d5                                      strble r3, [r4, #4]
0080c4e0  1c 00 00 ca                                      bgt #0x80c558
0080c4e4  04 00 a0 e1                                      mov r0, r4
0080c4e8  10 d0 8d e2                                      add sp, sp, #0x10
0080c4ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080c4f0  08 20 91 e5                                      ldr r2, [r1, #8]
0080c4f4  02 00 5c e1                                      cmp ip, r2
0080c4f8  36 00 00 0a                                      beq #0x80c5d8
0080c4fc  00 20 dc e5                                      ldrb r2, [ip]
0080c500  00 00 52 e3                                      cmp r2, #0
0080c504  03 00 00 1a                                      bne #0x80c518
0080c508  04 20 9c e5                                      ldr r2, [ip, #4]
0080c50c  04 20 92 e5                                      ldr r2, [r2, #4]
0080c510  02 00 5c e1                                      cmp ip, r2
0080c514  2a 00 00 0a                                      beq #0x80c5c4
0080c518  08 00 9c e5                                      ldr r0, [ip, #8]
0080c51c  00 00 50 e3                                      cmp r0, #0
0080c520  01 00 00 1a                                      bne #0x80c52c
0080c524  16 00 00 ea                                      b #0x80c584
0080c528  02 00 a0 e1                                      mov r0, r2
0080c52c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0080c530  00 00 52 e3                                      cmp r2, #0
0080c534  fb ff ff 1a                                      bne #0x80c528
0080c538  00 60 93 e5                                      ldr r6, [r3]
0080c53c  00 50 a0 e1                                      mov r5, r0
0080c540  10 00 90 e5                                      ldr r0, [r0, #0x10]
0080c544  00 00 56 e1                                      cmp r6, r0
0080c548  00 30 a0 d3                                      movle r3, #0
0080c54c  00 50 84 d5                                      strle r5, [r4]
0080c550  04 30 c4 d5                                      strble r3, [r4, #4]
0080c554  e2 ff ff da                                      ble #0x80c4e4
0080c558  0c 20 a0 e1                                      mov r2, ip
0080c55c  08 00 8d e2                                      add r0, sp, #8
0080c560  00 c0 a0 e3                                      mov ip, #0
0080c564  04 c0 8d e5                                      str ip, [sp, #4]
0080c568  00 c0 8d e5                                      str ip, [sp]
0080c56c  8b ff ff eb                                      bl #0x80c3a0
0080c570  08 30 9d e5                                      ldr r3, [sp, #8]
0080c574  01 20 a0 e3                                      mov r2, #1
0080c578  04 20 c4 e5                                      strb r2, [r4, #4]
0080c57c  00 30 84 e5                                      str r3, [r4]
0080c580  d7 ff ff ea                                      b #0x80c4e4
0080c584  04 20 9c e5                                      ldr r2, [ip, #4]
0080c588  08 00 92 e5                                      ldr r0, [r2, #8]
0080c58c  00 00 5c e1                                      cmp ip, r0
0080c590  02 50 a0 11                                      movne r5, r2
0080c594  00 60 93 15                                      ldrne r6, [r3]
0080c598  10 00 92 15                                      ldrne r0, [r2, #0x10]
0080c59c  01 00 00 0a                                      beq #0x80c5a8
0080c5a0  ca ff ff ea                                      b #0x80c4d0
0080c5a4  05 20 a0 e1                                      mov r2, r5
0080c5a8  04 50 92 e5                                      ldr r5, [r2, #4]
0080c5ac  08 00 95 e5                                      ldr r0, [r5, #8]
0080c5b0  02 00 50 e1                                      cmp r0, r2
0080c5b4  fa ff ff 0a                                      beq #0x80c5a4
0080c5b8  00 60 93 e5                                      ldr r6, [r3]
0080c5bc  10 00 95 e5                                      ldr r0, [r5, #0x10]
0080c5c0  c2 ff ff ea                                      b #0x80c4d0
0080c5c4  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0080c5c8  00 60 93 e5                                      ldr r6, [r3]
0080c5cc  02 50 a0 e1                                      mov r5, r2
0080c5d0  10 00 92 e5                                      ldr r0, [r2, #0x10]
0080c5d4  bd ff ff ea                                      b #0x80c4d0
0080c5d8  0c 20 a0 e1                                      mov r2, ip
0080c5dc  00 e0 a0 e3                                      mov lr, #0
0080c5e0  0c 00 8d e2                                      add r0, sp, #0xc
0080c5e4  00 50 8d e8                                      stm sp, {ip, lr}
0080c5e8  6c ff ff eb                                      bl #0x80c3a0
0080c5ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0080c5f0  01 20 a0 e3                                      mov r2, #1
0080c5f4  04 20 c4 e5                                      strb r2, [r4, #4]
0080c5f8  00 30 84 e5                                      str r3, [r4]
0080c5fc  b8 ff ff ea                                      b #0x80c4e4

; FUNCTION 0x0080c600, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiSt3mapIiSt3setItS1_ItESaItEES2_SaIS3_IS4_S9_EEEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueENS_17_Rb_tree_iteratorISD_SH_EERKSD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_Select1st<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > >, std::allocator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > >, std::priv::_MapTraitsT<std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > > >, std::pair<int const, std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > > > const&)
; decoder-mode: arm
0080c600  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080c604  00 40 92 e5                                      ldr r4, [r2]
0080c608  08 20 91 e5                                      ldr r2, [r1, #8]
0080c60c  2c d0 4d e2                                      sub sp, sp, #0x2c
0080c610  01 50 a0 e1                                      mov r5, r1
0080c614  02 00 54 e1                                      cmp r4, r2
0080c618  00 70 a0 e1                                      mov r7, r0
0080c61c  03 60 a0 e1                                      mov r6, r3
0080c620  5a 00 00 0a                                      beq #0x80c790
0080c624  01 00 54 e1                                      cmp r4, r1
0080c628  78 00 00 0a                                      beq #0x80c810
0080c62c  00 30 d4 e5                                      ldrb r3, [r4]
0080c630  00 00 53 e3                                      cmp r3, #0
0080c634  3a 00 00 0a                                      beq #0x80c724
0080c638  08 c0 94 e5                                      ldr ip, [r4, #8]
0080c63c  00 00 5c e3                                      cmp ip, #0
0080c640  01 00 00 1a                                      bne #0x80c64c
0080c644  3e 00 00 ea                                      b #0x80c744
0080c648  03 c0 a0 e1                                      mov ip, r3
0080c64c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0080c650  00 00 53 e3                                      cmp r3, #0
0080c654  fb ff ff 1a                                      bne #0x80c648
0080c658  00 20 96 e5                                      ldr r2, [r6]
0080c65c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0080c660  00 00 52 e1                                      cmp r2, r0
0080c664  00 10 a0 a3                                      movge r1, #0
0080c668  01 10 a0 b3                                      movlt r1, #1
0080c66c  00 00 51 e3                                      cmp r1, #0
0080c670  1b 00 00 1a                                      bne #0x80c6e4
0080c674  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0080c678  00 00 58 e3                                      cmp r8, #0
0080c67c  7d 00 00 0a                                      beq #0x80c878
0080c680  08 c0 a0 e1                                      mov ip, r8
0080c684  00 00 00 ea                                      b #0x80c68c
0080c688  03 c0 a0 e1                                      mov ip, r3
0080c68c  08 30 9c e5                                      ldr r3, [ip, #8]
0080c690  00 00 53 e3                                      cmp r3, #0
0080c694  fb ff ff 1a                                      bne #0x80c688
0080c698  00 00 51 e3                                      cmp r1, #0
0080c69c  34 00 00 1a                                      bne #0x80c774
0080c6a0  00 00 52 e1                                      cmp r2, r0
0080c6a4  63 00 00 da                                      ble #0x80c838
0080c6a8  0c 00 55 e1                                      cmp r5, ip
0080c6ac  02 00 00 0a                                      beq #0x80c6bc
0080c6b0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080c6b4  03 00 52 e1                                      cmp r2, r3
0080c6b8  2d 00 00 aa                                      bge #0x80c774
0080c6bc  00 00 58 e3                                      cmp r8, #0
0080c6c0  4a 00 00 1a                                      bne #0x80c7f0
0080c6c4  05 10 a0 e1                                      mov r1, r5
0080c6c8  04 20 a0 e1                                      mov r2, r4
0080c6cc  06 30 a0 e1                                      mov r3, r6
0080c6d0  07 00 a0 e1                                      mov r0, r7
0080c6d4  00 80 8d e5                                      str r8, [sp]
0080c6d8  04 40 8d e5                                      str r4, [sp, #4]
0080c6dc  2f ff ff eb                                      bl #0x80c3a0
0080c6e0  0c 00 00 ea                                      b #0x80c718
0080c6e4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080c6e8  03 00 52 e1                                      cmp r2, r3
0080c6ec  e0 ff ff da                                      ble #0x80c674
0080c6f0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0080c6f4  00 00 5e e3                                      cmp lr, #0
0080c6f8  56 00 00 0a                                      beq #0x80c858
0080c6fc  00 c0 a0 e3                                      mov ip, #0
0080c700  05 10 a0 e1                                      mov r1, r5
0080c704  04 20 a0 e1                                      mov r2, r4
0080c708  06 30 a0 e1                                      mov r3, r6
0080c70c  07 00 a0 e1                                      mov r0, r7
0080c710  10 10 8d e8                                      stm sp, {r4, ip}
0080c714  21 ff ff eb                                      bl #0x80c3a0
0080c718  07 00 a0 e1                                      mov r0, r7
0080c71c  2c d0 8d e2                                      add sp, sp, #0x2c
0080c720  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0080c724  04 30 94 e5                                      ldr r3, [r4, #4]
0080c728  04 30 93 e5                                      ldr r3, [r3, #4]
0080c72c  03 00 54 e1                                      cmp r4, r3
0080c730  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0080c734  c7 ff ff 0a                                      beq #0x80c658
0080c738  08 c0 94 e5                                      ldr ip, [r4, #8]
0080c73c  00 00 5c e3                                      cmp ip, #0
0080c740  c1 ff ff 1a                                      bne #0x80c64c
0080c744  04 c0 94 e5                                      ldr ip, [r4, #4]
0080c748  08 30 9c e5                                      ldr r3, [ip, #8]
0080c74c  03 00 54 e1                                      cmp r4, r3
0080c750  01 00 00 0a                                      beq #0x80c75c
0080c754  bf ff ff ea                                      b #0x80c658
0080c758  03 c0 a0 e1                                      mov ip, r3
0080c75c  04 30 9c e5                                      ldr r3, [ip, #4]
0080c760  08 20 93 e5                                      ldr r2, [r3, #8]
0080c764  0c 00 52 e1                                      cmp r2, ip
0080c768  fa ff ff 0a                                      beq #0x80c758
0080c76c  03 c0 a0 e1                                      mov ip, r3
0080c770  b8 ff ff ea                                      b #0x80c658
0080c774  05 10 a0 e1                                      mov r1, r5
0080c778  06 20 a0 e1                                      mov r2, r6
0080c77c  08 00 8d e2                                      add r0, sp, #8
0080c780  3c ff ff eb                                      bl #0x80c478
0080c784  08 30 9d e5                                      ldr r3, [sp, #8]
0080c788  00 30 87 e5                                      str r3, [r7]
0080c78c  e1 ff ff ea                                      b #0x80c718
0080c790  10 20 91 e5                                      ldr r2, [r1, #0x10]
0080c794  00 00 52 e3                                      cmp r2, #0
0080c798  52 00 00 0a                                      beq #0x80c8e8
0080c79c  00 20 93 e5                                      ldr r2, [r3]
0080c7a0  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0080c7a4  0c 00 52 e1                                      cmp r2, ip
0080c7a8  54 00 00 ba                                      blt #0x80c900
0080c7ac  21 00 00 da                                      ble #0x80c838
0080c7b0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0080c7b4  00 00 5e e3                                      cmp lr, #0
0080c7b8  3c 00 00 0a                                      beq #0x80c8b0
0080c7bc  0e c0 a0 e1                                      mov ip, lr
0080c7c0  00 00 00 ea                                      b #0x80c7c8
0080c7c4  03 c0 a0 e1                                      mov ip, r3
0080c7c8  08 30 9c e5                                      ldr r3, [ip, #8]
0080c7cc  00 00 53 e3                                      cmp r3, #0
0080c7d0  fb ff ff 1a                                      bne #0x80c7c4
0080c7d4  0c 00 55 e1                                      cmp r5, ip
0080c7d8  5c 00 00 0a                                      beq #0x80c950
0080c7dc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080c7e0  03 00 52 e1                                      cmp r2, r3
0080c7e4  4a 00 00 aa                                      bge #0x80c914
0080c7e8  00 00 5e e3                                      cmp lr, #0
0080c7ec  4f 00 00 0a                                      beq #0x80c930
0080c7f0  00 e0 a0 e3                                      mov lr, #0
0080c7f4  05 10 a0 e1                                      mov r1, r5
0080c7f8  0c 20 a0 e1                                      mov r2, ip
0080c7fc  06 30 a0 e1                                      mov r3, r6
0080c800  07 00 a0 e1                                      mov r0, r7
0080c804  00 50 8d e8                                      stm sp, {ip, lr}
0080c808  e4 fe ff eb                                      bl #0x80c3a0
0080c80c  c1 ff ff ea                                      b #0x80c718
0080c810  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0080c814  00 c0 93 e5                                      ldr ip, [r3]
0080c818  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0080c81c  0c 00 5e e1                                      cmp lr, ip
0080c820  06 00 00 aa                                      bge #0x80c840
0080c824  00 c0 a0 e3                                      mov ip, #0
0080c828  00 c0 8d e5                                      str ip, [sp]
0080c82c  04 40 8d e5                                      str r4, [sp, #4]
0080c830  da fe ff eb                                      bl #0x80c3a0
0080c834  b7 ff ff ea                                      b #0x80c718
0080c838  00 40 87 e5                                      str r4, [r7]
0080c83c  b5 ff ff ea                                      b #0x80c718
0080c840  03 20 a0 e1                                      mov r2, r3
0080c844  10 00 8d e2                                      add r0, sp, #0x10
0080c848  0a ff ff eb                                      bl #0x80c478
0080c84c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0080c850  00 30 87 e5                                      str r3, [r7]
0080c854  af ff ff ea                                      b #0x80c718
0080c858  05 10 a0 e1                                      mov r1, r5
0080c85c  0c 20 a0 e1                                      mov r2, ip
0080c860  06 30 a0 e1                                      mov r3, r6
0080c864  07 00 a0 e1                                      mov r0, r7
0080c868  00 e0 8d e5                                      str lr, [sp]
0080c86c  04 c0 8d e5                                      str ip, [sp, #4]
0080c870  ca fe ff eb                                      bl #0x80c3a0
0080c874  a7 ff ff ea                                      b #0x80c718
0080c878  04 30 94 e5                                      ldr r3, [r4, #4]
0080c87c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0080c880  0c 00 54 e1                                      cmp r4, ip
0080c884  04 c0 a0 11                                      movne ip, r4
0080c888  04 00 00 1a                                      bne #0x80c8a0
0080c88c  03 c0 a0 e1                                      mov ip, r3
0080c890  04 30 93 e5                                      ldr r3, [r3, #4]
0080c894  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0080c898  0a 00 5c e1                                      cmp ip, sl
0080c89c  fa ff ff 0a                                      beq #0x80c88c
0080c8a0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0080c8a4  0a 00 53 e1                                      cmp r3, sl
0080c8a8  03 c0 a0 11                                      movne ip, r3
0080c8ac  79 ff ff ea                                      b #0x80c698
0080c8b0  04 30 94 e5                                      ldr r3, [r4, #4]
0080c8b4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0080c8b8  01 00 54 e1                                      cmp r4, r1
0080c8bc  04 c0 a0 11                                      movne ip, r4
0080c8c0  04 00 00 1a                                      bne #0x80c8d8
0080c8c4  03 c0 a0 e1                                      mov ip, r3
0080c8c8  04 30 93 e5                                      ldr r3, [r3, #4]
0080c8cc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0080c8d0  0c 00 51 e1                                      cmp r1, ip
0080c8d4  fa ff ff 0a                                      beq #0x80c8c4
0080c8d8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0080c8dc  01 00 53 e1                                      cmp r3, r1
0080c8e0  03 c0 a0 11                                      movne ip, r3
0080c8e4  ba ff ff ea                                      b #0x80c7d4
0080c8e8  03 20 a0 e1                                      mov r2, r3
0080c8ec  20 00 8d e2                                      add r0, sp, #0x20
0080c8f0  e0 fe ff eb                                      bl #0x80c478
0080c8f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
0080c8f8  00 30 87 e5                                      str r3, [r7]
0080c8fc  85 ff ff ea                                      b #0x80c718
0080c900  00 c0 a0 e3                                      mov ip, #0
0080c904  04 20 a0 e1                                      mov r2, r4
0080c908  10 10 8d e8                                      stm sp, {r4, ip}
0080c90c  a3 fe ff eb                                      bl #0x80c3a0
0080c910  80 ff ff ea                                      b #0x80c718
0080c914  05 10 a0 e1                                      mov r1, r5
0080c918  06 20 a0 e1                                      mov r2, r6
0080c91c  18 00 8d e2                                      add r0, sp, #0x18
0080c920  d4 fe ff eb                                      bl #0x80c478
0080c924  18 30 9d e5                                      ldr r3, [sp, #0x18]
0080c928  00 30 87 e5                                      str r3, [r7]
0080c92c  79 ff ff ea                                      b #0x80c718
0080c930  05 10 a0 e1                                      mov r1, r5
0080c934  04 20 a0 e1                                      mov r2, r4
0080c938  06 30 a0 e1                                      mov r3, r6
0080c93c  07 00 a0 e1                                      mov r0, r7
0080c940  00 e0 8d e5                                      str lr, [sp]
0080c944  04 40 8d e5                                      str r4, [sp, #4]
0080c948  94 fe ff eb                                      bl #0x80c3a0
0080c94c  71 ff ff ea                                      b #0x80c718
0080c950  00 c0 a0 e3                                      mov ip, #0
0080c954  05 10 a0 e1                                      mov r1, r5
0080c958  04 20 a0 e1                                      mov r2, r4
0080c95c  06 30 a0 e1                                      mov r3, r6
0080c960  07 00 a0 e1                                      mov r0, r7
0080c964  00 c0 8d e5                                      str ip, [sp]
0080c968  04 40 8d e5                                      str r4, [sp, #4]
0080c96c  8b fe ff eb                                      bl #0x80c3a0
0080c970  68 ff ff ea                                      b #0x80c718
