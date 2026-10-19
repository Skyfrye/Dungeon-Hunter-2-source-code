; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00873070, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_13StringCompareESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE7_M_findIS7_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_find<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > >(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&) const
; decoder-mode: arm
00873070  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00873074  04 40 90 e5                                      ldr r4, [r0, #4]
00873078  00 a0 a0 e1                                      mov sl, r0
0087307c  00 90 a0 e1                                      mov sb, r0
00873080  00 00 54 e3                                      cmp r4, #0
00873084  29 00 00 0a                                      beq #0x873130
00873088  10 60 91 e5                                      ldr r6, [r1, #0x10]
0087308c  14 70 91 e5                                      ldr r7, [r1, #0x14]
00873090  00 80 a0 e1                                      mov r8, r0
00873094  06 60 67 e0                                      rsb r6, r7, r6
00873098  05 00 00 ea                                      b #0x8730b4
0087309c  06 00 55 e1                                      cmp r5, r6
008730a0  0f 00 00 ba                                      blt #0x8730e4
008730a4  04 80 a0 e1                                      mov r8, r4
008730a8  08 40 94 e5                                      ldr r4, [r4, #8]
008730ac  00 00 54 e3                                      cmp r4, #0
008730b0  0e 00 00 0a                                      beq #0x8730f0
008730b4  24 30 94 e5                                      ldr r3, [r4, #0x24]
008730b8  20 50 94 e5                                      ldr r5, [r4, #0x20]
008730bc  07 10 a0 e1                                      mov r1, r7
008730c0  03 00 a0 e1                                      mov r0, r3
008730c4  05 50 63 e0                                      rsb r5, r3, r5
008730c8  05 00 56 e1                                      cmp r6, r5
008730cc  06 20 a0 b1                                      movlt r2, r6
008730d0  05 20 a0 a1                                      movge r2, r5
008730d4  41 6d ea eb                                      bl #0x30e5e0
008730d8  00 00 50 e3                                      cmp r0, #0
008730dc  ee ff ff 0a                                      beq #0x87309c
008730e0  ef ff ff aa                                      bge #0x8730a4
008730e4  0c 40 94 e5                                      ldr r4, [r4, #0xc]
008730e8  00 00 54 e3                                      cmp r4, #0
008730ec  f0 ff ff 1a                                      bne #0x8730b4
008730f0  0a 00 58 e1                                      cmp r8, sl
008730f4  0c 00 00 0a                                      beq #0x87312c
008730f8  24 30 98 e5                                      ldr r3, [r8, #0x24]
008730fc  20 40 98 e5                                      ldr r4, [r8, #0x20]
00873100  07 00 a0 e1                                      mov r0, r7
00873104  03 10 a0 e1                                      mov r1, r3
00873108  04 40 63 e0                                      rsb r4, r3, r4
0087310c  06 00 54 e1                                      cmp r4, r6
00873110  04 20 a0 b1                                      movlt r2, r4
00873114  06 20 a0 a1                                      movge r2, r6
00873118  30 6d ea eb                                      bl #0x30e5e0
0087311c  00 00 50 e3                                      cmp r0, #0
00873120  04 00 00 1a                                      bne #0x873138
00873124  04 00 56 e1                                      cmp r6, r4
00873128  00 00 00 ba                                      blt #0x873130
0087312c  08 90 a0 e1                                      mov sb, r8
00873130  09 00 a0 e1                                      mov r0, sb
00873134  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00873138  fb ff ff aa                                      bge #0x87312c
0087313c  09 00 a0 e1                                      mov r0, sb
00873140  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
