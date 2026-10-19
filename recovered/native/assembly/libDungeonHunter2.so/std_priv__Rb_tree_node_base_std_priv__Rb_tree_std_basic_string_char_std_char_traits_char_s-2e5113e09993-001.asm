; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00414484, declared_size=500, range_size=500, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
00414484  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00414488  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
0041448c  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
00414490  54 d0 4d e2                                      sub sp, sp, #0x54
00414494  02 20 8f e0                                      add r2, pc, r2
00414498  0c 30 8d e5                                      str r3, [sp, #0xc]
0041449c  03 30 92 e7                                      ldr r3, [r2, r3]
004144a0  04 20 8d e5                                      str r2, [sp, #4]
004144a4  08 00 8d e5                                      str r0, [sp, #8]
004144a8  04 50 90 e5                                      ldr r5, [r0, #4]
004144ac  00 30 93 e5                                      ldr r3, [r3]
004144b0  01 90 a0 e1                                      mov sb, r1
004144b4  00 00 55 e3                                      cmp r5, #0
004144b8  4c 30 8d e5                                      str r3, [sp, #0x4c]
004144bc  5a 00 00 0a                                      beq #0x41462c
004144c0  00 a0 a0 e1                                      mov sl, r0
004144c4  18 00 8d e2                                      add r0, sp, #0x18
004144c8  34 80 8d e2                                      add r8, sp, #0x34
004144cc  00 00 8d e5                                      str r0, [sp]
004144d0  07 00 00 ea                                      b #0x4144f4
004144d4  04 00 a0 e1                                      mov r0, r4
004144d8  88 d2 0b eb                                      bl #0x708f00
004144dc  00 00 5b e3                                      cmp fp, #0
004144e0  05 a0 a0 a1                                      movge sl, r5
004144e4  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
004144e8  08 50 95 a5                                      ldrge r5, [r5, #8]
004144ec  00 00 55 e3                                      cmp r5, #0
004144f0  26 00 00 0a                                      beq #0x414590
004144f4  00 10 99 e5                                      ldr r1, [sb]
004144f8  00 20 9d e5                                      ldr r2, [sp]
004144fc  08 00 a0 e1                                      mov r0, r8
00414500  f9 fe fb eb                                      bl #0x3140ec
00414504  24 30 95 e5                                      ldr r3, [r5, #0x24]
00414508  48 40 9d e5                                      ldr r4, [sp, #0x48]
0041450c  20 70 95 e5                                      ldr r7, [r5, #0x20]
00414510  44 60 9d e5                                      ldr r6, [sp, #0x44]
00414514  03 00 a0 e1                                      mov r0, r3
00414518  07 70 63 e0                                      rsb r7, r3, r7
0041451c  06 60 64 e0                                      rsb r6, r4, r6
00414520  07 00 56 e1                                      cmp r6, r7
00414524  06 20 a0 b1                                      movlt r2, r6
00414528  07 20 a0 a1                                      movge r2, r7
0041452c  04 10 a0 e1                                      mov r1, r4
00414530  2a e8 fb eb                                      bl #0x30e5e0
00414534  00 b0 50 e2                                      subs fp, r0, #0
00414538  04 00 00 1a                                      bne #0x414550
0041453c  06 00 57 e1                                      cmp r7, r6
00414540  00 b0 e0 b3                                      mvnlt fp, #0
00414544  01 00 00 ba                                      blt #0x414550
00414548  00 b0 a0 d3                                      movle fp, #0
0041454c  01 b0 a0 c3                                      movgt fp, #1
00414550  08 00 54 e1                                      cmp r4, r8
00414554  e0 ff ff 0a                                      beq #0x4144dc
00414558  00 00 54 e3                                      cmp r4, #0
0041455c  de ff ff 0a                                      beq #0x4144dc
00414560  34 10 9d e5                                      ldr r1, [sp, #0x34]
00414564  01 10 64 e0                                      rsb r1, r4, r1
00414568  80 00 51 e3                                      cmp r1, #0x80
0041456c  d8 ff ff 9a                                      bls #0x4144d4
00414570  04 00 a0 e1                                      mov r0, r4
00414574  b1 ef fb eb                                      bl #0x310440
00414578  00 00 5b e3                                      cmp fp, #0
0041457c  05 a0 a0 a1                                      movge sl, r5
00414580  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00414584  08 50 95 a5                                      ldrge r5, [r5, #8]
00414588  00 00 55 e3                                      cmp r5, #0
0041458c  d8 ff ff 1a                                      bne #0x4144f4
00414590  08 10 9d e5                                      ldr r1, [sp, #8]
00414594  01 00 5a e1                                      cmp sl, r1
00414598  24 00 00 0a                                      beq #0x414630
0041459c  1c 50 8d e2                                      add r5, sp, #0x1c
004145a0  00 10 99 e5                                      ldr r1, [sb]
004145a4  14 20 8d e2                                      add r2, sp, #0x14
004145a8  05 00 a0 e1                                      mov r0, r5
004145ac  ce fe fb eb                                      bl #0x3140ec
004145b0  24 30 9a e5                                      ldr r3, [sl, #0x24]
004145b4  30 40 9d e5                                      ldr r4, [sp, #0x30]
004145b8  20 70 9a e5                                      ldr r7, [sl, #0x20]
004145bc  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
004145c0  03 10 a0 e1                                      mov r1, r3
004145c4  07 70 63 e0                                      rsb r7, r3, r7
004145c8  06 60 64 e0                                      rsb r6, r4, r6
004145cc  06 00 57 e1                                      cmp r7, r6
004145d0  07 20 a0 b1                                      movlt r2, r7
004145d4  06 20 a0 a1                                      movge r2, r6
004145d8  04 00 a0 e1                                      mov r0, r4
004145dc  ff e7 fb eb                                      bl #0x30e5e0
004145e0  00 80 50 e2                                      subs r8, r0, #0
004145e4  04 00 00 1a                                      bne #0x4145fc
004145e8  07 00 56 e1                                      cmp r6, r7
004145ec  00 80 e0 b3                                      mvnlt r8, #0
004145f0  01 00 00 ba                                      blt #0x4145fc
004145f4  00 80 a0 d3                                      movle r8, #0
004145f8  01 80 a0 c3                                      movgt r8, #1
004145fc  05 00 54 e1                                      cmp r4, r5
00414600  07 00 00 0a                                      beq #0x414624
00414604  00 00 54 e3                                      cmp r4, #0
00414608  05 00 00 0a                                      beq #0x414624
0041460c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00414610  01 10 64 e0                                      rsb r1, r4, r1
00414614  80 00 51 e3                                      cmp r1, #0x80
00414618  0e 00 00 8a                                      bhi #0x414658
0041461c  04 00 a0 e1                                      mov r0, r4
00414620  36 d2 0b eb                                      bl #0x708f00
00414624  00 00 58 e3                                      cmp r8, #0
00414628  00 00 00 aa                                      bge #0x414630
0041462c  08 a0 9d e5                                      ldr sl, [sp, #8]
00414630  04 00 9d e5                                      ldr r0, [sp, #4]
00414634  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00414638  02 30 90 e7                                      ldr r3, [r0, r2]
0041463c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00414640  0a 00 a0 e1                                      mov r0, sl
00414644  00 30 93 e5                                      ldr r3, [r3]
00414648  03 00 52 e1                                      cmp r2, r3
0041464c  06 00 00 1a                                      bne #0x41466c
00414650  54 d0 8d e2                                      add sp, sp, #0x54
00414654  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00414658  04 00 a0 e1                                      mov r0, r4
0041465c  77 ef fb eb                                      bl #0x310440
00414660  00 00 58 e3                                      cmp r8, #0
00414664  f0 ff ff ba                                      blt #0x41462c
00414668  f0 ff ff ea                                      b #0x414630
0041466c  27 e7 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00414670  fc 05 58 00 ac 40 00 00                          .byte 0xfc, 0x05, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004146ac, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
004146ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004146b0  20 21 9f e5                                      ldr r2, [pc, #0x120]
004146b4  20 31 9f e5                                      ldr r3, [pc, #0x120]
004146b8  34 d0 4d e2                                      sub sp, sp, #0x34
004146bc  02 20 8f e0                                      add r2, pc, r2
004146c0  0c 30 8d e5                                      str r3, [sp, #0xc]
004146c4  03 30 92 e7                                      ldr r3, [r2, r3]
004146c8  05 00 8d e9                                      stmib sp, {r0, r2}
004146cc  00 30 93 e5                                      ldr r3, [r3]
004146d0  01 a0 a0 e1                                      mov sl, r1
004146d4  2c 30 8d e5                                      str r3, [sp, #0x2c]
004146d8  04 50 90 e5                                      ldr r5, [r0, #4]
004146dc  00 00 55 e3                                      cmp r5, #0
004146e0  31 00 00 0a                                      beq #0x4147ac
004146e4  14 80 8d e2                                      add r8, sp, #0x14
004146e8  10 90 8d e2                                      add sb, sp, #0x10
004146ec  07 00 00 ea                                      b #0x414710
004146f0  04 00 a0 e1                                      mov r0, r4
004146f4  01 d2 0b eb                                      bl #0x708f00
004146f8  00 00 5b e3                                      cmp fp, #0
004146fc  04 50 8d a5                                      strge r5, [sp, #4]
00414700  08 50 95 a5                                      ldrge r5, [r5, #8]
00414704  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00414708  00 00 55 e3                                      cmp r5, #0
0041470c  26 00 00 0a                                      beq #0x4147ac
00414710  00 10 9a e5                                      ldr r1, [sl]
00414714  09 20 a0 e1                                      mov r2, sb
00414718  08 00 a0 e1                                      mov r0, r8
0041471c  72 fe fb eb                                      bl #0x3140ec
00414720  24 30 95 e5                                      ldr r3, [r5, #0x24]
00414724  28 40 9d e5                                      ldr r4, [sp, #0x28]
00414728  20 70 95 e5                                      ldr r7, [r5, #0x20]
0041472c  24 60 9d e5                                      ldr r6, [sp, #0x24]
00414730  03 00 a0 e1                                      mov r0, r3
00414734  07 70 63 e0                                      rsb r7, r3, r7
00414738  06 60 64 e0                                      rsb r6, r4, r6
0041473c  07 00 56 e1                                      cmp r6, r7
00414740  06 20 a0 b1                                      movlt r2, r6
00414744  07 20 a0 a1                                      movge r2, r7
00414748  04 10 a0 e1                                      mov r1, r4
0041474c  a3 e7 fb eb                                      bl #0x30e5e0
00414750  00 b0 50 e2                                      subs fp, r0, #0
00414754  04 00 00 1a                                      bne #0x41476c
00414758  06 00 57 e1                                      cmp r7, r6
0041475c  00 b0 e0 b3                                      mvnlt fp, #0
00414760  01 00 00 ba                                      blt #0x41476c
00414764  00 b0 a0 d3                                      movle fp, #0
00414768  01 b0 a0 c3                                      movgt fp, #1
0041476c  08 00 54 e1                                      cmp r4, r8
00414770  e0 ff ff 0a                                      beq #0x4146f8
00414774  00 00 54 e3                                      cmp r4, #0
00414778  de ff ff 0a                                      beq #0x4146f8
0041477c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00414780  01 10 64 e0                                      rsb r1, r4, r1
00414784  80 00 51 e3                                      cmp r1, #0x80
00414788  d8 ff ff 9a                                      bls #0x4146f0
0041478c  04 00 a0 e1                                      mov r0, r4
00414790  2a ef fb eb                                      bl #0x310440
00414794  00 00 5b e3                                      cmp fp, #0
00414798  04 50 8d a5                                      strge r5, [sp, #4]
0041479c  08 50 95 a5                                      ldrge r5, [r5, #8]
004147a0  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
004147a4  00 00 55 e3                                      cmp r5, #0
004147a8  d8 ff ff 1a                                      bne #0x414710
004147ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004147b0  08 10 9d e5                                      ldr r1, [sp, #8]
004147b4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
004147b8  00 30 91 e7                                      ldr r3, [r1, r0]
004147bc  04 00 9d e5                                      ldr r0, [sp, #4]
004147c0  00 30 93 e5                                      ldr r3, [r3]
004147c4  03 00 52 e1                                      cmp r2, r3
004147c8  01 00 00 1a                                      bne #0x4147d4
004147cc  34 d0 8d e2                                      add sp, sp, #0x34
004147d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004147d4  cd e6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004147d8  d4 03 58 00 ac 40 00 00                          .byte 0xd4, 0x03, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004c4690, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE14_M_lower_boundIA256_cEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_M_lower_bound<char [256]>(char const (&) [256]) const
; decoder-mode: arm
004c4690  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c4694  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
004c4698  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
004c469c  2c d0 4d e2                                      sub sp, sp, #0x2c
004c46a0  0b b0 8f e0                                      add fp, pc, fp
004c46a4  02 30 9b e7                                      ldr r3, [fp, r2]
004c46a8  04 20 8d e5                                      str r2, [sp, #4]
004c46ac  00 90 a0 e1                                      mov sb, r0
004c46b0  00 30 93 e5                                      ldr r3, [r3]
004c46b4  01 80 a0 e1                                      mov r8, r1
004c46b8  24 30 8d e5                                      str r3, [sp, #0x24]
004c46bc  04 40 90 e5                                      ldr r4, [r0, #4]
004c46c0  00 00 54 e3                                      cmp r4, #0
004c46c4  21 00 00 0a                                      beq #0x4c4750
004c46c8  0c 70 8d e2                                      add r7, sp, #0xc
004c46cc  08 a0 8d e2                                      add sl, sp, #8
004c46d0  08 10 a0 e1                                      mov r1, r8
004c46d4  0a 20 a0 e1                                      mov r2, sl
004c46d8  07 00 a0 e1                                      mov r0, r7
004c46dc  82 3e f9 eb                                      bl #0x3140ec
004c46e0  24 30 94 e5                                      ldr r3, [r4, #0x24]
004c46e4  20 10 9d e5                                      ldr r1, [sp, #0x20]
004c46e8  20 60 94 e5                                      ldr r6, [r4, #0x20]
004c46ec  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
004c46f0  03 00 a0 e1                                      mov r0, r3
004c46f4  06 60 63 e0                                      rsb r6, r3, r6
004c46f8  05 50 61 e0                                      rsb r5, r1, r5
004c46fc  06 00 55 e1                                      cmp r5, r6
004c4700  05 20 a0 b1                                      movlt r2, r5
004c4704  06 20 a0 a1                                      movge r2, r6
004c4708  b4 27 f9 eb                                      bl #0x30e5e0
004c470c  00 30 50 e2                                      subs r3, r0, #0
004c4710  04 00 00 1a                                      bne #0x4c4728
004c4714  05 00 56 e1                                      cmp r6, r5
004c4718  00 30 e0 b3                                      mvnlt r3, #0
004c471c  01 00 00 ba                                      blt #0x4c4728
004c4720  00 30 a0 d3                                      movle r3, #0
004c4724  01 30 a0 c3                                      movgt r3, #1
004c4728  07 00 a0 e1                                      mov r0, r7
004c472c  00 30 8d e5                                      str r3, [sp]
004c4730  c7 4e f9 eb                                      bl #0x318254
004c4734  00 30 9d e5                                      ldr r3, [sp]
004c4738  00 00 53 e3                                      cmp r3, #0
004c473c  04 90 a0 a1                                      movge sb, r4
004c4740  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
004c4744  08 40 94 a5                                      ldrge r4, [r4, #8]
004c4748  00 00 54 e3                                      cmp r4, #0
004c474c  df ff ff 1a                                      bne #0x4c46d0
004c4750  04 20 9d e5                                      ldr r2, [sp, #4]
004c4754  09 00 a0 e1                                      mov r0, sb
004c4758  02 30 9b e7                                      ldr r3, [fp, r2]
004c475c  24 20 9d e5                                      ldr r2, [sp, #0x24]
004c4760  00 30 93 e5                                      ldr r3, [r3]
004c4764  03 00 52 e1                                      cmp r2, r3
004c4768  01 00 00 1a                                      bne #0x4c4774
004c476c  2c d0 8d e2                                      add sp, sp, #0x2c
004c4770  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c4774  e5 26 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004c4778  f0 03 4d 00 ac 40 00 00                          .byte 0xf0, 0x03, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00
