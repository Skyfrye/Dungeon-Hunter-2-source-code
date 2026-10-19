; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088cb40, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNKSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10stringcompESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE7_M_findIS7_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_find<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > >(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&) const
; decoder-mode: arm
0088cb40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088cb44  04 40 90 e5                                      ldr r4, [r0, #4]
0088cb48  00 a0 a0 e1                                      mov sl, r0
0088cb4c  00 90 a0 e1                                      mov sb, r0
0088cb50  00 00 54 e3                                      cmp r4, #0
0088cb54  29 00 00 0a                                      beq #0x88cc00
0088cb58  10 60 91 e5                                      ldr r6, [r1, #0x10]
0088cb5c  14 70 91 e5                                      ldr r7, [r1, #0x14]
0088cb60  00 80 a0 e1                                      mov r8, r0
0088cb64  06 60 67 e0                                      rsb r6, r7, r6
0088cb68  05 00 00 ea                                      b #0x88cb84
0088cb6c  06 00 55 e1                                      cmp r5, r6
0088cb70  0f 00 00 ba                                      blt #0x88cbb4
0088cb74  04 80 a0 e1                                      mov r8, r4
0088cb78  08 40 94 e5                                      ldr r4, [r4, #8]
0088cb7c  00 00 54 e3                                      cmp r4, #0
0088cb80  0e 00 00 0a                                      beq #0x88cbc0
0088cb84  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088cb88  20 50 94 e5                                      ldr r5, [r4, #0x20]
0088cb8c  07 10 a0 e1                                      mov r1, r7
0088cb90  03 00 a0 e1                                      mov r0, r3
0088cb94  05 50 63 e0                                      rsb r5, r3, r5
0088cb98  05 00 56 e1                                      cmp r6, r5
0088cb9c  06 20 a0 b1                                      movlt r2, r6
0088cba0  05 20 a0 a1                                      movge r2, r5
0088cba4  8d 06 ea eb                                      bl #0x30e5e0
0088cba8  00 00 50 e3                                      cmp r0, #0
0088cbac  ee ff ff 0a                                      beq #0x88cb6c
0088cbb0  ef ff ff aa                                      bge #0x88cb74
0088cbb4  0c 40 94 e5                                      ldr r4, [r4, #0xc]
0088cbb8  00 00 54 e3                                      cmp r4, #0
0088cbbc  f0 ff ff 1a                                      bne #0x88cb84
0088cbc0  0a 00 58 e1                                      cmp r8, sl
0088cbc4  0c 00 00 0a                                      beq #0x88cbfc
0088cbc8  24 30 98 e5                                      ldr r3, [r8, #0x24]
0088cbcc  20 40 98 e5                                      ldr r4, [r8, #0x20]
0088cbd0  07 00 a0 e1                                      mov r0, r7
0088cbd4  03 10 a0 e1                                      mov r1, r3
0088cbd8  04 40 63 e0                                      rsb r4, r3, r4
0088cbdc  06 00 54 e1                                      cmp r4, r6
0088cbe0  04 20 a0 b1                                      movlt r2, r4
0088cbe4  06 20 a0 a1                                      movge r2, r6
0088cbe8  7c 06 ea eb                                      bl #0x30e5e0
0088cbec  00 00 50 e3                                      cmp r0, #0
0088cbf0  04 00 00 1a                                      bne #0x88cc08
0088cbf4  04 00 56 e1                                      cmp r6, r4
0088cbf8  00 00 00 ba                                      blt #0x88cc00
0088cbfc  08 90 a0 e1                                      mov sb, r8
0088cc00  09 00 a0 e1                                      mov r0, sb
0088cc04  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088cc08  fb ff ff aa                                      bge #0x88cbfc
0088cc0c  09 00 a0 e1                                      mov r0, sb
0088cc10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
