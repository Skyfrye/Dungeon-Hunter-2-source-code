; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a79e4, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKijENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003a79e4  70 40 2d e9                                      push {r4, r5, r6, lr}
003a79e8  00 40 51 e2                                      subs r4, r1, #0
003a79ec  00 60 a0 e1                                      mov r6, r0
003a79f0  08 00 00 0a                                      beq #0x3a7a18
003a79f4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003a79f8  06 00 a0 e1                                      mov r0, r6
003a79fc  f8 ff ff eb                                      bl #0x3a79e4
003a7a00  08 50 94 e5                                      ldr r5, [r4, #8]
003a7a04  04 00 a0 e1                                      mov r0, r4
003a7a08  18 10 a0 e3                                      mov r1, #0x18
003a7a0c  3b 85 0d eb                                      bl #0x708f00
003a7a10  00 40 55 e2                                      subs r4, r5, #0
003a7a14  f6 ff ff 1a                                      bne #0x3a79f4
003a7a18  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003ab3bc, declared_size=312, range_size=312, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKijENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_.clone.9
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<int const, unsigned int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.9]
; decoder-mode: arm
003ab3bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ab3c0  24 41 9f e5                                      ldr r4, [pc, #0x124]
003ab3c4  24 51 9f e5                                      ldr r5, [pc, #0x124]
003ab3c8  01 70 a0 e1                                      mov r7, r1
003ab3cc  04 40 8f e0                                      add r4, pc, r4
003ab3d0  05 10 94 e7                                      ldr r1, [r4, r5]
003ab3d4  00 60 a0 e1                                      mov r6, r0
003ab3d8  02 a0 a0 e1                                      mov sl, r2
003ab3dc  01 00 57 e1                                      cmp r7, r1
003ab3e0  2e 00 00 0a                                      beq #0x3ab4a0
003ab3e4  20 20 9d e5                                      ldr r2, [sp, #0x20]
003ab3e8  00 00 52 e3                                      cmp r2, #0
003ab3ec  19 00 00 0a                                      beq #0x3ab458
003ab3f0  05 90 94 e7                                      ldr sb, [r4, r5]
003ab3f4  09 00 a0 e1                                      mov r0, sb
003ab3f8  e7 ff ff eb                                      bl #0x3ab39c
003ab3fc  00 20 9a e5                                      ldr r2, [sl]
003ab400  00 30 a0 e3                                      mov r3, #0
003ab404  00 80 a0 e1                                      mov r8, r0
003ab408  10 20 80 e5                                      str r2, [r0, #0x10]
003ab40c  04 20 9a e5                                      ldr r2, [sl, #4]
003ab410  0c 30 80 e5                                      str r3, [r0, #0xc]
003ab414  08 30 80 e5                                      str r3, [r0, #8]
003ab418  14 20 80 e5                                      str r2, [r0, #0x14]
003ab41c  0c 00 87 e5                                      str r0, [r7, #0xc]
003ab420  0c 30 99 e5                                      ldr r3, [sb, #0xc]
003ab424  03 00 57 e1                                      cmp r7, r3
003ab428  0c 00 89 05                                      streq r0, [sb, #0xc]
003ab42c  05 40 94 e7                                      ldr r4, [r4, r5]
003ab430  08 00 a0 e1                                      mov r0, r8
003ab434  04 70 88 e5                                      str r7, [r8, #4]
003ab438  04 10 84 e2                                      add r1, r4, #4
003ab43c  c7 a0 fd eb                                      bl #0x313760
003ab440  10 30 94 e5                                      ldr r3, [r4, #0x10]
003ab444  06 00 a0 e1                                      mov r0, r6
003ab448  01 30 83 e2                                      add r3, r3, #1
003ab44c  10 30 84 e5                                      str r3, [r4, #0x10]
003ab450  00 80 86 e5                                      str r8, [r6]
003ab454  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ab458  00 00 53 e3                                      cmp r3, #0
003ab45c  1d 00 00 0a                                      beq #0x3ab4d8
003ab460  05 90 94 e7                                      ldr sb, [r4, r5]
003ab464  09 00 a0 e1                                      mov r0, sb
003ab468  cb ff ff eb                                      bl #0x3ab39c
003ab46c  00 20 9a e5                                      ldr r2, [sl]
003ab470  00 30 a0 e3                                      mov r3, #0
003ab474  00 80 a0 e1                                      mov r8, r0
003ab478  10 20 80 e5                                      str r2, [r0, #0x10]
003ab47c  04 20 9a e5                                      ldr r2, [sl, #4]
003ab480  0c 30 80 e5                                      str r3, [r0, #0xc]
003ab484  08 30 80 e5                                      str r3, [r0, #8]
003ab488  14 20 80 e5                                      str r2, [r0, #0x14]
003ab48c  08 00 87 e5                                      str r0, [r7, #8]
003ab490  08 30 99 e5                                      ldr r3, [sb, #8]
003ab494  03 00 57 e1                                      cmp r7, r3
003ab498  08 00 89 05                                      streq r0, [sb, #8]
003ab49c  e2 ff ff ea                                      b #0x3ab42c
003ab4a0  07 00 a0 e1                                      mov r0, r7
003ab4a4  bc ff ff eb                                      bl #0x3ab39c
003ab4a8  00 20 9a e5                                      ldr r2, [sl]
003ab4ac  00 30 a0 e3                                      mov r3, #0
003ab4b0  00 80 a0 e1                                      mov r8, r0
003ab4b4  10 20 80 e5                                      str r2, [r0, #0x10]
003ab4b8  04 20 9a e5                                      ldr r2, [sl, #4]
003ab4bc  0c 30 80 e5                                      str r3, [r0, #0xc]
003ab4c0  08 30 80 e5                                      str r3, [r0, #8]
003ab4c4  14 20 80 e5                                      str r2, [r0, #0x14]
003ab4c8  08 00 87 e5                                      str r0, [r7, #8]
003ab4cc  04 00 87 e5                                      str r0, [r7, #4]
003ab4d0  0c 00 87 e5                                      str r0, [r7, #0xc]
003ab4d4  d4 ff ff ea                                      b #0x3ab42c
003ab4d8  00 20 9a e5                                      ldr r2, [sl]
003ab4dc  10 30 97 e5                                      ldr r3, [r7, #0x10]
003ab4e0  03 00 52 e1                                      cmp r2, r3
003ab4e4  dd ff ff ba                                      blt #0x3ab460
003ab4e8  c0 ff ff ea                                      b #0x3ab3f0
; mapping-symbol data/literal pool
003ab4ec  c4 96 5e 00 d8 43 00 00                          .byte 0xc4, 0x96, 0x5e, 0x00, 0xd8, 0x43, 0x00, 0x00

; FUNCTION 0x003ab4f4, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKijENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_.clone.4
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >::insert_unique(std::pair<int const, unsigned int> const&) [clone .clone.4]
; decoder-mode: arm
003ab4f4  70 31 9f e5                                      ldr r3, [pc, #0x170]
003ab4f8  70 c1 9f e5                                      ldr ip, [pc, #0x170]
003ab4fc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003ab500  03 30 8f e0                                      add r3, pc, r3
003ab504  00 40 a0 e1                                      mov r4, r0
003ab508  0c 00 93 e7                                      ldr r0, [r3, ip]
003ab50c  01 20 a0 e1                                      mov r2, r1
003ab510  14 d0 4d e2                                      sub sp, sp, #0x14
003ab514  04 10 90 e5                                      ldr r1, [r0, #4]
003ab518  00 00 51 e3                                      cmp r1, #0
003ab51c  00 10 a0 01                                      moveq r1, r0
003ab520  15 00 00 0a                                      beq #0x3ab57c
003ab524  00 70 92 e5                                      ldr r7, [r2]
003ab528  00 00 00 ea                                      b #0x3ab530
003ab52c  00 10 a0 e1                                      mov r1, r0
003ab530  10 50 91 e5                                      ldr r5, [r1, #0x10]
003ab534  01 60 a0 e3                                      mov r6, #1
003ab538  07 00 55 e1                                      cmp r5, r7
003ab53c  08 00 91 c5                                      ldrgt r0, [r1, #8]
003ab540  0c 00 91 d5                                      ldrle r0, [r1, #0xc]
003ab544  00 60 a0 d3                                      movle r6, #0
003ab548  00 00 50 e3                                      cmp r0, #0
003ab54c  f6 ff ff 1a                                      bne #0x3ab52c
003ab550  00 00 56 e3                                      cmp r6, #0
003ab554  01 30 a0 01                                      moveq r3, r1
003ab558  07 00 00 1a                                      bne #0x3ab57c
003ab55c  05 00 57 e1                                      cmp r7, r5
003ab560  00 30 84 d5                                      strle r3, [r4]
003ab564  00 30 a0 d3                                      movle r3, #0
003ab568  04 30 c4 d5                                      strble r3, [r4, #4]
003ab56c  1c 00 00 ca                                      bgt #0x3ab5e4
003ab570  04 00 a0 e1                                      mov r0, r4
003ab574  14 d0 8d e2                                      add sp, sp, #0x14
003ab578  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003ab57c  0c 30 93 e7                                      ldr r3, [r3, ip]
003ab580  08 30 93 e5                                      ldr r3, [r3, #8]
003ab584  01 00 53 e1                                      cmp r3, r1
003ab588  2d 00 00 0a                                      beq #0x3ab644
003ab58c  00 30 d1 e5                                      ldrb r3, [r1]
003ab590  00 00 53 e3                                      cmp r3, #0
003ab594  03 00 00 1a                                      bne #0x3ab5a8
003ab598  04 30 91 e5                                      ldr r3, [r1, #4]
003ab59c  04 30 93 e5                                      ldr r3, [r3, #4]
003ab5a0  03 00 51 e1                                      cmp r1, r3
003ab5a4  22 00 00 0a                                      beq #0x3ab634
003ab5a8  08 30 91 e5                                      ldr r3, [r1, #8]
003ab5ac  00 00 53 e3                                      cmp r3, #0
003ab5b0  15 00 00 0a                                      beq #0x3ab60c
003ab5b4  00 00 00 ea                                      b #0x3ab5bc
003ab5b8  00 30 a0 e1                                      mov r3, r0
003ab5bc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
003ab5c0  00 00 50 e3                                      cmp r0, #0
003ab5c4  fb ff ff 1a                                      bne #0x3ab5b8
003ab5c8  10 50 93 e5                                      ldr r5, [r3, #0x10]
003ab5cc  00 70 92 e5                                      ldr r7, [r2]
003ab5d0  05 00 57 e1                                      cmp r7, r5
003ab5d4  00 30 84 d5                                      strle r3, [r4]
003ab5d8  00 30 a0 d3                                      movle r3, #0
003ab5dc  04 30 c4 d5                                      strble r3, [r4, #4]
003ab5e0  e2 ff ff da                                      ble #0x3ab570
003ab5e4  00 c0 a0 e3                                      mov ip, #0
003ab5e8  0c 30 a0 e1                                      mov r3, ip
003ab5ec  0c 00 8d e2                                      add r0, sp, #0xc
003ab5f0  00 c0 8d e5                                      str ip, [sp]
003ab5f4  70 ff ff eb                                      bl #0x3ab3bc
003ab5f8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003ab5fc  01 20 a0 e3                                      mov r2, #1
003ab600  04 20 c4 e5                                      strb r2, [r4, #4]
003ab604  00 30 84 e5                                      str r3, [r4]
003ab608  d8 ff ff ea                                      b #0x3ab570
003ab60c  04 30 91 e5                                      ldr r3, [r1, #4]
003ab610  08 00 93 e5                                      ldr r0, [r3, #8]
003ab614  00 00 51 e1                                      cmp r1, r0
003ab618  ea ff ff 1a                                      bne #0x3ab5c8
003ab61c  03 00 a0 e1                                      mov r0, r3
003ab620  04 30 93 e5                                      ldr r3, [r3, #4]
003ab624  08 c0 93 e5                                      ldr ip, [r3, #8]
003ab628  00 00 5c e1                                      cmp ip, r0
003ab62c  fa ff ff 0a                                      beq #0x3ab61c
003ab630  e4 ff ff ea                                      b #0x3ab5c8
003ab634  0c 30 91 e5                                      ldr r3, [r1, #0xc]
003ab638  00 70 92 e5                                      ldr r7, [r2]
003ab63c  10 50 93 e5                                      ldr r5, [r3, #0x10]
003ab640  c5 ff ff ea                                      b #0x3ab55c
003ab644  01 30 a0 e1                                      mov r3, r1
003ab648  00 c0 a0 e3                                      mov ip, #0
003ab64c  08 00 8d e2                                      add r0, sp, #8
003ab650  00 c0 8d e5                                      str ip, [sp]
003ab654  58 ff ff eb                                      bl #0x3ab3bc
003ab658  08 30 9d e5                                      ldr r3, [sp, #8]
003ab65c  01 20 a0 e3                                      mov r2, #1
003ab660  04 20 c4 e5                                      strb r2, [r4, #4]
003ab664  00 30 84 e5                                      str r3, [r4]
003ab668  c0 ff ff ea                                      b #0x3ab570
; mapping-symbol data/literal pool
003ab66c  90 95 5e 00 d8 43 00 00                          .byte 0x90, 0x95, 0x5e, 0x00, 0xd8, 0x43, 0x00, 0x00

; FUNCTION 0x003f18d8, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >
; alias: _ZNSt4priv8_Rb_treeIiSt4lessIiESt4pairIKijENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE.clone.18
; demangled: std::priv::_Rb_tree<int, std::less<int>, std::pair<int const, unsigned int>, std::priv::_Select1st<std::pair<int const, unsigned int> >, std::priv::_MapTraitsT<std::pair<int const, unsigned int> >, std::allocator<std::pair<int const, unsigned int> > >::_M_erase(std::priv::_Rb_tree_node_base*) [clone .clone.18]
; decoder-mode: arm
003f18d8  70 40 2d e9                                      push {r4, r5, r6, lr}
003f18dc  00 50 50 e2                                      subs r5, r0, #0
003f18e0  09 00 00 0a                                      beq #0x3f190c
003f18e4  00 00 00 ea                                      b #0x3f18ec
003f18e8  04 50 a0 e1                                      mov r5, r4
003f18ec  0c 00 95 e5                                      ldr r0, [r5, #0xc]
003f18f0  f8 ff ff eb                                      bl #0x3f18d8
003f18f4  08 40 95 e5                                      ldr r4, [r5, #8]
003f18f8  05 00 a0 e1                                      mov r0, r5
003f18fc  18 10 a0 e3                                      mov r1, #0x18
003f1900  7e 5d 0c eb                                      bl #0x708f00
003f1904  00 00 54 e3                                      cmp r4, #0
003f1908  f6 ff ff 1a                                      bne #0x3f18e8
003f190c  70 80 bd e8                                      pop {r4, r5, r6, pc}
