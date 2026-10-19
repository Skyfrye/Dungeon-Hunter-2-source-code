; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037bcc0, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0037bcc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0037bcc4  00 40 51 e2                                      subs r4, r1, #0
0037bcc8  00 60 a0 e1                                      mov r6, r0
0037bccc  08 00 00 0a                                      beq #0x37bcf4
0037bcd0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0037bcd4  06 00 a0 e1                                      mov r0, r6
0037bcd8  f8 ff ff eb                                      bl #0x37bcc0
0037bcdc  08 50 94 e5                                      ldr r5, [r4, #8]
0037bce0  04 00 a0 e1                                      mov r0, r4
0037bce4  18 10 a0 e3                                      mov r1, #0x18
0037bce8  84 34 0e eb                                      bl #0x708f00
0037bcec  00 40 55 e2                                      subs r4, r5, #0
0037bcf0  f6 ff ff 1a                                      bne #0x37bcd0
0037bcf4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037d370, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0037d370  02 00 51 e1                                      cmp r1, r2
0037d374  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037d378  01 40 a0 e1                                      mov r4, r1
0037d37c  02 70 a0 e1                                      mov r7, r2
0037d380  00 50 a0 e1                                      mov r5, r0
0037d384  03 80 a0 e1                                      mov r8, r3
0037d388  2e 00 00 0a                                      beq #0x37d448
0037d38c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0037d390  00 00 53 e3                                      cmp r3, #0
0037d394  17 00 00 0a                                      beq #0x37d3f8
0037d398  04 00 a0 e1                                      mov r0, r4
0037d39c  eb ff ff eb                                      bl #0x37d350
0037d3a0  00 20 98 e5                                      ldr r2, [r8]
0037d3a4  00 30 a0 e3                                      mov r3, #0
0037d3a8  00 60 a0 e1                                      mov r6, r0
0037d3ac  10 20 80 e5                                      str r2, [r0, #0x10]
0037d3b0  04 20 98 e5                                      ldr r2, [r8, #4]
0037d3b4  0c 30 80 e5                                      str r3, [r0, #0xc]
0037d3b8  08 30 80 e5                                      str r3, [r0, #8]
0037d3bc  14 20 80 e5                                      str r2, [r0, #0x14]
0037d3c0  0c 00 87 e5                                      str r0, [r7, #0xc]
0037d3c4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0037d3c8  03 00 57 e1                                      cmp r7, r3
0037d3cc  1b 00 00 0a                                      beq #0x37d440
0037d3d0  06 00 a0 e1                                      mov r0, r6
0037d3d4  04 70 86 e5                                      str r7, [r6, #4]
0037d3d8  04 10 84 e2                                      add r1, r4, #4
0037d3dc  df 58 fe eb                                      bl #0x313760
0037d3e0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037d3e4  05 00 a0 e1                                      mov r0, r5
0037d3e8  01 30 83 e2                                      add r3, r3, #1
0037d3ec  10 30 84 e5                                      str r3, [r4, #0x10]
0037d3f0  00 60 85 e5                                      str r6, [r5]
0037d3f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037d3f8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0037d3fc  00 00 53 e3                                      cmp r3, #0
0037d400  1e 00 00 0a                                      beq #0x37d480
0037d404  04 00 a0 e1                                      mov r0, r4
0037d408  d0 ff ff eb                                      bl #0x37d350
0037d40c  00 20 98 e5                                      ldr r2, [r8]
0037d410  00 30 a0 e3                                      mov r3, #0
0037d414  00 60 a0 e1                                      mov r6, r0
0037d418  10 20 80 e5                                      str r2, [r0, #0x10]
0037d41c  04 20 98 e5                                      ldr r2, [r8, #4]
0037d420  0c 30 80 e5                                      str r3, [r0, #0xc]
0037d424  08 30 80 e5                                      str r3, [r0, #8]
0037d428  14 20 80 e5                                      str r2, [r0, #0x14]
0037d42c  08 00 87 e5                                      str r0, [r7, #8]
0037d430  08 30 94 e5                                      ldr r3, [r4, #8]
0037d434  03 00 57 e1                                      cmp r7, r3
0037d438  08 00 84 05                                      streq r0, [r4, #8]
0037d43c  e3 ff ff ea                                      b #0x37d3d0
0037d440  0c 60 84 e5                                      str r6, [r4, #0xc]
0037d444  e1 ff ff ea                                      b #0x37d3d0
0037d448  01 00 a0 e1                                      mov r0, r1
0037d44c  bf ff ff eb                                      bl #0x37d350
0037d450  00 20 98 e5                                      ldr r2, [r8]
0037d454  00 30 a0 e3                                      mov r3, #0
0037d458  00 60 a0 e1                                      mov r6, r0
0037d45c  10 20 80 e5                                      str r2, [r0, #0x10]
0037d460  04 20 98 e5                                      ldr r2, [r8, #4]
0037d464  0c 30 80 e5                                      str r3, [r0, #0xc]
0037d468  08 30 80 e5                                      str r3, [r0, #8]
0037d46c  14 20 80 e5                                      str r2, [r0, #0x14]
0037d470  08 00 84 e5                                      str r0, [r4, #8]
0037d474  04 00 84 e5                                      str r0, [r4, #4]
0037d478  0c 00 84 e5                                      str r0, [r4, #0xc]
0037d47c  d3 ff ff ea                                      b #0x37d3d0
0037d480  00 20 98 e5                                      ldr r2, [r8]
0037d484  10 30 97 e5                                      ldr r3, [r7, #0x10]
0037d488  03 00 52 e1                                      cmp r2, r3
0037d48c  c1 ff ff 2a                                      bhs #0x37d398
0037d490  db ff ff ea                                      b #0x37d404

; FUNCTION 0x0037d494, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >::insert_unique(std::pair<unsigned int const, int> const&)
; decoder-mode: arm
0037d494  70 40 2d e9                                      push {r4, r5, r6, lr}
0037d498  04 c0 91 e5                                      ldr ip, [r1, #4]
0037d49c  10 d0 4d e2                                      sub sp, sp, #0x10
0037d4a0  00 40 a0 e1                                      mov r4, r0
0037d4a4  00 00 5c e3                                      cmp ip, #0
0037d4a8  02 30 a0 e1                                      mov r3, r2
0037d4ac  01 c0 a0 01                                      moveq ip, r1
0037d4b0  15 00 00 0a                                      beq #0x37d50c
0037d4b4  00 60 92 e5                                      ldr r6, [r2]
0037d4b8  00 00 00 ea                                      b #0x37d4c0
0037d4bc  02 c0 a0 e1                                      mov ip, r2
0037d4c0  10 00 9c e5                                      ldr r0, [ip, #0x10]
0037d4c4  01 50 a0 e3                                      mov r5, #1
0037d4c8  06 00 50 e1                                      cmp r0, r6
0037d4cc  08 20 9c 85                                      ldrhi r2, [ip, #8]
0037d4d0  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0037d4d4  00 50 a0 93                                      movls r5, #0
0037d4d8  00 00 52 e3                                      cmp r2, #0
0037d4dc  f6 ff ff 1a                                      bne #0x37d4bc
0037d4e0  00 00 55 e3                                      cmp r5, #0
0037d4e4  0c 50 a0 01                                      moveq r5, ip
0037d4e8  07 00 00 1a                                      bne #0x37d50c
0037d4ec  00 00 56 e1                                      cmp r6, r0
0037d4f0  00 30 a0 93                                      movls r3, #0
0037d4f4  00 50 84 95                                      strls r5, [r4]
0037d4f8  04 30 c4 95                                      strbls r3, [r4, #4]
0037d4fc  1c 00 00 8a                                      bhi #0x37d574
0037d500  04 00 a0 e1                                      mov r0, r4
0037d504  10 d0 8d e2                                      add sp, sp, #0x10
0037d508  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037d50c  08 20 91 e5                                      ldr r2, [r1, #8]
0037d510  02 00 5c e1                                      cmp ip, r2
0037d514  36 00 00 0a                                      beq #0x37d5f4
0037d518  00 20 dc e5                                      ldrb r2, [ip]
0037d51c  00 00 52 e3                                      cmp r2, #0
0037d520  03 00 00 1a                                      bne #0x37d534
0037d524  04 20 9c e5                                      ldr r2, [ip, #4]
0037d528  04 20 92 e5                                      ldr r2, [r2, #4]
0037d52c  02 00 5c e1                                      cmp ip, r2
0037d530  2a 00 00 0a                                      beq #0x37d5e0
0037d534  08 00 9c e5                                      ldr r0, [ip, #8]
0037d538  00 00 50 e3                                      cmp r0, #0
0037d53c  01 00 00 1a                                      bne #0x37d548
0037d540  16 00 00 ea                                      b #0x37d5a0
0037d544  02 00 a0 e1                                      mov r0, r2
0037d548  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0037d54c  00 00 52 e3                                      cmp r2, #0
0037d550  fb ff ff 1a                                      bne #0x37d544
0037d554  00 60 93 e5                                      ldr r6, [r3]
0037d558  00 50 a0 e1                                      mov r5, r0
0037d55c  10 00 90 e5                                      ldr r0, [r0, #0x10]
0037d560  00 00 56 e1                                      cmp r6, r0
0037d564  00 30 a0 93                                      movls r3, #0
0037d568  00 50 84 95                                      strls r5, [r4]
0037d56c  04 30 c4 95                                      strbls r3, [r4, #4]
0037d570  e2 ff ff 9a                                      bls #0x37d500
0037d574  0c 20 a0 e1                                      mov r2, ip
0037d578  08 00 8d e2                                      add r0, sp, #8
0037d57c  00 c0 a0 e3                                      mov ip, #0
0037d580  04 c0 8d e5                                      str ip, [sp, #4]
0037d584  00 c0 8d e5                                      str ip, [sp]
0037d588  78 ff ff eb                                      bl #0x37d370
0037d58c  08 30 9d e5                                      ldr r3, [sp, #8]
0037d590  01 20 a0 e3                                      mov r2, #1
0037d594  04 20 c4 e5                                      strb r2, [r4, #4]
0037d598  00 30 84 e5                                      str r3, [r4]
0037d59c  d7 ff ff ea                                      b #0x37d500
0037d5a0  04 20 9c e5                                      ldr r2, [ip, #4]
0037d5a4  08 00 92 e5                                      ldr r0, [r2, #8]
0037d5a8  00 00 5c e1                                      cmp ip, r0
0037d5ac  02 50 a0 11                                      movne r5, r2
0037d5b0  00 60 93 15                                      ldrne r6, [r3]
0037d5b4  10 00 92 15                                      ldrne r0, [r2, #0x10]
0037d5b8  01 00 00 0a                                      beq #0x37d5c4
0037d5bc  ca ff ff ea                                      b #0x37d4ec
0037d5c0  05 20 a0 e1                                      mov r2, r5
0037d5c4  04 50 92 e5                                      ldr r5, [r2, #4]
0037d5c8  08 00 95 e5                                      ldr r0, [r5, #8]
0037d5cc  02 00 50 e1                                      cmp r0, r2
0037d5d0  fa ff ff 0a                                      beq #0x37d5c0
0037d5d4  00 60 93 e5                                      ldr r6, [r3]
0037d5d8  10 00 95 e5                                      ldr r0, [r5, #0x10]
0037d5dc  c2 ff ff ea                                      b #0x37d4ec
0037d5e0  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0037d5e4  00 60 93 e5                                      ldr r6, [r3]
0037d5e8  02 50 a0 e1                                      mov r5, r2
0037d5ec  10 00 92 e5                                      ldr r0, [r2, #0x10]
0037d5f0  bd ff ff ea                                      b #0x37d4ec
0037d5f4  0c 20 a0 e1                                      mov r2, ip
0037d5f8  00 e0 a0 e3                                      mov lr, #0
0037d5fc  0c 00 8d e2                                      add r0, sp, #0xc
0037d600  00 50 8d e8                                      stm sp, {ip, lr}
0037d604  59 ff ff eb                                      bl #0x37d370
0037d608  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0037d60c  01 20 a0 e3                                      mov r2, #1
0037d610  04 20 c4 e5                                      strb r2, [r4, #4]
0037d614  00 30 84 e5                                      str r3, [r4]
0037d618  b8 ff ff ea                                      b #0x37d500

; FUNCTION 0x0037d61c, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, int>, std::priv::_Select1st<std::pair<unsigned int const, int> >, std::priv::_MapTraitsT<std::pair<unsigned int const, int> >, std::allocator<std::pair<unsigned int const, int> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, int>, std::priv::_MapTraitsT<std::pair<unsigned int const, int> > >, std::pair<unsigned int const, int> const&)
; decoder-mode: arm
0037d61c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0037d620  00 40 92 e5                                      ldr r4, [r2]
0037d624  08 20 91 e5                                      ldr r2, [r1, #8]
0037d628  2c d0 4d e2                                      sub sp, sp, #0x2c
0037d62c  01 50 a0 e1                                      mov r5, r1
0037d630  02 00 54 e1                                      cmp r4, r2
0037d634  00 70 a0 e1                                      mov r7, r0
0037d638  03 60 a0 e1                                      mov r6, r3
0037d63c  5a 00 00 0a                                      beq #0x37d7ac
0037d640  01 00 54 e1                                      cmp r4, r1
0037d644  78 00 00 0a                                      beq #0x37d82c
0037d648  00 30 d4 e5                                      ldrb r3, [r4]
0037d64c  00 00 53 e3                                      cmp r3, #0
0037d650  3a 00 00 0a                                      beq #0x37d740
0037d654  08 c0 94 e5                                      ldr ip, [r4, #8]
0037d658  00 00 5c e3                                      cmp ip, #0
0037d65c  01 00 00 1a                                      bne #0x37d668
0037d660  3e 00 00 ea                                      b #0x37d760
0037d664  03 c0 a0 e1                                      mov ip, r3
0037d668  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0037d66c  00 00 53 e3                                      cmp r3, #0
0037d670  fb ff ff 1a                                      bne #0x37d664
0037d674  00 20 96 e5                                      ldr r2, [r6]
0037d678  10 00 94 e5                                      ldr r0, [r4, #0x10]
0037d67c  00 00 52 e1                                      cmp r2, r0
0037d680  00 10 a0 23                                      movhs r1, #0
0037d684  01 10 a0 33                                      movlo r1, #1
0037d688  00 00 51 e3                                      cmp r1, #0
0037d68c  1b 00 00 1a                                      bne #0x37d700
0037d690  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0037d694  00 00 58 e3                                      cmp r8, #0
0037d698  7d 00 00 0a                                      beq #0x37d894
0037d69c  08 c0 a0 e1                                      mov ip, r8
0037d6a0  00 00 00 ea                                      b #0x37d6a8
0037d6a4  03 c0 a0 e1                                      mov ip, r3
0037d6a8  08 30 9c e5                                      ldr r3, [ip, #8]
0037d6ac  00 00 53 e3                                      cmp r3, #0
0037d6b0  fb ff ff 1a                                      bne #0x37d6a4
0037d6b4  00 00 51 e3                                      cmp r1, #0
0037d6b8  34 00 00 1a                                      bne #0x37d790
0037d6bc  00 00 52 e1                                      cmp r2, r0
0037d6c0  63 00 00 9a                                      bls #0x37d854
0037d6c4  0c 00 55 e1                                      cmp r5, ip
0037d6c8  02 00 00 0a                                      beq #0x37d6d8
0037d6cc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0037d6d0  03 00 52 e1                                      cmp r2, r3
0037d6d4  2d 00 00 2a                                      bhs #0x37d790
0037d6d8  00 00 58 e3                                      cmp r8, #0
0037d6dc  4a 00 00 1a                                      bne #0x37d80c
0037d6e0  05 10 a0 e1                                      mov r1, r5
0037d6e4  04 20 a0 e1                                      mov r2, r4
0037d6e8  06 30 a0 e1                                      mov r3, r6
0037d6ec  07 00 a0 e1                                      mov r0, r7
0037d6f0  00 80 8d e5                                      str r8, [sp]
0037d6f4  04 40 8d e5                                      str r4, [sp, #4]
0037d6f8  1c ff ff eb                                      bl #0x37d370
0037d6fc  0c 00 00 ea                                      b #0x37d734
0037d700  10 30 9c e5                                      ldr r3, [ip, #0x10]
0037d704  03 00 52 e1                                      cmp r2, r3
0037d708  e0 ff ff 9a                                      bls #0x37d690
0037d70c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0037d710  00 00 5e e3                                      cmp lr, #0
0037d714  56 00 00 0a                                      beq #0x37d874
0037d718  00 c0 a0 e3                                      mov ip, #0
0037d71c  05 10 a0 e1                                      mov r1, r5
0037d720  04 20 a0 e1                                      mov r2, r4
0037d724  06 30 a0 e1                                      mov r3, r6
0037d728  07 00 a0 e1                                      mov r0, r7
0037d72c  10 10 8d e8                                      stm sp, {r4, ip}
0037d730  0e ff ff eb                                      bl #0x37d370
0037d734  07 00 a0 e1                                      mov r0, r7
0037d738  2c d0 8d e2                                      add sp, sp, #0x2c
0037d73c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0037d740  04 30 94 e5                                      ldr r3, [r4, #4]
0037d744  04 30 93 e5                                      ldr r3, [r3, #4]
0037d748  03 00 54 e1                                      cmp r4, r3
0037d74c  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0037d750  c7 ff ff 0a                                      beq #0x37d674
0037d754  08 c0 94 e5                                      ldr ip, [r4, #8]
0037d758  00 00 5c e3                                      cmp ip, #0
0037d75c  c1 ff ff 1a                                      bne #0x37d668
0037d760  04 c0 94 e5                                      ldr ip, [r4, #4]
0037d764  08 30 9c e5                                      ldr r3, [ip, #8]
0037d768  03 00 54 e1                                      cmp r4, r3
0037d76c  01 00 00 0a                                      beq #0x37d778
0037d770  bf ff ff ea                                      b #0x37d674
0037d774  03 c0 a0 e1                                      mov ip, r3
0037d778  04 30 9c e5                                      ldr r3, [ip, #4]
0037d77c  08 20 93 e5                                      ldr r2, [r3, #8]
0037d780  0c 00 52 e1                                      cmp r2, ip
0037d784  fa ff ff 0a                                      beq #0x37d774
0037d788  03 c0 a0 e1                                      mov ip, r3
0037d78c  b8 ff ff ea                                      b #0x37d674
0037d790  05 10 a0 e1                                      mov r1, r5
0037d794  06 20 a0 e1                                      mov r2, r6
0037d798  08 00 8d e2                                      add r0, sp, #8
0037d79c  3c ff ff eb                                      bl #0x37d494
0037d7a0  08 30 9d e5                                      ldr r3, [sp, #8]
0037d7a4  00 30 87 e5                                      str r3, [r7]
0037d7a8  e1 ff ff ea                                      b #0x37d734
0037d7ac  10 20 91 e5                                      ldr r2, [r1, #0x10]
0037d7b0  00 00 52 e3                                      cmp r2, #0
0037d7b4  52 00 00 0a                                      beq #0x37d904
0037d7b8  00 20 93 e5                                      ldr r2, [r3]
0037d7bc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0037d7c0  0c 00 52 e1                                      cmp r2, ip
0037d7c4  54 00 00 3a                                      blo #0x37d91c
0037d7c8  21 00 00 9a                                      bls #0x37d854
0037d7cc  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0037d7d0  00 00 5e e3                                      cmp lr, #0
0037d7d4  3c 00 00 0a                                      beq #0x37d8cc
0037d7d8  0e c0 a0 e1                                      mov ip, lr
0037d7dc  00 00 00 ea                                      b #0x37d7e4
0037d7e0  03 c0 a0 e1                                      mov ip, r3
0037d7e4  08 30 9c e5                                      ldr r3, [ip, #8]
0037d7e8  00 00 53 e3                                      cmp r3, #0
0037d7ec  fb ff ff 1a                                      bne #0x37d7e0
0037d7f0  0c 00 55 e1                                      cmp r5, ip
0037d7f4  5c 00 00 0a                                      beq #0x37d96c
0037d7f8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0037d7fc  03 00 52 e1                                      cmp r2, r3
0037d800  4a 00 00 2a                                      bhs #0x37d930
0037d804  00 00 5e e3                                      cmp lr, #0
0037d808  4f 00 00 0a                                      beq #0x37d94c
0037d80c  00 e0 a0 e3                                      mov lr, #0
0037d810  05 10 a0 e1                                      mov r1, r5
0037d814  0c 20 a0 e1                                      mov r2, ip
0037d818  06 30 a0 e1                                      mov r3, r6
0037d81c  07 00 a0 e1                                      mov r0, r7
0037d820  00 50 8d e8                                      stm sp, {ip, lr}
0037d824  d1 fe ff eb                                      bl #0x37d370
0037d828  c1 ff ff ea                                      b #0x37d734
0037d82c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0037d830  00 c0 93 e5                                      ldr ip, [r3]
0037d834  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0037d838  0c 00 5e e1                                      cmp lr, ip
0037d83c  06 00 00 2a                                      bhs #0x37d85c
0037d840  00 c0 a0 e3                                      mov ip, #0
0037d844  00 c0 8d e5                                      str ip, [sp]
0037d848  04 40 8d e5                                      str r4, [sp, #4]
0037d84c  c7 fe ff eb                                      bl #0x37d370
0037d850  b7 ff ff ea                                      b #0x37d734
0037d854  00 40 87 e5                                      str r4, [r7]
0037d858  b5 ff ff ea                                      b #0x37d734
0037d85c  03 20 a0 e1                                      mov r2, r3
0037d860  10 00 8d e2                                      add r0, sp, #0x10
0037d864  0a ff ff eb                                      bl #0x37d494
0037d868  10 30 9d e5                                      ldr r3, [sp, #0x10]
0037d86c  00 30 87 e5                                      str r3, [r7]
0037d870  af ff ff ea                                      b #0x37d734
0037d874  05 10 a0 e1                                      mov r1, r5
0037d878  0c 20 a0 e1                                      mov r2, ip
0037d87c  06 30 a0 e1                                      mov r3, r6
0037d880  07 00 a0 e1                                      mov r0, r7
0037d884  00 e0 8d e5                                      str lr, [sp]
0037d888  04 c0 8d e5                                      str ip, [sp, #4]
0037d88c  b7 fe ff eb                                      bl #0x37d370
0037d890  a7 ff ff ea                                      b #0x37d734
0037d894  04 30 94 e5                                      ldr r3, [r4, #4]
0037d898  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0037d89c  0c 00 54 e1                                      cmp r4, ip
0037d8a0  04 c0 a0 11                                      movne ip, r4
0037d8a4  04 00 00 1a                                      bne #0x37d8bc
0037d8a8  03 c0 a0 e1                                      mov ip, r3
0037d8ac  04 30 93 e5                                      ldr r3, [r3, #4]
0037d8b0  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0037d8b4  0a 00 5c e1                                      cmp ip, sl
0037d8b8  fa ff ff 0a                                      beq #0x37d8a8
0037d8bc  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0037d8c0  0a 00 53 e1                                      cmp r3, sl
0037d8c4  03 c0 a0 11                                      movne ip, r3
0037d8c8  79 ff ff ea                                      b #0x37d6b4
0037d8cc  04 30 94 e5                                      ldr r3, [r4, #4]
0037d8d0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0037d8d4  01 00 54 e1                                      cmp r4, r1
0037d8d8  04 c0 a0 11                                      movne ip, r4
0037d8dc  04 00 00 1a                                      bne #0x37d8f4
0037d8e0  03 c0 a0 e1                                      mov ip, r3
0037d8e4  04 30 93 e5                                      ldr r3, [r3, #4]
0037d8e8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0037d8ec  0c 00 51 e1                                      cmp r1, ip
0037d8f0  fa ff ff 0a                                      beq #0x37d8e0
0037d8f4  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0037d8f8  01 00 53 e1                                      cmp r3, r1
0037d8fc  03 c0 a0 11                                      movne ip, r3
0037d900  ba ff ff ea                                      b #0x37d7f0
0037d904  03 20 a0 e1                                      mov r2, r3
0037d908  20 00 8d e2                                      add r0, sp, #0x20
0037d90c  e0 fe ff eb                                      bl #0x37d494
0037d910  20 30 9d e5                                      ldr r3, [sp, #0x20]
0037d914  00 30 87 e5                                      str r3, [r7]
0037d918  85 ff ff ea                                      b #0x37d734
0037d91c  00 c0 a0 e3                                      mov ip, #0
0037d920  04 20 a0 e1                                      mov r2, r4
0037d924  10 10 8d e8                                      stm sp, {r4, ip}
0037d928  90 fe ff eb                                      bl #0x37d370
0037d92c  80 ff ff ea                                      b #0x37d734
0037d930  05 10 a0 e1                                      mov r1, r5
0037d934  06 20 a0 e1                                      mov r2, r6
0037d938  18 00 8d e2                                      add r0, sp, #0x18
0037d93c  d4 fe ff eb                                      bl #0x37d494
0037d940  18 30 9d e5                                      ldr r3, [sp, #0x18]
0037d944  00 30 87 e5                                      str r3, [r7]
0037d948  79 ff ff ea                                      b #0x37d734
0037d94c  05 10 a0 e1                                      mov r1, r5
0037d950  04 20 a0 e1                                      mov r2, r4
0037d954  06 30 a0 e1                                      mov r3, r6
0037d958  07 00 a0 e1                                      mov r0, r7
0037d95c  00 e0 8d e5                                      str lr, [sp]
0037d960  04 40 8d e5                                      str r4, [sp, #4]
0037d964  81 fe ff eb                                      bl #0x37d370
0037d968  71 ff ff ea                                      b #0x37d734
0037d96c  00 c0 a0 e3                                      mov ip, #0
0037d970  05 10 a0 e1                                      mov r1, r5
0037d974  04 20 a0 e1                                      mov r2, r4
0037d978  06 30 a0 e1                                      mov r3, r6
0037d97c  07 00 a0 e1                                      mov r0, r7
0037d980  00 c0 8d e5                                      str ip, [sp]
0037d984  04 40 8d e5                                      str r4, [sp, #4]
0037d988  78 fe ff eb                                      bl #0x37d370
0037d98c  68 ff ff ea                                      b #0x37d734
