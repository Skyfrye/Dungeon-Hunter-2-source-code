; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00511638, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsS5_ISsP8PropertyS2_SaIS3_IS4_S7_EEES2_SaIS3_IS4_SA_EEEENS_10_Select1stISE_EENS_11_MapTraitsTISE_EESaISE_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Property*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > > > > > > > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
00511638  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051163c  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
00511640  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
00511644  2c d0 4d e2                                      sub sp, sp, #0x2c
00511648  0b b0 8f e0                                      add fp, pc, fp
0051164c  02 30 9b e7                                      ldr r3, [fp, r2]
00511650  04 20 8d e5                                      str r2, [sp, #4]
00511654  00 90 a0 e1                                      mov sb, r0
00511658  00 30 93 e5                                      ldr r3, [r3]
0051165c  01 80 a0 e1                                      mov r8, r1
00511660  24 30 8d e5                                      str r3, [sp, #0x24]
00511664  04 40 90 e5                                      ldr r4, [r0, #4]
00511668  00 00 54 e3                                      cmp r4, #0
0051166c  21 00 00 0a                                      beq #0x5116f8
00511670  0c 70 8d e2                                      add r7, sp, #0xc
00511674  08 a0 8d e2                                      add sl, sp, #8
00511678  00 10 98 e5                                      ldr r1, [r8]
0051167c  0a 20 a0 e1                                      mov r2, sl
00511680  07 00 a0 e1                                      mov r0, r7
00511684  98 0a f8 eb                                      bl #0x3140ec
00511688  24 30 94 e5                                      ldr r3, [r4, #0x24]
0051168c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00511690  20 60 94 e5                                      ldr r6, [r4, #0x20]
00511694  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00511698  03 00 a0 e1                                      mov r0, r3
0051169c  06 60 63 e0                                      rsb r6, r3, r6
005116a0  05 50 61 e0                                      rsb r5, r1, r5
005116a4  06 00 55 e1                                      cmp r5, r6
005116a8  05 20 a0 b1                                      movlt r2, r5
005116ac  06 20 a0 a1                                      movge r2, r6
005116b0  ca f3 f7 eb                                      bl #0x30e5e0
005116b4  00 30 50 e2                                      subs r3, r0, #0
005116b8  04 00 00 1a                                      bne #0x5116d0
005116bc  05 00 56 e1                                      cmp r6, r5
005116c0  00 30 e0 b3                                      mvnlt r3, #0
005116c4  01 00 00 ba                                      blt #0x5116d0
005116c8  00 30 a0 d3                                      movle r3, #0
005116cc  01 30 a0 c3                                      movgt r3, #1
005116d0  07 00 a0 e1                                      mov r0, r7
005116d4  00 30 8d e5                                      str r3, [sp]
005116d8  dd 1a f8 eb                                      bl #0x318254
005116dc  00 30 9d e5                                      ldr r3, [sp]
005116e0  00 00 53 e3                                      cmp r3, #0
005116e4  04 90 a0 a1                                      movge sb, r4
005116e8  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
005116ec  08 40 94 a5                                      ldrge r4, [r4, #8]
005116f0  00 00 54 e3                                      cmp r4, #0
005116f4  df ff ff 1a                                      bne #0x511678
005116f8  04 20 9d e5                                      ldr r2, [sp, #4]
005116fc  09 00 a0 e1                                      mov r0, sb
00511700  02 30 9b e7                                      ldr r3, [fp, r2]
00511704  24 20 9d e5                                      ldr r2, [sp, #0x24]
00511708  00 30 93 e5                                      ldr r3, [r3]
0051170c  03 00 52 e1                                      cmp r2, r3
00511710  01 00 00 1a                                      bne #0x51171c
00511714  2c d0 8d e2                                      add sp, sp, #0x2c
00511718  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051171c  fb f2 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00511720  48 34 48 00 ac 40 00 00                          .byte 0x48, 0x34, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00
