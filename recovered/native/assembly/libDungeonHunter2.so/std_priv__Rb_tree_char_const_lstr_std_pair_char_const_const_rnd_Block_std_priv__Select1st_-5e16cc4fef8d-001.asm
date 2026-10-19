; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004850b8, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd5BlockEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004850b8  70 40 2d e9                                      push {r4, r5, r6, lr}
004850bc  00 40 51 e2                                      subs r4, r1, #0
004850c0  00 60 a0 e1                                      mov r6, r0
004850c4  08 00 00 0a                                      beq #0x4850ec
004850c8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004850cc  06 00 a0 e1                                      mov r0, r6
004850d0  f8 ff ff eb                                      bl #0x4850b8
004850d4  08 50 94 e5                                      ldr r5, [r4, #8]
004850d8  04 00 a0 e1                                      mov r0, r4
004850dc  18 10 a0 e3                                      mov r1, #0x18
004850e0  86 0f 0a eb                                      bl #0x708f00
004850e4  00 40 55 e2                                      subs r4, r5, #0
004850e8  f6 ff ff 1a                                      bne #0x4850c8
004850ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048512c, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd5BlockEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE5eraseENS_17_Rb_tree_iteratorIS9_SD_EE
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >::erase(std::priv::_Rb_tree_iterator<std::pair<char const* const, rnd::Block*>, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> > >)
; decoder-mode: arm
0048512c  10 40 2d e9                                      push {r4, lr}
00485130  00 40 a0 e1                                      mov r4, r0
00485134  08 20 84 e2                                      add r2, r4, #8
00485138  00 00 91 e5                                      ldr r0, [r1]
0048513c  0c 30 84 e2                                      add r3, r4, #0xc
00485140  04 10 84 e2                                      add r1, r4, #4
00485144  ae c3 fa eb                                      bl #0x336004
00485148  00 00 50 e3                                      cmp r0, #0
0048514c  01 00 00 0a                                      beq #0x485158
00485150  18 10 a0 e3                                      mov r1, #0x18
00485154  69 0f 0a eb                                      bl #0x708f00
00485158  10 30 94 e5                                      ldr r3, [r4, #0x10]
0048515c  01 30 43 e2                                      sub r3, r3, #1
00485160  10 30 84 e5                                      str r3, [r4, #0x10]
00485164  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00486020, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd5BlockEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SH_SH_.clone.12
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<char const* const, rnd::Block*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.12]
; decoder-mode: arm
00486020  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00486024  02 00 51 e1                                      cmp r1, r2
00486028  08 d0 4d e2                                      sub sp, sp, #8
0048602c  01 40 a0 e1                                      mov r4, r1
00486030  02 50 a0 e1                                      mov r5, r2
00486034  00 60 a0 e1                                      mov r6, r0
00486038  13 00 00 0a                                      beq #0x48608c
0048603c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00486040  00 00 52 e3                                      cmp r2, #0
00486044  2a 00 00 0a                                      beq #0x4860f4
00486048  04 00 a0 e1                                      mov r0, r4
0048604c  04 30 8d e5                                      str r3, [sp, #4]
00486050  ea ff ff eb                                      bl #0x486000
00486054  04 30 9d e5                                      ldr r3, [sp, #4]
00486058  00 20 a0 e3                                      mov r2, #0
0048605c  00 70 a0 e1                                      mov r7, r0
00486060  00 10 93 e5                                      ldr r1, [r3]
00486064  10 10 80 e5                                      str r1, [r0, #0x10]
00486068  04 30 93 e5                                      ldr r3, [r3, #4]
0048606c  0c 20 80 e5                                      str r2, [r0, #0xc]
00486070  08 20 80 e5                                      str r2, [r0, #8]
00486074  14 30 80 e5                                      str r3, [r0, #0x14]
00486078  08 00 85 e5                                      str r0, [r5, #8]
0048607c  08 30 94 e5                                      ldr r3, [r4, #8]
00486080  03 00 55 e1                                      cmp r5, r3
00486084  08 00 84 05                                      streq r0, [r4, #8]
00486088  0e 00 00 ea                                      b #0x4860c8
0048608c  01 00 a0 e1                                      mov r0, r1
00486090  04 30 8d e5                                      str r3, [sp, #4]
00486094  d9 ff ff eb                                      bl #0x486000
00486098  04 30 9d e5                                      ldr r3, [sp, #4]
0048609c  00 20 a0 e3                                      mov r2, #0
004860a0  00 70 a0 e1                                      mov r7, r0
004860a4  00 10 93 e5                                      ldr r1, [r3]
004860a8  10 10 80 e5                                      str r1, [r0, #0x10]
004860ac  04 30 93 e5                                      ldr r3, [r3, #4]
004860b0  0c 20 80 e5                                      str r2, [r0, #0xc]
004860b4  08 20 80 e5                                      str r2, [r0, #8]
004860b8  14 30 80 e5                                      str r3, [r0, #0x14]
004860bc  08 00 84 e5                                      str r0, [r4, #8]
004860c0  04 00 84 e5                                      str r0, [r4, #4]
004860c4  0c 00 84 e5                                      str r0, [r4, #0xc]
004860c8  07 00 a0 e1                                      mov r0, r7
004860cc  04 50 87 e5                                      str r5, [r7, #4]
004860d0  04 10 84 e2                                      add r1, r4, #4
004860d4  a1 35 fa eb                                      bl #0x313760
004860d8  10 30 94 e5                                      ldr r3, [r4, #0x10]
004860dc  06 00 a0 e1                                      mov r0, r6
004860e0  01 30 83 e2                                      add r3, r3, #1
004860e4  10 30 84 e5                                      str r3, [r4, #0x10]
004860e8  00 70 86 e5                                      str r7, [r6]
004860ec  08 d0 8d e2                                      add sp, sp, #8
004860f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004860f4  14 00 81 e2                                      add r0, r1, #0x14
004860f8  10 20 95 e5                                      ldr r2, [r5, #0x10]
004860fc  00 10 93 e5                                      ldr r1, [r3]
00486100  04 30 8d e5                                      str r3, [sp, #4]
00486104  38 46 fa eb                                      bl #0x3179ec
00486108  00 80 50 e2                                      subs r8, r0, #0
0048610c  04 30 9d e5                                      ldr r3, [sp, #4]
00486110  cc ff ff 1a                                      bne #0x486048
00486114  04 00 a0 e1                                      mov r0, r4
00486118  04 30 8d e5                                      str r3, [sp, #4]
0048611c  b7 ff ff eb                                      bl #0x486000
00486120  04 30 9d e5                                      ldr r3, [sp, #4]
00486124  00 70 a0 e1                                      mov r7, r0
00486128  00 20 93 e5                                      ldr r2, [r3]
0048612c  10 20 80 e5                                      str r2, [r0, #0x10]
00486130  04 30 93 e5                                      ldr r3, [r3, #4]
00486134  0c 80 80 e5                                      str r8, [r0, #0xc]
00486138  08 80 80 e5                                      str r8, [r0, #8]
0048613c  14 30 80 e5                                      str r3, [r0, #0x14]
00486140  0c 00 85 e5                                      str r0, [r5, #0xc]
00486144  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00486148  03 00 55 e1                                      cmp r5, r3
0048614c  0c 00 84 05                                      streq r0, [r4, #0xc]
00486150  dc ff ff ea                                      b #0x4860c8

; FUNCTION 0x00486154, declared_size=420, range_size=420, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd5BlockEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >::insert_unique(std::pair<char const* const, rnd::Block*> const&)
; decoder-mode: arm
00486154  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00486158  04 50 91 e5                                      ldr r5, [r1, #4]
0048615c  14 d0 4d e2                                      sub sp, sp, #0x14
00486160  01 80 a0 e1                                      mov r8, r1
00486164  00 00 55 e3                                      cmp r5, #0
00486168  00 40 a0 e1                                      mov r4, r0
0048616c  02 70 a0 e1                                      mov r7, r2
00486170  01 50 a0 01                                      moveq r5, r1
00486174  1a 00 00 0a                                      beq #0x4861e4
00486178  14 60 81 e2                                      add r6, r1, #0x14
0048617c  00 00 00 ea                                      b #0x486184
00486180  02 50 a0 e1                                      mov r5, r2
00486184  10 20 95 e5                                      ldr r2, [r5, #0x10]
00486188  06 00 a0 e1                                      mov r0, r6
0048618c  00 10 97 e5                                      ldr r1, [r7]
00486190  15 46 fa eb                                      bl #0x3179ec
00486194  00 00 50 e3                                      cmp r0, #0
00486198  08 20 95 15                                      ldrne r2, [r5, #8]
0048619c  0c 20 95 05                                      ldreq r2, [r5, #0xc]
004861a0  05 30 a0 e1                                      mov r3, r5
004861a4  00 00 52 e3                                      cmp r2, #0
004861a8  f4 ff ff 1a                                      bne #0x486180
004861ac  00 00 50 e3                                      cmp r0, #0
004861b0  05 a0 a0 01                                      moveq sl, r5
004861b4  0a 00 00 1a                                      bne #0x4861e4
004861b8  06 00 a0 e1                                      mov r0, r6
004861bc  10 10 93 e5                                      ldr r1, [r3, #0x10]
004861c0  00 20 97 e5                                      ldr r2, [r7]
004861c4  08 46 fa eb                                      bl #0x3179ec
004861c8  00 00 50 e3                                      cmp r0, #0
004861cc  00 a0 84 05                                      streq sl, [r4]
004861d0  04 00 c4 05                                      strbeq r0, [r4, #4]
004861d4  1e 00 00 1a                                      bne #0x486254
004861d8  04 00 a0 e1                                      mov r0, r4
004861dc  14 d0 8d e2                                      add sp, sp, #0x14
004861e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004861e4  08 30 98 e5                                      ldr r3, [r8, #8]
004861e8  03 00 55 e1                                      cmp r5, r3
004861ec  36 00 00 0a                                      beq #0x4862cc
004861f0  00 30 d5 e5                                      ldrb r3, [r5]
004861f4  00 00 53 e3                                      cmp r3, #0
004861f8  03 00 00 1a                                      bne #0x48620c
004861fc  04 30 95 e5                                      ldr r3, [r5, #4]
00486200  04 30 93 e5                                      ldr r3, [r3, #4]
00486204  03 00 55 e1                                      cmp r5, r3
00486208  2b 00 00 0a                                      beq #0x4862bc
0048620c  08 30 95 e5                                      ldr r3, [r5, #8]
00486210  00 00 53 e3                                      cmp r3, #0
00486214  01 00 00 1a                                      bne #0x486220
00486218  19 00 00 ea                                      b #0x486284
0048621c  02 30 a0 e1                                      mov r3, r2
00486220  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00486224  00 00 52 e3                                      cmp r2, #0
00486228  fb ff ff 1a                                      bne #0x48621c
0048622c  14 60 88 e2                                      add r6, r8, #0x14
00486230  06 00 a0 e1                                      mov r0, r6
00486234  10 10 93 e5                                      ldr r1, [r3, #0x10]
00486238  00 20 97 e5                                      ldr r2, [r7]
0048623c  03 a0 a0 e1                                      mov sl, r3
00486240  e9 45 fa eb                                      bl #0x3179ec
00486244  00 00 50 e3                                      cmp r0, #0
00486248  00 a0 84 05                                      streq sl, [r4]
0048624c  04 00 c4 05                                      strbeq r0, [r4, #4]
00486250  e0 ff ff 0a                                      beq #0x4861d8
00486254  05 20 a0 e1                                      mov r2, r5
00486258  07 30 a0 e1                                      mov r3, r7
0048625c  00 c0 a0 e3                                      mov ip, #0
00486260  08 10 a0 e1                                      mov r1, r8
00486264  08 00 8d e2                                      add r0, sp, #8
00486268  00 c0 8d e5                                      str ip, [sp]
0048626c  6b ff ff eb                                      bl #0x486020
00486270  08 30 9d e5                                      ldr r3, [sp, #8]
00486274  01 20 a0 e3                                      mov r2, #1
00486278  04 20 c4 e5                                      strb r2, [r4, #4]
0048627c  00 30 84 e5                                      str r3, [r4]
00486280  d4 ff ff ea                                      b #0x4861d8
00486284  04 20 95 e5                                      ldr r2, [r5, #4]
00486288  08 30 92 e5                                      ldr r3, [r2, #8]
0048628c  03 00 55 e1                                      cmp r5, r3
00486290  02 30 a0 11                                      movne r3, r2
00486294  03 a0 a0 11                                      movne sl, r3
00486298  14 60 88 12                                      addne r6, r8, #0x14
0048629c  01 00 00 0a                                      beq #0x4862a8
004862a0  c4 ff ff ea                                      b #0x4861b8
004862a4  03 20 a0 e1                                      mov r2, r3
004862a8  04 30 92 e5                                      ldr r3, [r2, #4]
004862ac  08 10 93 e5                                      ldr r1, [r3, #8]
004862b0  02 00 51 e1                                      cmp r1, r2
004862b4  fa ff ff 0a                                      beq #0x4862a4
004862b8  db ff ff ea                                      b #0x48622c
004862bc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004862c0  14 60 88 e2                                      add r6, r8, #0x14
004862c4  03 a0 a0 e1                                      mov sl, r3
004862c8  ba ff ff ea                                      b #0x4861b8
004862cc  05 20 a0 e1                                      mov r2, r5
004862d0  07 30 a0 e1                                      mov r3, r7
004862d4  08 10 a0 e1                                      mov r1, r8
004862d8  0c 00 8d e2                                      add r0, sp, #0xc
004862dc  00 50 8d e5                                      str r5, [sp]
004862e0  4e ff ff eb                                      bl #0x486020
004862e4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004862e8  01 20 a0 e3                                      mov r2, #1
004862ec  04 20 c4 e5                                      strb r2, [r4, #4]
004862f0  00 30 84 e5                                      str r3, [r4]
004862f4  b7 ff ff ea                                      b #0x4861d8
