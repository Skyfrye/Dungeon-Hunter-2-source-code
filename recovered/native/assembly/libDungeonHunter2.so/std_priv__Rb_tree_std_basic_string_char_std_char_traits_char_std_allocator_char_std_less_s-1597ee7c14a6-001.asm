; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050a968, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::erase(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >)
; decoder-mode: arm
0050a968  70 40 2d e9                                      push {r4, r5, r6, lr}
0050a96c  00 40 a0 e1                                      mov r4, r0
0050a970  0c 30 84 e2                                      add r3, r4, #0xc
0050a974  00 00 91 e5                                      ldr r0, [r1]
0050a978  08 20 84 e2                                      add r2, r4, #8
0050a97c  04 10 84 e2                                      add r1, r4, #4
0050a980  9f ad f8 eb                                      bl #0x336004
0050a984  48 50 9f e5                                      ldr r5, [pc, #0x48]
0050a988  48 30 9f e5                                      ldr r3, [pc, #0x48]
0050a98c  00 60 a0 e1                                      mov r6, r0
0050a990  05 50 8f e0                                      add r5, pc, r5
0050a994  30 00 90 e5                                      ldr r0, [r0, #0x30]
0050a998  03 30 95 e7                                      ldr r3, [r5, r3]
0050a99c  00 00 50 e3                                      cmp r0, #0
0050a9a0  08 30 83 e2                                      add r3, r3, #8
0050a9a4  28 30 86 e5                                      str r3, [r6, #0x28]
0050a9a8  00 00 00 0a                                      beq #0x50a9b0
0050a9ac  f4 4a f8 eb                                      bl #0x31d584
0050a9b0  10 00 86 e2                                      add r0, r6, #0x10
0050a9b4  26 36 f8 eb                                      bl #0x318254
0050a9b8  06 00 a0 e1                                      mov r0, r6
0050a9bc  34 10 a0 e3                                      mov r1, #0x34
0050a9c0  4e f9 07 eb                                      bl #0x708f00
0050a9c4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0050a9c8  01 30 43 e2                                      sub r3, r3, #1
0050a9cc  10 30 84 e5                                      str r3, [r4, #0x10]
0050a9d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0050a9d4  00 a1 48 00 58 0e 00 00                          .byte 0x00, 0xa1, 0x48, 0x00, 0x58, 0x0e, 0x00, 0x00

; FUNCTION 0x0050a9dc, declared_size=112, range_size=112, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0050a9dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0050a9e0  5c 60 9f e5                                      ldr r6, [pc, #0x5c]
0050a9e4  00 40 51 e2                                      subs r4, r1, #0
0050a9e8  00 70 a0 e1                                      mov r7, r0
0050a9ec  06 60 8f e0                                      add r6, pc, r6
0050a9f0  12 00 00 0a                                      beq #0x50aa40
0050a9f4  4c 80 9f e5                                      ldr r8, [pc, #0x4c]
0050a9f8  07 00 a0 e1                                      mov r0, r7
0050a9fc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0050aa00  f5 ff ff eb                                      bl #0x50a9dc
0050aa04  30 00 94 e5                                      ldr r0, [r4, #0x30]
0050aa08  08 30 96 e7                                      ldr r3, [r6, r8]
0050aa0c  08 50 94 e5                                      ldr r5, [r4, #8]
0050aa10  00 00 50 e3                                      cmp r0, #0
0050aa14  08 30 83 e2                                      add r3, r3, #8
0050aa18  28 30 84 e5                                      str r3, [r4, #0x28]
0050aa1c  00 00 00 0a                                      beq #0x50aa24
0050aa20  d7 4a f8 eb                                      bl #0x31d584
0050aa24  10 00 84 e2                                      add r0, r4, #0x10
0050aa28  09 36 f8 eb                                      bl #0x318254
0050aa2c  04 00 a0 e1                                      mov r0, r4
0050aa30  34 10 a0 e3                                      mov r1, #0x34
0050aa34  31 f9 07 eb                                      bl #0x708f00
0050aa38  00 40 55 e2                                      subs r4, r5, #0
0050aa3c  ed ff ff 1a                                      bne #0x50a9f8
0050aa40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0050aa44  a4 a0 48 00 58 0e 00 00                          .byte 0xa4, 0xa0, 0x48, 0x00, 0x58, 0x0e, 0x00, 0x00

; FUNCTION 0x0050aaec, declared_size=144, range_size=144, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> const&)
; decoder-mode: arm
0050aaec  70 40 2d e9                                      push {r4, r5, r6, lr}
0050aaf0  08 d0 4d e2                                      sub sp, sp, #8
0050aaf4  34 30 a0 e3                                      mov r3, #0x34
0050aaf8  08 00 8d e2                                      add r0, sp, #8
0050aafc  04 30 20 e5                                      str r3, [r0, #-4]!
0050ab00  01 50 a0 e1                                      mov r5, r1
0050ab04  ed f8 07 eb                                      bl #0x708ec0
0050ab08  00 40 a0 e1                                      mov r4, r0
0050ab0c  10 00 80 e2                                      add r0, r0, #0x10
0050ab10  20 00 84 e5                                      str r0, [r4, #0x20]
0050ab14  24 00 84 e5                                      str r0, [r4, #0x24]
0050ab18  10 20 95 e5                                      ldr r2, [r5, #0x10]
0050ab1c  14 10 95 e5                                      ldr r1, [r5, #0x14]
0050ab20  4c 60 9f e5                                      ldr r6, [pc, #0x4c]
0050ab24  ef 1a f8 eb                                      bl #0x3116e8
0050ab28  48 30 9f e5                                      ldr r3, [pc, #0x48]
0050ab2c  06 60 8f e0                                      add r6, pc, r6
0050ab30  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0050ab34  03 30 96 e7                                      ldr r3, [r6, r3]
0050ab38  04 00 a0 e1                                      mov r0, r4
0050ab3c  2c 20 84 e5                                      str r2, [r4, #0x2c]
0050ab40  08 30 83 e2                                      add r3, r3, #8
0050ab44  28 30 84 e5                                      str r3, [r4, #0x28]
0050ab48  20 30 95 e5                                      ldr r3, [r5, #0x20]
0050ab4c  00 00 53 e3                                      cmp r3, #0
0050ab50  30 30 84 e5                                      str r3, [r4, #0x30]
0050ab54  04 20 93 15                                      ldrne r2, [r3, #4]
0050ab58  01 20 82 12                                      addne r2, r2, #1
0050ab5c  04 20 83 15                                      strne r2, [r3, #4]
0050ab60  00 30 a0 e3                                      mov r3, #0
0050ab64  0c 30 84 e5                                      str r3, [r4, #0xc]
0050ab68  08 30 84 e5                                      str r3, [r4, #8]
0050ab6c  08 d0 8d e2                                      add sp, sp, #8
0050ab70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0050ab74  64 9f 48 00 58 0e 00 00                          .byte 0x64, 0x9f, 0x48, 0x00, 0x58, 0x0e, 0x00, 0x00

; FUNCTION 0x0050ab7c, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0050ab7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0050ab80  02 00 51 e1                                      cmp r1, r2
0050ab84  0c d0 4d e2                                      sub sp, sp, #0xc
0050ab88  01 40 a0 e1                                      mov r4, r1
0050ab8c  02 50 a0 e1                                      mov r5, r2
0050ab90  00 60 a0 e1                                      mov r6, r0
0050ab94  23 00 00 0a                                      beq #0x50ac28
0050ab98  24 20 9d e5                                      ldr r2, [sp, #0x24]
0050ab9c  00 00 52 e3                                      cmp r2, #0
0050aba0  12 00 00 0a                                      beq #0x50abf0
0050aba4  03 10 a0 e1                                      mov r1, r3
0050aba8  04 00 a0 e1                                      mov r0, r4
0050abac  ce ff ff eb                                      bl #0x50aaec
0050abb0  0c 00 85 e5                                      str r0, [r5, #0xc]
0050abb4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0050abb8  00 70 a0 e1                                      mov r7, r0
0050abbc  03 00 55 e1                                      cmp r5, r3
0050abc0  16 00 00 0a                                      beq #0x50ac20
0050abc4  07 00 a0 e1                                      mov r0, r7
0050abc8  04 50 87 e5                                      str r5, [r7, #4]
0050abcc  04 10 84 e2                                      add r1, r4, #4
0050abd0  e2 22 f8 eb                                      bl #0x313760
0050abd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0050abd8  06 00 a0 e1                                      mov r0, r6
0050abdc  01 30 83 e2                                      add r3, r3, #1
0050abe0  10 30 84 e5                                      str r3, [r4, #0x10]
0050abe4  00 70 86 e5                                      str r7, [r6]
0050abe8  0c d0 8d e2                                      add sp, sp, #0xc
0050abec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0050abf0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0050abf4  00 00 52 e3                                      cmp r2, #0
0050abf8  12 00 00 0a                                      beq #0x50ac48
0050abfc  03 10 a0 e1                                      mov r1, r3
0050ac00  04 00 a0 e1                                      mov r0, r4
0050ac04  b8 ff ff eb                                      bl #0x50aaec
0050ac08  08 00 85 e5                                      str r0, [r5, #8]
0050ac0c  08 30 94 e5                                      ldr r3, [r4, #8]
0050ac10  00 70 a0 e1                                      mov r7, r0
0050ac14  03 00 55 e1                                      cmp r5, r3
0050ac18  08 00 84 05                                      streq r0, [r4, #8]
0050ac1c  e8 ff ff ea                                      b #0x50abc4
0050ac20  0c 70 84 e5                                      str r7, [r4, #0xc]
0050ac24  e6 ff ff ea                                      b #0x50abc4
0050ac28  03 10 a0 e1                                      mov r1, r3
0050ac2c  04 00 a0 e1                                      mov r0, r4
0050ac30  ad ff ff eb                                      bl #0x50aaec
0050ac34  00 70 a0 e1                                      mov r7, r0
0050ac38  08 00 84 e5                                      str r0, [r4, #8]
0050ac3c  04 00 84 e5                                      str r0, [r4, #4]
0050ac40  0c 00 84 e5                                      str r0, [r4, #0xc]
0050ac44  de ff ff ea                                      b #0x50abc4
0050ac48  14 00 81 e2                                      add r0, r1, #0x14
0050ac4c  10 20 85 e2                                      add r2, r5, #0x10
0050ac50  03 10 a0 e1                                      mov r1, r3
0050ac54  04 30 8d e5                                      str r3, [sp, #4]
0050ac58  e6 23 f8 eb                                      bl #0x313bf8
0050ac5c  00 00 50 e3                                      cmp r0, #0
0050ac60  04 30 9d e5                                      ldr r3, [sp, #4]
0050ac64  ce ff ff 0a                                      beq #0x50aba4
0050ac68  e3 ff ff ea                                      b #0x50abfc

; FUNCTION 0x0050b168, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> const&)
; decoder-mode: arm
0050b168  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050b16c  04 50 91 e5                                      ldr r5, [r1, #4]
0050b170  14 d0 4d e2                                      sub sp, sp, #0x14
0050b174  01 90 a0 e1                                      mov sb, r1
0050b178  00 00 55 e3                                      cmp r5, #0
0050b17c  00 40 a0 e1                                      mov r4, r0
0050b180  02 80 a0 e1                                      mov r8, r2
0050b184  38 00 00 0a                                      beq #0x50b26c
0050b188  14 70 92 e5                                      ldr r7, [r2, #0x14]
0050b18c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0050b190  0b a0 67 e0                                      rsb sl, r7, fp
0050b194  04 00 00 ea                                      b #0x50b1ac
0050b198  08 30 95 e5                                      ldr r3, [r5, #8]
0050b19c  01 10 a0 e3                                      mov r1, #1
0050b1a0  00 00 53 e3                                      cmp r3, #0
0050b1a4  16 00 00 0a                                      beq #0x50b204
0050b1a8  03 50 a0 e1                                      mov r5, r3
0050b1ac  24 30 95 e5                                      ldr r3, [r5, #0x24]
0050b1b0  20 60 95 e5                                      ldr r6, [r5, #0x20]
0050b1b4  07 00 a0 e1                                      mov r0, r7
0050b1b8  03 10 a0 e1                                      mov r1, r3
0050b1bc  06 60 63 e0                                      rsb r6, r3, r6
0050b1c0  0a 00 56 e1                                      cmp r6, sl
0050b1c4  06 20 a0 b1                                      movlt r2, r6
0050b1c8  0a 20 a0 a1                                      movge r2, sl
0050b1cc  03 0d f8 eb                                      bl #0x30e5e0
0050b1d0  00 00 50 e3                                      cmp r0, #0
0050b1d4  05 20 a0 e1                                      mov r2, r5
0050b1d8  03 00 00 1a                                      bne #0x50b1ec
0050b1dc  06 00 5a e1                                      cmp sl, r6
0050b1e0  ec ff ff ba                                      blt #0x50b198
0050b1e4  00 00 a0 d3                                      movle r0, #0
0050b1e8  01 00 a0 c3                                      movgt r0, #1
0050b1ec  00 00 50 e3                                      cmp r0, #0
0050b1f0  e8 ff ff ba                                      blt #0x50b198
0050b1f4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0050b1f8  00 10 a0 e3                                      mov r1, #0
0050b1fc  00 00 53 e3                                      cmp r3, #0
0050b200  e8 ff ff 1a                                      bne #0x50b1a8
0050b204  00 00 51 e3                                      cmp r1, #0
0050b208  05 a0 a0 01                                      moveq sl, r5
0050b20c  17 00 00 1a                                      bne #0x50b270
0050b210  24 00 92 e5                                      ldr r0, [r2, #0x24]
0050b214  20 60 92 e5                                      ldr r6, [r2, #0x20]
0050b218  0b b0 67 e0                                      rsb fp, r7, fp
0050b21c  07 10 a0 e1                                      mov r1, r7
0050b220  06 60 60 e0                                      rsb r6, r0, r6
0050b224  06 00 5b e1                                      cmp fp, r6
0050b228  0b 20 a0 b1                                      movlt r2, fp
0050b22c  06 20 a0 a1                                      movge r2, r6
0050b230  ea 0c f8 eb                                      bl #0x30e5e0
0050b234  00 00 50 e3                                      cmp r0, #0
0050b238  03 00 00 1a                                      bne #0x50b24c
0050b23c  0b 00 56 e1                                      cmp r6, fp
0050b240  20 00 00 ba                                      blt #0x50b2c8
0050b244  00 00 a0 d3                                      movle r0, #0
0050b248  01 00 a0 c3                                      movgt r0, #1
0050b24c  00 00 50 e3                                      cmp r0, #0
0050b250  00 30 a0 a3                                      movge r3, #0
0050b254  00 a0 84 a5                                      strge sl, [r4]
0050b258  04 30 c4 a5                                      strbge r3, [r4, #4]
0050b25c  19 00 00 ba                                      blt #0x50b2c8
0050b260  04 00 a0 e1                                      mov r0, r4
0050b264  14 d0 8d e2                                      add sp, sp, #0x14
0050b268  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050b26c  01 50 a0 e1                                      mov r5, r1
0050b270  08 30 99 e5                                      ldr r3, [sb, #8]
0050b274  03 00 55 e1                                      cmp r5, r3
0050b278  32 00 00 0a                                      beq #0x50b348
0050b27c  00 30 d5 e5                                      ldrb r3, [r5]
0050b280  00 00 53 e3                                      cmp r3, #0
0050b284  03 00 00 1a                                      bne #0x50b298
0050b288  04 30 95 e5                                      ldr r3, [r5, #4]
0050b28c  04 30 93 e5                                      ldr r3, [r3, #4]
0050b290  03 00 55 e1                                      cmp r5, r3
0050b294  26 00 00 0a                                      beq #0x50b334
0050b298  08 20 95 e5                                      ldr r2, [r5, #8]
0050b29c  00 00 52 e3                                      cmp r2, #0
0050b2a0  01 00 00 1a                                      bne #0x50b2ac
0050b2a4  14 00 00 ea                                      b #0x50b2fc
0050b2a8  03 20 a0 e1                                      mov r2, r3
0050b2ac  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0050b2b0  00 00 53 e3                                      cmp r3, #0
0050b2b4  fb ff ff 1a                                      bne #0x50b2a8
0050b2b8  02 a0 a0 e1                                      mov sl, r2
0050b2bc  14 70 98 e5                                      ldr r7, [r8, #0x14]
0050b2c0  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050b2c4  d1 ff ff ea                                      b #0x50b210
0050b2c8  00 c0 a0 e3                                      mov ip, #0
0050b2cc  05 20 a0 e1                                      mov r2, r5
0050b2d0  08 30 a0 e1                                      mov r3, r8
0050b2d4  09 10 a0 e1                                      mov r1, sb
0050b2d8  08 00 8d e2                                      add r0, sp, #8
0050b2dc  04 c0 8d e5                                      str ip, [sp, #4]
0050b2e0  00 c0 8d e5                                      str ip, [sp]
0050b2e4  24 fe ff eb                                      bl #0x50ab7c
0050b2e8  08 30 9d e5                                      ldr r3, [sp, #8]
0050b2ec  01 20 a0 e3                                      mov r2, #1
0050b2f0  04 20 c4 e5                                      strb r2, [r4, #4]
0050b2f4  00 30 84 e5                                      str r3, [r4]
0050b2f8  d8 ff ff ea                                      b #0x50b260
0050b2fc  04 30 95 e5                                      ldr r3, [r5, #4]
0050b300  08 20 93 e5                                      ldr r2, [r3, #8]
0050b304  02 00 55 e1                                      cmp r5, r2
0050b308  01 00 00 0a                                      beq #0x50b314
0050b30c  19 00 00 ea                                      b #0x50b378
0050b310  02 30 a0 e1                                      mov r3, r2
0050b314  04 20 93 e5                                      ldr r2, [r3, #4]
0050b318  08 10 92 e5                                      ldr r1, [r2, #8]
0050b31c  03 00 51 e1                                      cmp r1, r3
0050b320  fa ff ff 0a                                      beq #0x50b310
0050b324  14 70 98 e5                                      ldr r7, [r8, #0x14]
0050b328  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050b32c  02 a0 a0 e1                                      mov sl, r2
0050b330  b6 ff ff ea                                      b #0x50b210
0050b334  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0050b338  14 70 98 e5                                      ldr r7, [r8, #0x14]
0050b33c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050b340  02 a0 a0 e1                                      mov sl, r2
0050b344  b1 ff ff ea                                      b #0x50b210
0050b348  05 20 a0 e1                                      mov r2, r5
0050b34c  08 30 a0 e1                                      mov r3, r8
0050b350  00 c0 a0 e3                                      mov ip, #0
0050b354  09 10 a0 e1                                      mov r1, sb
0050b358  0c 00 8d e2                                      add r0, sp, #0xc
0050b35c  20 10 8d e8                                      stm sp, {r5, ip}
0050b360  05 fe ff eb                                      bl #0x50ab7c
0050b364  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0050b368  01 20 a0 e3                                      mov r2, #1
0050b36c  04 20 c4 e5                                      strb r2, [r4, #4]
0050b370  00 30 84 e5                                      str r3, [r4]
0050b374  b9 ff ff ea                                      b #0x50b260
0050b378  03 20 a0 e1                                      mov r2, r3
0050b37c  cd ff ff ea                                      b #0x50b2b8

; FUNCTION 0x0050b740, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> const&)
; decoder-mode: arm
0050b740  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050b744  44 d0 4d e2                                      sub sp, sp, #0x44
0050b748  14 20 8d e5                                      str r2, [sp, #0x14]
0050b74c  00 50 92 e5                                      ldr r5, [r2]
0050b750  08 20 91 e5                                      ldr r2, [r1, #8]
0050b754  01 60 a0 e1                                      mov r6, r1
0050b758  00 70 a0 e1                                      mov r7, r0
0050b75c  02 00 55 e1                                      cmp r5, r2
0050b760  03 80 a0 e1                                      mov r8, r3
0050b764  7c 00 00 0a                                      beq #0x50b95c
0050b768  01 00 55 e1                                      cmp r5, r1
0050b76c  d0 00 00 0a                                      beq #0x50bab4
0050b770  00 30 d5 e5                                      ldrb r3, [r5]
0050b774  00 00 53 e3                                      cmp r3, #0
0050b778  35 00 00 0a                                      beq #0x50b854
0050b77c  08 40 95 e5                                      ldr r4, [r5, #8]
0050b780  00 00 54 e3                                      cmp r4, #0
0050b784  01 00 00 1a                                      bne #0x50b790
0050b788  39 00 00 ea                                      b #0x50b874
0050b78c  03 40 a0 e1                                      mov r4, r3
0050b790  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0050b794  00 00 53 e3                                      cmp r3, #0
0050b798  fb ff ff 1a                                      bne #0x50b78c
0050b79c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0050b7a0  14 90 98 e5                                      ldr sb, [r8, #0x14]
0050b7a4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050b7a8  20 20 95 e5                                      ldr r2, [r5, #0x20]
0050b7ac  03 10 a0 e1                                      mov r1, r3
0050b7b0  0b b0 69 e0                                      rsb fp, sb, fp
0050b7b4  02 20 63 e0                                      rsb r2, r3, r2
0050b7b8  18 20 8d e5                                      str r2, [sp, #0x18]
0050b7bc  09 00 a0 e1                                      mov r0, sb
0050b7c0  0b 00 52 e1                                      cmp r2, fp
0050b7c4  0b 20 a0 a1                                      movge r2, fp
0050b7c8  0c 30 8d e5                                      str r3, [sp, #0xc]
0050b7cc  1c 20 8d e5                                      str r2, [sp, #0x1c]
0050b7d0  82 0b f8 eb                                      bl #0x30e5e0
0050b7d4  00 00 50 e3                                      cmp r0, #0
0050b7d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0050b7dc  05 00 00 1a                                      bne #0x50b7f8
0050b7e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0050b7e4  02 00 5b e1                                      cmp fp, r2
0050b7e8  00 00 e0 b3                                      mvnlt r0, #0
0050b7ec  01 00 00 ba                                      blt #0x50b7f8
0050b7f0  00 00 a0 d3                                      movle r0, #0
0050b7f4  01 00 a0 c3                                      movgt r0, #1
0050b7f8  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0050b7fc  28 00 00 1a                                      bne #0x50b8a4
0050b800  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0050b804  00 00 54 e3                                      cmp r4, #0
0050b808  01 00 00 1a                                      bne #0x50b814
0050b80c  cc 00 00 ea                                      b #0x50bb44
0050b810  02 40 a0 e1                                      mov r4, r2
0050b814  08 20 94 e5                                      ldr r2, [r4, #8]
0050b818  00 00 52 e3                                      cmp r2, #0
0050b81c  fb ff ff 1a                                      bne #0x50b810
0050b820  00 00 5c e3                                      cmp ip, #0
0050b824  43 00 00 1a                                      bne #0x50b938
0050b828  03 00 a0 e1                                      mov r0, r3
0050b82c  09 10 a0 e1                                      mov r1, sb
0050b830  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0050b834  69 0b f8 eb                                      bl #0x30e5e0
0050b838  00 00 50 e3                                      cmp r0, #0
0050b83c  34 00 00 1a                                      bne #0x50b914
0050b840  18 30 9d e5                                      ldr r3, [sp, #0x18]
0050b844  03 00 5b e1                                      cmp fp, r3
0050b848  32 00 00 ca                                      bgt #0x50b918
0050b84c  00 50 87 e5                                      str r5, [r7]
0050b850  3e 00 00 ea                                      b #0x50b950
0050b854  04 30 95 e5                                      ldr r3, [r5, #4]
0050b858  04 30 93 e5                                      ldr r3, [r3, #4]
0050b85c  03 00 55 e1                                      cmp r5, r3
0050b860  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0050b864  cc ff ff 0a                                      beq #0x50b79c
0050b868  08 40 95 e5                                      ldr r4, [r5, #8]
0050b86c  00 00 54 e3                                      cmp r4, #0
0050b870  c6 ff ff 1a                                      bne #0x50b790
0050b874  04 40 95 e5                                      ldr r4, [r5, #4]
0050b878  08 30 94 e5                                      ldr r3, [r4, #8]
0050b87c  03 00 55 e1                                      cmp r5, r3
0050b880  01 00 00 0a                                      beq #0x50b88c
0050b884  c4 ff ff ea                                      b #0x50b79c
0050b888  03 40 a0 e1                                      mov r4, r3
0050b88c  04 30 94 e5                                      ldr r3, [r4, #4]
0050b890  08 20 93 e5                                      ldr r2, [r3, #8]
0050b894  04 00 52 e1                                      cmp r2, r4
0050b898  fa ff ff 0a                                      beq #0x50b888
0050b89c  03 40 a0 e1                                      mov r4, r3
0050b8a0  bd ff ff ea                                      b #0x50b79c
0050b8a4  24 20 94 e5                                      ldr r2, [r4, #0x24]
0050b8a8  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0050b8ac  09 10 a0 e1                                      mov r1, sb
0050b8b0  02 00 a0 e1                                      mov r0, r2
0050b8b4  0a a0 62 e0                                      rsb sl, r2, sl
0050b8b8  0a 00 5b e1                                      cmp fp, sl
0050b8bc  0b 20 a0 b1                                      movlt r2, fp
0050b8c0  0a 20 a0 a1                                      movge r2, sl
0050b8c4  0c 30 8d e5                                      str r3, [sp, #0xc]
0050b8c8  10 c0 8d e5                                      str ip, [sp, #0x10]
0050b8cc  43 0b f8 eb                                      bl #0x30e5e0
0050b8d0  00 00 50 e3                                      cmp r0, #0
0050b8d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0050b8d8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0050b8dc  6f 00 00 1a                                      bne #0x50baa0
0050b8e0  0a 00 5b e1                                      cmp fp, sl
0050b8e4  c5 ff ff da                                      ble #0x50b800
0050b8e8  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0050b8ec  00 00 5c e3                                      cmp ip, #0
0050b8f0  62 00 00 0a                                      beq #0x50ba80
0050b8f4  00 c0 a0 e3                                      mov ip, #0
0050b8f8  06 10 a0 e1                                      mov r1, r6
0050b8fc  05 20 a0 e1                                      mov r2, r5
0050b900  08 30 a0 e1                                      mov r3, r8
0050b904  07 00 a0 e1                                      mov r0, r7
0050b908  20 10 8d e8                                      stm sp, {r5, ip}
0050b90c  9a fc ff eb                                      bl #0x50ab7c
0050b910  0e 00 00 ea                                      b #0x50b950
0050b914  cc ff ff aa                                      bge #0x50b84c
0050b918  04 00 56 e1                                      cmp r6, r4
0050b91c  9b 00 00 0a                                      beq #0x50bb90
0050b920  14 00 86 e2                                      add r0, r6, #0x14
0050b924  08 10 a0 e1                                      mov r1, r8
0050b928  10 20 84 e2                                      add r2, r4, #0x10
0050b92c  b1 20 f8 eb                                      bl #0x313bf8
0050b930  00 00 50 e3                                      cmp r0, #0
0050b934  93 00 00 1a                                      bne #0x50bb88
0050b938  06 10 a0 e1                                      mov r1, r6
0050b93c  08 20 a0 e1                                      mov r2, r8
0050b940  20 00 8d e2                                      add r0, sp, #0x20
0050b944  07 fe ff eb                                      bl #0x50b168
0050b948  20 30 9d e5                                      ldr r3, [sp, #0x20]
0050b94c  00 30 87 e5                                      str r3, [r7]
0050b950  07 00 a0 e1                                      mov r0, r7
0050b954  44 d0 8d e2                                      add sp, sp, #0x44
0050b958  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050b95c  10 30 91 e5                                      ldr r3, [r1, #0x10]
0050b960  00 00 53 e3                                      cmp r3, #0
0050b964  9f 00 00 0a                                      beq #0x50bbe8
0050b968  14 30 98 e5                                      ldr r3, [r8, #0x14]
0050b96c  24 10 95 e5                                      ldr r1, [r5, #0x24]
0050b970  10 40 98 e5                                      ldr r4, [r8, #0x10]
0050b974  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0050b978  03 00 a0 e1                                      mov r0, r3
0050b97c  04 40 63 e0                                      rsb r4, r3, r4
0050b980  0a a0 61 e0                                      rsb sl, r1, sl
0050b984  04 00 5a e1                                      cmp sl, r4
0050b988  0a 20 a0 b1                                      movlt r2, sl
0050b98c  04 20 a0 a1                                      movge r2, r4
0050b990  12 0b f8 eb                                      bl #0x30e5e0
0050b994  00 00 50 e3                                      cmp r0, #0
0050b998  03 00 00 1a                                      bne #0x50b9ac
0050b99c  0a 00 54 e1                                      cmp r4, sl
0050b9a0  d3 ff ff ba                                      blt #0x50b8f4
0050b9a4  00 00 a0 d3                                      movle r0, #0
0050b9a8  01 00 a0 c3                                      movgt r0, #1
0050b9ac  00 00 50 e3                                      cmp r0, #0
0050b9b0  cf ff ff ba                                      blt #0x50b8f4
0050b9b4  14 a0 86 e2                                      add sl, r6, #0x14
0050b9b8  10 10 85 e2                                      add r1, r5, #0x10
0050b9bc  0a 00 a0 e1                                      mov r0, sl
0050b9c0  08 20 a0 e1                                      mov r2, r8
0050b9c4  8b 20 f8 eb                                      bl #0x313bf8
0050b9c8  00 00 50 e3                                      cmp r0, #0
0050b9cc  81 00 00 0a                                      beq #0x50bbd8
0050b9d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
0050b9d4  00 c0 93 e5                                      ldr ip, [r3]
0050b9d8  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0050b9dc  00 00 54 e3                                      cmp r4, #0
0050b9e0  22 00 00 1a                                      bne #0x50ba70
0050b9e4  04 30 9c e5                                      ldr r3, [ip, #4]
0050b9e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050b9ec  02 00 5c e1                                      cmp ip, r2
0050b9f0  0c 40 a0 11                                      movne r4, ip
0050b9f4  04 00 00 1a                                      bne #0x50ba0c
0050b9f8  03 40 a0 e1                                      mov r4, r3
0050b9fc  04 30 93 e5                                      ldr r3, [r3, #4]
0050ba00  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050ba04  04 00 52 e1                                      cmp r2, r4
0050ba08  fa ff ff 0a                                      beq #0x50b9f8
0050ba0c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050ba10  02 00 53 e1                                      cmp r3, r2
0050ba14  03 40 a0 11                                      movne r4, r3
0050ba18  04 00 56 e1                                      cmp r6, r4
0050ba1c  7f 00 00 0a                                      beq #0x50bc20
0050ba20  0a 00 a0 e1                                      mov r0, sl
0050ba24  08 10 a0 e1                                      mov r1, r8
0050ba28  10 20 84 e2                                      add r2, r4, #0x10
0050ba2c  71 20 f8 eb                                      bl #0x313bf8
0050ba30  00 00 50 e3                                      cmp r0, #0
0050ba34  60 00 00 0a                                      beq #0x50bbbc
0050ba38  14 20 9d e5                                      ldr r2, [sp, #0x14]
0050ba3c  00 c0 92 e5                                      ldr ip, [r2]
0050ba40  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0050ba44  00 00 5e e3                                      cmp lr, #0
0050ba48  6c 00 00 0a                                      beq #0x50bc00
0050ba4c  00 c0 a0 e3                                      mov ip, #0
0050ba50  06 10 a0 e1                                      mov r1, r6
0050ba54  04 20 a0 e1                                      mov r2, r4
0050ba58  08 30 a0 e1                                      mov r3, r8
0050ba5c  07 00 a0 e1                                      mov r0, r7
0050ba60  10 10 8d e8                                      stm sp, {r4, ip}
0050ba64  44 fc ff eb                                      bl #0x50ab7c
0050ba68  b8 ff ff ea                                      b #0x50b950
0050ba6c  03 40 a0 e1                                      mov r4, r3
0050ba70  08 30 94 e5                                      ldr r3, [r4, #8]
0050ba74  00 00 53 e3                                      cmp r3, #0
0050ba78  fb ff ff 1a                                      bne #0x50ba6c
0050ba7c  e5 ff ff ea                                      b #0x50ba18
0050ba80  06 10 a0 e1                                      mov r1, r6
0050ba84  04 20 a0 e1                                      mov r2, r4
0050ba88  08 30 a0 e1                                      mov r3, r8
0050ba8c  07 00 a0 e1                                      mov r0, r7
0050ba90  00 c0 8d e5                                      str ip, [sp]
0050ba94  04 40 8d e5                                      str r4, [sp, #4]
0050ba98  37 fc ff eb                                      bl #0x50ab7c
0050ba9c  ab ff ff ea                                      b #0x50b950
0050baa0  56 ff ff aa                                      bge #0x50b800
0050baa4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0050baa8  00 00 5c e3                                      cmp ip, #0
0050baac  90 ff ff 1a                                      bne #0x50b8f4
0050bab0  f2 ff ff ea                                      b #0x50ba80
0050bab4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0050bab8  14 10 93 e5                                      ldr r1, [r3, #0x14]
0050babc  10 90 93 e5                                      ldr sb, [r3, #0x10]
0050bac0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0050bac4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0050bac8  09 90 61 e0                                      rsb sb, r1, sb
0050bacc  0a a0 63 e0                                      rsb sl, r3, sl
0050bad0  0a 00 59 e1                                      cmp sb, sl
0050bad4  09 20 a0 b1                                      movlt r2, sb
0050bad8  0a 20 a0 a1                                      movge r2, sl
0050badc  03 00 a0 e1                                      mov r0, r3
0050bae0  be 0a f8 eb                                      bl #0x30e5e0
0050bae4  00 00 50 e3                                      cmp r0, #0
0050bae8  03 00 00 1a                                      bne #0x50bafc
0050baec  09 00 5a e1                                      cmp sl, sb
0050baf0  03 00 00 ba                                      blt #0x50bb04
0050baf4  00 00 a0 d3                                      movle r0, #0
0050baf8  01 00 a0 c3                                      movgt r0, #1
0050bafc  00 00 50 e3                                      cmp r0, #0
0050bb00  08 00 00 aa                                      bge #0x50bb28
0050bb04  00 c0 a0 e3                                      mov ip, #0
0050bb08  06 10 a0 e1                                      mov r1, r6
0050bb0c  04 20 a0 e1                                      mov r2, r4
0050bb10  08 30 a0 e1                                      mov r3, r8
0050bb14  07 00 a0 e1                                      mov r0, r7
0050bb18  00 c0 8d e5                                      str ip, [sp]
0050bb1c  04 50 8d e5                                      str r5, [sp, #4]
0050bb20  15 fc ff eb                                      bl #0x50ab7c
0050bb24  89 ff ff ea                                      b #0x50b950
0050bb28  06 10 a0 e1                                      mov r1, r6
0050bb2c  08 20 a0 e1                                      mov r2, r8
0050bb30  28 00 8d e2                                      add r0, sp, #0x28
0050bb34  8b fd ff eb                                      bl #0x50b168
0050bb38  28 30 9d e5                                      ldr r3, [sp, #0x28]
0050bb3c  00 30 87 e5                                      str r3, [r7]
0050bb40  82 ff ff ea                                      b #0x50b950
0050bb44  04 20 95 e5                                      ldr r2, [r5, #4]
0050bb48  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0050bb4c  01 00 55 e1                                      cmp r5, r1
0050bb50  05 40 a0 11                                      movne r4, r5
0050bb54  04 00 00 0a                                      beq #0x50bb6c
0050bb58  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0050bb5c  01 00 52 e1                                      cmp r2, r1
0050bb60  02 40 a0 11                                      movne r4, r2
0050bb64  2d ff ff ea                                      b #0x50b820
0050bb68  01 20 a0 e1                                      mov r2, r1
0050bb6c  04 10 92 e5                                      ldr r1, [r2, #4]
0050bb70  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0050bb74  02 00 50 e1                                      cmp r0, r2
0050bb78  fa ff ff 0a                                      beq #0x50bb68
0050bb7c  02 40 a0 e1                                      mov r4, r2
0050bb80  01 20 a0 e1                                      mov r2, r1
0050bb84  f3 ff ff ea                                      b #0x50bb58
0050bb88  14 20 9d e5                                      ldr r2, [sp, #0x14]
0050bb8c  00 50 92 e5                                      ldr r5, [r2]
0050bb90  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0050bb94  00 00 5c e3                                      cmp ip, #0
0050bb98  ab ff ff 1a                                      bne #0x50ba4c
0050bb9c  06 10 a0 e1                                      mov r1, r6
0050bba0  05 20 a0 e1                                      mov r2, r5
0050bba4  08 30 a0 e1                                      mov r3, r8
0050bba8  07 00 a0 e1                                      mov r0, r7
0050bbac  00 c0 8d e5                                      str ip, [sp]
0050bbb0  04 50 8d e5                                      str r5, [sp, #4]
0050bbb4  f0 fb ff eb                                      bl #0x50ab7c
0050bbb8  64 ff ff ea                                      b #0x50b950
0050bbbc  06 10 a0 e1                                      mov r1, r6
0050bbc0  08 20 a0 e1                                      mov r2, r8
0050bbc4  30 00 8d e2                                      add r0, sp, #0x30
0050bbc8  66 fd ff eb                                      bl #0x50b168
0050bbcc  30 30 9d e5                                      ldr r3, [sp, #0x30]
0050bbd0  00 30 87 e5                                      str r3, [r7]
0050bbd4  5d ff ff ea                                      b #0x50b950
0050bbd8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0050bbdc  00 30 92 e5                                      ldr r3, [r2]
0050bbe0  00 30 87 e5                                      str r3, [r7]
0050bbe4  59 ff ff ea                                      b #0x50b950
0050bbe8  08 20 a0 e1                                      mov r2, r8
0050bbec  38 00 8d e2                                      add r0, sp, #0x38
0050bbf0  5c fd ff eb                                      bl #0x50b168
0050bbf4  38 30 9d e5                                      ldr r3, [sp, #0x38]
0050bbf8  00 30 87 e5                                      str r3, [r7]
0050bbfc  53 ff ff ea                                      b #0x50b950
0050bc00  06 10 a0 e1                                      mov r1, r6
0050bc04  0c 20 a0 e1                                      mov r2, ip
0050bc08  08 30 a0 e1                                      mov r3, r8
0050bc0c  07 00 a0 e1                                      mov r0, r7
0050bc10  00 e0 8d e5                                      str lr, [sp]
0050bc14  04 c0 8d e5                                      str ip, [sp, #4]
0050bc18  d7 fb ff eb                                      bl #0x50ab7c
0050bc1c  4b ff ff ea                                      b #0x50b950
0050bc20  00 e0 a0 e3                                      mov lr, #0
0050bc24  06 10 a0 e1                                      mov r1, r6
0050bc28  0c 20 a0 e1                                      mov r2, ip
0050bc2c  08 30 a0 e1                                      mov r3, r8
0050bc30  07 00 a0 e1                                      mov r0, r7
0050bc34  00 e0 8d e5                                      str lr, [sp]
0050bc38  04 c0 8d e5                                      str ip, [sp, #4]
0050bc3c  ce fb ff eb                                      bl #0x50ab7c
0050bc40  42 ff ff ea                                      b #0x50b950
