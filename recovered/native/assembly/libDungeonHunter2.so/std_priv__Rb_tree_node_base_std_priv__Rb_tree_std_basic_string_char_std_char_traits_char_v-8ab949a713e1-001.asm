; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00895378, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10StringCompESt4pairIKS7_NS3_13SZipFileEntryEENS_10_Select1stISC_EENS_11_MapTraitsTISC_EENS4_ISC_LS5_0EEEE7_M_findIS7_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringComp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >::_M_find<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > >(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&) const
; decoder-mode: arm
00895378  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089537c  04 40 90 e5                                      ldr r4, [r0, #4]
00895380  00 a0 a0 e1                                      mov sl, r0
00895384  00 90 a0 e1                                      mov sb, r0
00895388  00 00 54 e3                                      cmp r4, #0
0089538c  29 00 00 0a                                      beq #0x895438
00895390  10 60 91 e5                                      ldr r6, [r1, #0x10]
00895394  14 70 91 e5                                      ldr r7, [r1, #0x14]
00895398  00 80 a0 e1                                      mov r8, r0
0089539c  06 60 67 e0                                      rsb r6, r7, r6
008953a0  05 00 00 ea                                      b #0x8953bc
008953a4  06 00 55 e1                                      cmp r5, r6
008953a8  0f 00 00 ba                                      blt #0x8953ec
008953ac  04 80 a0 e1                                      mov r8, r4
008953b0  08 40 94 e5                                      ldr r4, [r4, #8]
008953b4  00 00 54 e3                                      cmp r4, #0
008953b8  0e 00 00 0a                                      beq #0x8953f8
008953bc  24 30 94 e5                                      ldr r3, [r4, #0x24]
008953c0  20 50 94 e5                                      ldr r5, [r4, #0x20]
008953c4  07 10 a0 e1                                      mov r1, r7
008953c8  03 00 a0 e1                                      mov r0, r3
008953cc  05 50 63 e0                                      rsb r5, r3, r5
008953d0  05 00 56 e1                                      cmp r6, r5
008953d4  06 20 a0 b1                                      movlt r2, r6
008953d8  05 20 a0 a1                                      movge r2, r5
008953dc  7f e4 e9 eb                                      bl #0x30e5e0
008953e0  00 00 50 e3                                      cmp r0, #0
008953e4  ee ff ff 0a                                      beq #0x8953a4
008953e8  ef ff ff aa                                      bge #0x8953ac
008953ec  0c 40 94 e5                                      ldr r4, [r4, #0xc]
008953f0  00 00 54 e3                                      cmp r4, #0
008953f4  f0 ff ff 1a                                      bne #0x8953bc
008953f8  0a 00 58 e1                                      cmp r8, sl
008953fc  0c 00 00 0a                                      beq #0x895434
00895400  24 30 98 e5                                      ldr r3, [r8, #0x24]
00895404  20 40 98 e5                                      ldr r4, [r8, #0x20]
00895408  07 00 a0 e1                                      mov r0, r7
0089540c  03 10 a0 e1                                      mov r1, r3
00895410  04 40 63 e0                                      rsb r4, r3, r4
00895414  06 00 54 e1                                      cmp r4, r6
00895418  04 20 a0 b1                                      movlt r2, r4
0089541c  06 20 a0 a1                                      movge r2, r6
00895420  6e e4 e9 eb                                      bl #0x30e5e0
00895424  00 00 50 e3                                      cmp r0, #0
00895428  04 00 00 1a                                      bne #0x895440
0089542c  04 00 56 e1                                      cmp r6, r4
00895430  00 00 00 ba                                      blt #0x895438
00895434  08 90 a0 e1                                      mov sb, r8
00895438  09 00 a0 e1                                      mov r0, sb
0089543c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00895440  fb ff ff aa                                      bge #0x895434
00895444  09 00 a0 e1                                      mov r0, sb
00895448  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
