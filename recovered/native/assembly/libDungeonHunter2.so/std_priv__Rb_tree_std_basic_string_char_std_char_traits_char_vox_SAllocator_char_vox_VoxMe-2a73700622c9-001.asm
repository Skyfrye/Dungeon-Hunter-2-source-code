; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088af4c, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10stringcompESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE14_M_create_nodeERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&)
; decoder-mode: arm
0088af4c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088af50  2c 00 a0 e3                                      mov r0, #0x2c
0088af54  01 50 a0 e1                                      mov r5, r1
0088af58  00 10 a0 e3                                      mov r1, #0
0088af5c  b9 15 ea eb                                      bl #0x310648
0088af60  00 40 a0 e1                                      mov r4, r0
0088af64  10 00 80 e2                                      add r0, r0, #0x10
0088af68  20 00 84 e5                                      str r0, [r4, #0x20]
0088af6c  24 00 84 e5                                      str r0, [r4, #0x24]
0088af70  10 20 95 e5                                      ldr r2, [r5, #0x10]
0088af74  14 10 95 e5                                      ldr r1, [r5, #0x14]
0088af78  dc 90 ff eb                                      bl #0x86f2f0
0088af7c  18 20 95 e5                                      ldr r2, [r5, #0x18]
0088af80  00 30 a0 e3                                      mov r3, #0
0088af84  0c 30 84 e5                                      str r3, [r4, #0xc]
0088af88  28 20 84 e5                                      str r2, [r4, #0x28]
0088af8c  08 30 84 e5                                      str r3, [r4, #8]
0088af90  04 00 a0 e1                                      mov r0, r4
0088af94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088b7c8, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10stringcompESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSB_SJ_SJ_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0088b7c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0088b7cc  02 00 51 e1                                      cmp r1, r2
0088b7d0  0c d0 4d e2                                      sub sp, sp, #0xc
0088b7d4  01 40 a0 e1                                      mov r4, r1
0088b7d8  02 50 a0 e1                                      mov r5, r2
0088b7dc  00 60 a0 e1                                      mov r6, r0
0088b7e0  23 00 00 0a                                      beq #0x88b874
0088b7e4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0088b7e8  00 00 52 e3                                      cmp r2, #0
0088b7ec  12 00 00 0a                                      beq #0x88b83c
0088b7f0  03 10 a0 e1                                      mov r1, r3
0088b7f4  04 00 a0 e1                                      mov r0, r4
0088b7f8  d3 fd ff eb                                      bl #0x88af4c
0088b7fc  0c 00 85 e5                                      str r0, [r5, #0xc]
0088b800  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088b804  00 70 a0 e1                                      mov r7, r0
0088b808  03 00 55 e1                                      cmp r5, r3
0088b80c  16 00 00 0a                                      beq #0x88b86c
0088b810  07 00 a0 e1                                      mov r0, r7
0088b814  04 50 87 e5                                      str r5, [r7, #4]
0088b818  04 10 84 e2                                      add r1, r4, #4
0088b81c  cf 1f ea eb                                      bl #0x313760
0088b820  10 30 94 e5                                      ldr r3, [r4, #0x10]
0088b824  06 00 a0 e1                                      mov r0, r6
0088b828  01 30 83 e2                                      add r3, r3, #1
0088b82c  10 30 84 e5                                      str r3, [r4, #0x10]
0088b830  00 70 86 e5                                      str r7, [r6]
0088b834  0c d0 8d e2                                      add sp, sp, #0xc
0088b838  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0088b83c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0088b840  00 00 52 e3                                      cmp r2, #0
0088b844  12 00 00 0a                                      beq #0x88b894
0088b848  03 10 a0 e1                                      mov r1, r3
0088b84c  04 00 a0 e1                                      mov r0, r4
0088b850  bd fd ff eb                                      bl #0x88af4c
0088b854  08 00 85 e5                                      str r0, [r5, #8]
0088b858  08 30 94 e5                                      ldr r3, [r4, #8]
0088b85c  00 70 a0 e1                                      mov r7, r0
0088b860  03 00 55 e1                                      cmp r5, r3
0088b864  08 00 84 05                                      streq r0, [r4, #8]
0088b868  e8 ff ff ea                                      b #0x88b810
0088b86c  0c 70 84 e5                                      str r7, [r4, #0xc]
0088b870  e6 ff ff ea                                      b #0x88b810
0088b874  03 10 a0 e1                                      mov r1, r3
0088b878  04 00 a0 e1                                      mov r0, r4
0088b87c  b2 fd ff eb                                      bl #0x88af4c
0088b880  00 70 a0 e1                                      mov r7, r0
0088b884  08 00 84 e5                                      str r0, [r4, #8]
0088b888  04 00 84 e5                                      str r0, [r4, #4]
0088b88c  0c 00 84 e5                                      str r0, [r4, #0xc]
0088b890  de ff ff ea                                      b #0x88b810
0088b894  14 00 81 e2                                      add r0, r1, #0x14
0088b898  10 20 85 e2                                      add r2, r5, #0x10
0088b89c  03 10 a0 e1                                      mov r1, r3
0088b8a0  04 30 8d e5                                      str r3, [sp, #4]
0088b8a4  b3 ff ff eb                                      bl #0x88b778
0088b8a8  00 00 50 e3                                      cmp r0, #0
0088b8ac  04 30 9d e5                                      ldr r3, [sp, #4]
0088b8b0  ce ff ff 0a                                      beq #0x88b7f0
0088b8b4  e3 ff ff ea                                      b #0x88b848

; FUNCTION 0x0088bf88, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10stringcompESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0088bf88  70 40 2d e9                                      push {r4, r5, r6, lr}
0088bf8c  00 40 51 e2                                      subs r4, r1, #0
0088bf90  00 50 a0 e1                                      mov r5, r0
0088bf94  0f 00 00 0a                                      beq #0x88bfd8
0088bf98  05 00 a0 e1                                      mov r0, r5
0088bf9c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0088bfa0  f8 ff ff eb                                      bl #0x88bf88
0088bfa4  10 20 84 e2                                      add r2, r4, #0x10
0088bfa8  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088bfac  08 60 94 e5                                      ldr r6, [r4, #8]
0088bfb0  02 00 53 e1                                      cmp r3, r2
0088bfb4  03 00 a0 e1                                      mov r0, r3
0088bfb8  02 00 00 0a                                      beq #0x88bfc8
0088bfbc  00 00 53 e3                                      cmp r3, #0
0088bfc0  00 00 00 0a                                      beq #0x88bfc8
0088bfc4  1e 11 ea eb                                      bl #0x310444
0088bfc8  04 00 a0 e1                                      mov r0, r4
0088bfcc  1c 11 ea eb                                      bl #0x310444
0088bfd0  00 40 56 e2                                      subs r4, r6, #0
0088bfd4  ef ff ff 1a                                      bne #0x88bf98
0088bfd8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088c928, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10stringcompESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE13insert_uniqueERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&)
; decoder-mode: arm
0088c928  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088c92c  04 50 91 e5                                      ldr r5, [r1, #4]
0088c930  14 d0 4d e2                                      sub sp, sp, #0x14
0088c934  01 90 a0 e1                                      mov sb, r1
0088c938  00 00 55 e3                                      cmp r5, #0
0088c93c  00 40 a0 e1                                      mov r4, r0
0088c940  02 80 a0 e1                                      mov r8, r2
0088c944  38 00 00 0a                                      beq #0x88ca2c
0088c948  14 70 92 e5                                      ldr r7, [r2, #0x14]
0088c94c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0088c950  0b a0 67 e0                                      rsb sl, r7, fp
0088c954  04 00 00 ea                                      b #0x88c96c
0088c958  08 30 95 e5                                      ldr r3, [r5, #8]
0088c95c  01 10 a0 e3                                      mov r1, #1
0088c960  00 00 53 e3                                      cmp r3, #0
0088c964  16 00 00 0a                                      beq #0x88c9c4
0088c968  03 50 a0 e1                                      mov r5, r3
0088c96c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0088c970  20 60 95 e5                                      ldr r6, [r5, #0x20]
0088c974  07 00 a0 e1                                      mov r0, r7
0088c978  03 10 a0 e1                                      mov r1, r3
0088c97c  06 60 63 e0                                      rsb r6, r3, r6
0088c980  0a 00 56 e1                                      cmp r6, sl
0088c984  06 20 a0 b1                                      movlt r2, r6
0088c988  0a 20 a0 a1                                      movge r2, sl
0088c98c  13 07 ea eb                                      bl #0x30e5e0
0088c990  00 00 50 e3                                      cmp r0, #0
0088c994  05 20 a0 e1                                      mov r2, r5
0088c998  03 00 00 1a                                      bne #0x88c9ac
0088c99c  06 00 5a e1                                      cmp sl, r6
0088c9a0  ec ff ff ba                                      blt #0x88c958
0088c9a4  00 00 a0 d3                                      movle r0, #0
0088c9a8  01 00 a0 c3                                      movgt r0, #1
0088c9ac  00 00 50 e3                                      cmp r0, #0
0088c9b0  e8 ff ff ba                                      blt #0x88c958
0088c9b4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0088c9b8  00 10 a0 e3                                      mov r1, #0
0088c9bc  00 00 53 e3                                      cmp r3, #0
0088c9c0  e8 ff ff 1a                                      bne #0x88c968
0088c9c4  00 00 51 e3                                      cmp r1, #0
0088c9c8  05 a0 a0 01                                      moveq sl, r5
0088c9cc  17 00 00 1a                                      bne #0x88ca30
0088c9d0  24 00 92 e5                                      ldr r0, [r2, #0x24]
0088c9d4  20 60 92 e5                                      ldr r6, [r2, #0x20]
0088c9d8  0b b0 67 e0                                      rsb fp, r7, fp
0088c9dc  07 10 a0 e1                                      mov r1, r7
0088c9e0  06 60 60 e0                                      rsb r6, r0, r6
0088c9e4  06 00 5b e1                                      cmp fp, r6
0088c9e8  0b 20 a0 b1                                      movlt r2, fp
0088c9ec  06 20 a0 a1                                      movge r2, r6
0088c9f0  fa 06 ea eb                                      bl #0x30e5e0
0088c9f4  00 00 50 e3                                      cmp r0, #0
0088c9f8  03 00 00 1a                                      bne #0x88ca0c
0088c9fc  0b 00 56 e1                                      cmp r6, fp
0088ca00  20 00 00 ba                                      blt #0x88ca88
0088ca04  00 00 a0 d3                                      movle r0, #0
0088ca08  01 00 a0 c3                                      movgt r0, #1
0088ca0c  00 00 50 e3                                      cmp r0, #0
0088ca10  00 30 a0 a3                                      movge r3, #0
0088ca14  00 a0 84 a5                                      strge sl, [r4]
0088ca18  04 30 c4 a5                                      strbge r3, [r4, #4]
0088ca1c  19 00 00 ba                                      blt #0x88ca88
0088ca20  04 00 a0 e1                                      mov r0, r4
0088ca24  14 d0 8d e2                                      add sp, sp, #0x14
0088ca28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088ca2c  01 50 a0 e1                                      mov r5, r1
0088ca30  08 30 99 e5                                      ldr r3, [sb, #8]
0088ca34  03 00 55 e1                                      cmp r5, r3
0088ca38  32 00 00 0a                                      beq #0x88cb08
0088ca3c  00 30 d5 e5                                      ldrb r3, [r5]
0088ca40  00 00 53 e3                                      cmp r3, #0
0088ca44  03 00 00 1a                                      bne #0x88ca58
0088ca48  04 30 95 e5                                      ldr r3, [r5, #4]
0088ca4c  04 30 93 e5                                      ldr r3, [r3, #4]
0088ca50  03 00 55 e1                                      cmp r5, r3
0088ca54  26 00 00 0a                                      beq #0x88caf4
0088ca58  08 20 95 e5                                      ldr r2, [r5, #8]
0088ca5c  00 00 52 e3                                      cmp r2, #0
0088ca60  01 00 00 1a                                      bne #0x88ca6c
0088ca64  14 00 00 ea                                      b #0x88cabc
0088ca68  03 20 a0 e1                                      mov r2, r3
0088ca6c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0088ca70  00 00 53 e3                                      cmp r3, #0
0088ca74  fb ff ff 1a                                      bne #0x88ca68
0088ca78  02 a0 a0 e1                                      mov sl, r2
0088ca7c  14 70 98 e5                                      ldr r7, [r8, #0x14]
0088ca80  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0088ca84  d1 ff ff ea                                      b #0x88c9d0
0088ca88  00 c0 a0 e3                                      mov ip, #0
0088ca8c  05 20 a0 e1                                      mov r2, r5
0088ca90  08 30 a0 e1                                      mov r3, r8
0088ca94  09 10 a0 e1                                      mov r1, sb
0088ca98  08 00 8d e2                                      add r0, sp, #8
0088ca9c  04 c0 8d e5                                      str ip, [sp, #4]
0088caa0  00 c0 8d e5                                      str ip, [sp]
0088caa4  47 fb ff eb                                      bl #0x88b7c8
0088caa8  08 30 9d e5                                      ldr r3, [sp, #8]
0088caac  01 20 a0 e3                                      mov r2, #1
0088cab0  04 20 c4 e5                                      strb r2, [r4, #4]
0088cab4  00 30 84 e5                                      str r3, [r4]
0088cab8  d8 ff ff ea                                      b #0x88ca20
0088cabc  04 30 95 e5                                      ldr r3, [r5, #4]
0088cac0  08 20 93 e5                                      ldr r2, [r3, #8]
0088cac4  02 00 55 e1                                      cmp r5, r2
0088cac8  01 00 00 0a                                      beq #0x88cad4
0088cacc  19 00 00 ea                                      b #0x88cb38
0088cad0  02 30 a0 e1                                      mov r3, r2
0088cad4  04 20 93 e5                                      ldr r2, [r3, #4]
0088cad8  08 10 92 e5                                      ldr r1, [r2, #8]
0088cadc  03 00 51 e1                                      cmp r1, r3
0088cae0  fa ff ff 0a                                      beq #0x88cad0
0088cae4  14 70 98 e5                                      ldr r7, [r8, #0x14]
0088cae8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0088caec  02 a0 a0 e1                                      mov sl, r2
0088caf0  b6 ff ff ea                                      b #0x88c9d0
0088caf4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0088caf8  14 70 98 e5                                      ldr r7, [r8, #0x14]
0088cafc  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0088cb00  02 a0 a0 e1                                      mov sl, r2
0088cb04  b1 ff ff ea                                      b #0x88c9d0
0088cb08  05 20 a0 e1                                      mov r2, r5
0088cb0c  08 30 a0 e1                                      mov r3, r8
0088cb10  00 c0 a0 e3                                      mov ip, #0
0088cb14  09 10 a0 e1                                      mov r1, sb
0088cb18  0c 00 8d e2                                      add r0, sp, #0xc
0088cb1c  20 10 8d e8                                      stm sp, {r5, ip}
0088cb20  28 fb ff eb                                      bl #0x88b7c8
0088cb24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088cb28  01 20 a0 e3                                      mov r2, #1
0088cb2c  04 20 c4 e5                                      strb r2, [r4, #4]
0088cb30  00 30 84 e5                                      str r3, [r4]
0088cb34  b9 ff ff ea                                      b #0x88ca20
0088cb38  03 20 a0 e1                                      mov r2, r3
0088cb3c  cd ff ff ea                                      b #0x88ca78

; FUNCTION 0x0088ccb4, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_10stringcompESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE13insert_uniqueENS_17_Rb_tree_iteratorISB_SF_EERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::stringcomp, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> > >, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&)
; decoder-mode: arm
0088ccb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088ccb8  44 d0 4d e2                                      sub sp, sp, #0x44
0088ccbc  14 20 8d e5                                      str r2, [sp, #0x14]
0088ccc0  00 50 92 e5                                      ldr r5, [r2]
0088ccc4  08 20 91 e5                                      ldr r2, [r1, #8]
0088ccc8  01 60 a0 e1                                      mov r6, r1
0088cccc  00 70 a0 e1                                      mov r7, r0
0088ccd0  02 00 55 e1                                      cmp r5, r2
0088ccd4  03 80 a0 e1                                      mov r8, r3
0088ccd8  7c 00 00 0a                                      beq #0x88ced0
0088ccdc  01 00 55 e1                                      cmp r5, r1
0088cce0  d0 00 00 0a                                      beq #0x88d028
0088cce4  00 30 d5 e5                                      ldrb r3, [r5]
0088cce8  00 00 53 e3                                      cmp r3, #0
0088ccec  35 00 00 0a                                      beq #0x88cdc8
0088ccf0  08 40 95 e5                                      ldr r4, [r5, #8]
0088ccf4  00 00 54 e3                                      cmp r4, #0
0088ccf8  01 00 00 1a                                      bne #0x88cd04
0088ccfc  39 00 00 ea                                      b #0x88cde8
0088cd00  03 40 a0 e1                                      mov r4, r3
0088cd04  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088cd08  00 00 53 e3                                      cmp r3, #0
0088cd0c  fb ff ff 1a                                      bne #0x88cd00
0088cd10  24 30 95 e5                                      ldr r3, [r5, #0x24]
0088cd14  14 90 98 e5                                      ldr sb, [r8, #0x14]
0088cd18  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0088cd1c  20 20 95 e5                                      ldr r2, [r5, #0x20]
0088cd20  03 10 a0 e1                                      mov r1, r3
0088cd24  0b b0 69 e0                                      rsb fp, sb, fp
0088cd28  02 20 63 e0                                      rsb r2, r3, r2
0088cd2c  18 20 8d e5                                      str r2, [sp, #0x18]
0088cd30  09 00 a0 e1                                      mov r0, sb
0088cd34  0b 00 52 e1                                      cmp r2, fp
0088cd38  0b 20 a0 a1                                      movge r2, fp
0088cd3c  0c 30 8d e5                                      str r3, [sp, #0xc]
0088cd40  1c 20 8d e5                                      str r2, [sp, #0x1c]
0088cd44  25 06 ea eb                                      bl #0x30e5e0
0088cd48  00 00 50 e3                                      cmp r0, #0
0088cd4c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088cd50  05 00 00 1a                                      bne #0x88cd6c
0088cd54  18 20 9d e5                                      ldr r2, [sp, #0x18]
0088cd58  02 00 5b e1                                      cmp fp, r2
0088cd5c  00 00 e0 b3                                      mvnlt r0, #0
0088cd60  01 00 00 ba                                      blt #0x88cd6c
0088cd64  00 00 a0 d3                                      movle r0, #0
0088cd68  01 00 a0 c3                                      movgt r0, #1
0088cd6c  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0088cd70  28 00 00 1a                                      bne #0x88ce18
0088cd74  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0088cd78  00 00 54 e3                                      cmp r4, #0
0088cd7c  01 00 00 1a                                      bne #0x88cd88
0088cd80  cc 00 00 ea                                      b #0x88d0b8
0088cd84  02 40 a0 e1                                      mov r4, r2
0088cd88  08 20 94 e5                                      ldr r2, [r4, #8]
0088cd8c  00 00 52 e3                                      cmp r2, #0
0088cd90  fb ff ff 1a                                      bne #0x88cd84
0088cd94  00 00 5c e3                                      cmp ip, #0
0088cd98  43 00 00 1a                                      bne #0x88ceac
0088cd9c  03 00 a0 e1                                      mov r0, r3
0088cda0  09 10 a0 e1                                      mov r1, sb
0088cda4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0088cda8  0c 06 ea eb                                      bl #0x30e5e0
0088cdac  00 00 50 e3                                      cmp r0, #0
0088cdb0  34 00 00 1a                                      bne #0x88ce88
0088cdb4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0088cdb8  03 00 5b e1                                      cmp fp, r3
0088cdbc  32 00 00 ca                                      bgt #0x88ce8c
0088cdc0  00 50 87 e5                                      str r5, [r7]
0088cdc4  3e 00 00 ea                                      b #0x88cec4
0088cdc8  04 30 95 e5                                      ldr r3, [r5, #4]
0088cdcc  04 30 93 e5                                      ldr r3, [r3, #4]
0088cdd0  03 00 55 e1                                      cmp r5, r3
0088cdd4  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0088cdd8  cc ff ff 0a                                      beq #0x88cd10
0088cddc  08 40 95 e5                                      ldr r4, [r5, #8]
0088cde0  00 00 54 e3                                      cmp r4, #0
0088cde4  c6 ff ff 1a                                      bne #0x88cd04
0088cde8  04 40 95 e5                                      ldr r4, [r5, #4]
0088cdec  08 30 94 e5                                      ldr r3, [r4, #8]
0088cdf0  03 00 55 e1                                      cmp r5, r3
0088cdf4  01 00 00 0a                                      beq #0x88ce00
0088cdf8  c4 ff ff ea                                      b #0x88cd10
0088cdfc  03 40 a0 e1                                      mov r4, r3
0088ce00  04 30 94 e5                                      ldr r3, [r4, #4]
0088ce04  08 20 93 e5                                      ldr r2, [r3, #8]
0088ce08  04 00 52 e1                                      cmp r2, r4
0088ce0c  fa ff ff 0a                                      beq #0x88cdfc
0088ce10  03 40 a0 e1                                      mov r4, r3
0088ce14  bd ff ff ea                                      b #0x88cd10
0088ce18  24 20 94 e5                                      ldr r2, [r4, #0x24]
0088ce1c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0088ce20  09 10 a0 e1                                      mov r1, sb
0088ce24  02 00 a0 e1                                      mov r0, r2
0088ce28  0a a0 62 e0                                      rsb sl, r2, sl
0088ce2c  0a 00 5b e1                                      cmp fp, sl
0088ce30  0b 20 a0 b1                                      movlt r2, fp
0088ce34  0a 20 a0 a1                                      movge r2, sl
0088ce38  0c 30 8d e5                                      str r3, [sp, #0xc]
0088ce3c  10 c0 8d e5                                      str ip, [sp, #0x10]
0088ce40  e6 05 ea eb                                      bl #0x30e5e0
0088ce44  00 00 50 e3                                      cmp r0, #0
0088ce48  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088ce4c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0088ce50  6f 00 00 1a                                      bne #0x88d014
0088ce54  0a 00 5b e1                                      cmp fp, sl
0088ce58  c5 ff ff da                                      ble #0x88cd74
0088ce5c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0088ce60  00 00 5c e3                                      cmp ip, #0
0088ce64  62 00 00 0a                                      beq #0x88cff4
0088ce68  00 c0 a0 e3                                      mov ip, #0
0088ce6c  06 10 a0 e1                                      mov r1, r6
0088ce70  05 20 a0 e1                                      mov r2, r5
0088ce74  08 30 a0 e1                                      mov r3, r8
0088ce78  07 00 a0 e1                                      mov r0, r7
0088ce7c  20 10 8d e8                                      stm sp, {r5, ip}
0088ce80  50 fa ff eb                                      bl #0x88b7c8
0088ce84  0e 00 00 ea                                      b #0x88cec4
0088ce88  cc ff ff aa                                      bge #0x88cdc0
0088ce8c  04 00 56 e1                                      cmp r6, r4
0088ce90  9b 00 00 0a                                      beq #0x88d104
0088ce94  14 00 86 e2                                      add r0, r6, #0x14
0088ce98  08 10 a0 e1                                      mov r1, r8
0088ce9c  10 20 84 e2                                      add r2, r4, #0x10
0088cea0  34 fa ff eb                                      bl #0x88b778
0088cea4  00 00 50 e3                                      cmp r0, #0
0088cea8  93 00 00 1a                                      bne #0x88d0fc
0088ceac  06 10 a0 e1                                      mov r1, r6
0088ceb0  08 20 a0 e1                                      mov r2, r8
0088ceb4  20 00 8d e2                                      add r0, sp, #0x20
0088ceb8  9a fe ff eb                                      bl #0x88c928
0088cebc  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088cec0  00 30 87 e5                                      str r3, [r7]
0088cec4  07 00 a0 e1                                      mov r0, r7
0088cec8  44 d0 8d e2                                      add sp, sp, #0x44
0088cecc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088ced0  10 30 91 e5                                      ldr r3, [r1, #0x10]
0088ced4  00 00 53 e3                                      cmp r3, #0
0088ced8  9f 00 00 0a                                      beq #0x88d15c
0088cedc  14 30 98 e5                                      ldr r3, [r8, #0x14]
0088cee0  24 10 95 e5                                      ldr r1, [r5, #0x24]
0088cee4  10 40 98 e5                                      ldr r4, [r8, #0x10]
0088cee8  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0088ceec  03 00 a0 e1                                      mov r0, r3
0088cef0  04 40 63 e0                                      rsb r4, r3, r4
0088cef4  0a a0 61 e0                                      rsb sl, r1, sl
0088cef8  04 00 5a e1                                      cmp sl, r4
0088cefc  0a 20 a0 b1                                      movlt r2, sl
0088cf00  04 20 a0 a1                                      movge r2, r4
0088cf04  b5 05 ea eb                                      bl #0x30e5e0
0088cf08  00 00 50 e3                                      cmp r0, #0
0088cf0c  03 00 00 1a                                      bne #0x88cf20
0088cf10  0a 00 54 e1                                      cmp r4, sl
0088cf14  d3 ff ff ba                                      blt #0x88ce68
0088cf18  00 00 a0 d3                                      movle r0, #0
0088cf1c  01 00 a0 c3                                      movgt r0, #1
0088cf20  00 00 50 e3                                      cmp r0, #0
0088cf24  cf ff ff ba                                      blt #0x88ce68
0088cf28  14 a0 86 e2                                      add sl, r6, #0x14
0088cf2c  10 10 85 e2                                      add r1, r5, #0x10
0088cf30  0a 00 a0 e1                                      mov r0, sl
0088cf34  08 20 a0 e1                                      mov r2, r8
0088cf38  0e fa ff eb                                      bl #0x88b778
0088cf3c  00 00 50 e3                                      cmp r0, #0
0088cf40  81 00 00 0a                                      beq #0x88d14c
0088cf44  14 30 9d e5                                      ldr r3, [sp, #0x14]
0088cf48  00 c0 93 e5                                      ldr ip, [r3]
0088cf4c  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0088cf50  00 00 54 e3                                      cmp r4, #0
0088cf54  22 00 00 1a                                      bne #0x88cfe4
0088cf58  04 30 9c e5                                      ldr r3, [ip, #4]
0088cf5c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0088cf60  02 00 5c e1                                      cmp ip, r2
0088cf64  0c 40 a0 11                                      movne r4, ip
0088cf68  04 00 00 1a                                      bne #0x88cf80
0088cf6c  03 40 a0 e1                                      mov r4, r3
0088cf70  04 30 93 e5                                      ldr r3, [r3, #4]
0088cf74  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0088cf78  04 00 52 e1                                      cmp r2, r4
0088cf7c  fa ff ff 0a                                      beq #0x88cf6c
0088cf80  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0088cf84  02 00 53 e1                                      cmp r3, r2
0088cf88  03 40 a0 11                                      movne r4, r3
0088cf8c  04 00 56 e1                                      cmp r6, r4
0088cf90  7f 00 00 0a                                      beq #0x88d194
0088cf94  0a 00 a0 e1                                      mov r0, sl
0088cf98  08 10 a0 e1                                      mov r1, r8
0088cf9c  10 20 84 e2                                      add r2, r4, #0x10
0088cfa0  f4 f9 ff eb                                      bl #0x88b778
0088cfa4  00 00 50 e3                                      cmp r0, #0
0088cfa8  60 00 00 0a                                      beq #0x88d130
0088cfac  14 20 9d e5                                      ldr r2, [sp, #0x14]
0088cfb0  00 c0 92 e5                                      ldr ip, [r2]
0088cfb4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0088cfb8  00 00 5e e3                                      cmp lr, #0
0088cfbc  6c 00 00 0a                                      beq #0x88d174
0088cfc0  00 c0 a0 e3                                      mov ip, #0
0088cfc4  06 10 a0 e1                                      mov r1, r6
0088cfc8  04 20 a0 e1                                      mov r2, r4
0088cfcc  08 30 a0 e1                                      mov r3, r8
0088cfd0  07 00 a0 e1                                      mov r0, r7
0088cfd4  10 10 8d e8                                      stm sp, {r4, ip}
0088cfd8  fa f9 ff eb                                      bl #0x88b7c8
0088cfdc  b8 ff ff ea                                      b #0x88cec4
0088cfe0  03 40 a0 e1                                      mov r4, r3
0088cfe4  08 30 94 e5                                      ldr r3, [r4, #8]
0088cfe8  00 00 53 e3                                      cmp r3, #0
0088cfec  fb ff ff 1a                                      bne #0x88cfe0
0088cff0  e5 ff ff ea                                      b #0x88cf8c
0088cff4  06 10 a0 e1                                      mov r1, r6
0088cff8  04 20 a0 e1                                      mov r2, r4
0088cffc  08 30 a0 e1                                      mov r3, r8
0088d000  07 00 a0 e1                                      mov r0, r7
0088d004  00 c0 8d e5                                      str ip, [sp]
0088d008  04 40 8d e5                                      str r4, [sp, #4]
0088d00c  ed f9 ff eb                                      bl #0x88b7c8
0088d010  ab ff ff ea                                      b #0x88cec4
0088d014  56 ff ff aa                                      bge #0x88cd74
0088d018  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0088d01c  00 00 5c e3                                      cmp ip, #0
0088d020  90 ff ff 1a                                      bne #0x88ce68
0088d024  f2 ff ff ea                                      b #0x88cff4
0088d028  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0088d02c  14 10 93 e5                                      ldr r1, [r3, #0x14]
0088d030  10 90 93 e5                                      ldr sb, [r3, #0x10]
0088d034  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0088d038  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088d03c  09 90 61 e0                                      rsb sb, r1, sb
0088d040  0a a0 63 e0                                      rsb sl, r3, sl
0088d044  0a 00 59 e1                                      cmp sb, sl
0088d048  09 20 a0 b1                                      movlt r2, sb
0088d04c  0a 20 a0 a1                                      movge r2, sl
0088d050  03 00 a0 e1                                      mov r0, r3
0088d054  61 05 ea eb                                      bl #0x30e5e0
0088d058  00 00 50 e3                                      cmp r0, #0
0088d05c  03 00 00 1a                                      bne #0x88d070
0088d060  09 00 5a e1                                      cmp sl, sb
0088d064  03 00 00 ba                                      blt #0x88d078
0088d068  00 00 a0 d3                                      movle r0, #0
0088d06c  01 00 a0 c3                                      movgt r0, #1
0088d070  00 00 50 e3                                      cmp r0, #0
0088d074  08 00 00 aa                                      bge #0x88d09c
0088d078  00 c0 a0 e3                                      mov ip, #0
0088d07c  06 10 a0 e1                                      mov r1, r6
0088d080  04 20 a0 e1                                      mov r2, r4
0088d084  08 30 a0 e1                                      mov r3, r8
0088d088  07 00 a0 e1                                      mov r0, r7
0088d08c  00 c0 8d e5                                      str ip, [sp]
0088d090  04 50 8d e5                                      str r5, [sp, #4]
0088d094  cb f9 ff eb                                      bl #0x88b7c8
0088d098  89 ff ff ea                                      b #0x88cec4
0088d09c  06 10 a0 e1                                      mov r1, r6
0088d0a0  08 20 a0 e1                                      mov r2, r8
0088d0a4  28 00 8d e2                                      add r0, sp, #0x28
0088d0a8  1e fe ff eb                                      bl #0x88c928
0088d0ac  28 30 9d e5                                      ldr r3, [sp, #0x28]
0088d0b0  00 30 87 e5                                      str r3, [r7]
0088d0b4  82 ff ff ea                                      b #0x88cec4
0088d0b8  04 20 95 e5                                      ldr r2, [r5, #4]
0088d0bc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0088d0c0  01 00 55 e1                                      cmp r5, r1
0088d0c4  05 40 a0 11                                      movne r4, r5
0088d0c8  04 00 00 0a                                      beq #0x88d0e0
0088d0cc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0088d0d0  01 00 52 e1                                      cmp r2, r1
0088d0d4  02 40 a0 11                                      movne r4, r2
0088d0d8  2d ff ff ea                                      b #0x88cd94
0088d0dc  01 20 a0 e1                                      mov r2, r1
0088d0e0  04 10 92 e5                                      ldr r1, [r2, #4]
0088d0e4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0088d0e8  02 00 50 e1                                      cmp r0, r2
0088d0ec  fa ff ff 0a                                      beq #0x88d0dc
0088d0f0  02 40 a0 e1                                      mov r4, r2
0088d0f4  01 20 a0 e1                                      mov r2, r1
0088d0f8  f3 ff ff ea                                      b #0x88d0cc
0088d0fc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0088d100  00 50 92 e5                                      ldr r5, [r2]
0088d104  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0088d108  00 00 5c e3                                      cmp ip, #0
0088d10c  ab ff ff 1a                                      bne #0x88cfc0
0088d110  06 10 a0 e1                                      mov r1, r6
0088d114  05 20 a0 e1                                      mov r2, r5
0088d118  08 30 a0 e1                                      mov r3, r8
0088d11c  07 00 a0 e1                                      mov r0, r7
0088d120  00 c0 8d e5                                      str ip, [sp]
0088d124  04 50 8d e5                                      str r5, [sp, #4]
0088d128  a6 f9 ff eb                                      bl #0x88b7c8
0088d12c  64 ff ff ea                                      b #0x88cec4
0088d130  06 10 a0 e1                                      mov r1, r6
0088d134  08 20 a0 e1                                      mov r2, r8
0088d138  30 00 8d e2                                      add r0, sp, #0x30
0088d13c  f9 fd ff eb                                      bl #0x88c928
0088d140  30 30 9d e5                                      ldr r3, [sp, #0x30]
0088d144  00 30 87 e5                                      str r3, [r7]
0088d148  5d ff ff ea                                      b #0x88cec4
0088d14c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0088d150  00 30 92 e5                                      ldr r3, [r2]
0088d154  00 30 87 e5                                      str r3, [r7]
0088d158  59 ff ff ea                                      b #0x88cec4
0088d15c  08 20 a0 e1                                      mov r2, r8
0088d160  38 00 8d e2                                      add r0, sp, #0x38
0088d164  ef fd ff eb                                      bl #0x88c928
0088d168  38 30 9d e5                                      ldr r3, [sp, #0x38]
0088d16c  00 30 87 e5                                      str r3, [r7]
0088d170  53 ff ff ea                                      b #0x88cec4
0088d174  06 10 a0 e1                                      mov r1, r6
0088d178  0c 20 a0 e1                                      mov r2, ip
0088d17c  08 30 a0 e1                                      mov r3, r8
0088d180  07 00 a0 e1                                      mov r0, r7
0088d184  00 e0 8d e5                                      str lr, [sp]
0088d188  04 c0 8d e5                                      str ip, [sp, #4]
0088d18c  8d f9 ff eb                                      bl #0x88b7c8
0088d190  4b ff ff ea                                      b #0x88cec4
0088d194  00 e0 a0 e3                                      mov lr, #0
0088d198  06 10 a0 e1                                      mov r1, r6
0088d19c  0c 20 a0 e1                                      mov r2, ip
0088d1a0  08 30 a0 e1                                      mov r3, r8
0088d1a4  07 00 a0 e1                                      mov r0, r7
0088d1a8  00 e0 8d e5                                      str lr, [sp]
0088d1ac  04 c0 8d e5                                      str ip, [sp, #4]
0088d1b0  84 f9 ff eb                                      bl #0x88b7c8
0088d1b4  42 ff ff ea                                      b #0x88cec4
