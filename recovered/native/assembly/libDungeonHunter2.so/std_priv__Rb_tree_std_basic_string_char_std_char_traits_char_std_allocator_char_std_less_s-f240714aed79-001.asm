; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313dbc, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00313dbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00313dc0  00 40 51 e2                                      subs r4, r1, #0
00313dc4  00 60 a0 e1                                      mov r6, r0
00313dc8  0a 00 00 0a                                      beq #0x313df8
00313dcc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00313dd0  06 00 a0 e1                                      mov r0, r6
00313dd4  f8 ff ff eb                                      bl #0x313dbc
00313dd8  08 50 94 e5                                      ldr r5, [r4, #8]
00313ddc  10 00 84 e2                                      add r0, r4, #0x10
00313de0  f1 fe ff eb                                      bl #0x3139ac
00313de4  04 00 a0 e1                                      mov r0, r4
00313de8  40 10 a0 e3                                      mov r1, #0x40
00313dec  43 d4 0f eb                                      bl #0x708f00
00313df0  00 40 55 e2                                      subs r4, r5, #0
00313df4  f4 ff ff 1a                                      bne #0x313dcc
00313df8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00314da0, declared_size=104, range_size=104, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> const&)
; decoder-mode: arm
00314da0  30 40 2d e9                                      push {r4, r5, lr}
00314da4  0c d0 4d e2                                      sub sp, sp, #0xc
00314da8  40 30 a0 e3                                      mov r3, #0x40
00314dac  08 00 8d e2                                      add r0, sp, #8
00314db0  04 30 20 e5                                      str r3, [r0, #-4]!
00314db4  01 40 a0 e1                                      mov r4, r1
00314db8  40 d0 0f eb                                      bl #0x708ec0
00314dbc  00 50 a0 e1                                      mov r5, r0
00314dc0  10 00 80 e2                                      add r0, r0, #0x10
00314dc4  20 00 85 e5                                      str r0, [r5, #0x20]
00314dc8  24 00 85 e5                                      str r0, [r5, #0x24]
00314dcc  14 10 94 e5                                      ldr r1, [r4, #0x14]
00314dd0  10 20 94 e5                                      ldr r2, [r4, #0x10]
00314dd4  43 f2 ff eb                                      bl #0x3116e8
00314dd8  18 40 84 e2                                      add r4, r4, #0x18
00314ddc  28 c0 85 e2                                      add ip, r5, #0x28
00314de0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00314de4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00314de8  03 00 94 e8                                      ldm r4, {r0, r1}
00314dec  00 30 a0 e3                                      mov r3, #0
00314df0  03 00 8c e8                                      stm ip, {r0, r1}
00314df4  05 00 a0 e1                                      mov r0, r5
00314df8  0c 30 85 e5                                      str r3, [r5, #0xc]
00314dfc  08 30 85 e5                                      str r3, [r5, #8]
00314e00  0c d0 8d e2                                      add sp, sp, #0xc
00314e04  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00314e08, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00314e08  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00314e0c  02 00 51 e1                                      cmp r1, r2
00314e10  0c d0 4d e2                                      sub sp, sp, #0xc
00314e14  01 40 a0 e1                                      mov r4, r1
00314e18  02 50 a0 e1                                      mov r5, r2
00314e1c  00 60 a0 e1                                      mov r6, r0
00314e20  23 00 00 0a                                      beq #0x314eb4
00314e24  24 20 9d e5                                      ldr r2, [sp, #0x24]
00314e28  00 00 52 e3                                      cmp r2, #0
00314e2c  12 00 00 0a                                      beq #0x314e7c
00314e30  03 10 a0 e1                                      mov r1, r3
00314e34  04 00 a0 e1                                      mov r0, r4
00314e38  d8 ff ff eb                                      bl #0x314da0
00314e3c  0c 00 85 e5                                      str r0, [r5, #0xc]
00314e40  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00314e44  00 70 a0 e1                                      mov r7, r0
00314e48  03 00 55 e1                                      cmp r5, r3
00314e4c  16 00 00 0a                                      beq #0x314eac
00314e50  07 00 a0 e1                                      mov r0, r7
00314e54  04 50 87 e5                                      str r5, [r7, #4]
00314e58  04 10 84 e2                                      add r1, r4, #4
00314e5c  3f fa ff eb                                      bl #0x313760
00314e60  10 30 94 e5                                      ldr r3, [r4, #0x10]
00314e64  06 00 a0 e1                                      mov r0, r6
00314e68  01 30 83 e2                                      add r3, r3, #1
00314e6c  10 30 84 e5                                      str r3, [r4, #0x10]
00314e70  00 70 86 e5                                      str r7, [r6]
00314e74  0c d0 8d e2                                      add sp, sp, #0xc
00314e78  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00314e7c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00314e80  00 00 52 e3                                      cmp r2, #0
00314e84  12 00 00 0a                                      beq #0x314ed4
00314e88  03 10 a0 e1                                      mov r1, r3
00314e8c  04 00 a0 e1                                      mov r0, r4
00314e90  c2 ff ff eb                                      bl #0x314da0
00314e94  08 00 85 e5                                      str r0, [r5, #8]
00314e98  08 30 94 e5                                      ldr r3, [r4, #8]
00314e9c  00 70 a0 e1                                      mov r7, r0
00314ea0  03 00 55 e1                                      cmp r5, r3
00314ea4  08 00 84 05                                      streq r0, [r4, #8]
00314ea8  e8 ff ff ea                                      b #0x314e50
00314eac  0c 70 84 e5                                      str r7, [r4, #0xc]
00314eb0  e6 ff ff ea                                      b #0x314e50
00314eb4  03 10 a0 e1                                      mov r1, r3
00314eb8  04 00 a0 e1                                      mov r0, r4
00314ebc  b7 ff ff eb                                      bl #0x314da0
00314ec0  00 70 a0 e1                                      mov r7, r0
00314ec4  08 00 84 e5                                      str r0, [r4, #8]
00314ec8  04 00 84 e5                                      str r0, [r4, #4]
00314ecc  0c 00 84 e5                                      str r0, [r4, #0xc]
00314ed0  de ff ff ea                                      b #0x314e50
00314ed4  14 00 81 e2                                      add r0, r1, #0x14
00314ed8  10 20 85 e2                                      add r2, r5, #0x10
00314edc  03 10 a0 e1                                      mov r1, r3
00314ee0  04 30 8d e5                                      str r3, [sp, #4]
00314ee4  43 fb ff eb                                      bl #0x313bf8
00314ee8  00 00 50 e3                                      cmp r0, #0
00314eec  04 30 9d e5                                      ldr r3, [sp, #4]
00314ef0  ce ff ff 0a                                      beq #0x314e30
00314ef4  e3 ff ff ea                                      b #0x314e88

; FUNCTION 0x00314ef8, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> const&)
; decoder-mode: arm
00314ef8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00314efc  04 50 91 e5                                      ldr r5, [r1, #4]
00314f00  14 d0 4d e2                                      sub sp, sp, #0x14
00314f04  01 90 a0 e1                                      mov sb, r1
00314f08  00 00 55 e3                                      cmp r5, #0
00314f0c  00 40 a0 e1                                      mov r4, r0
00314f10  02 80 a0 e1                                      mov r8, r2
00314f14  38 00 00 0a                                      beq #0x314ffc
00314f18  14 70 92 e5                                      ldr r7, [r2, #0x14]
00314f1c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00314f20  0b a0 67 e0                                      rsb sl, r7, fp
00314f24  04 00 00 ea                                      b #0x314f3c
00314f28  08 30 95 e5                                      ldr r3, [r5, #8]
00314f2c  01 10 a0 e3                                      mov r1, #1
00314f30  00 00 53 e3                                      cmp r3, #0
00314f34  16 00 00 0a                                      beq #0x314f94
00314f38  03 50 a0 e1                                      mov r5, r3
00314f3c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00314f40  20 60 95 e5                                      ldr r6, [r5, #0x20]
00314f44  07 00 a0 e1                                      mov r0, r7
00314f48  03 10 a0 e1                                      mov r1, r3
00314f4c  06 60 63 e0                                      rsb r6, r3, r6
00314f50  0a 00 56 e1                                      cmp r6, sl
00314f54  06 20 a0 b1                                      movlt r2, r6
00314f58  0a 20 a0 a1                                      movge r2, sl
00314f5c  9f e5 ff eb                                      bl #0x30e5e0
00314f60  00 00 50 e3                                      cmp r0, #0
00314f64  05 20 a0 e1                                      mov r2, r5
00314f68  03 00 00 1a                                      bne #0x314f7c
00314f6c  06 00 5a e1                                      cmp sl, r6
00314f70  ec ff ff ba                                      blt #0x314f28
00314f74  00 00 a0 d3                                      movle r0, #0
00314f78  01 00 a0 c3                                      movgt r0, #1
00314f7c  00 00 50 e3                                      cmp r0, #0
00314f80  e8 ff ff ba                                      blt #0x314f28
00314f84  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00314f88  00 10 a0 e3                                      mov r1, #0
00314f8c  00 00 53 e3                                      cmp r3, #0
00314f90  e8 ff ff 1a                                      bne #0x314f38
00314f94  00 00 51 e3                                      cmp r1, #0
00314f98  05 a0 a0 01                                      moveq sl, r5
00314f9c  17 00 00 1a                                      bne #0x315000
00314fa0  24 00 92 e5                                      ldr r0, [r2, #0x24]
00314fa4  20 60 92 e5                                      ldr r6, [r2, #0x20]
00314fa8  0b b0 67 e0                                      rsb fp, r7, fp
00314fac  07 10 a0 e1                                      mov r1, r7
00314fb0  06 60 60 e0                                      rsb r6, r0, r6
00314fb4  06 00 5b e1                                      cmp fp, r6
00314fb8  0b 20 a0 b1                                      movlt r2, fp
00314fbc  06 20 a0 a1                                      movge r2, r6
00314fc0  86 e5 ff eb                                      bl #0x30e5e0
00314fc4  00 00 50 e3                                      cmp r0, #0
00314fc8  03 00 00 1a                                      bne #0x314fdc
00314fcc  0b 00 56 e1                                      cmp r6, fp
00314fd0  20 00 00 ba                                      blt #0x315058
00314fd4  00 00 a0 d3                                      movle r0, #0
00314fd8  01 00 a0 c3                                      movgt r0, #1
00314fdc  00 00 50 e3                                      cmp r0, #0
00314fe0  00 30 a0 a3                                      movge r3, #0
00314fe4  00 a0 84 a5                                      strge sl, [r4]
00314fe8  04 30 c4 a5                                      strbge r3, [r4, #4]
00314fec  19 00 00 ba                                      blt #0x315058
00314ff0  04 00 a0 e1                                      mov r0, r4
00314ff4  14 d0 8d e2                                      add sp, sp, #0x14
00314ff8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00314ffc  01 50 a0 e1                                      mov r5, r1
00315000  08 30 99 e5                                      ldr r3, [sb, #8]
00315004  03 00 55 e1                                      cmp r5, r3
00315008  32 00 00 0a                                      beq #0x3150d8
0031500c  00 30 d5 e5                                      ldrb r3, [r5]
00315010  00 00 53 e3                                      cmp r3, #0
00315014  03 00 00 1a                                      bne #0x315028
00315018  04 30 95 e5                                      ldr r3, [r5, #4]
0031501c  04 30 93 e5                                      ldr r3, [r3, #4]
00315020  03 00 55 e1                                      cmp r5, r3
00315024  26 00 00 0a                                      beq #0x3150c4
00315028  08 20 95 e5                                      ldr r2, [r5, #8]
0031502c  00 00 52 e3                                      cmp r2, #0
00315030  01 00 00 1a                                      bne #0x31503c
00315034  14 00 00 ea                                      b #0x31508c
00315038  03 20 a0 e1                                      mov r2, r3
0031503c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00315040  00 00 53 e3                                      cmp r3, #0
00315044  fb ff ff 1a                                      bne #0x315038
00315048  02 a0 a0 e1                                      mov sl, r2
0031504c  14 70 98 e5                                      ldr r7, [r8, #0x14]
00315050  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00315054  d1 ff ff ea                                      b #0x314fa0
00315058  00 c0 a0 e3                                      mov ip, #0
0031505c  05 20 a0 e1                                      mov r2, r5
00315060  08 30 a0 e1                                      mov r3, r8
00315064  09 10 a0 e1                                      mov r1, sb
00315068  08 00 8d e2                                      add r0, sp, #8
0031506c  04 c0 8d e5                                      str ip, [sp, #4]
00315070  00 c0 8d e5                                      str ip, [sp]
00315074  63 ff ff eb                                      bl #0x314e08
00315078  08 30 9d e5                                      ldr r3, [sp, #8]
0031507c  01 20 a0 e3                                      mov r2, #1
00315080  04 20 c4 e5                                      strb r2, [r4, #4]
00315084  00 30 84 e5                                      str r3, [r4]
00315088  d8 ff ff ea                                      b #0x314ff0
0031508c  04 30 95 e5                                      ldr r3, [r5, #4]
00315090  08 20 93 e5                                      ldr r2, [r3, #8]
00315094  02 00 55 e1                                      cmp r5, r2
00315098  01 00 00 0a                                      beq #0x3150a4
0031509c  19 00 00 ea                                      b #0x315108
003150a0  02 30 a0 e1                                      mov r3, r2
003150a4  04 20 93 e5                                      ldr r2, [r3, #4]
003150a8  08 10 92 e5                                      ldr r1, [r2, #8]
003150ac  03 00 51 e1                                      cmp r1, r3
003150b0  fa ff ff 0a                                      beq #0x3150a0
003150b4  14 70 98 e5                                      ldr r7, [r8, #0x14]
003150b8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003150bc  02 a0 a0 e1                                      mov sl, r2
003150c0  b6 ff ff ea                                      b #0x314fa0
003150c4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
003150c8  14 70 98 e5                                      ldr r7, [r8, #0x14]
003150cc  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003150d0  02 a0 a0 e1                                      mov sl, r2
003150d4  b1 ff ff ea                                      b #0x314fa0
003150d8  05 20 a0 e1                                      mov r2, r5
003150dc  08 30 a0 e1                                      mov r3, r8
003150e0  00 c0 a0 e3                                      mov ip, #0
003150e4  09 10 a0 e1                                      mov r1, sb
003150e8  0c 00 8d e2                                      add r0, sp, #0xc
003150ec  20 10 8d e8                                      stm sp, {r5, ip}
003150f0  44 ff ff eb                                      bl #0x314e08
003150f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003150f8  01 20 a0 e3                                      mov r2, #1
003150fc  04 20 c4 e5                                      strb r2, [r4, #4]
00315100  00 30 84 e5                                      str r3, [r4]
00315104  b9 ff ff ea                                      b #0x314ff0
00315108  03 20 a0 e1                                      mov r2, r3
0031510c  cd ff ff ea                                      b #0x315048

; FUNCTION 0x003151ec, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN8Savegame11SectionInfoEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> const&)
; decoder-mode: arm
003151ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003151f0  44 d0 4d e2                                      sub sp, sp, #0x44
003151f4  14 20 8d e5                                      str r2, [sp, #0x14]
003151f8  00 50 92 e5                                      ldr r5, [r2]
003151fc  08 20 91 e5                                      ldr r2, [r1, #8]
00315200  01 60 a0 e1                                      mov r6, r1
00315204  00 70 a0 e1                                      mov r7, r0
00315208  02 00 55 e1                                      cmp r5, r2
0031520c  03 80 a0 e1                                      mov r8, r3
00315210  7c 00 00 0a                                      beq #0x315408
00315214  01 00 55 e1                                      cmp r5, r1
00315218  d0 00 00 0a                                      beq #0x315560
0031521c  00 30 d5 e5                                      ldrb r3, [r5]
00315220  00 00 53 e3                                      cmp r3, #0
00315224  35 00 00 0a                                      beq #0x315300
00315228  08 40 95 e5                                      ldr r4, [r5, #8]
0031522c  00 00 54 e3                                      cmp r4, #0
00315230  01 00 00 1a                                      bne #0x31523c
00315234  39 00 00 ea                                      b #0x315320
00315238  03 40 a0 e1                                      mov r4, r3
0031523c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00315240  00 00 53 e3                                      cmp r3, #0
00315244  fb ff ff 1a                                      bne #0x315238
00315248  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031524c  14 90 98 e5                                      ldr sb, [r8, #0x14]
00315250  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00315254  20 20 95 e5                                      ldr r2, [r5, #0x20]
00315258  03 10 a0 e1                                      mov r1, r3
0031525c  0b b0 69 e0                                      rsb fp, sb, fp
00315260  02 20 63 e0                                      rsb r2, r3, r2
00315264  18 20 8d e5                                      str r2, [sp, #0x18]
00315268  09 00 a0 e1                                      mov r0, sb
0031526c  0b 00 52 e1                                      cmp r2, fp
00315270  0b 20 a0 a1                                      movge r2, fp
00315274  0c 30 8d e5                                      str r3, [sp, #0xc]
00315278  1c 20 8d e5                                      str r2, [sp, #0x1c]
0031527c  d7 e4 ff eb                                      bl #0x30e5e0
00315280  00 00 50 e3                                      cmp r0, #0
00315284  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00315288  05 00 00 1a                                      bne #0x3152a4
0031528c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00315290  02 00 5b e1                                      cmp fp, r2
00315294  00 00 e0 b3                                      mvnlt r0, #0
00315298  01 00 00 ba                                      blt #0x3152a4
0031529c  00 00 a0 d3                                      movle r0, #0
003152a0  01 00 a0 c3                                      movgt r0, #1
003152a4  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
003152a8  28 00 00 1a                                      bne #0x315350
003152ac  0c 40 95 e5                                      ldr r4, [r5, #0xc]
003152b0  00 00 54 e3                                      cmp r4, #0
003152b4  01 00 00 1a                                      bne #0x3152c0
003152b8  cc 00 00 ea                                      b #0x3155f0
003152bc  02 40 a0 e1                                      mov r4, r2
003152c0  08 20 94 e5                                      ldr r2, [r4, #8]
003152c4  00 00 52 e3                                      cmp r2, #0
003152c8  fb ff ff 1a                                      bne #0x3152bc
003152cc  00 00 5c e3                                      cmp ip, #0
003152d0  43 00 00 1a                                      bne #0x3153e4
003152d4  03 00 a0 e1                                      mov r0, r3
003152d8  09 10 a0 e1                                      mov r1, sb
003152dc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003152e0  be e4 ff eb                                      bl #0x30e5e0
003152e4  00 00 50 e3                                      cmp r0, #0
003152e8  34 00 00 1a                                      bne #0x3153c0
003152ec  18 30 9d e5                                      ldr r3, [sp, #0x18]
003152f0  03 00 5b e1                                      cmp fp, r3
003152f4  32 00 00 ca                                      bgt #0x3153c4
003152f8  00 50 87 e5                                      str r5, [r7]
003152fc  3e 00 00 ea                                      b #0x3153fc
00315300  04 30 95 e5                                      ldr r3, [r5, #4]
00315304  04 30 93 e5                                      ldr r3, [r3, #4]
00315308  03 00 55 e1                                      cmp r5, r3
0031530c  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00315310  cc ff ff 0a                                      beq #0x315248
00315314  08 40 95 e5                                      ldr r4, [r5, #8]
00315318  00 00 54 e3                                      cmp r4, #0
0031531c  c6 ff ff 1a                                      bne #0x31523c
00315320  04 40 95 e5                                      ldr r4, [r5, #4]
00315324  08 30 94 e5                                      ldr r3, [r4, #8]
00315328  03 00 55 e1                                      cmp r5, r3
0031532c  01 00 00 0a                                      beq #0x315338
00315330  c4 ff ff ea                                      b #0x315248
00315334  03 40 a0 e1                                      mov r4, r3
00315338  04 30 94 e5                                      ldr r3, [r4, #4]
0031533c  08 20 93 e5                                      ldr r2, [r3, #8]
00315340  04 00 52 e1                                      cmp r2, r4
00315344  fa ff ff 0a                                      beq #0x315334
00315348  03 40 a0 e1                                      mov r4, r3
0031534c  bd ff ff ea                                      b #0x315248
00315350  24 20 94 e5                                      ldr r2, [r4, #0x24]
00315354  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00315358  09 10 a0 e1                                      mov r1, sb
0031535c  02 00 a0 e1                                      mov r0, r2
00315360  0a a0 62 e0                                      rsb sl, r2, sl
00315364  0a 00 5b e1                                      cmp fp, sl
00315368  0b 20 a0 b1                                      movlt r2, fp
0031536c  0a 20 a0 a1                                      movge r2, sl
00315370  0c 30 8d e5                                      str r3, [sp, #0xc]
00315374  10 c0 8d e5                                      str ip, [sp, #0x10]
00315378  98 e4 ff eb                                      bl #0x30e5e0
0031537c  00 00 50 e3                                      cmp r0, #0
00315380  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00315384  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00315388  6f 00 00 1a                                      bne #0x31554c
0031538c  0a 00 5b e1                                      cmp fp, sl
00315390  c5 ff ff da                                      ble #0x3152ac
00315394  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00315398  00 00 5c e3                                      cmp ip, #0
0031539c  62 00 00 0a                                      beq #0x31552c
003153a0  00 c0 a0 e3                                      mov ip, #0
003153a4  06 10 a0 e1                                      mov r1, r6
003153a8  05 20 a0 e1                                      mov r2, r5
003153ac  08 30 a0 e1                                      mov r3, r8
003153b0  07 00 a0 e1                                      mov r0, r7
003153b4  20 10 8d e8                                      stm sp, {r5, ip}
003153b8  92 fe ff eb                                      bl #0x314e08
003153bc  0e 00 00 ea                                      b #0x3153fc
003153c0  cc ff ff aa                                      bge #0x3152f8
003153c4  04 00 56 e1                                      cmp r6, r4
003153c8  9b 00 00 0a                                      beq #0x31563c
003153cc  14 00 86 e2                                      add r0, r6, #0x14
003153d0  08 10 a0 e1                                      mov r1, r8
003153d4  10 20 84 e2                                      add r2, r4, #0x10
003153d8  06 fa ff eb                                      bl #0x313bf8
003153dc  00 00 50 e3                                      cmp r0, #0
003153e0  93 00 00 1a                                      bne #0x315634
003153e4  06 10 a0 e1                                      mov r1, r6
003153e8  08 20 a0 e1                                      mov r2, r8
003153ec  20 00 8d e2                                      add r0, sp, #0x20
003153f0  c0 fe ff eb                                      bl #0x314ef8
003153f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
003153f8  00 30 87 e5                                      str r3, [r7]
003153fc  07 00 a0 e1                                      mov r0, r7
00315400  44 d0 8d e2                                      add sp, sp, #0x44
00315404  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00315408  10 30 91 e5                                      ldr r3, [r1, #0x10]
0031540c  00 00 53 e3                                      cmp r3, #0
00315410  9f 00 00 0a                                      beq #0x315694
00315414  14 30 98 e5                                      ldr r3, [r8, #0x14]
00315418  24 10 95 e5                                      ldr r1, [r5, #0x24]
0031541c  10 40 98 e5                                      ldr r4, [r8, #0x10]
00315420  20 a0 95 e5                                      ldr sl, [r5, #0x20]
00315424  03 00 a0 e1                                      mov r0, r3
00315428  04 40 63 e0                                      rsb r4, r3, r4
0031542c  0a a0 61 e0                                      rsb sl, r1, sl
00315430  04 00 5a e1                                      cmp sl, r4
00315434  0a 20 a0 b1                                      movlt r2, sl
00315438  04 20 a0 a1                                      movge r2, r4
0031543c  67 e4 ff eb                                      bl #0x30e5e0
00315440  00 00 50 e3                                      cmp r0, #0
00315444  03 00 00 1a                                      bne #0x315458
00315448  0a 00 54 e1                                      cmp r4, sl
0031544c  d3 ff ff ba                                      blt #0x3153a0
00315450  00 00 a0 d3                                      movle r0, #0
00315454  01 00 a0 c3                                      movgt r0, #1
00315458  00 00 50 e3                                      cmp r0, #0
0031545c  cf ff ff ba                                      blt #0x3153a0
00315460  14 a0 86 e2                                      add sl, r6, #0x14
00315464  10 10 85 e2                                      add r1, r5, #0x10
00315468  0a 00 a0 e1                                      mov r0, sl
0031546c  08 20 a0 e1                                      mov r2, r8
00315470  e0 f9 ff eb                                      bl #0x313bf8
00315474  00 00 50 e3                                      cmp r0, #0
00315478  81 00 00 0a                                      beq #0x315684
0031547c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00315480  00 c0 93 e5                                      ldr ip, [r3]
00315484  0c 40 9c e5                                      ldr r4, [ip, #0xc]
00315488  00 00 54 e3                                      cmp r4, #0
0031548c  22 00 00 1a                                      bne #0x31551c
00315490  04 30 9c e5                                      ldr r3, [ip, #4]
00315494  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00315498  02 00 5c e1                                      cmp ip, r2
0031549c  0c 40 a0 11                                      movne r4, ip
003154a0  04 00 00 1a                                      bne #0x3154b8
003154a4  03 40 a0 e1                                      mov r4, r3
003154a8  04 30 93 e5                                      ldr r3, [r3, #4]
003154ac  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003154b0  04 00 52 e1                                      cmp r2, r4
003154b4  fa ff ff 0a                                      beq #0x3154a4
003154b8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003154bc  02 00 53 e1                                      cmp r3, r2
003154c0  03 40 a0 11                                      movne r4, r3
003154c4  04 00 56 e1                                      cmp r6, r4
003154c8  7f 00 00 0a                                      beq #0x3156cc
003154cc  0a 00 a0 e1                                      mov r0, sl
003154d0  08 10 a0 e1                                      mov r1, r8
003154d4  10 20 84 e2                                      add r2, r4, #0x10
003154d8  c6 f9 ff eb                                      bl #0x313bf8
003154dc  00 00 50 e3                                      cmp r0, #0
003154e0  60 00 00 0a                                      beq #0x315668
003154e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
003154e8  00 c0 92 e5                                      ldr ip, [r2]
003154ec  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003154f0  00 00 5e e3                                      cmp lr, #0
003154f4  6c 00 00 0a                                      beq #0x3156ac
003154f8  00 c0 a0 e3                                      mov ip, #0
003154fc  06 10 a0 e1                                      mov r1, r6
00315500  04 20 a0 e1                                      mov r2, r4
00315504  08 30 a0 e1                                      mov r3, r8
00315508  07 00 a0 e1                                      mov r0, r7
0031550c  10 10 8d e8                                      stm sp, {r4, ip}
00315510  3c fe ff eb                                      bl #0x314e08
00315514  b8 ff ff ea                                      b #0x3153fc
00315518  03 40 a0 e1                                      mov r4, r3
0031551c  08 30 94 e5                                      ldr r3, [r4, #8]
00315520  00 00 53 e3                                      cmp r3, #0
00315524  fb ff ff 1a                                      bne #0x315518
00315528  e5 ff ff ea                                      b #0x3154c4
0031552c  06 10 a0 e1                                      mov r1, r6
00315530  04 20 a0 e1                                      mov r2, r4
00315534  08 30 a0 e1                                      mov r3, r8
00315538  07 00 a0 e1                                      mov r0, r7
0031553c  00 c0 8d e5                                      str ip, [sp]
00315540  04 40 8d e5                                      str r4, [sp, #4]
00315544  2f fe ff eb                                      bl #0x314e08
00315548  ab ff ff ea                                      b #0x3153fc
0031554c  56 ff ff aa                                      bge #0x3152ac
00315550  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00315554  00 00 5c e3                                      cmp ip, #0
00315558  90 ff ff 1a                                      bne #0x3153a0
0031555c  f2 ff ff ea                                      b #0x31552c
00315560  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00315564  14 10 93 e5                                      ldr r1, [r3, #0x14]
00315568  10 90 93 e5                                      ldr sb, [r3, #0x10]
0031556c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00315570  24 30 94 e5                                      ldr r3, [r4, #0x24]
00315574  09 90 61 e0                                      rsb sb, r1, sb
00315578  0a a0 63 e0                                      rsb sl, r3, sl
0031557c  0a 00 59 e1                                      cmp sb, sl
00315580  09 20 a0 b1                                      movlt r2, sb
00315584  0a 20 a0 a1                                      movge r2, sl
00315588  03 00 a0 e1                                      mov r0, r3
0031558c  13 e4 ff eb                                      bl #0x30e5e0
00315590  00 00 50 e3                                      cmp r0, #0
00315594  03 00 00 1a                                      bne #0x3155a8
00315598  09 00 5a e1                                      cmp sl, sb
0031559c  03 00 00 ba                                      blt #0x3155b0
003155a0  00 00 a0 d3                                      movle r0, #0
003155a4  01 00 a0 c3                                      movgt r0, #1
003155a8  00 00 50 e3                                      cmp r0, #0
003155ac  08 00 00 aa                                      bge #0x3155d4
003155b0  00 c0 a0 e3                                      mov ip, #0
003155b4  06 10 a0 e1                                      mov r1, r6
003155b8  04 20 a0 e1                                      mov r2, r4
003155bc  08 30 a0 e1                                      mov r3, r8
003155c0  07 00 a0 e1                                      mov r0, r7
003155c4  00 c0 8d e5                                      str ip, [sp]
003155c8  04 50 8d e5                                      str r5, [sp, #4]
003155cc  0d fe ff eb                                      bl #0x314e08
003155d0  89 ff ff ea                                      b #0x3153fc
003155d4  06 10 a0 e1                                      mov r1, r6
003155d8  08 20 a0 e1                                      mov r2, r8
003155dc  28 00 8d e2                                      add r0, sp, #0x28
003155e0  44 fe ff eb                                      bl #0x314ef8
003155e4  28 30 9d e5                                      ldr r3, [sp, #0x28]
003155e8  00 30 87 e5                                      str r3, [r7]
003155ec  82 ff ff ea                                      b #0x3153fc
003155f0  04 20 95 e5                                      ldr r2, [r5, #4]
003155f4  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003155f8  01 00 55 e1                                      cmp r5, r1
003155fc  05 40 a0 11                                      movne r4, r5
00315600  04 00 00 0a                                      beq #0x315618
00315604  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00315608  01 00 52 e1                                      cmp r2, r1
0031560c  02 40 a0 11                                      movne r4, r2
00315610  2d ff ff ea                                      b #0x3152cc
00315614  01 20 a0 e1                                      mov r2, r1
00315618  04 10 92 e5                                      ldr r1, [r2, #4]
0031561c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00315620  02 00 50 e1                                      cmp r0, r2
00315624  fa ff ff 0a                                      beq #0x315614
00315628  02 40 a0 e1                                      mov r4, r2
0031562c  01 20 a0 e1                                      mov r2, r1
00315630  f3 ff ff ea                                      b #0x315604
00315634  14 20 9d e5                                      ldr r2, [sp, #0x14]
00315638  00 50 92 e5                                      ldr r5, [r2]
0031563c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00315640  00 00 5c e3                                      cmp ip, #0
00315644  ab ff ff 1a                                      bne #0x3154f8
00315648  06 10 a0 e1                                      mov r1, r6
0031564c  05 20 a0 e1                                      mov r2, r5
00315650  08 30 a0 e1                                      mov r3, r8
00315654  07 00 a0 e1                                      mov r0, r7
00315658  00 c0 8d e5                                      str ip, [sp]
0031565c  04 50 8d e5                                      str r5, [sp, #4]
00315660  e8 fd ff eb                                      bl #0x314e08
00315664  64 ff ff ea                                      b #0x3153fc
00315668  06 10 a0 e1                                      mov r1, r6
0031566c  08 20 a0 e1                                      mov r2, r8
00315670  30 00 8d e2                                      add r0, sp, #0x30
00315674  1f fe ff eb                                      bl #0x314ef8
00315678  30 30 9d e5                                      ldr r3, [sp, #0x30]
0031567c  00 30 87 e5                                      str r3, [r7]
00315680  5d ff ff ea                                      b #0x3153fc
00315684  14 20 9d e5                                      ldr r2, [sp, #0x14]
00315688  00 30 92 e5                                      ldr r3, [r2]
0031568c  00 30 87 e5                                      str r3, [r7]
00315690  59 ff ff ea                                      b #0x3153fc
00315694  08 20 a0 e1                                      mov r2, r8
00315698  38 00 8d e2                                      add r0, sp, #0x38
0031569c  15 fe ff eb                                      bl #0x314ef8
003156a0  38 30 9d e5                                      ldr r3, [sp, #0x38]
003156a4  00 30 87 e5                                      str r3, [r7]
003156a8  53 ff ff ea                                      b #0x3153fc
003156ac  06 10 a0 e1                                      mov r1, r6
003156b0  0c 20 a0 e1                                      mov r2, ip
003156b4  08 30 a0 e1                                      mov r3, r8
003156b8  07 00 a0 e1                                      mov r0, r7
003156bc  00 e0 8d e5                                      str lr, [sp]
003156c0  04 c0 8d e5                                      str ip, [sp, #4]
003156c4  cf fd ff eb                                      bl #0x314e08
003156c8  4b ff ff ea                                      b #0x3153fc
003156cc  00 e0 a0 e3                                      mov lr, #0
003156d0  06 10 a0 e1                                      mov r1, r6
003156d4  0c 20 a0 e1                                      mov r2, ip
003156d8  08 30 a0 e1                                      mov r3, r8
003156dc  07 00 a0 e1                                      mov r0, r7
003156e0  00 e0 8d e5                                      str lr, [sp]
003156e4  04 c0 8d e5                                      str ip, [sp, #4]
003156e8  c6 fd ff eb                                      bl #0x314e08
003156ec  42 ff ff ea                                      b #0x3153fc
