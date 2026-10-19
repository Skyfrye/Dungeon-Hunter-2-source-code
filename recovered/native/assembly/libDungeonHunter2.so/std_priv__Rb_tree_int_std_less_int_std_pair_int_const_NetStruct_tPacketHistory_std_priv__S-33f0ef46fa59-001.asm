; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00370f98, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN9NetStruct14tPacketHistoryEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00370f98  70 40 2d e9                                      push {r4, r5, r6, lr}
00370f9c  00 40 51 e2                                      subs r4, r1, #0
00370fa0  00 60 a0 e1                                      mov r6, r0
00370fa4  08 00 00 0a                                      beq #0x370fcc
00370fa8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00370fac  06 00 a0 e1                                      mov r0, r6
00370fb0  f8 ff ff eb                                      bl #0x370f98
00370fb4  08 50 94 e5                                      ldr r5, [r4, #8]
00370fb8  04 00 a0 e1                                      mov r0, r4
00370fbc  28 10 a0 e3                                      mov r1, #0x28
00370fc0  ce 5f 0e eb                                      bl #0x708f00
00370fc4  00 40 55 e2                                      subs r4, r5, #0
00370fc8  f6 ff ff 1a                                      bne #0x370fa8
00370fcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037717c, declared_size=232, range_size=232, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN9NetStruct14tPacketHistoryEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_copyEPNS_18_Rb_tree_node_baseESF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0037717c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00377180  01 40 a0 e1                                      mov r4, r1
00377184  02 50 a0 e1                                      mov r5, r2
00377188  00 70 a0 e1                                      mov r7, r0
0037718c  f2 ff ff eb                                      bl #0x37715c
00377190  10 20 94 e5                                      ldr r2, [r4, #0x10]
00377194  18 c0 80 e2                                      add ip, r0, #0x18
00377198  18 30 84 e2                                      add r3, r4, #0x18
0037719c  10 20 80 e5                                      str r2, [r0, #0x10]
003771a0  00 a0 a0 e1                                      mov sl, r0
003771a4  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003771a8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003771ac  00 30 a0 e3                                      mov r3, #0
003771b0  0c 30 8a e5                                      str r3, [sl, #0xc]
003771b4  08 30 8a e5                                      str r3, [sl, #8]
003771b8  00 30 d4 e5                                      ldrb r3, [r4]
003771bc  04 50 8a e5                                      str r5, [sl, #4]
003771c0  00 30 ca e5                                      strb r3, [sl]
003771c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003771c8  00 00 51 e3                                      cmp r1, #0
003771cc  03 00 00 0a                                      beq #0x3771e0
003771d0  07 00 a0 e1                                      mov r0, r7
003771d4  0a 20 a0 e1                                      mov r2, sl
003771d8  e7 ff ff eb                                      bl #0x37717c
003771dc  0c 00 8a e5                                      str r0, [sl, #0xc]
003771e0  08 50 94 e5                                      ldr r5, [r4, #8]
003771e4  00 00 55 e3                                      cmp r5, #0
003771e8  1b 00 00 0a                                      beq #0x37725c
003771ec  0a 60 a0 e1                                      mov r6, sl
003771f0  00 80 a0 e3                                      mov r8, #0
003771f4  07 00 a0 e1                                      mov r0, r7
003771f8  d7 ff ff eb                                      bl #0x37715c
003771fc  10 20 95 e5                                      ldr r2, [r5, #0x10]
00377200  18 c0 80 e2                                      add ip, r0, #0x18
00377204  18 30 85 e2                                      add r3, r5, #0x18
00377208  10 20 80 e5                                      str r2, [r0, #0x10]
0037720c  00 40 a0 e1                                      mov r4, r0
00377210  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00377214  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00377218  08 80 84 e5                                      str r8, [r4, #8]
0037721c  0c 80 84 e5                                      str r8, [r4, #0xc]
00377220  00 30 d5 e5                                      ldrb r3, [r5]
00377224  07 00 a0 e1                                      mov r0, r7
00377228  04 20 a0 e1                                      mov r2, r4
0037722c  00 30 c4 e5                                      strb r3, [r4]
00377230  08 40 86 e5                                      str r4, [r6, #8]
00377234  04 60 84 e5                                      str r6, [r4, #4]
00377238  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0037723c  04 60 a0 e1                                      mov r6, r4
00377240  00 10 53 e2                                      subs r1, r3, #0
00377244  01 00 00 0a                                      beq #0x377250
00377248  cb ff ff eb                                      bl #0x37717c
0037724c  0c 00 84 e5                                      str r0, [r4, #0xc]
00377250  08 50 95 e5                                      ldr r5, [r5, #8]
00377254  00 00 55 e3                                      cmp r5, #0
00377258  e5 ff ff 1a                                      bne #0x3771f4
0037725c  0a 00 a0 e1                                      mov r0, sl
00377260  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00377264, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN9NetStruct14tPacketHistoryEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EEC1ERKSD_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >::_Rb_tree(std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > > const&)
; decoder-mode: arm
00377264  70 40 2d e9                                      push {r4, r5, r6, lr}
00377268  00 30 a0 e3                                      mov r3, #0
0037726c  00 40 a0 e1                                      mov r4, r0
00377270  10 30 80 e5                                      str r3, [r0, #0x10]
00377274  04 30 80 e5                                      str r3, [r0, #4]
00377278  00 30 c0 e5                                      strb r3, [r0]
0037727c  08 00 84 e5                                      str r0, [r4, #8]
00377280  0c 00 84 e5                                      str r0, [r4, #0xc]
00377284  01 50 a0 e1                                      mov r5, r1
00377288  04 10 91 e5                                      ldr r1, [r1, #4]
0037728c  03 00 51 e1                                      cmp r1, r3
00377290  0d 00 00 0a                                      beq #0x3772cc
00377294  00 20 a0 e1                                      mov r2, r0
00377298  b7 ff ff eb                                      bl #0x37717c
0037729c  04 00 84 e5                                      str r0, [r4, #4]
003772a0  00 30 a0 e1                                      mov r3, r0
003772a4  03 20 a0 e1                                      mov r2, r3
003772a8  08 30 93 e5                                      ldr r3, [r3, #8]
003772ac  00 00 53 e3                                      cmp r3, #0
003772b0  fb ff ff 1a                                      bne #0x3772a4
003772b4  08 20 84 e5                                      str r2, [r4, #8]
003772b8  00 30 a0 e1                                      mov r3, r0
003772bc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003772c0  00 00 50 e3                                      cmp r0, #0
003772c4  fb ff ff 1a                                      bne #0x3772b8
003772c8  0c 30 84 e5                                      str r3, [r4, #0xc]
003772cc  10 30 95 e5                                      ldr r3, [r5, #0x10]
003772d0  04 00 a0 e1                                      mov r0, r4
003772d4  10 30 84 e5                                      str r3, [r4, #0x10]
003772d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00813310, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN9NetStruct14tPacketHistoryEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, NetStruct::tPacketHistory>, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> > >)
; decoder-mode: arm
00813310  10 40 2d e9                                      push {r4, lr}
00813314  00 40 a0 e1                                      mov r4, r0
00813318  08 20 84 e2                                      add r2, r4, #8
0081331c  00 00 91 e5                                      ldr r0, [r1]
00813320  0c 30 84 e2                                      add r3, r4, #0xc
00813324  04 10 84 e2                                      add r1, r4, #4
00813328  35 8b ec eb                                      bl #0x336004
0081332c  00 00 50 e3                                      cmp r0, #0
00813330  01 00 00 0a                                      beq #0x81333c
00813334  28 10 a0 e3                                      mov r1, #0x28
00813338  fe ab 02 eb                                      bl #0x8be338
0081333c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00813340  01 30 43 e2                                      sub r3, r3, #1
00813344  10 30 84 e5                                      str r3, [r4, #0x10]
00813348  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081413c, declared_size=316, range_size=316, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN9NetStruct14tPacketHistoryEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, NetStruct::tPacketHistory> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0081413c  02 00 51 e1                                      cmp r1, r2
00814140  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00814144  01 40 a0 e1                                      mov r4, r1
00814148  02 60 a0 e1                                      mov r6, r2
0081414c  00 70 a0 e1                                      mov r7, r0
00814150  03 50 a0 e1                                      mov r5, r3
00814154  32 00 00 0a                                      beq #0x814224
00814158  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0081415c  00 00 53 e3                                      cmp r3, #0
00814160  19 00 00 0a                                      beq #0x8141cc
00814164  04 00 a0 e1                                      mov r0, r4
00814168  2d fe ff eb                                      bl #0x813a24
0081416c  05 30 a0 e1                                      mov r3, r5
00814170  08 20 93 e4                                      ldr r2, [r3], #8
00814174  18 c0 80 e2                                      add ip, r0, #0x18
00814178  00 50 a0 e1                                      mov r5, r0
0081417c  10 20 80 e5                                      str r2, [r0, #0x10]
00814180  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00814184  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00814188  00 30 a0 e3                                      mov r3, #0
0081418c  0c 30 85 e5                                      str r3, [r5, #0xc]
00814190  08 30 85 e5                                      str r3, [r5, #8]
00814194  0c 50 86 e5                                      str r5, [r6, #0xc]
00814198  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081419c  03 00 56 e1                                      cmp r6, r3
008141a0  1d 00 00 0a                                      beq #0x81421c
008141a4  05 00 a0 e1                                      mov r0, r5
008141a8  04 60 85 e5                                      str r6, [r5, #4]
008141ac  04 10 84 e2                                      add r1, r4, #4
008141b0  6a fd eb eb                                      bl #0x313760
008141b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
008141b8  07 00 a0 e1                                      mov r0, r7
008141bc  01 30 83 e2                                      add r3, r3, #1
008141c0  10 30 84 e5                                      str r3, [r4, #0x10]
008141c4  00 50 87 e5                                      str r5, [r7]
008141c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008141cc  18 30 9d e5                                      ldr r3, [sp, #0x18]
008141d0  00 00 53 e3                                      cmp r3, #0
008141d4  22 00 00 0a                                      beq #0x814264
008141d8  04 00 a0 e1                                      mov r0, r4
008141dc  10 fe ff eb                                      bl #0x813a24
008141e0  05 30 a0 e1                                      mov r3, r5
008141e4  08 20 93 e4                                      ldr r2, [r3], #8
008141e8  18 c0 80 e2                                      add ip, r0, #0x18
008141ec  00 50 a0 e1                                      mov r5, r0
008141f0  10 20 80 e5                                      str r2, [r0, #0x10]
008141f4  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
008141f8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
008141fc  00 30 a0 e3                                      mov r3, #0
00814200  0c 30 85 e5                                      str r3, [r5, #0xc]
00814204  08 30 85 e5                                      str r3, [r5, #8]
00814208  08 50 86 e5                                      str r5, [r6, #8]
0081420c  08 30 94 e5                                      ldr r3, [r4, #8]
00814210  03 00 56 e1                                      cmp r6, r3
00814214  08 50 84 05                                      streq r5, [r4, #8]
00814218  e1 ff ff ea                                      b #0x8141a4
0081421c  0c 50 84 e5                                      str r5, [r4, #0xc]
00814220  df ff ff ea                                      b #0x8141a4
00814224  01 00 a0 e1                                      mov r0, r1
00814228  fd fd ff eb                                      bl #0x813a24
0081422c  05 30 a0 e1                                      mov r3, r5
00814230  08 20 93 e4                                      ldr r2, [r3], #8
00814234  00 50 a0 e1                                      mov r5, r0
00814238  00 e0 a0 e3                                      mov lr, #0
0081423c  10 20 80 e5                                      str r2, [r0, #0x10]
00814240  18 c0 80 e2                                      add ip, r0, #0x18
00814244  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00814248  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0081424c  0c e0 85 e5                                      str lr, [r5, #0xc]
00814250  08 e0 85 e5                                      str lr, [r5, #8]
00814254  08 50 84 e5                                      str r5, [r4, #8]
00814258  04 50 84 e5                                      str r5, [r4, #4]
0081425c  0c 50 84 e5                                      str r5, [r4, #0xc]
00814260  cf ff ff ea                                      b #0x8141a4
00814264  00 20 95 e5                                      ldr r2, [r5]
00814268  10 30 96 e5                                      ldr r3, [r6, #0x10]
0081426c  03 00 52 e1                                      cmp r2, r3
00814270  bb ff ff aa                                      bge #0x814164
00814274  d7 ff ff ea                                      b #0x8141d8

; FUNCTION 0x00814278, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN9NetStruct14tPacketHistoryEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >::insert_unique(std::pair<int const, NetStruct::tPacketHistory> const&)
; decoder-mode: arm
00814278  70 40 2d e9                                      push {r4, r5, r6, lr}
0081427c  04 c0 91 e5                                      ldr ip, [r1, #4]
00814280  10 d0 4d e2                                      sub sp, sp, #0x10
00814284  00 40 a0 e1                                      mov r4, r0
00814288  00 00 5c e3                                      cmp ip, #0
0081428c  02 30 a0 e1                                      mov r3, r2
00814290  01 c0 a0 01                                      moveq ip, r1
00814294  15 00 00 0a                                      beq #0x8142f0
00814298  00 60 92 e5                                      ldr r6, [r2]
0081429c  00 00 00 ea                                      b #0x8142a4
008142a0  02 c0 a0 e1                                      mov ip, r2
008142a4  10 00 9c e5                                      ldr r0, [ip, #0x10]
008142a8  01 50 a0 e3                                      mov r5, #1
008142ac  06 00 50 e1                                      cmp r0, r6
008142b0  08 20 9c c5                                      ldrgt r2, [ip, #8]
008142b4  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
008142b8  00 50 a0 d3                                      movle r5, #0
008142bc  00 00 52 e3                                      cmp r2, #0
008142c0  f6 ff ff 1a                                      bne #0x8142a0
008142c4  00 00 55 e3                                      cmp r5, #0
008142c8  0c 50 a0 01                                      moveq r5, ip
008142cc  07 00 00 1a                                      bne #0x8142f0
008142d0  00 00 56 e1                                      cmp r6, r0
008142d4  00 30 a0 d3                                      movle r3, #0
008142d8  00 50 84 d5                                      strle r5, [r4]
008142dc  04 30 c4 d5                                      strble r3, [r4, #4]
008142e0  1c 00 00 ca                                      bgt #0x814358
008142e4  04 00 a0 e1                                      mov r0, r4
008142e8  10 d0 8d e2                                      add sp, sp, #0x10
008142ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
008142f0  08 20 91 e5                                      ldr r2, [r1, #8]
008142f4  02 00 5c e1                                      cmp ip, r2
008142f8  36 00 00 0a                                      beq #0x8143d8
008142fc  00 20 dc e5                                      ldrb r2, [ip]
00814300  00 00 52 e3                                      cmp r2, #0
00814304  03 00 00 1a                                      bne #0x814318
00814308  04 20 9c e5                                      ldr r2, [ip, #4]
0081430c  04 20 92 e5                                      ldr r2, [r2, #4]
00814310  02 00 5c e1                                      cmp ip, r2
00814314  2a 00 00 0a                                      beq #0x8143c4
00814318  08 00 9c e5                                      ldr r0, [ip, #8]
0081431c  00 00 50 e3                                      cmp r0, #0
00814320  01 00 00 1a                                      bne #0x81432c
00814324  16 00 00 ea                                      b #0x814384
00814328  02 00 a0 e1                                      mov r0, r2
0081432c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00814330  00 00 52 e3                                      cmp r2, #0
00814334  fb ff ff 1a                                      bne #0x814328
00814338  00 60 93 e5                                      ldr r6, [r3]
0081433c  00 50 a0 e1                                      mov r5, r0
00814340  10 00 90 e5                                      ldr r0, [r0, #0x10]
00814344  00 00 56 e1                                      cmp r6, r0
00814348  00 30 a0 d3                                      movle r3, #0
0081434c  00 50 84 d5                                      strle r5, [r4]
00814350  04 30 c4 d5                                      strble r3, [r4, #4]
00814354  e2 ff ff da                                      ble #0x8142e4
00814358  0c 20 a0 e1                                      mov r2, ip
0081435c  08 00 8d e2                                      add r0, sp, #8
00814360  00 c0 a0 e3                                      mov ip, #0
00814364  04 c0 8d e5                                      str ip, [sp, #4]
00814368  00 c0 8d e5                                      str ip, [sp]
0081436c  72 ff ff eb                                      bl #0x81413c
00814370  08 30 9d e5                                      ldr r3, [sp, #8]
00814374  01 20 a0 e3                                      mov r2, #1
00814378  04 20 c4 e5                                      strb r2, [r4, #4]
0081437c  00 30 84 e5                                      str r3, [r4]
00814380  d7 ff ff ea                                      b #0x8142e4
00814384  04 20 9c e5                                      ldr r2, [ip, #4]
00814388  08 00 92 e5                                      ldr r0, [r2, #8]
0081438c  00 00 5c e1                                      cmp ip, r0
00814390  02 50 a0 11                                      movne r5, r2
00814394  00 60 93 15                                      ldrne r6, [r3]
00814398  10 00 92 15                                      ldrne r0, [r2, #0x10]
0081439c  01 00 00 0a                                      beq #0x8143a8
008143a0  ca ff ff ea                                      b #0x8142d0
008143a4  05 20 a0 e1                                      mov r2, r5
008143a8  04 50 92 e5                                      ldr r5, [r2, #4]
008143ac  08 00 95 e5                                      ldr r0, [r5, #8]
008143b0  02 00 50 e1                                      cmp r0, r2
008143b4  fa ff ff 0a                                      beq #0x8143a4
008143b8  00 60 93 e5                                      ldr r6, [r3]
008143bc  10 00 95 e5                                      ldr r0, [r5, #0x10]
008143c0  c2 ff ff ea                                      b #0x8142d0
008143c4  0c 20 9c e5                                      ldr r2, [ip, #0xc]
008143c8  00 60 93 e5                                      ldr r6, [r3]
008143cc  02 50 a0 e1                                      mov r5, r2
008143d0  10 00 92 e5                                      ldr r0, [r2, #0x10]
008143d4  bd ff ff ea                                      b #0x8142d0
008143d8  0c 20 a0 e1                                      mov r2, ip
008143dc  00 e0 a0 e3                                      mov lr, #0
008143e0  0c 00 8d e2                                      add r0, sp, #0xc
008143e4  00 50 8d e8                                      stm sp, {ip, lr}
008143e8  53 ff ff eb                                      bl #0x81413c
008143ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008143f0  01 20 a0 e3                                      mov r2, #1
008143f4  04 20 c4 e5                                      strb r2, [r4, #4]
008143f8  00 30 84 e5                                      str r3, [r4]
008143fc  b8 ff ff ea                                      b #0x8142e4

; FUNCTION 0x00814400, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKiN9NetStruct14tPacketHistoryEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, NetStruct::tPacketHistory>, std::priv::_Select1st<std::pair<int const, NetStruct::tPacketHistory> >, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> >, std::allocator<std::pair<int const, NetStruct::tPacketHistory> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, NetStruct::tPacketHistory>, std::priv::_MapTraitsT<std::pair<int const, NetStruct::tPacketHistory> > >, std::pair<int const, NetStruct::tPacketHistory> const&)
; decoder-mode: arm
00814400  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00814404  00 40 92 e5                                      ldr r4, [r2]
00814408  08 20 91 e5                                      ldr r2, [r1, #8]
0081440c  2c d0 4d e2                                      sub sp, sp, #0x2c
00814410  01 50 a0 e1                                      mov r5, r1
00814414  02 00 54 e1                                      cmp r4, r2
00814418  00 70 a0 e1                                      mov r7, r0
0081441c  03 60 a0 e1                                      mov r6, r3
00814420  5a 00 00 0a                                      beq #0x814590
00814424  01 00 54 e1                                      cmp r4, r1
00814428  78 00 00 0a                                      beq #0x814610
0081442c  00 30 d4 e5                                      ldrb r3, [r4]
00814430  00 00 53 e3                                      cmp r3, #0
00814434  3a 00 00 0a                                      beq #0x814524
00814438  08 c0 94 e5                                      ldr ip, [r4, #8]
0081443c  00 00 5c e3                                      cmp ip, #0
00814440  01 00 00 1a                                      bne #0x81444c
00814444  3e 00 00 ea                                      b #0x814544
00814448  03 c0 a0 e1                                      mov ip, r3
0081444c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00814450  00 00 53 e3                                      cmp r3, #0
00814454  fb ff ff 1a                                      bne #0x814448
00814458  00 20 96 e5                                      ldr r2, [r6]
0081445c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00814460  00 00 52 e1                                      cmp r2, r0
00814464  00 10 a0 a3                                      movge r1, #0
00814468  01 10 a0 b3                                      movlt r1, #1
0081446c  00 00 51 e3                                      cmp r1, #0
00814470  1b 00 00 1a                                      bne #0x8144e4
00814474  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00814478  00 00 58 e3                                      cmp r8, #0
0081447c  7d 00 00 0a                                      beq #0x814678
00814480  08 c0 a0 e1                                      mov ip, r8
00814484  00 00 00 ea                                      b #0x81448c
00814488  03 c0 a0 e1                                      mov ip, r3
0081448c  08 30 9c e5                                      ldr r3, [ip, #8]
00814490  00 00 53 e3                                      cmp r3, #0
00814494  fb ff ff 1a                                      bne #0x814488
00814498  00 00 51 e3                                      cmp r1, #0
0081449c  34 00 00 1a                                      bne #0x814574
008144a0  00 00 52 e1                                      cmp r2, r0
008144a4  63 00 00 da                                      ble #0x814638
008144a8  0c 00 55 e1                                      cmp r5, ip
008144ac  02 00 00 0a                                      beq #0x8144bc
008144b0  10 30 9c e5                                      ldr r3, [ip, #0x10]
008144b4  03 00 52 e1                                      cmp r2, r3
008144b8  2d 00 00 aa                                      bge #0x814574
008144bc  00 00 58 e3                                      cmp r8, #0
008144c0  4a 00 00 1a                                      bne #0x8145f0
008144c4  05 10 a0 e1                                      mov r1, r5
008144c8  04 20 a0 e1                                      mov r2, r4
008144cc  06 30 a0 e1                                      mov r3, r6
008144d0  07 00 a0 e1                                      mov r0, r7
008144d4  00 80 8d e5                                      str r8, [sp]
008144d8  04 40 8d e5                                      str r4, [sp, #4]
008144dc  16 ff ff eb                                      bl #0x81413c
008144e0  0c 00 00 ea                                      b #0x814518
008144e4  10 30 9c e5                                      ldr r3, [ip, #0x10]
008144e8  03 00 52 e1                                      cmp r2, r3
008144ec  e0 ff ff da                                      ble #0x814474
008144f0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
008144f4  00 00 5e e3                                      cmp lr, #0
008144f8  56 00 00 0a                                      beq #0x814658
008144fc  00 c0 a0 e3                                      mov ip, #0
00814500  05 10 a0 e1                                      mov r1, r5
00814504  04 20 a0 e1                                      mov r2, r4
00814508  06 30 a0 e1                                      mov r3, r6
0081450c  07 00 a0 e1                                      mov r0, r7
00814510  10 10 8d e8                                      stm sp, {r4, ip}
00814514  08 ff ff eb                                      bl #0x81413c
00814518  07 00 a0 e1                                      mov r0, r7
0081451c  2c d0 8d e2                                      add sp, sp, #0x2c
00814520  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00814524  04 30 94 e5                                      ldr r3, [r4, #4]
00814528  04 30 93 e5                                      ldr r3, [r3, #4]
0081452c  03 00 54 e1                                      cmp r4, r3
00814530  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00814534  c7 ff ff 0a                                      beq #0x814458
00814538  08 c0 94 e5                                      ldr ip, [r4, #8]
0081453c  00 00 5c e3                                      cmp ip, #0
00814540  c1 ff ff 1a                                      bne #0x81444c
00814544  04 c0 94 e5                                      ldr ip, [r4, #4]
00814548  08 30 9c e5                                      ldr r3, [ip, #8]
0081454c  03 00 54 e1                                      cmp r4, r3
00814550  01 00 00 0a                                      beq #0x81455c
00814554  bf ff ff ea                                      b #0x814458
00814558  03 c0 a0 e1                                      mov ip, r3
0081455c  04 30 9c e5                                      ldr r3, [ip, #4]
00814560  08 20 93 e5                                      ldr r2, [r3, #8]
00814564  0c 00 52 e1                                      cmp r2, ip
00814568  fa ff ff 0a                                      beq #0x814558
0081456c  03 c0 a0 e1                                      mov ip, r3
00814570  b8 ff ff ea                                      b #0x814458
00814574  05 10 a0 e1                                      mov r1, r5
00814578  06 20 a0 e1                                      mov r2, r6
0081457c  08 00 8d e2                                      add r0, sp, #8
00814580  3c ff ff eb                                      bl #0x814278
00814584  08 30 9d e5                                      ldr r3, [sp, #8]
00814588  00 30 87 e5                                      str r3, [r7]
0081458c  e1 ff ff ea                                      b #0x814518
00814590  10 20 91 e5                                      ldr r2, [r1, #0x10]
00814594  00 00 52 e3                                      cmp r2, #0
00814598  52 00 00 0a                                      beq #0x8146e8
0081459c  00 20 93 e5                                      ldr r2, [r3]
008145a0  10 c0 94 e5                                      ldr ip, [r4, #0x10]
008145a4  0c 00 52 e1                                      cmp r2, ip
008145a8  54 00 00 ba                                      blt #0x814700
008145ac  21 00 00 da                                      ble #0x814638
008145b0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
008145b4  00 00 5e e3                                      cmp lr, #0
008145b8  3c 00 00 0a                                      beq #0x8146b0
008145bc  0e c0 a0 e1                                      mov ip, lr
008145c0  00 00 00 ea                                      b #0x8145c8
008145c4  03 c0 a0 e1                                      mov ip, r3
008145c8  08 30 9c e5                                      ldr r3, [ip, #8]
008145cc  00 00 53 e3                                      cmp r3, #0
008145d0  fb ff ff 1a                                      bne #0x8145c4
008145d4  0c 00 55 e1                                      cmp r5, ip
008145d8  5c 00 00 0a                                      beq #0x814750
008145dc  10 30 9c e5                                      ldr r3, [ip, #0x10]
008145e0  03 00 52 e1                                      cmp r2, r3
008145e4  4a 00 00 aa                                      bge #0x814714
008145e8  00 00 5e e3                                      cmp lr, #0
008145ec  4f 00 00 0a                                      beq #0x814730
008145f0  00 e0 a0 e3                                      mov lr, #0
008145f4  05 10 a0 e1                                      mov r1, r5
008145f8  0c 20 a0 e1                                      mov r2, ip
008145fc  06 30 a0 e1                                      mov r3, r6
00814600  07 00 a0 e1                                      mov r0, r7
00814604  00 50 8d e8                                      stm sp, {ip, lr}
00814608  cb fe ff eb                                      bl #0x81413c
0081460c  c1 ff ff ea                                      b #0x814518
00814610  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00814614  00 c0 93 e5                                      ldr ip, [r3]
00814618  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0081461c  0c 00 5e e1                                      cmp lr, ip
00814620  06 00 00 aa                                      bge #0x814640
00814624  00 c0 a0 e3                                      mov ip, #0
00814628  00 c0 8d e5                                      str ip, [sp]
0081462c  04 40 8d e5                                      str r4, [sp, #4]
00814630  c1 fe ff eb                                      bl #0x81413c
00814634  b7 ff ff ea                                      b #0x814518
00814638  00 40 87 e5                                      str r4, [r7]
0081463c  b5 ff ff ea                                      b #0x814518
00814640  03 20 a0 e1                                      mov r2, r3
00814644  10 00 8d e2                                      add r0, sp, #0x10
00814648  0a ff ff eb                                      bl #0x814278
0081464c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00814650  00 30 87 e5                                      str r3, [r7]
00814654  af ff ff ea                                      b #0x814518
00814658  05 10 a0 e1                                      mov r1, r5
0081465c  0c 20 a0 e1                                      mov r2, ip
00814660  06 30 a0 e1                                      mov r3, r6
00814664  07 00 a0 e1                                      mov r0, r7
00814668  00 e0 8d e5                                      str lr, [sp]
0081466c  04 c0 8d e5                                      str ip, [sp, #4]
00814670  b1 fe ff eb                                      bl #0x81413c
00814674  a7 ff ff ea                                      b #0x814518
00814678  04 30 94 e5                                      ldr r3, [r4, #4]
0081467c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00814680  0c 00 54 e1                                      cmp r4, ip
00814684  04 c0 a0 11                                      movne ip, r4
00814688  04 00 00 1a                                      bne #0x8146a0
0081468c  03 c0 a0 e1                                      mov ip, r3
00814690  04 30 93 e5                                      ldr r3, [r3, #4]
00814694  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00814698  0a 00 5c e1                                      cmp ip, sl
0081469c  fa ff ff 0a                                      beq #0x81468c
008146a0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
008146a4  0a 00 53 e1                                      cmp r3, sl
008146a8  03 c0 a0 11                                      movne ip, r3
008146ac  79 ff ff ea                                      b #0x814498
008146b0  04 30 94 e5                                      ldr r3, [r4, #4]
008146b4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
008146b8  01 00 54 e1                                      cmp r4, r1
008146bc  04 c0 a0 11                                      movne ip, r4
008146c0  04 00 00 1a                                      bne #0x8146d8
008146c4  03 c0 a0 e1                                      mov ip, r3
008146c8  04 30 93 e5                                      ldr r3, [r3, #4]
008146cc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
008146d0  0c 00 51 e1                                      cmp r1, ip
008146d4  fa ff ff 0a                                      beq #0x8146c4
008146d8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
008146dc  01 00 53 e1                                      cmp r3, r1
008146e0  03 c0 a0 11                                      movne ip, r3
008146e4  ba ff ff ea                                      b #0x8145d4
008146e8  03 20 a0 e1                                      mov r2, r3
008146ec  20 00 8d e2                                      add r0, sp, #0x20
008146f0  e0 fe ff eb                                      bl #0x814278
008146f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
008146f8  00 30 87 e5                                      str r3, [r7]
008146fc  85 ff ff ea                                      b #0x814518
00814700  00 c0 a0 e3                                      mov ip, #0
00814704  04 20 a0 e1                                      mov r2, r4
00814708  10 10 8d e8                                      stm sp, {r4, ip}
0081470c  8a fe ff eb                                      bl #0x81413c
00814710  80 ff ff ea                                      b #0x814518
00814714  05 10 a0 e1                                      mov r1, r5
00814718  06 20 a0 e1                                      mov r2, r6
0081471c  18 00 8d e2                                      add r0, sp, #0x18
00814720  d4 fe ff eb                                      bl #0x814278
00814724  18 30 9d e5                                      ldr r3, [sp, #0x18]
00814728  00 30 87 e5                                      str r3, [r7]
0081472c  79 ff ff ea                                      b #0x814518
00814730  05 10 a0 e1                                      mov r1, r5
00814734  04 20 a0 e1                                      mov r2, r4
00814738  06 30 a0 e1                                      mov r3, r6
0081473c  07 00 a0 e1                                      mov r0, r7
00814740  00 e0 8d e5                                      str lr, [sp]
00814744  04 40 8d e5                                      str r4, [sp, #4]
00814748  7b fe ff eb                                      bl #0x81413c
0081474c  71 ff ff ea                                      b #0x814518
00814750  00 c0 a0 e3                                      mov ip, #0
00814754  05 10 a0 e1                                      mov r1, r5
00814758  04 20 a0 e1                                      mov r2, r4
0081475c  06 30 a0 e1                                      mov r3, r6
00814760  07 00 a0 e1                                      mov r0, r7
00814764  00 c0 8d e5                                      str ip, [sp]
00814768  04 40 8d e5                                      str r4, [sp, #4]
0081476c  72 fe ff eb                                      bl #0x81413c
00814770  68 ff ff ea                                      b #0x814518
