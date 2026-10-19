; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050b034, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
0050b034  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050b038  20 21 9f e5                                      ldr r2, [pc, #0x120]
0050b03c  20 31 9f e5                                      ldr r3, [pc, #0x120]
0050b040  34 d0 4d e2                                      sub sp, sp, #0x34
0050b044  02 20 8f e0                                      add r2, pc, r2
0050b048  0c 30 8d e5                                      str r3, [sp, #0xc]
0050b04c  03 30 92 e7                                      ldr r3, [r2, r3]
0050b050  05 00 8d e9                                      stmib sp, {r0, r2}
0050b054  00 30 93 e5                                      ldr r3, [r3]
0050b058  01 a0 a0 e1                                      mov sl, r1
0050b05c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0050b060  04 50 90 e5                                      ldr r5, [r0, #4]
0050b064  00 00 55 e3                                      cmp r5, #0
0050b068  31 00 00 0a                                      beq #0x50b134
0050b06c  14 80 8d e2                                      add r8, sp, #0x14
0050b070  10 90 8d e2                                      add sb, sp, #0x10
0050b074  07 00 00 ea                                      b #0x50b098
0050b078  04 00 a0 e1                                      mov r0, r4
0050b07c  9f f7 07 eb                                      bl #0x708f00
0050b080  00 00 5b e3                                      cmp fp, #0
0050b084  04 50 8d a5                                      strge r5, [sp, #4]
0050b088  08 50 95 a5                                      ldrge r5, [r5, #8]
0050b08c  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
0050b090  00 00 55 e3                                      cmp r5, #0
0050b094  26 00 00 0a                                      beq #0x50b134
0050b098  00 10 9a e5                                      ldr r1, [sl]
0050b09c  09 20 a0 e1                                      mov r2, sb
0050b0a0  08 00 a0 e1                                      mov r0, r8
0050b0a4  10 24 f8 eb                                      bl #0x3140ec
0050b0a8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0050b0ac  28 40 9d e5                                      ldr r4, [sp, #0x28]
0050b0b0  20 70 95 e5                                      ldr r7, [r5, #0x20]
0050b0b4  24 60 9d e5                                      ldr r6, [sp, #0x24]
0050b0b8  03 00 a0 e1                                      mov r0, r3
0050b0bc  07 70 63 e0                                      rsb r7, r3, r7
0050b0c0  06 60 64 e0                                      rsb r6, r4, r6
0050b0c4  07 00 56 e1                                      cmp r6, r7
0050b0c8  06 20 a0 b1                                      movlt r2, r6
0050b0cc  07 20 a0 a1                                      movge r2, r7
0050b0d0  04 10 a0 e1                                      mov r1, r4
0050b0d4  41 0d f8 eb                                      bl #0x30e5e0
0050b0d8  00 b0 50 e2                                      subs fp, r0, #0
0050b0dc  04 00 00 1a                                      bne #0x50b0f4
0050b0e0  06 00 57 e1                                      cmp r7, r6
0050b0e4  00 b0 e0 b3                                      mvnlt fp, #0
0050b0e8  01 00 00 ba                                      blt #0x50b0f4
0050b0ec  00 b0 a0 d3                                      movle fp, #0
0050b0f0  01 b0 a0 c3                                      movgt fp, #1
0050b0f4  08 00 54 e1                                      cmp r4, r8
0050b0f8  e0 ff ff 0a                                      beq #0x50b080
0050b0fc  00 00 54 e3                                      cmp r4, #0
0050b100  de ff ff 0a                                      beq #0x50b080
0050b104  14 10 9d e5                                      ldr r1, [sp, #0x14]
0050b108  01 10 64 e0                                      rsb r1, r4, r1
0050b10c  80 00 51 e3                                      cmp r1, #0x80
0050b110  d8 ff ff 9a                                      bls #0x50b078
0050b114  04 00 a0 e1                                      mov r0, r4
0050b118  c8 14 f8 eb                                      bl #0x310440
0050b11c  00 00 5b e3                                      cmp fp, #0
0050b120  04 50 8d a5                                      strge r5, [sp, #4]
0050b124  08 50 95 a5                                      ldrge r5, [r5, #8]
0050b128  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
0050b12c  00 00 55 e3                                      cmp r5, #0
0050b130  d8 ff ff 1a                                      bne #0x50b098
0050b134  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0050b138  08 10 9d e5                                      ldr r1, [sp, #8]
0050b13c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0050b140  00 30 91 e7                                      ldr r3, [r1, r0]
0050b144  04 00 9d e5                                      ldr r0, [sp, #4]
0050b148  00 30 93 e5                                      ldr r3, [r3]
0050b14c  03 00 52 e1                                      cmp r2, r3
0050b150  01 00 00 1a                                      bne #0x50b15c
0050b154  34 d0 8d e2                                      add sp, sp, #0x34
0050b158  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050b15c  6b 0c f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050b160  4c 9a 48 00 ac 40 00 00                          .byte 0x4c, 0x9a, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0050b66c, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12AssetManager7TextureEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findISsEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::_M_find<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
0050b66c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0050b670  04 40 90 e5                                      ldr r4, [r0, #4]
0050b674  00 a0 a0 e1                                      mov sl, r0
0050b678  00 90 a0 e1                                      mov sb, r0
0050b67c  00 00 54 e3                                      cmp r4, #0
0050b680  29 00 00 0a                                      beq #0x50b72c
0050b684  10 60 91 e5                                      ldr r6, [r1, #0x10]
0050b688  14 70 91 e5                                      ldr r7, [r1, #0x14]
0050b68c  00 80 a0 e1                                      mov r8, r0
0050b690  06 60 67 e0                                      rsb r6, r7, r6
0050b694  05 00 00 ea                                      b #0x50b6b0
0050b698  06 00 55 e1                                      cmp r5, r6
0050b69c  0f 00 00 ba                                      blt #0x50b6e0
0050b6a0  04 80 a0 e1                                      mov r8, r4
0050b6a4  08 40 94 e5                                      ldr r4, [r4, #8]
0050b6a8  00 00 54 e3                                      cmp r4, #0
0050b6ac  0e 00 00 0a                                      beq #0x50b6ec
0050b6b0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0050b6b4  20 50 94 e5                                      ldr r5, [r4, #0x20]
0050b6b8  07 10 a0 e1                                      mov r1, r7
0050b6bc  03 00 a0 e1                                      mov r0, r3
0050b6c0  05 50 63 e0                                      rsb r5, r3, r5
0050b6c4  05 00 56 e1                                      cmp r6, r5
0050b6c8  06 20 a0 b1                                      movlt r2, r6
0050b6cc  05 20 a0 a1                                      movge r2, r5
0050b6d0  c2 0b f8 eb                                      bl #0x30e5e0
0050b6d4  00 00 50 e3                                      cmp r0, #0
0050b6d8  ee ff ff 0a                                      beq #0x50b698
0050b6dc  ef ff ff aa                                      bge #0x50b6a0
0050b6e0  0c 40 94 e5                                      ldr r4, [r4, #0xc]
0050b6e4  00 00 54 e3                                      cmp r4, #0
0050b6e8  f0 ff ff 1a                                      bne #0x50b6b0
0050b6ec  0a 00 58 e1                                      cmp r8, sl
0050b6f0  0c 00 00 0a                                      beq #0x50b728
0050b6f4  24 30 98 e5                                      ldr r3, [r8, #0x24]
0050b6f8  20 40 98 e5                                      ldr r4, [r8, #0x20]
0050b6fc  07 00 a0 e1                                      mov r0, r7
0050b700  03 10 a0 e1                                      mov r1, r3
0050b704  04 40 63 e0                                      rsb r4, r3, r4
0050b708  06 00 54 e1                                      cmp r4, r6
0050b70c  04 20 a0 b1                                      movlt r2, r4
0050b710  06 20 a0 a1                                      movge r2, r6
0050b714  b1 0b f8 eb                                      bl #0x30e5e0
0050b718  00 00 50 e3                                      cmp r0, #0
0050b71c  04 00 00 1a                                      bne #0x50b734
0050b720  04 00 56 e1                                      cmp r6, r4
0050b724  00 00 00 ba                                      blt #0x50b72c
0050b728  08 90 a0 e1                                      mov sb, r8
0050b72c  09 00 a0 e1                                      mov r0, sb
0050b730  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0050b734  fb ff ff aa                                      bge #0x50b728
0050b738  09 00 a0 e1                                      mov r0, sb
0050b73c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
