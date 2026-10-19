; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0058a100, declared_size=136, range_size=136, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5scene12SBatchConfigEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE14_M_create_nodeERKS8_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >::_M_create_node(std::pair<unsigned int const, glitch::scene::SBatchConfig> const&)
; decoder-mode: arm
0058a100  70 40 2d e9                                      push {r4, r5, r6, lr}
0058a104  08 d0 4d e2                                      sub sp, sp, #8
0058a108  08 00 8d e2                                      add r0, sp, #8
0058a10c  40 30 a0 e3                                      mov r3, #0x40
0058a110  04 30 20 e5                                      str r3, [r0, #-4]!
0058a114  01 60 a0 e1                                      mov r6, r1
0058a118  68 fb 05 eb                                      bl #0x708ec0
0058a11c  00 30 96 e5                                      ldr r3, [r6]
0058a120  18 c0 80 e2                                      add ip, r0, #0x18
0058a124  08 40 86 e2                                      add r4, r6, #8
0058a128  10 30 80 e5                                      str r3, [r0, #0x10]
0058a12c  04 30 96 e5                                      ldr r3, [r6, #4]
0058a130  00 50 a0 e1                                      mov r5, r0
0058a134  14 30 80 e5                                      str r3, [r0, #0x14]
0058a138  00 00 53 e3                                      cmp r3, #0
0058a13c  00 20 93 15                                      ldrne r2, [r3]
0058a140  01 20 82 12                                      addne r2, r2, #1
0058a144  00 20 83 15                                      strne r2, [r3]
0058a148  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0058a14c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0058a150  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0058a154  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0058a158  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
0058a15c  05 00 a0 e1                                      mov r0, r5
0058a160  00 00 53 e3                                      cmp r3, #0
0058a164  3c 30 85 e5                                      str r3, [r5, #0x3c]
0058a168  04 20 93 15                                      ldrne r2, [r3, #4]
0058a16c  01 20 82 12                                      addne r2, r2, #1
0058a170  04 20 83 15                                      strne r2, [r3, #4]
0058a174  00 30 a0 e3                                      mov r3, #0
0058a178  0c 30 85 e5                                      str r3, [r5, #0xc]
0058a17c  08 30 85 e5                                      str r3, [r5, #8]
0058a180  08 d0 8d e2                                      add sp, sp, #8
0058a184  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058a188, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5scene12SBatchConfigEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, glitch::scene::SBatchConfig> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0058a188  02 00 51 e1                                      cmp r1, r2
0058a18c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058a190  01 40 a0 e1                                      mov r4, r1
0058a194  02 50 a0 e1                                      mov r5, r2
0058a198  00 60 a0 e1                                      mov r6, r0
0058a19c  22 00 00 0a                                      beq #0x58a22c
0058a1a0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0058a1a4  00 00 52 e3                                      cmp r2, #0
0058a1a8  11 00 00 0a                                      beq #0x58a1f4
0058a1ac  03 10 a0 e1                                      mov r1, r3
0058a1b0  04 00 a0 e1                                      mov r0, r4
0058a1b4  d1 ff ff eb                                      bl #0x58a100
0058a1b8  0c 00 85 e5                                      str r0, [r5, #0xc]
0058a1bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0058a1c0  00 70 a0 e1                                      mov r7, r0
0058a1c4  03 00 55 e1                                      cmp r5, r3
0058a1c8  15 00 00 0a                                      beq #0x58a224
0058a1cc  07 00 a0 e1                                      mov r0, r7
0058a1d0  04 50 87 e5                                      str r5, [r7, #4]
0058a1d4  04 10 84 e2                                      add r1, r4, #4
0058a1d8  60 25 f6 eb                                      bl #0x313760
0058a1dc  10 30 94 e5                                      ldr r3, [r4, #0x10]
0058a1e0  06 00 a0 e1                                      mov r0, r6
0058a1e4  01 30 83 e2                                      add r3, r3, #1
0058a1e8  10 30 84 e5                                      str r3, [r4, #0x10]
0058a1ec  00 70 86 e5                                      str r7, [r6]
0058a1f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058a1f4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0058a1f8  00 00 52 e3                                      cmp r2, #0
0058a1fc  12 00 00 0a                                      beq #0x58a24c
0058a200  03 10 a0 e1                                      mov r1, r3
0058a204  04 00 a0 e1                                      mov r0, r4
0058a208  bc ff ff eb                                      bl #0x58a100
0058a20c  08 00 85 e5                                      str r0, [r5, #8]
0058a210  08 30 94 e5                                      ldr r3, [r4, #8]
0058a214  00 70 a0 e1                                      mov r7, r0
0058a218  03 00 55 e1                                      cmp r5, r3
0058a21c  08 00 84 05                                      streq r0, [r4, #8]
0058a220  e9 ff ff ea                                      b #0x58a1cc
0058a224  0c 70 84 e5                                      str r7, [r4, #0xc]
0058a228  e7 ff ff ea                                      b #0x58a1cc
0058a22c  03 10 a0 e1                                      mov r1, r3
0058a230  04 00 a0 e1                                      mov r0, r4
0058a234  b1 ff ff eb                                      bl #0x58a100
0058a238  00 70 a0 e1                                      mov r7, r0
0058a23c  08 00 84 e5                                      str r0, [r4, #8]
0058a240  04 00 84 e5                                      str r0, [r4, #4]
0058a244  0c 00 84 e5                                      str r0, [r4, #0xc]
0058a248  df ff ff ea                                      b #0x58a1cc
0058a24c  00 10 93 e5                                      ldr r1, [r3]
0058a250  10 20 95 e5                                      ldr r2, [r5, #0x10]
0058a254  02 00 51 e1                                      cmp r1, r2
0058a258  d3 ff ff 2a                                      bhs #0x58a1ac
0058a25c  e7 ff ff ea                                      b #0x58a200

; FUNCTION 0x0058a260, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5scene12SBatchConfigEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >::insert_unique(std::pair<unsigned int const, glitch::scene::SBatchConfig> const&)
; decoder-mode: arm
0058a260  70 40 2d e9                                      push {r4, r5, r6, lr}
0058a264  04 c0 91 e5                                      ldr ip, [r1, #4]
0058a268  10 d0 4d e2                                      sub sp, sp, #0x10
0058a26c  00 40 a0 e1                                      mov r4, r0
0058a270  00 00 5c e3                                      cmp ip, #0
0058a274  02 30 a0 e1                                      mov r3, r2
0058a278  01 c0 a0 01                                      moveq ip, r1
0058a27c  15 00 00 0a                                      beq #0x58a2d8
0058a280  00 60 92 e5                                      ldr r6, [r2]
0058a284  00 00 00 ea                                      b #0x58a28c
0058a288  02 c0 a0 e1                                      mov ip, r2
0058a28c  10 00 9c e5                                      ldr r0, [ip, #0x10]
0058a290  01 50 a0 e3                                      mov r5, #1
0058a294  06 00 50 e1                                      cmp r0, r6
0058a298  08 20 9c 85                                      ldrhi r2, [ip, #8]
0058a29c  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0058a2a0  00 50 a0 93                                      movls r5, #0
0058a2a4  00 00 52 e3                                      cmp r2, #0
0058a2a8  f6 ff ff 1a                                      bne #0x58a288
0058a2ac  00 00 55 e3                                      cmp r5, #0
0058a2b0  0c 50 a0 01                                      moveq r5, ip
0058a2b4  07 00 00 1a                                      bne #0x58a2d8
0058a2b8  00 00 56 e1                                      cmp r6, r0
0058a2bc  00 30 a0 93                                      movls r3, #0
0058a2c0  00 50 84 95                                      strls r5, [r4]
0058a2c4  04 30 c4 95                                      strbls r3, [r4, #4]
0058a2c8  1c 00 00 8a                                      bhi #0x58a340
0058a2cc  04 00 a0 e1                                      mov r0, r4
0058a2d0  10 d0 8d e2                                      add sp, sp, #0x10
0058a2d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058a2d8  08 20 91 e5                                      ldr r2, [r1, #8]
0058a2dc  02 00 5c e1                                      cmp ip, r2
0058a2e0  36 00 00 0a                                      beq #0x58a3c0
0058a2e4  00 20 dc e5                                      ldrb r2, [ip]
0058a2e8  00 00 52 e3                                      cmp r2, #0
0058a2ec  03 00 00 1a                                      bne #0x58a300
0058a2f0  04 20 9c e5                                      ldr r2, [ip, #4]
0058a2f4  04 20 92 e5                                      ldr r2, [r2, #4]
0058a2f8  02 00 5c e1                                      cmp ip, r2
0058a2fc  2a 00 00 0a                                      beq #0x58a3ac
0058a300  08 00 9c e5                                      ldr r0, [ip, #8]
0058a304  00 00 50 e3                                      cmp r0, #0
0058a308  01 00 00 1a                                      bne #0x58a314
0058a30c  16 00 00 ea                                      b #0x58a36c
0058a310  02 00 a0 e1                                      mov r0, r2
0058a314  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0058a318  00 00 52 e3                                      cmp r2, #0
0058a31c  fb ff ff 1a                                      bne #0x58a310
0058a320  00 60 93 e5                                      ldr r6, [r3]
0058a324  00 50 a0 e1                                      mov r5, r0
0058a328  10 00 90 e5                                      ldr r0, [r0, #0x10]
0058a32c  00 00 56 e1                                      cmp r6, r0
0058a330  00 30 a0 93                                      movls r3, #0
0058a334  00 50 84 95                                      strls r5, [r4]
0058a338  04 30 c4 95                                      strbls r3, [r4, #4]
0058a33c  e2 ff ff 9a                                      bls #0x58a2cc
0058a340  0c 20 a0 e1                                      mov r2, ip
0058a344  08 00 8d e2                                      add r0, sp, #8
0058a348  00 c0 a0 e3                                      mov ip, #0
0058a34c  04 c0 8d e5                                      str ip, [sp, #4]
0058a350  00 c0 8d e5                                      str ip, [sp]
0058a354  8b ff ff eb                                      bl #0x58a188
0058a358  08 30 9d e5                                      ldr r3, [sp, #8]
0058a35c  01 20 a0 e3                                      mov r2, #1
0058a360  04 20 c4 e5                                      strb r2, [r4, #4]
0058a364  00 30 84 e5                                      str r3, [r4]
0058a368  d7 ff ff ea                                      b #0x58a2cc
0058a36c  04 20 9c e5                                      ldr r2, [ip, #4]
0058a370  08 00 92 e5                                      ldr r0, [r2, #8]
0058a374  00 00 5c e1                                      cmp ip, r0
0058a378  02 50 a0 11                                      movne r5, r2
0058a37c  00 60 93 15                                      ldrne r6, [r3]
0058a380  10 00 92 15                                      ldrne r0, [r2, #0x10]
0058a384  01 00 00 0a                                      beq #0x58a390
0058a388  ca ff ff ea                                      b #0x58a2b8
0058a38c  05 20 a0 e1                                      mov r2, r5
0058a390  04 50 92 e5                                      ldr r5, [r2, #4]
0058a394  08 00 95 e5                                      ldr r0, [r5, #8]
0058a398  02 00 50 e1                                      cmp r0, r2
0058a39c  fa ff ff 0a                                      beq #0x58a38c
0058a3a0  00 60 93 e5                                      ldr r6, [r3]
0058a3a4  10 00 95 e5                                      ldr r0, [r5, #0x10]
0058a3a8  c2 ff ff ea                                      b #0x58a2b8
0058a3ac  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0058a3b0  00 60 93 e5                                      ldr r6, [r3]
0058a3b4  02 50 a0 e1                                      mov r5, r2
0058a3b8  10 00 92 e5                                      ldr r0, [r2, #0x10]
0058a3bc  bd ff ff ea                                      b #0x58a2b8
0058a3c0  0c 20 a0 e1                                      mov r2, ip
0058a3c4  00 e0 a0 e3                                      mov lr, #0
0058a3c8  0c 00 8d e2                                      add r0, sp, #0xc
0058a3cc  00 50 8d e8                                      stm sp, {ip, lr}
0058a3d0  6c ff ff eb                                      bl #0x58a188
0058a3d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058a3d8  01 20 a0 e3                                      mov r2, #1
0058a3dc  04 20 c4 e5                                      strb r2, [r4, #4]
0058a3e0  00 30 84 e5                                      str r3, [r4]
0058a3e4  b8 ff ff ea                                      b #0x58a2cc

; FUNCTION 0x0058a3e8, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5scene12SBatchConfigEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >, std::pair<unsigned int const, glitch::scene::SBatchConfig> const&)
; decoder-mode: arm
0058a3e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0058a3ec  00 40 92 e5                                      ldr r4, [r2]
0058a3f0  08 20 91 e5                                      ldr r2, [r1, #8]
0058a3f4  2c d0 4d e2                                      sub sp, sp, #0x2c
0058a3f8  01 50 a0 e1                                      mov r5, r1
0058a3fc  02 00 54 e1                                      cmp r4, r2
0058a400  00 70 a0 e1                                      mov r7, r0
0058a404  03 60 a0 e1                                      mov r6, r3
0058a408  5a 00 00 0a                                      beq #0x58a578
0058a40c  01 00 54 e1                                      cmp r4, r1
0058a410  78 00 00 0a                                      beq #0x58a5f8
0058a414  00 30 d4 e5                                      ldrb r3, [r4]
0058a418  00 00 53 e3                                      cmp r3, #0
0058a41c  3a 00 00 0a                                      beq #0x58a50c
0058a420  08 c0 94 e5                                      ldr ip, [r4, #8]
0058a424  00 00 5c e3                                      cmp ip, #0
0058a428  01 00 00 1a                                      bne #0x58a434
0058a42c  3e 00 00 ea                                      b #0x58a52c
0058a430  03 c0 a0 e1                                      mov ip, r3
0058a434  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0058a438  00 00 53 e3                                      cmp r3, #0
0058a43c  fb ff ff 1a                                      bne #0x58a430
0058a440  00 20 96 e5                                      ldr r2, [r6]
0058a444  10 00 94 e5                                      ldr r0, [r4, #0x10]
0058a448  00 00 52 e1                                      cmp r2, r0
0058a44c  00 10 a0 23                                      movhs r1, #0
0058a450  01 10 a0 33                                      movlo r1, #1
0058a454  00 00 51 e3                                      cmp r1, #0
0058a458  1b 00 00 1a                                      bne #0x58a4cc
0058a45c  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0058a460  00 00 58 e3                                      cmp r8, #0
0058a464  7d 00 00 0a                                      beq #0x58a660
0058a468  08 c0 a0 e1                                      mov ip, r8
0058a46c  00 00 00 ea                                      b #0x58a474
0058a470  03 c0 a0 e1                                      mov ip, r3
0058a474  08 30 9c e5                                      ldr r3, [ip, #8]
0058a478  00 00 53 e3                                      cmp r3, #0
0058a47c  fb ff ff 1a                                      bne #0x58a470
0058a480  00 00 51 e3                                      cmp r1, #0
0058a484  34 00 00 1a                                      bne #0x58a55c
0058a488  00 00 52 e1                                      cmp r2, r0
0058a48c  63 00 00 9a                                      bls #0x58a620
0058a490  0c 00 55 e1                                      cmp r5, ip
0058a494  02 00 00 0a                                      beq #0x58a4a4
0058a498  10 30 9c e5                                      ldr r3, [ip, #0x10]
0058a49c  03 00 52 e1                                      cmp r2, r3
0058a4a0  2d 00 00 2a                                      bhs #0x58a55c
0058a4a4  00 00 58 e3                                      cmp r8, #0
0058a4a8  4a 00 00 1a                                      bne #0x58a5d8
0058a4ac  05 10 a0 e1                                      mov r1, r5
0058a4b0  04 20 a0 e1                                      mov r2, r4
0058a4b4  06 30 a0 e1                                      mov r3, r6
0058a4b8  07 00 a0 e1                                      mov r0, r7
0058a4bc  00 80 8d e5                                      str r8, [sp]
0058a4c0  04 40 8d e5                                      str r4, [sp, #4]
0058a4c4  2f ff ff eb                                      bl #0x58a188
0058a4c8  0c 00 00 ea                                      b #0x58a500
0058a4cc  10 30 9c e5                                      ldr r3, [ip, #0x10]
0058a4d0  03 00 52 e1                                      cmp r2, r3
0058a4d4  e0 ff ff 9a                                      bls #0x58a45c
0058a4d8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0058a4dc  00 00 5e e3                                      cmp lr, #0
0058a4e0  56 00 00 0a                                      beq #0x58a640
0058a4e4  00 c0 a0 e3                                      mov ip, #0
0058a4e8  05 10 a0 e1                                      mov r1, r5
0058a4ec  04 20 a0 e1                                      mov r2, r4
0058a4f0  06 30 a0 e1                                      mov r3, r6
0058a4f4  07 00 a0 e1                                      mov r0, r7
0058a4f8  10 10 8d e8                                      stm sp, {r4, ip}
0058a4fc  21 ff ff eb                                      bl #0x58a188
0058a500  07 00 a0 e1                                      mov r0, r7
0058a504  2c d0 8d e2                                      add sp, sp, #0x2c
0058a508  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0058a50c  04 30 94 e5                                      ldr r3, [r4, #4]
0058a510  04 30 93 e5                                      ldr r3, [r3, #4]
0058a514  03 00 54 e1                                      cmp r4, r3
0058a518  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0058a51c  c7 ff ff 0a                                      beq #0x58a440
0058a520  08 c0 94 e5                                      ldr ip, [r4, #8]
0058a524  00 00 5c e3                                      cmp ip, #0
0058a528  c1 ff ff 1a                                      bne #0x58a434
0058a52c  04 c0 94 e5                                      ldr ip, [r4, #4]
0058a530  08 30 9c e5                                      ldr r3, [ip, #8]
0058a534  03 00 54 e1                                      cmp r4, r3
0058a538  01 00 00 0a                                      beq #0x58a544
0058a53c  bf ff ff ea                                      b #0x58a440
0058a540  03 c0 a0 e1                                      mov ip, r3
0058a544  04 30 9c e5                                      ldr r3, [ip, #4]
0058a548  08 20 93 e5                                      ldr r2, [r3, #8]
0058a54c  0c 00 52 e1                                      cmp r2, ip
0058a550  fa ff ff 0a                                      beq #0x58a540
0058a554  03 c0 a0 e1                                      mov ip, r3
0058a558  b8 ff ff ea                                      b #0x58a440
0058a55c  05 10 a0 e1                                      mov r1, r5
0058a560  06 20 a0 e1                                      mov r2, r6
0058a564  08 00 8d e2                                      add r0, sp, #8
0058a568  3c ff ff eb                                      bl #0x58a260
0058a56c  08 30 9d e5                                      ldr r3, [sp, #8]
0058a570  00 30 87 e5                                      str r3, [r7]
0058a574  e1 ff ff ea                                      b #0x58a500
0058a578  10 20 91 e5                                      ldr r2, [r1, #0x10]
0058a57c  00 00 52 e3                                      cmp r2, #0
0058a580  52 00 00 0a                                      beq #0x58a6d0
0058a584  00 20 93 e5                                      ldr r2, [r3]
0058a588  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0058a58c  0c 00 52 e1                                      cmp r2, ip
0058a590  54 00 00 3a                                      blo #0x58a6e8
0058a594  21 00 00 9a                                      bls #0x58a620
0058a598  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0058a59c  00 00 5e e3                                      cmp lr, #0
0058a5a0  3c 00 00 0a                                      beq #0x58a698
0058a5a4  0e c0 a0 e1                                      mov ip, lr
0058a5a8  00 00 00 ea                                      b #0x58a5b0
0058a5ac  03 c0 a0 e1                                      mov ip, r3
0058a5b0  08 30 9c e5                                      ldr r3, [ip, #8]
0058a5b4  00 00 53 e3                                      cmp r3, #0
0058a5b8  fb ff ff 1a                                      bne #0x58a5ac
0058a5bc  0c 00 55 e1                                      cmp r5, ip
0058a5c0  5c 00 00 0a                                      beq #0x58a738
0058a5c4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0058a5c8  03 00 52 e1                                      cmp r2, r3
0058a5cc  4a 00 00 2a                                      bhs #0x58a6fc
0058a5d0  00 00 5e e3                                      cmp lr, #0
0058a5d4  4f 00 00 0a                                      beq #0x58a718
0058a5d8  00 e0 a0 e3                                      mov lr, #0
0058a5dc  05 10 a0 e1                                      mov r1, r5
0058a5e0  0c 20 a0 e1                                      mov r2, ip
0058a5e4  06 30 a0 e1                                      mov r3, r6
0058a5e8  07 00 a0 e1                                      mov r0, r7
0058a5ec  00 50 8d e8                                      stm sp, {ip, lr}
0058a5f0  e4 fe ff eb                                      bl #0x58a188
0058a5f4  c1 ff ff ea                                      b #0x58a500
0058a5f8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0058a5fc  00 c0 93 e5                                      ldr ip, [r3]
0058a600  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0058a604  0c 00 5e e1                                      cmp lr, ip
0058a608  06 00 00 2a                                      bhs #0x58a628
0058a60c  00 c0 a0 e3                                      mov ip, #0
0058a610  00 c0 8d e5                                      str ip, [sp]
0058a614  04 40 8d e5                                      str r4, [sp, #4]
0058a618  da fe ff eb                                      bl #0x58a188
0058a61c  b7 ff ff ea                                      b #0x58a500
0058a620  00 40 87 e5                                      str r4, [r7]
0058a624  b5 ff ff ea                                      b #0x58a500
0058a628  03 20 a0 e1                                      mov r2, r3
0058a62c  10 00 8d e2                                      add r0, sp, #0x10
0058a630  0a ff ff eb                                      bl #0x58a260
0058a634  10 30 9d e5                                      ldr r3, [sp, #0x10]
0058a638  00 30 87 e5                                      str r3, [r7]
0058a63c  af ff ff ea                                      b #0x58a500
0058a640  05 10 a0 e1                                      mov r1, r5
0058a644  0c 20 a0 e1                                      mov r2, ip
0058a648  06 30 a0 e1                                      mov r3, r6
0058a64c  07 00 a0 e1                                      mov r0, r7
0058a650  00 e0 8d e5                                      str lr, [sp]
0058a654  04 c0 8d e5                                      str ip, [sp, #4]
0058a658  ca fe ff eb                                      bl #0x58a188
0058a65c  a7 ff ff ea                                      b #0x58a500
0058a660  04 30 94 e5                                      ldr r3, [r4, #4]
0058a664  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0058a668  0c 00 54 e1                                      cmp r4, ip
0058a66c  04 c0 a0 11                                      movne ip, r4
0058a670  04 00 00 1a                                      bne #0x58a688
0058a674  03 c0 a0 e1                                      mov ip, r3
0058a678  04 30 93 e5                                      ldr r3, [r3, #4]
0058a67c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0058a680  0a 00 5c e1                                      cmp ip, sl
0058a684  fa ff ff 0a                                      beq #0x58a674
0058a688  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0058a68c  0a 00 53 e1                                      cmp r3, sl
0058a690  03 c0 a0 11                                      movne ip, r3
0058a694  79 ff ff ea                                      b #0x58a480
0058a698  04 30 94 e5                                      ldr r3, [r4, #4]
0058a69c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0058a6a0  01 00 54 e1                                      cmp r4, r1
0058a6a4  04 c0 a0 11                                      movne ip, r4
0058a6a8  04 00 00 1a                                      bne #0x58a6c0
0058a6ac  03 c0 a0 e1                                      mov ip, r3
0058a6b0  04 30 93 e5                                      ldr r3, [r3, #4]
0058a6b4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0058a6b8  0c 00 51 e1                                      cmp r1, ip
0058a6bc  fa ff ff 0a                                      beq #0x58a6ac
0058a6c0  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0058a6c4  01 00 53 e1                                      cmp r3, r1
0058a6c8  03 c0 a0 11                                      movne ip, r3
0058a6cc  ba ff ff ea                                      b #0x58a5bc
0058a6d0  03 20 a0 e1                                      mov r2, r3
0058a6d4  20 00 8d e2                                      add r0, sp, #0x20
0058a6d8  e0 fe ff eb                                      bl #0x58a260
0058a6dc  20 30 9d e5                                      ldr r3, [sp, #0x20]
0058a6e0  00 30 87 e5                                      str r3, [r7]
0058a6e4  85 ff ff ea                                      b #0x58a500
0058a6e8  00 c0 a0 e3                                      mov ip, #0
0058a6ec  04 20 a0 e1                                      mov r2, r4
0058a6f0  10 10 8d e8                                      stm sp, {r4, ip}
0058a6f4  a3 fe ff eb                                      bl #0x58a188
0058a6f8  80 ff ff ea                                      b #0x58a500
0058a6fc  05 10 a0 e1                                      mov r1, r5
0058a700  06 20 a0 e1                                      mov r2, r6
0058a704  18 00 8d e2                                      add r0, sp, #0x18
0058a708  d4 fe ff eb                                      bl #0x58a260
0058a70c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0058a710  00 30 87 e5                                      str r3, [r7]
0058a714  79 ff ff ea                                      b #0x58a500
0058a718  05 10 a0 e1                                      mov r1, r5
0058a71c  04 20 a0 e1                                      mov r2, r4
0058a720  06 30 a0 e1                                      mov r3, r6
0058a724  07 00 a0 e1                                      mov r0, r7
0058a728  00 e0 8d e5                                      str lr, [sp]
0058a72c  04 40 8d e5                                      str r4, [sp, #4]
0058a730  94 fe ff eb                                      bl #0x58a188
0058a734  71 ff ff ea                                      b #0x58a500
0058a738  00 c0 a0 e3                                      mov ip, #0
0058a73c  05 10 a0 e1                                      mov r1, r5
0058a740  04 20 a0 e1                                      mov r2, r4
0058a744  06 30 a0 e1                                      mov r3, r6
0058a748  07 00 a0 e1                                      mov r0, r7
0058a74c  00 c0 8d e5                                      str ip, [sp]
0058a750  04 40 8d e5                                      str r4, [sp, #4]
0058a754  8b fe ff eb                                      bl #0x58a188
0058a758  68 ff ff ea                                      b #0x58a500

; FUNCTION 0x0058f98c, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN6glitch5scene12SBatchConfigEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, glitch::scene::SBatchConfig>, std::priv::_Select1st<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::priv::_MapTraitsT<std::pair<unsigned int const, glitch::scene::SBatchConfig> >, std::allocator<std::pair<unsigned int const, glitch::scene::SBatchConfig> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0058f98c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058f990  00 40 51 e2                                      subs r4, r1, #0
0058f994  00 60 a0 e1                                      mov r6, r0
0058f998  18 00 00 0a                                      beq #0x58fa00
0058f99c  06 00 a0 e1                                      mov r0, r6
0058f9a0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0058f9a4  f8 ff ff eb                                      bl #0x58f98c
0058f9a8  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0058f9ac  08 50 94 e5                                      ldr r5, [r4, #8]
0058f9b0  00 00 50 e3                                      cmp r0, #0
0058f9b4  00 00 00 0a                                      beq #0x58f9bc
0058f9b8  f1 36 f6 eb                                      bl #0x31d584
0058f9bc  14 70 94 e5                                      ldr r7, [r4, #0x14]
0058f9c0  00 00 57 e3                                      cmp r7, #0
0058f9c4  08 00 00 0a                                      beq #0x58f9ec
0058f9c8  00 30 97 e5                                      ldr r3, [r7]
0058f9cc  01 30 43 e2                                      sub r3, r3, #1
0058f9d0  00 00 53 e3                                      cmp r3, #0
0058f9d4  00 30 87 e5                                      str r3, [r7]
0058f9d8  03 00 00 1a                                      bne #0x58f9ec
0058f9dc  07 00 a0 e1                                      mov r0, r7
0058f9e0  64 f1 00 eb                                      bl #0x5cbf78
0058f9e4  07 00 a0 e1                                      mov r0, r7
0058f9e8  30 fa f5 eb                                      bl #0x30e2b0
0058f9ec  04 00 a0 e1                                      mov r0, r4
0058f9f0  40 10 a0 e3                                      mov r1, #0x40
0058f9f4  41 e5 05 eb                                      bl #0x708f00
0058f9f8  00 40 55 e2                                      subs r4, r5, #0
0058f9fc  e6 ff ff 1a                                      bne #0x58f99c
0058fa00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
