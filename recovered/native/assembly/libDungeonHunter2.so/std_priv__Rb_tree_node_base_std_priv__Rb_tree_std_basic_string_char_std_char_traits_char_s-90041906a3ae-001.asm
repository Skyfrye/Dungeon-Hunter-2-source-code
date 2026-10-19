; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00318298, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
00318298  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031829c  20 21 9f e5                                      ldr r2, [pc, #0x120]
003182a0  20 31 9f e5                                      ldr r3, [pc, #0x120]
003182a4  34 d0 4d e2                                      sub sp, sp, #0x34
003182a8  02 20 8f e0                                      add r2, pc, r2
003182ac  0c 30 8d e5                                      str r3, [sp, #0xc]
003182b0  03 30 92 e7                                      ldr r3, [r2, r3]
003182b4  05 00 8d e9                                      stmib sp, {r0, r2}
003182b8  00 30 93 e5                                      ldr r3, [r3]
003182bc  01 a0 a0 e1                                      mov sl, r1
003182c0  2c 30 8d e5                                      str r3, [sp, #0x2c]
003182c4  04 50 90 e5                                      ldr r5, [r0, #4]
003182c8  00 00 55 e3                                      cmp r5, #0
003182cc  31 00 00 0a                                      beq #0x318398
003182d0  14 80 8d e2                                      add r8, sp, #0x14
003182d4  10 90 8d e2                                      add sb, sp, #0x10
003182d8  07 00 00 ea                                      b #0x3182fc
003182dc  04 00 a0 e1                                      mov r0, r4
003182e0  06 c3 0f eb                                      bl #0x708f00
003182e4  00 00 5b e3                                      cmp fp, #0
003182e8  04 50 8d a5                                      strge r5, [sp, #4]
003182ec  08 50 95 a5                                      ldrge r5, [r5, #8]
003182f0  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
003182f4  00 00 55 e3                                      cmp r5, #0
003182f8  26 00 00 0a                                      beq #0x318398
003182fc  00 10 9a e5                                      ldr r1, [sl]
00318300  09 20 a0 e1                                      mov r2, sb
00318304  08 00 a0 e1                                      mov r0, r8
00318308  77 ef ff eb                                      bl #0x3140ec
0031830c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00318310  28 40 9d e5                                      ldr r4, [sp, #0x28]
00318314  20 70 95 e5                                      ldr r7, [r5, #0x20]
00318318  24 60 9d e5                                      ldr r6, [sp, #0x24]
0031831c  03 00 a0 e1                                      mov r0, r3
00318320  07 70 63 e0                                      rsb r7, r3, r7
00318324  06 60 64 e0                                      rsb r6, r4, r6
00318328  07 00 56 e1                                      cmp r6, r7
0031832c  06 20 a0 b1                                      movlt r2, r6
00318330  07 20 a0 a1                                      movge r2, r7
00318334  04 10 a0 e1                                      mov r1, r4
00318338  a8 d8 ff eb                                      bl #0x30e5e0
0031833c  00 b0 50 e2                                      subs fp, r0, #0
00318340  04 00 00 1a                                      bne #0x318358
00318344  06 00 57 e1                                      cmp r7, r6
00318348  00 b0 e0 b3                                      mvnlt fp, #0
0031834c  01 00 00 ba                                      blt #0x318358
00318350  00 b0 a0 d3                                      movle fp, #0
00318354  01 b0 a0 c3                                      movgt fp, #1
00318358  08 00 54 e1                                      cmp r4, r8
0031835c  e0 ff ff 0a                                      beq #0x3182e4
00318360  00 00 54 e3                                      cmp r4, #0
00318364  de ff ff 0a                                      beq #0x3182e4
00318368  14 10 9d e5                                      ldr r1, [sp, #0x14]
0031836c  01 10 64 e0                                      rsb r1, r4, r1
00318370  80 00 51 e3                                      cmp r1, #0x80
00318374  d8 ff ff 9a                                      bls #0x3182dc
00318378  04 00 a0 e1                                      mov r0, r4
0031837c  2f e0 ff eb                                      bl #0x310440
00318380  00 00 5b e3                                      cmp fp, #0
00318384  04 50 8d a5                                      strge r5, [sp, #4]
00318388  08 50 95 a5                                      ldrge r5, [r5, #8]
0031838c  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00318390  00 00 55 e3                                      cmp r5, #0
00318394  d8 ff ff 1a                                      bne #0x3182fc
00318398  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0031839c  08 10 9d e5                                      ldr r1, [sp, #8]
003183a0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003183a4  00 30 91 e7                                      ldr r3, [r1, r0]
003183a8  04 00 9d e5                                      ldr r0, [sp, #4]
003183ac  00 30 93 e5                                      ldr r3, [r3]
003183b0  03 00 52 e1                                      cmp r2, r3
003183b4  01 00 00 1a                                      bne #0x3183c0
003183b8  34 d0 8d e2                                      add sp, sp, #0x34
003183bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003183c0  d2 d7 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003183c4  e8 c7 67 00 ac 40 00 00                          .byte 0xe8, 0xc7, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0051cfb8, declared_size=508, range_size=508, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
0051cfb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051cfbc  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
0051cfc0  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
0051cfc4  54 d0 4d e2                                      sub sp, sp, #0x54
0051cfc8  02 20 8f e0                                      add r2, pc, r2
0051cfcc  0c 30 8d e5                                      str r3, [sp, #0xc]
0051cfd0  03 30 92 e7                                      ldr r3, [r2, r3]
0051cfd4  04 20 8d e5                                      str r2, [sp, #4]
0051cfd8  08 00 8d e5                                      str r0, [sp, #8]
0051cfdc  04 50 90 e5                                      ldr r5, [r0, #4]
0051cfe0  00 30 93 e5                                      ldr r3, [r3]
0051cfe4  01 90 a0 e1                                      mov sb, r1
0051cfe8  00 00 55 e3                                      cmp r5, #0
0051cfec  4c 30 8d e5                                      str r3, [sp, #0x4c]
0051cff0  65 00 00 0a                                      beq #0x51d18c
0051cff4  00 a0 a0 e1                                      mov sl, r0
0051cff8  18 00 8d e2                                      add r0, sp, #0x18
0051cffc  34 80 8d e2                                      add r8, sp, #0x34
0051d000  00 00 8d e5                                      str r0, [sp]
0051d004  07 00 00 ea                                      b #0x51d028
0051d008  04 00 a0 e1                                      mov r0, r4
0051d00c  bb af 07 eb                                      bl #0x708f00
0051d010  00 00 5b e3                                      cmp fp, #0
0051d014  05 a0 a0 a1                                      movge sl, r5
0051d018  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
0051d01c  08 50 95 a5                                      ldrge r5, [r5, #8]
0051d020  00 00 55 e3                                      cmp r5, #0
0051d024  26 00 00 0a                                      beq #0x51d0c4
0051d028  00 10 99 e5                                      ldr r1, [sb]
0051d02c  00 20 9d e5                                      ldr r2, [sp]
0051d030  08 00 a0 e1                                      mov r0, r8
0051d034  2c dc f7 eb                                      bl #0x3140ec
0051d038  24 30 95 e5                                      ldr r3, [r5, #0x24]
0051d03c  48 40 9d e5                                      ldr r4, [sp, #0x48]
0051d040  20 70 95 e5                                      ldr r7, [r5, #0x20]
0051d044  44 60 9d e5                                      ldr r6, [sp, #0x44]
0051d048  03 00 a0 e1                                      mov r0, r3
0051d04c  07 70 63 e0                                      rsb r7, r3, r7
0051d050  06 60 64 e0                                      rsb r6, r4, r6
0051d054  07 00 56 e1                                      cmp r6, r7
0051d058  06 20 a0 b1                                      movlt r2, r6
0051d05c  07 20 a0 a1                                      movge r2, r7
0051d060  04 10 a0 e1                                      mov r1, r4
0051d064  5d c5 f7 eb                                      bl #0x30e5e0
0051d068  00 b0 50 e2                                      subs fp, r0, #0
0051d06c  04 00 00 1a                                      bne #0x51d084
0051d070  06 00 57 e1                                      cmp r7, r6
0051d074  00 b0 e0 b3                                      mvnlt fp, #0
0051d078  01 00 00 ba                                      blt #0x51d084
0051d07c  00 b0 a0 d3                                      movle fp, #0
0051d080  01 b0 a0 c3                                      movgt fp, #1
0051d084  08 00 54 e1                                      cmp r4, r8
0051d088  e0 ff ff 0a                                      beq #0x51d010
0051d08c  00 00 54 e3                                      cmp r4, #0
0051d090  de ff ff 0a                                      beq #0x51d010
0051d094  34 10 9d e5                                      ldr r1, [sp, #0x34]
0051d098  01 10 64 e0                                      rsb r1, r4, r1
0051d09c  80 00 51 e3                                      cmp r1, #0x80
0051d0a0  d8 ff ff 9a                                      bls #0x51d008
0051d0a4  04 00 a0 e1                                      mov r0, r4
0051d0a8  e4 cc f7 eb                                      bl #0x310440
0051d0ac  00 00 5b e3                                      cmp fp, #0
0051d0b0  05 a0 a0 a1                                      movge sl, r5
0051d0b4  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
0051d0b8  08 50 95 a5                                      ldrge r5, [r5, #8]
0051d0bc  00 00 55 e3                                      cmp r5, #0
0051d0c0  d8 ff ff 1a                                      bne #0x51d028
0051d0c4  08 10 9d e5                                      ldr r1, [sp, #8]
0051d0c8  01 00 5a e1                                      cmp sl, r1
0051d0cc  1e 00 00 0a                                      beq #0x51d14c
0051d0d0  1c 50 8d e2                                      add r5, sp, #0x1c
0051d0d4  00 10 99 e5                                      ldr r1, [sb]
0051d0d8  14 20 8d e2                                      add r2, sp, #0x14
0051d0dc  05 00 a0 e1                                      mov r0, r5
0051d0e0  01 dc f7 eb                                      bl #0x3140ec
0051d0e4  24 30 9a e5                                      ldr r3, [sl, #0x24]
0051d0e8  30 40 9d e5                                      ldr r4, [sp, #0x30]
0051d0ec  20 70 9a e5                                      ldr r7, [sl, #0x20]
0051d0f0  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0051d0f4  03 10 a0 e1                                      mov r1, r3
0051d0f8  07 70 63 e0                                      rsb r7, r3, r7
0051d0fc  06 60 64 e0                                      rsb r6, r4, r6
0051d100  06 00 57 e1                                      cmp r7, r6
0051d104  07 20 a0 b1                                      movlt r2, r7
0051d108  06 20 a0 a1                                      movge r2, r6
0051d10c  04 00 a0 e1                                      mov r0, r4
0051d110  32 c5 f7 eb                                      bl #0x30e5e0
0051d114  00 80 50 e2                                      subs r8, r0, #0
0051d118  15 00 00 0a                                      beq #0x51d174
0051d11c  05 00 54 e1                                      cmp r4, r5
0051d120  07 00 00 0a                                      beq #0x51d144
0051d124  00 00 54 e3                                      cmp r4, #0
0051d128  05 00 00 0a                                      beq #0x51d144
0051d12c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0051d130  01 10 64 e0                                      rsb r1, r4, r1
0051d134  80 00 51 e3                                      cmp r1, #0x80
0051d138  15 00 00 8a                                      bhi #0x51d194
0051d13c  04 00 a0 e1                                      mov r0, r4
0051d140  6e af 07 eb                                      bl #0x708f00
0051d144  00 00 58 e3                                      cmp r8, #0
0051d148  0f 00 00 ba                                      blt #0x51d18c
0051d14c  04 00 9d e5                                      ldr r0, [sp, #4]
0051d150  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0051d154  02 30 90 e7                                      ldr r3, [r0, r2]
0051d158  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0051d15c  0a 00 a0 e1                                      mov r0, sl
0051d160  00 30 93 e5                                      ldr r3, [r3]
0051d164  03 00 52 e1                                      cmp r2, r3
0051d168  0e 00 00 1a                                      bne #0x51d1a8
0051d16c  54 d0 8d e2                                      add sp, sp, #0x54
0051d170  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051d174  07 00 56 e1                                      cmp r6, r7
0051d178  00 80 e0 b3                                      mvnlt r8, #0
0051d17c  e6 ff ff ba                                      blt #0x51d11c
0051d180  00 80 a0 d3                                      movle r8, #0
0051d184  01 80 a0 c3                                      movgt r8, #1
0051d188  e3 ff ff ea                                      b #0x51d11c
0051d18c  08 a0 9d e5                                      ldr sl, [sp, #8]
0051d190  ed ff ff ea                                      b #0x51d14c
0051d194  04 00 a0 e1                                      mov r0, r4
0051d198  a8 cc f7 eb                                      bl #0x310440
0051d19c  00 00 58 e3                                      cmp r8, #0
0051d1a0  e9 ff ff aa                                      bge #0x51d14c
0051d1a4  f8 ff ff ea                                      b #0x51d18c
0051d1a8  58 c4 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0051d1ac  c8 7a 47 00 ac 40 00 00                          .byte 0xc8, 0x7a, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082ef9c, declared_size=476, range_size=476, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_findIA11_cEEPNS_18_Rb_tree_node_baseERKT_.clone.6
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_find<char [11]>(char const (&) [11]) const [clone .clone.6]
; decoder-mode: arm
0082ef9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082efa0  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
0082efa4  c4 21 9f e5                                      ldr r2, [pc, #0x1c4]
0082efa8  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
0082efac  01 10 8f e0                                      add r1, pc, r1
0082efb0  54 d0 4d e2                                      sub sp, sp, #0x54
0082efb4  02 a0 91 e7                                      ldr sl, [r1, r2]
0082efb8  0c 30 8d e5                                      str r3, [sp, #0xc]
0082efbc  03 30 91 e7                                      ldr r3, [r1, r3]
0082efc0  04 50 9a e5                                      ldr r5, [sl, #4]
0082efc4  04 10 8d e5                                      str r1, [sp, #4]
0082efc8  00 30 93 e5                                      ldr r3, [r3]
0082efcc  00 00 55 e3                                      cmp r5, #0
0082efd0  00 90 a0 e1                                      mov sb, r0
0082efd4  08 20 8d e5                                      str r2, [sp, #8]
0082efd8  4c 30 8d e5                                      str r3, [sp, #0x4c]
0082efdc  0a 00 a0 01                                      moveq r0, sl
0082efe0  57 00 00 0a                                      beq #0x82f144
0082efe4  14 10 8d e2                                      add r1, sp, #0x14
0082efe8  1c 80 8d e2                                      add r8, sp, #0x1c
0082efec  00 10 8d e5                                      str r1, [sp]
0082eff0  09 00 00 ea                                      b #0x82f01c
0082eff4  04 00 a0 e1                                      mov r0, r4
0082eff8  ce 3c 02 eb                                      bl #0x8be338
0082effc  00 00 5b e3                                      cmp fp, #0
0082f000  0c 30 95 b5                                      ldrlt r3, [r5, #0xc]
0082f004  08 30 95 a5                                      ldrge r3, [r5, #8]
0082f008  0a 50 a0 b1                                      movlt r5, sl
0082f00c  00 00 53 e3                                      cmp r3, #0
0082f010  28 00 00 0a                                      beq #0x82f0b8
0082f014  05 a0 a0 e1                                      mov sl, r5
0082f018  03 50 a0 e1                                      mov r5, r3
0082f01c  09 10 a0 e1                                      mov r1, sb
0082f020  00 20 9d e5                                      ldr r2, [sp]
0082f024  08 00 a0 e1                                      mov r0, r8
0082f028  2f 94 eb eb                                      bl #0x3140ec
0082f02c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0082f030  30 40 9d e5                                      ldr r4, [sp, #0x30]
0082f034  20 70 95 e5                                      ldr r7, [r5, #0x20]
0082f038  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0082f03c  03 00 a0 e1                                      mov r0, r3
0082f040  07 70 63 e0                                      rsb r7, r3, r7
0082f044  06 60 64 e0                                      rsb r6, r4, r6
0082f048  07 00 56 e1                                      cmp r6, r7
0082f04c  06 20 a0 b1                                      movlt r2, r6
0082f050  07 20 a0 a1                                      movge r2, r7
0082f054  04 10 a0 e1                                      mov r1, r4
0082f058  60 7d eb eb                                      bl #0x30e5e0
0082f05c  00 b0 50 e2                                      subs fp, r0, #0
0082f060  04 00 00 1a                                      bne #0x82f078
0082f064  06 00 57 e1                                      cmp r7, r6
0082f068  00 b0 e0 b3                                      mvnlt fp, #0
0082f06c  01 00 00 ba                                      blt #0x82f078
0082f070  00 b0 a0 d3                                      movle fp, #0
0082f074  01 b0 a0 c3                                      movgt fp, #1
0082f078  08 00 54 e1                                      cmp r4, r8
0082f07c  de ff ff 0a                                      beq #0x82effc
0082f080  00 00 54 e3                                      cmp r4, #0
0082f084  dc ff ff 0a                                      beq #0x82effc
0082f088  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0082f08c  01 10 64 e0                                      rsb r1, r4, r1
0082f090  80 00 51 e3                                      cmp r1, #0x80
0082f094  d6 ff ff 9a                                      bls #0x82eff4
0082f098  04 00 a0 e1                                      mov r0, r4
0082f09c  83 7c eb eb                                      bl #0x30e2b0
0082f0a0  00 00 5b e3                                      cmp fp, #0
0082f0a4  0c 30 95 b5                                      ldrlt r3, [r5, #0xc]
0082f0a8  08 30 95 a5                                      ldrge r3, [r5, #8]
0082f0ac  0a 50 a0 b1                                      movlt r5, sl
0082f0b0  00 00 53 e3                                      cmp r3, #0
0082f0b4  d6 ff ff 1a                                      bne #0x82f014
0082f0b8  06 00 9d e9                                      ldmib sp, {r1, r2}
0082f0bc  05 00 a0 e1                                      mov r0, r5
0082f0c0  02 30 91 e7                                      ldr r3, [r1, r2]
0082f0c4  03 00 55 e1                                      cmp r5, r3
0082f0c8  1d 00 00 0a                                      beq #0x82f144
0082f0cc  34 40 8d e2                                      add r4, sp, #0x34
0082f0d0  09 10 a0 e1                                      mov r1, sb
0082f0d4  18 20 8d e2                                      add r2, sp, #0x18
0082f0d8  04 00 a0 e1                                      mov r0, r4
0082f0dc  02 94 eb eb                                      bl #0x3140ec
0082f0e0  48 30 9d e5                                      ldr r3, [sp, #0x48]
0082f0e4  24 10 95 e5                                      ldr r1, [r5, #0x24]
0082f0e8  20 60 95 e5                                      ldr r6, [r5, #0x20]
0082f0ec  44 70 9d e5                                      ldr r7, [sp, #0x44]
0082f0f0  03 00 a0 e1                                      mov r0, r3
0082f0f4  06 60 61 e0                                      rsb r6, r1, r6
0082f0f8  07 70 63 e0                                      rsb r7, r3, r7
0082f0fc  07 00 56 e1                                      cmp r6, r7
0082f100  06 20 a0 b1                                      movlt r2, r6
0082f104  07 20 a0 a1                                      movge r2, r7
0082f108  34 7d eb eb                                      bl #0x30e5e0
0082f10c  00 80 50 e2                                      subs r8, r0, #0
0082f110  04 00 00 1a                                      bne #0x82f128
0082f114  06 00 57 e1                                      cmp r7, r6
0082f118  00 80 e0 b3                                      mvnlt r8, #0
0082f11c  01 00 00 ba                                      blt #0x82f128
0082f120  00 80 a0 d3                                      movle r8, #0
0082f124  01 80 a0 c3                                      movgt r8, #1
0082f128  04 00 a0 e1                                      mov r0, r4
0082f12c  48 a4 eb eb                                      bl #0x318254
0082f130  00 00 58 e3                                      cmp r8, #0
0082f134  04 30 9d b5                                      ldrlt r3, [sp, #4]
0082f138  08 20 9d b5                                      ldrlt r2, [sp, #8]
0082f13c  05 00 a0 a1                                      movge r0, r5
0082f140  02 00 93 b7                                      ldrlt r0, [r3, r2]
0082f144  04 20 9d e5                                      ldr r2, [sp, #4]
0082f148  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0082f14c  01 30 92 e7                                      ldr r3, [r2, r1]
0082f150  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0082f154  00 30 93 e5                                      ldr r3, [r3]
0082f158  03 00 52 e1                                      cmp r2, r3
0082f15c  01 00 00 1a                                      bne #0x82f168
0082f160  54 d0 8d e2                                      add sp, sp, #0x54
0082f164  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082f168  68 7c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082f16c  e4 5a 16 00 f8 36 00 00 ac 40 00 00              .byte 0xe4, 0x5a, 0x16, 0x00, 0xf8, 0x36, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082f178, declared_size=492, range_size=492, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_findIA5_cEEPNS_18_Rb_tree_node_baseERKT_.clone.7
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_find<char [5]>(char const (&) [5]) const [clone .clone.7]
; decoder-mode: arm
0082f178  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082f17c  cc 11 9f e5                                      ldr r1, [pc, #0x1cc]
0082f180  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
0082f184  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
0082f188  01 10 8f e0                                      add r1, pc, r1
0082f18c  54 d0 4d e2                                      sub sp, sp, #0x54
0082f190  02 a0 91 e7                                      ldr sl, [r1, r2]
0082f194  0c 30 8d e5                                      str r3, [sp, #0xc]
0082f198  03 30 91 e7                                      ldr r3, [r1, r3]
0082f19c  04 50 9a e5                                      ldr r5, [sl, #4]
0082f1a0  04 10 8d e5                                      str r1, [sp, #4]
0082f1a4  00 30 93 e5                                      ldr r3, [r3]
0082f1a8  00 00 55 e3                                      cmp r5, #0
0082f1ac  08 20 8d e5                                      str r2, [sp, #8]
0082f1b0  4c 30 8d e5                                      str r3, [sp, #0x4c]
0082f1b4  0a 00 a0 01                                      moveq r0, sl
0082f1b8  5a 00 00 0a                                      beq #0x82f328
0082f1bc  98 91 9f e5                                      ldr sb, [pc, #0x198]
0082f1c0  14 10 8d e2                                      add r1, sp, #0x14
0082f1c4  1c 80 8d e2                                      add r8, sp, #0x1c
0082f1c8  09 90 8f e0                                      add sb, pc, sb
0082f1cc  00 10 8d e5                                      str r1, [sp]
0082f1d0  09 00 00 ea                                      b #0x82f1fc
0082f1d4  04 00 a0 e1                                      mov r0, r4
0082f1d8  56 3c 02 eb                                      bl #0x8be338
0082f1dc  00 00 5b e3                                      cmp fp, #0
0082f1e0  0c 30 95 b5                                      ldrlt r3, [r5, #0xc]
0082f1e4  08 30 95 a5                                      ldrge r3, [r5, #8]
0082f1e8  0a 50 a0 b1                                      movlt r5, sl
0082f1ec  00 00 53 e3                                      cmp r3, #0
0082f1f0  28 00 00 0a                                      beq #0x82f298
0082f1f4  05 a0 a0 e1                                      mov sl, r5
0082f1f8  03 50 a0 e1                                      mov r5, r3
0082f1fc  09 10 a0 e1                                      mov r1, sb
0082f200  00 20 9d e5                                      ldr r2, [sp]
0082f204  08 00 a0 e1                                      mov r0, r8
0082f208  b7 93 eb eb                                      bl #0x3140ec
0082f20c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0082f210  30 40 9d e5                                      ldr r4, [sp, #0x30]
0082f214  20 70 95 e5                                      ldr r7, [r5, #0x20]
0082f218  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0082f21c  03 00 a0 e1                                      mov r0, r3
0082f220  07 70 63 e0                                      rsb r7, r3, r7
0082f224  06 60 64 e0                                      rsb r6, r4, r6
0082f228  07 00 56 e1                                      cmp r6, r7
0082f22c  06 20 a0 b1                                      movlt r2, r6
0082f230  07 20 a0 a1                                      movge r2, r7
0082f234  04 10 a0 e1                                      mov r1, r4
0082f238  e8 7c eb eb                                      bl #0x30e5e0
0082f23c  00 b0 50 e2                                      subs fp, r0, #0
0082f240  04 00 00 1a                                      bne #0x82f258
0082f244  06 00 57 e1                                      cmp r7, r6
0082f248  00 b0 e0 b3                                      mvnlt fp, #0
0082f24c  01 00 00 ba                                      blt #0x82f258
0082f250  00 b0 a0 d3                                      movle fp, #0
0082f254  01 b0 a0 c3                                      movgt fp, #1
0082f258  08 00 54 e1                                      cmp r4, r8
0082f25c  de ff ff 0a                                      beq #0x82f1dc
0082f260  00 00 54 e3                                      cmp r4, #0
0082f264  dc ff ff 0a                                      beq #0x82f1dc
0082f268  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0082f26c  01 10 64 e0                                      rsb r1, r4, r1
0082f270  80 00 51 e3                                      cmp r1, #0x80
0082f274  d6 ff ff 9a                                      bls #0x82f1d4
0082f278  04 00 a0 e1                                      mov r0, r4
0082f27c  0b 7c eb eb                                      bl #0x30e2b0
0082f280  00 00 5b e3                                      cmp fp, #0
0082f284  0c 30 95 b5                                      ldrlt r3, [r5, #0xc]
0082f288  08 30 95 a5                                      ldrge r3, [r5, #8]
0082f28c  0a 50 a0 b1                                      movlt r5, sl
0082f290  00 00 53 e3                                      cmp r3, #0
0082f294  d6 ff ff 1a                                      bne #0x82f1f4
0082f298  06 00 9d e9                                      ldmib sp, {r1, r2}
0082f29c  05 00 a0 e1                                      mov r0, r5
0082f2a0  02 30 91 e7                                      ldr r3, [r1, r2]
0082f2a4  03 00 55 e1                                      cmp r5, r3
0082f2a8  1e 00 00 0a                                      beq #0x82f328
0082f2ac  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0082f2b0  34 40 8d e2                                      add r4, sp, #0x34
0082f2b4  18 20 8d e2                                      add r2, sp, #0x18
0082f2b8  01 10 8f e0                                      add r1, pc, r1
0082f2bc  04 00 a0 e1                                      mov r0, r4
0082f2c0  89 93 eb eb                                      bl #0x3140ec
0082f2c4  48 30 9d e5                                      ldr r3, [sp, #0x48]
0082f2c8  24 10 95 e5                                      ldr r1, [r5, #0x24]
0082f2cc  20 60 95 e5                                      ldr r6, [r5, #0x20]
0082f2d0  44 70 9d e5                                      ldr r7, [sp, #0x44]
0082f2d4  03 00 a0 e1                                      mov r0, r3
0082f2d8  06 60 61 e0                                      rsb r6, r1, r6
0082f2dc  07 70 63 e0                                      rsb r7, r3, r7
0082f2e0  07 00 56 e1                                      cmp r6, r7
0082f2e4  06 20 a0 b1                                      movlt r2, r6
0082f2e8  07 20 a0 a1                                      movge r2, r7
0082f2ec  bb 7c eb eb                                      bl #0x30e5e0
0082f2f0  00 80 50 e2                                      subs r8, r0, #0
0082f2f4  04 00 00 1a                                      bne #0x82f30c
0082f2f8  06 00 57 e1                                      cmp r7, r6
0082f2fc  00 80 e0 b3                                      mvnlt r8, #0
0082f300  01 00 00 ba                                      blt #0x82f30c
0082f304  00 80 a0 d3                                      movle r8, #0
0082f308  01 80 a0 c3                                      movgt r8, #1
0082f30c  04 00 a0 e1                                      mov r0, r4
0082f310  cf a3 eb eb                                      bl #0x318254
0082f314  00 00 58 e3                                      cmp r8, #0
0082f318  04 30 9d b5                                      ldrlt r3, [sp, #4]
0082f31c  08 20 9d b5                                      ldrlt r2, [sp, #8]
0082f320  05 00 a0 a1                                      movge r0, r5
0082f324  02 00 93 b7                                      ldrlt r0, [r3, r2]
0082f328  04 20 9d e5                                      ldr r2, [sp, #4]
0082f32c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0082f330  01 30 92 e7                                      ldr r3, [r2, r1]
0082f334  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0082f338  00 30 93 e5                                      ldr r3, [r3]
0082f33c  03 00 52 e1                                      cmp r2, r3
0082f340  01 00 00 1a                                      bne #0x82f34c
0082f344  54 d0 8d e2                                      add sp, sp, #0x54
0082f348  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082f34c  ef 7b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082f350  08 59 16 00 f8 36 00 00 ac 40 00 00 00 18 0b 00  .byte 0x08, 0x59, 0x16, 0x00, 0xf8, 0x36, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x18, 0x0b, 0x00
0082f360  10 17 0b 00                                      .byte 0x10, 0x17, 0x0b, 0x00
