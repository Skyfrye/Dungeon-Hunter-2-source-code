; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037a8c0, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESsNS_9_IdentityISsEENS_11_SetTraitsTISsEESaISsEE14_M_create_nodeERKSs
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_create_node(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0037a8c0  30 40 2d e9                                      push {r4, r5, lr}
0037a8c4  0c d0 4d e2                                      sub sp, sp, #0xc
0037a8c8  28 30 a0 e3                                      mov r3, #0x28
0037a8cc  08 00 8d e2                                      add r0, sp, #8
0037a8d0  04 30 20 e5                                      str r3, [r0, #-4]!
0037a8d4  01 50 a0 e1                                      mov r5, r1
0037a8d8  78 39 0e eb                                      bl #0x708ec0
0037a8dc  00 40 a0 e1                                      mov r4, r0
0037a8e0  10 00 80 e2                                      add r0, r0, #0x10
0037a8e4  20 00 84 e5                                      str r0, [r4, #0x20]
0037a8e8  24 00 84 e5                                      str r0, [r4, #0x24]
0037a8ec  10 20 95 e5                                      ldr r2, [r5, #0x10]
0037a8f0  14 10 95 e5                                      ldr r1, [r5, #0x14]
0037a8f4  7b 5b fe eb                                      bl #0x3116e8
0037a8f8  00 30 a0 e3                                      mov r3, #0
0037a8fc  0c 30 84 e5                                      str r3, [r4, #0xc]
0037a900  08 30 84 e5                                      str r3, [r4, #8]
0037a904  04 00 a0 e1                                      mov r0, r4
0037a908  0c d0 8d e2                                      add sp, sp, #0xc
0037a90c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0037a910, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESsNS_9_IdentityISsEENS_11_SetTraitsTISsEESaISsEE9_M_insertEPNS_18_Rb_tree_node_baseERKSsSA_SA_.clone.1
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.1]
; decoder-mode: arm
0037a910  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037a914  02 00 51 e1                                      cmp r1, r2
0037a918  0c d0 4d e2                                      sub sp, sp, #0xc
0037a91c  01 40 a0 e1                                      mov r4, r1
0037a920  02 50 a0 e1                                      mov r5, r2
0037a924  00 60 a0 e1                                      mov r6, r0
0037a928  0b 00 00 0a                                      beq #0x37a95c
0037a92c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0037a930  00 00 52 e3                                      cmp r2, #0
0037a934  1a 00 00 0a                                      beq #0x37a9a4
0037a938  03 10 a0 e1                                      mov r1, r3
0037a93c  04 00 a0 e1                                      mov r0, r4
0037a940  de ff ff eb                                      bl #0x37a8c0
0037a944  08 00 85 e5                                      str r0, [r5, #8]
0037a948  08 30 94 e5                                      ldr r3, [r4, #8]
0037a94c  00 70 a0 e1                                      mov r7, r0
0037a950  03 00 55 e1                                      cmp r5, r3
0037a954  08 00 84 05                                      streq r0, [r4, #8]
0037a958  06 00 00 ea                                      b #0x37a978
0037a95c  03 10 a0 e1                                      mov r1, r3
0037a960  04 00 a0 e1                                      mov r0, r4
0037a964  d5 ff ff eb                                      bl #0x37a8c0
0037a968  00 70 a0 e1                                      mov r7, r0
0037a96c  08 00 84 e5                                      str r0, [r4, #8]
0037a970  04 00 84 e5                                      str r0, [r4, #4]
0037a974  0c 00 84 e5                                      str r0, [r4, #0xc]
0037a978  07 00 a0 e1                                      mov r0, r7
0037a97c  04 50 87 e5                                      str r5, [r7, #4]
0037a980  04 10 84 e2                                      add r1, r4, #4
0037a984  75 63 fe eb                                      bl #0x313760
0037a988  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037a98c  06 00 a0 e1                                      mov r0, r6
0037a990  01 30 83 e2                                      add r3, r3, #1
0037a994  10 30 84 e5                                      str r3, [r4, #0x10]
0037a998  00 70 86 e5                                      str r7, [r6]
0037a99c  0c d0 8d e2                                      add sp, sp, #0xc
0037a9a0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037a9a4  14 00 81 e2                                      add r0, r1, #0x14
0037a9a8  10 20 85 e2                                      add r2, r5, #0x10
0037a9ac  03 10 a0 e1                                      mov r1, r3
0037a9b0  04 30 8d e5                                      str r3, [sp, #4]
0037a9b4  8f 64 fe eb                                      bl #0x313bf8
0037a9b8  00 00 50 e3                                      cmp r0, #0
0037a9bc  04 30 9d e5                                      ldr r3, [sp, #4]
0037a9c0  dc ff ff 1a                                      bne #0x37a938
0037a9c4  03 10 a0 e1                                      mov r1, r3
0037a9c8  04 00 a0 e1                                      mov r0, r4
0037a9cc  bb ff ff eb                                      bl #0x37a8c0
0037a9d0  0c 00 85 e5                                      str r0, [r5, #0xc]
0037a9d4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0037a9d8  00 70 a0 e1                                      mov r7, r0
0037a9dc  03 00 55 e1                                      cmp r5, r3
0037a9e0  0c 00 84 05                                      streq r0, [r4, #0xc]
0037a9e4  e3 ff ff ea                                      b #0x37a978

; FUNCTION 0x0037a9e8, declared_size=528, range_size=528, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESsNS_9_IdentityISsEENS_11_SetTraitsTISsEESaISsEE13insert_uniqueERKSs
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::insert_unique(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0037a9e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037a9ec  04 50 91 e5                                      ldr r5, [r1, #4]
0037a9f0  14 d0 4d e2                                      sub sp, sp, #0x14
0037a9f4  01 90 a0 e1                                      mov sb, r1
0037a9f8  00 00 55 e3                                      cmp r5, #0
0037a9fc  00 40 a0 e1                                      mov r4, r0
0037aa00  02 80 a0 e1                                      mov r8, r2
0037aa04  38 00 00 0a                                      beq #0x37aaec
0037aa08  14 70 92 e5                                      ldr r7, [r2, #0x14]
0037aa0c  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0037aa10  0b a0 67 e0                                      rsb sl, r7, fp
0037aa14  04 00 00 ea                                      b #0x37aa2c
0037aa18  08 30 95 e5                                      ldr r3, [r5, #8]
0037aa1c  01 10 a0 e3                                      mov r1, #1
0037aa20  00 00 53 e3                                      cmp r3, #0
0037aa24  16 00 00 0a                                      beq #0x37aa84
0037aa28  03 50 a0 e1                                      mov r5, r3
0037aa2c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0037aa30  20 60 95 e5                                      ldr r6, [r5, #0x20]
0037aa34  07 00 a0 e1                                      mov r0, r7
0037aa38  03 10 a0 e1                                      mov r1, r3
0037aa3c  06 60 63 e0                                      rsb r6, r3, r6
0037aa40  0a 00 56 e1                                      cmp r6, sl
0037aa44  06 20 a0 b1                                      movlt r2, r6
0037aa48  0a 20 a0 a1                                      movge r2, sl
0037aa4c  e3 4e fe eb                                      bl #0x30e5e0
0037aa50  00 00 50 e3                                      cmp r0, #0
0037aa54  05 20 a0 e1                                      mov r2, r5
0037aa58  03 00 00 1a                                      bne #0x37aa6c
0037aa5c  06 00 5a e1                                      cmp sl, r6
0037aa60  ec ff ff ba                                      blt #0x37aa18
0037aa64  00 00 a0 d3                                      movle r0, #0
0037aa68  01 00 a0 c3                                      movgt r0, #1
0037aa6c  00 00 50 e3                                      cmp r0, #0
0037aa70  e8 ff ff ba                                      blt #0x37aa18
0037aa74  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0037aa78  00 10 a0 e3                                      mov r1, #0
0037aa7c  00 00 53 e3                                      cmp r3, #0
0037aa80  e8 ff ff 1a                                      bne #0x37aa28
0037aa84  00 00 51 e3                                      cmp r1, #0
0037aa88  05 a0 a0 01                                      moveq sl, r5
0037aa8c  17 00 00 1a                                      bne #0x37aaf0
0037aa90  24 00 92 e5                                      ldr r0, [r2, #0x24]
0037aa94  20 60 92 e5                                      ldr r6, [r2, #0x20]
0037aa98  0b b0 67 e0                                      rsb fp, r7, fp
0037aa9c  07 10 a0 e1                                      mov r1, r7
0037aaa0  06 60 60 e0                                      rsb r6, r0, r6
0037aaa4  06 00 5b e1                                      cmp fp, r6
0037aaa8  0b 20 a0 b1                                      movlt r2, fp
0037aaac  06 20 a0 a1                                      movge r2, r6
0037aab0  ca 4e fe eb                                      bl #0x30e5e0
0037aab4  00 00 50 e3                                      cmp r0, #0
0037aab8  03 00 00 1a                                      bne #0x37aacc
0037aabc  0b 00 56 e1                                      cmp r6, fp
0037aac0  20 00 00 ba                                      blt #0x37ab48
0037aac4  00 00 a0 d3                                      movle r0, #0
0037aac8  01 00 a0 c3                                      movgt r0, #1
0037aacc  00 00 50 e3                                      cmp r0, #0
0037aad0  00 30 a0 a3                                      movge r3, #0
0037aad4  00 a0 84 a5                                      strge sl, [r4]
0037aad8  04 30 c4 a5                                      strbge r3, [r4, #4]
0037aadc  19 00 00 ba                                      blt #0x37ab48
0037aae0  04 00 a0 e1                                      mov r0, r4
0037aae4  14 d0 8d e2                                      add sp, sp, #0x14
0037aae8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037aaec  01 50 a0 e1                                      mov r5, r1
0037aaf0  08 30 99 e5                                      ldr r3, [sb, #8]
0037aaf4  03 00 55 e1                                      cmp r5, r3
0037aaf8  31 00 00 0a                                      beq #0x37abc4
0037aafc  00 30 d5 e5                                      ldrb r3, [r5]
0037ab00  00 00 53 e3                                      cmp r3, #0
0037ab04  03 00 00 1a                                      bne #0x37ab18
0037ab08  04 30 95 e5                                      ldr r3, [r5, #4]
0037ab0c  04 30 93 e5                                      ldr r3, [r3, #4]
0037ab10  03 00 55 e1                                      cmp r5, r3
0037ab14  25 00 00 0a                                      beq #0x37abb0
0037ab18  08 20 95 e5                                      ldr r2, [r5, #8]
0037ab1c  00 00 52 e3                                      cmp r2, #0
0037ab20  01 00 00 1a                                      bne #0x37ab2c
0037ab24  13 00 00 ea                                      b #0x37ab78
0037ab28  03 20 a0 e1                                      mov r2, r3
0037ab2c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0037ab30  00 00 53 e3                                      cmp r3, #0
0037ab34  fb ff ff 1a                                      bne #0x37ab28
0037ab38  02 a0 a0 e1                                      mov sl, r2
0037ab3c  14 70 98 e5                                      ldr r7, [r8, #0x14]
0037ab40  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0037ab44  d1 ff ff ea                                      b #0x37aa90
0037ab48  05 20 a0 e1                                      mov r2, r5
0037ab4c  08 30 a0 e1                                      mov r3, r8
0037ab50  00 c0 a0 e3                                      mov ip, #0
0037ab54  09 10 a0 e1                                      mov r1, sb
0037ab58  08 00 8d e2                                      add r0, sp, #8
0037ab5c  00 c0 8d e5                                      str ip, [sp]
0037ab60  6a ff ff eb                                      bl #0x37a910
0037ab64  08 30 9d e5                                      ldr r3, [sp, #8]
0037ab68  01 20 a0 e3                                      mov r2, #1
0037ab6c  04 20 c4 e5                                      strb r2, [r4, #4]
0037ab70  00 30 84 e5                                      str r3, [r4]
0037ab74  d9 ff ff ea                                      b #0x37aae0
0037ab78  04 30 95 e5                                      ldr r3, [r5, #4]
0037ab7c  08 20 93 e5                                      ldr r2, [r3, #8]
0037ab80  02 00 55 e1                                      cmp r5, r2
0037ab84  01 00 00 0a                                      beq #0x37ab90
0037ab88  18 00 00 ea                                      b #0x37abf0
0037ab8c  02 30 a0 e1                                      mov r3, r2
0037ab90  04 20 93 e5                                      ldr r2, [r3, #4]
0037ab94  08 10 92 e5                                      ldr r1, [r2, #8]
0037ab98  03 00 51 e1                                      cmp r1, r3
0037ab9c  fa ff ff 0a                                      beq #0x37ab8c
0037aba0  14 70 98 e5                                      ldr r7, [r8, #0x14]
0037aba4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0037aba8  02 a0 a0 e1                                      mov sl, r2
0037abac  b7 ff ff ea                                      b #0x37aa90
0037abb0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0037abb4  14 70 98 e5                                      ldr r7, [r8, #0x14]
0037abb8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
0037abbc  02 a0 a0 e1                                      mov sl, r2
0037abc0  b2 ff ff ea                                      b #0x37aa90
0037abc4  05 20 a0 e1                                      mov r2, r5
0037abc8  08 30 a0 e1                                      mov r3, r8
0037abcc  09 10 a0 e1                                      mov r1, sb
0037abd0  0c 00 8d e2                                      add r0, sp, #0xc
0037abd4  00 50 8d e5                                      str r5, [sp]
0037abd8  4c ff ff eb                                      bl #0x37a910
0037abdc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0037abe0  01 20 a0 e3                                      mov r2, #1
0037abe4  04 20 c4 e5                                      strb r2, [r4, #4]
0037abe8  00 30 84 e5                                      str r3, [r4]
0037abec  bb ff ff ea                                      b #0x37aae0
0037abf0  03 20 a0 e1                                      mov r2, r3
0037abf4  cf ff ff ea                                      b #0x37ab38

; FUNCTION 0x0037bcf8, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESsNS_9_IdentityISsEENS_11_SetTraitsTISsEESaISsEE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0037bcf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0037bcfc  00 40 51 e2                                      subs r4, r1, #0
0037bd00  00 60 a0 e1                                      mov r6, r0
0037bd04  06 00 00 1a                                      bne #0x37bd24
0037bd08  1a 00 00 ea                                      b #0x37bd78
0037bd0c  7b 34 0e eb                                      bl #0x708f00
0037bd10  04 00 a0 e1                                      mov r0, r4
0037bd14  28 10 a0 e3                                      mov r1, #0x28
0037bd18  78 34 0e eb                                      bl #0x708f00
0037bd1c  00 40 55 e2                                      subs r4, r5, #0
0037bd20  14 00 00 0a                                      beq #0x37bd78
0037bd24  06 00 a0 e1                                      mov r0, r6
0037bd28  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0037bd2c  f1 ff ff eb                                      bl #0x37bcf8
0037bd30  10 20 84 e2                                      add r2, r4, #0x10
0037bd34  14 30 92 e5                                      ldr r3, [r2, #0x14]
0037bd38  08 50 94 e5                                      ldr r5, [r4, #8]
0037bd3c  02 00 53 e1                                      cmp r3, r2
0037bd40  03 00 a0 e1                                      mov r0, r3
0037bd44  f1 ff ff 0a                                      beq #0x37bd10
0037bd48  00 00 53 e3                                      cmp r3, #0
0037bd4c  ef ff ff 0a                                      beq #0x37bd10
0037bd50  00 10 92 e5                                      ldr r1, [r2]
0037bd54  01 10 63 e0                                      rsb r1, r3, r1
0037bd58  80 00 51 e3                                      cmp r1, #0x80
0037bd5c  ea ff ff 9a                                      bls #0x37bd0c
0037bd60  b6 51 fe eb                                      bl #0x310440
0037bd64  04 00 a0 e1                                      mov r0, r4
0037bd68  28 10 a0 e3                                      mov r1, #0x28
0037bd6c  63 34 0e eb                                      bl #0x708f00
0037bd70  00 40 55 e2                                      subs r4, r5, #0
0037bd74  ea ff ff 1a                                      bne #0x37bd24
0037bd78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003f544c, declared_size=344, range_size=344, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESsNS_9_IdentityISsEENS_11_SetTraitsTISsEESaISsEE9_M_insertEPNS_18_Rb_tree_node_baseERKSsSA_SA_.clone.3
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::priv::_Identity<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_SetTraitsT<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.3]
; decoder-mode: arm
003f544c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f5450  02 00 51 e1                                      cmp r1, r2
003f5454  08 d0 4d e2                                      sub sp, sp, #8
003f5458  01 40 a0 e1                                      mov r4, r1
003f545c  02 50 a0 e1                                      mov r5, r2
003f5460  00 60 a0 e1                                      mov r6, r0
003f5464  12 00 00 0a                                      beq #0x3f54b4
003f5468  20 20 9d e5                                      ldr r2, [sp, #0x20]
003f546c  00 00 52 e3                                      cmp r2, #0
003f5470  28 00 00 0a                                      beq #0x3f5518
003f5474  04 00 a0 e1                                      mov r0, r4
003f5478  04 30 8d e5                                      str r3, [sp, #4]
003f547c  ea ff ff eb                                      bl #0x3f542c
003f5480  04 30 9d e5                                      ldr r3, [sp, #4]
003f5484  00 70 a0 e1                                      mov r7, r0
003f5488  10 00 80 e2                                      add r0, r0, #0x10
003f548c  03 10 a0 e1                                      mov r1, r3
003f5490  20 d9 fc eb                                      bl #0x32b918
003f5494  00 30 a0 e3                                      mov r3, #0
003f5498  0c 30 87 e5                                      str r3, [r7, #0xc]
003f549c  08 30 87 e5                                      str r3, [r7, #8]
003f54a0  08 70 85 e5                                      str r7, [r5, #8]
003f54a4  08 30 94 e5                                      ldr r3, [r4, #8]
003f54a8  03 00 55 e1                                      cmp r5, r3
003f54ac  08 70 84 05                                      streq r7, [r4, #8]
003f54b0  0d 00 00 ea                                      b #0x3f54ec
003f54b4  01 00 a0 e1                                      mov r0, r1
003f54b8  04 30 8d e5                                      str r3, [sp, #4]
003f54bc  da ff ff eb                                      bl #0x3f542c
003f54c0  04 30 9d e5                                      ldr r3, [sp, #4]
003f54c4  00 70 a0 e1                                      mov r7, r0
003f54c8  10 00 80 e2                                      add r0, r0, #0x10
003f54cc  03 10 a0 e1                                      mov r1, r3
003f54d0  10 d9 fc eb                                      bl #0x32b918
003f54d4  00 30 a0 e3                                      mov r3, #0
003f54d8  0c 30 87 e5                                      str r3, [r7, #0xc]
003f54dc  08 30 87 e5                                      str r3, [r7, #8]
003f54e0  08 70 84 e5                                      str r7, [r4, #8]
003f54e4  04 70 84 e5                                      str r7, [r4, #4]
003f54e8  0c 70 84 e5                                      str r7, [r4, #0xc]
003f54ec  07 00 a0 e1                                      mov r0, r7
003f54f0  04 50 87 e5                                      str r5, [r7, #4]
003f54f4  04 10 84 e2                                      add r1, r4, #4
003f54f8  98 78 fc eb                                      bl #0x313760
003f54fc  10 30 94 e5                                      ldr r3, [r4, #0x10]
003f5500  06 00 a0 e1                                      mov r0, r6
003f5504  01 30 83 e2                                      add r3, r3, #1
003f5508  10 30 84 e5                                      str r3, [r4, #0x10]
003f550c  00 70 86 e5                                      str r7, [r6]
003f5510  08 d0 8d e2                                      add sp, sp, #8
003f5514  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003f5518  14 20 93 e5                                      ldr r2, [r3, #0x14]
003f551c  10 80 93 e5                                      ldr r8, [r3, #0x10]
003f5520  24 10 95 e5                                      ldr r1, [r5, #0x24]
003f5524  20 70 95 e5                                      ldr r7, [r5, #0x20]
003f5528  08 80 62 e0                                      rsb r8, r2, r8
003f552c  02 00 a0 e1                                      mov r0, r2
003f5530  07 70 61 e0                                      rsb r7, r1, r7
003f5534  08 00 57 e1                                      cmp r7, r8
003f5538  07 20 a0 b1                                      movlt r2, r7
003f553c  08 20 a0 a1                                      movge r2, r8
003f5540  04 30 8d e5                                      str r3, [sp, #4]
003f5544  25 64 fc eb                                      bl #0x30e5e0
003f5548  00 00 50 e3                                      cmp r0, #0
003f554c  04 30 9d e5                                      ldr r3, [sp, #4]
003f5550  11 00 00 1a                                      bne #0x3f559c
003f5554  07 00 58 e1                                      cmp r8, r7
003f5558  c5 ff ff ba                                      blt #0x3f5474
003f555c  04 00 a0 e1                                      mov r0, r4
003f5560  04 30 8d e5                                      str r3, [sp, #4]
003f5564  b0 ff ff eb                                      bl #0x3f542c
003f5568  04 30 9d e5                                      ldr r3, [sp, #4]
003f556c  00 70 a0 e1                                      mov r7, r0
003f5570  10 00 80 e2                                      add r0, r0, #0x10
003f5574  03 10 a0 e1                                      mov r1, r3
003f5578  e6 d8 fc eb                                      bl #0x32b918
003f557c  00 30 a0 e3                                      mov r3, #0
003f5580  0c 30 87 e5                                      str r3, [r7, #0xc]
003f5584  08 30 87 e5                                      str r3, [r7, #8]
003f5588  0c 70 85 e5                                      str r7, [r5, #0xc]
003f558c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003f5590  03 00 55 e1                                      cmp r5, r3
003f5594  0c 70 84 05                                      streq r7, [r4, #0xc]
003f5598  d3 ff ff ea                                      b #0x3f54ec
003f559c  ee ff ff aa                                      bge #0x3f555c
003f55a0  b3 ff ff ea                                      b #0x3f5474
