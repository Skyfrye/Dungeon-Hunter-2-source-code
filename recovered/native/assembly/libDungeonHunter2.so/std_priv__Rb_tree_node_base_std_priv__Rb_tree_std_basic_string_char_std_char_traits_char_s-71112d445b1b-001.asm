; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037a190, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESsNS_9_IdentityISsEENS_11_SetTraitsTISsEESaISsEE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
0037a190  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037a194  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
0037a198  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0037a19c  54 d0 4d e2                                      sub sp, sp, #0x54
0037a1a0  0b b0 8f e0                                      add fp, pc, fp
0037a1a4  02 30 9b e7                                      ldr r3, [fp, r2]
0037a1a8  0c 20 8d e5                                      str r2, [sp, #0xc]
0037a1ac  08 00 8d e5                                      str r0, [sp, #8]
0037a1b0  04 40 90 e5                                      ldr r4, [r0, #4]
0037a1b4  00 30 93 e5                                      ldr r3, [r3]
0037a1b8  01 80 a0 e1                                      mov r8, r1
0037a1bc  00 00 54 e3                                      cmp r4, #0
0037a1c0  4c 30 8d e5                                      str r3, [sp, #0x4c]
0037a1c4  40 00 00 0a                                      beq #0x37a2cc
0037a1c8  00 a0 a0 e1                                      mov sl, r0
0037a1cc  34 70 8d e2                                      add r7, sp, #0x34
0037a1d0  18 90 8d e2                                      add sb, sp, #0x18
0037a1d4  00 10 98 e5                                      ldr r1, [r8]
0037a1d8  09 20 a0 e1                                      mov r2, sb
0037a1dc  07 00 a0 e1                                      mov r0, r7
0037a1e0  c1 67 fe eb                                      bl #0x3140ec
0037a1e4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0037a1e8  48 10 9d e5                                      ldr r1, [sp, #0x48]
0037a1ec  20 60 94 e5                                      ldr r6, [r4, #0x20]
0037a1f0  44 50 9d e5                                      ldr r5, [sp, #0x44]
0037a1f4  03 00 a0 e1                                      mov r0, r3
0037a1f8  06 60 63 e0                                      rsb r6, r3, r6
0037a1fc  05 50 61 e0                                      rsb r5, r1, r5
0037a200  06 00 55 e1                                      cmp r5, r6
0037a204  05 20 a0 b1                                      movlt r2, r5
0037a208  06 20 a0 a1                                      movge r2, r6
0037a20c  f3 50 fe eb                                      bl #0x30e5e0
0037a210  00 30 50 e2                                      subs r3, r0, #0
0037a214  04 00 00 1a                                      bne #0x37a22c
0037a218  05 00 56 e1                                      cmp r6, r5
0037a21c  00 30 e0 b3                                      mvnlt r3, #0
0037a220  01 00 00 ba                                      blt #0x37a22c
0037a224  00 30 a0 d3                                      movle r3, #0
0037a228  01 30 a0 c3                                      movgt r3, #1
0037a22c  07 00 a0 e1                                      mov r0, r7
0037a230  04 30 8d e5                                      str r3, [sp, #4]
0037a234  dc 65 fe eb                                      bl #0x3139ac
0037a238  04 30 9d e5                                      ldr r3, [sp, #4]
0037a23c  00 00 53 e3                                      cmp r3, #0
0037a240  04 a0 a0 a1                                      movge sl, r4
0037a244  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0037a248  08 40 94 a5                                      ldrge r4, [r4, #8]
0037a24c  00 00 54 e3                                      cmp r4, #0
0037a250  df ff ff 1a                                      bne #0x37a1d4
0037a254  08 30 9d e5                                      ldr r3, [sp, #8]
0037a258  03 00 5a e1                                      cmp sl, r3
0037a25c  1b 00 00 0a                                      beq #0x37a2d0
0037a260  1c 40 8d e2                                      add r4, sp, #0x1c
0037a264  00 10 98 e5                                      ldr r1, [r8]
0037a268  14 20 8d e2                                      add r2, sp, #0x14
0037a26c  04 00 a0 e1                                      mov r0, r4
0037a270  9d 67 fe eb                                      bl #0x3140ec
0037a274  30 30 9d e5                                      ldr r3, [sp, #0x30]
0037a278  24 10 9a e5                                      ldr r1, [sl, #0x24]
0037a27c  20 50 9a e5                                      ldr r5, [sl, #0x20]
0037a280  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0037a284  03 00 a0 e1                                      mov r0, r3
0037a288  05 50 61 e0                                      rsb r5, r1, r5
0037a28c  06 60 63 e0                                      rsb r6, r3, r6
0037a290  06 00 55 e1                                      cmp r5, r6
0037a294  05 20 a0 b1                                      movlt r2, r5
0037a298  06 20 a0 a1                                      movge r2, r6
0037a29c  cf 50 fe eb                                      bl #0x30e5e0
0037a2a0  00 70 50 e2                                      subs r7, r0, #0
0037a2a4  04 00 00 1a                                      bne #0x37a2bc
0037a2a8  05 00 56 e1                                      cmp r6, r5
0037a2ac  00 70 e0 b3                                      mvnlt r7, #0
0037a2b0  01 00 00 ba                                      blt #0x37a2bc
0037a2b4  00 70 a0 d3                                      movle r7, #0
0037a2b8  01 70 a0 c3                                      movgt r7, #1
0037a2bc  04 00 a0 e1                                      mov r0, r4
0037a2c0  b9 65 fe eb                                      bl #0x3139ac
0037a2c4  00 00 57 e3                                      cmp r7, #0
0037a2c8  00 00 00 aa                                      bge #0x37a2d0
0037a2cc  08 a0 9d e5                                      ldr sl, [sp, #8]
0037a2d0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0037a2d4  0a 00 a0 e1                                      mov r0, sl
0037a2d8  02 30 9b e7                                      ldr r3, [fp, r2]
0037a2dc  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0037a2e0  00 30 93 e5                                      ldr r3, [r3]
0037a2e4  03 00 52 e1                                      cmp r2, r3
0037a2e8  01 00 00 1a                                      bne #0x37a2f4
0037a2ec  54 d0 8d e2                                      add sp, sp, #0x54
0037a2f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037a2f4  05 50 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037a2f8  f0 a8 61 00 ac 40 00 00                          .byte 0xf0, 0xa8, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00
