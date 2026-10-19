; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00802300, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjjENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00802300  70 40 2d e9                                      push {r4, r5, r6, lr}
00802304  00 40 51 e2                                      subs r4, r1, #0
00802308  00 60 a0 e1                                      mov r6, r0
0080230c  08 00 00 0a                                      beq #0x802334
00802310  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00802314  06 00 a0 e1                                      mov r0, r6
00802318  f8 ff ff eb                                      bl #0x802300
0080231c  08 50 94 e5                                      ldr r5, [r4, #8]
00802320  04 00 a0 e1                                      mov r0, r4
00802324  18 10 a0 e3                                      mov r1, #0x18
00802328  02 f0 02 eb                                      bl #0x8be338
0080232c  00 40 55 e2                                      subs r4, r5, #0
00802330  f6 ff ff 1a                                      bne #0x802310
00802334  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00802628, declared_size=312, range_size=312, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjjENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_.clone.9
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, unsigned int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.9]
; decoder-mode: arm
00802628  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080262c  24 41 9f e5                                      ldr r4, [pc, #0x124]
00802630  24 51 9f e5                                      ldr r5, [pc, #0x124]
00802634  01 70 a0 e1                                      mov r7, r1
00802638  04 40 8f e0                                      add r4, pc, r4
0080263c  05 10 94 e7                                      ldr r1, [r4, r5]
00802640  00 60 a0 e1                                      mov r6, r0
00802644  02 a0 a0 e1                                      mov sl, r2
00802648  01 00 57 e1                                      cmp r7, r1
0080264c  2e 00 00 0a                                      beq #0x80270c
00802650  20 20 9d e5                                      ldr r2, [sp, #0x20]
00802654  00 00 52 e3                                      cmp r2, #0
00802658  19 00 00 0a                                      beq #0x8026c4
0080265c  05 90 94 e7                                      ldr sb, [r4, r5]
00802660  09 00 a0 e1                                      mov r0, sb
00802664  e7 ff ff eb                                      bl #0x802608
00802668  00 20 9a e5                                      ldr r2, [sl]
0080266c  00 30 a0 e3                                      mov r3, #0
00802670  00 80 a0 e1                                      mov r8, r0
00802674  10 20 80 e5                                      str r2, [r0, #0x10]
00802678  04 20 9a e5                                      ldr r2, [sl, #4]
0080267c  0c 30 80 e5                                      str r3, [r0, #0xc]
00802680  08 30 80 e5                                      str r3, [r0, #8]
00802684  14 20 80 e5                                      str r2, [r0, #0x14]
00802688  0c 00 87 e5                                      str r0, [r7, #0xc]
0080268c  0c 30 99 e5                                      ldr r3, [sb, #0xc]
00802690  03 00 57 e1                                      cmp r7, r3
00802694  0c 00 89 05                                      streq r0, [sb, #0xc]
00802698  05 40 94 e7                                      ldr r4, [r4, r5]
0080269c  08 00 a0 e1                                      mov r0, r8
008026a0  04 70 88 e5                                      str r7, [r8, #4]
008026a4  04 10 84 e2                                      add r1, r4, #4
008026a8  2c 44 ec eb                                      bl #0x313760
008026ac  10 30 94 e5                                      ldr r3, [r4, #0x10]
008026b0  06 00 a0 e1                                      mov r0, r6
008026b4  01 30 83 e2                                      add r3, r3, #1
008026b8  10 30 84 e5                                      str r3, [r4, #0x10]
008026bc  00 80 86 e5                                      str r8, [r6]
008026c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008026c4  00 00 53 e3                                      cmp r3, #0
008026c8  1d 00 00 0a                                      beq #0x802744
008026cc  05 90 94 e7                                      ldr sb, [r4, r5]
008026d0  09 00 a0 e1                                      mov r0, sb
008026d4  cb ff ff eb                                      bl #0x802608
008026d8  00 20 9a e5                                      ldr r2, [sl]
008026dc  00 30 a0 e3                                      mov r3, #0
008026e0  00 80 a0 e1                                      mov r8, r0
008026e4  10 20 80 e5                                      str r2, [r0, #0x10]
008026e8  04 20 9a e5                                      ldr r2, [sl, #4]
008026ec  0c 30 80 e5                                      str r3, [r0, #0xc]
008026f0  08 30 80 e5                                      str r3, [r0, #8]
008026f4  14 20 80 e5                                      str r2, [r0, #0x14]
008026f8  08 00 87 e5                                      str r0, [r7, #8]
008026fc  08 30 99 e5                                      ldr r3, [sb, #8]
00802700  03 00 57 e1                                      cmp r7, r3
00802704  08 00 89 05                                      streq r0, [sb, #8]
00802708  e2 ff ff ea                                      b #0x802698
0080270c  07 00 a0 e1                                      mov r0, r7
00802710  bc ff ff eb                                      bl #0x802608
00802714  00 20 9a e5                                      ldr r2, [sl]
00802718  00 30 a0 e3                                      mov r3, #0
0080271c  00 80 a0 e1                                      mov r8, r0
00802720  10 20 80 e5                                      str r2, [r0, #0x10]
00802724  04 20 9a e5                                      ldr r2, [sl, #4]
00802728  0c 30 80 e5                                      str r3, [r0, #0xc]
0080272c  08 30 80 e5                                      str r3, [r0, #8]
00802730  14 20 80 e5                                      str r2, [r0, #0x14]
00802734  08 00 87 e5                                      str r0, [r7, #8]
00802738  04 00 87 e5                                      str r0, [r7, #4]
0080273c  0c 00 87 e5                                      str r0, [r7, #0xc]
00802740  d4 ff ff ea                                      b #0x802698
00802744  00 20 9a e5                                      ldr r2, [sl]
00802748  10 30 97 e5                                      ldr r3, [r7, #0x10]
0080274c  03 00 52 e1                                      cmp r2, r3
00802750  dd ff ff 3a                                      blo #0x8026cc
00802754  c0 ff ff ea                                      b #0x80265c
; mapping-symbol data/literal pool
00802758  58 24 19 00 fc 30 00 00                          .byte 0x58, 0x24, 0x19, 0x00, 0xfc, 0x30, 0x00, 0x00

; FUNCTION 0x00802760, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjjENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_.clone.13
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >::insert_unique(std::pair<unsigned int const, unsigned int> const&) [clone .clone.13]
; decoder-mode: arm
00802760  70 31 9f e5                                      ldr r3, [pc, #0x170]
00802764  70 c1 9f e5                                      ldr ip, [pc, #0x170]
00802768  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0080276c  03 30 8f e0                                      add r3, pc, r3
00802770  00 40 a0 e1                                      mov r4, r0
00802774  0c 00 93 e7                                      ldr r0, [r3, ip]
00802778  01 20 a0 e1                                      mov r2, r1
0080277c  14 d0 4d e2                                      sub sp, sp, #0x14
00802780  04 10 90 e5                                      ldr r1, [r0, #4]
00802784  00 00 51 e3                                      cmp r1, #0
00802788  00 10 a0 01                                      moveq r1, r0
0080278c  15 00 00 0a                                      beq #0x8027e8
00802790  00 70 92 e5                                      ldr r7, [r2]
00802794  00 00 00 ea                                      b #0x80279c
00802798  00 10 a0 e1                                      mov r1, r0
0080279c  10 50 91 e5                                      ldr r5, [r1, #0x10]
008027a0  01 60 a0 e3                                      mov r6, #1
008027a4  07 00 55 e1                                      cmp r5, r7
008027a8  08 00 91 85                                      ldrhi r0, [r1, #8]
008027ac  0c 00 91 95                                      ldrls r0, [r1, #0xc]
008027b0  00 60 a0 93                                      movls r6, #0
008027b4  00 00 50 e3                                      cmp r0, #0
008027b8  f6 ff ff 1a                                      bne #0x802798
008027bc  00 00 56 e3                                      cmp r6, #0
008027c0  01 30 a0 01                                      moveq r3, r1
008027c4  07 00 00 1a                                      bne #0x8027e8
008027c8  05 00 57 e1                                      cmp r7, r5
008027cc  00 30 84 95                                      strls r3, [r4]
008027d0  00 30 a0 93                                      movls r3, #0
008027d4  04 30 c4 95                                      strbls r3, [r4, #4]
008027d8  1c 00 00 8a                                      bhi #0x802850
008027dc  04 00 a0 e1                                      mov r0, r4
008027e0  14 d0 8d e2                                      add sp, sp, #0x14
008027e4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008027e8  0c 30 93 e7                                      ldr r3, [r3, ip]
008027ec  08 30 93 e5                                      ldr r3, [r3, #8]
008027f0  01 00 53 e1                                      cmp r3, r1
008027f4  2d 00 00 0a                                      beq #0x8028b0
008027f8  00 30 d1 e5                                      ldrb r3, [r1]
008027fc  00 00 53 e3                                      cmp r3, #0
00802800  03 00 00 1a                                      bne #0x802814
00802804  04 30 91 e5                                      ldr r3, [r1, #4]
00802808  04 30 93 e5                                      ldr r3, [r3, #4]
0080280c  03 00 51 e1                                      cmp r1, r3
00802810  22 00 00 0a                                      beq #0x8028a0
00802814  08 30 91 e5                                      ldr r3, [r1, #8]
00802818  00 00 53 e3                                      cmp r3, #0
0080281c  15 00 00 0a                                      beq #0x802878
00802820  00 00 00 ea                                      b #0x802828
00802824  00 30 a0 e1                                      mov r3, r0
00802828  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0080282c  00 00 50 e3                                      cmp r0, #0
00802830  fb ff ff 1a                                      bne #0x802824
00802834  10 50 93 e5                                      ldr r5, [r3, #0x10]
00802838  00 70 92 e5                                      ldr r7, [r2]
0080283c  05 00 57 e1                                      cmp r7, r5
00802840  00 30 84 95                                      strls r3, [r4]
00802844  00 30 a0 93                                      movls r3, #0
00802848  04 30 c4 95                                      strbls r3, [r4, #4]
0080284c  e2 ff ff 9a                                      bls #0x8027dc
00802850  00 c0 a0 e3                                      mov ip, #0
00802854  0c 30 a0 e1                                      mov r3, ip
00802858  0c 00 8d e2                                      add r0, sp, #0xc
0080285c  00 c0 8d e5                                      str ip, [sp]
00802860  70 ff ff eb                                      bl #0x802628
00802864  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00802868  01 20 a0 e3                                      mov r2, #1
0080286c  04 20 c4 e5                                      strb r2, [r4, #4]
00802870  00 30 84 e5                                      str r3, [r4]
00802874  d8 ff ff ea                                      b #0x8027dc
00802878  04 30 91 e5                                      ldr r3, [r1, #4]
0080287c  08 00 93 e5                                      ldr r0, [r3, #8]
00802880  00 00 51 e1                                      cmp r1, r0
00802884  ea ff ff 1a                                      bne #0x802834
00802888  03 00 a0 e1                                      mov r0, r3
0080288c  04 30 93 e5                                      ldr r3, [r3, #4]
00802890  08 c0 93 e5                                      ldr ip, [r3, #8]
00802894  00 00 5c e1                                      cmp ip, r0
00802898  fa ff ff 0a                                      beq #0x802888
0080289c  e4 ff ff ea                                      b #0x802834
008028a0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
008028a4  00 70 92 e5                                      ldr r7, [r2]
008028a8  10 50 93 e5                                      ldr r5, [r3, #0x10]
008028ac  c5 ff ff ea                                      b #0x8027c8
008028b0  01 30 a0 e1                                      mov r3, r1
008028b4  00 c0 a0 e3                                      mov ip, #0
008028b8  08 00 8d e2                                      add r0, sp, #8
008028bc  00 c0 8d e5                                      str ip, [sp]
008028c0  58 ff ff eb                                      bl #0x802628
008028c4  08 30 9d e5                                      ldr r3, [sp, #8]
008028c8  01 20 a0 e3                                      mov r2, #1
008028cc  04 20 c4 e5                                      strb r2, [r4, #4]
008028d0  00 30 84 e5                                      str r3, [r4]
008028d4  c0 ff ff ea                                      b #0x8027dc
; mapping-symbol data/literal pool
008028d8  24 23 19 00 fc 30 00 00                          .byte 0x24, 0x23, 0x19, 0x00, 0xfc, 0x30, 0x00, 0x00

; FUNCTION 0x008168c0, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjjENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE5eraseENS_17_Rb_tree_iteratorIS5_S9_EE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >::erase(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, unsigned int>, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> > >)
; decoder-mode: arm
008168c0  10 40 2d e9                                      push {r4, lr}
008168c4  00 40 a0 e1                                      mov r4, r0
008168c8  08 20 84 e2                                      add r2, r4, #8
008168cc  00 00 91 e5                                      ldr r0, [r1]
008168d0  0c 30 84 e2                                      add r3, r4, #0xc
008168d4  04 10 84 e2                                      add r1, r4, #4
008168d8  c9 7d ec eb                                      bl #0x336004
008168dc  00 00 50 e3                                      cmp r0, #0
008168e0  01 00 00 0a                                      beq #0x8168ec
008168e4  18 10 a0 e3                                      mov r1, #0x18
008168e8  92 9e 02 eb                                      bl #0x8be338
008168ec  10 30 94 e5                                      ldr r3, [r4, #0x10]
008168f0  01 30 43 e2                                      sub r3, r3, #1
008168f4  10 30 84 e5                                      str r3, [r4, #0x10]
008168f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008171f4, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjjENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, unsigned int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
008171f4  02 00 51 e1                                      cmp r1, r2
008171f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008171fc  01 40 a0 e1                                      mov r4, r1
00817200  02 70 a0 e1                                      mov r7, r2
00817204  00 50 a0 e1                                      mov r5, r0
00817208  03 80 a0 e1                                      mov r8, r3
0081720c  2e 00 00 0a                                      beq #0x8172cc
00817210  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00817214  00 00 53 e3                                      cmp r3, #0
00817218  17 00 00 0a                                      beq #0x81727c
0081721c  04 00 a0 e1                                      mov r0, r4
00817220  eb ff ff eb                                      bl #0x8171d4
00817224  00 20 98 e5                                      ldr r2, [r8]
00817228  00 30 a0 e3                                      mov r3, #0
0081722c  00 60 a0 e1                                      mov r6, r0
00817230  10 20 80 e5                                      str r2, [r0, #0x10]
00817234  04 20 98 e5                                      ldr r2, [r8, #4]
00817238  0c 30 80 e5                                      str r3, [r0, #0xc]
0081723c  08 30 80 e5                                      str r3, [r0, #8]
00817240  14 20 80 e5                                      str r2, [r0, #0x14]
00817244  0c 00 87 e5                                      str r0, [r7, #0xc]
00817248  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081724c  03 00 57 e1                                      cmp r7, r3
00817250  1b 00 00 0a                                      beq #0x8172c4
00817254  06 00 a0 e1                                      mov r0, r6
00817258  04 70 86 e5                                      str r7, [r6, #4]
0081725c  04 10 84 e2                                      add r1, r4, #4
00817260  3e f1 eb eb                                      bl #0x313760
00817264  10 30 94 e5                                      ldr r3, [r4, #0x10]
00817268  05 00 a0 e1                                      mov r0, r5
0081726c  01 30 83 e2                                      add r3, r3, #1
00817270  10 30 84 e5                                      str r3, [r4, #0x10]
00817274  00 60 85 e5                                      str r6, [r5]
00817278  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081727c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00817280  00 00 53 e3                                      cmp r3, #0
00817284  1e 00 00 0a                                      beq #0x817304
00817288  04 00 a0 e1                                      mov r0, r4
0081728c  d0 ff ff eb                                      bl #0x8171d4
00817290  00 20 98 e5                                      ldr r2, [r8]
00817294  00 30 a0 e3                                      mov r3, #0
00817298  00 60 a0 e1                                      mov r6, r0
0081729c  10 20 80 e5                                      str r2, [r0, #0x10]
008172a0  04 20 98 e5                                      ldr r2, [r8, #4]
008172a4  0c 30 80 e5                                      str r3, [r0, #0xc]
008172a8  08 30 80 e5                                      str r3, [r0, #8]
008172ac  14 20 80 e5                                      str r2, [r0, #0x14]
008172b0  08 00 87 e5                                      str r0, [r7, #8]
008172b4  08 30 94 e5                                      ldr r3, [r4, #8]
008172b8  03 00 57 e1                                      cmp r7, r3
008172bc  08 00 84 05                                      streq r0, [r4, #8]
008172c0  e3 ff ff ea                                      b #0x817254
008172c4  0c 60 84 e5                                      str r6, [r4, #0xc]
008172c8  e1 ff ff ea                                      b #0x817254
008172cc  01 00 a0 e1                                      mov r0, r1
008172d0  bf ff ff eb                                      bl #0x8171d4
008172d4  00 20 98 e5                                      ldr r2, [r8]
008172d8  00 30 a0 e3                                      mov r3, #0
008172dc  00 60 a0 e1                                      mov r6, r0
008172e0  10 20 80 e5                                      str r2, [r0, #0x10]
008172e4  04 20 98 e5                                      ldr r2, [r8, #4]
008172e8  0c 30 80 e5                                      str r3, [r0, #0xc]
008172ec  08 30 80 e5                                      str r3, [r0, #8]
008172f0  14 20 80 e5                                      str r2, [r0, #0x14]
008172f4  08 00 84 e5                                      str r0, [r4, #8]
008172f8  04 00 84 e5                                      str r0, [r4, #4]
008172fc  0c 00 84 e5                                      str r0, [r4, #0xc]
00817300  d3 ff ff ea                                      b #0x817254
00817304  00 20 98 e5                                      ldr r2, [r8]
00817308  10 30 97 e5                                      ldr r3, [r7, #0x10]
0081730c  03 00 52 e1                                      cmp r2, r3
00817310  c1 ff ff 2a                                      bhs #0x81721c
00817314  db ff ff ea                                      b #0x817288

; FUNCTION 0x00817318, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjjENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >::insert_unique(std::pair<unsigned int const, unsigned int> const&)
; decoder-mode: arm
00817318  70 40 2d e9                                      push {r4, r5, r6, lr}
0081731c  04 c0 91 e5                                      ldr ip, [r1, #4]
00817320  10 d0 4d e2                                      sub sp, sp, #0x10
00817324  00 40 a0 e1                                      mov r4, r0
00817328  00 00 5c e3                                      cmp ip, #0
0081732c  02 30 a0 e1                                      mov r3, r2
00817330  01 c0 a0 01                                      moveq ip, r1
00817334  15 00 00 0a                                      beq #0x817390
00817338  00 60 92 e5                                      ldr r6, [r2]
0081733c  00 00 00 ea                                      b #0x817344
00817340  02 c0 a0 e1                                      mov ip, r2
00817344  10 00 9c e5                                      ldr r0, [ip, #0x10]
00817348  01 50 a0 e3                                      mov r5, #1
0081734c  06 00 50 e1                                      cmp r0, r6
00817350  08 20 9c 85                                      ldrhi r2, [ip, #8]
00817354  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
00817358  00 50 a0 93                                      movls r5, #0
0081735c  00 00 52 e3                                      cmp r2, #0
00817360  f6 ff ff 1a                                      bne #0x817340
00817364  00 00 55 e3                                      cmp r5, #0
00817368  0c 50 a0 01                                      moveq r5, ip
0081736c  07 00 00 1a                                      bne #0x817390
00817370  00 00 56 e1                                      cmp r6, r0
00817374  00 30 a0 93                                      movls r3, #0
00817378  00 50 84 95                                      strls r5, [r4]
0081737c  04 30 c4 95                                      strbls r3, [r4, #4]
00817380  1c 00 00 8a                                      bhi #0x8173f8
00817384  04 00 a0 e1                                      mov r0, r4
00817388  10 d0 8d e2                                      add sp, sp, #0x10
0081738c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00817390  08 20 91 e5                                      ldr r2, [r1, #8]
00817394  02 00 5c e1                                      cmp ip, r2
00817398  36 00 00 0a                                      beq #0x817478
0081739c  00 20 dc e5                                      ldrb r2, [ip]
008173a0  00 00 52 e3                                      cmp r2, #0
008173a4  03 00 00 1a                                      bne #0x8173b8
008173a8  04 20 9c e5                                      ldr r2, [ip, #4]
008173ac  04 20 92 e5                                      ldr r2, [r2, #4]
008173b0  02 00 5c e1                                      cmp ip, r2
008173b4  2a 00 00 0a                                      beq #0x817464
008173b8  08 00 9c e5                                      ldr r0, [ip, #8]
008173bc  00 00 50 e3                                      cmp r0, #0
008173c0  01 00 00 1a                                      bne #0x8173cc
008173c4  16 00 00 ea                                      b #0x817424
008173c8  02 00 a0 e1                                      mov r0, r2
008173cc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
008173d0  00 00 52 e3                                      cmp r2, #0
008173d4  fb ff ff 1a                                      bne #0x8173c8
008173d8  00 60 93 e5                                      ldr r6, [r3]
008173dc  00 50 a0 e1                                      mov r5, r0
008173e0  10 00 90 e5                                      ldr r0, [r0, #0x10]
008173e4  00 00 56 e1                                      cmp r6, r0
008173e8  00 30 a0 93                                      movls r3, #0
008173ec  00 50 84 95                                      strls r5, [r4]
008173f0  04 30 c4 95                                      strbls r3, [r4, #4]
008173f4  e2 ff ff 9a                                      bls #0x817384
008173f8  0c 20 a0 e1                                      mov r2, ip
008173fc  08 00 8d e2                                      add r0, sp, #8
00817400  00 c0 a0 e3                                      mov ip, #0
00817404  04 c0 8d e5                                      str ip, [sp, #4]
00817408  00 c0 8d e5                                      str ip, [sp]
0081740c  78 ff ff eb                                      bl #0x8171f4
00817410  08 30 9d e5                                      ldr r3, [sp, #8]
00817414  01 20 a0 e3                                      mov r2, #1
00817418  04 20 c4 e5                                      strb r2, [r4, #4]
0081741c  00 30 84 e5                                      str r3, [r4]
00817420  d7 ff ff ea                                      b #0x817384
00817424  04 20 9c e5                                      ldr r2, [ip, #4]
00817428  08 00 92 e5                                      ldr r0, [r2, #8]
0081742c  00 00 5c e1                                      cmp ip, r0
00817430  02 50 a0 11                                      movne r5, r2
00817434  00 60 93 15                                      ldrne r6, [r3]
00817438  10 00 92 15                                      ldrne r0, [r2, #0x10]
0081743c  01 00 00 0a                                      beq #0x817448
00817440  ca ff ff ea                                      b #0x817370
00817444  05 20 a0 e1                                      mov r2, r5
00817448  04 50 92 e5                                      ldr r5, [r2, #4]
0081744c  08 00 95 e5                                      ldr r0, [r5, #8]
00817450  02 00 50 e1                                      cmp r0, r2
00817454  fa ff ff 0a                                      beq #0x817444
00817458  00 60 93 e5                                      ldr r6, [r3]
0081745c  10 00 95 e5                                      ldr r0, [r5, #0x10]
00817460  c2 ff ff ea                                      b #0x817370
00817464  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00817468  00 60 93 e5                                      ldr r6, [r3]
0081746c  02 50 a0 e1                                      mov r5, r2
00817470  10 00 92 e5                                      ldr r0, [r2, #0x10]
00817474  bd ff ff ea                                      b #0x817370
00817478  0c 20 a0 e1                                      mov r2, ip
0081747c  00 e0 a0 e3                                      mov lr, #0
00817480  0c 00 8d e2                                      add r0, sp, #0xc
00817484  00 50 8d e8                                      stm sp, {ip, lr}
00817488  59 ff ff eb                                      bl #0x8171f4
0081748c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00817490  01 20 a0 e3                                      mov r2, #1
00817494  04 20 c4 e5                                      strb r2, [r4, #4]
00817498  00 30 84 e5                                      str r3, [r4]
0081749c  b8 ff ff ea                                      b #0x817384

; FUNCTION 0x008174a0, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjjENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, unsigned int>, std::priv::_Select1st<std::pair<unsigned int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> >, std::allocator<std::pair<unsigned int const, unsigned int> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, unsigned int>, std::priv::_MapTraitsT<std::pair<unsigned int const, unsigned int> > >, std::pair<unsigned int const, unsigned int> const&)
; decoder-mode: arm
008174a0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008174a4  00 40 92 e5                                      ldr r4, [r2]
008174a8  08 20 91 e5                                      ldr r2, [r1, #8]
008174ac  2c d0 4d e2                                      sub sp, sp, #0x2c
008174b0  01 50 a0 e1                                      mov r5, r1
008174b4  02 00 54 e1                                      cmp r4, r2
008174b8  00 70 a0 e1                                      mov r7, r0
008174bc  03 60 a0 e1                                      mov r6, r3
008174c0  5a 00 00 0a                                      beq #0x817630
008174c4  01 00 54 e1                                      cmp r4, r1
008174c8  78 00 00 0a                                      beq #0x8176b0
008174cc  00 30 d4 e5                                      ldrb r3, [r4]
008174d0  00 00 53 e3                                      cmp r3, #0
008174d4  3a 00 00 0a                                      beq #0x8175c4
008174d8  08 c0 94 e5                                      ldr ip, [r4, #8]
008174dc  00 00 5c e3                                      cmp ip, #0
008174e0  01 00 00 1a                                      bne #0x8174ec
008174e4  3e 00 00 ea                                      b #0x8175e4
008174e8  03 c0 a0 e1                                      mov ip, r3
008174ec  0c 30 9c e5                                      ldr r3, [ip, #0xc]
008174f0  00 00 53 e3                                      cmp r3, #0
008174f4  fb ff ff 1a                                      bne #0x8174e8
008174f8  00 20 96 e5                                      ldr r2, [r6]
008174fc  10 00 94 e5                                      ldr r0, [r4, #0x10]
00817500  00 00 52 e1                                      cmp r2, r0
00817504  00 10 a0 23                                      movhs r1, #0
00817508  01 10 a0 33                                      movlo r1, #1
0081750c  00 00 51 e3                                      cmp r1, #0
00817510  1b 00 00 1a                                      bne #0x817584
00817514  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00817518  00 00 58 e3                                      cmp r8, #0
0081751c  7d 00 00 0a                                      beq #0x817718
00817520  08 c0 a0 e1                                      mov ip, r8
00817524  00 00 00 ea                                      b #0x81752c
00817528  03 c0 a0 e1                                      mov ip, r3
0081752c  08 30 9c e5                                      ldr r3, [ip, #8]
00817530  00 00 53 e3                                      cmp r3, #0
00817534  fb ff ff 1a                                      bne #0x817528
00817538  00 00 51 e3                                      cmp r1, #0
0081753c  34 00 00 1a                                      bne #0x817614
00817540  00 00 52 e1                                      cmp r2, r0
00817544  63 00 00 9a                                      bls #0x8176d8
00817548  0c 00 55 e1                                      cmp r5, ip
0081754c  02 00 00 0a                                      beq #0x81755c
00817550  10 30 9c e5                                      ldr r3, [ip, #0x10]
00817554  03 00 52 e1                                      cmp r2, r3
00817558  2d 00 00 2a                                      bhs #0x817614
0081755c  00 00 58 e3                                      cmp r8, #0
00817560  4a 00 00 1a                                      bne #0x817690
00817564  05 10 a0 e1                                      mov r1, r5
00817568  04 20 a0 e1                                      mov r2, r4
0081756c  06 30 a0 e1                                      mov r3, r6
00817570  07 00 a0 e1                                      mov r0, r7
00817574  00 80 8d e5                                      str r8, [sp]
00817578  04 40 8d e5                                      str r4, [sp, #4]
0081757c  1c ff ff eb                                      bl #0x8171f4
00817580  0c 00 00 ea                                      b #0x8175b8
00817584  10 30 9c e5                                      ldr r3, [ip, #0x10]
00817588  03 00 52 e1                                      cmp r2, r3
0081758c  e0 ff ff 9a                                      bls #0x817514
00817590  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00817594  00 00 5e e3                                      cmp lr, #0
00817598  56 00 00 0a                                      beq #0x8176f8
0081759c  00 c0 a0 e3                                      mov ip, #0
008175a0  05 10 a0 e1                                      mov r1, r5
008175a4  04 20 a0 e1                                      mov r2, r4
008175a8  06 30 a0 e1                                      mov r3, r6
008175ac  07 00 a0 e1                                      mov r0, r7
008175b0  10 10 8d e8                                      stm sp, {r4, ip}
008175b4  0e ff ff eb                                      bl #0x8171f4
008175b8  07 00 a0 e1                                      mov r0, r7
008175bc  2c d0 8d e2                                      add sp, sp, #0x2c
008175c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008175c4  04 30 94 e5                                      ldr r3, [r4, #4]
008175c8  04 30 93 e5                                      ldr r3, [r3, #4]
008175cc  03 00 54 e1                                      cmp r4, r3
008175d0  0c c0 94 05                                      ldreq ip, [r4, #0xc]
008175d4  c7 ff ff 0a                                      beq #0x8174f8
008175d8  08 c0 94 e5                                      ldr ip, [r4, #8]
008175dc  00 00 5c e3                                      cmp ip, #0
008175e0  c1 ff ff 1a                                      bne #0x8174ec
008175e4  04 c0 94 e5                                      ldr ip, [r4, #4]
008175e8  08 30 9c e5                                      ldr r3, [ip, #8]
008175ec  03 00 54 e1                                      cmp r4, r3
008175f0  01 00 00 0a                                      beq #0x8175fc
008175f4  bf ff ff ea                                      b #0x8174f8
008175f8  03 c0 a0 e1                                      mov ip, r3
008175fc  04 30 9c e5                                      ldr r3, [ip, #4]
00817600  08 20 93 e5                                      ldr r2, [r3, #8]
00817604  0c 00 52 e1                                      cmp r2, ip
00817608  fa ff ff 0a                                      beq #0x8175f8
0081760c  03 c0 a0 e1                                      mov ip, r3
00817610  b8 ff ff ea                                      b #0x8174f8
00817614  05 10 a0 e1                                      mov r1, r5
00817618  06 20 a0 e1                                      mov r2, r6
0081761c  08 00 8d e2                                      add r0, sp, #8
00817620  3c ff ff eb                                      bl #0x817318
00817624  08 30 9d e5                                      ldr r3, [sp, #8]
00817628  00 30 87 e5                                      str r3, [r7]
0081762c  e1 ff ff ea                                      b #0x8175b8
00817630  10 20 91 e5                                      ldr r2, [r1, #0x10]
00817634  00 00 52 e3                                      cmp r2, #0
00817638  52 00 00 0a                                      beq #0x817788
0081763c  00 20 93 e5                                      ldr r2, [r3]
00817640  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00817644  0c 00 52 e1                                      cmp r2, ip
00817648  54 00 00 3a                                      blo #0x8177a0
0081764c  21 00 00 9a                                      bls #0x8176d8
00817650  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00817654  00 00 5e e3                                      cmp lr, #0
00817658  3c 00 00 0a                                      beq #0x817750
0081765c  0e c0 a0 e1                                      mov ip, lr
00817660  00 00 00 ea                                      b #0x817668
00817664  03 c0 a0 e1                                      mov ip, r3
00817668  08 30 9c e5                                      ldr r3, [ip, #8]
0081766c  00 00 53 e3                                      cmp r3, #0
00817670  fb ff ff 1a                                      bne #0x817664
00817674  0c 00 55 e1                                      cmp r5, ip
00817678  5c 00 00 0a                                      beq #0x8177f0
0081767c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00817680  03 00 52 e1                                      cmp r2, r3
00817684  4a 00 00 2a                                      bhs #0x8177b4
00817688  00 00 5e e3                                      cmp lr, #0
0081768c  4f 00 00 0a                                      beq #0x8177d0
00817690  00 e0 a0 e3                                      mov lr, #0
00817694  05 10 a0 e1                                      mov r1, r5
00817698  0c 20 a0 e1                                      mov r2, ip
0081769c  06 30 a0 e1                                      mov r3, r6
008176a0  07 00 a0 e1                                      mov r0, r7
008176a4  00 50 8d e8                                      stm sp, {ip, lr}
008176a8  d1 fe ff eb                                      bl #0x8171f4
008176ac  c1 ff ff ea                                      b #0x8175b8
008176b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008176b4  00 c0 93 e5                                      ldr ip, [r3]
008176b8  10 e0 92 e5                                      ldr lr, [r2, #0x10]
008176bc  0c 00 5e e1                                      cmp lr, ip
008176c0  06 00 00 2a                                      bhs #0x8176e0
008176c4  00 c0 a0 e3                                      mov ip, #0
008176c8  00 c0 8d e5                                      str ip, [sp]
008176cc  04 40 8d e5                                      str r4, [sp, #4]
008176d0  c7 fe ff eb                                      bl #0x8171f4
008176d4  b7 ff ff ea                                      b #0x8175b8
008176d8  00 40 87 e5                                      str r4, [r7]
008176dc  b5 ff ff ea                                      b #0x8175b8
008176e0  03 20 a0 e1                                      mov r2, r3
008176e4  10 00 8d e2                                      add r0, sp, #0x10
008176e8  0a ff ff eb                                      bl #0x817318
008176ec  10 30 9d e5                                      ldr r3, [sp, #0x10]
008176f0  00 30 87 e5                                      str r3, [r7]
008176f4  af ff ff ea                                      b #0x8175b8
008176f8  05 10 a0 e1                                      mov r1, r5
008176fc  0c 20 a0 e1                                      mov r2, ip
00817700  06 30 a0 e1                                      mov r3, r6
00817704  07 00 a0 e1                                      mov r0, r7
00817708  00 e0 8d e5                                      str lr, [sp]
0081770c  04 c0 8d e5                                      str ip, [sp, #4]
00817710  b7 fe ff eb                                      bl #0x8171f4
00817714  a7 ff ff ea                                      b #0x8175b8
00817718  04 30 94 e5                                      ldr r3, [r4, #4]
0081771c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00817720  0c 00 54 e1                                      cmp r4, ip
00817724  04 c0 a0 11                                      movne ip, r4
00817728  04 00 00 1a                                      bne #0x817740
0081772c  03 c0 a0 e1                                      mov ip, r3
00817730  04 30 93 e5                                      ldr r3, [r3, #4]
00817734  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00817738  0a 00 5c e1                                      cmp ip, sl
0081773c  fa ff ff 0a                                      beq #0x81772c
00817740  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00817744  0a 00 53 e1                                      cmp r3, sl
00817748  03 c0 a0 11                                      movne ip, r3
0081774c  79 ff ff ea                                      b #0x817538
00817750  04 30 94 e5                                      ldr r3, [r4, #4]
00817754  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00817758  01 00 54 e1                                      cmp r4, r1
0081775c  04 c0 a0 11                                      movne ip, r4
00817760  04 00 00 1a                                      bne #0x817778
00817764  03 c0 a0 e1                                      mov ip, r3
00817768  04 30 93 e5                                      ldr r3, [r3, #4]
0081776c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00817770  0c 00 51 e1                                      cmp r1, ip
00817774  fa ff ff 0a                                      beq #0x817764
00817778  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0081777c  01 00 53 e1                                      cmp r3, r1
00817780  03 c0 a0 11                                      movne ip, r3
00817784  ba ff ff ea                                      b #0x817674
00817788  03 20 a0 e1                                      mov r2, r3
0081778c  20 00 8d e2                                      add r0, sp, #0x20
00817790  e0 fe ff eb                                      bl #0x817318
00817794  20 30 9d e5                                      ldr r3, [sp, #0x20]
00817798  00 30 87 e5                                      str r3, [r7]
0081779c  85 ff ff ea                                      b #0x8175b8
008177a0  00 c0 a0 e3                                      mov ip, #0
008177a4  04 20 a0 e1                                      mov r2, r4
008177a8  10 10 8d e8                                      stm sp, {r4, ip}
008177ac  90 fe ff eb                                      bl #0x8171f4
008177b0  80 ff ff ea                                      b #0x8175b8
008177b4  05 10 a0 e1                                      mov r1, r5
008177b8  06 20 a0 e1                                      mov r2, r6
008177bc  18 00 8d e2                                      add r0, sp, #0x18
008177c0  d4 fe ff eb                                      bl #0x817318
008177c4  18 30 9d e5                                      ldr r3, [sp, #0x18]
008177c8  00 30 87 e5                                      str r3, [r7]
008177cc  79 ff ff ea                                      b #0x8175b8
008177d0  05 10 a0 e1                                      mov r1, r5
008177d4  04 20 a0 e1                                      mov r2, r4
008177d8  06 30 a0 e1                                      mov r3, r6
008177dc  07 00 a0 e1                                      mov r0, r7
008177e0  00 e0 8d e5                                      str lr, [sp]
008177e4  04 40 8d e5                                      str r4, [sp, #4]
008177e8  81 fe ff eb                                      bl #0x8171f4
008177ec  71 ff ff ea                                      b #0x8175b8
008177f0  00 c0 a0 e3                                      mov ip, #0
008177f4  05 10 a0 e1                                      mov r1, r5
008177f8  04 20 a0 e1                                      mov r2, r4
008177fc  06 30 a0 e1                                      mov r3, r6
00817800  07 00 a0 e1                                      mov r0, r7
00817804  00 c0 8d e5                                      str ip, [sp]
00817808  04 40 8d e5                                      str r4, [sp, #4]
0081780c  78 fe ff eb                                      bl #0x8171f4
00817810  68 ff ff ea                                      b #0x8175b8
