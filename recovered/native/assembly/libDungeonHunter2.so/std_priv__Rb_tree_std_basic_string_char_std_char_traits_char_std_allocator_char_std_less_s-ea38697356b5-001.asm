; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0049743c, declared_size=184, range_size=184, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSs9VectorSetIP7SWFAnimEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0049743c  70 40 2d e9                                      push {r4, r5, r6, lr}
00497440  00 40 51 e2                                      subs r4, r1, #0
00497444  00 60 a0 e1                                      mov r6, r0
00497448  12 00 00 1a                                      bne #0x497498
0049744c  27 00 00 ea                                      b #0x4974f0
00497450  aa c6 09 eb                                      bl #0x708f00
00497454  10 20 84 e2                                      add r2, r4, #0x10
00497458  14 30 92 e5                                      ldr r3, [r2, #0x14]
0049745c  02 00 53 e1                                      cmp r3, r2
00497460  03 00 a0 e1                                      mov r0, r3
00497464  06 00 00 0a                                      beq #0x497484
00497468  00 00 53 e3                                      cmp r3, #0
0049746c  04 00 00 0a                                      beq #0x497484
00497470  00 10 92 e5                                      ldr r1, [r2]
00497474  01 10 63 e0                                      rsb r1, r3, r1
00497478  80 00 51 e3                                      cmp r1, #0x80
0049747c  15 00 00 8a                                      bhi #0x4974d8
00497480  9e c6 09 eb                                      bl #0x708f00
00497484  04 00 a0 e1                                      mov r0, r4
00497488  34 10 a0 e3                                      mov r1, #0x34
0049748c  9b c6 09 eb                                      bl #0x708f00
00497490  00 40 55 e2                                      subs r4, r5, #0
00497494  15 00 00 0a                                      beq #0x4974f0
00497498  06 00 a0 e1                                      mov r0, r6
0049749c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004974a0  e5 ff ff eb                                      bl #0x49743c
004974a4  28 30 94 e5                                      ldr r3, [r4, #0x28]
004974a8  08 50 94 e5                                      ldr r5, [r4, #8]
004974ac  28 20 84 e2                                      add r2, r4, #0x28
004974b0  00 00 53 e3                                      cmp r3, #0
004974b4  03 00 a0 e1                                      mov r0, r3
004974b8  e5 ff ff 0a                                      beq #0x497454
004974bc  08 10 92 e5                                      ldr r1, [r2, #8]
004974c0  01 10 63 e0                                      rsb r1, r3, r1
004974c4  03 10 c1 e3                                      bic r1, r1, #3
004974c8  80 00 51 e3                                      cmp r1, #0x80
004974cc  df ff ff 9a                                      bls #0x497450
004974d0  da e3 f9 eb                                      bl #0x310440
004974d4  de ff ff ea                                      b #0x497454
004974d8  d8 e3 f9 eb                                      bl #0x310440
004974dc  04 00 a0 e1                                      mov r0, r4
004974e0  34 10 a0 e3                                      mov r1, #0x34
004974e4  85 c6 09 eb                                      bl #0x708f00
004974e8  00 40 55 e2                                      subs r4, r5, #0
004974ec  e9 ff ff 1a                                      bne #0x497498
004974f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00497bb8, declared_size=92, range_size=92, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSs9VectorSetIP7SWFAnimEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_create_nodeERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > const&)
; decoder-mode: arm
00497bb8  30 40 2d e9                                      push {r4, r5, lr}
00497bbc  0c d0 4d e2                                      sub sp, sp, #0xc
00497bc0  34 30 a0 e3                                      mov r3, #0x34
00497bc4  08 00 8d e2                                      add r0, sp, #8
00497bc8  04 30 20 e5                                      str r3, [r0, #-4]!
00497bcc  01 50 a0 e1                                      mov r5, r1
00497bd0  ba c4 09 eb                                      bl #0x708ec0
00497bd4  00 40 a0 e1                                      mov r4, r0
00497bd8  10 00 80 e2                                      add r0, r0, #0x10
00497bdc  20 00 84 e5                                      str r0, [r4, #0x20]
00497be0  24 00 84 e5                                      str r0, [r4, #0x24]
00497be4  14 10 95 e5                                      ldr r1, [r5, #0x14]
00497be8  10 20 95 e5                                      ldr r2, [r5, #0x10]
00497bec  bd e6 f9 eb                                      bl #0x3116e8
00497bf0  18 10 85 e2                                      add r1, r5, #0x18
00497bf4  28 00 84 e2                                      add r0, r4, #0x28
00497bf8  bf fe ff eb                                      bl #0x4976fc
00497bfc  00 30 a0 e3                                      mov r3, #0
00497c00  0c 30 84 e5                                      str r3, [r4, #0xc]
00497c04  08 30 84 e5                                      str r3, [r4, #8]
00497c08  04 00 a0 e1                                      mov r0, r4
00497c0c  0c d0 8d e2                                      add sp, sp, #0xc
00497c10  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00497c14, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSs9VectorSetIP7SWFAnimEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SH_SH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00497c14  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00497c18  02 00 51 e1                                      cmp r1, r2
00497c1c  0c d0 4d e2                                      sub sp, sp, #0xc
00497c20  01 40 a0 e1                                      mov r4, r1
00497c24  02 50 a0 e1                                      mov r5, r2
00497c28  00 60 a0 e1                                      mov r6, r0
00497c2c  23 00 00 0a                                      beq #0x497cc0
00497c30  24 20 9d e5                                      ldr r2, [sp, #0x24]
00497c34  00 00 52 e3                                      cmp r2, #0
00497c38  12 00 00 0a                                      beq #0x497c88
00497c3c  03 10 a0 e1                                      mov r1, r3
00497c40  04 00 a0 e1                                      mov r0, r4
00497c44  db ff ff eb                                      bl #0x497bb8
00497c48  0c 00 85 e5                                      str r0, [r5, #0xc]
00497c4c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00497c50  00 70 a0 e1                                      mov r7, r0
00497c54  03 00 55 e1                                      cmp r5, r3
00497c58  16 00 00 0a                                      beq #0x497cb8
00497c5c  07 00 a0 e1                                      mov r0, r7
00497c60  04 50 87 e5                                      str r5, [r7, #4]
00497c64  04 10 84 e2                                      add r1, r4, #4
00497c68  bc ee f9 eb                                      bl #0x313760
00497c6c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00497c70  06 00 a0 e1                                      mov r0, r6
00497c74  01 30 83 e2                                      add r3, r3, #1
00497c78  10 30 84 e5                                      str r3, [r4, #0x10]
00497c7c  00 70 86 e5                                      str r7, [r6]
00497c80  0c d0 8d e2                                      add sp, sp, #0xc
00497c84  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00497c88  20 20 9d e5                                      ldr r2, [sp, #0x20]
00497c8c  00 00 52 e3                                      cmp r2, #0
00497c90  12 00 00 0a                                      beq #0x497ce0
00497c94  03 10 a0 e1                                      mov r1, r3
00497c98  04 00 a0 e1                                      mov r0, r4
00497c9c  c5 ff ff eb                                      bl #0x497bb8
00497ca0  08 00 85 e5                                      str r0, [r5, #8]
00497ca4  08 30 94 e5                                      ldr r3, [r4, #8]
00497ca8  00 70 a0 e1                                      mov r7, r0
00497cac  03 00 55 e1                                      cmp r5, r3
00497cb0  08 00 84 05                                      streq r0, [r4, #8]
00497cb4  e8 ff ff ea                                      b #0x497c5c
00497cb8  0c 70 84 e5                                      str r7, [r4, #0xc]
00497cbc  e6 ff ff ea                                      b #0x497c5c
00497cc0  03 10 a0 e1                                      mov r1, r3
00497cc4  04 00 a0 e1                                      mov r0, r4
00497cc8  ba ff ff eb                                      bl #0x497bb8
00497ccc  00 70 a0 e1                                      mov r7, r0
00497cd0  08 00 84 e5                                      str r0, [r4, #8]
00497cd4  04 00 84 e5                                      str r0, [r4, #4]
00497cd8  0c 00 84 e5                                      str r0, [r4, #0xc]
00497cdc  de ff ff ea                                      b #0x497c5c
00497ce0  14 00 81 e2                                      add r0, r1, #0x14
00497ce4  10 20 85 e2                                      add r2, r5, #0x10
00497ce8  03 10 a0 e1                                      mov r1, r3
00497cec  04 30 8d e5                                      str r3, [sp, #4]
00497cf0  c0 ef f9 eb                                      bl #0x313bf8
00497cf4  00 00 50 e3                                      cmp r0, #0
00497cf8  04 30 9d e5                                      ldr r3, [sp, #4]
00497cfc  ce ff ff 0a                                      beq #0x497c3c
00497d00  e3 ff ff ea                                      b #0x497c94

; FUNCTION 0x00497d04, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSs9VectorSetIP7SWFAnimEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > const&)
; decoder-mode: arm
00497d04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00497d08  04 50 91 e5                                      ldr r5, [r1, #4]
00497d0c  14 d0 4d e2                                      sub sp, sp, #0x14
00497d10  01 90 a0 e1                                      mov sb, r1
00497d14  00 00 55 e3                                      cmp r5, #0
00497d18  00 40 a0 e1                                      mov r4, r0
00497d1c  02 80 a0 e1                                      mov r8, r2
00497d20  38 00 00 0a                                      beq #0x497e08
00497d24  14 70 92 e5                                      ldr r7, [r2, #0x14]
00497d28  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00497d2c  0b a0 67 e0                                      rsb sl, r7, fp
00497d30  04 00 00 ea                                      b #0x497d48
00497d34  08 30 95 e5                                      ldr r3, [r5, #8]
00497d38  01 10 a0 e3                                      mov r1, #1
00497d3c  00 00 53 e3                                      cmp r3, #0
00497d40  16 00 00 0a                                      beq #0x497da0
00497d44  03 50 a0 e1                                      mov r5, r3
00497d48  24 30 95 e5                                      ldr r3, [r5, #0x24]
00497d4c  20 60 95 e5                                      ldr r6, [r5, #0x20]
00497d50  07 00 a0 e1                                      mov r0, r7
00497d54  03 10 a0 e1                                      mov r1, r3
00497d58  06 60 63 e0                                      rsb r6, r3, r6
00497d5c  0a 00 56 e1                                      cmp r6, sl
00497d60  06 20 a0 b1                                      movlt r2, r6
00497d64  0a 20 a0 a1                                      movge r2, sl
00497d68  1c da f9 eb                                      bl #0x30e5e0
00497d6c  00 00 50 e3                                      cmp r0, #0
00497d70  05 20 a0 e1                                      mov r2, r5
00497d74  03 00 00 1a                                      bne #0x497d88
00497d78  06 00 5a e1                                      cmp sl, r6
00497d7c  ec ff ff ba                                      blt #0x497d34
00497d80  00 00 a0 d3                                      movle r0, #0
00497d84  01 00 a0 c3                                      movgt r0, #1
00497d88  00 00 50 e3                                      cmp r0, #0
00497d8c  e8 ff ff ba                                      blt #0x497d34
00497d90  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00497d94  00 10 a0 e3                                      mov r1, #0
00497d98  00 00 53 e3                                      cmp r3, #0
00497d9c  e8 ff ff 1a                                      bne #0x497d44
00497da0  00 00 51 e3                                      cmp r1, #0
00497da4  05 a0 a0 01                                      moveq sl, r5
00497da8  17 00 00 1a                                      bne #0x497e0c
00497dac  24 00 92 e5                                      ldr r0, [r2, #0x24]
00497db0  20 60 92 e5                                      ldr r6, [r2, #0x20]
00497db4  0b b0 67 e0                                      rsb fp, r7, fp
00497db8  07 10 a0 e1                                      mov r1, r7
00497dbc  06 60 60 e0                                      rsb r6, r0, r6
00497dc0  06 00 5b e1                                      cmp fp, r6
00497dc4  0b 20 a0 b1                                      movlt r2, fp
00497dc8  06 20 a0 a1                                      movge r2, r6
00497dcc  03 da f9 eb                                      bl #0x30e5e0
00497dd0  00 00 50 e3                                      cmp r0, #0
00497dd4  03 00 00 1a                                      bne #0x497de8
00497dd8  0b 00 56 e1                                      cmp r6, fp
00497ddc  20 00 00 ba                                      blt #0x497e64
00497de0  00 00 a0 d3                                      movle r0, #0
00497de4  01 00 a0 c3                                      movgt r0, #1
00497de8  00 00 50 e3                                      cmp r0, #0
00497dec  00 30 a0 a3                                      movge r3, #0
00497df0  00 a0 84 a5                                      strge sl, [r4]
00497df4  04 30 c4 a5                                      strbge r3, [r4, #4]
00497df8  19 00 00 ba                                      blt #0x497e64
00497dfc  04 00 a0 e1                                      mov r0, r4
00497e00  14 d0 8d e2                                      add sp, sp, #0x14
00497e04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00497e08  01 50 a0 e1                                      mov r5, r1
00497e0c  08 30 99 e5                                      ldr r3, [sb, #8]
00497e10  03 00 55 e1                                      cmp r5, r3
00497e14  32 00 00 0a                                      beq #0x497ee4
00497e18  00 30 d5 e5                                      ldrb r3, [r5]
00497e1c  00 00 53 e3                                      cmp r3, #0
00497e20  03 00 00 1a                                      bne #0x497e34
00497e24  04 30 95 e5                                      ldr r3, [r5, #4]
00497e28  04 30 93 e5                                      ldr r3, [r3, #4]
00497e2c  03 00 55 e1                                      cmp r5, r3
00497e30  26 00 00 0a                                      beq #0x497ed0
00497e34  08 20 95 e5                                      ldr r2, [r5, #8]
00497e38  00 00 52 e3                                      cmp r2, #0
00497e3c  01 00 00 1a                                      bne #0x497e48
00497e40  14 00 00 ea                                      b #0x497e98
00497e44  03 20 a0 e1                                      mov r2, r3
00497e48  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00497e4c  00 00 53 e3                                      cmp r3, #0
00497e50  fb ff ff 1a                                      bne #0x497e44
00497e54  02 a0 a0 e1                                      mov sl, r2
00497e58  14 70 98 e5                                      ldr r7, [r8, #0x14]
00497e5c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00497e60  d1 ff ff ea                                      b #0x497dac
00497e64  00 c0 a0 e3                                      mov ip, #0
00497e68  05 20 a0 e1                                      mov r2, r5
00497e6c  08 30 a0 e1                                      mov r3, r8
00497e70  09 10 a0 e1                                      mov r1, sb
00497e74  08 00 8d e2                                      add r0, sp, #8
00497e78  04 c0 8d e5                                      str ip, [sp, #4]
00497e7c  00 c0 8d e5                                      str ip, [sp]
00497e80  63 ff ff eb                                      bl #0x497c14
00497e84  08 30 9d e5                                      ldr r3, [sp, #8]
00497e88  01 20 a0 e3                                      mov r2, #1
00497e8c  04 20 c4 e5                                      strb r2, [r4, #4]
00497e90  00 30 84 e5                                      str r3, [r4]
00497e94  d8 ff ff ea                                      b #0x497dfc
00497e98  04 30 95 e5                                      ldr r3, [r5, #4]
00497e9c  08 20 93 e5                                      ldr r2, [r3, #8]
00497ea0  02 00 55 e1                                      cmp r5, r2
00497ea4  01 00 00 0a                                      beq #0x497eb0
00497ea8  19 00 00 ea                                      b #0x497f14
00497eac  02 30 a0 e1                                      mov r3, r2
00497eb0  04 20 93 e5                                      ldr r2, [r3, #4]
00497eb4  08 10 92 e5                                      ldr r1, [r2, #8]
00497eb8  03 00 51 e1                                      cmp r1, r3
00497ebc  fa ff ff 0a                                      beq #0x497eac
00497ec0  14 70 98 e5                                      ldr r7, [r8, #0x14]
00497ec4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00497ec8  02 a0 a0 e1                                      mov sl, r2
00497ecc  b6 ff ff ea                                      b #0x497dac
00497ed0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00497ed4  14 70 98 e5                                      ldr r7, [r8, #0x14]
00497ed8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00497edc  02 a0 a0 e1                                      mov sl, r2
00497ee0  b1 ff ff ea                                      b #0x497dac
00497ee4  05 20 a0 e1                                      mov r2, r5
00497ee8  08 30 a0 e1                                      mov r3, r8
00497eec  00 c0 a0 e3                                      mov ip, #0
00497ef0  09 10 a0 e1                                      mov r1, sb
00497ef4  0c 00 8d e2                                      add r0, sp, #0xc
00497ef8  20 10 8d e8                                      stm sp, {r5, ip}
00497efc  44 ff ff eb                                      bl #0x497c14
00497f00  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00497f04  01 20 a0 e3                                      mov r2, #1
00497f08  04 20 c4 e5                                      strb r2, [r4, #4]
00497f0c  00 30 84 e5                                      str r3, [r4]
00497f10  b9 ff ff ea                                      b #0x497dfc
00497f14  03 20 a0 e1                                      mov r2, r3
00497f18  cd ff ff ea                                      b #0x497e54

; FUNCTION 0x00497f1c, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSs9VectorSetIP7SWFAnimEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueENS_17_Rb_tree_iteratorIS9_SD_EERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > const&)
; decoder-mode: arm
00497f1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00497f20  44 d0 4d e2                                      sub sp, sp, #0x44
00497f24  14 20 8d e5                                      str r2, [sp, #0x14]
00497f28  00 50 92 e5                                      ldr r5, [r2]
00497f2c  08 20 91 e5                                      ldr r2, [r1, #8]
00497f30  01 60 a0 e1                                      mov r6, r1
00497f34  00 70 a0 e1                                      mov r7, r0
00497f38  02 00 55 e1                                      cmp r5, r2
00497f3c  03 80 a0 e1                                      mov r8, r3
00497f40  7c 00 00 0a                                      beq #0x498138
00497f44  01 00 55 e1                                      cmp r5, r1
00497f48  d0 00 00 0a                                      beq #0x498290
00497f4c  00 30 d5 e5                                      ldrb r3, [r5]
00497f50  00 00 53 e3                                      cmp r3, #0
00497f54  35 00 00 0a                                      beq #0x498030
00497f58  08 40 95 e5                                      ldr r4, [r5, #8]
00497f5c  00 00 54 e3                                      cmp r4, #0
00497f60  01 00 00 1a                                      bne #0x497f6c
00497f64  39 00 00 ea                                      b #0x498050
00497f68  03 40 a0 e1                                      mov r4, r3
00497f6c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00497f70  00 00 53 e3                                      cmp r3, #0
00497f74  fb ff ff 1a                                      bne #0x497f68
00497f78  24 30 95 e5                                      ldr r3, [r5, #0x24]
00497f7c  14 90 98 e5                                      ldr sb, [r8, #0x14]
00497f80  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00497f84  20 20 95 e5                                      ldr r2, [r5, #0x20]
00497f88  03 10 a0 e1                                      mov r1, r3
00497f8c  0b b0 69 e0                                      rsb fp, sb, fp
00497f90  02 20 63 e0                                      rsb r2, r3, r2
00497f94  18 20 8d e5                                      str r2, [sp, #0x18]
00497f98  09 00 a0 e1                                      mov r0, sb
00497f9c  0b 00 52 e1                                      cmp r2, fp
00497fa0  0b 20 a0 a1                                      movge r2, fp
00497fa4  0c 30 8d e5                                      str r3, [sp, #0xc]
00497fa8  1c 20 8d e5                                      str r2, [sp, #0x1c]
00497fac  8b d9 f9 eb                                      bl #0x30e5e0
00497fb0  00 00 50 e3                                      cmp r0, #0
00497fb4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00497fb8  05 00 00 1a                                      bne #0x497fd4
00497fbc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00497fc0  02 00 5b e1                                      cmp fp, r2
00497fc4  00 00 e0 b3                                      mvnlt r0, #0
00497fc8  01 00 00 ba                                      blt #0x497fd4
00497fcc  00 00 a0 d3                                      movle r0, #0
00497fd0  01 00 a0 c3                                      movgt r0, #1
00497fd4  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
00497fd8  28 00 00 1a                                      bne #0x498080
00497fdc  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00497fe0  00 00 54 e3                                      cmp r4, #0
00497fe4  01 00 00 1a                                      bne #0x497ff0
00497fe8  cc 00 00 ea                                      b #0x498320
00497fec  02 40 a0 e1                                      mov r4, r2
00497ff0  08 20 94 e5                                      ldr r2, [r4, #8]
00497ff4  00 00 52 e3                                      cmp r2, #0
00497ff8  fb ff ff 1a                                      bne #0x497fec
00497ffc  00 00 5c e3                                      cmp ip, #0
00498000  43 00 00 1a                                      bne #0x498114
00498004  03 00 a0 e1                                      mov r0, r3
00498008  09 10 a0 e1                                      mov r1, sb
0049800c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00498010  72 d9 f9 eb                                      bl #0x30e5e0
00498014  00 00 50 e3                                      cmp r0, #0
00498018  34 00 00 1a                                      bne #0x4980f0
0049801c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00498020  03 00 5b e1                                      cmp fp, r3
00498024  32 00 00 ca                                      bgt #0x4980f4
00498028  00 50 87 e5                                      str r5, [r7]
0049802c  3e 00 00 ea                                      b #0x49812c
00498030  04 30 95 e5                                      ldr r3, [r5, #4]
00498034  04 30 93 e5                                      ldr r3, [r3, #4]
00498038  03 00 55 e1                                      cmp r5, r3
0049803c  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00498040  cc ff ff 0a                                      beq #0x497f78
00498044  08 40 95 e5                                      ldr r4, [r5, #8]
00498048  00 00 54 e3                                      cmp r4, #0
0049804c  c6 ff ff 1a                                      bne #0x497f6c
00498050  04 40 95 e5                                      ldr r4, [r5, #4]
00498054  08 30 94 e5                                      ldr r3, [r4, #8]
00498058  03 00 55 e1                                      cmp r5, r3
0049805c  01 00 00 0a                                      beq #0x498068
00498060  c4 ff ff ea                                      b #0x497f78
00498064  03 40 a0 e1                                      mov r4, r3
00498068  04 30 94 e5                                      ldr r3, [r4, #4]
0049806c  08 20 93 e5                                      ldr r2, [r3, #8]
00498070  04 00 52 e1                                      cmp r2, r4
00498074  fa ff ff 0a                                      beq #0x498064
00498078  03 40 a0 e1                                      mov r4, r3
0049807c  bd ff ff ea                                      b #0x497f78
00498080  24 20 94 e5                                      ldr r2, [r4, #0x24]
00498084  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00498088  09 10 a0 e1                                      mov r1, sb
0049808c  02 00 a0 e1                                      mov r0, r2
00498090  0a a0 62 e0                                      rsb sl, r2, sl
00498094  0a 00 5b e1                                      cmp fp, sl
00498098  0b 20 a0 b1                                      movlt r2, fp
0049809c  0a 20 a0 a1                                      movge r2, sl
004980a0  0c 30 8d e5                                      str r3, [sp, #0xc]
004980a4  10 c0 8d e5                                      str ip, [sp, #0x10]
004980a8  4c d9 f9 eb                                      bl #0x30e5e0
004980ac  00 00 50 e3                                      cmp r0, #0
004980b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004980b4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
004980b8  6f 00 00 1a                                      bne #0x49827c
004980bc  0a 00 5b e1                                      cmp fp, sl
004980c0  c5 ff ff da                                      ble #0x497fdc
004980c4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004980c8  00 00 5c e3                                      cmp ip, #0
004980cc  62 00 00 0a                                      beq #0x49825c
004980d0  00 c0 a0 e3                                      mov ip, #0
004980d4  06 10 a0 e1                                      mov r1, r6
004980d8  05 20 a0 e1                                      mov r2, r5
004980dc  08 30 a0 e1                                      mov r3, r8
004980e0  07 00 a0 e1                                      mov r0, r7
004980e4  20 10 8d e8                                      stm sp, {r5, ip}
004980e8  c9 fe ff eb                                      bl #0x497c14
004980ec  0e 00 00 ea                                      b #0x49812c
004980f0  cc ff ff aa                                      bge #0x498028
004980f4  04 00 56 e1                                      cmp r6, r4
004980f8  9b 00 00 0a                                      beq #0x49836c
004980fc  14 00 86 e2                                      add r0, r6, #0x14
00498100  08 10 a0 e1                                      mov r1, r8
00498104  10 20 84 e2                                      add r2, r4, #0x10
00498108  ba ee f9 eb                                      bl #0x313bf8
0049810c  00 00 50 e3                                      cmp r0, #0
00498110  93 00 00 1a                                      bne #0x498364
00498114  06 10 a0 e1                                      mov r1, r6
00498118  08 20 a0 e1                                      mov r2, r8
0049811c  20 00 8d e2                                      add r0, sp, #0x20
00498120  f7 fe ff eb                                      bl #0x497d04
00498124  20 30 9d e5                                      ldr r3, [sp, #0x20]
00498128  00 30 87 e5                                      str r3, [r7]
0049812c  07 00 a0 e1                                      mov r0, r7
00498130  44 d0 8d e2                                      add sp, sp, #0x44
00498134  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00498138  10 30 91 e5                                      ldr r3, [r1, #0x10]
0049813c  00 00 53 e3                                      cmp r3, #0
00498140  9f 00 00 0a                                      beq #0x4983c4
00498144  14 30 98 e5                                      ldr r3, [r8, #0x14]
00498148  24 10 95 e5                                      ldr r1, [r5, #0x24]
0049814c  10 40 98 e5                                      ldr r4, [r8, #0x10]
00498150  20 a0 95 e5                                      ldr sl, [r5, #0x20]
00498154  03 00 a0 e1                                      mov r0, r3
00498158  04 40 63 e0                                      rsb r4, r3, r4
0049815c  0a a0 61 e0                                      rsb sl, r1, sl
00498160  04 00 5a e1                                      cmp sl, r4
00498164  0a 20 a0 b1                                      movlt r2, sl
00498168  04 20 a0 a1                                      movge r2, r4
0049816c  1b d9 f9 eb                                      bl #0x30e5e0
00498170  00 00 50 e3                                      cmp r0, #0
00498174  03 00 00 1a                                      bne #0x498188
00498178  0a 00 54 e1                                      cmp r4, sl
0049817c  d3 ff ff ba                                      blt #0x4980d0
00498180  00 00 a0 d3                                      movle r0, #0
00498184  01 00 a0 c3                                      movgt r0, #1
00498188  00 00 50 e3                                      cmp r0, #0
0049818c  cf ff ff ba                                      blt #0x4980d0
00498190  14 a0 86 e2                                      add sl, r6, #0x14
00498194  10 10 85 e2                                      add r1, r5, #0x10
00498198  0a 00 a0 e1                                      mov r0, sl
0049819c  08 20 a0 e1                                      mov r2, r8
004981a0  94 ee f9 eb                                      bl #0x313bf8
004981a4  00 00 50 e3                                      cmp r0, #0
004981a8  81 00 00 0a                                      beq #0x4983b4
004981ac  14 30 9d e5                                      ldr r3, [sp, #0x14]
004981b0  00 c0 93 e5                                      ldr ip, [r3]
004981b4  0c 40 9c e5                                      ldr r4, [ip, #0xc]
004981b8  00 00 54 e3                                      cmp r4, #0
004981bc  22 00 00 1a                                      bne #0x49824c
004981c0  04 30 9c e5                                      ldr r3, [ip, #4]
004981c4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004981c8  02 00 5c e1                                      cmp ip, r2
004981cc  0c 40 a0 11                                      movne r4, ip
004981d0  04 00 00 1a                                      bne #0x4981e8
004981d4  03 40 a0 e1                                      mov r4, r3
004981d8  04 30 93 e5                                      ldr r3, [r3, #4]
004981dc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004981e0  04 00 52 e1                                      cmp r2, r4
004981e4  fa ff ff 0a                                      beq #0x4981d4
004981e8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004981ec  02 00 53 e1                                      cmp r3, r2
004981f0  03 40 a0 11                                      movne r4, r3
004981f4  04 00 56 e1                                      cmp r6, r4
004981f8  7f 00 00 0a                                      beq #0x4983fc
004981fc  0a 00 a0 e1                                      mov r0, sl
00498200  08 10 a0 e1                                      mov r1, r8
00498204  10 20 84 e2                                      add r2, r4, #0x10
00498208  7a ee f9 eb                                      bl #0x313bf8
0049820c  00 00 50 e3                                      cmp r0, #0
00498210  60 00 00 0a                                      beq #0x498398
00498214  14 20 9d e5                                      ldr r2, [sp, #0x14]
00498218  00 c0 92 e5                                      ldr ip, [r2]
0049821c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00498220  00 00 5e e3                                      cmp lr, #0
00498224  6c 00 00 0a                                      beq #0x4983dc
00498228  00 c0 a0 e3                                      mov ip, #0
0049822c  06 10 a0 e1                                      mov r1, r6
00498230  04 20 a0 e1                                      mov r2, r4
00498234  08 30 a0 e1                                      mov r3, r8
00498238  07 00 a0 e1                                      mov r0, r7
0049823c  10 10 8d e8                                      stm sp, {r4, ip}
00498240  73 fe ff eb                                      bl #0x497c14
00498244  b8 ff ff ea                                      b #0x49812c
00498248  03 40 a0 e1                                      mov r4, r3
0049824c  08 30 94 e5                                      ldr r3, [r4, #8]
00498250  00 00 53 e3                                      cmp r3, #0
00498254  fb ff ff 1a                                      bne #0x498248
00498258  e5 ff ff ea                                      b #0x4981f4
0049825c  06 10 a0 e1                                      mov r1, r6
00498260  04 20 a0 e1                                      mov r2, r4
00498264  08 30 a0 e1                                      mov r3, r8
00498268  07 00 a0 e1                                      mov r0, r7
0049826c  00 c0 8d e5                                      str ip, [sp]
00498270  04 40 8d e5                                      str r4, [sp, #4]
00498274  66 fe ff eb                                      bl #0x497c14
00498278  ab ff ff ea                                      b #0x49812c
0049827c  56 ff ff aa                                      bge #0x497fdc
00498280  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00498284  00 00 5c e3                                      cmp ip, #0
00498288  90 ff ff 1a                                      bne #0x4980d0
0049828c  f2 ff ff ea                                      b #0x49825c
00498290  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00498294  14 10 93 e5                                      ldr r1, [r3, #0x14]
00498298  10 90 93 e5                                      ldr sb, [r3, #0x10]
0049829c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004982a0  24 30 94 e5                                      ldr r3, [r4, #0x24]
004982a4  09 90 61 e0                                      rsb sb, r1, sb
004982a8  0a a0 63 e0                                      rsb sl, r3, sl
004982ac  0a 00 59 e1                                      cmp sb, sl
004982b0  09 20 a0 b1                                      movlt r2, sb
004982b4  0a 20 a0 a1                                      movge r2, sl
004982b8  03 00 a0 e1                                      mov r0, r3
004982bc  c7 d8 f9 eb                                      bl #0x30e5e0
004982c0  00 00 50 e3                                      cmp r0, #0
004982c4  03 00 00 1a                                      bne #0x4982d8
004982c8  09 00 5a e1                                      cmp sl, sb
004982cc  03 00 00 ba                                      blt #0x4982e0
004982d0  00 00 a0 d3                                      movle r0, #0
004982d4  01 00 a0 c3                                      movgt r0, #1
004982d8  00 00 50 e3                                      cmp r0, #0
004982dc  08 00 00 aa                                      bge #0x498304
004982e0  00 c0 a0 e3                                      mov ip, #0
004982e4  06 10 a0 e1                                      mov r1, r6
004982e8  04 20 a0 e1                                      mov r2, r4
004982ec  08 30 a0 e1                                      mov r3, r8
004982f0  07 00 a0 e1                                      mov r0, r7
004982f4  00 c0 8d e5                                      str ip, [sp]
004982f8  04 50 8d e5                                      str r5, [sp, #4]
004982fc  44 fe ff eb                                      bl #0x497c14
00498300  89 ff ff ea                                      b #0x49812c
00498304  06 10 a0 e1                                      mov r1, r6
00498308  08 20 a0 e1                                      mov r2, r8
0049830c  28 00 8d e2                                      add r0, sp, #0x28
00498310  7b fe ff eb                                      bl #0x497d04
00498314  28 30 9d e5                                      ldr r3, [sp, #0x28]
00498318  00 30 87 e5                                      str r3, [r7]
0049831c  82 ff ff ea                                      b #0x49812c
00498320  04 20 95 e5                                      ldr r2, [r5, #4]
00498324  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00498328  01 00 55 e1                                      cmp r5, r1
0049832c  05 40 a0 11                                      movne r4, r5
00498330  04 00 00 0a                                      beq #0x498348
00498334  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00498338  01 00 52 e1                                      cmp r2, r1
0049833c  02 40 a0 11                                      movne r4, r2
00498340  2d ff ff ea                                      b #0x497ffc
00498344  01 20 a0 e1                                      mov r2, r1
00498348  04 10 92 e5                                      ldr r1, [r2, #4]
0049834c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00498350  02 00 50 e1                                      cmp r0, r2
00498354  fa ff ff 0a                                      beq #0x498344
00498358  02 40 a0 e1                                      mov r4, r2
0049835c  01 20 a0 e1                                      mov r2, r1
00498360  f3 ff ff ea                                      b #0x498334
00498364  14 20 9d e5                                      ldr r2, [sp, #0x14]
00498368  00 50 92 e5                                      ldr r5, [r2]
0049836c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00498370  00 00 5c e3                                      cmp ip, #0
00498374  ab ff ff 1a                                      bne #0x498228
00498378  06 10 a0 e1                                      mov r1, r6
0049837c  05 20 a0 e1                                      mov r2, r5
00498380  08 30 a0 e1                                      mov r3, r8
00498384  07 00 a0 e1                                      mov r0, r7
00498388  00 c0 8d e5                                      str ip, [sp]
0049838c  04 50 8d e5                                      str r5, [sp, #4]
00498390  1f fe ff eb                                      bl #0x497c14
00498394  64 ff ff ea                                      b #0x49812c
00498398  06 10 a0 e1                                      mov r1, r6
0049839c  08 20 a0 e1                                      mov r2, r8
004983a0  30 00 8d e2                                      add r0, sp, #0x30
004983a4  56 fe ff eb                                      bl #0x497d04
004983a8  30 30 9d e5                                      ldr r3, [sp, #0x30]
004983ac  00 30 87 e5                                      str r3, [r7]
004983b0  5d ff ff ea                                      b #0x49812c
004983b4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004983b8  00 30 92 e5                                      ldr r3, [r2]
004983bc  00 30 87 e5                                      str r3, [r7]
004983c0  59 ff ff ea                                      b #0x49812c
004983c4  08 20 a0 e1                                      mov r2, r8
004983c8  38 00 8d e2                                      add r0, sp, #0x38
004983cc  4c fe ff eb                                      bl #0x497d04
004983d0  38 30 9d e5                                      ldr r3, [sp, #0x38]
004983d4  00 30 87 e5                                      str r3, [r7]
004983d8  53 ff ff ea                                      b #0x49812c
004983dc  06 10 a0 e1                                      mov r1, r6
004983e0  0c 20 a0 e1                                      mov r2, ip
004983e4  08 30 a0 e1                                      mov r3, r8
004983e8  07 00 a0 e1                                      mov r0, r7
004983ec  00 e0 8d e5                                      str lr, [sp]
004983f0  04 c0 8d e5                                      str ip, [sp, #4]
004983f4  06 fe ff eb                                      bl #0x497c14
004983f8  4b ff ff ea                                      b #0x49812c
004983fc  00 e0 a0 e3                                      mov lr, #0
00498400  06 10 a0 e1                                      mov r1, r6
00498404  0c 20 a0 e1                                      mov r2, ip
00498408  08 30 a0 e1                                      mov r3, r8
0049840c  07 00 a0 e1                                      mov r0, r7
00498410  00 e0 8d e5                                      str lr, [sp]
00498414  04 c0 8d e5                                      str ip, [sp, #4]
00498418  fd fd ff eb                                      bl #0x497c14
0049841c  42 ff ff ea                                      b #0x49812c
