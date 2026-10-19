; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00484d68, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd8ListRuleEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00484d68  70 40 2d e9                                      push {r4, r5, r6, lr}
00484d6c  00 40 51 e2                                      subs r4, r1, #0
00484d70  00 60 a0 e1                                      mov r6, r0
00484d74  08 00 00 0a                                      beq #0x484d9c
00484d78  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00484d7c  06 00 a0 e1                                      mov r0, r6
00484d80  f8 ff ff eb                                      bl #0x484d68
00484d84  08 50 94 e5                                      ldr r5, [r4, #8]
00484d88  04 00 a0 e1                                      mov r0, r4
00484d8c  18 10 a0 e3                                      mov r1, #0x18
00484d90  5a 10 0a eb                                      bl #0x708f00
00484d94  00 40 55 e2                                      subs r4, r5, #0
00484d98  f6 ff ff 1a                                      bne #0x484d78
00484d9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004850f0, declared_size=60, range_size=60, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd8ListRuleEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE5eraseENS_17_Rb_tree_iteratorIS9_SD_EE
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >::erase(std::priv::_Rb_tree_iterator<std::pair<char const* const, rnd::ListRule*>, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> > >)
; decoder-mode: arm
004850f0  10 40 2d e9                                      push {r4, lr}
004850f4  00 40 a0 e1                                      mov r4, r0
004850f8  08 20 84 e2                                      add r2, r4, #8
004850fc  00 00 91 e5                                      ldr r0, [r1]
00485100  0c 30 84 e2                                      add r3, r4, #0xc
00485104  04 10 84 e2                                      add r1, r4, #4
00485108  bd c3 fa eb                                      bl #0x336004
0048510c  00 00 50 e3                                      cmp r0, #0
00485110  01 00 00 0a                                      beq #0x48511c
00485114  18 10 a0 e3                                      mov r1, #0x18
00485118  78 0f 0a eb                                      bl #0x708f00
0048511c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00485120  01 30 43 e2                                      sub r3, r3, #1
00485124  10 30 84 e5                                      str r3, [r4, #0x10]
00485128  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00486318, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd8ListRuleEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SH_SH_.clone.13
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<char const* const, rnd::ListRule*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.13]
; decoder-mode: arm
00486318  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048631c  02 00 51 e1                                      cmp r1, r2
00486320  08 d0 4d e2                                      sub sp, sp, #8
00486324  01 40 a0 e1                                      mov r4, r1
00486328  02 50 a0 e1                                      mov r5, r2
0048632c  00 60 a0 e1                                      mov r6, r0
00486330  13 00 00 0a                                      beq #0x486384
00486334  20 20 9d e5                                      ldr r2, [sp, #0x20]
00486338  00 00 52 e3                                      cmp r2, #0
0048633c  2a 00 00 0a                                      beq #0x4863ec
00486340  04 00 a0 e1                                      mov r0, r4
00486344  04 30 8d e5                                      str r3, [sp, #4]
00486348  ea ff ff eb                                      bl #0x4862f8
0048634c  04 30 9d e5                                      ldr r3, [sp, #4]
00486350  00 20 a0 e3                                      mov r2, #0
00486354  00 70 a0 e1                                      mov r7, r0
00486358  00 10 93 e5                                      ldr r1, [r3]
0048635c  10 10 80 e5                                      str r1, [r0, #0x10]
00486360  04 30 93 e5                                      ldr r3, [r3, #4]
00486364  0c 20 80 e5                                      str r2, [r0, #0xc]
00486368  08 20 80 e5                                      str r2, [r0, #8]
0048636c  14 30 80 e5                                      str r3, [r0, #0x14]
00486370  08 00 85 e5                                      str r0, [r5, #8]
00486374  08 30 94 e5                                      ldr r3, [r4, #8]
00486378  03 00 55 e1                                      cmp r5, r3
0048637c  08 00 84 05                                      streq r0, [r4, #8]
00486380  0e 00 00 ea                                      b #0x4863c0
00486384  01 00 a0 e1                                      mov r0, r1
00486388  04 30 8d e5                                      str r3, [sp, #4]
0048638c  d9 ff ff eb                                      bl #0x4862f8
00486390  04 30 9d e5                                      ldr r3, [sp, #4]
00486394  00 20 a0 e3                                      mov r2, #0
00486398  00 70 a0 e1                                      mov r7, r0
0048639c  00 10 93 e5                                      ldr r1, [r3]
004863a0  10 10 80 e5                                      str r1, [r0, #0x10]
004863a4  04 30 93 e5                                      ldr r3, [r3, #4]
004863a8  0c 20 80 e5                                      str r2, [r0, #0xc]
004863ac  08 20 80 e5                                      str r2, [r0, #8]
004863b0  14 30 80 e5                                      str r3, [r0, #0x14]
004863b4  08 00 84 e5                                      str r0, [r4, #8]
004863b8  04 00 84 e5                                      str r0, [r4, #4]
004863bc  0c 00 84 e5                                      str r0, [r4, #0xc]
004863c0  07 00 a0 e1                                      mov r0, r7
004863c4  04 50 87 e5                                      str r5, [r7, #4]
004863c8  04 10 84 e2                                      add r1, r4, #4
004863cc  e3 34 fa eb                                      bl #0x313760
004863d0  10 30 94 e5                                      ldr r3, [r4, #0x10]
004863d4  06 00 a0 e1                                      mov r0, r6
004863d8  01 30 83 e2                                      add r3, r3, #1
004863dc  10 30 84 e5                                      str r3, [r4, #0x10]
004863e0  00 70 86 e5                                      str r7, [r6]
004863e4  08 d0 8d e2                                      add sp, sp, #8
004863e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004863ec  14 00 81 e2                                      add r0, r1, #0x14
004863f0  10 20 95 e5                                      ldr r2, [r5, #0x10]
004863f4  00 10 93 e5                                      ldr r1, [r3]
004863f8  04 30 8d e5                                      str r3, [sp, #4]
004863fc  7a 45 fa eb                                      bl #0x3179ec
00486400  00 80 50 e2                                      subs r8, r0, #0
00486404  04 30 9d e5                                      ldr r3, [sp, #4]
00486408  cc ff ff 1a                                      bne #0x486340
0048640c  04 00 a0 e1                                      mov r0, r4
00486410  04 30 8d e5                                      str r3, [sp, #4]
00486414  b7 ff ff eb                                      bl #0x4862f8
00486418  04 30 9d e5                                      ldr r3, [sp, #4]
0048641c  00 70 a0 e1                                      mov r7, r0
00486420  00 20 93 e5                                      ldr r2, [r3]
00486424  10 20 80 e5                                      str r2, [r0, #0x10]
00486428  04 30 93 e5                                      ldr r3, [r3, #4]
0048642c  0c 80 80 e5                                      str r8, [r0, #0xc]
00486430  08 80 80 e5                                      str r8, [r0, #8]
00486434  14 30 80 e5                                      str r3, [r0, #0x14]
00486438  0c 00 85 e5                                      str r0, [r5, #0xc]
0048643c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00486440  03 00 55 e1                                      cmp r5, r3
00486444  0c 00 84 05                                      streq r0, [r4, #0xc]
00486448  dc ff ff ea                                      b #0x4863c0

; FUNCTION 0x0048644c, declared_size=420, range_size=420, mode=arm
; class-group: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >
; alias: _ZNSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd8ListRuleEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >::insert_unique(std::pair<char const* const, rnd::ListRule*> const&)
; decoder-mode: arm
0048644c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00486450  04 50 91 e5                                      ldr r5, [r1, #4]
00486454  14 d0 4d e2                                      sub sp, sp, #0x14
00486458  01 80 a0 e1                                      mov r8, r1
0048645c  00 00 55 e3                                      cmp r5, #0
00486460  00 40 a0 e1                                      mov r4, r0
00486464  02 70 a0 e1                                      mov r7, r2
00486468  01 50 a0 01                                      moveq r5, r1
0048646c  1a 00 00 0a                                      beq #0x4864dc
00486470  14 60 81 e2                                      add r6, r1, #0x14
00486474  00 00 00 ea                                      b #0x48647c
00486478  02 50 a0 e1                                      mov r5, r2
0048647c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00486480  06 00 a0 e1                                      mov r0, r6
00486484  00 10 97 e5                                      ldr r1, [r7]
00486488  57 45 fa eb                                      bl #0x3179ec
0048648c  00 00 50 e3                                      cmp r0, #0
00486490  08 20 95 15                                      ldrne r2, [r5, #8]
00486494  0c 20 95 05                                      ldreq r2, [r5, #0xc]
00486498  05 30 a0 e1                                      mov r3, r5
0048649c  00 00 52 e3                                      cmp r2, #0
004864a0  f4 ff ff 1a                                      bne #0x486478
004864a4  00 00 50 e3                                      cmp r0, #0
004864a8  05 a0 a0 01                                      moveq sl, r5
004864ac  0a 00 00 1a                                      bne #0x4864dc
004864b0  06 00 a0 e1                                      mov r0, r6
004864b4  10 10 93 e5                                      ldr r1, [r3, #0x10]
004864b8  00 20 97 e5                                      ldr r2, [r7]
004864bc  4a 45 fa eb                                      bl #0x3179ec
004864c0  00 00 50 e3                                      cmp r0, #0
004864c4  00 a0 84 05                                      streq sl, [r4]
004864c8  04 00 c4 05                                      strbeq r0, [r4, #4]
004864cc  1e 00 00 1a                                      bne #0x48654c
004864d0  04 00 a0 e1                                      mov r0, r4
004864d4  14 d0 8d e2                                      add sp, sp, #0x14
004864d8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004864dc  08 30 98 e5                                      ldr r3, [r8, #8]
004864e0  03 00 55 e1                                      cmp r5, r3
004864e4  36 00 00 0a                                      beq #0x4865c4
004864e8  00 30 d5 e5                                      ldrb r3, [r5]
004864ec  00 00 53 e3                                      cmp r3, #0
004864f0  03 00 00 1a                                      bne #0x486504
004864f4  04 30 95 e5                                      ldr r3, [r5, #4]
004864f8  04 30 93 e5                                      ldr r3, [r3, #4]
004864fc  03 00 55 e1                                      cmp r5, r3
00486500  2b 00 00 0a                                      beq #0x4865b4
00486504  08 30 95 e5                                      ldr r3, [r5, #8]
00486508  00 00 53 e3                                      cmp r3, #0
0048650c  01 00 00 1a                                      bne #0x486518
00486510  19 00 00 ea                                      b #0x48657c
00486514  02 30 a0 e1                                      mov r3, r2
00486518  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0048651c  00 00 52 e3                                      cmp r2, #0
00486520  fb ff ff 1a                                      bne #0x486514
00486524  14 60 88 e2                                      add r6, r8, #0x14
00486528  06 00 a0 e1                                      mov r0, r6
0048652c  10 10 93 e5                                      ldr r1, [r3, #0x10]
00486530  00 20 97 e5                                      ldr r2, [r7]
00486534  03 a0 a0 e1                                      mov sl, r3
00486538  2b 45 fa eb                                      bl #0x3179ec
0048653c  00 00 50 e3                                      cmp r0, #0
00486540  00 a0 84 05                                      streq sl, [r4]
00486544  04 00 c4 05                                      strbeq r0, [r4, #4]
00486548  e0 ff ff 0a                                      beq #0x4864d0
0048654c  05 20 a0 e1                                      mov r2, r5
00486550  07 30 a0 e1                                      mov r3, r7
00486554  00 c0 a0 e3                                      mov ip, #0
00486558  08 10 a0 e1                                      mov r1, r8
0048655c  08 00 8d e2                                      add r0, sp, #8
00486560  00 c0 8d e5                                      str ip, [sp]
00486564  6b ff ff eb                                      bl #0x486318
00486568  08 30 9d e5                                      ldr r3, [sp, #8]
0048656c  01 20 a0 e3                                      mov r2, #1
00486570  04 20 c4 e5                                      strb r2, [r4, #4]
00486574  00 30 84 e5                                      str r3, [r4]
00486578  d4 ff ff ea                                      b #0x4864d0
0048657c  04 20 95 e5                                      ldr r2, [r5, #4]
00486580  08 30 92 e5                                      ldr r3, [r2, #8]
00486584  03 00 55 e1                                      cmp r5, r3
00486588  02 30 a0 11                                      movne r3, r2
0048658c  03 a0 a0 11                                      movne sl, r3
00486590  14 60 88 12                                      addne r6, r8, #0x14
00486594  01 00 00 0a                                      beq #0x4865a0
00486598  c4 ff ff ea                                      b #0x4864b0
0048659c  03 20 a0 e1                                      mov r2, r3
004865a0  04 30 92 e5                                      ldr r3, [r2, #4]
004865a4  08 10 93 e5                                      ldr r1, [r3, #8]
004865a8  02 00 51 e1                                      cmp r1, r2
004865ac  fa ff ff 0a                                      beq #0x48659c
004865b0  db ff ff ea                                      b #0x486524
004865b4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004865b8  14 60 88 e2                                      add r6, r8, #0x14
004865bc  03 a0 a0 e1                                      mov sl, r3
004865c0  ba ff ff ea                                      b #0x4864b0
004865c4  05 20 a0 e1                                      mov r2, r5
004865c8  07 30 a0 e1                                      mov r3, r7
004865cc  08 10 a0 e1                                      mov r1, r8
004865d0  0c 00 8d e2                                      add r0, sp, #0xc
004865d4  00 50 8d e5                                      str r5, [sp]
004865d8  4e ff ff eb                                      bl #0x486318
004865dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004865e0  01 20 a0 e3                                      mov r2, #1
004865e4  04 20 c4 e5                                      strb r2, [r4, #4]
004865e8  00 30 84 e5                                      str r3, [r4]
004865ec  b7 ff ff ea                                      b #0x4864d0
