; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008713b0, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_13StringCompareESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE14_M_create_nodeERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&)
; decoder-mode: arm
008713b0  70 40 2d e9                                      push {r4, r5, r6, lr}
008713b4  2c 00 a0 e3                                      mov r0, #0x2c
008713b8  01 50 a0 e1                                      mov r5, r1
008713bc  00 10 a0 e3                                      mov r1, #0
008713c0  a0 7c ea eb                                      bl #0x310648
008713c4  00 40 a0 e1                                      mov r4, r0
008713c8  10 00 80 e2                                      add r0, r0, #0x10
008713cc  20 00 84 e5                                      str r0, [r4, #0x20]
008713d0  24 00 84 e5                                      str r0, [r4, #0x24]
008713d4  10 20 95 e5                                      ldr r2, [r5, #0x10]
008713d8  14 10 95 e5                                      ldr r1, [r5, #0x14]
008713dc  c3 f7 ff eb                                      bl #0x86f2f0
008713e0  18 20 95 e5                                      ldr r2, [r5, #0x18]
008713e4  00 30 a0 e3                                      mov r3, #0
008713e8  0c 30 84 e5                                      str r3, [r4, #0xc]
008713ec  28 20 84 e5                                      str r2, [r4, #0x28]
008713f0  08 30 84 e5                                      str r3, [r4, #8]
008713f4  04 00 a0 e1                                      mov r0, r4
008713f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00871628, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_13StringCompareESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE9_M_insertEPNS_18_Rb_tree_node_baseERKSB_SJ_SJ_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00871628  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0087162c  02 00 51 e1                                      cmp r1, r2
00871630  0c d0 4d e2                                      sub sp, sp, #0xc
00871634  01 40 a0 e1                                      mov r4, r1
00871638  02 50 a0 e1                                      mov r5, r2
0087163c  00 60 a0 e1                                      mov r6, r0
00871640  23 00 00 0a                                      beq #0x8716d4
00871644  24 20 9d e5                                      ldr r2, [sp, #0x24]
00871648  00 00 52 e3                                      cmp r2, #0
0087164c  12 00 00 0a                                      beq #0x87169c
00871650  03 10 a0 e1                                      mov r1, r3
00871654  04 00 a0 e1                                      mov r0, r4
00871658  54 ff ff eb                                      bl #0x8713b0
0087165c  0c 00 85 e5                                      str r0, [r5, #0xc]
00871660  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00871664  00 70 a0 e1                                      mov r7, r0
00871668  03 00 55 e1                                      cmp r5, r3
0087166c  16 00 00 0a                                      beq #0x8716cc
00871670  07 00 a0 e1                                      mov r0, r7
00871674  04 50 87 e5                                      str r5, [r7, #4]
00871678  04 10 84 e2                                      add r1, r4, #4
0087167c  37 88 ea eb                                      bl #0x313760
00871680  10 30 94 e5                                      ldr r3, [r4, #0x10]
00871684  06 00 a0 e1                                      mov r0, r6
00871688  01 30 83 e2                                      add r3, r3, #1
0087168c  10 30 84 e5                                      str r3, [r4, #0x10]
00871690  00 70 86 e5                                      str r7, [r6]
00871694  0c d0 8d e2                                      add sp, sp, #0xc
00871698  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0087169c  20 20 9d e5                                      ldr r2, [sp, #0x20]
008716a0  00 00 52 e3                                      cmp r2, #0
008716a4  12 00 00 0a                                      beq #0x8716f4
008716a8  03 10 a0 e1                                      mov r1, r3
008716ac  04 00 a0 e1                                      mov r0, r4
008716b0  3e ff ff eb                                      bl #0x8713b0
008716b4  08 00 85 e5                                      str r0, [r5, #8]
008716b8  08 30 94 e5                                      ldr r3, [r4, #8]
008716bc  00 70 a0 e1                                      mov r7, r0
008716c0  03 00 55 e1                                      cmp r5, r3
008716c4  08 00 84 05                                      streq r0, [r4, #8]
008716c8  e8 ff ff ea                                      b #0x871670
008716cc  0c 70 84 e5                                      str r7, [r4, #0xc]
008716d0  e6 ff ff ea                                      b #0x871670
008716d4  03 10 a0 e1                                      mov r1, r3
008716d8  04 00 a0 e1                                      mov r0, r4
008716dc  33 ff ff eb                                      bl #0x8713b0
008716e0  00 70 a0 e1                                      mov r7, r0
008716e4  08 00 84 e5                                      str r0, [r4, #8]
008716e8  04 00 84 e5                                      str r0, [r4, #4]
008716ec  0c 00 84 e5                                      str r0, [r4, #0xc]
008716f0  de ff ff ea                                      b #0x871670
008716f4  14 00 81 e2                                      add r0, r1, #0x14
008716f8  10 20 85 e2                                      add r2, r5, #0x10
008716fc  03 10 a0 e1                                      mov r1, r3
00871700  04 30 8d e5                                      str r3, [sp, #4]
00871704  b3 ff ff eb                                      bl #0x8715d8
00871708  00 00 50 e3                                      cmp r0, #0
0087170c  04 30 9d e5                                      ldr r3, [sp, #4]
00871710  ce ff ff 0a                                      beq #0x871650
00871714  e3 ff ff ea                                      b #0x8716a8

; FUNCTION 0x00871d6c, declared_size=84, range_size=84, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_13StringCompareESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00871d6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00871d70  00 40 51 e2                                      subs r4, r1, #0
00871d74  00 50 a0 e1                                      mov r5, r0
00871d78  0f 00 00 0a                                      beq #0x871dbc
00871d7c  05 00 a0 e1                                      mov r0, r5
00871d80  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00871d84  f8 ff ff eb                                      bl #0x871d6c
00871d88  10 20 84 e2                                      add r2, r4, #0x10
00871d8c  14 30 92 e5                                      ldr r3, [r2, #0x14]
00871d90  08 60 94 e5                                      ldr r6, [r4, #8]
00871d94  02 00 53 e1                                      cmp r3, r2
00871d98  03 00 a0 e1                                      mov r0, r3
00871d9c  02 00 00 0a                                      beq #0x871dac
00871da0  00 00 53 e3                                      cmp r3, #0
00871da4  00 00 00 0a                                      beq #0x871dac
00871da8  a5 79 ea eb                                      bl #0x310444
00871dac  04 00 a0 e1                                      mov r0, r4
00871db0  a3 79 ea eb                                      bl #0x310444
00871db4  00 40 56 e2                                      subs r4, r6, #0
00871db8  ef ff ff 1a                                      bne #0x871d7c
00871dbc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00872e58, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_13StringCompareESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE13insert_uniqueERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&)
; decoder-mode: arm
00872e58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00872e5c  04 50 91 e5                                      ldr r5, [r1, #4]
00872e60  14 d0 4d e2                                      sub sp, sp, #0x14
00872e64  01 90 a0 e1                                      mov sb, r1
00872e68  00 00 55 e3                                      cmp r5, #0
00872e6c  00 40 a0 e1                                      mov r4, r0
00872e70  02 80 a0 e1                                      mov r8, r2
00872e74  38 00 00 0a                                      beq #0x872f5c
00872e78  14 70 92 e5                                      ldr r7, [r2, #0x14]
00872e7c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00872e80  0b a0 67 e0                                      rsb sl, r7, fp
00872e84  04 00 00 ea                                      b #0x872e9c
00872e88  08 30 95 e5                                      ldr r3, [r5, #8]
00872e8c  01 10 a0 e3                                      mov r1, #1
00872e90  00 00 53 e3                                      cmp r3, #0
00872e94  16 00 00 0a                                      beq #0x872ef4
00872e98  03 50 a0 e1                                      mov r5, r3
00872e9c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00872ea0  20 60 95 e5                                      ldr r6, [r5, #0x20]
00872ea4  07 00 a0 e1                                      mov r0, r7
00872ea8  03 10 a0 e1                                      mov r1, r3
00872eac  06 60 63 e0                                      rsb r6, r3, r6
00872eb0  0a 00 56 e1                                      cmp r6, sl
00872eb4  06 20 a0 b1                                      movlt r2, r6
00872eb8  0a 20 a0 a1                                      movge r2, sl
00872ebc  c7 6d ea eb                                      bl #0x30e5e0
00872ec0  00 00 50 e3                                      cmp r0, #0
00872ec4  05 20 a0 e1                                      mov r2, r5
00872ec8  03 00 00 1a                                      bne #0x872edc
00872ecc  06 00 5a e1                                      cmp sl, r6
00872ed0  ec ff ff ba                                      blt #0x872e88
00872ed4  00 00 a0 d3                                      movle r0, #0
00872ed8  01 00 a0 c3                                      movgt r0, #1
00872edc  00 00 50 e3                                      cmp r0, #0
00872ee0  e8 ff ff ba                                      blt #0x872e88
00872ee4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00872ee8  00 10 a0 e3                                      mov r1, #0
00872eec  00 00 53 e3                                      cmp r3, #0
00872ef0  e8 ff ff 1a                                      bne #0x872e98
00872ef4  00 00 51 e3                                      cmp r1, #0
00872ef8  05 a0 a0 01                                      moveq sl, r5
00872efc  17 00 00 1a                                      bne #0x872f60
00872f00  24 00 92 e5                                      ldr r0, [r2, #0x24]
00872f04  20 60 92 e5                                      ldr r6, [r2, #0x20]
00872f08  0b b0 67 e0                                      rsb fp, r7, fp
00872f0c  07 10 a0 e1                                      mov r1, r7
00872f10  06 60 60 e0                                      rsb r6, r0, r6
00872f14  06 00 5b e1                                      cmp fp, r6
00872f18  0b 20 a0 b1                                      movlt r2, fp
00872f1c  06 20 a0 a1                                      movge r2, r6
00872f20  ae 6d ea eb                                      bl #0x30e5e0
00872f24  00 00 50 e3                                      cmp r0, #0
00872f28  03 00 00 1a                                      bne #0x872f3c
00872f2c  0b 00 56 e1                                      cmp r6, fp
00872f30  20 00 00 ba                                      blt #0x872fb8
00872f34  00 00 a0 d3                                      movle r0, #0
00872f38  01 00 a0 c3                                      movgt r0, #1
00872f3c  00 00 50 e3                                      cmp r0, #0
00872f40  00 30 a0 a3                                      movge r3, #0
00872f44  00 a0 84 a5                                      strge sl, [r4]
00872f48  04 30 c4 a5                                      strbge r3, [r4, #4]
00872f4c  19 00 00 ba                                      blt #0x872fb8
00872f50  04 00 a0 e1                                      mov r0, r4
00872f54  14 d0 8d e2                                      add sp, sp, #0x14
00872f58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00872f5c  01 50 a0 e1                                      mov r5, r1
00872f60  08 30 99 e5                                      ldr r3, [sb, #8]
00872f64  03 00 55 e1                                      cmp r5, r3
00872f68  32 00 00 0a                                      beq #0x873038
00872f6c  00 30 d5 e5                                      ldrb r3, [r5]
00872f70  00 00 53 e3                                      cmp r3, #0
00872f74  03 00 00 1a                                      bne #0x872f88
00872f78  04 30 95 e5                                      ldr r3, [r5, #4]
00872f7c  04 30 93 e5                                      ldr r3, [r3, #4]
00872f80  03 00 55 e1                                      cmp r5, r3
00872f84  26 00 00 0a                                      beq #0x873024
00872f88  08 20 95 e5                                      ldr r2, [r5, #8]
00872f8c  00 00 52 e3                                      cmp r2, #0
00872f90  01 00 00 1a                                      bne #0x872f9c
00872f94  14 00 00 ea                                      b #0x872fec
00872f98  03 20 a0 e1                                      mov r2, r3
00872f9c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00872fa0  00 00 53 e3                                      cmp r3, #0
00872fa4  fb ff ff 1a                                      bne #0x872f98
00872fa8  02 a0 a0 e1                                      mov sl, r2
00872fac  14 70 98 e5                                      ldr r7, [r8, #0x14]
00872fb0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00872fb4  d1 ff ff ea                                      b #0x872f00
00872fb8  00 c0 a0 e3                                      mov ip, #0
00872fbc  05 20 a0 e1                                      mov r2, r5
00872fc0  08 30 a0 e1                                      mov r3, r8
00872fc4  09 10 a0 e1                                      mov r1, sb
00872fc8  08 00 8d e2                                      add r0, sp, #8
00872fcc  04 c0 8d e5                                      str ip, [sp, #4]
00872fd0  00 c0 8d e5                                      str ip, [sp]
00872fd4  93 f9 ff eb                                      bl #0x871628
00872fd8  08 30 9d e5                                      ldr r3, [sp, #8]
00872fdc  01 20 a0 e3                                      mov r2, #1
00872fe0  04 20 c4 e5                                      strb r2, [r4, #4]
00872fe4  00 30 84 e5                                      str r3, [r4]
00872fe8  d8 ff ff ea                                      b #0x872f50
00872fec  04 30 95 e5                                      ldr r3, [r5, #4]
00872ff0  08 20 93 e5                                      ldr r2, [r3, #8]
00872ff4  02 00 55 e1                                      cmp r5, r2
00872ff8  01 00 00 0a                                      beq #0x873004
00872ffc  19 00 00 ea                                      b #0x873068
00873000  02 30 a0 e1                                      mov r3, r2
00873004  04 20 93 e5                                      ldr r2, [r3, #4]
00873008  08 10 92 e5                                      ldr r1, [r2, #8]
0087300c  03 00 51 e1                                      cmp r1, r3
00873010  fa ff ff 0a                                      beq #0x873000
00873014  14 70 98 e5                                      ldr r7, [r8, #0x14]
00873018  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0087301c  02 a0 a0 e1                                      mov sl, r2
00873020  b6 ff ff ea                                      b #0x872f00
00873024  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00873028  14 70 98 e5                                      ldr r7, [r8, #0x14]
0087302c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00873030  02 a0 a0 e1                                      mov sl, r2
00873034  b1 ff ff ea                                      b #0x872f00
00873038  05 20 a0 e1                                      mov r2, r5
0087303c  08 30 a0 e1                                      mov r3, r8
00873040  00 c0 a0 e3                                      mov ip, #0
00873044  09 10 a0 e1                                      mov r1, sb
00873048  0c 00 8d e2                                      add r0, sp, #0xc
0087304c  20 10 8d e8                                      stm sp, {r5, ip}
00873050  74 f9 ff eb                                      bl #0x871628
00873054  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00873058  01 20 a0 e3                                      mov r2, #1
0087305c  04 20 c4 e5                                      strb r2, [r4, #4]
00873060  00 30 84 e5                                      str r3, [r4]
00873064  b9 ff ff ea                                      b #0x872f50
00873068  03 20 a0 e1                                      mov r2, r3
0087306c  cd ff ff ea                                      b #0x872fa8

; FUNCTION 0x0087322c, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt4priv8_Rb_treeISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS3_10VoxMemHintE0EEEENS3_13StringCompareESt4pairIKS7_iENS_10_Select1stISB_EENS_11_MapTraitsTISB_EENS4_ISB_LS5_0EEEE13insert_uniqueENS_17_Rb_tree_iteratorISB_SF_EERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::StringCompare, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> >, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> > >, std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int> const&)
; decoder-mode: arm
0087322c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00873230  44 d0 4d e2                                      sub sp, sp, #0x44
00873234  14 20 8d e5                                      str r2, [sp, #0x14]
00873238  00 50 92 e5                                      ldr r5, [r2]
0087323c  08 20 91 e5                                      ldr r2, [r1, #8]
00873240  01 60 a0 e1                                      mov r6, r1
00873244  00 70 a0 e1                                      mov r7, r0
00873248  02 00 55 e1                                      cmp r5, r2
0087324c  03 80 a0 e1                                      mov r8, r3
00873250  7c 00 00 0a                                      beq #0x873448
00873254  01 00 55 e1                                      cmp r5, r1
00873258  d0 00 00 0a                                      beq #0x8735a0
0087325c  00 30 d5 e5                                      ldrb r3, [r5]
00873260  00 00 53 e3                                      cmp r3, #0
00873264  35 00 00 0a                                      beq #0x873340
00873268  08 40 95 e5                                      ldr r4, [r5, #8]
0087326c  00 00 54 e3                                      cmp r4, #0
00873270  01 00 00 1a                                      bne #0x87327c
00873274  39 00 00 ea                                      b #0x873360
00873278  03 40 a0 e1                                      mov r4, r3
0087327c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00873280  00 00 53 e3                                      cmp r3, #0
00873284  fb ff ff 1a                                      bne #0x873278
00873288  24 30 95 e5                                      ldr r3, [r5, #0x24]
0087328c  14 90 98 e5                                      ldr sb, [r8, #0x14]
00873290  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00873294  20 20 95 e5                                      ldr r2, [r5, #0x20]
00873298  03 10 a0 e1                                      mov r1, r3
0087329c  0b b0 69 e0                                      rsb fp, sb, fp
008732a0  02 20 63 e0                                      rsb r2, r3, r2
008732a4  18 20 8d e5                                      str r2, [sp, #0x18]
008732a8  09 00 a0 e1                                      mov r0, sb
008732ac  0b 00 52 e1                                      cmp r2, fp
008732b0  0b 20 a0 a1                                      movge r2, fp
008732b4  0c 30 8d e5                                      str r3, [sp, #0xc]
008732b8  1c 20 8d e5                                      str r2, [sp, #0x1c]
008732bc  c7 6c ea eb                                      bl #0x30e5e0
008732c0  00 00 50 e3                                      cmp r0, #0
008732c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008732c8  05 00 00 1a                                      bne #0x8732e4
008732cc  18 20 9d e5                                      ldr r2, [sp, #0x18]
008732d0  02 00 5b e1                                      cmp fp, r2
008732d4  00 00 e0 b3                                      mvnlt r0, #0
008732d8  01 00 00 ba                                      blt #0x8732e4
008732dc  00 00 a0 d3                                      movle r0, #0
008732e0  01 00 a0 c3                                      movgt r0, #1
008732e4  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
008732e8  28 00 00 1a                                      bne #0x873390
008732ec  0c 40 95 e5                                      ldr r4, [r5, #0xc]
008732f0  00 00 54 e3                                      cmp r4, #0
008732f4  01 00 00 1a                                      bne #0x873300
008732f8  cc 00 00 ea                                      b #0x873630
008732fc  02 40 a0 e1                                      mov r4, r2
00873300  08 20 94 e5                                      ldr r2, [r4, #8]
00873304  00 00 52 e3                                      cmp r2, #0
00873308  fb ff ff 1a                                      bne #0x8732fc
0087330c  00 00 5c e3                                      cmp ip, #0
00873310  43 00 00 1a                                      bne #0x873424
00873314  03 00 a0 e1                                      mov r0, r3
00873318  09 10 a0 e1                                      mov r1, sb
0087331c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00873320  ae 6c ea eb                                      bl #0x30e5e0
00873324  00 00 50 e3                                      cmp r0, #0
00873328  34 00 00 1a                                      bne #0x873400
0087332c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00873330  03 00 5b e1                                      cmp fp, r3
00873334  32 00 00 ca                                      bgt #0x873404
00873338  00 50 87 e5                                      str r5, [r7]
0087333c  3e 00 00 ea                                      b #0x87343c
00873340  04 30 95 e5                                      ldr r3, [r5, #4]
00873344  04 30 93 e5                                      ldr r3, [r3, #4]
00873348  03 00 55 e1                                      cmp r5, r3
0087334c  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00873350  cc ff ff 0a                                      beq #0x873288
00873354  08 40 95 e5                                      ldr r4, [r5, #8]
00873358  00 00 54 e3                                      cmp r4, #0
0087335c  c6 ff ff 1a                                      bne #0x87327c
00873360  04 40 95 e5                                      ldr r4, [r5, #4]
00873364  08 30 94 e5                                      ldr r3, [r4, #8]
00873368  03 00 55 e1                                      cmp r5, r3
0087336c  01 00 00 0a                                      beq #0x873378
00873370  c4 ff ff ea                                      b #0x873288
00873374  03 40 a0 e1                                      mov r4, r3
00873378  04 30 94 e5                                      ldr r3, [r4, #4]
0087337c  08 20 93 e5                                      ldr r2, [r3, #8]
00873380  04 00 52 e1                                      cmp r2, r4
00873384  fa ff ff 0a                                      beq #0x873374
00873388  03 40 a0 e1                                      mov r4, r3
0087338c  bd ff ff ea                                      b #0x873288
00873390  24 20 94 e5                                      ldr r2, [r4, #0x24]
00873394  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00873398  09 10 a0 e1                                      mov r1, sb
0087339c  02 00 a0 e1                                      mov r0, r2
008733a0  0a a0 62 e0                                      rsb sl, r2, sl
008733a4  0a 00 5b e1                                      cmp fp, sl
008733a8  0b 20 a0 b1                                      movlt r2, fp
008733ac  0a 20 a0 a1                                      movge r2, sl
008733b0  0c 30 8d e5                                      str r3, [sp, #0xc]
008733b4  10 c0 8d e5                                      str ip, [sp, #0x10]
008733b8  88 6c ea eb                                      bl #0x30e5e0
008733bc  00 00 50 e3                                      cmp r0, #0
008733c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008733c4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
008733c8  6f 00 00 1a                                      bne #0x87358c
008733cc  0a 00 5b e1                                      cmp fp, sl
008733d0  c5 ff ff da                                      ble #0x8732ec
008733d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
008733d8  00 00 5c e3                                      cmp ip, #0
008733dc  62 00 00 0a                                      beq #0x87356c
008733e0  00 c0 a0 e3                                      mov ip, #0
008733e4  06 10 a0 e1                                      mov r1, r6
008733e8  05 20 a0 e1                                      mov r2, r5
008733ec  08 30 a0 e1                                      mov r3, r8
008733f0  07 00 a0 e1                                      mov r0, r7
008733f4  20 10 8d e8                                      stm sp, {r5, ip}
008733f8  8a f8 ff eb                                      bl #0x871628
008733fc  0e 00 00 ea                                      b #0x87343c
00873400  cc ff ff aa                                      bge #0x873338
00873404  04 00 56 e1                                      cmp r6, r4
00873408  9b 00 00 0a                                      beq #0x87367c
0087340c  14 00 86 e2                                      add r0, r6, #0x14
00873410  08 10 a0 e1                                      mov r1, r8
00873414  10 20 84 e2                                      add r2, r4, #0x10
00873418  6e f8 ff eb                                      bl #0x8715d8
0087341c  00 00 50 e3                                      cmp r0, #0
00873420  93 00 00 1a                                      bne #0x873674
00873424  06 10 a0 e1                                      mov r1, r6
00873428  08 20 a0 e1                                      mov r2, r8
0087342c  20 00 8d e2                                      add r0, sp, #0x20
00873430  88 fe ff eb                                      bl #0x872e58
00873434  20 30 9d e5                                      ldr r3, [sp, #0x20]
00873438  00 30 87 e5                                      str r3, [r7]
0087343c  07 00 a0 e1                                      mov r0, r7
00873440  44 d0 8d e2                                      add sp, sp, #0x44
00873444  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00873448  10 30 91 e5                                      ldr r3, [r1, #0x10]
0087344c  00 00 53 e3                                      cmp r3, #0
00873450  9f 00 00 0a                                      beq #0x8736d4
00873454  14 30 98 e5                                      ldr r3, [r8, #0x14]
00873458  24 10 95 e5                                      ldr r1, [r5, #0x24]
0087345c  10 40 98 e5                                      ldr r4, [r8, #0x10]
00873460  20 a0 95 e5                                      ldr sl, [r5, #0x20]
00873464  03 00 a0 e1                                      mov r0, r3
00873468  04 40 63 e0                                      rsb r4, r3, r4
0087346c  0a a0 61 e0                                      rsb sl, r1, sl
00873470  04 00 5a e1                                      cmp sl, r4
00873474  0a 20 a0 b1                                      movlt r2, sl
00873478  04 20 a0 a1                                      movge r2, r4
0087347c  57 6c ea eb                                      bl #0x30e5e0
00873480  00 00 50 e3                                      cmp r0, #0
00873484  03 00 00 1a                                      bne #0x873498
00873488  0a 00 54 e1                                      cmp r4, sl
0087348c  d3 ff ff ba                                      blt #0x8733e0
00873490  00 00 a0 d3                                      movle r0, #0
00873494  01 00 a0 c3                                      movgt r0, #1
00873498  00 00 50 e3                                      cmp r0, #0
0087349c  cf ff ff ba                                      blt #0x8733e0
008734a0  14 a0 86 e2                                      add sl, r6, #0x14
008734a4  10 10 85 e2                                      add r1, r5, #0x10
008734a8  0a 00 a0 e1                                      mov r0, sl
008734ac  08 20 a0 e1                                      mov r2, r8
008734b0  48 f8 ff eb                                      bl #0x8715d8
008734b4  00 00 50 e3                                      cmp r0, #0
008734b8  81 00 00 0a                                      beq #0x8736c4
008734bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
008734c0  00 c0 93 e5                                      ldr ip, [r3]
008734c4  0c 40 9c e5                                      ldr r4, [ip, #0xc]
008734c8  00 00 54 e3                                      cmp r4, #0
008734cc  22 00 00 1a                                      bne #0x87355c
008734d0  04 30 9c e5                                      ldr r3, [ip, #4]
008734d4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008734d8  02 00 5c e1                                      cmp ip, r2
008734dc  0c 40 a0 11                                      movne r4, ip
008734e0  04 00 00 1a                                      bne #0x8734f8
008734e4  03 40 a0 e1                                      mov r4, r3
008734e8  04 30 93 e5                                      ldr r3, [r3, #4]
008734ec  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008734f0  04 00 52 e1                                      cmp r2, r4
008734f4  fa ff ff 0a                                      beq #0x8734e4
008734f8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008734fc  02 00 53 e1                                      cmp r3, r2
00873500  03 40 a0 11                                      movne r4, r3
00873504  04 00 56 e1                                      cmp r6, r4
00873508  7f 00 00 0a                                      beq #0x87370c
0087350c  0a 00 a0 e1                                      mov r0, sl
00873510  08 10 a0 e1                                      mov r1, r8
00873514  10 20 84 e2                                      add r2, r4, #0x10
00873518  2e f8 ff eb                                      bl #0x8715d8
0087351c  00 00 50 e3                                      cmp r0, #0
00873520  60 00 00 0a                                      beq #0x8736a8
00873524  14 20 9d e5                                      ldr r2, [sp, #0x14]
00873528  00 c0 92 e5                                      ldr ip, [r2]
0087352c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00873530  00 00 5e e3                                      cmp lr, #0
00873534  6c 00 00 0a                                      beq #0x8736ec
00873538  00 c0 a0 e3                                      mov ip, #0
0087353c  06 10 a0 e1                                      mov r1, r6
00873540  04 20 a0 e1                                      mov r2, r4
00873544  08 30 a0 e1                                      mov r3, r8
00873548  07 00 a0 e1                                      mov r0, r7
0087354c  10 10 8d e8                                      stm sp, {r4, ip}
00873550  34 f8 ff eb                                      bl #0x871628
00873554  b8 ff ff ea                                      b #0x87343c
00873558  03 40 a0 e1                                      mov r4, r3
0087355c  08 30 94 e5                                      ldr r3, [r4, #8]
00873560  00 00 53 e3                                      cmp r3, #0
00873564  fb ff ff 1a                                      bne #0x873558
00873568  e5 ff ff ea                                      b #0x873504
0087356c  06 10 a0 e1                                      mov r1, r6
00873570  04 20 a0 e1                                      mov r2, r4
00873574  08 30 a0 e1                                      mov r3, r8
00873578  07 00 a0 e1                                      mov r0, r7
0087357c  00 c0 8d e5                                      str ip, [sp]
00873580  04 40 8d e5                                      str r4, [sp, #4]
00873584  27 f8 ff eb                                      bl #0x871628
00873588  ab ff ff ea                                      b #0x87343c
0087358c  56 ff ff aa                                      bge #0x8732ec
00873590  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00873594  00 00 5c e3                                      cmp ip, #0
00873598  90 ff ff 1a                                      bne #0x8733e0
0087359c  f2 ff ff ea                                      b #0x87356c
008735a0  0c 40 95 e5                                      ldr r4, [r5, #0xc]
008735a4  14 10 93 e5                                      ldr r1, [r3, #0x14]
008735a8  10 90 93 e5                                      ldr sb, [r3, #0x10]
008735ac  20 a0 94 e5                                      ldr sl, [r4, #0x20]
008735b0  24 30 94 e5                                      ldr r3, [r4, #0x24]
008735b4  09 90 61 e0                                      rsb sb, r1, sb
008735b8  0a a0 63 e0                                      rsb sl, r3, sl
008735bc  0a 00 59 e1                                      cmp sb, sl
008735c0  09 20 a0 b1                                      movlt r2, sb
008735c4  0a 20 a0 a1                                      movge r2, sl
008735c8  03 00 a0 e1                                      mov r0, r3
008735cc  03 6c ea eb                                      bl #0x30e5e0
008735d0  00 00 50 e3                                      cmp r0, #0
008735d4  03 00 00 1a                                      bne #0x8735e8
008735d8  09 00 5a e1                                      cmp sl, sb
008735dc  03 00 00 ba                                      blt #0x8735f0
008735e0  00 00 a0 d3                                      movle r0, #0
008735e4  01 00 a0 c3                                      movgt r0, #1
008735e8  00 00 50 e3                                      cmp r0, #0
008735ec  08 00 00 aa                                      bge #0x873614
008735f0  00 c0 a0 e3                                      mov ip, #0
008735f4  06 10 a0 e1                                      mov r1, r6
008735f8  04 20 a0 e1                                      mov r2, r4
008735fc  08 30 a0 e1                                      mov r3, r8
00873600  07 00 a0 e1                                      mov r0, r7
00873604  00 c0 8d e5                                      str ip, [sp]
00873608  04 50 8d e5                                      str r5, [sp, #4]
0087360c  05 f8 ff eb                                      bl #0x871628
00873610  89 ff ff ea                                      b #0x87343c
00873614  06 10 a0 e1                                      mov r1, r6
00873618  08 20 a0 e1                                      mov r2, r8
0087361c  28 00 8d e2                                      add r0, sp, #0x28
00873620  0c fe ff eb                                      bl #0x872e58
00873624  28 30 9d e5                                      ldr r3, [sp, #0x28]
00873628  00 30 87 e5                                      str r3, [r7]
0087362c  82 ff ff ea                                      b #0x87343c
00873630  04 20 95 e5                                      ldr r2, [r5, #4]
00873634  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00873638  01 00 55 e1                                      cmp r5, r1
0087363c  05 40 a0 11                                      movne r4, r5
00873640  04 00 00 0a                                      beq #0x873658
00873644  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00873648  01 00 52 e1                                      cmp r2, r1
0087364c  02 40 a0 11                                      movne r4, r2
00873650  2d ff ff ea                                      b #0x87330c
00873654  01 20 a0 e1                                      mov r2, r1
00873658  04 10 92 e5                                      ldr r1, [r2, #4]
0087365c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00873660  02 00 50 e1                                      cmp r0, r2
00873664  fa ff ff 0a                                      beq #0x873654
00873668  02 40 a0 e1                                      mov r4, r2
0087366c  01 20 a0 e1                                      mov r2, r1
00873670  f3 ff ff ea                                      b #0x873644
00873674  14 20 9d e5                                      ldr r2, [sp, #0x14]
00873678  00 50 92 e5                                      ldr r5, [r2]
0087367c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00873680  00 00 5c e3                                      cmp ip, #0
00873684  ab ff ff 1a                                      bne #0x873538
00873688  06 10 a0 e1                                      mov r1, r6
0087368c  05 20 a0 e1                                      mov r2, r5
00873690  08 30 a0 e1                                      mov r3, r8
00873694  07 00 a0 e1                                      mov r0, r7
00873698  00 c0 8d e5                                      str ip, [sp]
0087369c  04 50 8d e5                                      str r5, [sp, #4]
008736a0  e0 f7 ff eb                                      bl #0x871628
008736a4  64 ff ff ea                                      b #0x87343c
008736a8  06 10 a0 e1                                      mov r1, r6
008736ac  08 20 a0 e1                                      mov r2, r8
008736b0  30 00 8d e2                                      add r0, sp, #0x30
008736b4  e7 fd ff eb                                      bl #0x872e58
008736b8  30 30 9d e5                                      ldr r3, [sp, #0x30]
008736bc  00 30 87 e5                                      str r3, [r7]
008736c0  5d ff ff ea                                      b #0x87343c
008736c4  14 20 9d e5                                      ldr r2, [sp, #0x14]
008736c8  00 30 92 e5                                      ldr r3, [r2]
008736cc  00 30 87 e5                                      str r3, [r7]
008736d0  59 ff ff ea                                      b #0x87343c
008736d4  08 20 a0 e1                                      mov r2, r8
008736d8  38 00 8d e2                                      add r0, sp, #0x38
008736dc  dd fd ff eb                                      bl #0x872e58
008736e0  38 30 9d e5                                      ldr r3, [sp, #0x38]
008736e4  00 30 87 e5                                      str r3, [r7]
008736e8  53 ff ff ea                                      b #0x87343c
008736ec  06 10 a0 e1                                      mov r1, r6
008736f0  0c 20 a0 e1                                      mov r2, ip
008736f4  08 30 a0 e1                                      mov r3, r8
008736f8  07 00 a0 e1                                      mov r0, r7
008736fc  00 e0 8d e5                                      str lr, [sp]
00873700  04 c0 8d e5                                      str ip, [sp, #4]
00873704  c7 f7 ff eb                                      bl #0x871628
00873708  4b ff ff ea                                      b #0x87343c
0087370c  00 e0 a0 e3                                      mov lr, #0
00873710  06 10 a0 e1                                      mov r1, r6
00873714  0c 20 a0 e1                                      mov r2, ip
00873718  08 30 a0 e1                                      mov r3, r8
0087371c  07 00 a0 e1                                      mov r0, r7
00873720  00 e0 8d e5                                      str lr, [sp]
00873724  04 c0 8d e5                                      str ip, [sp, #4]
00873728  be f7 ff eb                                      bl #0x871628
0087372c  42 ff ff ea                                      b #0x87343c
