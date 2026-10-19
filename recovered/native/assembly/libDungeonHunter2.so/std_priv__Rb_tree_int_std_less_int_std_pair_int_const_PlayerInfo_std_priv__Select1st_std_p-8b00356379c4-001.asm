; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00371428, declared_size=72, range_size=72, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi10PlayerInfoENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE5eraseENS_17_Rb_tree_iteratorIS6_SA_EE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >::erase(std::priv::_Rb_tree_iterator<std::pair<int const, PlayerInfo>, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> > >)
; decoder-mode: arm
00371428  70 40 2d e9                                      push {r4, r5, r6, lr}
0037142c  00 40 a0 e1                                      mov r4, r0
00371430  08 20 84 e2                                      add r2, r4, #8
00371434  00 00 91 e5                                      ldr r0, [r1]
00371438  0c 30 84 e2                                      add r3, r4, #0xc
0037143c  04 10 84 e2                                      add r1, r4, #4
00371440  ef 12 ff eb                                      bl #0x336004
00371444  00 50 a0 e1                                      mov r5, r0
00371448  18 00 80 e2                                      add r0, r0, #0x18
0037144c  90 ff ff eb                                      bl #0x371294
00371450  00 00 55 e3                                      cmp r5, #0
00371454  01 00 00 0a                                      beq #0x371460
00371458  05 00 a0 e1                                      mov r0, r5
0037145c  f7 7b fe eb                                      bl #0x310440
00371460  10 30 94 e5                                      ldr r3, [r4, #0x10]
00371464  01 30 43 e2                                      sub r3, r3, #1
00371468  10 30 84 e5                                      str r3, [r4, #0x10]
0037146c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00371470, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi10PlayerInfoENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00371470  70 40 2d e9                                      push {r4, r5, r6, lr}
00371474  00 40 51 e2                                      subs r4, r1, #0
00371478  00 50 a0 e1                                      mov r5, r0
0037147c  09 00 00 0a                                      beq #0x3714a8
00371480  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00371484  05 00 a0 e1                                      mov r0, r5
00371488  f8 ff ff eb                                      bl #0x371470
0037148c  08 60 94 e5                                      ldr r6, [r4, #8]
00371490  18 00 84 e2                                      add r0, r4, #0x18
00371494  7e ff ff eb                                      bl #0x371294
00371498  04 00 a0 e1                                      mov r0, r4
0037149c  e7 7b fe eb                                      bl #0x310440
003714a0  00 40 56 e2                                      subs r4, r6, #0
003714a4  f5 ff ff 1a                                      bne #0x371480
003714a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00377f34, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi10PlayerInfoENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE14_M_create_nodeERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >::_M_create_node(std::pair<int const, PlayerInfo> const&)
; decoder-mode: arm
00377f34  70 40 2d e9                                      push {r4, r5, r6, lr}
00377f38  6a 0e a0 e3                                      mov r0, #0x6a0
00377f3c  01 50 a0 e1                                      mov r5, r1
00377f40  43 61 fe eb                                      bl #0x310454
00377f44  05 10 a0 e1                                      mov r1, r5
00377f48  08 30 91 e4                                      ldr r3, [r1], #8
00377f4c  00 40 a0 e1                                      mov r4, r0
00377f50  18 00 80 e2                                      add r0, r0, #0x18
00377f54  10 30 84 e5                                      str r3, [r4, #0x10]
00377f58  1c fe ff eb                                      bl #0x3777d0
00377f5c  00 30 a0 e3                                      mov r3, #0
00377f60  0c 30 84 e5                                      str r3, [r4, #0xc]
00377f64  08 30 84 e5                                      str r3, [r4, #8]
00377f68  04 00 a0 e1                                      mov r0, r4
00377f6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00377f70, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi10PlayerInfoENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS6_SE_SE_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, PlayerInfo> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00377f70  02 00 51 e1                                      cmp r1, r2
00377f74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00377f78  01 40 a0 e1                                      mov r4, r1
00377f7c  02 50 a0 e1                                      mov r5, r2
00377f80  00 60 a0 e1                                      mov r6, r0
00377f84  22 00 00 0a                                      beq #0x378014
00377f88  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00377f8c  00 00 52 e3                                      cmp r2, #0
00377f90  11 00 00 0a                                      beq #0x377fdc
00377f94  03 10 a0 e1                                      mov r1, r3
00377f98  04 00 a0 e1                                      mov r0, r4
00377f9c  e4 ff ff eb                                      bl #0x377f34
00377fa0  0c 00 85 e5                                      str r0, [r5, #0xc]
00377fa4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00377fa8  00 70 a0 e1                                      mov r7, r0
00377fac  03 00 55 e1                                      cmp r5, r3
00377fb0  15 00 00 0a                                      beq #0x37800c
00377fb4  07 00 a0 e1                                      mov r0, r7
00377fb8  04 50 87 e5                                      str r5, [r7, #4]
00377fbc  04 10 84 e2                                      add r1, r4, #4
00377fc0  e6 6d fe eb                                      bl #0x313760
00377fc4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00377fc8  06 00 a0 e1                                      mov r0, r6
00377fcc  01 30 83 e2                                      add r3, r3, #1
00377fd0  10 30 84 e5                                      str r3, [r4, #0x10]
00377fd4  00 70 86 e5                                      str r7, [r6]
00377fd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00377fdc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00377fe0  00 00 52 e3                                      cmp r2, #0
00377fe4  12 00 00 0a                                      beq #0x378034
00377fe8  03 10 a0 e1                                      mov r1, r3
00377fec  04 00 a0 e1                                      mov r0, r4
00377ff0  cf ff ff eb                                      bl #0x377f34
00377ff4  08 00 85 e5                                      str r0, [r5, #8]
00377ff8  08 30 94 e5                                      ldr r3, [r4, #8]
00377ffc  00 70 a0 e1                                      mov r7, r0
00378000  03 00 55 e1                                      cmp r5, r3
00378004  08 00 84 05                                      streq r0, [r4, #8]
00378008  e9 ff ff ea                                      b #0x377fb4
0037800c  0c 70 84 e5                                      str r7, [r4, #0xc]
00378010  e7 ff ff ea                                      b #0x377fb4
00378014  03 10 a0 e1                                      mov r1, r3
00378018  04 00 a0 e1                                      mov r0, r4
0037801c  c4 ff ff eb                                      bl #0x377f34
00378020  00 70 a0 e1                                      mov r7, r0
00378024  08 00 84 e5                                      str r0, [r4, #8]
00378028  04 00 84 e5                                      str r0, [r4, #4]
0037802c  0c 00 84 e5                                      str r0, [r4, #0xc]
00378030  df ff ff ea                                      b #0x377fb4
00378034  00 10 93 e5                                      ldr r1, [r3]
00378038  10 20 95 e5                                      ldr r2, [r5, #0x10]
0037803c  02 00 51 e1                                      cmp r1, r2
00378040  d3 ff ff aa                                      bge #0x377f94
00378044  e7 ff ff ea                                      b #0x377fe8

; FUNCTION 0x00378048, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi10PlayerInfoENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >::insert_unique(std::pair<int const, PlayerInfo> const&)
; decoder-mode: arm
00378048  70 40 2d e9                                      push {r4, r5, r6, lr}
0037804c  04 c0 91 e5                                      ldr ip, [r1, #4]
00378050  10 d0 4d e2                                      sub sp, sp, #0x10
00378054  00 40 a0 e1                                      mov r4, r0
00378058  00 00 5c e3                                      cmp ip, #0
0037805c  02 30 a0 e1                                      mov r3, r2
00378060  01 c0 a0 01                                      moveq ip, r1
00378064  15 00 00 0a                                      beq #0x3780c0
00378068  00 60 92 e5                                      ldr r6, [r2]
0037806c  00 00 00 ea                                      b #0x378074
00378070  02 c0 a0 e1                                      mov ip, r2
00378074  10 00 9c e5                                      ldr r0, [ip, #0x10]
00378078  01 50 a0 e3                                      mov r5, #1
0037807c  06 00 50 e1                                      cmp r0, r6
00378080  08 20 9c c5                                      ldrgt r2, [ip, #8]
00378084  0c 20 9c d5                                      ldrle r2, [ip, #0xc]
00378088  00 50 a0 d3                                      movle r5, #0
0037808c  00 00 52 e3                                      cmp r2, #0
00378090  f6 ff ff 1a                                      bne #0x378070
00378094  00 00 55 e3                                      cmp r5, #0
00378098  0c 50 a0 01                                      moveq r5, ip
0037809c  07 00 00 1a                                      bne #0x3780c0
003780a0  00 00 56 e1                                      cmp r6, r0
003780a4  00 30 a0 d3                                      movle r3, #0
003780a8  00 50 84 d5                                      strle r5, [r4]
003780ac  04 30 c4 d5                                      strble r3, [r4, #4]
003780b0  1c 00 00 ca                                      bgt #0x378128
003780b4  04 00 a0 e1                                      mov r0, r4
003780b8  10 d0 8d e2                                      add sp, sp, #0x10
003780bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003780c0  08 20 91 e5                                      ldr r2, [r1, #8]
003780c4  02 00 5c e1                                      cmp ip, r2
003780c8  36 00 00 0a                                      beq #0x3781a8
003780cc  00 20 dc e5                                      ldrb r2, [ip]
003780d0  00 00 52 e3                                      cmp r2, #0
003780d4  03 00 00 1a                                      bne #0x3780e8
003780d8  04 20 9c e5                                      ldr r2, [ip, #4]
003780dc  04 20 92 e5                                      ldr r2, [r2, #4]
003780e0  02 00 5c e1                                      cmp ip, r2
003780e4  2a 00 00 0a                                      beq #0x378194
003780e8  08 00 9c e5                                      ldr r0, [ip, #8]
003780ec  00 00 50 e3                                      cmp r0, #0
003780f0  01 00 00 1a                                      bne #0x3780fc
003780f4  16 00 00 ea                                      b #0x378154
003780f8  02 00 a0 e1                                      mov r0, r2
003780fc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00378100  00 00 52 e3                                      cmp r2, #0
00378104  fb ff ff 1a                                      bne #0x3780f8
00378108  00 60 93 e5                                      ldr r6, [r3]
0037810c  00 50 a0 e1                                      mov r5, r0
00378110  10 00 90 e5                                      ldr r0, [r0, #0x10]
00378114  00 00 56 e1                                      cmp r6, r0
00378118  00 30 a0 d3                                      movle r3, #0
0037811c  00 50 84 d5                                      strle r5, [r4]
00378120  04 30 c4 d5                                      strble r3, [r4, #4]
00378124  e2 ff ff da                                      ble #0x3780b4
00378128  0c 20 a0 e1                                      mov r2, ip
0037812c  08 00 8d e2                                      add r0, sp, #8
00378130  00 c0 a0 e3                                      mov ip, #0
00378134  04 c0 8d e5                                      str ip, [sp, #4]
00378138  00 c0 8d e5                                      str ip, [sp]
0037813c  8b ff ff eb                                      bl #0x377f70
00378140  08 30 9d e5                                      ldr r3, [sp, #8]
00378144  01 20 a0 e3                                      mov r2, #1
00378148  04 20 c4 e5                                      strb r2, [r4, #4]
0037814c  00 30 84 e5                                      str r3, [r4]
00378150  d7 ff ff ea                                      b #0x3780b4
00378154  04 20 9c e5                                      ldr r2, [ip, #4]
00378158  08 00 92 e5                                      ldr r0, [r2, #8]
0037815c  00 00 5c e1                                      cmp ip, r0
00378160  02 50 a0 11                                      movne r5, r2
00378164  00 60 93 15                                      ldrne r6, [r3]
00378168  10 00 92 15                                      ldrne r0, [r2, #0x10]
0037816c  01 00 00 0a                                      beq #0x378178
00378170  ca ff ff ea                                      b #0x3780a0
00378174  05 20 a0 e1                                      mov r2, r5
00378178  04 50 92 e5                                      ldr r5, [r2, #4]
0037817c  08 00 95 e5                                      ldr r0, [r5, #8]
00378180  02 00 50 e1                                      cmp r0, r2
00378184  fa ff ff 0a                                      beq #0x378174
00378188  00 60 93 e5                                      ldr r6, [r3]
0037818c  10 00 95 e5                                      ldr r0, [r5, #0x10]
00378190  c2 ff ff ea                                      b #0x3780a0
00378194  0c 20 9c e5                                      ldr r2, [ip, #0xc]
00378198  00 60 93 e5                                      ldr r6, [r3]
0037819c  02 50 a0 e1                                      mov r5, r2
003781a0  10 00 92 e5                                      ldr r0, [r2, #0x10]
003781a4  bd ff ff ea                                      b #0x3780a0
003781a8  0c 20 a0 e1                                      mov r2, ip
003781ac  00 e0 a0 e3                                      mov lr, #0
003781b0  0c 00 8d e2                                      add r0, sp, #0xc
003781b4  00 50 8d e8                                      stm sp, {ip, lr}
003781b8  6c ff ff eb                                      bl #0x377f70
003781bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003781c0  01 20 a0 e3                                      mov r2, #1
003781c4  04 20 c4 e5                                      strb r2, [r4, #4]
003781c8  00 30 84 e5                                      str r3, [r4]
003781cc  b8 ff ff ea                                      b #0x3780b4

; FUNCTION 0x003781d0, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKi10PlayerInfoENS_10_Select1stIS6_EENS_11_MapTraitsTIS6_EESaIS6_EE13insert_uniqueENS_17_Rb_tree_iteratorIS6_SA_EERKS6_
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, PlayerInfo>, std::priv::_Select1st<std::pair<int const, PlayerInfo> >, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> >, std::allocator<std::pair<int const, PlayerInfo> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const, PlayerInfo>, std::priv::_MapTraitsT<std::pair<int const, PlayerInfo> > >, std::pair<int const, PlayerInfo> const&)
; decoder-mode: arm
003781d0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003781d4  00 40 92 e5                                      ldr r4, [r2]
003781d8  08 20 91 e5                                      ldr r2, [r1, #8]
003781dc  2c d0 4d e2                                      sub sp, sp, #0x2c
003781e0  01 50 a0 e1                                      mov r5, r1
003781e4  02 00 54 e1                                      cmp r4, r2
003781e8  00 70 a0 e1                                      mov r7, r0
003781ec  03 60 a0 e1                                      mov r6, r3
003781f0  5a 00 00 0a                                      beq #0x378360
003781f4  01 00 54 e1                                      cmp r4, r1
003781f8  78 00 00 0a                                      beq #0x3783e0
003781fc  00 30 d4 e5                                      ldrb r3, [r4]
00378200  00 00 53 e3                                      cmp r3, #0
00378204  3a 00 00 0a                                      beq #0x3782f4
00378208  08 c0 94 e5                                      ldr ip, [r4, #8]
0037820c  00 00 5c e3                                      cmp ip, #0
00378210  01 00 00 1a                                      bne #0x37821c
00378214  3e 00 00 ea                                      b #0x378314
00378218  03 c0 a0 e1                                      mov ip, r3
0037821c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00378220  00 00 53 e3                                      cmp r3, #0
00378224  fb ff ff 1a                                      bne #0x378218
00378228  00 20 96 e5                                      ldr r2, [r6]
0037822c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00378230  00 00 52 e1                                      cmp r2, r0
00378234  00 10 a0 a3                                      movge r1, #0
00378238  01 10 a0 b3                                      movlt r1, #1
0037823c  00 00 51 e3                                      cmp r1, #0
00378240  1b 00 00 1a                                      bne #0x3782b4
00378244  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00378248  00 00 58 e3                                      cmp r8, #0
0037824c  7d 00 00 0a                                      beq #0x378448
00378250  08 c0 a0 e1                                      mov ip, r8
00378254  00 00 00 ea                                      b #0x37825c
00378258  03 c0 a0 e1                                      mov ip, r3
0037825c  08 30 9c e5                                      ldr r3, [ip, #8]
00378260  00 00 53 e3                                      cmp r3, #0
00378264  fb ff ff 1a                                      bne #0x378258
00378268  00 00 51 e3                                      cmp r1, #0
0037826c  34 00 00 1a                                      bne #0x378344
00378270  00 00 52 e1                                      cmp r2, r0
00378274  63 00 00 da                                      ble #0x378408
00378278  0c 00 55 e1                                      cmp r5, ip
0037827c  02 00 00 0a                                      beq #0x37828c
00378280  10 30 9c e5                                      ldr r3, [ip, #0x10]
00378284  03 00 52 e1                                      cmp r2, r3
00378288  2d 00 00 aa                                      bge #0x378344
0037828c  00 00 58 e3                                      cmp r8, #0
00378290  4a 00 00 1a                                      bne #0x3783c0
00378294  05 10 a0 e1                                      mov r1, r5
00378298  04 20 a0 e1                                      mov r2, r4
0037829c  06 30 a0 e1                                      mov r3, r6
003782a0  07 00 a0 e1                                      mov r0, r7
003782a4  00 80 8d e5                                      str r8, [sp]
003782a8  04 40 8d e5                                      str r4, [sp, #4]
003782ac  2f ff ff eb                                      bl #0x377f70
003782b0  0c 00 00 ea                                      b #0x3782e8
003782b4  10 30 9c e5                                      ldr r3, [ip, #0x10]
003782b8  03 00 52 e1                                      cmp r2, r3
003782bc  e0 ff ff da                                      ble #0x378244
003782c0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003782c4  00 00 5e e3                                      cmp lr, #0
003782c8  56 00 00 0a                                      beq #0x378428
003782cc  00 c0 a0 e3                                      mov ip, #0
003782d0  05 10 a0 e1                                      mov r1, r5
003782d4  04 20 a0 e1                                      mov r2, r4
003782d8  06 30 a0 e1                                      mov r3, r6
003782dc  07 00 a0 e1                                      mov r0, r7
003782e0  10 10 8d e8                                      stm sp, {r4, ip}
003782e4  21 ff ff eb                                      bl #0x377f70
003782e8  07 00 a0 e1                                      mov r0, r7
003782ec  2c d0 8d e2                                      add sp, sp, #0x2c
003782f0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003782f4  04 30 94 e5                                      ldr r3, [r4, #4]
003782f8  04 30 93 e5                                      ldr r3, [r3, #4]
003782fc  03 00 54 e1                                      cmp r4, r3
00378300  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00378304  c7 ff ff 0a                                      beq #0x378228
00378308  08 c0 94 e5                                      ldr ip, [r4, #8]
0037830c  00 00 5c e3                                      cmp ip, #0
00378310  c1 ff ff 1a                                      bne #0x37821c
00378314  04 c0 94 e5                                      ldr ip, [r4, #4]
00378318  08 30 9c e5                                      ldr r3, [ip, #8]
0037831c  03 00 54 e1                                      cmp r4, r3
00378320  01 00 00 0a                                      beq #0x37832c
00378324  bf ff ff ea                                      b #0x378228
00378328  03 c0 a0 e1                                      mov ip, r3
0037832c  04 30 9c e5                                      ldr r3, [ip, #4]
00378330  08 20 93 e5                                      ldr r2, [r3, #8]
00378334  0c 00 52 e1                                      cmp r2, ip
00378338  fa ff ff 0a                                      beq #0x378328
0037833c  03 c0 a0 e1                                      mov ip, r3
00378340  b8 ff ff ea                                      b #0x378228
00378344  05 10 a0 e1                                      mov r1, r5
00378348  06 20 a0 e1                                      mov r2, r6
0037834c  08 00 8d e2                                      add r0, sp, #8
00378350  3c ff ff eb                                      bl #0x378048
00378354  08 30 9d e5                                      ldr r3, [sp, #8]
00378358  00 30 87 e5                                      str r3, [r7]
0037835c  e1 ff ff ea                                      b #0x3782e8
00378360  10 20 91 e5                                      ldr r2, [r1, #0x10]
00378364  00 00 52 e3                                      cmp r2, #0
00378368  52 00 00 0a                                      beq #0x3784b8
0037836c  00 20 93 e5                                      ldr r2, [r3]
00378370  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00378374  0c 00 52 e1                                      cmp r2, ip
00378378  54 00 00 ba                                      blt #0x3784d0
0037837c  21 00 00 da                                      ble #0x378408
00378380  0c e0 94 e5                                      ldr lr, [r4, #0xc]
00378384  00 00 5e e3                                      cmp lr, #0
00378388  3c 00 00 0a                                      beq #0x378480
0037838c  0e c0 a0 e1                                      mov ip, lr
00378390  00 00 00 ea                                      b #0x378398
00378394  03 c0 a0 e1                                      mov ip, r3
00378398  08 30 9c e5                                      ldr r3, [ip, #8]
0037839c  00 00 53 e3                                      cmp r3, #0
003783a0  fb ff ff 1a                                      bne #0x378394
003783a4  0c 00 55 e1                                      cmp r5, ip
003783a8  5c 00 00 0a                                      beq #0x378520
003783ac  10 30 9c e5                                      ldr r3, [ip, #0x10]
003783b0  03 00 52 e1                                      cmp r2, r3
003783b4  4a 00 00 aa                                      bge #0x3784e4
003783b8  00 00 5e e3                                      cmp lr, #0
003783bc  4f 00 00 0a                                      beq #0x378500
003783c0  00 e0 a0 e3                                      mov lr, #0
003783c4  05 10 a0 e1                                      mov r1, r5
003783c8  0c 20 a0 e1                                      mov r2, ip
003783cc  06 30 a0 e1                                      mov r3, r6
003783d0  07 00 a0 e1                                      mov r0, r7
003783d4  00 50 8d e8                                      stm sp, {ip, lr}
003783d8  e4 fe ff eb                                      bl #0x377f70
003783dc  c1 ff ff ea                                      b #0x3782e8
003783e0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003783e4  00 c0 93 e5                                      ldr ip, [r3]
003783e8  10 e0 92 e5                                      ldr lr, [r2, #0x10]
003783ec  0c 00 5e e1                                      cmp lr, ip
003783f0  06 00 00 aa                                      bge #0x378410
003783f4  00 c0 a0 e3                                      mov ip, #0
003783f8  00 c0 8d e5                                      str ip, [sp]
003783fc  04 40 8d e5                                      str r4, [sp, #4]
00378400  da fe ff eb                                      bl #0x377f70
00378404  b7 ff ff ea                                      b #0x3782e8
00378408  00 40 87 e5                                      str r4, [r7]
0037840c  b5 ff ff ea                                      b #0x3782e8
00378410  03 20 a0 e1                                      mov r2, r3
00378414  10 00 8d e2                                      add r0, sp, #0x10
00378418  0a ff ff eb                                      bl #0x378048
0037841c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00378420  00 30 87 e5                                      str r3, [r7]
00378424  af ff ff ea                                      b #0x3782e8
00378428  05 10 a0 e1                                      mov r1, r5
0037842c  0c 20 a0 e1                                      mov r2, ip
00378430  06 30 a0 e1                                      mov r3, r6
00378434  07 00 a0 e1                                      mov r0, r7
00378438  00 e0 8d e5                                      str lr, [sp]
0037843c  04 c0 8d e5                                      str ip, [sp, #4]
00378440  ca fe ff eb                                      bl #0x377f70
00378444  a7 ff ff ea                                      b #0x3782e8
00378448  04 30 94 e5                                      ldr r3, [r4, #4]
0037844c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00378450  0c 00 54 e1                                      cmp r4, ip
00378454  04 c0 a0 11                                      movne ip, r4
00378458  04 00 00 1a                                      bne #0x378470
0037845c  03 c0 a0 e1                                      mov ip, r3
00378460  04 30 93 e5                                      ldr r3, [r3, #4]
00378464  0c a0 93 e5                                      ldr sl, [r3, #0xc]
00378468  0a 00 5c e1                                      cmp ip, sl
0037846c  fa ff ff 0a                                      beq #0x37845c
00378470  0c a0 9c e5                                      ldr sl, [ip, #0xc]
00378474  0a 00 53 e1                                      cmp r3, sl
00378478  03 c0 a0 11                                      movne ip, r3
0037847c  79 ff ff ea                                      b #0x378268
00378480  04 30 94 e5                                      ldr r3, [r4, #4]
00378484  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00378488  01 00 54 e1                                      cmp r4, r1
0037848c  04 c0 a0 11                                      movne ip, r4
00378490  04 00 00 1a                                      bne #0x3784a8
00378494  03 c0 a0 e1                                      mov ip, r3
00378498  04 30 93 e5                                      ldr r3, [r3, #4]
0037849c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003784a0  0c 00 51 e1                                      cmp r1, ip
003784a4  fa ff ff 0a                                      beq #0x378494
003784a8  0c 10 9c e5                                      ldr r1, [ip, #0xc]
003784ac  01 00 53 e1                                      cmp r3, r1
003784b0  03 c0 a0 11                                      movne ip, r3
003784b4  ba ff ff ea                                      b #0x3783a4
003784b8  03 20 a0 e1                                      mov r2, r3
003784bc  20 00 8d e2                                      add r0, sp, #0x20
003784c0  e0 fe ff eb                                      bl #0x378048
003784c4  20 30 9d e5                                      ldr r3, [sp, #0x20]
003784c8  00 30 87 e5                                      str r3, [r7]
003784cc  85 ff ff ea                                      b #0x3782e8
003784d0  00 c0 a0 e3                                      mov ip, #0
003784d4  04 20 a0 e1                                      mov r2, r4
003784d8  10 10 8d e8                                      stm sp, {r4, ip}
003784dc  a3 fe ff eb                                      bl #0x377f70
003784e0  80 ff ff ea                                      b #0x3782e8
003784e4  05 10 a0 e1                                      mov r1, r5
003784e8  06 20 a0 e1                                      mov r2, r6
003784ec  18 00 8d e2                                      add r0, sp, #0x18
003784f0  d4 fe ff eb                                      bl #0x378048
003784f4  18 30 9d e5                                      ldr r3, [sp, #0x18]
003784f8  00 30 87 e5                                      str r3, [r7]
003784fc  79 ff ff ea                                      b #0x3782e8
00378500  05 10 a0 e1                                      mov r1, r5
00378504  04 20 a0 e1                                      mov r2, r4
00378508  06 30 a0 e1                                      mov r3, r6
0037850c  07 00 a0 e1                                      mov r0, r7
00378510  00 e0 8d e5                                      str lr, [sp]
00378514  04 40 8d e5                                      str r4, [sp, #4]
00378518  94 fe ff eb                                      bl #0x377f70
0037851c  71 ff ff ea                                      b #0x3782e8
00378520  00 c0 a0 e3                                      mov ip, #0
00378524  05 10 a0 e1                                      mov r1, r5
00378528  04 20 a0 e1                                      mov r2, r4
0037852c  06 30 a0 e1                                      mov r3, r6
00378530  07 00 a0 e1                                      mov r0, r7
00378534  00 c0 8d e5                                      str ip, [sp]
00378538  04 40 8d e5                                      str r4, [sp, #4]
0037853c  8b fe ff eb                                      bl #0x377f70
00378540  68 ff ff ea                                      b #0x3782e8
