; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003180c4, declared_size=180, range_size=180, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003180c4  70 40 2d e9                                      push {r4, r5, r6, lr}
003180c8  00 40 51 e2                                      subs r4, r1, #0
003180cc  00 60 a0 e1                                      mov r6, r0
003180d0  11 00 00 1a                                      bne #0x31811c
003180d4  26 00 00 ea                                      b #0x318174
003180d8  88 c3 0f eb                                      bl #0x708f00
003180dc  10 30 84 e2                                      add r3, r4, #0x10
003180e0  14 00 93 e5                                      ldr r0, [r3, #0x14]
003180e4  03 00 50 e1                                      cmp r0, r3
003180e8  06 00 00 0a                                      beq #0x318108
003180ec  00 00 50 e3                                      cmp r0, #0
003180f0  04 00 00 0a                                      beq #0x318108
003180f4  00 10 93 e5                                      ldr r1, [r3]
003180f8  01 10 60 e0                                      rsb r1, r0, r1
003180fc  80 00 51 e3                                      cmp r1, #0x80
00318100  15 00 00 8a                                      bhi #0x31815c
00318104  7d c3 0f eb                                      bl #0x708f00
00318108  04 00 a0 e1                                      mov r0, r4
0031810c  40 10 a0 e3                                      mov r1, #0x40
00318110  7a c3 0f eb                                      bl #0x708f00
00318114  00 40 55 e2                                      subs r4, r5, #0
00318118  15 00 00 0a                                      beq #0x318174
0031811c  06 00 a0 e1                                      mov r0, r6
00318120  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00318124  e6 ff ff eb                                      bl #0x3180c4
00318128  28 30 84 e2                                      add r3, r4, #0x28
0031812c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00318130  08 50 94 e5                                      ldr r5, [r4, #8]
00318134  03 00 50 e1                                      cmp r0, r3
00318138  e7 ff ff 0a                                      beq #0x3180dc
0031813c  00 00 50 e3                                      cmp r0, #0
00318140  e5 ff ff 0a                                      beq #0x3180dc
00318144  00 10 93 e5                                      ldr r1, [r3]
00318148  01 10 60 e0                                      rsb r1, r0, r1
0031814c  80 00 51 e3                                      cmp r1, #0x80
00318150  e0 ff ff 9a                                      bls #0x3180d8
00318154  b9 e0 ff eb                                      bl #0x310440
00318158  df ff ff ea                                      b #0x3180dc
0031815c  b7 e0 ff eb                                      bl #0x310440
00318160  04 00 a0 e1                                      mov r0, r4
00318164  40 10 a0 e3                                      mov r1, #0x40
00318168  64 c3 0f eb                                      bl #0x708f00
0031816c  00 40 55 e2                                      subs r4, r5, #0
00318170  e9 ff ff 1a                                      bne #0x31811c
00318174  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031846c, declared_size=300, range_size=300, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0031846c  02 00 51 e1                                      cmp r1, r2
00318470  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00318474  01 40 a0 e1                                      mov r4, r1
00318478  02 50 a0 e1                                      mov r5, r2
0031847c  00 60 a0 e1                                      mov r6, r0
00318480  03 70 a0 e1                                      mov r7, r3
00318484  2e 00 00 0a                                      beq #0x318544
00318488  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0031848c  00 00 53 e3                                      cmp r3, #0
00318490  17 00 00 0a                                      beq #0x3184f4
00318494  04 00 a0 e1                                      mov r0, r4
00318498  eb ff ff eb                                      bl #0x31844c
0031849c  07 10 a0 e1                                      mov r1, r7
003184a0  00 80 a0 e1                                      mov r8, r0
003184a4  10 00 80 e2                                      add r0, r0, #0x10
003184a8  d7 ff ff eb                                      bl #0x31840c
003184ac  00 30 a0 e3                                      mov r3, #0
003184b0  0c 30 88 e5                                      str r3, [r8, #0xc]
003184b4  08 30 88 e5                                      str r3, [r8, #8]
003184b8  0c 80 85 e5                                      str r8, [r5, #0xc]
003184bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003184c0  08 70 a0 e1                                      mov r7, r8
003184c4  03 00 55 e1                                      cmp r5, r3
003184c8  1b 00 00 0a                                      beq #0x31853c
003184cc  07 00 a0 e1                                      mov r0, r7
003184d0  04 50 87 e5                                      str r5, [r7, #4]
003184d4  04 10 84 e2                                      add r1, r4, #4
003184d8  a0 ec ff eb                                      bl #0x313760
003184dc  10 30 94 e5                                      ldr r3, [r4, #0x10]
003184e0  06 00 a0 e1                                      mov r0, r6
003184e4  01 30 83 e2                                      add r3, r3, #1
003184e8  10 30 84 e5                                      str r3, [r4, #0x10]
003184ec  00 70 86 e5                                      str r7, [r6]
003184f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003184f4  18 30 9d e5                                      ldr r3, [sp, #0x18]
003184f8  00 00 53 e3                                      cmp r3, #0
003184fc  1e 00 00 0a                                      beq #0x31857c
00318500  04 00 a0 e1                                      mov r0, r4
00318504  d0 ff ff eb                                      bl #0x31844c
00318508  07 10 a0 e1                                      mov r1, r7
0031850c  00 80 a0 e1                                      mov r8, r0
00318510  10 00 80 e2                                      add r0, r0, #0x10
00318514  bc ff ff eb                                      bl #0x31840c
00318518  00 30 a0 e3                                      mov r3, #0
0031851c  0c 30 88 e5                                      str r3, [r8, #0xc]
00318520  08 30 88 e5                                      str r3, [r8, #8]
00318524  08 80 85 e5                                      str r8, [r5, #8]
00318528  08 30 94 e5                                      ldr r3, [r4, #8]
0031852c  08 70 a0 e1                                      mov r7, r8
00318530  03 00 55 e1                                      cmp r5, r3
00318534  08 80 84 05                                      streq r8, [r4, #8]
00318538  e3 ff ff ea                                      b #0x3184cc
0031853c  0c 70 84 e5                                      str r7, [r4, #0xc]
00318540  e1 ff ff ea                                      b #0x3184cc
00318544  01 00 a0 e1                                      mov r0, r1
00318548  bf ff ff eb                                      bl #0x31844c
0031854c  07 10 a0 e1                                      mov r1, r7
00318550  00 80 a0 e1                                      mov r8, r0
00318554  10 00 80 e2                                      add r0, r0, #0x10
00318558  ab ff ff eb                                      bl #0x31840c
0031855c  00 30 a0 e3                                      mov r3, #0
00318560  0c 30 88 e5                                      str r3, [r8, #0xc]
00318564  08 30 88 e5                                      str r3, [r8, #8]
00318568  08 70 a0 e1                                      mov r7, r8
0031856c  08 80 84 e5                                      str r8, [r4, #8]
00318570  04 80 84 e5                                      str r8, [r4, #4]
00318574  0c 80 84 e5                                      str r8, [r4, #0xc]
00318578  d3 ff ff ea                                      b #0x3184cc
0031857c  14 00 81 e2                                      add r0, r1, #0x14
00318580  10 20 82 e2                                      add r2, r2, #0x10
00318584  07 10 a0 e1                                      mov r1, r7
00318588  9a ed ff eb                                      bl #0x313bf8
0031858c  00 00 50 e3                                      cmp r0, #0
00318590  bf ff ff 0a                                      beq #0x318494
00318594  d9 ff ff ea                                      b #0x318500

; FUNCTION 0x00318598, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)
; decoder-mode: arm
00318598  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031859c  04 50 91 e5                                      ldr r5, [r1, #4]
003185a0  14 d0 4d e2                                      sub sp, sp, #0x14
003185a4  01 90 a0 e1                                      mov sb, r1
003185a8  00 00 55 e3                                      cmp r5, #0
003185ac  00 40 a0 e1                                      mov r4, r0
003185b0  02 80 a0 e1                                      mov r8, r2
003185b4  38 00 00 0a                                      beq #0x31869c
003185b8  14 70 92 e5                                      ldr r7, [r2, #0x14]
003185bc  10 b0 92 e5                                      ldr fp, [r2, #0x10]
003185c0  0b a0 67 e0                                      rsb sl, r7, fp
003185c4  04 00 00 ea                                      b #0x3185dc
003185c8  08 30 95 e5                                      ldr r3, [r5, #8]
003185cc  01 10 a0 e3                                      mov r1, #1
003185d0  00 00 53 e3                                      cmp r3, #0
003185d4  16 00 00 0a                                      beq #0x318634
003185d8  03 50 a0 e1                                      mov r5, r3
003185dc  24 30 95 e5                                      ldr r3, [r5, #0x24]
003185e0  20 60 95 e5                                      ldr r6, [r5, #0x20]
003185e4  07 00 a0 e1                                      mov r0, r7
003185e8  03 10 a0 e1                                      mov r1, r3
003185ec  06 60 63 e0                                      rsb r6, r3, r6
003185f0  0a 00 56 e1                                      cmp r6, sl
003185f4  06 20 a0 b1                                      movlt r2, r6
003185f8  0a 20 a0 a1                                      movge r2, sl
003185fc  f7 d7 ff eb                                      bl #0x30e5e0
00318600  00 00 50 e3                                      cmp r0, #0
00318604  05 20 a0 e1                                      mov r2, r5
00318608  03 00 00 1a                                      bne #0x31861c
0031860c  06 00 5a e1                                      cmp sl, r6
00318610  ec ff ff ba                                      blt #0x3185c8
00318614  00 00 a0 d3                                      movle r0, #0
00318618  01 00 a0 c3                                      movgt r0, #1
0031861c  00 00 50 e3                                      cmp r0, #0
00318620  e8 ff ff ba                                      blt #0x3185c8
00318624  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00318628  00 10 a0 e3                                      mov r1, #0
0031862c  00 00 53 e3                                      cmp r3, #0
00318630  e8 ff ff 1a                                      bne #0x3185d8
00318634  00 00 51 e3                                      cmp r1, #0
00318638  05 a0 a0 01                                      moveq sl, r5
0031863c  17 00 00 1a                                      bne #0x3186a0
00318640  24 00 92 e5                                      ldr r0, [r2, #0x24]
00318644  20 60 92 e5                                      ldr r6, [r2, #0x20]
00318648  0b b0 67 e0                                      rsb fp, r7, fp
0031864c  07 10 a0 e1                                      mov r1, r7
00318650  06 60 60 e0                                      rsb r6, r0, r6
00318654  06 00 5b e1                                      cmp fp, r6
00318658  0b 20 a0 b1                                      movlt r2, fp
0031865c  06 20 a0 a1                                      movge r2, r6
00318660  de d7 ff eb                                      bl #0x30e5e0
00318664  00 00 50 e3                                      cmp r0, #0
00318668  03 00 00 1a                                      bne #0x31867c
0031866c  0b 00 56 e1                                      cmp r6, fp
00318670  20 00 00 ba                                      blt #0x3186f8
00318674  00 00 a0 d3                                      movle r0, #0
00318678  01 00 a0 c3                                      movgt r0, #1
0031867c  00 00 50 e3                                      cmp r0, #0
00318680  00 30 a0 a3                                      movge r3, #0
00318684  00 a0 84 a5                                      strge sl, [r4]
00318688  04 30 c4 a5                                      strbge r3, [r4, #4]
0031868c  19 00 00 ba                                      blt #0x3186f8
00318690  04 00 a0 e1                                      mov r0, r4
00318694  14 d0 8d e2                                      add sp, sp, #0x14
00318698  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0031869c  01 50 a0 e1                                      mov r5, r1
003186a0  08 30 99 e5                                      ldr r3, [sb, #8]
003186a4  03 00 55 e1                                      cmp r5, r3
003186a8  32 00 00 0a                                      beq #0x318778
003186ac  00 30 d5 e5                                      ldrb r3, [r5]
003186b0  00 00 53 e3                                      cmp r3, #0
003186b4  03 00 00 1a                                      bne #0x3186c8
003186b8  04 30 95 e5                                      ldr r3, [r5, #4]
003186bc  04 30 93 e5                                      ldr r3, [r3, #4]
003186c0  03 00 55 e1                                      cmp r5, r3
003186c4  26 00 00 0a                                      beq #0x318764
003186c8  08 20 95 e5                                      ldr r2, [r5, #8]
003186cc  00 00 52 e3                                      cmp r2, #0
003186d0  01 00 00 1a                                      bne #0x3186dc
003186d4  14 00 00 ea                                      b #0x31872c
003186d8  03 20 a0 e1                                      mov r2, r3
003186dc  0c 30 92 e5                                      ldr r3, [r2, #0xc]
003186e0  00 00 53 e3                                      cmp r3, #0
003186e4  fb ff ff 1a                                      bne #0x3186d8
003186e8  02 a0 a0 e1                                      mov sl, r2
003186ec  14 70 98 e5                                      ldr r7, [r8, #0x14]
003186f0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003186f4  d1 ff ff ea                                      b #0x318640
003186f8  00 c0 a0 e3                                      mov ip, #0
003186fc  05 20 a0 e1                                      mov r2, r5
00318700  08 30 a0 e1                                      mov r3, r8
00318704  09 10 a0 e1                                      mov r1, sb
00318708  08 00 8d e2                                      add r0, sp, #8
0031870c  04 c0 8d e5                                      str ip, [sp, #4]
00318710  00 c0 8d e5                                      str ip, [sp]
00318714  54 ff ff eb                                      bl #0x31846c
00318718  08 30 9d e5                                      ldr r3, [sp, #8]
0031871c  01 20 a0 e3                                      mov r2, #1
00318720  04 20 c4 e5                                      strb r2, [r4, #4]
00318724  00 30 84 e5                                      str r3, [r4]
00318728  d8 ff ff ea                                      b #0x318690
0031872c  04 30 95 e5                                      ldr r3, [r5, #4]
00318730  08 20 93 e5                                      ldr r2, [r3, #8]
00318734  02 00 55 e1                                      cmp r5, r2
00318738  01 00 00 0a                                      beq #0x318744
0031873c  19 00 00 ea                                      b #0x3187a8
00318740  02 30 a0 e1                                      mov r3, r2
00318744  04 20 93 e5                                      ldr r2, [r3, #4]
00318748  08 10 92 e5                                      ldr r1, [r2, #8]
0031874c  03 00 51 e1                                      cmp r1, r3
00318750  fa ff ff 0a                                      beq #0x318740
00318754  14 70 98 e5                                      ldr r7, [r8, #0x14]
00318758  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0031875c  02 a0 a0 e1                                      mov sl, r2
00318760  b6 ff ff ea                                      b #0x318640
00318764  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00318768  14 70 98 e5                                      ldr r7, [r8, #0x14]
0031876c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00318770  02 a0 a0 e1                                      mov sl, r2
00318774  b1 ff ff ea                                      b #0x318640
00318778  05 20 a0 e1                                      mov r2, r5
0031877c  08 30 a0 e1                                      mov r3, r8
00318780  00 c0 a0 e3                                      mov ip, #0
00318784  09 10 a0 e1                                      mov r1, sb
00318788  0c 00 8d e2                                      add r0, sp, #0xc
0031878c  20 10 8d e8                                      stm sp, {r5, ip}
00318790  35 ff ff eb                                      bl #0x31846c
00318794  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00318798  01 20 a0 e3                                      mov r2, #1
0031879c  04 20 c4 e5                                      strb r2, [r4, #4]
003187a0  00 30 84 e5                                      str r3, [r4]
003187a4  b9 ff ff ea                                      b #0x318690
003187a8  03 20 a0 e1                                      mov r2, r3
003187ac  cd ff ff ea                                      b #0x3186e8

; FUNCTION 0x003187b0, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)
; decoder-mode: arm
003187b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003187b4  44 d0 4d e2                                      sub sp, sp, #0x44
003187b8  14 20 8d e5                                      str r2, [sp, #0x14]
003187bc  00 50 92 e5                                      ldr r5, [r2]
003187c0  08 20 91 e5                                      ldr r2, [r1, #8]
003187c4  01 60 a0 e1                                      mov r6, r1
003187c8  00 70 a0 e1                                      mov r7, r0
003187cc  02 00 55 e1                                      cmp r5, r2
003187d0  03 80 a0 e1                                      mov r8, r3
003187d4  7c 00 00 0a                                      beq #0x3189cc
003187d8  01 00 55 e1                                      cmp r5, r1
003187dc  d0 00 00 0a                                      beq #0x318b24
003187e0  00 30 d5 e5                                      ldrb r3, [r5]
003187e4  00 00 53 e3                                      cmp r3, #0
003187e8  35 00 00 0a                                      beq #0x3188c4
003187ec  08 40 95 e5                                      ldr r4, [r5, #8]
003187f0  00 00 54 e3                                      cmp r4, #0
003187f4  01 00 00 1a                                      bne #0x318800
003187f8  39 00 00 ea                                      b #0x3188e4
003187fc  03 40 a0 e1                                      mov r4, r3
00318800  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00318804  00 00 53 e3                                      cmp r3, #0
00318808  fb ff ff 1a                                      bne #0x3187fc
0031880c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00318810  14 90 98 e5                                      ldr sb, [r8, #0x14]
00318814  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00318818  20 20 95 e5                                      ldr r2, [r5, #0x20]
0031881c  03 10 a0 e1                                      mov r1, r3
00318820  0b b0 69 e0                                      rsb fp, sb, fp
00318824  02 20 63 e0                                      rsb r2, r3, r2
00318828  18 20 8d e5                                      str r2, [sp, #0x18]
0031882c  09 00 a0 e1                                      mov r0, sb
00318830  0b 00 52 e1                                      cmp r2, fp
00318834  0b 20 a0 a1                                      movge r2, fp
00318838  0c 30 8d e5                                      str r3, [sp, #0xc]
0031883c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00318840  66 d7 ff eb                                      bl #0x30e5e0
00318844  00 00 50 e3                                      cmp r0, #0
00318848  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0031884c  05 00 00 1a                                      bne #0x318868
00318850  18 20 9d e5                                      ldr r2, [sp, #0x18]
00318854  02 00 5b e1                                      cmp fp, r2
00318858  00 00 e0 b3                                      mvnlt r0, #0
0031885c  01 00 00 ba                                      blt #0x318868
00318860  00 00 a0 d3                                      movle r0, #0
00318864  01 00 a0 c3                                      movgt r0, #1
00318868  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0031886c  28 00 00 1a                                      bne #0x318914
00318870  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00318874  00 00 54 e3                                      cmp r4, #0
00318878  01 00 00 1a                                      bne #0x318884
0031887c  cc 00 00 ea                                      b #0x318bb4
00318880  02 40 a0 e1                                      mov r4, r2
00318884  08 20 94 e5                                      ldr r2, [r4, #8]
00318888  00 00 52 e3                                      cmp r2, #0
0031888c  fb ff ff 1a                                      bne #0x318880
00318890  00 00 5c e3                                      cmp ip, #0
00318894  43 00 00 1a                                      bne #0x3189a8
00318898  03 00 a0 e1                                      mov r0, r3
0031889c  09 10 a0 e1                                      mov r1, sb
003188a0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003188a4  4d d7 ff eb                                      bl #0x30e5e0
003188a8  00 00 50 e3                                      cmp r0, #0
003188ac  34 00 00 1a                                      bne #0x318984
003188b0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003188b4  03 00 5b e1                                      cmp fp, r3
003188b8  32 00 00 ca                                      bgt #0x318988
003188bc  00 50 87 e5                                      str r5, [r7]
003188c0  3e 00 00 ea                                      b #0x3189c0
003188c4  04 30 95 e5                                      ldr r3, [r5, #4]
003188c8  04 30 93 e5                                      ldr r3, [r3, #4]
003188cc  03 00 55 e1                                      cmp r5, r3
003188d0  0c 40 95 05                                      ldreq r4, [r5, #0xc]
003188d4  cc ff ff 0a                                      beq #0x31880c
003188d8  08 40 95 e5                                      ldr r4, [r5, #8]
003188dc  00 00 54 e3                                      cmp r4, #0
003188e0  c6 ff ff 1a                                      bne #0x318800
003188e4  04 40 95 e5                                      ldr r4, [r5, #4]
003188e8  08 30 94 e5                                      ldr r3, [r4, #8]
003188ec  03 00 55 e1                                      cmp r5, r3
003188f0  01 00 00 0a                                      beq #0x3188fc
003188f4  c4 ff ff ea                                      b #0x31880c
003188f8  03 40 a0 e1                                      mov r4, r3
003188fc  04 30 94 e5                                      ldr r3, [r4, #4]
00318900  08 20 93 e5                                      ldr r2, [r3, #8]
00318904  04 00 52 e1                                      cmp r2, r4
00318908  fa ff ff 0a                                      beq #0x3188f8
0031890c  03 40 a0 e1                                      mov r4, r3
00318910  bd ff ff ea                                      b #0x31880c
00318914  24 20 94 e5                                      ldr r2, [r4, #0x24]
00318918  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0031891c  09 10 a0 e1                                      mov r1, sb
00318920  02 00 a0 e1                                      mov r0, r2
00318924  0a a0 62 e0                                      rsb sl, r2, sl
00318928  0a 00 5b e1                                      cmp fp, sl
0031892c  0b 20 a0 b1                                      movlt r2, fp
00318930  0a 20 a0 a1                                      movge r2, sl
00318934  0c 30 8d e5                                      str r3, [sp, #0xc]
00318938  10 c0 8d e5                                      str ip, [sp, #0x10]
0031893c  27 d7 ff eb                                      bl #0x30e5e0
00318940  00 00 50 e3                                      cmp r0, #0
00318944  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00318948  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0031894c  6f 00 00 1a                                      bne #0x318b10
00318950  0a 00 5b e1                                      cmp fp, sl
00318954  c5 ff ff da                                      ble #0x318870
00318958  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0031895c  00 00 5c e3                                      cmp ip, #0
00318960  62 00 00 0a                                      beq #0x318af0
00318964  00 c0 a0 e3                                      mov ip, #0
00318968  06 10 a0 e1                                      mov r1, r6
0031896c  05 20 a0 e1                                      mov r2, r5
00318970  08 30 a0 e1                                      mov r3, r8
00318974  07 00 a0 e1                                      mov r0, r7
00318978  20 10 8d e8                                      stm sp, {r5, ip}
0031897c  ba fe ff eb                                      bl #0x31846c
00318980  0e 00 00 ea                                      b #0x3189c0
00318984  cc ff ff aa                                      bge #0x3188bc
00318988  04 00 56 e1                                      cmp r6, r4
0031898c  9b 00 00 0a                                      beq #0x318c00
00318990  14 00 86 e2                                      add r0, r6, #0x14
00318994  08 10 a0 e1                                      mov r1, r8
00318998  10 20 84 e2                                      add r2, r4, #0x10
0031899c  95 ec ff eb                                      bl #0x313bf8
003189a0  00 00 50 e3                                      cmp r0, #0
003189a4  93 00 00 1a                                      bne #0x318bf8
003189a8  06 10 a0 e1                                      mov r1, r6
003189ac  08 20 a0 e1                                      mov r2, r8
003189b0  20 00 8d e2                                      add r0, sp, #0x20
003189b4  f7 fe ff eb                                      bl #0x318598
003189b8  20 30 9d e5                                      ldr r3, [sp, #0x20]
003189bc  00 30 87 e5                                      str r3, [r7]
003189c0  07 00 a0 e1                                      mov r0, r7
003189c4  44 d0 8d e2                                      add sp, sp, #0x44
003189c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003189cc  10 30 91 e5                                      ldr r3, [r1, #0x10]
003189d0  00 00 53 e3                                      cmp r3, #0
003189d4  9f 00 00 0a                                      beq #0x318c58
003189d8  14 30 98 e5                                      ldr r3, [r8, #0x14]
003189dc  24 10 95 e5                                      ldr r1, [r5, #0x24]
003189e0  10 40 98 e5                                      ldr r4, [r8, #0x10]
003189e4  20 a0 95 e5                                      ldr sl, [r5, #0x20]
003189e8  03 00 a0 e1                                      mov r0, r3
003189ec  04 40 63 e0                                      rsb r4, r3, r4
003189f0  0a a0 61 e0                                      rsb sl, r1, sl
003189f4  04 00 5a e1                                      cmp sl, r4
003189f8  0a 20 a0 b1                                      movlt r2, sl
003189fc  04 20 a0 a1                                      movge r2, r4
00318a00  f6 d6 ff eb                                      bl #0x30e5e0
00318a04  00 00 50 e3                                      cmp r0, #0
00318a08  03 00 00 1a                                      bne #0x318a1c
00318a0c  0a 00 54 e1                                      cmp r4, sl
00318a10  d3 ff ff ba                                      blt #0x318964
00318a14  00 00 a0 d3                                      movle r0, #0
00318a18  01 00 a0 c3                                      movgt r0, #1
00318a1c  00 00 50 e3                                      cmp r0, #0
00318a20  cf ff ff ba                                      blt #0x318964
00318a24  14 a0 86 e2                                      add sl, r6, #0x14
00318a28  10 10 85 e2                                      add r1, r5, #0x10
00318a2c  0a 00 a0 e1                                      mov r0, sl
00318a30  08 20 a0 e1                                      mov r2, r8
00318a34  6f ec ff eb                                      bl #0x313bf8
00318a38  00 00 50 e3                                      cmp r0, #0
00318a3c  81 00 00 0a                                      beq #0x318c48
00318a40  14 30 9d e5                                      ldr r3, [sp, #0x14]
00318a44  00 c0 93 e5                                      ldr ip, [r3]
00318a48  0c 40 9c e5                                      ldr r4, [ip, #0xc]
00318a4c  00 00 54 e3                                      cmp r4, #0
00318a50  22 00 00 1a                                      bne #0x318ae0
00318a54  04 30 9c e5                                      ldr r3, [ip, #4]
00318a58  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00318a5c  02 00 5c e1                                      cmp ip, r2
00318a60  0c 40 a0 11                                      movne r4, ip
00318a64  04 00 00 1a                                      bne #0x318a7c
00318a68  03 40 a0 e1                                      mov r4, r3
00318a6c  04 30 93 e5                                      ldr r3, [r3, #4]
00318a70  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00318a74  04 00 52 e1                                      cmp r2, r4
00318a78  fa ff ff 0a                                      beq #0x318a68
00318a7c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00318a80  02 00 53 e1                                      cmp r3, r2
00318a84  03 40 a0 11                                      movne r4, r3
00318a88  04 00 56 e1                                      cmp r6, r4
00318a8c  7f 00 00 0a                                      beq #0x318c90
00318a90  0a 00 a0 e1                                      mov r0, sl
00318a94  08 10 a0 e1                                      mov r1, r8
00318a98  10 20 84 e2                                      add r2, r4, #0x10
00318a9c  55 ec ff eb                                      bl #0x313bf8
00318aa0  00 00 50 e3                                      cmp r0, #0
00318aa4  60 00 00 0a                                      beq #0x318c2c
00318aa8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00318aac  00 c0 92 e5                                      ldr ip, [r2]
00318ab0  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00318ab4  00 00 5e e3                                      cmp lr, #0
00318ab8  6c 00 00 0a                                      beq #0x318c70
00318abc  00 c0 a0 e3                                      mov ip, #0
00318ac0  06 10 a0 e1                                      mov r1, r6
00318ac4  04 20 a0 e1                                      mov r2, r4
00318ac8  08 30 a0 e1                                      mov r3, r8
00318acc  07 00 a0 e1                                      mov r0, r7
00318ad0  10 10 8d e8                                      stm sp, {r4, ip}
00318ad4  64 fe ff eb                                      bl #0x31846c
00318ad8  b8 ff ff ea                                      b #0x3189c0
00318adc  03 40 a0 e1                                      mov r4, r3
00318ae0  08 30 94 e5                                      ldr r3, [r4, #8]
00318ae4  00 00 53 e3                                      cmp r3, #0
00318ae8  fb ff ff 1a                                      bne #0x318adc
00318aec  e5 ff ff ea                                      b #0x318a88
00318af0  06 10 a0 e1                                      mov r1, r6
00318af4  04 20 a0 e1                                      mov r2, r4
00318af8  08 30 a0 e1                                      mov r3, r8
00318afc  07 00 a0 e1                                      mov r0, r7
00318b00  00 c0 8d e5                                      str ip, [sp]
00318b04  04 40 8d e5                                      str r4, [sp, #4]
00318b08  57 fe ff eb                                      bl #0x31846c
00318b0c  ab ff ff ea                                      b #0x3189c0
00318b10  56 ff ff aa                                      bge #0x318870
00318b14  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00318b18  00 00 5c e3                                      cmp ip, #0
00318b1c  90 ff ff 1a                                      bne #0x318964
00318b20  f2 ff ff ea                                      b #0x318af0
00318b24  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00318b28  14 10 93 e5                                      ldr r1, [r3, #0x14]
00318b2c  10 90 93 e5                                      ldr sb, [r3, #0x10]
00318b30  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00318b34  24 30 94 e5                                      ldr r3, [r4, #0x24]
00318b38  09 90 61 e0                                      rsb sb, r1, sb
00318b3c  0a a0 63 e0                                      rsb sl, r3, sl
00318b40  0a 00 59 e1                                      cmp sb, sl
00318b44  09 20 a0 b1                                      movlt r2, sb
00318b48  0a 20 a0 a1                                      movge r2, sl
00318b4c  03 00 a0 e1                                      mov r0, r3
00318b50  a2 d6 ff eb                                      bl #0x30e5e0
00318b54  00 00 50 e3                                      cmp r0, #0
00318b58  03 00 00 1a                                      bne #0x318b6c
00318b5c  09 00 5a e1                                      cmp sl, sb
00318b60  03 00 00 ba                                      blt #0x318b74
00318b64  00 00 a0 d3                                      movle r0, #0
00318b68  01 00 a0 c3                                      movgt r0, #1
00318b6c  00 00 50 e3                                      cmp r0, #0
00318b70  08 00 00 aa                                      bge #0x318b98
00318b74  00 c0 a0 e3                                      mov ip, #0
00318b78  06 10 a0 e1                                      mov r1, r6
00318b7c  04 20 a0 e1                                      mov r2, r4
00318b80  08 30 a0 e1                                      mov r3, r8
00318b84  07 00 a0 e1                                      mov r0, r7
00318b88  00 c0 8d e5                                      str ip, [sp]
00318b8c  04 50 8d e5                                      str r5, [sp, #4]
00318b90  35 fe ff eb                                      bl #0x31846c
00318b94  89 ff ff ea                                      b #0x3189c0
00318b98  06 10 a0 e1                                      mov r1, r6
00318b9c  08 20 a0 e1                                      mov r2, r8
00318ba0  28 00 8d e2                                      add r0, sp, #0x28
00318ba4  7b fe ff eb                                      bl #0x318598
00318ba8  28 30 9d e5                                      ldr r3, [sp, #0x28]
00318bac  00 30 87 e5                                      str r3, [r7]
00318bb0  82 ff ff ea                                      b #0x3189c0
00318bb4  04 20 95 e5                                      ldr r2, [r5, #4]
00318bb8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00318bbc  01 00 55 e1                                      cmp r5, r1
00318bc0  05 40 a0 11                                      movne r4, r5
00318bc4  04 00 00 0a                                      beq #0x318bdc
00318bc8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00318bcc  01 00 52 e1                                      cmp r2, r1
00318bd0  02 40 a0 11                                      movne r4, r2
00318bd4  2d ff ff ea                                      b #0x318890
00318bd8  01 20 a0 e1                                      mov r2, r1
00318bdc  04 10 92 e5                                      ldr r1, [r2, #4]
00318be0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00318be4  02 00 50 e1                                      cmp r0, r2
00318be8  fa ff ff 0a                                      beq #0x318bd8
00318bec  02 40 a0 e1                                      mov r4, r2
00318bf0  01 20 a0 e1                                      mov r2, r1
00318bf4  f3 ff ff ea                                      b #0x318bc8
00318bf8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00318bfc  00 50 92 e5                                      ldr r5, [r2]
00318c00  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00318c04  00 00 5c e3                                      cmp ip, #0
00318c08  ab ff ff 1a                                      bne #0x318abc
00318c0c  06 10 a0 e1                                      mov r1, r6
00318c10  05 20 a0 e1                                      mov r2, r5
00318c14  08 30 a0 e1                                      mov r3, r8
00318c18  07 00 a0 e1                                      mov r0, r7
00318c1c  00 c0 8d e5                                      str ip, [sp]
00318c20  04 50 8d e5                                      str r5, [sp, #4]
00318c24  10 fe ff eb                                      bl #0x31846c
00318c28  64 ff ff ea                                      b #0x3189c0
00318c2c  06 10 a0 e1                                      mov r1, r6
00318c30  08 20 a0 e1                                      mov r2, r8
00318c34  30 00 8d e2                                      add r0, sp, #0x30
00318c38  56 fe ff eb                                      bl #0x318598
00318c3c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00318c40  00 30 87 e5                                      str r3, [r7]
00318c44  5d ff ff ea                                      b #0x3189c0
00318c48  14 20 9d e5                                      ldr r2, [sp, #0x14]
00318c4c  00 30 92 e5                                      ldr r3, [r2]
00318c50  00 30 87 e5                                      str r3, [r7]
00318c54  59 ff ff ea                                      b #0x3189c0
00318c58  08 20 a0 e1                                      mov r2, r8
00318c5c  38 00 8d e2                                      add r0, sp, #0x38
00318c60  4c fe ff eb                                      bl #0x318598
00318c64  38 30 9d e5                                      ldr r3, [sp, #0x38]
00318c68  00 30 87 e5                                      str r3, [r7]
00318c6c  53 ff ff ea                                      b #0x3189c0
00318c70  06 10 a0 e1                                      mov r1, r6
00318c74  0c 20 a0 e1                                      mov r2, ip
00318c78  08 30 a0 e1                                      mov r3, r8
00318c7c  07 00 a0 e1                                      mov r0, r7
00318c80  00 e0 8d e5                                      str lr, [sp]
00318c84  04 c0 8d e5                                      str ip, [sp, #4]
00318c88  f7 fd ff eb                                      bl #0x31846c
00318c8c  4b ff ff ea                                      b #0x3189c0
00318c90  00 e0 a0 e3                                      mov lr, #0
00318c94  06 10 a0 e1                                      mov r1, r6
00318c98  0c 20 a0 e1                                      mov r2, ip
00318c9c  08 30 a0 e1                                      mov r3, r8
00318ca0  07 00 a0 e1                                      mov r0, r7
00318ca4  00 e0 8d e5                                      str lr, [sp]
00318ca8  04 c0 8d e5                                      str ip, [sp, #4]
00318cac  ee fd ff eb                                      bl #0x31846c
00318cb0  42 ff ff ea                                      b #0x3189c0

; FUNCTION 0x0082f364, declared_size=348, range_size=348, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_.clone.3
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.3]
; decoder-mode: arm
0082f364  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0082f368  48 41 9f e5                                      ldr r4, [pc, #0x148]
0082f36c  48 61 9f e5                                      ldr r6, [pc, #0x148]
0082f370  01 50 a0 e1                                      mov r5, r1
0082f374  04 40 8f e0                                      add r4, pc, r4
0082f378  06 10 94 e7                                      ldr r1, [r4, r6]
0082f37c  00 70 a0 e1                                      mov r7, r0
0082f380  02 80 a0 e1                                      mov r8, r2
0082f384  01 00 55 e1                                      cmp r5, r1
0082f388  11 00 00 0a                                      beq #0x82f3d4
0082f38c  00 00 53 e3                                      cmp r3, #0
0082f390  27 00 00 0a                                      beq #0x82f434
0082f394  06 a0 94 e7                                      ldr sl, [r4, r6]
0082f398  0a 00 a0 e1                                      mov r0, sl
0082f39c  ad fd ff eb                                      bl #0x82ea58
0082f3a0  08 10 a0 e1                                      mov r1, r8
0082f3a4  00 90 a0 e1                                      mov sb, r0
0082f3a8  10 00 80 e2                                      add r0, r0, #0x10
0082f3ac  16 a4 eb eb                                      bl #0x31840c
0082f3b0  00 30 a0 e3                                      mov r3, #0
0082f3b4  0c 30 89 e5                                      str r3, [sb, #0xc]
0082f3b8  08 30 89 e5                                      str r3, [sb, #8]
0082f3bc  08 90 85 e5                                      str sb, [r5, #8]
0082f3c0  08 30 9a e5                                      ldr r3, [sl, #8]
0082f3c4  09 80 a0 e1                                      mov r8, sb
0082f3c8  03 00 55 e1                                      cmp r5, r3
0082f3cc  08 90 8a 05                                      streq sb, [sl, #8]
0082f3d0  0c 00 00 ea                                      b #0x82f408
0082f3d4  05 00 a0 e1                                      mov r0, r5
0082f3d8  9e fd ff eb                                      bl #0x82ea58
0082f3dc  08 10 a0 e1                                      mov r1, r8
0082f3e0  00 a0 a0 e1                                      mov sl, r0
0082f3e4  10 00 80 e2                                      add r0, r0, #0x10
0082f3e8  07 a4 eb eb                                      bl #0x31840c
0082f3ec  00 30 a0 e3                                      mov r3, #0
0082f3f0  0c 30 8a e5                                      str r3, [sl, #0xc]
0082f3f4  08 30 8a e5                                      str r3, [sl, #8]
0082f3f8  0a 80 a0 e1                                      mov r8, sl
0082f3fc  08 a0 85 e5                                      str sl, [r5, #8]
0082f400  04 a0 85 e5                                      str sl, [r5, #4]
0082f404  0c a0 85 e5                                      str sl, [r5, #0xc]
0082f408  06 40 94 e7                                      ldr r4, [r4, r6]
0082f40c  08 00 a0 e1                                      mov r0, r8
0082f410  04 50 88 e5                                      str r5, [r8, #4]
0082f414  04 10 84 e2                                      add r1, r4, #4
0082f418  d0 90 eb eb                                      bl #0x313760
0082f41c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0082f420  07 00 a0 e1                                      mov r0, r7
0082f424  01 30 83 e2                                      add r3, r3, #1
0082f428  10 30 84 e5                                      str r3, [r4, #0x10]
0082f42c  00 80 87 e5                                      str r8, [r7]
0082f430  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0082f434  14 30 92 e5                                      ldr r3, [r2, #0x14]
0082f438  24 10 95 e5                                      ldr r1, [r5, #0x24]
0082f43c  10 90 92 e5                                      ldr sb, [r2, #0x10]
0082f440  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0082f444  03 00 a0 e1                                      mov r0, r3
0082f448  09 90 63 e0                                      rsb sb, r3, sb
0082f44c  0a a0 61 e0                                      rsb sl, r1, sl
0082f450  09 00 5a e1                                      cmp sl, sb
0082f454  0a 20 a0 b1                                      movlt r2, sl
0082f458  09 20 a0 a1                                      movge r2, sb
0082f45c  5f 7c eb eb                                      bl #0x30e5e0
0082f460  00 00 50 e3                                      cmp r0, #0
0082f464  11 00 00 1a                                      bne #0x82f4b0
0082f468  0a 00 59 e1                                      cmp sb, sl
0082f46c  c8 ff ff ba                                      blt #0x82f394
0082f470  06 a0 94 e7                                      ldr sl, [r4, r6]
0082f474  0a 00 a0 e1                                      mov r0, sl
0082f478  76 fd ff eb                                      bl #0x82ea58
0082f47c  08 10 a0 e1                                      mov r1, r8
0082f480  00 90 a0 e1                                      mov sb, r0
0082f484  10 00 80 e2                                      add r0, r0, #0x10
0082f488  df a3 eb eb                                      bl #0x31840c
0082f48c  00 30 a0 e3                                      mov r3, #0
0082f490  0c 30 89 e5                                      str r3, [sb, #0xc]
0082f494  08 30 89 e5                                      str r3, [sb, #8]
0082f498  0c 90 85 e5                                      str sb, [r5, #0xc]
0082f49c  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0082f4a0  09 80 a0 e1                                      mov r8, sb
0082f4a4  03 00 55 e1                                      cmp r5, r3
0082f4a8  0c 90 8a 05                                      streq sb, [sl, #0xc]
0082f4ac  d5 ff ff ea                                      b #0x82f408
0082f4b0  ee ff ff aa                                      bge #0x82f470
0082f4b4  b6 ff ff ea                                      b #0x82f394
; mapping-symbol data/literal pool
0082f4b8  1c 57 16 00 f8 36 00 00                          .byte 0x1c, 0x57, 0x16, 0x00, 0xf8, 0x36, 0x00, 0x00

; FUNCTION 0x0082f4c0, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_.clone.1
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&) [clone .clone.1]
; decoder-mode: arm
0082f4c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082f4c4  04 82 9f e5                                      ldr r8, [pc, #0x204]
0082f4c8  04 22 9f e5                                      ldr r2, [pc, #0x204]
0082f4cc  14 d0 4d e2                                      sub sp, sp, #0x14
0082f4d0  08 80 8f e0                                      add r8, pc, r8
0082f4d4  02 30 98 e7                                      ldr r3, [r8, r2]
0082f4d8  04 20 8d e5                                      str r2, [sp, #4]
0082f4dc  00 90 a0 e1                                      mov sb, r0
0082f4e0  04 40 93 e5                                      ldr r4, [r3, #4]
0082f4e4  01 a0 a0 e1                                      mov sl, r1
0082f4e8  00 00 54 e3                                      cmp r4, #0
0082f4ec  38 00 00 0a                                      beq #0x82f5d4
0082f4f0  14 70 91 e5                                      ldr r7, [r1, #0x14]
0082f4f4  10 b0 91 e5                                      ldr fp, [r1, #0x10]
0082f4f8  0b 60 67 e0                                      rsb r6, r7, fp
0082f4fc  04 00 00 ea                                      b #0x82f514
0082f500  08 30 94 e5                                      ldr r3, [r4, #8]
0082f504  01 10 a0 e3                                      mov r1, #1
0082f508  00 00 53 e3                                      cmp r3, #0
0082f50c  16 00 00 0a                                      beq #0x82f56c
0082f510  03 40 a0 e1                                      mov r4, r3
0082f514  24 30 94 e5                                      ldr r3, [r4, #0x24]
0082f518  20 50 94 e5                                      ldr r5, [r4, #0x20]
0082f51c  07 00 a0 e1                                      mov r0, r7
0082f520  03 10 a0 e1                                      mov r1, r3
0082f524  05 50 63 e0                                      rsb r5, r3, r5
0082f528  06 00 55 e1                                      cmp r5, r6
0082f52c  05 20 a0 b1                                      movlt r2, r5
0082f530  06 20 a0 a1                                      movge r2, r6
0082f534  29 7c eb eb                                      bl #0x30e5e0
0082f538  00 00 50 e3                                      cmp r0, #0
0082f53c  04 20 a0 e1                                      mov r2, r4
0082f540  03 00 00 1a                                      bne #0x82f554
0082f544  05 00 56 e1                                      cmp r6, r5
0082f548  ec ff ff ba                                      blt #0x82f500
0082f54c  00 00 a0 d3                                      movle r0, #0
0082f550  01 00 a0 c3                                      movgt r0, #1
0082f554  00 00 50 e3                                      cmp r0, #0
0082f558  e8 ff ff ba                                      blt #0x82f500
0082f55c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0082f560  00 10 a0 e3                                      mov r1, #0
0082f564  00 00 53 e3                                      cmp r3, #0
0082f568  e8 ff ff 1a                                      bne #0x82f510
0082f56c  00 00 51 e3                                      cmp r1, #0
0082f570  04 50 a0 01                                      moveq r5, r4
0082f574  17 00 00 1a                                      bne #0x82f5d8
0082f578  24 00 92 e5                                      ldr r0, [r2, #0x24]
0082f57c  20 60 92 e5                                      ldr r6, [r2, #0x20]
0082f580  0b b0 67 e0                                      rsb fp, r7, fp
0082f584  07 10 a0 e1                                      mov r1, r7
0082f588  06 60 60 e0                                      rsb r6, r0, r6
0082f58c  06 00 5b e1                                      cmp fp, r6
0082f590  0b 20 a0 b1                                      movlt r2, fp
0082f594  06 20 a0 a1                                      movge r2, r6
0082f598  10 7c eb eb                                      bl #0x30e5e0
0082f59c  00 00 50 e3                                      cmp r0, #0
0082f5a0  03 00 00 1a                                      bne #0x82f5b4
0082f5a4  0b 00 56 e1                                      cmp r6, fp
0082f5a8  22 00 00 ba                                      blt #0x82f638
0082f5ac  00 00 a0 d3                                      movle r0, #0
0082f5b0  01 00 a0 c3                                      movgt r0, #1
0082f5b4  00 00 50 e3                                      cmp r0, #0
0082f5b8  00 30 a0 a3                                      movge r3, #0
0082f5bc  00 50 89 a5                                      strge r5, [sb]
0082f5c0  04 30 c9 a5                                      strbge r3, [sb, #4]
0082f5c4  1b 00 00 ba                                      blt #0x82f638
0082f5c8  09 00 a0 e1                                      mov r0, sb
0082f5cc  14 d0 8d e2                                      add sp, sp, #0x14
0082f5d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082f5d4  03 40 a0 e1                                      mov r4, r3
0082f5d8  04 20 9d e5                                      ldr r2, [sp, #4]
0082f5dc  02 30 98 e7                                      ldr r3, [r8, r2]
0082f5e0  08 30 93 e5                                      ldr r3, [r3, #8]
0082f5e4  04 00 53 e1                                      cmp r3, r4
0082f5e8  2e 00 00 0a                                      beq #0x82f6a8
0082f5ec  00 30 d4 e5                                      ldrb r3, [r4]
0082f5f0  00 00 53 e3                                      cmp r3, #0
0082f5f4  03 00 00 1a                                      bne #0x82f608
0082f5f8  04 30 94 e5                                      ldr r3, [r4, #4]
0082f5fc  04 30 93 e5                                      ldr r3, [r3, #4]
0082f600  03 00 54 e1                                      cmp r4, r3
0082f604  22 00 00 0a                                      beq #0x82f694
0082f608  08 50 94 e5                                      ldr r5, [r4, #8]
0082f60c  00 00 55 e3                                      cmp r5, #0
0082f610  12 00 00 0a                                      beq #0x82f660
0082f614  00 00 00 ea                                      b #0x82f61c
0082f618  03 50 a0 e1                                      mov r5, r3
0082f61c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0082f620  00 00 53 e3                                      cmp r3, #0
0082f624  fb ff ff 1a                                      bne #0x82f618
0082f628  05 20 a0 e1                                      mov r2, r5
0082f62c  14 70 9a e5                                      ldr r7, [sl, #0x14]
0082f630  10 b0 9a e5                                      ldr fp, [sl, #0x10]
0082f634  cf ff ff ea                                      b #0x82f578
0082f638  0a 20 a0 e1                                      mov r2, sl
0082f63c  00 30 a0 e3                                      mov r3, #0
0082f640  04 10 a0 e1                                      mov r1, r4
0082f644  0c 00 8d e2                                      add r0, sp, #0xc
0082f648  45 ff ff eb                                      bl #0x82f364
0082f64c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0082f650  01 20 a0 e3                                      mov r2, #1
0082f654  04 20 c9 e5                                      strb r2, [sb, #4]
0082f658  00 30 89 e5                                      str r3, [sb]
0082f65c  d9 ff ff ea                                      b #0x82f5c8
0082f660  04 50 94 e5                                      ldr r5, [r4, #4]
0082f664  08 30 95 e5                                      ldr r3, [r5, #8]
0082f668  03 00 54 e1                                      cmp r4, r3
0082f66c  ed ff ff 1a                                      bne #0x82f628
0082f670  05 30 a0 e1                                      mov r3, r5
0082f674  04 50 95 e5                                      ldr r5, [r5, #4]
0082f678  08 20 95 e5                                      ldr r2, [r5, #8]
0082f67c  03 00 52 e1                                      cmp r2, r3
0082f680  fa ff ff 0a                                      beq #0x82f670
0082f684  14 70 9a e5                                      ldr r7, [sl, #0x14]
0082f688  10 b0 9a e5                                      ldr fp, [sl, #0x10]
0082f68c  05 20 a0 e1                                      mov r2, r5
0082f690  b8 ff ff ea                                      b #0x82f578
0082f694  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0082f698  14 70 9a e5                                      ldr r7, [sl, #0x14]
0082f69c  10 b0 9a e5                                      ldr fp, [sl, #0x10]
0082f6a0  05 20 a0 e1                                      mov r2, r5
0082f6a4  b3 ff ff ea                                      b #0x82f578
0082f6a8  0a 20 a0 e1                                      mov r2, sl
0082f6ac  04 30 a0 e1                                      mov r3, r4
0082f6b0  04 10 a0 e1                                      mov r1, r4
0082f6b4  08 00 8d e2                                      add r0, sp, #8
0082f6b8  29 ff ff eb                                      bl #0x82f364
0082f6bc  08 30 9d e5                                      ldr r3, [sp, #8]
0082f6c0  01 20 a0 e3                                      mov r2, #1
0082f6c4  04 20 c9 e5                                      strb r2, [sb, #4]
0082f6c8  00 30 89 e5                                      str r3, [sb]
0082f6cc  bd ff ff ea                                      b #0x82f5c8
; mapping-symbol data/literal pool
0082f6d0  c0 55 16 00 f8 36 00 00                          .byte 0xc0, 0x55, 0x16, 0x00, 0xf8, 0x36, 0x00, 0x00
