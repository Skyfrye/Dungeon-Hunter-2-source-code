; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00379fa8, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP12StreamBufferENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00379fa8  70 40 2d e9                                      push {r4, r5, r6, lr}
00379fac  00 40 51 e2                                      subs r4, r1, #0
00379fb0  00 60 a0 e1                                      mov r6, r0
00379fb4  0a 00 00 0a                                      beq #0x379fe4
00379fb8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00379fbc  06 00 a0 e1                                      mov r0, r6
00379fc0  f8 ff ff eb                                      bl #0x379fa8
00379fc4  08 50 94 e5                                      ldr r5, [r4, #8]
00379fc8  10 00 84 e2                                      add r0, r4, #0x10
00379fcc  76 66 fe eb                                      bl #0x3139ac
00379fd0  04 00 a0 e1                                      mov r0, r4
00379fd4  2c 10 a0 e3                                      mov r1, #0x2c
00379fd8  c8 3b 0e eb                                      bl #0x708f00
00379fdc  00 40 55 e2                                      subs r4, r5, #0
00379fe0  f4 ff ff 1a                                      bne #0x379fb8
00379fe4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037a560, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP12StreamBufferENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> const&)
; decoder-mode: arm
0037a560  30 40 2d e9                                      push {r4, r5, lr}
0037a564  0c d0 4d e2                                      sub sp, sp, #0xc
0037a568  2c 30 a0 e3                                      mov r3, #0x2c
0037a56c  08 00 8d e2                                      add r0, sp, #8
0037a570  04 30 20 e5                                      str r3, [r0, #-4]!
0037a574  01 50 a0 e1                                      mov r5, r1
0037a578  50 3a 0e eb                                      bl #0x708ec0
0037a57c  00 40 a0 e1                                      mov r4, r0
0037a580  10 00 80 e2                                      add r0, r0, #0x10
0037a584  20 00 84 e5                                      str r0, [r4, #0x20]
0037a588  24 00 84 e5                                      str r0, [r4, #0x24]
0037a58c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0037a590  14 10 95 e5                                      ldr r1, [r5, #0x14]
0037a594  53 5c fe eb                                      bl #0x3116e8
0037a598  18 20 95 e5                                      ldr r2, [r5, #0x18]
0037a59c  00 30 a0 e3                                      mov r3, #0
0037a5a0  0c 30 84 e5                                      str r3, [r4, #0xc]
0037a5a4  28 20 84 e5                                      str r2, [r4, #0x28]
0037a5a8  08 30 84 e5                                      str r3, [r4, #8]
0037a5ac  04 00 a0 e1                                      mov r0, r4
0037a5b0  0c d0 8d e2                                      add sp, sp, #0xc
0037a5b4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0037a5b8, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP12StreamBufferENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0037a5b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037a5bc  02 00 51 e1                                      cmp r1, r2
0037a5c0  0c d0 4d e2                                      sub sp, sp, #0xc
0037a5c4  01 40 a0 e1                                      mov r4, r1
0037a5c8  02 50 a0 e1                                      mov r5, r2
0037a5cc  00 60 a0 e1                                      mov r6, r0
0037a5d0  23 00 00 0a                                      beq #0x37a664
0037a5d4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0037a5d8  00 00 52 e3                                      cmp r2, #0
0037a5dc  12 00 00 0a                                      beq #0x37a62c
0037a5e0  03 10 a0 e1                                      mov r1, r3
0037a5e4  04 00 a0 e1                                      mov r0, r4
0037a5e8  dc ff ff eb                                      bl #0x37a560
0037a5ec  0c 00 85 e5                                      str r0, [r5, #0xc]
0037a5f0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0037a5f4  00 70 a0 e1                                      mov r7, r0
0037a5f8  03 00 55 e1                                      cmp r5, r3
0037a5fc  16 00 00 0a                                      beq #0x37a65c
0037a600  07 00 a0 e1                                      mov r0, r7
0037a604  04 50 87 e5                                      str r5, [r7, #4]
0037a608  04 10 84 e2                                      add r1, r4, #4
0037a60c  53 64 fe eb                                      bl #0x313760
0037a610  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037a614  06 00 a0 e1                                      mov r0, r6
0037a618  01 30 83 e2                                      add r3, r3, #1
0037a61c  10 30 84 e5                                      str r3, [r4, #0x10]
0037a620  00 70 86 e5                                      str r7, [r6]
0037a624  0c d0 8d e2                                      add sp, sp, #0xc
0037a628  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037a62c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0037a630  00 00 52 e3                                      cmp r2, #0
0037a634  12 00 00 0a                                      beq #0x37a684
0037a638  03 10 a0 e1                                      mov r1, r3
0037a63c  04 00 a0 e1                                      mov r0, r4
0037a640  c6 ff ff eb                                      bl #0x37a560
0037a644  08 00 85 e5                                      str r0, [r5, #8]
0037a648  08 30 94 e5                                      ldr r3, [r4, #8]
0037a64c  00 70 a0 e1                                      mov r7, r0
0037a650  03 00 55 e1                                      cmp r5, r3
0037a654  08 00 84 05                                      streq r0, [r4, #8]
0037a658  e8 ff ff ea                                      b #0x37a600
0037a65c  0c 70 84 e5                                      str r7, [r4, #0xc]
0037a660  e6 ff ff ea                                      b #0x37a600
0037a664  03 10 a0 e1                                      mov r1, r3
0037a668  04 00 a0 e1                                      mov r0, r4
0037a66c  bb ff ff eb                                      bl #0x37a560
0037a670  00 70 a0 e1                                      mov r7, r0
0037a674  08 00 84 e5                                      str r0, [r4, #8]
0037a678  04 00 84 e5                                      str r0, [r4, #4]
0037a67c  0c 00 84 e5                                      str r0, [r4, #0xc]
0037a680  de ff ff ea                                      b #0x37a600
0037a684  14 00 81 e2                                      add r0, r1, #0x14
0037a688  10 20 85 e2                                      add r2, r5, #0x10
0037a68c  03 10 a0 e1                                      mov r1, r3
0037a690  04 30 8d e5                                      str r3, [sp, #4]
0037a694  57 65 fe eb                                      bl #0x313bf8
0037a698  00 00 50 e3                                      cmp r0, #0
0037a69c  04 30 9d e5                                      ldr r3, [sp, #4]
0037a6a0  ce ff ff 0a                                      beq #0x37a5e0
0037a6a4  e3 ff ff ea                                      b #0x37a638

; FUNCTION 0x0037a6a8, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP12StreamBufferENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> const&)
; decoder-mode: arm
0037a6a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037a6ac  04 50 91 e5                                      ldr r5, [r1, #4]
0037a6b0  14 d0 4d e2                                      sub sp, sp, #0x14
0037a6b4  01 90 a0 e1                                      mov sb, r1
0037a6b8  00 00 55 e3                                      cmp r5, #0
0037a6bc  00 40 a0 e1                                      mov r4, r0
0037a6c0  02 80 a0 e1                                      mov r8, r2
0037a6c4  38 00 00 0a                                      beq #0x37a7ac
0037a6c8  14 70 92 e5                                      ldr r7, [r2, #0x14]
0037a6cc  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0037a6d0  0b a0 67 e0                                      rsb sl, r7, fp
0037a6d4  04 00 00 ea                                      b #0x37a6ec
0037a6d8  08 30 95 e5                                      ldr r3, [r5, #8]
0037a6dc  01 10 a0 e3                                      mov r1, #1
0037a6e0  00 00 53 e3                                      cmp r3, #0
0037a6e4  16 00 00 0a                                      beq #0x37a744
0037a6e8  03 50 a0 e1                                      mov r5, r3
0037a6ec  24 30 95 e5                                      ldr r3, [r5, #0x24]
0037a6f0  20 60 95 e5                                      ldr r6, [r5, #0x20]
0037a6f4  07 00 a0 e1                                      mov r0, r7
0037a6f8  03 10 a0 e1                                      mov r1, r3
0037a6fc  06 60 63 e0                                      rsb r6, r3, r6
0037a700  0a 00 56 e1                                      cmp r6, sl
0037a704  06 20 a0 b1                                      movlt r2, r6
0037a708  0a 20 a0 a1                                      movge r2, sl
0037a70c  b3 4f fe eb                                      bl #0x30e5e0
0037a710  00 00 50 e3                                      cmp r0, #0
0037a714  05 20 a0 e1                                      mov r2, r5
0037a718  03 00 00 1a                                      bne #0x37a72c
0037a71c  06 00 5a e1                                      cmp sl, r6
0037a720  ec ff ff ba                                      blt #0x37a6d8
0037a724  00 00 a0 d3                                      movle r0, #0
0037a728  01 00 a0 c3                                      movgt r0, #1
0037a72c  00 00 50 e3                                      cmp r0, #0
0037a730  e8 ff ff ba                                      blt #0x37a6d8
0037a734  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0037a738  00 10 a0 e3                                      mov r1, #0
0037a73c  00 00 53 e3                                      cmp r3, #0
0037a740  e8 ff ff 1a                                      bne #0x37a6e8
0037a744  00 00 51 e3                                      cmp r1, #0
0037a748  05 a0 a0 01                                      moveq sl, r5
0037a74c  17 00 00 1a                                      bne #0x37a7b0
0037a750  24 00 92 e5                                      ldr r0, [r2, #0x24]
0037a754  20 60 92 e5                                      ldr r6, [r2, #0x20]
0037a758  0b b0 67 e0                                      rsb fp, r7, fp
0037a75c  07 10 a0 e1                                      mov r1, r7
0037a760  06 60 60 e0                                      rsb r6, r0, r6
0037a764  06 00 5b e1                                      cmp fp, r6
0037a768  0b 20 a0 b1                                      movlt r2, fp
0037a76c  06 20 a0 a1                                      movge r2, r6
0037a770  9a 4f fe eb                                      bl #0x30e5e0
0037a774  00 00 50 e3                                      cmp r0, #0
0037a778  03 00 00 1a                                      bne #0x37a78c
0037a77c  0b 00 56 e1                                      cmp r6, fp
0037a780  20 00 00 ba                                      blt #0x37a808
0037a784  00 00 a0 d3                                      movle r0, #0
0037a788  01 00 a0 c3                                      movgt r0, #1
0037a78c  00 00 50 e3                                      cmp r0, #0
0037a790  00 30 a0 a3                                      movge r3, #0
0037a794  00 a0 84 a5                                      strge sl, [r4]
0037a798  04 30 c4 a5                                      strbge r3, [r4, #4]
0037a79c  19 00 00 ba                                      blt #0x37a808
0037a7a0  04 00 a0 e1                                      mov r0, r4
0037a7a4  14 d0 8d e2                                      add sp, sp, #0x14
0037a7a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037a7ac  01 50 a0 e1                                      mov r5, r1
0037a7b0  08 30 99 e5                                      ldr r3, [sb, #8]
0037a7b4  03 00 55 e1                                      cmp r5, r3
0037a7b8  32 00 00 0a                                      beq #0x37a888
0037a7bc  00 30 d5 e5                                      ldrb r3, [r5]
0037a7c0  00 00 53 e3                                      cmp r3, #0
0037a7c4  03 00 00 1a                                      bne #0x37a7d8
0037a7c8  04 30 95 e5                                      ldr r3, [r5, #4]
0037a7cc  04 30 93 e5                                      ldr r3, [r3, #4]
0037a7d0  03 00 55 e1                                      cmp r5, r3
0037a7d4  26 00 00 0a                                      beq #0x37a874
0037a7d8  08 20 95 e5                                      ldr r2, [r5, #8]
0037a7dc  00 00 52 e3                                      cmp r2, #0
0037a7e0  01 00 00 1a                                      bne #0x37a7ec
0037a7e4  14 00 00 ea                                      b #0x37a83c
0037a7e8  03 20 a0 e1                                      mov r2, r3
0037a7ec  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0037a7f0  00 00 53 e3                                      cmp r3, #0
0037a7f4  fb ff ff 1a                                      bne #0x37a7e8
0037a7f8  02 a0 a0 e1                                      mov sl, r2
0037a7fc  14 70 98 e5                                      ldr r7, [r8, #0x14]
0037a800  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0037a804  d1 ff ff ea                                      b #0x37a750
0037a808  00 c0 a0 e3                                      mov ip, #0
0037a80c  05 20 a0 e1                                      mov r2, r5
0037a810  08 30 a0 e1                                      mov r3, r8
0037a814  09 10 a0 e1                                      mov r1, sb
0037a818  08 00 8d e2                                      add r0, sp, #8
0037a81c  04 c0 8d e5                                      str ip, [sp, #4]
0037a820  00 c0 8d e5                                      str ip, [sp]
0037a824  63 ff ff eb                                      bl #0x37a5b8
0037a828  08 30 9d e5                                      ldr r3, [sp, #8]
0037a82c  01 20 a0 e3                                      mov r2, #1
0037a830  04 20 c4 e5                                      strb r2, [r4, #4]
0037a834  00 30 84 e5                                      str r3, [r4]
0037a838  d8 ff ff ea                                      b #0x37a7a0
0037a83c  04 30 95 e5                                      ldr r3, [r5, #4]
0037a840  08 20 93 e5                                      ldr r2, [r3, #8]
0037a844  02 00 55 e1                                      cmp r5, r2
0037a848  01 00 00 0a                                      beq #0x37a854
0037a84c  19 00 00 ea                                      b #0x37a8b8
0037a850  02 30 a0 e1                                      mov r3, r2
0037a854  04 20 93 e5                                      ldr r2, [r3, #4]
0037a858  08 10 92 e5                                      ldr r1, [r2, #8]
0037a85c  03 00 51 e1                                      cmp r1, r3
0037a860  fa ff ff 0a                                      beq #0x37a850
0037a864  14 70 98 e5                                      ldr r7, [r8, #0x14]
0037a868  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0037a86c  02 a0 a0 e1                                      mov sl, r2
0037a870  b6 ff ff ea                                      b #0x37a750
0037a874  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0037a878  14 70 98 e5                                      ldr r7, [r8, #0x14]
0037a87c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0037a880  02 a0 a0 e1                                      mov sl, r2
0037a884  b1 ff ff ea                                      b #0x37a750
0037a888  05 20 a0 e1                                      mov r2, r5
0037a88c  08 30 a0 e1                                      mov r3, r8
0037a890  00 c0 a0 e3                                      mov ip, #0
0037a894  09 10 a0 e1                                      mov r1, sb
0037a898  0c 00 8d e2                                      add r0, sp, #0xc
0037a89c  20 10 8d e8                                      stm sp, {r5, ip}
0037a8a0  44 ff ff eb                                      bl #0x37a5b8
0037a8a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0037a8a8  01 20 a0 e3                                      mov r2, #1
0037a8ac  04 20 c4 e5                                      strb r2, [r4, #4]
0037a8b0  00 30 84 e5                                      str r3, [r4]
0037a8b4  b9 ff ff ea                                      b #0x37a7a0
0037a8b8  03 20 a0 e1                                      mov r2, r3
0037a8bc  cd ff ff ea                                      b #0x37a7f8

; FUNCTION 0x0037abf8, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsP12StreamBufferENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> const&)
; decoder-mode: arm
0037abf8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037abfc  44 d0 4d e2                                      sub sp, sp, #0x44
0037ac00  14 20 8d e5                                      str r2, [sp, #0x14]
0037ac04  00 50 92 e5                                      ldr r5, [r2]
0037ac08  08 20 91 e5                                      ldr r2, [r1, #8]
0037ac0c  01 60 a0 e1                                      mov r6, r1
0037ac10  00 70 a0 e1                                      mov r7, r0
0037ac14  02 00 55 e1                                      cmp r5, r2
0037ac18  03 80 a0 e1                                      mov r8, r3
0037ac1c  7c 00 00 0a                                      beq #0x37ae14
0037ac20  01 00 55 e1                                      cmp r5, r1
0037ac24  d0 00 00 0a                                      beq #0x37af6c
0037ac28  00 30 d5 e5                                      ldrb r3, [r5]
0037ac2c  00 00 53 e3                                      cmp r3, #0
0037ac30  35 00 00 0a                                      beq #0x37ad0c
0037ac34  08 40 95 e5                                      ldr r4, [r5, #8]
0037ac38  00 00 54 e3                                      cmp r4, #0
0037ac3c  01 00 00 1a                                      bne #0x37ac48
0037ac40  39 00 00 ea                                      b #0x37ad2c
0037ac44  03 40 a0 e1                                      mov r4, r3
0037ac48  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0037ac4c  00 00 53 e3                                      cmp r3, #0
0037ac50  fb ff ff 1a                                      bne #0x37ac44
0037ac54  24 30 95 e5                                      ldr r3, [r5, #0x24]
0037ac58  14 90 98 e5                                      ldr sb, [r8, #0x14]
0037ac5c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0037ac60  20 20 95 e5                                      ldr r2, [r5, #0x20]
0037ac64  03 10 a0 e1                                      mov r1, r3
0037ac68  0b b0 69 e0                                      rsb fp, sb, fp
0037ac6c  02 20 63 e0                                      rsb r2, r3, r2
0037ac70  18 20 8d e5                                      str r2, [sp, #0x18]
0037ac74  09 00 a0 e1                                      mov r0, sb
0037ac78  0b 00 52 e1                                      cmp r2, fp
0037ac7c  0b 20 a0 a1                                      movge r2, fp
0037ac80  0c 30 8d e5                                      str r3, [sp, #0xc]
0037ac84  1c 20 8d e5                                      str r2, [sp, #0x1c]
0037ac88  54 4e fe eb                                      bl #0x30e5e0
0037ac8c  00 00 50 e3                                      cmp r0, #0
0037ac90  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0037ac94  05 00 00 1a                                      bne #0x37acb0
0037ac98  18 20 9d e5                                      ldr r2, [sp, #0x18]
0037ac9c  02 00 5b e1                                      cmp fp, r2
0037aca0  00 00 e0 b3                                      mvnlt r0, #0
0037aca4  01 00 00 ba                                      blt #0x37acb0
0037aca8  00 00 a0 d3                                      movle r0, #0
0037acac  01 00 a0 c3                                      movgt r0, #1
0037acb0  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
0037acb4  28 00 00 1a                                      bne #0x37ad5c
0037acb8  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0037acbc  00 00 54 e3                                      cmp r4, #0
0037acc0  01 00 00 1a                                      bne #0x37accc
0037acc4  cc 00 00 ea                                      b #0x37affc
0037acc8  02 40 a0 e1                                      mov r4, r2
0037accc  08 20 94 e5                                      ldr r2, [r4, #8]
0037acd0  00 00 52 e3                                      cmp r2, #0
0037acd4  fb ff ff 1a                                      bne #0x37acc8
0037acd8  00 00 5c e3                                      cmp ip, #0
0037acdc  43 00 00 1a                                      bne #0x37adf0
0037ace0  03 00 a0 e1                                      mov r0, r3
0037ace4  09 10 a0 e1                                      mov r1, sb
0037ace8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0037acec  3b 4e fe eb                                      bl #0x30e5e0
0037acf0  00 00 50 e3                                      cmp r0, #0
0037acf4  34 00 00 1a                                      bne #0x37adcc
0037acf8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0037acfc  03 00 5b e1                                      cmp fp, r3
0037ad00  32 00 00 ca                                      bgt #0x37add0
0037ad04  00 50 87 e5                                      str r5, [r7]
0037ad08  3e 00 00 ea                                      b #0x37ae08
0037ad0c  04 30 95 e5                                      ldr r3, [r5, #4]
0037ad10  04 30 93 e5                                      ldr r3, [r3, #4]
0037ad14  03 00 55 e1                                      cmp r5, r3
0037ad18  0c 40 95 05                                      ldreq r4, [r5, #0xc]
0037ad1c  cc ff ff 0a                                      beq #0x37ac54
0037ad20  08 40 95 e5                                      ldr r4, [r5, #8]
0037ad24  00 00 54 e3                                      cmp r4, #0
0037ad28  c6 ff ff 1a                                      bne #0x37ac48
0037ad2c  04 40 95 e5                                      ldr r4, [r5, #4]
0037ad30  08 30 94 e5                                      ldr r3, [r4, #8]
0037ad34  03 00 55 e1                                      cmp r5, r3
0037ad38  01 00 00 0a                                      beq #0x37ad44
0037ad3c  c4 ff ff ea                                      b #0x37ac54
0037ad40  03 40 a0 e1                                      mov r4, r3
0037ad44  04 30 94 e5                                      ldr r3, [r4, #4]
0037ad48  08 20 93 e5                                      ldr r2, [r3, #8]
0037ad4c  04 00 52 e1                                      cmp r2, r4
0037ad50  fa ff ff 0a                                      beq #0x37ad40
0037ad54  03 40 a0 e1                                      mov r4, r3
0037ad58  bd ff ff ea                                      b #0x37ac54
0037ad5c  24 20 94 e5                                      ldr r2, [r4, #0x24]
0037ad60  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0037ad64  09 10 a0 e1                                      mov r1, sb
0037ad68  02 00 a0 e1                                      mov r0, r2
0037ad6c  0a a0 62 e0                                      rsb sl, r2, sl
0037ad70  0a 00 5b e1                                      cmp fp, sl
0037ad74  0b 20 a0 b1                                      movlt r2, fp
0037ad78  0a 20 a0 a1                                      movge r2, sl
0037ad7c  0c 30 8d e5                                      str r3, [sp, #0xc]
0037ad80  10 c0 8d e5                                      str ip, [sp, #0x10]
0037ad84  15 4e fe eb                                      bl #0x30e5e0
0037ad88  00 00 50 e3                                      cmp r0, #0
0037ad8c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0037ad90  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0037ad94  6f 00 00 1a                                      bne #0x37af58
0037ad98  0a 00 5b e1                                      cmp fp, sl
0037ad9c  c5 ff ff da                                      ble #0x37acb8
0037ada0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0037ada4  00 00 5c e3                                      cmp ip, #0
0037ada8  62 00 00 0a                                      beq #0x37af38
0037adac  00 c0 a0 e3                                      mov ip, #0
0037adb0  06 10 a0 e1                                      mov r1, r6
0037adb4  05 20 a0 e1                                      mov r2, r5
0037adb8  08 30 a0 e1                                      mov r3, r8
0037adbc  07 00 a0 e1                                      mov r0, r7
0037adc0  20 10 8d e8                                      stm sp, {r5, ip}
0037adc4  fb fd ff eb                                      bl #0x37a5b8
0037adc8  0e 00 00 ea                                      b #0x37ae08
0037adcc  cc ff ff aa                                      bge #0x37ad04
0037add0  04 00 56 e1                                      cmp r6, r4
0037add4  9b 00 00 0a                                      beq #0x37b048
0037add8  14 00 86 e2                                      add r0, r6, #0x14
0037addc  08 10 a0 e1                                      mov r1, r8
0037ade0  10 20 84 e2                                      add r2, r4, #0x10
0037ade4  83 63 fe eb                                      bl #0x313bf8
0037ade8  00 00 50 e3                                      cmp r0, #0
0037adec  93 00 00 1a                                      bne #0x37b040
0037adf0  06 10 a0 e1                                      mov r1, r6
0037adf4  08 20 a0 e1                                      mov r2, r8
0037adf8  20 00 8d e2                                      add r0, sp, #0x20
0037adfc  29 fe ff eb                                      bl #0x37a6a8
0037ae00  20 30 9d e5                                      ldr r3, [sp, #0x20]
0037ae04  00 30 87 e5                                      str r3, [r7]
0037ae08  07 00 a0 e1                                      mov r0, r7
0037ae0c  44 d0 8d e2                                      add sp, sp, #0x44
0037ae10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037ae14  10 30 91 e5                                      ldr r3, [r1, #0x10]
0037ae18  00 00 53 e3                                      cmp r3, #0
0037ae1c  9f 00 00 0a                                      beq #0x37b0a0
0037ae20  14 30 98 e5                                      ldr r3, [r8, #0x14]
0037ae24  24 10 95 e5                                      ldr r1, [r5, #0x24]
0037ae28  10 40 98 e5                                      ldr r4, [r8, #0x10]
0037ae2c  20 a0 95 e5                                      ldr sl, [r5, #0x20]
0037ae30  03 00 a0 e1                                      mov r0, r3
0037ae34  04 40 63 e0                                      rsb r4, r3, r4
0037ae38  0a a0 61 e0                                      rsb sl, r1, sl
0037ae3c  04 00 5a e1                                      cmp sl, r4
0037ae40  0a 20 a0 b1                                      movlt r2, sl
0037ae44  04 20 a0 a1                                      movge r2, r4
0037ae48  e4 4d fe eb                                      bl #0x30e5e0
0037ae4c  00 00 50 e3                                      cmp r0, #0
0037ae50  03 00 00 1a                                      bne #0x37ae64
0037ae54  0a 00 54 e1                                      cmp r4, sl
0037ae58  d3 ff ff ba                                      blt #0x37adac
0037ae5c  00 00 a0 d3                                      movle r0, #0
0037ae60  01 00 a0 c3                                      movgt r0, #1
0037ae64  00 00 50 e3                                      cmp r0, #0
0037ae68  cf ff ff ba                                      blt #0x37adac
0037ae6c  14 a0 86 e2                                      add sl, r6, #0x14
0037ae70  10 10 85 e2                                      add r1, r5, #0x10
0037ae74  0a 00 a0 e1                                      mov r0, sl
0037ae78  08 20 a0 e1                                      mov r2, r8
0037ae7c  5d 63 fe eb                                      bl #0x313bf8
0037ae80  00 00 50 e3                                      cmp r0, #0
0037ae84  81 00 00 0a                                      beq #0x37b090
0037ae88  14 30 9d e5                                      ldr r3, [sp, #0x14]
0037ae8c  00 c0 93 e5                                      ldr ip, [r3]
0037ae90  0c 40 9c e5                                      ldr r4, [ip, #0xc]
0037ae94  00 00 54 e3                                      cmp r4, #0
0037ae98  22 00 00 1a                                      bne #0x37af28
0037ae9c  04 30 9c e5                                      ldr r3, [ip, #4]
0037aea0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0037aea4  02 00 5c e1                                      cmp ip, r2
0037aea8  0c 40 a0 11                                      movne r4, ip
0037aeac  04 00 00 1a                                      bne #0x37aec4
0037aeb0  03 40 a0 e1                                      mov r4, r3
0037aeb4  04 30 93 e5                                      ldr r3, [r3, #4]
0037aeb8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0037aebc  04 00 52 e1                                      cmp r2, r4
0037aec0  fa ff ff 0a                                      beq #0x37aeb0
0037aec4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0037aec8  02 00 53 e1                                      cmp r3, r2
0037aecc  03 40 a0 11                                      movne r4, r3
0037aed0  04 00 56 e1                                      cmp r6, r4
0037aed4  7f 00 00 0a                                      beq #0x37b0d8
0037aed8  0a 00 a0 e1                                      mov r0, sl
0037aedc  08 10 a0 e1                                      mov r1, r8
0037aee0  10 20 84 e2                                      add r2, r4, #0x10
0037aee4  43 63 fe eb                                      bl #0x313bf8
0037aee8  00 00 50 e3                                      cmp r0, #0
0037aeec  60 00 00 0a                                      beq #0x37b074
0037aef0  14 20 9d e5                                      ldr r2, [sp, #0x14]
0037aef4  00 c0 92 e5                                      ldr ip, [r2]
0037aef8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0037aefc  00 00 5e e3                                      cmp lr, #0
0037af00  6c 00 00 0a                                      beq #0x37b0b8
0037af04  00 c0 a0 e3                                      mov ip, #0
0037af08  06 10 a0 e1                                      mov r1, r6
0037af0c  04 20 a0 e1                                      mov r2, r4
0037af10  08 30 a0 e1                                      mov r3, r8
0037af14  07 00 a0 e1                                      mov r0, r7
0037af18  10 10 8d e8                                      stm sp, {r4, ip}
0037af1c  a5 fd ff eb                                      bl #0x37a5b8
0037af20  b8 ff ff ea                                      b #0x37ae08
0037af24  03 40 a0 e1                                      mov r4, r3
0037af28  08 30 94 e5                                      ldr r3, [r4, #8]
0037af2c  00 00 53 e3                                      cmp r3, #0
0037af30  fb ff ff 1a                                      bne #0x37af24
0037af34  e5 ff ff ea                                      b #0x37aed0
0037af38  06 10 a0 e1                                      mov r1, r6
0037af3c  04 20 a0 e1                                      mov r2, r4
0037af40  08 30 a0 e1                                      mov r3, r8
0037af44  07 00 a0 e1                                      mov r0, r7
0037af48  00 c0 8d e5                                      str ip, [sp]
0037af4c  04 40 8d e5                                      str r4, [sp, #4]
0037af50  98 fd ff eb                                      bl #0x37a5b8
0037af54  ab ff ff ea                                      b #0x37ae08
0037af58  56 ff ff aa                                      bge #0x37acb8
0037af5c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0037af60  00 00 5c e3                                      cmp ip, #0
0037af64  90 ff ff 1a                                      bne #0x37adac
0037af68  f2 ff ff ea                                      b #0x37af38
0037af6c  0c 40 95 e5                                      ldr r4, [r5, #0xc]
0037af70  14 10 93 e5                                      ldr r1, [r3, #0x14]
0037af74  10 90 93 e5                                      ldr sb, [r3, #0x10]
0037af78  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0037af7c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0037af80  09 90 61 e0                                      rsb sb, r1, sb
0037af84  0a a0 63 e0                                      rsb sl, r3, sl
0037af88  0a 00 59 e1                                      cmp sb, sl
0037af8c  09 20 a0 b1                                      movlt r2, sb
0037af90  0a 20 a0 a1                                      movge r2, sl
0037af94  03 00 a0 e1                                      mov r0, r3
0037af98  90 4d fe eb                                      bl #0x30e5e0
0037af9c  00 00 50 e3                                      cmp r0, #0
0037afa0  03 00 00 1a                                      bne #0x37afb4
0037afa4  09 00 5a e1                                      cmp sl, sb
0037afa8  03 00 00 ba                                      blt #0x37afbc
0037afac  00 00 a0 d3                                      movle r0, #0
0037afb0  01 00 a0 c3                                      movgt r0, #1
0037afb4  00 00 50 e3                                      cmp r0, #0
0037afb8  08 00 00 aa                                      bge #0x37afe0
0037afbc  00 c0 a0 e3                                      mov ip, #0
0037afc0  06 10 a0 e1                                      mov r1, r6
0037afc4  04 20 a0 e1                                      mov r2, r4
0037afc8  08 30 a0 e1                                      mov r3, r8
0037afcc  07 00 a0 e1                                      mov r0, r7
0037afd0  00 c0 8d e5                                      str ip, [sp]
0037afd4  04 50 8d e5                                      str r5, [sp, #4]
0037afd8  76 fd ff eb                                      bl #0x37a5b8
0037afdc  89 ff ff ea                                      b #0x37ae08
0037afe0  06 10 a0 e1                                      mov r1, r6
0037afe4  08 20 a0 e1                                      mov r2, r8
0037afe8  28 00 8d e2                                      add r0, sp, #0x28
0037afec  ad fd ff eb                                      bl #0x37a6a8
0037aff0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0037aff4  00 30 87 e5                                      str r3, [r7]
0037aff8  82 ff ff ea                                      b #0x37ae08
0037affc  04 20 95 e5                                      ldr r2, [r5, #4]
0037b000  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0037b004  01 00 55 e1                                      cmp r5, r1
0037b008  05 40 a0 11                                      movne r4, r5
0037b00c  04 00 00 0a                                      beq #0x37b024
0037b010  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0037b014  01 00 52 e1                                      cmp r2, r1
0037b018  02 40 a0 11                                      movne r4, r2
0037b01c  2d ff ff ea                                      b #0x37acd8
0037b020  01 20 a0 e1                                      mov r2, r1
0037b024  04 10 92 e5                                      ldr r1, [r2, #4]
0037b028  0c 00 91 e5                                      ldr r0, [r1, #0xc]
0037b02c  02 00 50 e1                                      cmp r0, r2
0037b030  fa ff ff 0a                                      beq #0x37b020
0037b034  02 40 a0 e1                                      mov r4, r2
0037b038  01 20 a0 e1                                      mov r2, r1
0037b03c  f3 ff ff ea                                      b #0x37b010
0037b040  14 20 9d e5                                      ldr r2, [sp, #0x14]
0037b044  00 50 92 e5                                      ldr r5, [r2]
0037b048  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0037b04c  00 00 5c e3                                      cmp ip, #0
0037b050  ab ff ff 1a                                      bne #0x37af04
0037b054  06 10 a0 e1                                      mov r1, r6
0037b058  05 20 a0 e1                                      mov r2, r5
0037b05c  08 30 a0 e1                                      mov r3, r8
0037b060  07 00 a0 e1                                      mov r0, r7
0037b064  00 c0 8d e5                                      str ip, [sp]
0037b068  04 50 8d e5                                      str r5, [sp, #4]
0037b06c  51 fd ff eb                                      bl #0x37a5b8
0037b070  64 ff ff ea                                      b #0x37ae08
0037b074  06 10 a0 e1                                      mov r1, r6
0037b078  08 20 a0 e1                                      mov r2, r8
0037b07c  30 00 8d e2                                      add r0, sp, #0x30
0037b080  88 fd ff eb                                      bl #0x37a6a8
0037b084  30 30 9d e5                                      ldr r3, [sp, #0x30]
0037b088  00 30 87 e5                                      str r3, [r7]
0037b08c  5d ff ff ea                                      b #0x37ae08
0037b090  14 20 9d e5                                      ldr r2, [sp, #0x14]
0037b094  00 30 92 e5                                      ldr r3, [r2]
0037b098  00 30 87 e5                                      str r3, [r7]
0037b09c  59 ff ff ea                                      b #0x37ae08
0037b0a0  08 20 a0 e1                                      mov r2, r8
0037b0a4  38 00 8d e2                                      add r0, sp, #0x38
0037b0a8  7e fd ff eb                                      bl #0x37a6a8
0037b0ac  38 30 9d e5                                      ldr r3, [sp, #0x38]
0037b0b0  00 30 87 e5                                      str r3, [r7]
0037b0b4  53 ff ff ea                                      b #0x37ae08
0037b0b8  06 10 a0 e1                                      mov r1, r6
0037b0bc  0c 20 a0 e1                                      mov r2, ip
0037b0c0  08 30 a0 e1                                      mov r3, r8
0037b0c4  07 00 a0 e1                                      mov r0, r7
0037b0c8  00 e0 8d e5                                      str lr, [sp]
0037b0cc  04 c0 8d e5                                      str ip, [sp, #4]
0037b0d0  38 fd ff eb                                      bl #0x37a5b8
0037b0d4  4b ff ff ea                                      b #0x37ae08
0037b0d8  00 e0 a0 e3                                      mov lr, #0
0037b0dc  06 10 a0 e1                                      mov r1, r6
0037b0e0  0c 20 a0 e1                                      mov r2, ip
0037b0e4  08 30 a0 e1                                      mov r3, r8
0037b0e8  07 00 a0 e1                                      mov r0, r7
0037b0ec  00 e0 8d e5                                      str lr, [sp]
0037b0f0  04 c0 8d e5                                      str ip, [sp, #4]
0037b0f4  2f fd ff eb                                      bl #0x37a5b8
0037b0f8  42 ff ff ea                                      b #0x37ae08
