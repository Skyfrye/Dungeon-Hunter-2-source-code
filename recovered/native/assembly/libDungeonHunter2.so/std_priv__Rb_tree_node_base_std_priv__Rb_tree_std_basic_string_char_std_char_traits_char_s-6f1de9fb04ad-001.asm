; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c45a0, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsiS2_SaIS3_IS4_iEEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_lower_boundIA256_cEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::_M_lower_bound<char [256]>(char const (&) [256]) const
; decoder-mode: arm
004c45a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c45a4  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
004c45a8  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
004c45ac  2c d0 4d e2                                      sub sp, sp, #0x2c
004c45b0  0b b0 8f e0                                      add fp, pc, fp
004c45b4  02 30 9b e7                                      ldr r3, [fp, r2]
004c45b8  04 20 8d e5                                      str r2, [sp, #4]
004c45bc  00 90 a0 e1                                      mov sb, r0
004c45c0  00 30 93 e5                                      ldr r3, [r3]
004c45c4  01 80 a0 e1                                      mov r8, r1
004c45c8  24 30 8d e5                                      str r3, [sp, #0x24]
004c45cc  04 40 90 e5                                      ldr r4, [r0, #4]
004c45d0  00 00 54 e3                                      cmp r4, #0
004c45d4  21 00 00 0a                                      beq #0x4c4660
004c45d8  0c 70 8d e2                                      add r7, sp, #0xc
004c45dc  08 a0 8d e2                                      add sl, sp, #8
004c45e0  08 10 a0 e1                                      mov r1, r8
004c45e4  0a 20 a0 e1                                      mov r2, sl
004c45e8  07 00 a0 e1                                      mov r0, r7
004c45ec  be 3e f9 eb                                      bl #0x3140ec
004c45f0  24 30 94 e5                                      ldr r3, [r4, #0x24]
004c45f4  20 10 9d e5                                      ldr r1, [sp, #0x20]
004c45f8  20 60 94 e5                                      ldr r6, [r4, #0x20]
004c45fc  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
004c4600  03 00 a0 e1                                      mov r0, r3
004c4604  06 60 63 e0                                      rsb r6, r3, r6
004c4608  05 50 61 e0                                      rsb r5, r1, r5
004c460c  06 00 55 e1                                      cmp r5, r6
004c4610  05 20 a0 b1                                      movlt r2, r5
004c4614  06 20 a0 a1                                      movge r2, r6
004c4618  f0 27 f9 eb                                      bl #0x30e5e0
004c461c  00 30 50 e2                                      subs r3, r0, #0
004c4620  04 00 00 1a                                      bne #0x4c4638
004c4624  05 00 56 e1                                      cmp r6, r5
004c4628  00 30 e0 b3                                      mvnlt r3, #0
004c462c  01 00 00 ba                                      blt #0x4c4638
004c4630  00 30 a0 d3                                      movle r3, #0
004c4634  01 30 a0 c3                                      movgt r3, #1
004c4638  07 00 a0 e1                                      mov r0, r7
004c463c  00 30 8d e5                                      str r3, [sp]
004c4640  03 4f f9 eb                                      bl #0x318254
004c4644  00 30 9d e5                                      ldr r3, [sp]
004c4648  00 00 53 e3                                      cmp r3, #0
004c464c  04 90 a0 a1                                      movge sb, r4
004c4650  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
004c4654  08 40 94 a5                                      ldrge r4, [r4, #8]
004c4658  00 00 54 e3                                      cmp r4, #0
004c465c  df ff ff 1a                                      bne #0x4c45e0
004c4660  04 20 9d e5                                      ldr r2, [sp, #4]
004c4664  09 00 a0 e1                                      mov r0, sb
004c4668  02 30 9b e7                                      ldr r3, [fp, r2]
004c466c  24 20 9d e5                                      ldr r2, [sp, #0x24]
004c4670  00 30 93 e5                                      ldr r3, [r3]
004c4674  03 00 52 e1                                      cmp r2, r3
004c4678  01 00 00 1a                                      bne #0x4c4684
004c467c  2c d0 8d e2                                      add sp, sp, #0x2c
004c4680  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c4684  21 27 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004c4688  e0 04 4d 00 ac 40 00 00                          .byte 0xe0, 0x04, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004c4998, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt3mapISsiS2_SaIS3_IS4_iEEEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
004c4998  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c499c  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
004c49a0  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
004c49a4  54 d0 4d e2                                      sub sp, sp, #0x54
004c49a8  0b b0 8f e0                                      add fp, pc, fp
004c49ac  02 30 9b e7                                      ldr r3, [fp, r2]
004c49b0  0c 20 8d e5                                      str r2, [sp, #0xc]
004c49b4  08 00 8d e5                                      str r0, [sp, #8]
004c49b8  04 40 90 e5                                      ldr r4, [r0, #4]
004c49bc  00 30 93 e5                                      ldr r3, [r3]
004c49c0  01 80 a0 e1                                      mov r8, r1
004c49c4  00 00 54 e3                                      cmp r4, #0
004c49c8  4c 30 8d e5                                      str r3, [sp, #0x4c]
004c49cc  40 00 00 0a                                      beq #0x4c4ad4
004c49d0  00 a0 a0 e1                                      mov sl, r0
004c49d4  34 70 8d e2                                      add r7, sp, #0x34
004c49d8  18 90 8d e2                                      add sb, sp, #0x18
004c49dc  00 10 98 e5                                      ldr r1, [r8]
004c49e0  09 20 a0 e1                                      mov r2, sb
004c49e4  07 00 a0 e1                                      mov r0, r7
004c49e8  bf 3d f9 eb                                      bl #0x3140ec
004c49ec  24 30 94 e5                                      ldr r3, [r4, #0x24]
004c49f0  48 10 9d e5                                      ldr r1, [sp, #0x48]
004c49f4  20 60 94 e5                                      ldr r6, [r4, #0x20]
004c49f8  44 50 9d e5                                      ldr r5, [sp, #0x44]
004c49fc  03 00 a0 e1                                      mov r0, r3
004c4a00  06 60 63 e0                                      rsb r6, r3, r6
004c4a04  05 50 61 e0                                      rsb r5, r1, r5
004c4a08  06 00 55 e1                                      cmp r5, r6
004c4a0c  05 20 a0 b1                                      movlt r2, r5
004c4a10  06 20 a0 a1                                      movge r2, r6
004c4a14  f1 26 f9 eb                                      bl #0x30e5e0
004c4a18  00 30 50 e2                                      subs r3, r0, #0
004c4a1c  04 00 00 1a                                      bne #0x4c4a34
004c4a20  05 00 56 e1                                      cmp r6, r5
004c4a24  00 30 e0 b3                                      mvnlt r3, #0
004c4a28  01 00 00 ba                                      blt #0x4c4a34
004c4a2c  00 30 a0 d3                                      movle r3, #0
004c4a30  01 30 a0 c3                                      movgt r3, #1
004c4a34  07 00 a0 e1                                      mov r0, r7
004c4a38  04 30 8d e5                                      str r3, [sp, #4]
004c4a3c  04 4e f9 eb                                      bl #0x318254
004c4a40  04 30 9d e5                                      ldr r3, [sp, #4]
004c4a44  00 00 53 e3                                      cmp r3, #0
004c4a48  04 a0 a0 a1                                      movge sl, r4
004c4a4c  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
004c4a50  08 40 94 a5                                      ldrge r4, [r4, #8]
004c4a54  00 00 54 e3                                      cmp r4, #0
004c4a58  df ff ff 1a                                      bne #0x4c49dc
004c4a5c  08 30 9d e5                                      ldr r3, [sp, #8]
004c4a60  03 00 5a e1                                      cmp sl, r3
004c4a64  1b 00 00 0a                                      beq #0x4c4ad8
004c4a68  1c 40 8d e2                                      add r4, sp, #0x1c
004c4a6c  00 10 98 e5                                      ldr r1, [r8]
004c4a70  14 20 8d e2                                      add r2, sp, #0x14
004c4a74  04 00 a0 e1                                      mov r0, r4
004c4a78  9b 3d f9 eb                                      bl #0x3140ec
004c4a7c  30 30 9d e5                                      ldr r3, [sp, #0x30]
004c4a80  24 10 9a e5                                      ldr r1, [sl, #0x24]
004c4a84  20 50 9a e5                                      ldr r5, [sl, #0x20]
004c4a88  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
004c4a8c  03 00 a0 e1                                      mov r0, r3
004c4a90  05 50 61 e0                                      rsb r5, r1, r5
004c4a94  06 60 63 e0                                      rsb r6, r3, r6
004c4a98  06 00 55 e1                                      cmp r5, r6
004c4a9c  05 20 a0 b1                                      movlt r2, r5
004c4aa0  06 20 a0 a1                                      movge r2, r6
004c4aa4  cd 26 f9 eb                                      bl #0x30e5e0
004c4aa8  00 70 50 e2                                      subs r7, r0, #0
004c4aac  04 00 00 1a                                      bne #0x4c4ac4
004c4ab0  05 00 56 e1                                      cmp r6, r5
004c4ab4  00 70 e0 b3                                      mvnlt r7, #0
004c4ab8  01 00 00 ba                                      blt #0x4c4ac4
004c4abc  00 70 a0 d3                                      movle r7, #0
004c4ac0  01 70 a0 c3                                      movgt r7, #1
004c4ac4  04 00 a0 e1                                      mov r0, r4
004c4ac8  e1 4d f9 eb                                      bl #0x318254
004c4acc  00 00 57 e3                                      cmp r7, #0
004c4ad0  00 00 00 aa                                      bge #0x4c4ad8
004c4ad4  08 a0 9d e5                                      ldr sl, [sp, #8]
004c4ad8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004c4adc  0a 00 a0 e1                                      mov r0, sl
004c4ae0  02 30 9b e7                                      ldr r3, [fp, r2]
004c4ae4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
004c4ae8  00 30 93 e5                                      ldr r3, [r3]
004c4aec  03 00 52 e1                                      cmp r2, r3
004c4af0  01 00 00 1a                                      bne #0x4c4afc
004c4af4  54 d0 8d e2                                      add sp, sp, #0x54
004c4af8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c4afc  03 26 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004c4b00  e8 00 4d 00 ac 40 00 00                          .byte 0xe8, 0x00, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00
