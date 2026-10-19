; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003369a8, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsbENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_findISsEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool> > >::_M_find<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
003369a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003369ac  04 40 90 e5                                      ldr r4, [r0, #4]
003369b0  00 a0 a0 e1                                      mov sl, r0
003369b4  00 90 a0 e1                                      mov sb, r0
003369b8  00 00 54 e3                                      cmp r4, #0
003369bc  29 00 00 0a                                      beq #0x336a68
003369c0  10 60 91 e5                                      ldr r6, [r1, #0x10]
003369c4  14 70 91 e5                                      ldr r7, [r1, #0x14]
003369c8  00 80 a0 e1                                      mov r8, r0
003369cc  06 60 67 e0                                      rsb r6, r7, r6
003369d0  05 00 00 ea                                      b #0x3369ec
003369d4  06 00 55 e1                                      cmp r5, r6
003369d8  0f 00 00 ba                                      blt #0x336a1c
003369dc  04 80 a0 e1                                      mov r8, r4
003369e0  08 40 94 e5                                      ldr r4, [r4, #8]
003369e4  00 00 54 e3                                      cmp r4, #0
003369e8  0e 00 00 0a                                      beq #0x336a28
003369ec  24 30 94 e5                                      ldr r3, [r4, #0x24]
003369f0  20 50 94 e5                                      ldr r5, [r4, #0x20]
003369f4  07 10 a0 e1                                      mov r1, r7
003369f8  03 00 a0 e1                                      mov r0, r3
003369fc  05 50 63 e0                                      rsb r5, r3, r5
00336a00  05 00 56 e1                                      cmp r6, r5
00336a04  06 20 a0 b1                                      movlt r2, r6
00336a08  05 20 a0 a1                                      movge r2, r5
00336a0c  f3 5e ff eb                                      bl #0x30e5e0
00336a10  00 00 50 e3                                      cmp r0, #0
00336a14  ee ff ff 0a                                      beq #0x3369d4
00336a18  ef ff ff aa                                      bge #0x3369dc
00336a1c  0c 40 94 e5                                      ldr r4, [r4, #0xc]
00336a20  00 00 54 e3                                      cmp r4, #0
00336a24  f0 ff ff 1a                                      bne #0x3369ec
00336a28  0a 00 58 e1                                      cmp r8, sl
00336a2c  0c 00 00 0a                                      beq #0x336a64
00336a30  24 30 98 e5                                      ldr r3, [r8, #0x24]
00336a34  20 40 98 e5                                      ldr r4, [r8, #0x20]
00336a38  07 00 a0 e1                                      mov r0, r7
00336a3c  03 10 a0 e1                                      mov r1, r3
00336a40  04 40 63 e0                                      rsb r4, r3, r4
00336a44  06 00 54 e1                                      cmp r4, r6
00336a48  04 20 a0 b1                                      movlt r2, r4
00336a4c  06 20 a0 a1                                      movge r2, r6
00336a50  e2 5e ff eb                                      bl #0x30e5e0
00336a54  00 00 50 e3                                      cmp r0, #0
00336a58  04 00 00 1a                                      bne #0x336a70
00336a5c  04 00 56 e1                                      cmp r6, r4
00336a60  00 00 00 ba                                      blt #0x336a68
00336a64  08 90 a0 e1                                      mov sb, r8
00336a68  09 00 a0 e1                                      mov r0, sb
00336a6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00336a70  fb ff ff aa                                      bge #0x336a64
00336a74  09 00 a0 e1                                      mov r0, sb
00336a78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
