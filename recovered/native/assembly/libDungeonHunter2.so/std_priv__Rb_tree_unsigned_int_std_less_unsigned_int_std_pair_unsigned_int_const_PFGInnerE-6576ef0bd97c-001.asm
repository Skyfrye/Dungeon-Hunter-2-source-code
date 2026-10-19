; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c4e8, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjP12PFGInnerEdgeENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0051c4e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0051c4ec  00 40 51 e2                                      subs r4, r1, #0
0051c4f0  00 60 a0 e1                                      mov r6, r0
0051c4f4  08 00 00 0a                                      beq #0x51c51c
0051c4f8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0051c4fc  06 00 a0 e1                                      mov r0, r6
0051c500  f8 ff ff eb                                      bl #0x51c4e8
0051c504  08 50 94 e5                                      ldr r5, [r4, #8]
0051c508  04 00 a0 e1                                      mov r0, r4
0051c50c  18 10 a0 e3                                      mov r1, #0x18
0051c510  7a b2 07 eb                                      bl #0x708f00
0051c514  00 40 55 e2                                      subs r4, r5, #0
0051c518  f6 ff ff 1a                                      bne #0x51c4f8
0051c51c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0051e138, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjP12PFGInnerEdgeENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, PFGInnerEdge*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0051e138  02 00 51 e1                                      cmp r1, r2
0051e13c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051e140  01 40 a0 e1                                      mov r4, r1
0051e144  02 70 a0 e1                                      mov r7, r2
0051e148  00 50 a0 e1                                      mov r5, r0
0051e14c  03 80 a0 e1                                      mov r8, r3
0051e150  2e 00 00 0a                                      beq #0x51e210
0051e154  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0051e158  00 00 53 e3                                      cmp r3, #0
0051e15c  17 00 00 0a                                      beq #0x51e1c0
0051e160  04 00 a0 e1                                      mov r0, r4
0051e164  eb ff ff eb                                      bl #0x51e118
0051e168  00 20 98 e5                                      ldr r2, [r8]
0051e16c  00 30 a0 e3                                      mov r3, #0
0051e170  00 60 a0 e1                                      mov r6, r0
0051e174  10 20 80 e5                                      str r2, [r0, #0x10]
0051e178  04 20 98 e5                                      ldr r2, [r8, #4]
0051e17c  0c 30 80 e5                                      str r3, [r0, #0xc]
0051e180  08 30 80 e5                                      str r3, [r0, #8]
0051e184  14 20 80 e5                                      str r2, [r0, #0x14]
0051e188  0c 00 87 e5                                      str r0, [r7, #0xc]
0051e18c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0051e190  03 00 57 e1                                      cmp r7, r3
0051e194  1b 00 00 0a                                      beq #0x51e208
0051e198  06 00 a0 e1                                      mov r0, r6
0051e19c  04 70 86 e5                                      str r7, [r6, #4]
0051e1a0  04 10 84 e2                                      add r1, r4, #4
0051e1a4  6d d5 f7 eb                                      bl #0x313760
0051e1a8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051e1ac  05 00 a0 e1                                      mov r0, r5
0051e1b0  01 30 83 e2                                      add r3, r3, #1
0051e1b4  10 30 84 e5                                      str r3, [r4, #0x10]
0051e1b8  00 60 85 e5                                      str r6, [r5]
0051e1bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051e1c0  18 30 9d e5                                      ldr r3, [sp, #0x18]
0051e1c4  00 00 53 e3                                      cmp r3, #0
0051e1c8  1e 00 00 0a                                      beq #0x51e248
0051e1cc  04 00 a0 e1                                      mov r0, r4
0051e1d0  d0 ff ff eb                                      bl #0x51e118
0051e1d4  00 20 98 e5                                      ldr r2, [r8]
0051e1d8  00 30 a0 e3                                      mov r3, #0
0051e1dc  00 60 a0 e1                                      mov r6, r0
0051e1e0  10 20 80 e5                                      str r2, [r0, #0x10]
0051e1e4  04 20 98 e5                                      ldr r2, [r8, #4]
0051e1e8  0c 30 80 e5                                      str r3, [r0, #0xc]
0051e1ec  08 30 80 e5                                      str r3, [r0, #8]
0051e1f0  14 20 80 e5                                      str r2, [r0, #0x14]
0051e1f4  08 00 87 e5                                      str r0, [r7, #8]
0051e1f8  08 30 94 e5                                      ldr r3, [r4, #8]
0051e1fc  03 00 57 e1                                      cmp r7, r3
0051e200  08 00 84 05                                      streq r0, [r4, #8]
0051e204  e3 ff ff ea                                      b #0x51e198
0051e208  0c 60 84 e5                                      str r6, [r4, #0xc]
0051e20c  e1 ff ff ea                                      b #0x51e198
0051e210  01 00 a0 e1                                      mov r0, r1
0051e214  bf ff ff eb                                      bl #0x51e118
0051e218  00 20 98 e5                                      ldr r2, [r8]
0051e21c  00 30 a0 e3                                      mov r3, #0
0051e220  00 60 a0 e1                                      mov r6, r0
0051e224  10 20 80 e5                                      str r2, [r0, #0x10]
0051e228  04 20 98 e5                                      ldr r2, [r8, #4]
0051e22c  0c 30 80 e5                                      str r3, [r0, #0xc]
0051e230  08 30 80 e5                                      str r3, [r0, #8]
0051e234  14 20 80 e5                                      str r2, [r0, #0x14]
0051e238  08 00 84 e5                                      str r0, [r4, #8]
0051e23c  04 00 84 e5                                      str r0, [r4, #4]
0051e240  0c 00 84 e5                                      str r0, [r4, #0xc]
0051e244  d3 ff ff ea                                      b #0x51e198
0051e248  00 20 98 e5                                      ldr r2, [r8]
0051e24c  10 30 97 e5                                      ldr r3, [r7, #0x10]
0051e250  03 00 52 e1                                      cmp r2, r3
0051e254  c1 ff ff 2a                                      bhs #0x51e160
0051e258  db ff ff ea                                      b #0x51e1cc

; FUNCTION 0x0051e25c, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjP12PFGInnerEdgeENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >::insert_unique(std::pair<unsigned int const, PFGInnerEdge*> const&)
; decoder-mode: arm
0051e25c  70 40 2d e9                                      push {r4, r5, r6, lr}
0051e260  04 c0 91 e5                                      ldr ip, [r1, #4]
0051e264  10 d0 4d e2                                      sub sp, sp, #0x10
0051e268  00 40 a0 e1                                      mov r4, r0
0051e26c  00 00 5c e3                                      cmp ip, #0
0051e270  02 30 a0 e1                                      mov r3, r2
0051e274  01 c0 a0 01                                      moveq ip, r1
0051e278  15 00 00 0a                                      beq #0x51e2d4
0051e27c  00 60 92 e5                                      ldr r6, [r2]
0051e280  00 00 00 ea                                      b #0x51e288
0051e284  02 c0 a0 e1                                      mov ip, r2
0051e288  10 00 9c e5                                      ldr r0, [ip, #0x10]
0051e28c  01 50 a0 e3                                      mov r5, #1
0051e290  06 00 50 e1                                      cmp r0, r6
0051e294  08 20 9c 85                                      ldrhi r2, [ip, #8]
0051e298  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0051e29c  00 50 a0 93                                      movls r5, #0
0051e2a0  00 00 52 e3                                      cmp r2, #0
0051e2a4  f6 ff ff 1a                                      bne #0x51e284
0051e2a8  00 00 55 e3                                      cmp r5, #0
0051e2ac  0c 50 a0 01                                      moveq r5, ip
0051e2b0  07 00 00 1a                                      bne #0x51e2d4
0051e2b4  00 00 56 e1                                      cmp r6, r0
0051e2b8  00 30 a0 93                                      movls r3, #0
0051e2bc  00 50 84 95                                      strls r5, [r4]
0051e2c0  04 30 c4 95                                      strbls r3, [r4, #4]
0051e2c4  1c 00 00 8a                                      bhi #0x51e33c
0051e2c8  04 00 a0 e1                                      mov r0, r4
0051e2cc  10 d0 8d e2                                      add sp, sp, #0x10
0051e2d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051e2d4  08 20 91 e5                                      ldr r2, [r1, #8]
0051e2d8  02 00 5c e1                                      cmp ip, r2
0051e2dc  36 00 00 0a                                      beq #0x51e3bc
0051e2e0  00 20 dc e5                                      ldrb r2, [ip]
0051e2e4  00 00 52 e3                                      cmp r2, #0
0051e2e8  03 00 00 1a                                      bne #0x51e2fc
0051e2ec  04 20 9c e5                                      ldr r2, [ip, #4]
0051e2f0  04 20 92 e5                                      ldr r2, [r2, #4]
0051e2f4  02 00 5c e1                                      cmp ip, r2
0051e2f8  2a 00 00 0a                                      beq #0x51e3a8
0051e2fc  08 00 9c e5                                      ldr r0, [ip, #8]
0051e300  00 00 50 e3                                      cmp r0, #0
0051e304  01 00 00 1a                                      bne #0x51e310
0051e308  16 00 00 ea                                      b #0x51e368
0051e30c  02 00 a0 e1                                      mov r0, r2
0051e310  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0051e314  00 00 52 e3                                      cmp r2, #0
0051e318  fb ff ff 1a                                      bne #0x51e30c
0051e31c  00 60 93 e5                                      ldr r6, [r3]
0051e320  00 50 a0 e1                                      mov r5, r0
0051e324  10 00 90 e5                                      ldr r0, [r0, #0x10]
0051e328  00 00 56 e1                                      cmp r6, r0
0051e32c  00 30 a0 93                                      movls r3, #0
0051e330  00 50 84 95                                      strls r5, [r4]
0051e334  04 30 c4 95                                      strbls r3, [r4, #4]
0051e338  e2 ff ff 9a                                      bls #0x51e2c8
0051e33c  0c 20 a0 e1                                      mov r2, ip
0051e340  08 00 8d e2                                      add r0, sp, #8
0051e344  00 c0 a0 e3                                      mov ip, #0
0051e348  04 c0 8d e5                                      str ip, [sp, #4]
0051e34c  00 c0 8d e5                                      str ip, [sp]
0051e350  78 ff ff eb                                      bl #0x51e138
0051e354  08 30 9d e5                                      ldr r3, [sp, #8]
0051e358  01 20 a0 e3                                      mov r2, #1
0051e35c  04 20 c4 e5                                      strb r2, [r4, #4]
0051e360  00 30 84 e5                                      str r3, [r4]
0051e364  d7 ff ff ea                                      b #0x51e2c8
0051e368  04 20 9c e5                                      ldr r2, [ip, #4]
0051e36c  08 00 92 e5                                      ldr r0, [r2, #8]
0051e370  00 00 5c e1                                      cmp ip, r0
0051e374  02 50 a0 11                                      movne r5, r2
0051e378  00 60 93 15                                      ldrne r6, [r3]
0051e37c  10 00 92 15                                      ldrne r0, [r2, #0x10]
0051e380  01 00 00 0a                                      beq #0x51e38c
0051e384  ca ff ff ea                                      b #0x51e2b4
0051e388  05 20 a0 e1                                      mov r2, r5
0051e38c  04 50 92 e5                                      ldr r5, [r2, #4]
0051e390  08 00 95 e5                                      ldr r0, [r5, #8]
0051e394  02 00 50 e1                                      cmp r0, r2
0051e398  fa ff ff 0a                                      beq #0x51e388
0051e39c  00 60 93 e5                                      ldr r6, [r3]
0051e3a0  10 00 95 e5                                      ldr r0, [r5, #0x10]
0051e3a4  c2 ff ff ea                                      b #0x51e2b4
0051e3a8  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0051e3ac  00 60 93 e5                                      ldr r6, [r3]
0051e3b0  02 50 a0 e1                                      mov r5, r2
0051e3b4  10 00 92 e5                                      ldr r0, [r2, #0x10]
0051e3b8  bd ff ff ea                                      b #0x51e2b4
0051e3bc  0c 20 a0 e1                                      mov r2, ip
0051e3c0  00 e0 a0 e3                                      mov lr, #0
0051e3c4  0c 00 8d e2                                      add r0, sp, #0xc
0051e3c8  00 50 8d e8                                      stm sp, {ip, lr}
0051e3cc  59 ff ff eb                                      bl #0x51e138
0051e3d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051e3d4  01 20 a0 e3                                      mov r2, #1
0051e3d8  04 20 c4 e5                                      strb r2, [r4, #4]
0051e3dc  00 30 84 e5                                      str r3, [r4]
0051e3e0  b8 ff ff ea                                      b #0x51e2c8

; FUNCTION 0x0051e3e4, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjP12PFGInnerEdgeENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_Select1st<std::pair<unsigned int const, PFGInnerEdge*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> >, std::allocator<std::pair<unsigned int const, PFGInnerEdge*> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, PFGInnerEdge*>, std::priv::_MapTraitsT<std::pair<unsigned int const, PFGInnerEdge*> > >, std::pair<unsigned int const, PFGInnerEdge*> const&)
; decoder-mode: arm
0051e3e4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0051e3e8  00 40 92 e5                                      ldr r4, [r2]
0051e3ec  08 20 91 e5                                      ldr r2, [r1, #8]
0051e3f0  2c d0 4d e2                                      sub sp, sp, #0x2c
0051e3f4  01 50 a0 e1                                      mov r5, r1
0051e3f8  02 00 54 e1                                      cmp r4, r2
0051e3fc  00 70 a0 e1                                      mov r7, r0
0051e400  03 60 a0 e1                                      mov r6, r3
0051e404  5a 00 00 0a                                      beq #0x51e574
0051e408  01 00 54 e1                                      cmp r4, r1
0051e40c  78 00 00 0a                                      beq #0x51e5f4
0051e410  00 30 d4 e5                                      ldrb r3, [r4]
0051e414  00 00 53 e3                                      cmp r3, #0
0051e418  3a 00 00 0a                                      beq #0x51e508
0051e41c  08 c0 94 e5                                      ldr ip, [r4, #8]
0051e420  00 00 5c e3                                      cmp ip, #0
0051e424  01 00 00 1a                                      bne #0x51e430
0051e428  3e 00 00 ea                                      b #0x51e528
0051e42c  03 c0 a0 e1                                      mov ip, r3
0051e430  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0051e434  00 00 53 e3                                      cmp r3, #0
0051e438  fb ff ff 1a                                      bne #0x51e42c
0051e43c  00 20 96 e5                                      ldr r2, [r6]
0051e440  10 00 94 e5                                      ldr r0, [r4, #0x10]
0051e444  00 00 52 e1                                      cmp r2, r0
0051e448  00 10 a0 23                                      movhs r1, #0
0051e44c  01 10 a0 33                                      movlo r1, #1
0051e450  00 00 51 e3                                      cmp r1, #0
0051e454  1b 00 00 1a                                      bne #0x51e4c8
0051e458  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0051e45c  00 00 58 e3                                      cmp r8, #0
0051e460  7d 00 00 0a                                      beq #0x51e65c
0051e464  08 c0 a0 e1                                      mov ip, r8
0051e468  00 00 00 ea                                      b #0x51e470
0051e46c  03 c0 a0 e1                                      mov ip, r3
0051e470  08 30 9c e5                                      ldr r3, [ip, #8]
0051e474  00 00 53 e3                                      cmp r3, #0
0051e478  fb ff ff 1a                                      bne #0x51e46c
0051e47c  00 00 51 e3                                      cmp r1, #0
0051e480  34 00 00 1a                                      bne #0x51e558
0051e484  00 00 52 e1                                      cmp r2, r0
0051e488  63 00 00 9a                                      bls #0x51e61c
0051e48c  0c 00 55 e1                                      cmp r5, ip
0051e490  02 00 00 0a                                      beq #0x51e4a0
0051e494  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051e498  03 00 52 e1                                      cmp r2, r3
0051e49c  2d 00 00 2a                                      bhs #0x51e558
0051e4a0  00 00 58 e3                                      cmp r8, #0
0051e4a4  4a 00 00 1a                                      bne #0x51e5d4
0051e4a8  05 10 a0 e1                                      mov r1, r5
0051e4ac  04 20 a0 e1                                      mov r2, r4
0051e4b0  06 30 a0 e1                                      mov r3, r6
0051e4b4  07 00 a0 e1                                      mov r0, r7
0051e4b8  00 80 8d e5                                      str r8, [sp]
0051e4bc  04 40 8d e5                                      str r4, [sp, #4]
0051e4c0  1c ff ff eb                                      bl #0x51e138
0051e4c4  0c 00 00 ea                                      b #0x51e4fc
0051e4c8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051e4cc  03 00 52 e1                                      cmp r2, r3
0051e4d0  e0 ff ff 9a                                      bls #0x51e458
0051e4d4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0051e4d8  00 00 5e e3                                      cmp lr, #0
0051e4dc  56 00 00 0a                                      beq #0x51e63c
0051e4e0  00 c0 a0 e3                                      mov ip, #0
0051e4e4  05 10 a0 e1                                      mov r1, r5
0051e4e8  04 20 a0 e1                                      mov r2, r4
0051e4ec  06 30 a0 e1                                      mov r3, r6
0051e4f0  07 00 a0 e1                                      mov r0, r7
0051e4f4  10 10 8d e8                                      stm sp, {r4, ip}
0051e4f8  0e ff ff eb                                      bl #0x51e138
0051e4fc  07 00 a0 e1                                      mov r0, r7
0051e500  2c d0 8d e2                                      add sp, sp, #0x2c
0051e504  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0051e508  04 30 94 e5                                      ldr r3, [r4, #4]
0051e50c  04 30 93 e5                                      ldr r3, [r3, #4]
0051e510  03 00 54 e1                                      cmp r4, r3
0051e514  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0051e518  c7 ff ff 0a                                      beq #0x51e43c
0051e51c  08 c0 94 e5                                      ldr ip, [r4, #8]
0051e520  00 00 5c e3                                      cmp ip, #0
0051e524  c1 ff ff 1a                                      bne #0x51e430
0051e528  04 c0 94 e5                                      ldr ip, [r4, #4]
0051e52c  08 30 9c e5                                      ldr r3, [ip, #8]
0051e530  03 00 54 e1                                      cmp r4, r3
0051e534  01 00 00 0a                                      beq #0x51e540
0051e538  bf ff ff ea                                      b #0x51e43c
0051e53c  03 c0 a0 e1                                      mov ip, r3
0051e540  04 30 9c e5                                      ldr r3, [ip, #4]
0051e544  08 20 93 e5                                      ldr r2, [r3, #8]
0051e548  0c 00 52 e1                                      cmp r2, ip
0051e54c  fa ff ff 0a                                      beq #0x51e53c
0051e550  03 c0 a0 e1                                      mov ip, r3
0051e554  b8 ff ff ea                                      b #0x51e43c
0051e558  05 10 a0 e1                                      mov r1, r5
0051e55c  06 20 a0 e1                                      mov r2, r6
0051e560  08 00 8d e2                                      add r0, sp, #8
0051e564  3c ff ff eb                                      bl #0x51e25c
0051e568  08 30 9d e5                                      ldr r3, [sp, #8]
0051e56c  00 30 87 e5                                      str r3, [r7]
0051e570  e1 ff ff ea                                      b #0x51e4fc
0051e574  10 20 91 e5                                      ldr r2, [r1, #0x10]
0051e578  00 00 52 e3                                      cmp r2, #0
0051e57c  52 00 00 0a                                      beq #0x51e6cc
0051e580  00 20 93 e5                                      ldr r2, [r3]
0051e584  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0051e588  0c 00 52 e1                                      cmp r2, ip
0051e58c  54 00 00 3a                                      blo #0x51e6e4
0051e590  21 00 00 9a                                      bls #0x51e61c
0051e594  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0051e598  00 00 5e e3                                      cmp lr, #0
0051e59c  3c 00 00 0a                                      beq #0x51e694
0051e5a0  0e c0 a0 e1                                      mov ip, lr
0051e5a4  00 00 00 ea                                      b #0x51e5ac
0051e5a8  03 c0 a0 e1                                      mov ip, r3
0051e5ac  08 30 9c e5                                      ldr r3, [ip, #8]
0051e5b0  00 00 53 e3                                      cmp r3, #0
0051e5b4  fb ff ff 1a                                      bne #0x51e5a8
0051e5b8  0c 00 55 e1                                      cmp r5, ip
0051e5bc  5c 00 00 0a                                      beq #0x51e734
0051e5c0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051e5c4  03 00 52 e1                                      cmp r2, r3
0051e5c8  4a 00 00 2a                                      bhs #0x51e6f8
0051e5cc  00 00 5e e3                                      cmp lr, #0
0051e5d0  4f 00 00 0a                                      beq #0x51e714
0051e5d4  00 e0 a0 e3                                      mov lr, #0
0051e5d8  05 10 a0 e1                                      mov r1, r5
0051e5dc  0c 20 a0 e1                                      mov r2, ip
0051e5e0  06 30 a0 e1                                      mov r3, r6
0051e5e4  07 00 a0 e1                                      mov r0, r7
0051e5e8  00 50 8d e8                                      stm sp, {ip, lr}
0051e5ec  d1 fe ff eb                                      bl #0x51e138
0051e5f0  c1 ff ff ea                                      b #0x51e4fc
0051e5f4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0051e5f8  00 c0 93 e5                                      ldr ip, [r3]
0051e5fc  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0051e600  0c 00 5e e1                                      cmp lr, ip
0051e604  06 00 00 2a                                      bhs #0x51e624
0051e608  00 c0 a0 e3                                      mov ip, #0
0051e60c  00 c0 8d e5                                      str ip, [sp]
0051e610  04 40 8d e5                                      str r4, [sp, #4]
0051e614  c7 fe ff eb                                      bl #0x51e138
0051e618  b7 ff ff ea                                      b #0x51e4fc
0051e61c  00 40 87 e5                                      str r4, [r7]
0051e620  b5 ff ff ea                                      b #0x51e4fc
0051e624  03 20 a0 e1                                      mov r2, r3
0051e628  10 00 8d e2                                      add r0, sp, #0x10
0051e62c  0a ff ff eb                                      bl #0x51e25c
0051e630  10 30 9d e5                                      ldr r3, [sp, #0x10]
0051e634  00 30 87 e5                                      str r3, [r7]
0051e638  af ff ff ea                                      b #0x51e4fc
0051e63c  05 10 a0 e1                                      mov r1, r5
0051e640  0c 20 a0 e1                                      mov r2, ip
0051e644  06 30 a0 e1                                      mov r3, r6
0051e648  07 00 a0 e1                                      mov r0, r7
0051e64c  00 e0 8d e5                                      str lr, [sp]
0051e650  04 c0 8d e5                                      str ip, [sp, #4]
0051e654  b7 fe ff eb                                      bl #0x51e138
0051e658  a7 ff ff ea                                      b #0x51e4fc
0051e65c  04 30 94 e5                                      ldr r3, [r4, #4]
0051e660  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0051e664  0c 00 54 e1                                      cmp r4, ip
0051e668  04 c0 a0 11                                      movne ip, r4
0051e66c  04 00 00 1a                                      bne #0x51e684
0051e670  03 c0 a0 e1                                      mov ip, r3
0051e674  04 30 93 e5                                      ldr r3, [r3, #4]
0051e678  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0051e67c  0a 00 5c e1                                      cmp ip, sl
0051e680  fa ff ff 0a                                      beq #0x51e670
0051e684  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0051e688  0a 00 53 e1                                      cmp r3, sl
0051e68c  03 c0 a0 11                                      movne ip, r3
0051e690  79 ff ff ea                                      b #0x51e47c
0051e694  04 30 94 e5                                      ldr r3, [r4, #4]
0051e698  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0051e69c  01 00 54 e1                                      cmp r4, r1
0051e6a0  04 c0 a0 11                                      movne ip, r4
0051e6a4  04 00 00 1a                                      bne #0x51e6bc
0051e6a8  03 c0 a0 e1                                      mov ip, r3
0051e6ac  04 30 93 e5                                      ldr r3, [r3, #4]
0051e6b0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0051e6b4  0c 00 51 e1                                      cmp r1, ip
0051e6b8  fa ff ff 0a                                      beq #0x51e6a8
0051e6bc  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0051e6c0  01 00 53 e1                                      cmp r3, r1
0051e6c4  03 c0 a0 11                                      movne ip, r3
0051e6c8  ba ff ff ea                                      b #0x51e5b8
0051e6cc  03 20 a0 e1                                      mov r2, r3
0051e6d0  20 00 8d e2                                      add r0, sp, #0x20
0051e6d4  e0 fe ff eb                                      bl #0x51e25c
0051e6d8  20 30 9d e5                                      ldr r3, [sp, #0x20]
0051e6dc  00 30 87 e5                                      str r3, [r7]
0051e6e0  85 ff ff ea                                      b #0x51e4fc
0051e6e4  00 c0 a0 e3                                      mov ip, #0
0051e6e8  04 20 a0 e1                                      mov r2, r4
0051e6ec  10 10 8d e8                                      stm sp, {r4, ip}
0051e6f0  90 fe ff eb                                      bl #0x51e138
0051e6f4  80 ff ff ea                                      b #0x51e4fc
0051e6f8  05 10 a0 e1                                      mov r1, r5
0051e6fc  06 20 a0 e1                                      mov r2, r6
0051e700  18 00 8d e2                                      add r0, sp, #0x18
0051e704  d4 fe ff eb                                      bl #0x51e25c
0051e708  18 30 9d e5                                      ldr r3, [sp, #0x18]
0051e70c  00 30 87 e5                                      str r3, [r7]
0051e710  79 ff ff ea                                      b #0x51e4fc
0051e714  05 10 a0 e1                                      mov r1, r5
0051e718  04 20 a0 e1                                      mov r2, r4
0051e71c  06 30 a0 e1                                      mov r3, r6
0051e720  07 00 a0 e1                                      mov r0, r7
0051e724  00 e0 8d e5                                      str lr, [sp]
0051e728  04 40 8d e5                                      str r4, [sp, #4]
0051e72c  81 fe ff eb                                      bl #0x51e138
0051e730  71 ff ff ea                                      b #0x51e4fc
0051e734  00 c0 a0 e3                                      mov ip, #0
0051e738  05 10 a0 e1                                      mov r1, r5
0051e73c  04 20 a0 e1                                      mov r2, r4
0051e740  06 30 a0 e1                                      mov r3, r6
0051e744  07 00 a0 e1                                      mov r0, r7
0051e748  00 c0 8d e5                                      str ip, [sp]
0051e74c  04 40 8d e5                                      str r4, [sp, #4]
0051e750  78 fe ff eb                                      bl #0x51e138
0051e754  68 ff ff ea                                      b #0x51e4fc
