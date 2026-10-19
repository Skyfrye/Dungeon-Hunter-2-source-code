; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f1b40, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003f1b40  70 40 2d e9                                      push {r4, r5, r6, lr}
003f1b44  00 40 51 e2                                      subs r4, r1, #0
003f1b48  00 60 a0 e1                                      mov r6, r0
003f1b4c  0a 00 00 0a                                      beq #0x3f1b7c
003f1b50  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003f1b54  06 00 a0 e1                                      mov r0, r6
003f1b58  f8 ff ff eb                                      bl #0x3f1b40
003f1b5c  08 50 94 e5                                      ldr r5, [r4, #8]
003f1b60  10 00 84 e2                                      add r0, r4, #0x10
003f1b64  90 87 fc eb                                      bl #0x3139ac
003f1b68  04 00 a0 e1                                      mov r0, r4
003f1b6c  2c 10 a0 e3                                      mov r1, #0x2c
003f1b70  e2 5c 0c eb                                      bl #0x708f00
003f1b74  00 40 55 e2                                      subs r4, r5, #0
003f1b78  f4 ff ff 1a                                      bne #0x3f1b50
003f1b7c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004147e0, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE14_M_create_nodeERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> const&)
; decoder-mode: arm
004147e0  30 40 2d e9                                      push {r4, r5, lr}
004147e4  0c d0 4d e2                                      sub sp, sp, #0xc
004147e8  2c 30 a0 e3                                      mov r3, #0x2c
004147ec  08 00 8d e2                                      add r0, sp, #8
004147f0  04 30 20 e5                                      str r3, [r0, #-4]!
004147f4  01 50 a0 e1                                      mov r5, r1
004147f8  b0 d1 0b eb                                      bl #0x708ec0
004147fc  00 40 a0 e1                                      mov r4, r0
00414800  10 00 80 e2                                      add r0, r0, #0x10
00414804  20 00 84 e5                                      str r0, [r4, #0x20]
00414808  24 00 84 e5                                      str r0, [r4, #0x24]
0041480c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00414810  14 10 95 e5                                      ldr r1, [r5, #0x14]
00414814  b3 f3 fb eb                                      bl #0x3116e8
00414818  18 20 95 e5                                      ldr r2, [r5, #0x18]
0041481c  00 30 a0 e3                                      mov r3, #0
00414820  0c 30 84 e5                                      str r3, [r4, #0xc]
00414824  28 20 84 e5                                      str r2, [r4, #0x28]
00414828  08 30 84 e5                                      str r3, [r4, #8]
0041482c  04 00 a0 e1                                      mov r0, r4
00414830  0c d0 8d e2                                      add sp, sp, #0xc
00414834  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00414838, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00414838  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0041483c  02 00 51 e1                                      cmp r1, r2
00414840  0c d0 4d e2                                      sub sp, sp, #0xc
00414844  01 40 a0 e1                                      mov r4, r1
00414848  02 50 a0 e1                                      mov r5, r2
0041484c  00 60 a0 e1                                      mov r6, r0
00414850  23 00 00 0a                                      beq #0x4148e4
00414854  24 20 9d e5                                      ldr r2, [sp, #0x24]
00414858  00 00 52 e3                                      cmp r2, #0
0041485c  12 00 00 0a                                      beq #0x4148ac
00414860  03 10 a0 e1                                      mov r1, r3
00414864  04 00 a0 e1                                      mov r0, r4
00414868  dc ff ff eb                                      bl #0x4147e0
0041486c  0c 00 85 e5                                      str r0, [r5, #0xc]
00414870  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00414874  00 70 a0 e1                                      mov r7, r0
00414878  03 00 55 e1                                      cmp r5, r3
0041487c  16 00 00 0a                                      beq #0x4148dc
00414880  07 00 a0 e1                                      mov r0, r7
00414884  04 50 87 e5                                      str r5, [r7, #4]
00414888  04 10 84 e2                                      add r1, r4, #4
0041488c  b3 fb fb eb                                      bl #0x313760
00414890  10 30 94 e5                                      ldr r3, [r4, #0x10]
00414894  06 00 a0 e1                                      mov r0, r6
00414898  01 30 83 e2                                      add r3, r3, #1
0041489c  10 30 84 e5                                      str r3, [r4, #0x10]
004148a0  00 70 86 e5                                      str r7, [r6]
004148a4  0c d0 8d e2                                      add sp, sp, #0xc
004148a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004148ac  20 20 9d e5                                      ldr r2, [sp, #0x20]
004148b0  00 00 52 e3                                      cmp r2, #0
004148b4  12 00 00 0a                                      beq #0x414904
004148b8  03 10 a0 e1                                      mov r1, r3
004148bc  04 00 a0 e1                                      mov r0, r4
004148c0  c6 ff ff eb                                      bl #0x4147e0
004148c4  08 00 85 e5                                      str r0, [r5, #8]
004148c8  08 30 94 e5                                      ldr r3, [r4, #8]
004148cc  00 70 a0 e1                                      mov r7, r0
004148d0  03 00 55 e1                                      cmp r5, r3
004148d4  08 00 84 05                                      streq r0, [r4, #8]
004148d8  e8 ff ff ea                                      b #0x414880
004148dc  0c 70 84 e5                                      str r7, [r4, #0xc]
004148e0  e6 ff ff ea                                      b #0x414880
004148e4  03 10 a0 e1                                      mov r1, r3
004148e8  04 00 a0 e1                                      mov r0, r4
004148ec  bb ff ff eb                                      bl #0x4147e0
004148f0  00 70 a0 e1                                      mov r7, r0
004148f4  08 00 84 e5                                      str r0, [r4, #8]
004148f8  04 00 84 e5                                      str r0, [r4, #4]
004148fc  0c 00 84 e5                                      str r0, [r4, #0xc]
00414900  de ff ff ea                                      b #0x414880
00414904  14 00 81 e2                                      add r0, r1, #0x14
00414908  10 20 85 e2                                      add r2, r5, #0x10
0041490c  03 10 a0 e1                                      mov r1, r3
00414910  04 30 8d e5                                      str r3, [sp, #4]
00414914  b7 fc fb eb                                      bl #0x313bf8
00414918  00 00 50 e3                                      cmp r0, #0
0041491c  04 30 9d e5                                      ldr r3, [sp, #4]
00414920  ce ff ff 0a                                      beq #0x414860
00414924  e3 ff ff ea                                      b #0x4148b8

; FUNCTION 0x00414928, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> const&)
; decoder-mode: arm
00414928  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041492c  04 50 91 e5                                      ldr r5, [r1, #4]
00414930  14 d0 4d e2                                      sub sp, sp, #0x14
00414934  01 90 a0 e1                                      mov sb, r1
00414938  00 00 55 e3                                      cmp r5, #0
0041493c  00 40 a0 e1                                      mov r4, r0
00414940  02 80 a0 e1                                      mov r8, r2
00414944  38 00 00 0a                                      beq #0x414a2c
00414948  14 70 92 e5                                      ldr r7, [r2, #0x14]
0041494c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
00414950  0b a0 67 e0                                      rsb sl, r7, fp
00414954  04 00 00 ea                                      b #0x41496c
00414958  08 30 95 e5                                      ldr r3, [r5, #8]
0041495c  01 10 a0 e3                                      mov r1, #1
00414960  00 00 53 e3                                      cmp r3, #0
00414964  16 00 00 0a                                      beq #0x4149c4
00414968  03 50 a0 e1                                      mov r5, r3
0041496c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00414970  20 60 95 e5                                      ldr r6, [r5, #0x20]
00414974  07 00 a0 e1                                      mov r0, r7
00414978  03 10 a0 e1                                      mov r1, r3
0041497c  06 60 63 e0                                      rsb r6, r3, r6
00414980  0a 00 56 e1                                      cmp r6, sl
00414984  06 20 a0 b1                                      movlt r2, r6
00414988  0a 20 a0 a1                                      movge r2, sl
0041498c  13 e7 fb eb                                      bl #0x30e5e0
00414990  00 00 50 e3                                      cmp r0, #0
00414994  05 20 a0 e1                                      mov r2, r5
00414998  03 00 00 1a                                      bne #0x4149ac
0041499c  06 00 5a e1                                      cmp sl, r6
004149a0  ec ff ff ba                                      blt #0x414958
004149a4  00 00 a0 d3                                      movle r0, #0
004149a8  01 00 a0 c3                                      movgt r0, #1
004149ac  00 00 50 e3                                      cmp r0, #0
004149b0  e8 ff ff ba                                      blt #0x414958
004149b4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004149b8  00 10 a0 e3                                      mov r1, #0
004149bc  00 00 53 e3                                      cmp r3, #0
004149c0  e8 ff ff 1a                                      bne #0x414968
004149c4  00 00 51 e3                                      cmp r1, #0
004149c8  05 a0 a0 01                                      moveq sl, r5
004149cc  17 00 00 1a                                      bne #0x414a30
004149d0  24 00 92 e5                                      ldr r0, [r2, #0x24]
004149d4  20 60 92 e5                                      ldr r6, [r2, #0x20]
004149d8  0b b0 67 e0                                      rsb fp, r7, fp
004149dc  07 10 a0 e1                                      mov r1, r7
004149e0  06 60 60 e0                                      rsb r6, r0, r6
004149e4  06 00 5b e1                                      cmp fp, r6
004149e8  0b 20 a0 b1                                      movlt r2, fp
004149ec  06 20 a0 a1                                      movge r2, r6
004149f0  fa e6 fb eb                                      bl #0x30e5e0
004149f4  00 00 50 e3                                      cmp r0, #0
004149f8  03 00 00 1a                                      bne #0x414a0c
004149fc  0b 00 56 e1                                      cmp r6, fp
00414a00  20 00 00 ba                                      blt #0x414a88
00414a04  00 00 a0 d3                                      movle r0, #0
00414a08  01 00 a0 c3                                      movgt r0, #1
00414a0c  00 00 50 e3                                      cmp r0, #0
00414a10  00 30 a0 a3                                      movge r3, #0
00414a14  00 a0 84 a5                                      strge sl, [r4]
00414a18  04 30 c4 a5                                      strbge r3, [r4, #4]
00414a1c  19 00 00 ba                                      blt #0x414a88
00414a20  04 00 a0 e1                                      mov r0, r4
00414a24  14 d0 8d e2                                      add sp, sp, #0x14
00414a28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00414a2c  01 50 a0 e1                                      mov r5, r1
00414a30  08 30 99 e5                                      ldr r3, [sb, #8]
00414a34  03 00 55 e1                                      cmp r5, r3
00414a38  32 00 00 0a                                      beq #0x414b08
00414a3c  00 30 d5 e5                                      ldrb r3, [r5]
00414a40  00 00 53 e3                                      cmp r3, #0
00414a44  03 00 00 1a                                      bne #0x414a58
00414a48  04 30 95 e5                                      ldr r3, [r5, #4]
00414a4c  04 30 93 e5                                      ldr r3, [r3, #4]
00414a50  03 00 55 e1                                      cmp r5, r3
00414a54  26 00 00 0a                                      beq #0x414af4
00414a58  08 20 95 e5                                      ldr r2, [r5, #8]
00414a5c  00 00 52 e3                                      cmp r2, #0
00414a60  01 00 00 1a                                      bne #0x414a6c
00414a64  14 00 00 ea                                      b #0x414abc
00414a68  03 20 a0 e1                                      mov r2, r3
00414a6c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00414a70  00 00 53 e3                                      cmp r3, #0
00414a74  fb ff ff 1a                                      bne #0x414a68
00414a78  02 a0 a0 e1                                      mov sl, r2
00414a7c  14 70 98 e5                                      ldr r7, [r8, #0x14]
00414a80  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00414a84  d1 ff ff ea                                      b #0x4149d0
00414a88  00 c0 a0 e3                                      mov ip, #0
00414a8c  05 20 a0 e1                                      mov r2, r5
00414a90  08 30 a0 e1                                      mov r3, r8
00414a94  09 10 a0 e1                                      mov r1, sb
00414a98  08 00 8d e2                                      add r0, sp, #8
00414a9c  04 c0 8d e5                                      str ip, [sp, #4]
00414aa0  00 c0 8d e5                                      str ip, [sp]
00414aa4  63 ff ff eb                                      bl #0x414838
00414aa8  08 30 9d e5                                      ldr r3, [sp, #8]
00414aac  01 20 a0 e3                                      mov r2, #1
00414ab0  04 20 c4 e5                                      strb r2, [r4, #4]
00414ab4  00 30 84 e5                                      str r3, [r4]
00414ab8  d8 ff ff ea                                      b #0x414a20
00414abc  04 30 95 e5                                      ldr r3, [r5, #4]
00414ac0  08 20 93 e5                                      ldr r2, [r3, #8]
00414ac4  02 00 55 e1                                      cmp r5, r2
00414ac8  01 00 00 0a                                      beq #0x414ad4
00414acc  19 00 00 ea                                      b #0x414b38
00414ad0  02 30 a0 e1                                      mov r3, r2
00414ad4  04 20 93 e5                                      ldr r2, [r3, #4]
00414ad8  08 10 92 e5                                      ldr r1, [r2, #8]
00414adc  03 00 51 e1                                      cmp r1, r3
00414ae0  fa ff ff 0a                                      beq #0x414ad0
00414ae4  14 70 98 e5                                      ldr r7, [r8, #0x14]
00414ae8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00414aec  02 a0 a0 e1                                      mov sl, r2
00414af0  b6 ff ff ea                                      b #0x4149d0
00414af4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00414af8  14 70 98 e5                                      ldr r7, [r8, #0x14]
00414afc  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00414b00  02 a0 a0 e1                                      mov sl, r2
00414b04  b1 ff ff ea                                      b #0x4149d0
00414b08  05 20 a0 e1                                      mov r2, r5
00414b0c  08 30 a0 e1                                      mov r3, r8
00414b10  00 c0 a0 e3                                      mov ip, #0
00414b14  09 10 a0 e1                                      mov r1, sb
00414b18  0c 00 8d e2                                      add r0, sp, #0xc
00414b1c  20 10 8d e8                                      stm sp, {r5, ip}
00414b20  44 ff ff eb                                      bl #0x414838
00414b24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00414b28  01 20 a0 e3                                      mov r2, #1
00414b2c  04 20 c4 e5                                      strb r2, [r4, #4]
00414b30  00 30 84 e5                                      str r3, [r4]
00414b34  b9 ff ff ea                                      b #0x414a20
00414b38  03 20 a0 e1                                      mov r2, r3
00414b3c  cd ff ff ea                                      b #0x414a78

; FUNCTION 0x00414b40, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> const&)
; decoder-mode: arm
00414b40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00414b44  44 d0 4d e2                                      sub sp, sp, #0x44
00414b48  14 20 8d e5                                      str r2, [sp, #0x14]
00414b4c  00 50 92 e5                                      ldr r5, [r2]
00414b50  08 20 91 e5                                      ldr r2, [r1, #8]
00414b54  01 60 a0 e1                                      mov r6, r1
00414b58  00 70 a0 e1                                      mov r7, r0
00414b5c  02 00 55 e1                                      cmp r5, r2
00414b60  03 80 a0 e1                                      mov r8, r3
00414b64  7c 00 00 0a                                      beq #0x414d5c
00414b68  01 00 55 e1                                      cmp r5, r1
00414b6c  d0 00 00 0a                                      beq #0x414eb4
00414b70  00 30 d5 e5                                      ldrb r3, [r5]
00414b74  00 00 53 e3                                      cmp r3, #0
00414b78  35 00 00 0a                                      beq #0x414c54
00414b7c  08 40 95 e5                                      ldr r4, [r5, #8]
00414b80  00 00 54 e3                                      cmp r4, #0
00414b84  01 00 00 1a                                      bne #0x414b90
00414b88  39 00 00 ea                                      b #0x414c74
00414b8c  03 40 a0 e1                                      mov r4, r3
00414b90  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00414b94  00 00 53 e3                                      cmp r3, #0
00414b98  fb ff ff 1a                                      bne #0x414b8c
00414b9c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00414ba0  14 90 98 e5                                      ldr sb, [r8, #0x14]
00414ba4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00414ba8  20 20 95 e5                                      ldr r2, [r5, #0x20]
00414bac  03 10 a0 e1                                      mov r1, r3
00414bb0  0b b0 69 e0                                      rsb fp, sb, fp
00414bb4  02 20 63 e0                                      rsb r2, r3, r2
00414bb8  18 20 8d e5                                      str r2, [sp, #0x18]
00414bbc  09 00 a0 e1                                      mov r0, sb
00414bc0  0b 00 52 e1                                      cmp r2, fp
00414bc4  0b 20 a0 a1                                      movge r2, fp
00414bc8  0c 30 8d e5                                      str r3, [sp, #0xc]
00414bcc  1c 20 8d e5                                      str r2, [sp, #0x1c]
00414bd0  82 e6 fb eb                                      bl #0x30e5e0
00414bd4  00 00 50 e3                                      cmp r0, #0
00414bd8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00414bdc  05 00 00 1a                                      bne #0x414bf8
00414be0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00414be4  02 00 5b e1                                      cmp fp, r2
00414be8  00 00 e0 b3                                      mvnlt r0, #0
00414bec  01 00 00 ba                                      blt #0x414bf8
00414bf0  00 00 a0 d3                                      movle r0, #0
00414bf4  01 00 a0 c3                                      movgt r0, #1
00414bf8  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
00414bfc  28 00 00 1a                                      bne #0x414ca4
00414c00  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00414c04  00 00 54 e3                                      cmp r4, #0
00414c08  01 00 00 1a                                      bne #0x414c14
00414c0c  cc 00 00 ea                                      b #0x414f44
00414c10  02 40 a0 e1                                      mov r4, r2
00414c14  08 20 94 e5                                      ldr r2, [r4, #8]
00414c18  00 00 52 e3                                      cmp r2, #0
00414c1c  fb ff ff 1a                                      bne #0x414c10
00414c20  00 00 5c e3                                      cmp ip, #0
00414c24  43 00 00 1a                                      bne #0x414d38
00414c28  03 00 a0 e1                                      mov r0, r3
00414c2c  09 10 a0 e1                                      mov r1, sb
00414c30  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00414c34  69 e6 fb eb                                      bl #0x30e5e0
00414c38  00 00 50 e3                                      cmp r0, #0
00414c3c  34 00 00 1a                                      bne #0x414d14
00414c40  18 30 9d e5                                      ldr r3, [sp, #0x18]
00414c44  03 00 5b e1                                      cmp fp, r3
00414c48  32 00 00 ca                                      bgt #0x414d18
00414c4c  00 50 87 e5                                      str r5, [r7]
00414c50  3e 00 00 ea                                      b #0x414d50
00414c54  04 30 95 e5                                      ldr r3, [r5, #4]
00414c58  04 30 93 e5                                      ldr r3, [r3, #4]
00414c5c  03 00 55 e1                                      cmp r5, r3
00414c60  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00414c64  cc ff ff 0a                                      beq #0x414b9c
00414c68  08 40 95 e5                                      ldr r4, [r5, #8]
00414c6c  00 00 54 e3                                      cmp r4, #0
00414c70  c6 ff ff 1a                                      bne #0x414b90
00414c74  04 40 95 e5                                      ldr r4, [r5, #4]
00414c78  08 30 94 e5                                      ldr r3, [r4, #8]
00414c7c  03 00 55 e1                                      cmp r5, r3
00414c80  01 00 00 0a                                      beq #0x414c8c
00414c84  c4 ff ff ea                                      b #0x414b9c
00414c88  03 40 a0 e1                                      mov r4, r3
00414c8c  04 30 94 e5                                      ldr r3, [r4, #4]
00414c90  08 20 93 e5                                      ldr r2, [r3, #8]
00414c94  04 00 52 e1                                      cmp r2, r4
00414c98  fa ff ff 0a                                      beq #0x414c88
00414c9c  03 40 a0 e1                                      mov r4, r3
00414ca0  bd ff ff ea                                      b #0x414b9c
00414ca4  24 20 94 e5                                      ldr r2, [r4, #0x24]
00414ca8  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00414cac  09 10 a0 e1                                      mov r1, sb
00414cb0  02 00 a0 e1                                      mov r0, r2
00414cb4  0a a0 62 e0                                      rsb sl, r2, sl
00414cb8  0a 00 5b e1                                      cmp fp, sl
00414cbc  0b 20 a0 b1                                      movlt r2, fp
00414cc0  0a 20 a0 a1                                      movge r2, sl
00414cc4  0c 30 8d e5                                      str r3, [sp, #0xc]
00414cc8  10 c0 8d e5                                      str ip, [sp, #0x10]
00414ccc  43 e6 fb eb                                      bl #0x30e5e0
00414cd0  00 00 50 e3                                      cmp r0, #0
00414cd4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00414cd8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00414cdc  6f 00 00 1a                                      bne #0x414ea0
00414ce0  0a 00 5b e1                                      cmp fp, sl
00414ce4  c5 ff ff da                                      ble #0x414c00
00414ce8  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00414cec  00 00 5c e3                                      cmp ip, #0
00414cf0  62 00 00 0a                                      beq #0x414e80
00414cf4  00 c0 a0 e3                                      mov ip, #0
00414cf8  06 10 a0 e1                                      mov r1, r6
00414cfc  05 20 a0 e1                                      mov r2, r5
00414d00  08 30 a0 e1                                      mov r3, r8
00414d04  07 00 a0 e1                                      mov r0, r7
00414d08  20 10 8d e8                                      stm sp, {r5, ip}
00414d0c  c9 fe ff eb                                      bl #0x414838
00414d10  0e 00 00 ea                                      b #0x414d50
00414d14  cc ff ff aa                                      bge #0x414c4c
00414d18  04 00 56 e1                                      cmp r6, r4
00414d1c  9b 00 00 0a                                      beq #0x414f90
00414d20  14 00 86 e2                                      add r0, r6, #0x14
00414d24  08 10 a0 e1                                      mov r1, r8
00414d28  10 20 84 e2                                      add r2, r4, #0x10
00414d2c  b1 fb fb eb                                      bl #0x313bf8
00414d30  00 00 50 e3                                      cmp r0, #0
00414d34  93 00 00 1a                                      bne #0x414f88
00414d38  06 10 a0 e1                                      mov r1, r6
00414d3c  08 20 a0 e1                                      mov r2, r8
00414d40  20 00 8d e2                                      add r0, sp, #0x20
00414d44  f7 fe ff eb                                      bl #0x414928
00414d48  20 30 9d e5                                      ldr r3, [sp, #0x20]
00414d4c  00 30 87 e5                                      str r3, [r7]
00414d50  07 00 a0 e1                                      mov r0, r7
00414d54  44 d0 8d e2                                      add sp, sp, #0x44
00414d58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00414d5c  10 30 91 e5                                      ldr r3, [r1, #0x10]
00414d60  00 00 53 e3                                      cmp r3, #0
00414d64  9f 00 00 0a                                      beq #0x414fe8
00414d68  14 30 98 e5                                      ldr r3, [r8, #0x14]
00414d6c  24 10 95 e5                                      ldr r1, [r5, #0x24]
00414d70  10 40 98 e5                                      ldr r4, [r8, #0x10]
00414d74  20 a0 95 e5                                      ldr sl, [r5, #0x20]
00414d78  03 00 a0 e1                                      mov r0, r3
00414d7c  04 40 63 e0                                      rsb r4, r3, r4
00414d80  0a a0 61 e0                                      rsb sl, r1, sl
00414d84  04 00 5a e1                                      cmp sl, r4
00414d88  0a 20 a0 b1                                      movlt r2, sl
00414d8c  04 20 a0 a1                                      movge r2, r4
00414d90  12 e6 fb eb                                      bl #0x30e5e0
00414d94  00 00 50 e3                                      cmp r0, #0
00414d98  03 00 00 1a                                      bne #0x414dac
00414d9c  0a 00 54 e1                                      cmp r4, sl
00414da0  d3 ff ff ba                                      blt #0x414cf4
00414da4  00 00 a0 d3                                      movle r0, #0
00414da8  01 00 a0 c3                                      movgt r0, #1
00414dac  00 00 50 e3                                      cmp r0, #0
00414db0  cf ff ff ba                                      blt #0x414cf4
00414db4  14 a0 86 e2                                      add sl, r6, #0x14
00414db8  10 10 85 e2                                      add r1, r5, #0x10
00414dbc  0a 00 a0 e1                                      mov r0, sl
00414dc0  08 20 a0 e1                                      mov r2, r8
00414dc4  8b fb fb eb                                      bl #0x313bf8
00414dc8  00 00 50 e3                                      cmp r0, #0
00414dcc  81 00 00 0a                                      beq #0x414fd8
00414dd0  14 30 9d e5                                      ldr r3, [sp, #0x14]
00414dd4  00 c0 93 e5                                      ldr ip, [r3]
00414dd8  0c 40 9c e5                                      ldr r4, [ip, #0xc]
00414ddc  00 00 54 e3                                      cmp r4, #0
00414de0  22 00 00 1a                                      bne #0x414e70
00414de4  04 30 9c e5                                      ldr r3, [ip, #4]
00414de8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00414dec  02 00 5c e1                                      cmp ip, r2
00414df0  0c 40 a0 11                                      movne r4, ip
00414df4  04 00 00 1a                                      bne #0x414e0c
00414df8  03 40 a0 e1                                      mov r4, r3
00414dfc  04 30 93 e5                                      ldr r3, [r3, #4]
00414e00  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00414e04  04 00 52 e1                                      cmp r2, r4
00414e08  fa ff ff 0a                                      beq #0x414df8
00414e0c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00414e10  02 00 53 e1                                      cmp r3, r2
00414e14  03 40 a0 11                                      movne r4, r3
00414e18  04 00 56 e1                                      cmp r6, r4
00414e1c  7f 00 00 0a                                      beq #0x415020
00414e20  0a 00 a0 e1                                      mov r0, sl
00414e24  08 10 a0 e1                                      mov r1, r8
00414e28  10 20 84 e2                                      add r2, r4, #0x10
00414e2c  71 fb fb eb                                      bl #0x313bf8
00414e30  00 00 50 e3                                      cmp r0, #0
00414e34  60 00 00 0a                                      beq #0x414fbc
00414e38  14 20 9d e5                                      ldr r2, [sp, #0x14]
00414e3c  00 c0 92 e5                                      ldr ip, [r2]
00414e40  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00414e44  00 00 5e e3                                      cmp lr, #0
00414e48  6c 00 00 0a                                      beq #0x415000
00414e4c  00 c0 a0 e3                                      mov ip, #0
00414e50  06 10 a0 e1                                      mov r1, r6
00414e54  04 20 a0 e1                                      mov r2, r4
00414e58  08 30 a0 e1                                      mov r3, r8
00414e5c  07 00 a0 e1                                      mov r0, r7
00414e60  10 10 8d e8                                      stm sp, {r4, ip}
00414e64  73 fe ff eb                                      bl #0x414838
00414e68  b8 ff ff ea                                      b #0x414d50
00414e6c  03 40 a0 e1                                      mov r4, r3
00414e70  08 30 94 e5                                      ldr r3, [r4, #8]
00414e74  00 00 53 e3                                      cmp r3, #0
00414e78  fb ff ff 1a                                      bne #0x414e6c
00414e7c  e5 ff ff ea                                      b #0x414e18
00414e80  06 10 a0 e1                                      mov r1, r6
00414e84  04 20 a0 e1                                      mov r2, r4
00414e88  08 30 a0 e1                                      mov r3, r8
00414e8c  07 00 a0 e1                                      mov r0, r7
00414e90  00 c0 8d e5                                      str ip, [sp]
00414e94  04 40 8d e5                                      str r4, [sp, #4]
00414e98  66 fe ff eb                                      bl #0x414838
00414e9c  ab ff ff ea                                      b #0x414d50
00414ea0  56 ff ff aa                                      bge #0x414c00
00414ea4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00414ea8  00 00 5c e3                                      cmp ip, #0
00414eac  90 ff ff 1a                                      bne #0x414cf4
00414eb0  f2 ff ff ea                                      b #0x414e80
00414eb4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00414eb8  14 10 93 e5                                      ldr r1, [r3, #0x14]
00414ebc  10 90 93 e5                                      ldr sb, [r3, #0x10]
00414ec0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00414ec4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00414ec8  09 90 61 e0                                      rsb sb, r1, sb
00414ecc  0a a0 63 e0                                      rsb sl, r3, sl
00414ed0  0a 00 59 e1                                      cmp sb, sl
00414ed4  09 20 a0 b1                                      movlt r2, sb
00414ed8  0a 20 a0 a1                                      movge r2, sl
00414edc  03 00 a0 e1                                      mov r0, r3
00414ee0  be e5 fb eb                                      bl #0x30e5e0
00414ee4  00 00 50 e3                                      cmp r0, #0
00414ee8  03 00 00 1a                                      bne #0x414efc
00414eec  09 00 5a e1                                      cmp sl, sb
00414ef0  03 00 00 ba                                      blt #0x414f04
00414ef4  00 00 a0 d3                                      movle r0, #0
00414ef8  01 00 a0 c3                                      movgt r0, #1
00414efc  00 00 50 e3                                      cmp r0, #0
00414f00  08 00 00 aa                                      bge #0x414f28
00414f04  00 c0 a0 e3                                      mov ip, #0
00414f08  06 10 a0 e1                                      mov r1, r6
00414f0c  04 20 a0 e1                                      mov r2, r4
00414f10  08 30 a0 e1                                      mov r3, r8
00414f14  07 00 a0 e1                                      mov r0, r7
00414f18  00 c0 8d e5                                      str ip, [sp]
00414f1c  04 50 8d e5                                      str r5, [sp, #4]
00414f20  44 fe ff eb                                      bl #0x414838
00414f24  89 ff ff ea                                      b #0x414d50
00414f28  06 10 a0 e1                                      mov r1, r6
00414f2c  08 20 a0 e1                                      mov r2, r8
00414f30  28 00 8d e2                                      add r0, sp, #0x28
00414f34  7b fe ff eb                                      bl #0x414928
00414f38  28 30 9d e5                                      ldr r3, [sp, #0x28]
00414f3c  00 30 87 e5                                      str r3, [r7]
00414f40  82 ff ff ea                                      b #0x414d50
00414f44  04 20 95 e5                                      ldr r2, [r5, #4]
00414f48  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00414f4c  01 00 55 e1                                      cmp r5, r1
00414f50  05 40 a0 11                                      movne r4, r5
00414f54  04 00 00 0a                                      beq #0x414f6c
00414f58  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00414f5c  01 00 52 e1                                      cmp r2, r1
00414f60  02 40 a0 11                                      movne r4, r2
00414f64  2d ff ff ea                                      b #0x414c20
00414f68  01 20 a0 e1                                      mov r2, r1
00414f6c  04 10 92 e5                                      ldr r1, [r2, #4]
00414f70  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00414f74  02 00 50 e1                                      cmp r0, r2
00414f78  fa ff ff 0a                                      beq #0x414f68
00414f7c  02 40 a0 e1                                      mov r4, r2
00414f80  01 20 a0 e1                                      mov r2, r1
00414f84  f3 ff ff ea                                      b #0x414f58
00414f88  14 20 9d e5                                      ldr r2, [sp, #0x14]
00414f8c  00 50 92 e5                                      ldr r5, [r2]
00414f90  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00414f94  00 00 5c e3                                      cmp ip, #0
00414f98  ab ff ff 1a                                      bne #0x414e4c
00414f9c  06 10 a0 e1                                      mov r1, r6
00414fa0  05 20 a0 e1                                      mov r2, r5
00414fa4  08 30 a0 e1                                      mov r3, r8
00414fa8  07 00 a0 e1                                      mov r0, r7
00414fac  00 c0 8d e5                                      str ip, [sp]
00414fb0  04 50 8d e5                                      str r5, [sp, #4]
00414fb4  1f fe ff eb                                      bl #0x414838
00414fb8  64 ff ff ea                                      b #0x414d50
00414fbc  06 10 a0 e1                                      mov r1, r6
00414fc0  08 20 a0 e1                                      mov r2, r8
00414fc4  30 00 8d e2                                      add r0, sp, #0x30
00414fc8  56 fe ff eb                                      bl #0x414928
00414fcc  30 30 9d e5                                      ldr r3, [sp, #0x30]
00414fd0  00 30 87 e5                                      str r3, [r7]
00414fd4  5d ff ff ea                                      b #0x414d50
00414fd8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00414fdc  00 30 92 e5                                      ldr r3, [r2]
00414fe0  00 30 87 e5                                      str r3, [r7]
00414fe4  59 ff ff ea                                      b #0x414d50
00414fe8  08 20 a0 e1                                      mov r2, r8
00414fec  38 00 8d e2                                      add r0, sp, #0x38
00414ff0  4c fe ff eb                                      bl #0x414928
00414ff4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00414ff8  00 30 87 e5                                      str r3, [r7]
00414ffc  53 ff ff ea                                      b #0x414d50
00415000  06 10 a0 e1                                      mov r1, r6
00415004  0c 20 a0 e1                                      mov r2, ip
00415008  08 30 a0 e1                                      mov r3, r8
0041500c  07 00 a0 e1                                      mov r0, r7
00415010  00 e0 8d e5                                      str lr, [sp]
00415014  04 c0 8d e5                                      str ip, [sp, #4]
00415018  06 fe ff eb                                      bl #0x414838
0041501c  4b ff ff ea                                      b #0x414d50
00415020  00 e0 a0 e3                                      mov lr, #0
00415024  06 10 a0 e1                                      mov r1, r6
00415028  0c 20 a0 e1                                      mov r2, ip
0041502c  08 30 a0 e1                                      mov r3, r8
00415030  07 00 a0 e1                                      mov r0, r7
00415034  00 e0 8d e5                                      str lr, [sp]
00415038  04 c0 8d e5                                      str ip, [sp, #4]
0041503c  fd fd ff eb                                      bl #0x414838
00415040  42 ff ff ea                                      b #0x414d50

; FUNCTION 0x004c4334, declared_size=168, range_size=168, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE7_M_copyEPNS_18_Rb_tree_node_baseESD_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_M_copy(std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004c4334  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004c4338  01 40 a0 e1                                      mov r4, r1
004c433c  10 10 81 e2                                      add r1, r1, #0x10
004c4340  02 50 a0 e1                                      mov r5, r2
004c4344  00 70 a0 e1                                      mov r7, r0
004c4348  24 41 fd eb                                      bl #0x4147e0
004c434c  00 30 d4 e5                                      ldrb r3, [r4]
004c4350  04 50 80 e5                                      str r5, [r0, #4]
004c4354  00 80 a0 e1                                      mov r8, r0
004c4358  00 30 c0 e5                                      strb r3, [r0]
004c435c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004c4360  00 00 51 e3                                      cmp r1, #0
004c4364  03 00 00 0a                                      beq #0x4c4378
004c4368  07 00 a0 e1                                      mov r0, r7
004c436c  08 20 a0 e1                                      mov r2, r8
004c4370  ef ff ff eb                                      bl #0x4c4334
004c4374  0c 00 88 e5                                      str r0, [r8, #0xc]
004c4378  08 50 94 e5                                      ldr r5, [r4, #8]
004c437c  00 00 55 e3                                      cmp r5, #0
004c4380  13 00 00 0a                                      beq #0x4c43d4
004c4384  08 60 a0 e1                                      mov r6, r8
004c4388  10 10 85 e2                                      add r1, r5, #0x10
004c438c  07 00 a0 e1                                      mov r0, r7
004c4390  12 41 fd eb                                      bl #0x4147e0
004c4394  00 30 d5 e5                                      ldrb r3, [r5]
004c4398  00 40 a0 e1                                      mov r4, r0
004c439c  04 20 a0 e1                                      mov r2, r4
004c43a0  00 30 c4 e5                                      strb r3, [r4]
004c43a4  08 40 86 e5                                      str r4, [r6, #8]
004c43a8  04 60 84 e5                                      str r6, [r4, #4]
004c43ac  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004c43b0  07 00 a0 e1                                      mov r0, r7
004c43b4  04 60 a0 e1                                      mov r6, r4
004c43b8  00 10 53 e2                                      subs r1, r3, #0
004c43bc  01 00 00 0a                                      beq #0x4c43c8
004c43c0  db ff ff eb                                      bl #0x4c4334
004c43c4  0c 00 84 e5                                      str r0, [r4, #0xc]
004c43c8  08 50 95 e5                                      ldr r5, [r5, #8]
004c43cc  00 00 55 e3                                      cmp r5, #0
004c43d0  ec ff ff 1a                                      bne #0x4c4388
004c43d4  08 00 a0 e1                                      mov r0, r8
004c43d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004c43dc, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsiENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EEC1ERKSB_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::_Rb_tree(std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > const&)
; decoder-mode: arm
004c43dc  70 40 2d e9                                      push {r4, r5, r6, lr}
004c43e0  00 30 a0 e3                                      mov r3, #0
004c43e4  00 40 a0 e1                                      mov r4, r0
004c43e8  10 30 80 e5                                      str r3, [r0, #0x10]
004c43ec  04 30 80 e5                                      str r3, [r0, #4]
004c43f0  00 30 c0 e5                                      strb r3, [r0]
004c43f4  08 00 84 e5                                      str r0, [r4, #8]
004c43f8  0c 00 84 e5                                      str r0, [r4, #0xc]
004c43fc  01 50 a0 e1                                      mov r5, r1
004c4400  04 10 91 e5                                      ldr r1, [r1, #4]
004c4404  03 00 51 e1                                      cmp r1, r3
004c4408  0d 00 00 0a                                      beq #0x4c4444
004c440c  00 20 a0 e1                                      mov r2, r0
004c4410  c7 ff ff eb                                      bl #0x4c4334
004c4414  04 00 84 e5                                      str r0, [r4, #4]
004c4418  00 30 a0 e1                                      mov r3, r0
004c441c  03 20 a0 e1                                      mov r2, r3
004c4420  08 30 93 e5                                      ldr r3, [r3, #8]
004c4424  00 00 53 e3                                      cmp r3, #0
004c4428  fb ff ff 1a                                      bne #0x4c441c
004c442c  08 20 84 e5                                      str r2, [r4, #8]
004c4430  00 30 a0 e1                                      mov r3, r0
004c4434  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004c4438  00 00 50 e3                                      cmp r0, #0
004c443c  fb ff ff 1a                                      bne #0x4c4430
004c4440  0c 30 84 e5                                      str r3, [r4, #0xc]
004c4444  10 30 95 e5                                      ldr r3, [r5, #0x10]
004c4448  04 00 a0 e1                                      mov r0, r4
004c444c  10 30 84 e5                                      str r3, [r4, #0x10]
004c4450  70 80 bd e8                                      pop {r4, r5, r6, pc}
