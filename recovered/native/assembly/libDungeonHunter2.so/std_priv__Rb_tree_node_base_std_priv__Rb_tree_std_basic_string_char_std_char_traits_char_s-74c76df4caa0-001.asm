; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00511728, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
00511728  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051172c  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
00511730  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
00511734  2c d0 4d e2                                      sub sp, sp, #0x2c
00511738  0b b0 8f e0                                      add fp, pc, fp
0051173c  02 30 9b e7                                      ldr r3, [fp, r2]
00511740  04 20 8d e5                                      str r2, [sp, #4]
00511744  00 90 a0 e1                                      mov sb, r0
00511748  00 30 93 e5                                      ldr r3, [r3]
0051174c  01 80 a0 e1                                      mov r8, r1
00511750  24 30 8d e5                                      str r3, [sp, #0x24]
00511754  04 40 90 e5                                      ldr r4, [r0, #4]
00511758  00 00 54 e3                                      cmp r4, #0
0051175c  21 00 00 0a                                      beq #0x5117e8
00511760  0c 70 8d e2                                      add r7, sp, #0xc
00511764  08 a0 8d e2                                      add sl, sp, #8
00511768  00 10 98 e5                                      ldr r1, [r8]
0051176c  0a 20 a0 e1                                      mov r2, sl
00511770  07 00 a0 e1                                      mov r0, r7
00511774  5c 0a f8 eb                                      bl #0x3140ec
00511778  24 30 94 e5                                      ldr r3, [r4, #0x24]
0051177c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00511780  20 60 94 e5                                      ldr r6, [r4, #0x20]
00511784  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00511788  03 00 a0 e1                                      mov r0, r3
0051178c  06 60 63 e0                                      rsb r6, r3, r6
00511790  05 50 61 e0                                      rsb r5, r1, r5
00511794  06 00 55 e1                                      cmp r5, r6
00511798  05 20 a0 b1                                      movlt r2, r5
0051179c  06 20 a0 a1                                      movge r2, r6
005117a0  8e f3 f7 eb                                      bl #0x30e5e0
005117a4  00 30 50 e2                                      subs r3, r0, #0
005117a8  04 00 00 1a                                      bne #0x5117c0
005117ac  05 00 56 e1                                      cmp r6, r5
005117b0  00 30 e0 b3                                      mvnlt r3, #0
005117b4  01 00 00 ba                                      blt #0x5117c0
005117b8  00 30 a0 d3                                      movle r3, #0
005117bc  01 30 a0 c3                                      movgt r3, #1
005117c0  07 00 a0 e1                                      mov r0, r7
005117c4  00 30 8d e5                                      str r3, [sp]
005117c8  a1 1a f8 eb                                      bl #0x318254
005117cc  00 30 9d e5                                      ldr r3, [sp]
005117d0  00 00 53 e3                                      cmp r3, #0
005117d4  04 90 a0 a1                                      movge sb, r4
005117d8  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
005117dc  08 40 94 a5                                      ldrge r4, [r4, #8]
005117e0  00 00 54 e3                                      cmp r4, #0
005117e4  df ff ff 1a                                      bne #0x511768
005117e8  04 20 9d e5                                      ldr r2, [sp, #4]
005117ec  09 00 a0 e1                                      mov r0, sb
005117f0  02 30 9b e7                                      ldr r3, [fp, r2]
005117f4  24 20 9d e5                                      ldr r2, [sp, #0x24]
005117f8  00 30 93 e5                                      ldr r3, [r3]
005117fc  03 00 52 e1                                      cmp r2, r3
00511800  01 00 00 1a                                      bne #0x51180c
00511804  2c d0 8d e2                                      add sp, sp, #0x2c
00511808  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051180c  bf f2 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00511810  58 33 48 00 ac 40 00 00                          .byte 0x58, 0x33, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00511e60, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP8PropertyENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Property*> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
00511e60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00511e64  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
00511e68  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
00511e6c  54 d0 4d e2                                      sub sp, sp, #0x54
00511e70  0b b0 8f e0                                      add fp, pc, fp
00511e74  02 30 9b e7                                      ldr r3, [fp, r2]
00511e78  0c 20 8d e5                                      str r2, [sp, #0xc]
00511e7c  08 00 8d e5                                      str r0, [sp, #8]
00511e80  04 40 90 e5                                      ldr r4, [r0, #4]
00511e84  00 30 93 e5                                      ldr r3, [r3]
00511e88  01 80 a0 e1                                      mov r8, r1
00511e8c  00 00 54 e3                                      cmp r4, #0
00511e90  4c 30 8d e5                                      str r3, [sp, #0x4c]
00511e94  40 00 00 0a                                      beq #0x511f9c
00511e98  00 a0 a0 e1                                      mov sl, r0
00511e9c  34 70 8d e2                                      add r7, sp, #0x34
00511ea0  18 90 8d e2                                      add sb, sp, #0x18
00511ea4  00 10 98 e5                                      ldr r1, [r8]
00511ea8  09 20 a0 e1                                      mov r2, sb
00511eac  07 00 a0 e1                                      mov r0, r7
00511eb0  8d 08 f8 eb                                      bl #0x3140ec
00511eb4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00511eb8  48 10 9d e5                                      ldr r1, [sp, #0x48]
00511ebc  20 60 94 e5                                      ldr r6, [r4, #0x20]
00511ec0  44 50 9d e5                                      ldr r5, [sp, #0x44]
00511ec4  03 00 a0 e1                                      mov r0, r3
00511ec8  06 60 63 e0                                      rsb r6, r3, r6
00511ecc  05 50 61 e0                                      rsb r5, r1, r5
00511ed0  06 00 55 e1                                      cmp r5, r6
00511ed4  05 20 a0 b1                                      movlt r2, r5
00511ed8  06 20 a0 a1                                      movge r2, r6
00511edc  bf f1 f7 eb                                      bl #0x30e5e0
00511ee0  00 30 50 e2                                      subs r3, r0, #0
00511ee4  04 00 00 1a                                      bne #0x511efc
00511ee8  05 00 56 e1                                      cmp r6, r5
00511eec  00 30 e0 b3                                      mvnlt r3, #0
00511ef0  01 00 00 ba                                      blt #0x511efc
00511ef4  00 30 a0 d3                                      movle r3, #0
00511ef8  01 30 a0 c3                                      movgt r3, #1
00511efc  07 00 a0 e1                                      mov r0, r7
00511f00  04 30 8d e5                                      str r3, [sp, #4]
00511f04  d2 18 f8 eb                                      bl #0x318254
00511f08  04 30 9d e5                                      ldr r3, [sp, #4]
00511f0c  00 00 53 e3                                      cmp r3, #0
00511f10  04 a0 a0 a1                                      movge sl, r4
00511f14  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
00511f18  08 40 94 a5                                      ldrge r4, [r4, #8]
00511f1c  00 00 54 e3                                      cmp r4, #0
00511f20  df ff ff 1a                                      bne #0x511ea4
00511f24  08 30 9d e5                                      ldr r3, [sp, #8]
00511f28  03 00 5a e1                                      cmp sl, r3
00511f2c  1b 00 00 0a                                      beq #0x511fa0
00511f30  1c 40 8d e2                                      add r4, sp, #0x1c
00511f34  00 10 98 e5                                      ldr r1, [r8]
00511f38  14 20 8d e2                                      add r2, sp, #0x14
00511f3c  04 00 a0 e1                                      mov r0, r4
00511f40  69 08 f8 eb                                      bl #0x3140ec
00511f44  30 30 9d e5                                      ldr r3, [sp, #0x30]
00511f48  24 10 9a e5                                      ldr r1, [sl, #0x24]
00511f4c  20 50 9a e5                                      ldr r5, [sl, #0x20]
00511f50  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00511f54  03 00 a0 e1                                      mov r0, r3
00511f58  05 50 61 e0                                      rsb r5, r1, r5
00511f5c  06 60 63 e0                                      rsb r6, r3, r6
00511f60  06 00 55 e1                                      cmp r5, r6
00511f64  05 20 a0 b1                                      movlt r2, r5
00511f68  06 20 a0 a1                                      movge r2, r6
00511f6c  9b f1 f7 eb                                      bl #0x30e5e0
00511f70  00 70 50 e2                                      subs r7, r0, #0
00511f74  04 00 00 1a                                      bne #0x511f8c
00511f78  05 00 56 e1                                      cmp r6, r5
00511f7c  00 70 e0 b3                                      mvnlt r7, #0
00511f80  01 00 00 ba                                      blt #0x511f8c
00511f84  00 70 a0 d3                                      movle r7, #0
00511f88  01 70 a0 c3                                      movgt r7, #1
00511f8c  04 00 a0 e1                                      mov r0, r4
00511f90  af 18 f8 eb                                      bl #0x318254
00511f94  00 00 57 e3                                      cmp r7, #0
00511f98  00 00 00 aa                                      bge #0x511fa0
00511f9c  08 a0 9d e5                                      ldr sl, [sp, #8]
00511fa0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00511fa4  0a 00 a0 e1                                      mov r0, sl
00511fa8  02 30 9b e7                                      ldr r3, [fp, r2]
00511fac  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00511fb0  00 30 93 e5                                      ldr r3, [r3]
00511fb4  03 00 52 e1                                      cmp r2, r3
00511fb8  01 00 00 1a                                      bne #0x511fc4
00511fbc  54 d0 8d e2                                      add sp, sp, #0x54
00511fc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00511fc4  d1 f0 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00511fc8  20 2c 48 00 ac 40 00 00                          .byte 0x20, 0x2c, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00
