; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038e734, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN14ObjectSearcher16BackupObjectListEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
0038e734  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038e738  20 21 9f e5                                      ldr r2, [pc, #0x120]
0038e73c  20 31 9f e5                                      ldr r3, [pc, #0x120]
0038e740  34 d0 4d e2                                      sub sp, sp, #0x34
0038e744  02 20 8f e0                                      add r2, pc, r2
0038e748  0c 30 8d e5                                      str r3, [sp, #0xc]
0038e74c  03 30 92 e7                                      ldr r3, [r2, r3]
0038e750  05 00 8d e9                                      stmib sp, {r0, r2}
0038e754  00 30 93 e5                                      ldr r3, [r3]
0038e758  01 a0 a0 e1                                      mov sl, r1
0038e75c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0038e760  04 50 90 e5                                      ldr r5, [r0, #4]
0038e764  00 00 55 e3                                      cmp r5, #0
0038e768  31 00 00 0a                                      beq #0x38e834
0038e76c  14 80 8d e2                                      add r8, sp, #0x14
0038e770  10 90 8d e2                                      add sb, sp, #0x10
0038e774  07 00 00 ea                                      b #0x38e798
0038e778  04 00 a0 e1                                      mov r0, r4
0038e77c  df e9 0d eb                                      bl #0x708f00
0038e780  00 00 5b e3                                      cmp fp, #0
0038e784  04 50 8d a5                                      strge r5, [sp, #4]
0038e788  08 50 95 a5                                      ldrge r5, [r5, #8]
0038e78c  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
0038e790  00 00 55 e3                                      cmp r5, #0
0038e794  26 00 00 0a                                      beq #0x38e834
0038e798  00 10 9a e5                                      ldr r1, [sl]
0038e79c  09 20 a0 e1                                      mov r2, sb
0038e7a0  08 00 a0 e1                                      mov r0, r8
0038e7a4  50 16 fe eb                                      bl #0x3140ec
0038e7a8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0038e7ac  28 40 9d e5                                      ldr r4, [sp, #0x28]
0038e7b0  20 70 95 e5                                      ldr r7, [r5, #0x20]
0038e7b4  24 60 9d e5                                      ldr r6, [sp, #0x24]
0038e7b8  03 00 a0 e1                                      mov r0, r3
0038e7bc  07 70 63 e0                                      rsb r7, r3, r7
0038e7c0  06 60 64 e0                                      rsb r6, r4, r6
0038e7c4  07 00 56 e1                                      cmp r6, r7
0038e7c8  06 20 a0 b1                                      movlt r2, r6
0038e7cc  07 20 a0 a1                                      movge r2, r7
0038e7d0  04 10 a0 e1                                      mov r1, r4
0038e7d4  81 ff fd eb                                      bl #0x30e5e0
0038e7d8  00 b0 50 e2                                      subs fp, r0, #0
0038e7dc  04 00 00 1a                                      bne #0x38e7f4
0038e7e0  06 00 57 e1                                      cmp r7, r6
0038e7e4  00 b0 e0 b3                                      mvnlt fp, #0
0038e7e8  01 00 00 ba                                      blt #0x38e7f4
0038e7ec  00 b0 a0 d3                                      movle fp, #0
0038e7f0  01 b0 a0 c3                                      movgt fp, #1
0038e7f4  08 00 54 e1                                      cmp r4, r8
0038e7f8  e0 ff ff 0a                                      beq #0x38e780
0038e7fc  00 00 54 e3                                      cmp r4, #0
0038e800  de ff ff 0a                                      beq #0x38e780
0038e804  14 10 9d e5                                      ldr r1, [sp, #0x14]
0038e808  01 10 64 e0                                      rsb r1, r4, r1
0038e80c  80 00 51 e3                                      cmp r1, #0x80
0038e810  d8 ff ff 9a                                      bls #0x38e778
0038e814  04 00 a0 e1                                      mov r0, r4
0038e818  08 07 fe eb                                      bl #0x310440
0038e81c  00 00 5b e3                                      cmp fp, #0
0038e820  04 50 8d a5                                      strge r5, [sp, #4]
0038e824  08 50 95 a5                                      ldrge r5, [r5, #8]
0038e828  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
0038e82c  00 00 55 e3                                      cmp r5, #0
0038e830  d8 ff ff 1a                                      bne #0x38e798
0038e834  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0038e838  08 10 9d e5                                      ldr r1, [sp, #8]
0038e83c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0038e840  00 30 91 e7                                      ldr r3, [r1, r0]
0038e844  04 00 9d e5                                      ldr r0, [sp, #4]
0038e848  00 30 93 e5                                      ldr r3, [r3]
0038e84c  03 00 52 e1                                      cmp r2, r3
0038e850  01 00 00 1a                                      bne #0x38e85c
0038e854  34 d0 8d e2                                      add sp, sp, #0x34
0038e858  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038e85c  ab fe fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038e860  4c 63 60 00 ac 40 00 00                          .byte 0x4c, 0x63, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00
