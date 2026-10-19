; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050a86c, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager9SceneNodeEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE5eraseENS_17_Rb_tree_iteratorIS7_SB_EE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::erase(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >)
; decoder-mode: arm
0050a86c  70 40 2d e9                                      push {r4, r5, r6, lr}
0050a870  00 40 a0 e1                                      mov r4, r0
0050a874  08 20 84 e2                                      add r2, r4, #8
0050a878  00 00 91 e5                                      ldr r0, [r1]
0050a87c  0c 30 84 e2                                      add r3, r4, #0xc
0050a880  04 10 84 e2                                      add r1, r4, #4
0050a884  de ad f8 eb                                      bl #0x336004
0050a888  54 50 9f e5                                      ldr r5, [pc, #0x54]
0050a88c  54 30 9f e5                                      ldr r3, [pc, #0x54]
0050a890  30 20 90 e5                                      ldr r2, [r0, #0x30]
0050a894  05 50 8f e0                                      add r5, pc, r5
0050a898  03 30 95 e7                                      ldr r3, [r5, r3]
0050a89c  00 00 52 e3                                      cmp r2, #0
0050a8a0  00 60 a0 e1                                      mov r6, r0
0050a8a4  08 30 83 e2                                      add r3, r3, #8
0050a8a8  28 30 80 e5                                      str r3, [r0, #0x28]
0050a8ac  03 00 00 0a                                      beq #0x50a8c0
0050a8b0  00 30 92 e5                                      ldr r3, [r2]
0050a8b4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0050a8b8  00 00 82 e0                                      add r0, r2, r0
0050a8bc  30 4b f8 eb                                      bl #0x31d584
0050a8c0  10 00 86 e2                                      add r0, r6, #0x10
0050a8c4  62 36 f8 eb                                      bl #0x318254
0050a8c8  06 00 a0 e1                                      mov r0, r6
0050a8cc  34 10 a0 e3                                      mov r1, #0x34
0050a8d0  8a f9 07 eb                                      bl #0x708f00
0050a8d4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0050a8d8  01 30 43 e2                                      sub r3, r3, #1
0050a8dc  10 30 84 e5                                      str r3, [r4, #0x10]
0050a8e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0050a8e4  fc a1 48 00 20 49 00 00                          .byte 0xfc, 0xa1, 0x48, 0x00, 0x20, 0x49, 0x00, 0x00

; FUNCTION 0x0050a8ec, declared_size=124, range_size=124, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager9SceneNodeEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0050a8ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0050a8f0  68 60 9f e5                                      ldr r6, [pc, #0x68]
0050a8f4  00 40 51 e2                                      subs r4, r1, #0
0050a8f8  00 70 a0 e1                                      mov r7, r0
0050a8fc  06 60 8f e0                                      add r6, pc, r6
0050a900  15 00 00 0a                                      beq #0x50a95c
0050a904  58 80 9f e5                                      ldr r8, [pc, #0x58]
0050a908  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0050a90c  07 00 a0 e1                                      mov r0, r7
0050a910  f5 ff ff eb                                      bl #0x50a8ec
0050a914  30 30 94 e5                                      ldr r3, [r4, #0x30]
0050a918  08 20 96 e7                                      ldr r2, [r6, r8]
0050a91c  08 50 94 e5                                      ldr r5, [r4, #8]
0050a920  00 00 53 e3                                      cmp r3, #0
0050a924  08 20 82 e2                                      add r2, r2, #8
0050a928  28 20 84 e5                                      str r2, [r4, #0x28]
0050a92c  03 00 00 0a                                      beq #0x50a940
0050a930  00 20 93 e5                                      ldr r2, [r3]
0050a934  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0050a938  00 00 83 e0                                      add r0, r3, r0
0050a93c  10 4b f8 eb                                      bl #0x31d584
0050a940  10 00 84 e2                                      add r0, r4, #0x10
0050a944  42 36 f8 eb                                      bl #0x318254
0050a948  04 00 a0 e1                                      mov r0, r4
0050a94c  34 10 a0 e3                                      mov r1, #0x34
0050a950  6a f9 07 eb                                      bl #0x708f00
0050a954  00 40 55 e2                                      subs r4, r5, #0
0050a958  ea ff ff 1a                                      bne #0x50a908
0050a95c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0050a960  94 a1 48 00 20 49 00 00                          .byte 0x94, 0xa1, 0x48, 0x00, 0x20, 0x49, 0x00, 0x00

; FUNCTION 0x0050ac6c, declared_size=128, range_size=128, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager9SceneNodeEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> const&)
; decoder-mode: arm
0050ac6c  70 40 2d e9                                      push {r4, r5, r6, lr}
0050ac70  08 d0 4d e2                                      sub sp, sp, #8
0050ac74  34 30 a0 e3                                      mov r3, #0x34
0050ac78  08 00 8d e2                                      add r0, sp, #8
0050ac7c  04 30 20 e5                                      str r3, [r0, #-4]!
0050ac80  01 60 a0 e1                                      mov r6, r1
0050ac84  8d f8 07 eb                                      bl #0x708ec0
0050ac88  00 40 a0 e1                                      mov r4, r0
0050ac8c  10 00 80 e2                                      add r0, r0, #0x10
0050ac90  20 00 84 e5                                      str r0, [r4, #0x20]
0050ac94  24 00 84 e5                                      str r0, [r4, #0x24]
0050ac98  14 10 96 e5                                      ldr r1, [r6, #0x14]
0050ac9c  10 20 96 e5                                      ldr r2, [r6, #0x10]
0050aca0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0050aca4  8f 1a f8 eb                                      bl #0x3116e8
0050aca8  38 30 9f e5                                      ldr r3, [pc, #0x38]
0050acac  05 50 8f e0                                      add r5, pc, r5
0050acb0  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0050acb4  03 30 95 e7                                      ldr r3, [r5, r3]
0050acb8  00 20 a0 e3                                      mov r2, #0
0050acbc  2c 10 84 e5                                      str r1, [r4, #0x2c]
0050acc0  08 30 83 e2                                      add r3, r3, #8
0050acc4  28 30 84 e5                                      str r3, [r4, #0x28]
0050acc8  20 30 96 e5                                      ldr r3, [r6, #0x20]
0050accc  0c 20 84 e5                                      str r2, [r4, #0xc]
0050acd0  08 20 84 e5                                      str r2, [r4, #8]
0050acd4  30 30 84 e5                                      str r3, [r4, #0x30]
0050acd8  04 00 a0 e1                                      mov r0, r4
0050acdc  08 d0 8d e2                                      add sp, sp, #8
0050ace0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0050ace4  e4 9d 48 00 20 49 00 00                          .byte 0xe4, 0x9d, 0x48, 0x00, 0x20, 0x49, 0x00, 0x00

; FUNCTION 0x0050acec, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager9SceneNodeEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0050acec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0050acf0  02 00 51 e1                                      cmp r1, r2
0050acf4  0c d0 4d e2                                      sub sp, sp, #0xc
0050acf8  01 40 a0 e1                                      mov r4, r1
0050acfc  02 50 a0 e1                                      mov r5, r2
0050ad00  00 60 a0 e1                                      mov r6, r0
0050ad04  23 00 00 0a                                      beq #0x50ad98
0050ad08  24 20 9d e5                                      ldr r2, [sp, #0x24]
0050ad0c  00 00 52 e3                                      cmp r2, #0
0050ad10  12 00 00 0a                                      beq #0x50ad60
0050ad14  03 10 a0 e1                                      mov r1, r3
0050ad18  04 00 a0 e1                                      mov r0, r4
0050ad1c  d2 ff ff eb                                      bl #0x50ac6c
0050ad20  0c 00 85 e5                                      str r0, [r5, #0xc]
0050ad24  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0050ad28  00 70 a0 e1                                      mov r7, r0
0050ad2c  03 00 55 e1                                      cmp r5, r3
0050ad30  16 00 00 0a                                      beq #0x50ad90
0050ad34  07 00 a0 e1                                      mov r0, r7
0050ad38  04 50 87 e5                                      str r5, [r7, #4]
0050ad3c  04 10 84 e2                                      add r1, r4, #4
0050ad40  86 22 f8 eb                                      bl #0x313760
0050ad44  10 30 94 e5                                      ldr r3, [r4, #0x10]
0050ad48  06 00 a0 e1                                      mov r0, r6
0050ad4c  01 30 83 e2                                      add r3, r3, #1
0050ad50  10 30 84 e5                                      str r3, [r4, #0x10]
0050ad54  00 70 86 e5                                      str r7, [r6]
0050ad58  0c d0 8d e2                                      add sp, sp, #0xc
0050ad5c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0050ad60  20 20 9d e5                                      ldr r2, [sp, #0x20]
0050ad64  00 00 52 e3                                      cmp r2, #0
0050ad68  12 00 00 0a                                      beq #0x50adb8
0050ad6c  03 10 a0 e1                                      mov r1, r3
0050ad70  04 00 a0 e1                                      mov r0, r4
0050ad74  bc ff ff eb                                      bl #0x50ac6c
0050ad78  08 00 85 e5                                      str r0, [r5, #8]
0050ad7c  08 30 94 e5                                      ldr r3, [r4, #8]
0050ad80  00 70 a0 e1                                      mov r7, r0
0050ad84  03 00 55 e1                                      cmp r5, r3
0050ad88  08 00 84 05                                      streq r0, [r4, #8]
0050ad8c  e8 ff ff ea                                      b #0x50ad34
0050ad90  0c 70 84 e5                                      str r7, [r4, #0xc]
0050ad94  e6 ff ff ea                                      b #0x50ad34
0050ad98  03 10 a0 e1                                      mov r1, r3
0050ad9c  04 00 a0 e1                                      mov r0, r4
0050ada0  b1 ff ff eb                                      bl #0x50ac6c
0050ada4  00 70 a0 e1                                      mov r7, r0
0050ada8  08 00 84 e5                                      str r0, [r4, #8]
0050adac  04 00 84 e5                                      str r0, [r4, #4]
0050adb0  0c 00 84 e5                                      str r0, [r4, #0xc]
0050adb4  de ff ff ea                                      b #0x50ad34
0050adb8  14 00 81 e2                                      add r0, r1, #0x14
0050adbc  10 20 85 e2                                      add r2, r5, #0x10
0050adc0  03 10 a0 e1                                      mov r1, r3
0050adc4  04 30 8d e5                                      str r3, [sp, #4]
0050adc8  8a 23 f8 eb                                      bl #0x313bf8
0050adcc  00 00 50 e3                                      cmp r0, #0
0050add0  04 30 9d e5                                      ldr r3, [sp, #4]
0050add4  ce ff ff 0a                                      beq #0x50ad14
0050add8  e3 ff ff ea                                      b #0x50ad6c

; FUNCTION 0x0050b380, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager9SceneNodeEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> const&)
; decoder-mode: arm
0050b380  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050b384  04 50 91 e5                                      ldr r5, [r1, #4]
0050b388  14 d0 4d e2                                      sub sp, sp, #0x14
0050b38c  01 90 a0 e1                                      mov sb, r1
0050b390  00 00 55 e3                                      cmp r5, #0
0050b394  00 40 a0 e1                                      mov r4, r0
0050b398  02 80 a0 e1                                      mov r8, r2
0050b39c  38 00 00 0a                                      beq #0x50b484
0050b3a0  14 70 92 e5                                      ldr r7, [r2, #0x14]
0050b3a4  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0050b3a8  0b a0 67 e0                                      rsb sl, r7, fp
0050b3ac  04 00 00 ea                                      b #0x50b3c4
0050b3b0  08 30 95 e5                                      ldr r3, [r5, #8]
0050b3b4  01 10 a0 e3                                      mov r1, #1
0050b3b8  00 00 53 e3                                      cmp r3, #0
0050b3bc  16 00 00 0a                                      beq #0x50b41c
0050b3c0  03 50 a0 e1                                      mov r5, r3
0050b3c4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0050b3c8  20 60 95 e5                                      ldr r6, [r5, #0x20]
0050b3cc  07 00 a0 e1                                      mov r0, r7
0050b3d0  03 10 a0 e1                                      mov r1, r3
0050b3d4  06 60 63 e0                                      rsb r6, r3, r6
0050b3d8  0a 00 56 e1                                      cmp r6, sl
0050b3dc  06 20 a0 b1                                      movlt r2, r6
0050b3e0  0a 20 a0 a1                                      movge r2, sl
0050b3e4  7d 0c f8 eb                                      bl #0x30e5e0
0050b3e8  00 00 50 e3                                      cmp r0, #0
0050b3ec  05 20 a0 e1                                      mov r2, r5
0050b3f0  03 00 00 1a                                      bne #0x50b404
0050b3f4  06 00 5a e1                                      cmp sl, r6
0050b3f8  ec ff ff ba                                      blt #0x50b3b0
0050b3fc  00 00 a0 d3                                      movle r0, #0
0050b400  01 00 a0 c3                                      movgt r0, #1
0050b404  00 00 50 e3                                      cmp r0, #0
0050b408  e8 ff ff ba                                      blt #0x50b3b0
0050b40c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0050b410  00 10 a0 e3                                      mov r1, #0
0050b414  00 00 53 e3                                      cmp r3, #0
0050b418  e8 ff ff 1a                                      bne #0x50b3c0
0050b41c  00 00 51 e3                                      cmp r1, #0
0050b420  05 a0 a0 01                                      moveq sl, r5
0050b424  17 00 00 1a                                      bne #0x50b488
0050b428  24 00 92 e5                                      ldr r0, [r2, #0x24]
0050b42c  20 60 92 e5                                      ldr r6, [r2, #0x20]
0050b430  0b b0 67 e0                                      rsb fp, r7, fp
0050b434  07 10 a0 e1                                      mov r1, r7
0050b438  06 60 60 e0                                      rsb r6, r0, r6
0050b43c  06 00 5b e1                                      cmp fp, r6
0050b440  0b 20 a0 b1                                      movlt r2, fp
0050b444  06 20 a0 a1                                      movge r2, r6
0050b448  64 0c f8 eb                                      bl #0x30e5e0
0050b44c  00 00 50 e3                                      cmp r0, #0
0050b450  03 00 00 1a                                      bne #0x50b464
0050b454  0b 00 56 e1                                      cmp r6, fp
0050b458  20 00 00 ba                                      blt #0x50b4e0
0050b45c  00 00 a0 d3                                      movle r0, #0
0050b460  01 00 a0 c3                                      movgt r0, #1
0050b464  00 00 50 e3                                      cmp r0, #0
0050b468  00 30 a0 a3                                      movge r3, #0
0050b46c  00 a0 84 a5                                      strge sl, [r4]
0050b470  04 30 c4 a5                                      strbge r3, [r4, #4]
0050b474  19 00 00 ba                                      blt #0x50b4e0
0050b478  04 00 a0 e1                                      mov r0, r4
0050b47c  14 d0 8d e2                                      add sp, sp, #0x14
0050b480  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050b484  01 50 a0 e1                                      mov r5, r1
0050b488  08 30 99 e5                                      ldr r3, [sb, #8]
0050b48c  03 00 55 e1                                      cmp r5, r3
0050b490  32 00 00 0a                                      beq #0x50b560
0050b494  00 30 d5 e5                                      ldrb r3, [r5]
0050b498  00 00 53 e3                                      cmp r3, #0
0050b49c  03 00 00 1a                                      bne #0x50b4b0
0050b4a0  04 30 95 e5                                      ldr r3, [r5, #4]
0050b4a4  04 30 93 e5                                      ldr r3, [r3, #4]
0050b4a8  03 00 55 e1                                      cmp r5, r3
0050b4ac  26 00 00 0a                                      beq #0x50b54c
0050b4b0  08 20 95 e5                                      ldr r2, [r5, #8]
0050b4b4  00 00 52 e3                                      cmp r2, #0
0050b4b8  01 00 00 1a                                      bne #0x50b4c4
0050b4bc  14 00 00 ea                                      b #0x50b514
0050b4c0  03 20 a0 e1                                      mov r2, r3
0050b4c4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0050b4c8  00 00 53 e3                                      cmp r3, #0
0050b4cc  fb ff ff 1a                                      bne #0x50b4c0
0050b4d0  02 a0 a0 e1                                      mov sl, r2
0050b4d4  14 70 98 e5                                      ldr r7, [r8, #0x14]
0050b4d8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050b4dc  d1 ff ff ea                                      b #0x50b428
0050b4e0  00 c0 a0 e3                                      mov ip, #0
0050b4e4  05 20 a0 e1                                      mov r2, r5
0050b4e8  08 30 a0 e1                                      mov r3, r8
0050b4ec  09 10 a0 e1                                      mov r1, sb
0050b4f0  08 00 8d e2                                      add r0, sp, #8
0050b4f4  04 c0 8d e5                                      str ip, [sp, #4]
0050b4f8  00 c0 8d e5                                      str ip, [sp]
0050b4fc  fa fd ff eb                                      bl #0x50acec
0050b500  08 30 9d e5                                      ldr r3, [sp, #8]
0050b504  01 20 a0 e3                                      mov r2, #1
0050b508  04 20 c4 e5                                      strb r2, [r4, #4]
0050b50c  00 30 84 e5                                      str r3, [r4]
0050b510  d8 ff ff ea                                      b #0x50b478
0050b514  04 30 95 e5                                      ldr r3, [r5, #4]
0050b518  08 20 93 e5                                      ldr r2, [r3, #8]
0050b51c  02 00 55 e1                                      cmp r5, r2
0050b520  01 00 00 0a                                      beq #0x50b52c
0050b524  19 00 00 ea                                      b #0x50b590
0050b528  02 30 a0 e1                                      mov r3, r2
0050b52c  04 20 93 e5                                      ldr r2, [r3, #4]
0050b530  08 10 92 e5                                      ldr r1, [r2, #8]
0050b534  03 00 51 e1                                      cmp r1, r3
0050b538  fa ff ff 0a                                      beq #0x50b528
0050b53c  14 70 98 e5                                      ldr r7, [r8, #0x14]
0050b540  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050b544  02 a0 a0 e1                                      mov sl, r2
0050b548  b6 ff ff ea                                      b #0x50b428
0050b54c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0050b550  14 70 98 e5                                      ldr r7, [r8, #0x14]
0050b554  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050b558  02 a0 a0 e1                                      mov sl, r2
0050b55c  b1 ff ff ea                                      b #0x50b428
0050b560  05 20 a0 e1                                      mov r2, r5
0050b564  08 30 a0 e1                                      mov r3, r8
0050b568  00 c0 a0 e3                                      mov ip, #0
0050b56c  09 10 a0 e1                                      mov r1, sb
0050b570  0c 00 8d e2                                      add r0, sp, #0xc
0050b574  20 10 8d e8                                      stm sp, {r5, ip}
0050b578  db fd ff eb                                      bl #0x50acec
0050b57c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0050b580  01 20 a0 e3                                      mov r2, #1
0050b584  04 20 c4 e5                                      strb r2, [r4, #4]
0050b588  00 30 84 e5                                      str r3, [r4]
0050b58c  b9 ff ff ea                                      b #0x50b478
0050b590  03 20 a0 e1                                      mov r2, r3
0050b594  cd ff ff ea                                      b #0x50b4d0

; FUNCTION 0x0050c1e4, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager9SceneNodeEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> const&)
; decoder-mode: arm
0050c1e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050c1e8  44 d0 4d e2                                      sub sp, sp, #0x44
0050c1ec  14 20 8d e5                                      str r2, [sp, #0x14]
0050c1f0  00 50 92 e5                                      ldr r5, [r2]
0050c1f4  08 20 91 e5                                      ldr r2, [r1, #8]
0050c1f8  01 60 a0 e1                                      mov r6, r1
0050c1fc  00 70 a0 e1                                      mov r7, r0
0050c200  02 00 55 e1                                      cmp r5, r2
0050c204  03 80 a0 e1                                      mov r8, r3
0050c208  7c 00 00 0a                                      beq #0x50c400
0050c20c  01 00 55 e1                                      cmp r5, r1
0050c210  d0 00 00 0a                                      beq #0x50c558
0050c214  00 30 d5 e5                                      ldrb r3, [r5]
0050c218  00 00 53 e3                                      cmp r3, #0
0050c21c  35 00 00 0a                                      beq #0x50c2f8
0050c220  08 40 95 e5                                      ldr r4, [r5, #8]
0050c224  00 00 54 e3                                      cmp r4, #0
0050c228  01 00 00 1a                                      bne #0x50c234
0050c22c  39 00 00 ea                                      b #0x50c318
0050c230  03 40 a0 e1                                      mov r4, r3
0050c234  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0050c238  00 00 53 e3                                      cmp r3, #0
0050c23c  fb ff ff 1a                                      bne #0x50c230
0050c240  24 30 95 e5                                      ldr r3, [r5, #0x24]
0050c244  14 90 98 e5                                      ldr sb, [r8, #0x14]
0050c248  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0050c24c  20 20 95 e5                                      ldr r2, [r5, #0x20]
0050c250  03 10 a0 e1                                      mov r1, r3
0050c254  0b b0 69 e0                                      rsb fp, sb, fp
0050c258  02 20 63 e0                                      rsb r2, r3, r2
0050c25c  18 20 8d e5                                      str r2, [sp, #0x18]
0050c260  09 00 a0 e1                                      mov r0, sb
0050c264  0b 00 52 e1                                      cmp r2, fp
0050c268  0b 20 a0 a1                                      movge r2, fp
0050c26c  0c 30 8d e5                                      str r3, [sp, #0xc]
0050c270  1c 20 8d e5                                      str r2, [sp, #0x1c]
0050c274  d9 08 f8 eb                                      bl #0x30e5e0
0050c278  00 00 50 e3                                      cmp r0, #0
0050c27c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0050c280  05 00 00 1a                                      bne #0x50c29c
0050c284  18 20 9d e5                                      ldr r2, [sp, #0x18]
0050c288  02 00 5b e1                                      cmp fp, r2
0050c28c  00 00 e0 b3                                      mvnlt r0, #0
0050c290  01 00 00 ba                                      blt #0x50c29c
0050c294  00 00 a0 d3                                      movle r0, #0
0050c298  01 00 a0 c3                                      movgt r0, #1
0050c29c  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0050c2a0  28 00 00 1a                                      bne #0x50c348
0050c2a4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0050c2a8  00 00 54 e3                                      cmp r4, #0
0050c2ac  01 00 00 1a                                      bne #0x50c2b8
0050c2b0  cc 00 00 ea                                      b #0x50c5e8
0050c2b4  02 40 a0 e1                                      mov r4, r2
0050c2b8  08 20 94 e5                                      ldr r2, [r4, #8]
0050c2bc  00 00 52 e3                                      cmp r2, #0
0050c2c0  fb ff ff 1a                                      bne #0x50c2b4
0050c2c4  00 00 5c e3                                      cmp ip, #0
0050c2c8  43 00 00 1a                                      bne #0x50c3dc
0050c2cc  03 00 a0 e1                                      mov r0, r3
0050c2d0  09 10 a0 e1                                      mov r1, sb
0050c2d4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0050c2d8  c0 08 f8 eb                                      bl #0x30e5e0
0050c2dc  00 00 50 e3                                      cmp r0, #0
0050c2e0  34 00 00 1a                                      bne #0x50c3b8
0050c2e4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0050c2e8  03 00 5b e1                                      cmp fp, r3
0050c2ec  32 00 00 ca                                      bgt #0x50c3bc
0050c2f0  00 50 87 e5                                      str r5, [r7]
0050c2f4  3e 00 00 ea                                      b #0x50c3f4
0050c2f8  04 30 95 e5                                      ldr r3, [r5, #4]
0050c2fc  04 30 93 e5                                      ldr r3, [r3, #4]
0050c300  03 00 55 e1                                      cmp r5, r3
0050c304  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0050c308  cc ff ff 0a                                      beq #0x50c240
0050c30c  08 40 95 e5                                      ldr r4, [r5, #8]
0050c310  00 00 54 e3                                      cmp r4, #0
0050c314  c6 ff ff 1a                                      bne #0x50c234
0050c318  04 40 95 e5                                      ldr r4, [r5, #4]
0050c31c  08 30 94 e5                                      ldr r3, [r4, #8]
0050c320  03 00 55 e1                                      cmp r5, r3
0050c324  01 00 00 0a                                      beq #0x50c330
0050c328  c4 ff ff ea                                      b #0x50c240
0050c32c  03 40 a0 e1                                      mov r4, r3
0050c330  04 30 94 e5                                      ldr r3, [r4, #4]
0050c334  08 20 93 e5                                      ldr r2, [r3, #8]
0050c338  04 00 52 e1                                      cmp r2, r4
0050c33c  fa ff ff 0a                                      beq #0x50c32c
0050c340  03 40 a0 e1                                      mov r4, r3
0050c344  bd ff ff ea                                      b #0x50c240
0050c348  24 20 94 e5                                      ldr r2, [r4, #0x24]
0050c34c  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0050c350  09 10 a0 e1                                      mov r1, sb
0050c354  02 00 a0 e1                                      mov r0, r2
0050c358  0a a0 62 e0                                      rsb sl, r2, sl
0050c35c  0a 00 5b e1                                      cmp fp, sl
0050c360  0b 20 a0 b1                                      movlt r2, fp
0050c364  0a 20 a0 a1                                      movge r2, sl
0050c368  0c 30 8d e5                                      str r3, [sp, #0xc]
0050c36c  10 c0 8d e5                                      str ip, [sp, #0x10]
0050c370  9a 08 f8 eb                                      bl #0x30e5e0
0050c374  00 00 50 e3                                      cmp r0, #0
0050c378  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0050c37c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0050c380  6f 00 00 1a                                      bne #0x50c544
0050c384  0a 00 5b e1                                      cmp fp, sl
0050c388  c5 ff ff da                                      ble #0x50c2a4
0050c38c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0050c390  00 00 5c e3                                      cmp ip, #0
0050c394  62 00 00 0a                                      beq #0x50c524
0050c398  00 c0 a0 e3                                      mov ip, #0
0050c39c  06 10 a0 e1                                      mov r1, r6
0050c3a0  05 20 a0 e1                                      mov r2, r5
0050c3a4  08 30 a0 e1                                      mov r3, r8
0050c3a8  07 00 a0 e1                                      mov r0, r7
0050c3ac  20 10 8d e8                                      stm sp, {r5, ip}
0050c3b0  4d fa ff eb                                      bl #0x50acec
0050c3b4  0e 00 00 ea                                      b #0x50c3f4
0050c3b8  cc ff ff aa                                      bge #0x50c2f0
0050c3bc  04 00 56 e1                                      cmp r6, r4
0050c3c0  9b 00 00 0a                                      beq #0x50c634
0050c3c4  14 00 86 e2                                      add r0, r6, #0x14
0050c3c8  08 10 a0 e1                                      mov r1, r8
0050c3cc  10 20 84 e2                                      add r2, r4, #0x10
0050c3d0  08 1e f8 eb                                      bl #0x313bf8
0050c3d4  00 00 50 e3                                      cmp r0, #0
0050c3d8  93 00 00 1a                                      bne #0x50c62c
0050c3dc  06 10 a0 e1                                      mov r1, r6
0050c3e0  08 20 a0 e1                                      mov r2, r8
0050c3e4  20 00 8d e2                                      add r0, sp, #0x20
0050c3e8  e4 fb ff eb                                      bl #0x50b380
0050c3ec  20 30 9d e5                                      ldr r3, [sp, #0x20]
0050c3f0  00 30 87 e5                                      str r3, [r7]
0050c3f4  07 00 a0 e1                                      mov r0, r7
0050c3f8  44 d0 8d e2                                      add sp, sp, #0x44
0050c3fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050c400  10 30 91 e5                                      ldr r3, [r1, #0x10]
0050c404  00 00 53 e3                                      cmp r3, #0
0050c408  9f 00 00 0a                                      beq #0x50c68c
0050c40c  14 30 98 e5                                      ldr r3, [r8, #0x14]
0050c410  24 10 95 e5                                      ldr r1, [r5, #0x24]
0050c414  10 40 98 e5                                      ldr r4, [r8, #0x10]
0050c418  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0050c41c  03 00 a0 e1                                      mov r0, r3
0050c420  04 40 63 e0                                      rsb r4, r3, r4
0050c424  0a a0 61 e0                                      rsb sl, r1, sl
0050c428  04 00 5a e1                                      cmp sl, r4
0050c42c  0a 20 a0 b1                                      movlt r2, sl
0050c430  04 20 a0 a1                                      movge r2, r4
0050c434  69 08 f8 eb                                      bl #0x30e5e0
0050c438  00 00 50 e3                                      cmp r0, #0
0050c43c  03 00 00 1a                                      bne #0x50c450
0050c440  0a 00 54 e1                                      cmp r4, sl
0050c444  d3 ff ff ba                                      blt #0x50c398
0050c448  00 00 a0 d3                                      movle r0, #0
0050c44c  01 00 a0 c3                                      movgt r0, #1
0050c450  00 00 50 e3                                      cmp r0, #0
0050c454  cf ff ff ba                                      blt #0x50c398
0050c458  14 a0 86 e2                                      add sl, r6, #0x14
0050c45c  10 10 85 e2                                      add r1, r5, #0x10
0050c460  0a 00 a0 e1                                      mov r0, sl
0050c464  08 20 a0 e1                                      mov r2, r8
0050c468  e2 1d f8 eb                                      bl #0x313bf8
0050c46c  00 00 50 e3                                      cmp r0, #0
0050c470  81 00 00 0a                                      beq #0x50c67c
0050c474  14 30 9d e5                                      ldr r3, [sp, #0x14]
0050c478  00 c0 93 e5                                      ldr ip, [r3]
0050c47c  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0050c480  00 00 54 e3                                      cmp r4, #0
0050c484  22 00 00 1a                                      bne #0x50c514
0050c488  04 30 9c e5                                      ldr r3, [ip, #4]
0050c48c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050c490  02 00 5c e1                                      cmp ip, r2
0050c494  0c 40 a0 11                                      movne r4, ip
0050c498  04 00 00 1a                                      bne #0x50c4b0
0050c49c  03 40 a0 e1                                      mov r4, r3
0050c4a0  04 30 93 e5                                      ldr r3, [r3, #4]
0050c4a4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050c4a8  04 00 52 e1                                      cmp r2, r4
0050c4ac  fa ff ff 0a                                      beq #0x50c49c
0050c4b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0050c4b4  02 00 53 e1                                      cmp r3, r2
0050c4b8  03 40 a0 11                                      movne r4, r3
0050c4bc  04 00 56 e1                                      cmp r6, r4
0050c4c0  7f 00 00 0a                                      beq #0x50c6c4
0050c4c4  0a 00 a0 e1                                      mov r0, sl
0050c4c8  08 10 a0 e1                                      mov r1, r8
0050c4cc  10 20 84 e2                                      add r2, r4, #0x10
0050c4d0  c8 1d f8 eb                                      bl #0x313bf8
0050c4d4  00 00 50 e3                                      cmp r0, #0
0050c4d8  60 00 00 0a                                      beq #0x50c660
0050c4dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0050c4e0  00 c0 92 e5                                      ldr ip, [r2]
0050c4e4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0050c4e8  00 00 5e e3                                      cmp lr, #0
0050c4ec  6c 00 00 0a                                      beq #0x50c6a4
0050c4f0  00 c0 a0 e3                                      mov ip, #0
0050c4f4  06 10 a0 e1                                      mov r1, r6
0050c4f8  04 20 a0 e1                                      mov r2, r4
0050c4fc  08 30 a0 e1                                      mov r3, r8
0050c500  07 00 a0 e1                                      mov r0, r7
0050c504  10 10 8d e8                                      stm sp, {r4, ip}
0050c508  f7 f9 ff eb                                      bl #0x50acec
0050c50c  b8 ff ff ea                                      b #0x50c3f4
0050c510  03 40 a0 e1                                      mov r4, r3
0050c514  08 30 94 e5                                      ldr r3, [r4, #8]
0050c518  00 00 53 e3                                      cmp r3, #0
0050c51c  fb ff ff 1a                                      bne #0x50c510
0050c520  e5 ff ff ea                                      b #0x50c4bc
0050c524  06 10 a0 e1                                      mov r1, r6
0050c528  04 20 a0 e1                                      mov r2, r4
0050c52c  08 30 a0 e1                                      mov r3, r8
0050c530  07 00 a0 e1                                      mov r0, r7
0050c534  00 c0 8d e5                                      str ip, [sp]
0050c538  04 40 8d e5                                      str r4, [sp, #4]
0050c53c  ea f9 ff eb                                      bl #0x50acec
0050c540  ab ff ff ea                                      b #0x50c3f4
0050c544  56 ff ff aa                                      bge #0x50c2a4
0050c548  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0050c54c  00 00 5c e3                                      cmp ip, #0
0050c550  90 ff ff 1a                                      bne #0x50c398
0050c554  f2 ff ff ea                                      b #0x50c524
0050c558  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0050c55c  14 10 93 e5                                      ldr r1, [r3, #0x14]
0050c560  10 90 93 e5                                      ldr sb, [r3, #0x10]
0050c564  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0050c568  24 30 94 e5                                      ldr r3, [r4, #0x24]
0050c56c  09 90 61 e0                                      rsb sb, r1, sb
0050c570  0a a0 63 e0                                      rsb sl, r3, sl
0050c574  0a 00 59 e1                                      cmp sb, sl
0050c578  09 20 a0 b1                                      movlt r2, sb
0050c57c  0a 20 a0 a1                                      movge r2, sl
0050c580  03 00 a0 e1                                      mov r0, r3
0050c584  15 08 f8 eb                                      bl #0x30e5e0
0050c588  00 00 50 e3                                      cmp r0, #0
0050c58c  03 00 00 1a                                      bne #0x50c5a0
0050c590  09 00 5a e1                                      cmp sl, sb
0050c594  03 00 00 ba                                      blt #0x50c5a8
0050c598  00 00 a0 d3                                      movle r0, #0
0050c59c  01 00 a0 c3                                      movgt r0, #1
0050c5a0  00 00 50 e3                                      cmp r0, #0
0050c5a4  08 00 00 aa                                      bge #0x50c5cc
0050c5a8  00 c0 a0 e3                                      mov ip, #0
0050c5ac  06 10 a0 e1                                      mov r1, r6
0050c5b0  04 20 a0 e1                                      mov r2, r4
0050c5b4  08 30 a0 e1                                      mov r3, r8
0050c5b8  07 00 a0 e1                                      mov r0, r7
0050c5bc  00 c0 8d e5                                      str ip, [sp]
0050c5c0  04 50 8d e5                                      str r5, [sp, #4]
0050c5c4  c8 f9 ff eb                                      bl #0x50acec
0050c5c8  89 ff ff ea                                      b #0x50c3f4
0050c5cc  06 10 a0 e1                                      mov r1, r6
0050c5d0  08 20 a0 e1                                      mov r2, r8
0050c5d4  28 00 8d e2                                      add r0, sp, #0x28
0050c5d8  68 fb ff eb                                      bl #0x50b380
0050c5dc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0050c5e0  00 30 87 e5                                      str r3, [r7]
0050c5e4  82 ff ff ea                                      b #0x50c3f4
0050c5e8  04 20 95 e5                                      ldr r2, [r5, #4]
0050c5ec  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0050c5f0  01 00 55 e1                                      cmp r5, r1
0050c5f4  05 40 a0 11                                      movne r4, r5
0050c5f8  04 00 00 0a                                      beq #0x50c610
0050c5fc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0050c600  01 00 52 e1                                      cmp r2, r1
0050c604  02 40 a0 11                                      movne r4, r2
0050c608  2d ff ff ea                                      b #0x50c2c4
0050c60c  01 20 a0 e1                                      mov r2, r1
0050c610  04 10 92 e5                                      ldr r1, [r2, #4]
0050c614  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0050c618  02 00 50 e1                                      cmp r0, r2
0050c61c  fa ff ff 0a                                      beq #0x50c60c
0050c620  02 40 a0 e1                                      mov r4, r2
0050c624  01 20 a0 e1                                      mov r2, r1
0050c628  f3 ff ff ea                                      b #0x50c5fc
0050c62c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0050c630  00 50 92 e5                                      ldr r5, [r2]
0050c634  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0050c638  00 00 5c e3                                      cmp ip, #0
0050c63c  ab ff ff 1a                                      bne #0x50c4f0
0050c640  06 10 a0 e1                                      mov r1, r6
0050c644  05 20 a0 e1                                      mov r2, r5
0050c648  08 30 a0 e1                                      mov r3, r8
0050c64c  07 00 a0 e1                                      mov r0, r7
0050c650  00 c0 8d e5                                      str ip, [sp]
0050c654  04 50 8d e5                                      str r5, [sp, #4]
0050c658  a3 f9 ff eb                                      bl #0x50acec
0050c65c  64 ff ff ea                                      b #0x50c3f4
0050c660  06 10 a0 e1                                      mov r1, r6
0050c664  08 20 a0 e1                                      mov r2, r8
0050c668  30 00 8d e2                                      add r0, sp, #0x30
0050c66c  43 fb ff eb                                      bl #0x50b380
0050c670  30 30 9d e5                                      ldr r3, [sp, #0x30]
0050c674  00 30 87 e5                                      str r3, [r7]
0050c678  5d ff ff ea                                      b #0x50c3f4
0050c67c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0050c680  00 30 92 e5                                      ldr r3, [r2]
0050c684  00 30 87 e5                                      str r3, [r7]
0050c688  59 ff ff ea                                      b #0x50c3f4
0050c68c  08 20 a0 e1                                      mov r2, r8
0050c690  38 00 8d e2                                      add r0, sp, #0x38
0050c694  39 fb ff eb                                      bl #0x50b380
0050c698  38 30 9d e5                                      ldr r3, [sp, #0x38]
0050c69c  00 30 87 e5                                      str r3, [r7]
0050c6a0  53 ff ff ea                                      b #0x50c3f4
0050c6a4  06 10 a0 e1                                      mov r1, r6
0050c6a8  0c 20 a0 e1                                      mov r2, ip
0050c6ac  08 30 a0 e1                                      mov r3, r8
0050c6b0  07 00 a0 e1                                      mov r0, r7
0050c6b4  00 e0 8d e5                                      str lr, [sp]
0050c6b8  04 c0 8d e5                                      str ip, [sp, #4]
0050c6bc  8a f9 ff eb                                      bl #0x50acec
0050c6c0  4b ff ff ea                                      b #0x50c3f4
0050c6c4  00 e0 a0 e3                                      mov lr, #0
0050c6c8  06 10 a0 e1                                      mov r1, r6
0050c6cc  0c 20 a0 e1                                      mov r2, ip
0050c6d0  08 30 a0 e1                                      mov r3, r8
0050c6d4  07 00 a0 e1                                      mov r0, r7
0050c6d8  00 e0 8d e5                                      str lr, [sp]
0050c6dc  04 c0 8d e5                                      str ip, [sp, #4]
0050c6e0  81 f9 ff eb                                      bl #0x50acec
0050c6e4  42 ff ff ea                                      b #0x50c3f4
