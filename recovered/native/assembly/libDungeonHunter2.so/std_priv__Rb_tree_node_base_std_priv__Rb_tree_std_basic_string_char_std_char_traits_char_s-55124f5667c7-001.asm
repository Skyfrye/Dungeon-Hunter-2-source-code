; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037a300, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP12StreamBufferENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
0037a300  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037a304  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
0037a308  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0037a30c  54 d0 4d e2                                      sub sp, sp, #0x54
0037a310  0b b0 8f e0                                      add fp, pc, fp
0037a314  02 30 9b e7                                      ldr r3, [fp, r2]
0037a318  0c 20 8d e5                                      str r2, [sp, #0xc]
0037a31c  08 00 8d e5                                      str r0, [sp, #8]
0037a320  04 40 90 e5                                      ldr r4, [r0, #4]
0037a324  00 30 93 e5                                      ldr r3, [r3]
0037a328  01 80 a0 e1                                      mov r8, r1
0037a32c  00 00 54 e3                                      cmp r4, #0
0037a330  4c 30 8d e5                                      str r3, [sp, #0x4c]
0037a334  40 00 00 0a                                      beq #0x37a43c
0037a338  00 a0 a0 e1                                      mov sl, r0
0037a33c  34 70 8d e2                                      add r7, sp, #0x34
0037a340  18 90 8d e2                                      add sb, sp, #0x18
0037a344  00 10 98 e5                                      ldr r1, [r8]
0037a348  09 20 a0 e1                                      mov r2, sb
0037a34c  07 00 a0 e1                                      mov r0, r7
0037a350  65 67 fe eb                                      bl #0x3140ec
0037a354  24 30 94 e5                                      ldr r3, [r4, #0x24]
0037a358  48 10 9d e5                                      ldr r1, [sp, #0x48]
0037a35c  20 60 94 e5                                      ldr r6, [r4, #0x20]
0037a360  44 50 9d e5                                      ldr r5, [sp, #0x44]
0037a364  03 00 a0 e1                                      mov r0, r3
0037a368  06 60 63 e0                                      rsb r6, r3, r6
0037a36c  05 50 61 e0                                      rsb r5, r1, r5
0037a370  06 00 55 e1                                      cmp r5, r6
0037a374  05 20 a0 b1                                      movlt r2, r5
0037a378  06 20 a0 a1                                      movge r2, r6
0037a37c  97 50 fe eb                                      bl #0x30e5e0
0037a380  00 30 50 e2                                      subs r3, r0, #0
0037a384  04 00 00 1a                                      bne #0x37a39c
0037a388  05 00 56 e1                                      cmp r6, r5
0037a38c  00 30 e0 b3                                      mvnlt r3, #0
0037a390  01 00 00 ba                                      blt #0x37a39c
0037a394  00 30 a0 d3                                      movle r3, #0
0037a398  01 30 a0 c3                                      movgt r3, #1
0037a39c  07 00 a0 e1                                      mov r0, r7
0037a3a0  04 30 8d e5                                      str r3, [sp, #4]
0037a3a4  80 65 fe eb                                      bl #0x3139ac
0037a3a8  04 30 9d e5                                      ldr r3, [sp, #4]
0037a3ac  00 00 53 e3                                      cmp r3, #0
0037a3b0  04 a0 a0 a1                                      movge sl, r4
0037a3b4  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0037a3b8  08 40 94 a5                                      ldrge r4, [r4, #8]
0037a3bc  00 00 54 e3                                      cmp r4, #0
0037a3c0  df ff ff 1a                                      bne #0x37a344
0037a3c4  08 30 9d e5                                      ldr r3, [sp, #8]
0037a3c8  03 00 5a e1                                      cmp sl, r3
0037a3cc  1b 00 00 0a                                      beq #0x37a440
0037a3d0  1c 40 8d e2                                      add r4, sp, #0x1c
0037a3d4  00 10 98 e5                                      ldr r1, [r8]
0037a3d8  14 20 8d e2                                      add r2, sp, #0x14
0037a3dc  04 00 a0 e1                                      mov r0, r4
0037a3e0  41 67 fe eb                                      bl #0x3140ec
0037a3e4  30 30 9d e5                                      ldr r3, [sp, #0x30]
0037a3e8  24 10 9a e5                                      ldr r1, [sl, #0x24]
0037a3ec  20 50 9a e5                                      ldr r5, [sl, #0x20]
0037a3f0  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0037a3f4  03 00 a0 e1                                      mov r0, r3
0037a3f8  05 50 61 e0                                      rsb r5, r1, r5
0037a3fc  06 60 63 e0                                      rsb r6, r3, r6
0037a400  06 00 55 e1                                      cmp r5, r6
0037a404  05 20 a0 b1                                      movlt r2, r5
0037a408  06 20 a0 a1                                      movge r2, r6
0037a40c  73 50 fe eb                                      bl #0x30e5e0
0037a410  00 70 50 e2                                      subs r7, r0, #0
0037a414  04 00 00 1a                                      bne #0x37a42c
0037a418  05 00 56 e1                                      cmp r6, r5
0037a41c  00 70 e0 b3                                      mvnlt r7, #0
0037a420  01 00 00 ba                                      blt #0x37a42c
0037a424  00 70 a0 d3                                      movle r7, #0
0037a428  01 70 a0 c3                                      movgt r7, #1
0037a42c  04 00 a0 e1                                      mov r0, r4
0037a430  5d 65 fe eb                                      bl #0x3139ac
0037a434  00 00 57 e3                                      cmp r7, #0
0037a438  00 00 00 aa                                      bge #0x37a440
0037a43c  08 a0 9d e5                                      ldr sl, [sp, #8]
0037a440  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0037a444  0a 00 a0 e1                                      mov r0, sl
0037a448  02 30 9b e7                                      ldr r3, [fp, r2]
0037a44c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0037a450  00 30 93 e5                                      ldr r3, [r3]
0037a454  03 00 52 e1                                      cmp r2, r3
0037a458  01 00 00 1a                                      bne #0x37a464
0037a45c  54 d0 8d e2                                      add sp, sp, #0x54
0037a460  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037a464  a9 4f fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037a468  80 a7 61 00 ac 40 00 00                          .byte 0x80, 0xa7, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037a470, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP12StreamBufferENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
0037a470  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037a474  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
0037a478  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0037a47c  2c d0 4d e2                                      sub sp, sp, #0x2c
0037a480  0b b0 8f e0                                      add fp, pc, fp
0037a484  02 30 9b e7                                      ldr r3, [fp, r2]
0037a488  04 20 8d e5                                      str r2, [sp, #4]
0037a48c  00 90 a0 e1                                      mov sb, r0
0037a490  00 30 93 e5                                      ldr r3, [r3]
0037a494  01 80 a0 e1                                      mov r8, r1
0037a498  24 30 8d e5                                      str r3, [sp, #0x24]
0037a49c  04 40 90 e5                                      ldr r4, [r0, #4]
0037a4a0  00 00 54 e3                                      cmp r4, #0
0037a4a4  21 00 00 0a                                      beq #0x37a530
0037a4a8  0c 70 8d e2                                      add r7, sp, #0xc
0037a4ac  08 a0 8d e2                                      add sl, sp, #8
0037a4b0  00 10 98 e5                                      ldr r1, [r8]
0037a4b4  0a 20 a0 e1                                      mov r2, sl
0037a4b8  07 00 a0 e1                                      mov r0, r7
0037a4bc  0a 67 fe eb                                      bl #0x3140ec
0037a4c0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0037a4c4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0037a4c8  20 60 94 e5                                      ldr r6, [r4, #0x20]
0037a4cc  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0037a4d0  03 00 a0 e1                                      mov r0, r3
0037a4d4  06 60 63 e0                                      rsb r6, r3, r6
0037a4d8  05 50 61 e0                                      rsb r5, r1, r5
0037a4dc  06 00 55 e1                                      cmp r5, r6
0037a4e0  05 20 a0 b1                                      movlt r2, r5
0037a4e4  06 20 a0 a1                                      movge r2, r6
0037a4e8  3c 50 fe eb                                      bl #0x30e5e0
0037a4ec  00 30 50 e2                                      subs r3, r0, #0
0037a4f0  04 00 00 1a                                      bne #0x37a508
0037a4f4  05 00 56 e1                                      cmp r6, r5
0037a4f8  00 30 e0 b3                                      mvnlt r3, #0
0037a4fc  01 00 00 ba                                      blt #0x37a508
0037a500  00 30 a0 d3                                      movle r3, #0
0037a504  01 30 a0 c3                                      movgt r3, #1
0037a508  07 00 a0 e1                                      mov r0, r7
0037a50c  00 30 8d e5                                      str r3, [sp]
0037a510  25 65 fe eb                                      bl #0x3139ac
0037a514  00 30 9d e5                                      ldr r3, [sp]
0037a518  00 00 53 e3                                      cmp r3, #0
0037a51c  04 90 a0 a1                                      movge sb, r4
0037a520  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0037a524  08 40 94 a5                                      ldrge r4, [r4, #8]
0037a528  00 00 54 e3                                      cmp r4, #0
0037a52c  df ff ff 1a                                      bne #0x37a4b0
0037a530  04 20 9d e5                                      ldr r2, [sp, #4]
0037a534  09 00 a0 e1                                      mov r0, sb
0037a538  02 30 9b e7                                      ldr r3, [fp, r2]
0037a53c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0037a540  00 30 93 e5                                      ldr r3, [r3]
0037a544  03 00 52 e1                                      cmp r2, r3
0037a548  01 00 00 1a                                      bne #0x37a554
0037a54c  2c d0 8d e2                                      add sp, sp, #0x2c
0037a550  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037a554  6d 4f fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037a558  10 a6 61 00 ac 40 00 00                          .byte 0x10, 0xa6, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00
