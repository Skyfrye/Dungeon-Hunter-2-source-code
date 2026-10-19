; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d91e8, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12CharAIScript6_StateEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003d91e8  70 40 2d e9                                      push {r4, r5, r6, lr}
003d91ec  00 40 51 e2                                      subs r4, r1, #0
003d91f0  00 60 a0 e1                                      mov r6, r0
003d91f4  05 00 00 1a                                      bne #0x3d9210
003d91f8  1a 00 00 ea                                      b #0x3d9268
003d91fc  3f bf 0c eb                                      bl #0x708f00
003d9200  04 00 a0 e1                                      mov r0, r4
003d9204  8d dc fc eb                                      bl #0x310440
003d9208  00 40 55 e2                                      subs r4, r5, #0
003d920c  15 00 00 0a                                      beq #0x3d9268
003d9210  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003d9214  06 00 a0 e1                                      mov r0, r6
003d9218  f2 ff ff eb                                      bl #0x3d91e8
003d921c  28 00 84 e2                                      add r0, r4, #0x28
003d9220  08 50 94 e5                                      ldr r5, [r4, #8]
003d9224  e3 ff ff eb                                      bl #0x3d91b8
003d9228  10 20 84 e2                                      add r2, r4, #0x10
003d922c  14 30 92 e5                                      ldr r3, [r2, #0x14]
003d9230  02 00 53 e1                                      cmp r3, r2
003d9234  03 00 a0 e1                                      mov r0, r3
003d9238  f0 ff ff 0a                                      beq #0x3d9200
003d923c  00 00 53 e3                                      cmp r3, #0
003d9240  ee ff ff 0a                                      beq #0x3d9200
003d9244  00 10 92 e5                                      ldr r1, [r2]
003d9248  01 10 63 e0                                      rsb r1, r3, r1
003d924c  80 00 51 e3                                      cmp r1, #0x80
003d9250  e9 ff ff 9a                                      bls #0x3d91fc
003d9254  79 dc fc eb                                      bl #0x310440
003d9258  04 00 a0 e1                                      mov r0, r4
003d925c  77 dc fc eb                                      bl #0x310440
003d9260  00 40 55 e2                                      subs r4, r5, #0
003d9264  e9 ff ff 1a                                      bne #0x3d9210
003d9268  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d9790, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12CharAIScript6_StateEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_create_nodeERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> const&)
; decoder-mode: arm
003d9790  70 40 2d e9                                      push {r4, r5, r6, lr}
003d9794  88 00 a0 e3                                      mov r0, #0x88
003d9798  01 50 a0 e1                                      mov r5, r1
003d979c  2c db fc eb                                      bl #0x310454
003d97a0  05 10 a0 e1                                      mov r1, r5
003d97a4  00 40 a0 e1                                      mov r4, r0
003d97a8  10 00 80 e2                                      add r0, r0, #0x10
003d97ac  59 48 fd eb                                      bl #0x32b918
003d97b0  18 10 85 e2                                      add r1, r5, #0x18
003d97b4  28 00 84 e2                                      add r0, r4, #0x28
003d97b8  a2 ff ff eb                                      bl #0x3d9648
003d97bc  00 30 a0 e3                                      mov r3, #0
003d97c0  0c 30 84 e5                                      str r3, [r4, #0xc]
003d97c4  08 30 84 e5                                      str r3, [r4, #8]
003d97c8  04 00 a0 e1                                      mov r0, r4
003d97cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d97d0, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12CharAIScript6_StateEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003d97d0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d97d4  02 00 51 e1                                      cmp r1, r2
003d97d8  0c d0 4d e2                                      sub sp, sp, #0xc
003d97dc  01 40 a0 e1                                      mov r4, r1
003d97e0  02 50 a0 e1                                      mov r5, r2
003d97e4  00 60 a0 e1                                      mov r6, r0
003d97e8  23 00 00 0a                                      beq #0x3d987c
003d97ec  24 20 9d e5                                      ldr r2, [sp, #0x24]
003d97f0  00 00 52 e3                                      cmp r2, #0
003d97f4  12 00 00 0a                                      beq #0x3d9844
003d97f8  03 10 a0 e1                                      mov r1, r3
003d97fc  04 00 a0 e1                                      mov r0, r4
003d9800  e2 ff ff eb                                      bl #0x3d9790
003d9804  0c 00 85 e5                                      str r0, [r5, #0xc]
003d9808  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003d980c  00 70 a0 e1                                      mov r7, r0
003d9810  03 00 55 e1                                      cmp r5, r3
003d9814  16 00 00 0a                                      beq #0x3d9874
003d9818  07 00 a0 e1                                      mov r0, r7
003d981c  04 50 87 e5                                      str r5, [r7, #4]
003d9820  04 10 84 e2                                      add r1, r4, #4
003d9824  cd e7 fc eb                                      bl #0x313760
003d9828  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d982c  06 00 a0 e1                                      mov r0, r6
003d9830  01 30 83 e2                                      add r3, r3, #1
003d9834  10 30 84 e5                                      str r3, [r4, #0x10]
003d9838  00 70 86 e5                                      str r7, [r6]
003d983c  0c d0 8d e2                                      add sp, sp, #0xc
003d9840  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d9844  20 20 9d e5                                      ldr r2, [sp, #0x20]
003d9848  00 00 52 e3                                      cmp r2, #0
003d984c  12 00 00 0a                                      beq #0x3d989c
003d9850  03 10 a0 e1                                      mov r1, r3
003d9854  04 00 a0 e1                                      mov r0, r4
003d9858  cc ff ff eb                                      bl #0x3d9790
003d985c  08 00 85 e5                                      str r0, [r5, #8]
003d9860  08 30 94 e5                                      ldr r3, [r4, #8]
003d9864  00 70 a0 e1                                      mov r7, r0
003d9868  03 00 55 e1                                      cmp r5, r3
003d986c  08 00 84 05                                      streq r0, [r4, #8]
003d9870  e8 ff ff ea                                      b #0x3d9818
003d9874  0c 70 84 e5                                      str r7, [r4, #0xc]
003d9878  e6 ff ff ea                                      b #0x3d9818
003d987c  03 10 a0 e1                                      mov r1, r3
003d9880  04 00 a0 e1                                      mov r0, r4
003d9884  c1 ff ff eb                                      bl #0x3d9790
003d9888  00 70 a0 e1                                      mov r7, r0
003d988c  08 00 84 e5                                      str r0, [r4, #8]
003d9890  04 00 84 e5                                      str r0, [r4, #4]
003d9894  0c 00 84 e5                                      str r0, [r4, #0xc]
003d9898  de ff ff ea                                      b #0x3d9818
003d989c  14 00 81 e2                                      add r0, r1, #0x14
003d98a0  10 20 85 e2                                      add r2, r5, #0x10
003d98a4  03 10 a0 e1                                      mov r1, r3
003d98a8  04 30 8d e5                                      str r3, [sp, #4]
003d98ac  d1 e8 fc eb                                      bl #0x313bf8
003d98b0  00 00 50 e3                                      cmp r0, #0
003d98b4  04 30 9d e5                                      ldr r3, [sp, #4]
003d98b8  ce ff ff 0a                                      beq #0x3d97f8
003d98bc  e3 ff ff ea                                      b #0x3d9850

; FUNCTION 0x003d98c0, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12CharAIScript6_StateEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> const&)
; decoder-mode: arm
003d98c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d98c4  04 50 91 e5                                      ldr r5, [r1, #4]
003d98c8  14 d0 4d e2                                      sub sp, sp, #0x14
003d98cc  01 90 a0 e1                                      mov sb, r1
003d98d0  00 00 55 e3                                      cmp r5, #0
003d98d4  00 40 a0 e1                                      mov r4, r0
003d98d8  02 80 a0 e1                                      mov r8, r2
003d98dc  38 00 00 0a                                      beq #0x3d99c4
003d98e0  14 70 92 e5                                      ldr r7, [r2, #0x14]
003d98e4  10 b0 92 e5                                      ldr fp, [r2, #0x10]
003d98e8  0b a0 67 e0                                      rsb sl, r7, fp
003d98ec  04 00 00 ea                                      b #0x3d9904
003d98f0  08 30 95 e5                                      ldr r3, [r5, #8]
003d98f4  01 10 a0 e3                                      mov r1, #1
003d98f8  00 00 53 e3                                      cmp r3, #0
003d98fc  16 00 00 0a                                      beq #0x3d995c
003d9900  03 50 a0 e1                                      mov r5, r3
003d9904  24 30 95 e5                                      ldr r3, [r5, #0x24]
003d9908  20 60 95 e5                                      ldr r6, [r5, #0x20]
003d990c  07 00 a0 e1                                      mov r0, r7
003d9910  03 10 a0 e1                                      mov r1, r3
003d9914  06 60 63 e0                                      rsb r6, r3, r6
003d9918  0a 00 56 e1                                      cmp r6, sl
003d991c  06 20 a0 b1                                      movlt r2, r6
003d9920  0a 20 a0 a1                                      movge r2, sl
003d9924  2d d3 fc eb                                      bl #0x30e5e0
003d9928  00 00 50 e3                                      cmp r0, #0
003d992c  05 20 a0 e1                                      mov r2, r5
003d9930  03 00 00 1a                                      bne #0x3d9944
003d9934  06 00 5a e1                                      cmp sl, r6
003d9938  ec ff ff ba                                      blt #0x3d98f0
003d993c  00 00 a0 d3                                      movle r0, #0
003d9940  01 00 a0 c3                                      movgt r0, #1
003d9944  00 00 50 e3                                      cmp r0, #0
003d9948  e8 ff ff ba                                      blt #0x3d98f0
003d994c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003d9950  00 10 a0 e3                                      mov r1, #0
003d9954  00 00 53 e3                                      cmp r3, #0
003d9958  e8 ff ff 1a                                      bne #0x3d9900
003d995c  00 00 51 e3                                      cmp r1, #0
003d9960  05 a0 a0 01                                      moveq sl, r5
003d9964  17 00 00 1a                                      bne #0x3d99c8
003d9968  24 00 92 e5                                      ldr r0, [r2, #0x24]
003d996c  20 60 92 e5                                      ldr r6, [r2, #0x20]
003d9970  0b b0 67 e0                                      rsb fp, r7, fp
003d9974  07 10 a0 e1                                      mov r1, r7
003d9978  06 60 60 e0                                      rsb r6, r0, r6
003d997c  06 00 5b e1                                      cmp fp, r6
003d9980  0b 20 a0 b1                                      movlt r2, fp
003d9984  06 20 a0 a1                                      movge r2, r6
003d9988  14 d3 fc eb                                      bl #0x30e5e0
003d998c  00 00 50 e3                                      cmp r0, #0
003d9990  03 00 00 1a                                      bne #0x3d99a4
003d9994  0b 00 56 e1                                      cmp r6, fp
003d9998  20 00 00 ba                                      blt #0x3d9a20
003d999c  00 00 a0 d3                                      movle r0, #0
003d99a0  01 00 a0 c3                                      movgt r0, #1
003d99a4  00 00 50 e3                                      cmp r0, #0
003d99a8  00 30 a0 a3                                      movge r3, #0
003d99ac  00 a0 84 a5                                      strge sl, [r4]
003d99b0  04 30 c4 a5                                      strbge r3, [r4, #4]
003d99b4  19 00 00 ba                                      blt #0x3d9a20
003d99b8  04 00 a0 e1                                      mov r0, r4
003d99bc  14 d0 8d e2                                      add sp, sp, #0x14
003d99c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d99c4  01 50 a0 e1                                      mov r5, r1
003d99c8  08 30 99 e5                                      ldr r3, [sb, #8]
003d99cc  03 00 55 e1                                      cmp r5, r3
003d99d0  32 00 00 0a                                      beq #0x3d9aa0
003d99d4  00 30 d5 e5                                      ldrb r3, [r5]
003d99d8  00 00 53 e3                                      cmp r3, #0
003d99dc  03 00 00 1a                                      bne #0x3d99f0
003d99e0  04 30 95 e5                                      ldr r3, [r5, #4]
003d99e4  04 30 93 e5                                      ldr r3, [r3, #4]
003d99e8  03 00 55 e1                                      cmp r5, r3
003d99ec  26 00 00 0a                                      beq #0x3d9a8c
003d99f0  08 20 95 e5                                      ldr r2, [r5, #8]
003d99f4  00 00 52 e3                                      cmp r2, #0
003d99f8  01 00 00 1a                                      bne #0x3d9a04
003d99fc  14 00 00 ea                                      b #0x3d9a54
003d9a00  03 20 a0 e1                                      mov r2, r3
003d9a04  0c 30 92 e5                                      ldr r3, [r2, #0xc]
003d9a08  00 00 53 e3                                      cmp r3, #0
003d9a0c  fb ff ff 1a                                      bne #0x3d9a00
003d9a10  02 a0 a0 e1                                      mov sl, r2
003d9a14  14 70 98 e5                                      ldr r7, [r8, #0x14]
003d9a18  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003d9a1c  d1 ff ff ea                                      b #0x3d9968
003d9a20  00 c0 a0 e3                                      mov ip, #0
003d9a24  05 20 a0 e1                                      mov r2, r5
003d9a28  08 30 a0 e1                                      mov r3, r8
003d9a2c  09 10 a0 e1                                      mov r1, sb
003d9a30  08 00 8d e2                                      add r0, sp, #8
003d9a34  04 c0 8d e5                                      str ip, [sp, #4]
003d9a38  00 c0 8d e5                                      str ip, [sp]
003d9a3c  63 ff ff eb                                      bl #0x3d97d0
003d9a40  08 30 9d e5                                      ldr r3, [sp, #8]
003d9a44  01 20 a0 e3                                      mov r2, #1
003d9a48  04 20 c4 e5                                      strb r2, [r4, #4]
003d9a4c  00 30 84 e5                                      str r3, [r4]
003d9a50  d8 ff ff ea                                      b #0x3d99b8
003d9a54  04 30 95 e5                                      ldr r3, [r5, #4]
003d9a58  08 20 93 e5                                      ldr r2, [r3, #8]
003d9a5c  02 00 55 e1                                      cmp r5, r2
003d9a60  01 00 00 0a                                      beq #0x3d9a6c
003d9a64  19 00 00 ea                                      b #0x3d9ad0
003d9a68  02 30 a0 e1                                      mov r3, r2
003d9a6c  04 20 93 e5                                      ldr r2, [r3, #4]
003d9a70  08 10 92 e5                                      ldr r1, [r2, #8]
003d9a74  03 00 51 e1                                      cmp r1, r3
003d9a78  fa ff ff 0a                                      beq #0x3d9a68
003d9a7c  14 70 98 e5                                      ldr r7, [r8, #0x14]
003d9a80  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003d9a84  02 a0 a0 e1                                      mov sl, r2
003d9a88  b6 ff ff ea                                      b #0x3d9968
003d9a8c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
003d9a90  14 70 98 e5                                      ldr r7, [r8, #0x14]
003d9a94  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003d9a98  02 a0 a0 e1                                      mov sl, r2
003d9a9c  b1 ff ff ea                                      b #0x3d9968
003d9aa0  05 20 a0 e1                                      mov r2, r5
003d9aa4  08 30 a0 e1                                      mov r3, r8
003d9aa8  00 c0 a0 e3                                      mov ip, #0
003d9aac  09 10 a0 e1                                      mov r1, sb
003d9ab0  0c 00 8d e2                                      add r0, sp, #0xc
003d9ab4  20 10 8d e8                                      stm sp, {r5, ip}
003d9ab8  44 ff ff eb                                      bl #0x3d97d0
003d9abc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003d9ac0  01 20 a0 e3                                      mov r2, #1
003d9ac4  04 20 c4 e5                                      strb r2, [r4, #4]
003d9ac8  00 30 84 e5                                      str r3, [r4]
003d9acc  b9 ff ff ea                                      b #0x3d99b8
003d9ad0  03 20 a0 e1                                      mov r2, r3
003d9ad4  cd ff ff ea                                      b #0x3d9a10

; FUNCTION 0x003d9ad8, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12CharAIScript6_StateEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueENS_17_Rb_tree_iteratorIS7_SB_EERKS7_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> const&)
; decoder-mode: arm
003d9ad8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d9adc  44 d0 4d e2                                      sub sp, sp, #0x44
003d9ae0  14 20 8d e5                                      str r2, [sp, #0x14]
003d9ae4  00 50 92 e5                                      ldr r5, [r2]
003d9ae8  08 20 91 e5                                      ldr r2, [r1, #8]
003d9aec  01 60 a0 e1                                      mov r6, r1
003d9af0  00 70 a0 e1                                      mov r7, r0
003d9af4  02 00 55 e1                                      cmp r5, r2
003d9af8  03 80 a0 e1                                      mov r8, r3
003d9afc  7c 00 00 0a                                      beq #0x3d9cf4
003d9b00  01 00 55 e1                                      cmp r5, r1
003d9b04  d0 00 00 0a                                      beq #0x3d9e4c
003d9b08  00 30 d5 e5                                      ldrb r3, [r5]
003d9b0c  00 00 53 e3                                      cmp r3, #0
003d9b10  35 00 00 0a                                      beq #0x3d9bec
003d9b14  08 40 95 e5                                      ldr r4, [r5, #8]
003d9b18  00 00 54 e3                                      cmp r4, #0
003d9b1c  01 00 00 1a                                      bne #0x3d9b28
003d9b20  39 00 00 ea                                      b #0x3d9c0c
003d9b24  03 40 a0 e1                                      mov r4, r3
003d9b28  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003d9b2c  00 00 53 e3                                      cmp r3, #0
003d9b30  fb ff ff 1a                                      bne #0x3d9b24
003d9b34  24 30 95 e5                                      ldr r3, [r5, #0x24]
003d9b38  14 90 98 e5                                      ldr sb, [r8, #0x14]
003d9b3c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003d9b40  20 20 95 e5                                      ldr r2, [r5, #0x20]
003d9b44  03 10 a0 e1                                      mov r1, r3
003d9b48  0b b0 69 e0                                      rsb fp, sb, fp
003d9b4c  02 20 63 e0                                      rsb r2, r3, r2
003d9b50  18 20 8d e5                                      str r2, [sp, #0x18]
003d9b54  09 00 a0 e1                                      mov r0, sb
003d9b58  0b 00 52 e1                                      cmp r2, fp
003d9b5c  0b 20 a0 a1                                      movge r2, fp
003d9b60  0c 30 8d e5                                      str r3, [sp, #0xc]
003d9b64  1c 20 8d e5                                      str r2, [sp, #0x1c]
003d9b68  9c d2 fc eb                                      bl #0x30e5e0
003d9b6c  00 00 50 e3                                      cmp r0, #0
003d9b70  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003d9b74  05 00 00 1a                                      bne #0x3d9b90
003d9b78  18 20 9d e5                                      ldr r2, [sp, #0x18]
003d9b7c  02 00 5b e1                                      cmp fp, r2
003d9b80  00 00 e0 b3                                      mvnlt r0, #0
003d9b84  01 00 00 ba                                      blt #0x3d9b90
003d9b88  00 00 a0 d3                                      movle r0, #0
003d9b8c  01 00 a0 c3                                      movgt r0, #1
003d9b90  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
003d9b94  28 00 00 1a                                      bne #0x3d9c3c
003d9b98  0c 40 95 e5                                      ldr r4, [r5, #0xc]
003d9b9c  00 00 54 e3                                      cmp r4, #0
003d9ba0  01 00 00 1a                                      bne #0x3d9bac
003d9ba4  cc 00 00 ea                                      b #0x3d9edc
003d9ba8  02 40 a0 e1                                      mov r4, r2
003d9bac  08 20 94 e5                                      ldr r2, [r4, #8]
003d9bb0  00 00 52 e3                                      cmp r2, #0
003d9bb4  fb ff ff 1a                                      bne #0x3d9ba8
003d9bb8  00 00 5c e3                                      cmp ip, #0
003d9bbc  43 00 00 1a                                      bne #0x3d9cd0
003d9bc0  03 00 a0 e1                                      mov r0, r3
003d9bc4  09 10 a0 e1                                      mov r1, sb
003d9bc8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d9bcc  83 d2 fc eb                                      bl #0x30e5e0
003d9bd0  00 00 50 e3                                      cmp r0, #0
003d9bd4  34 00 00 1a                                      bne #0x3d9cac
003d9bd8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003d9bdc  03 00 5b e1                                      cmp fp, r3
003d9be0  32 00 00 ca                                      bgt #0x3d9cb0
003d9be4  00 50 87 e5                                      str r5, [r7]
003d9be8  3e 00 00 ea                                      b #0x3d9ce8
003d9bec  04 30 95 e5                                      ldr r3, [r5, #4]
003d9bf0  04 30 93 e5                                      ldr r3, [r3, #4]
003d9bf4  03 00 55 e1                                      cmp r5, r3
003d9bf8  0c 40 95 05                                      ldreq r4, [r5, #0xc]
003d9bfc  cc ff ff 0a                                      beq #0x3d9b34
003d9c00  08 40 95 e5                                      ldr r4, [r5, #8]
003d9c04  00 00 54 e3                                      cmp r4, #0
003d9c08  c6 ff ff 1a                                      bne #0x3d9b28
003d9c0c  04 40 95 e5                                      ldr r4, [r5, #4]
003d9c10  08 30 94 e5                                      ldr r3, [r4, #8]
003d9c14  03 00 55 e1                                      cmp r5, r3
003d9c18  01 00 00 0a                                      beq #0x3d9c24
003d9c1c  c4 ff ff ea                                      b #0x3d9b34
003d9c20  03 40 a0 e1                                      mov r4, r3
003d9c24  04 30 94 e5                                      ldr r3, [r4, #4]
003d9c28  08 20 93 e5                                      ldr r2, [r3, #8]
003d9c2c  04 00 52 e1                                      cmp r2, r4
003d9c30  fa ff ff 0a                                      beq #0x3d9c20
003d9c34  03 40 a0 e1                                      mov r4, r3
003d9c38  bd ff ff ea                                      b #0x3d9b34
003d9c3c  24 20 94 e5                                      ldr r2, [r4, #0x24]
003d9c40  20 a0 94 e5                                      ldr sl, [r4, #0x20]
003d9c44  09 10 a0 e1                                      mov r1, sb
003d9c48  02 00 a0 e1                                      mov r0, r2
003d9c4c  0a a0 62 e0                                      rsb sl, r2, sl
003d9c50  0a 00 5b e1                                      cmp fp, sl
003d9c54  0b 20 a0 b1                                      movlt r2, fp
003d9c58  0a 20 a0 a1                                      movge r2, sl
003d9c5c  0c 30 8d e5                                      str r3, [sp, #0xc]
003d9c60  10 c0 8d e5                                      str ip, [sp, #0x10]
003d9c64  5d d2 fc eb                                      bl #0x30e5e0
003d9c68  00 00 50 e3                                      cmp r0, #0
003d9c6c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003d9c70  10 c0 9d e5                                      ldr ip, [sp, #0x10]
003d9c74  6f 00 00 1a                                      bne #0x3d9e38
003d9c78  0a 00 5b e1                                      cmp fp, sl
003d9c7c  c5 ff ff da                                      ble #0x3d9b98
003d9c80  0c c0 94 e5                                      ldr ip, [r4, #0xc]
003d9c84  00 00 5c e3                                      cmp ip, #0
003d9c88  62 00 00 0a                                      beq #0x3d9e18
003d9c8c  00 c0 a0 e3                                      mov ip, #0
003d9c90  06 10 a0 e1                                      mov r1, r6
003d9c94  05 20 a0 e1                                      mov r2, r5
003d9c98  08 30 a0 e1                                      mov r3, r8
003d9c9c  07 00 a0 e1                                      mov r0, r7
003d9ca0  20 10 8d e8                                      stm sp, {r5, ip}
003d9ca4  c9 fe ff eb                                      bl #0x3d97d0
003d9ca8  0e 00 00 ea                                      b #0x3d9ce8
003d9cac  cc ff ff aa                                      bge #0x3d9be4
003d9cb0  04 00 56 e1                                      cmp r6, r4
003d9cb4  9b 00 00 0a                                      beq #0x3d9f28
003d9cb8  14 00 86 e2                                      add r0, r6, #0x14
003d9cbc  08 10 a0 e1                                      mov r1, r8
003d9cc0  10 20 84 e2                                      add r2, r4, #0x10
003d9cc4  cb e7 fc eb                                      bl #0x313bf8
003d9cc8  00 00 50 e3                                      cmp r0, #0
003d9ccc  93 00 00 1a                                      bne #0x3d9f20
003d9cd0  06 10 a0 e1                                      mov r1, r6
003d9cd4  08 20 a0 e1                                      mov r2, r8
003d9cd8  20 00 8d e2                                      add r0, sp, #0x20
003d9cdc  f7 fe ff eb                                      bl #0x3d98c0
003d9ce0  20 30 9d e5                                      ldr r3, [sp, #0x20]
003d9ce4  00 30 87 e5                                      str r3, [r7]
003d9ce8  07 00 a0 e1                                      mov r0, r7
003d9cec  44 d0 8d e2                                      add sp, sp, #0x44
003d9cf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d9cf4  10 30 91 e5                                      ldr r3, [r1, #0x10]
003d9cf8  00 00 53 e3                                      cmp r3, #0
003d9cfc  9f 00 00 0a                                      beq #0x3d9f80
003d9d00  14 30 98 e5                                      ldr r3, [r8, #0x14]
003d9d04  24 10 95 e5                                      ldr r1, [r5, #0x24]
003d9d08  10 40 98 e5                                      ldr r4, [r8, #0x10]
003d9d0c  20 a0 95 e5                                      ldr sl, [r5, #0x20]
003d9d10  03 00 a0 e1                                      mov r0, r3
003d9d14  04 40 63 e0                                      rsb r4, r3, r4
003d9d18  0a a0 61 e0                                      rsb sl, r1, sl
003d9d1c  04 00 5a e1                                      cmp sl, r4
003d9d20  0a 20 a0 b1                                      movlt r2, sl
003d9d24  04 20 a0 a1                                      movge r2, r4
003d9d28  2c d2 fc eb                                      bl #0x30e5e0
003d9d2c  00 00 50 e3                                      cmp r0, #0
003d9d30  03 00 00 1a                                      bne #0x3d9d44
003d9d34  0a 00 54 e1                                      cmp r4, sl
003d9d38  d3 ff ff ba                                      blt #0x3d9c8c
003d9d3c  00 00 a0 d3                                      movle r0, #0
003d9d40  01 00 a0 c3                                      movgt r0, #1
003d9d44  00 00 50 e3                                      cmp r0, #0
003d9d48  cf ff ff ba                                      blt #0x3d9c8c
003d9d4c  14 a0 86 e2                                      add sl, r6, #0x14
003d9d50  10 10 85 e2                                      add r1, r5, #0x10
003d9d54  0a 00 a0 e1                                      mov r0, sl
003d9d58  08 20 a0 e1                                      mov r2, r8
003d9d5c  a5 e7 fc eb                                      bl #0x313bf8
003d9d60  00 00 50 e3                                      cmp r0, #0
003d9d64  81 00 00 0a                                      beq #0x3d9f70
003d9d68  14 30 9d e5                                      ldr r3, [sp, #0x14]
003d9d6c  00 c0 93 e5                                      ldr ip, [r3]
003d9d70  0c 40 9c e5                                      ldr r4, [ip, #0xc]
003d9d74  00 00 54 e3                                      cmp r4, #0
003d9d78  22 00 00 1a                                      bne #0x3d9e08
003d9d7c  04 30 9c e5                                      ldr r3, [ip, #4]
003d9d80  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d9d84  02 00 5c e1                                      cmp ip, r2
003d9d88  0c 40 a0 11                                      movne r4, ip
003d9d8c  04 00 00 1a                                      bne #0x3d9da4
003d9d90  03 40 a0 e1                                      mov r4, r3
003d9d94  04 30 93 e5                                      ldr r3, [r3, #4]
003d9d98  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d9d9c  04 00 52 e1                                      cmp r2, r4
003d9da0  fa ff ff 0a                                      beq #0x3d9d90
003d9da4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d9da8  02 00 53 e1                                      cmp r3, r2
003d9dac  03 40 a0 11                                      movne r4, r3
003d9db0  04 00 56 e1                                      cmp r6, r4
003d9db4  7f 00 00 0a                                      beq #0x3d9fb8
003d9db8  0a 00 a0 e1                                      mov r0, sl
003d9dbc  08 10 a0 e1                                      mov r1, r8
003d9dc0  10 20 84 e2                                      add r2, r4, #0x10
003d9dc4  8b e7 fc eb                                      bl #0x313bf8
003d9dc8  00 00 50 e3                                      cmp r0, #0
003d9dcc  60 00 00 0a                                      beq #0x3d9f54
003d9dd0  14 20 9d e5                                      ldr r2, [sp, #0x14]
003d9dd4  00 c0 92 e5                                      ldr ip, [r2]
003d9dd8  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003d9ddc  00 00 5e e3                                      cmp lr, #0
003d9de0  6c 00 00 0a                                      beq #0x3d9f98
003d9de4  00 c0 a0 e3                                      mov ip, #0
003d9de8  06 10 a0 e1                                      mov r1, r6
003d9dec  04 20 a0 e1                                      mov r2, r4
003d9df0  08 30 a0 e1                                      mov r3, r8
003d9df4  07 00 a0 e1                                      mov r0, r7
003d9df8  10 10 8d e8                                      stm sp, {r4, ip}
003d9dfc  73 fe ff eb                                      bl #0x3d97d0
003d9e00  b8 ff ff ea                                      b #0x3d9ce8
003d9e04  03 40 a0 e1                                      mov r4, r3
003d9e08  08 30 94 e5                                      ldr r3, [r4, #8]
003d9e0c  00 00 53 e3                                      cmp r3, #0
003d9e10  fb ff ff 1a                                      bne #0x3d9e04
003d9e14  e5 ff ff ea                                      b #0x3d9db0
003d9e18  06 10 a0 e1                                      mov r1, r6
003d9e1c  04 20 a0 e1                                      mov r2, r4
003d9e20  08 30 a0 e1                                      mov r3, r8
003d9e24  07 00 a0 e1                                      mov r0, r7
003d9e28  00 c0 8d e5                                      str ip, [sp]
003d9e2c  04 40 8d e5                                      str r4, [sp, #4]
003d9e30  66 fe ff eb                                      bl #0x3d97d0
003d9e34  ab ff ff ea                                      b #0x3d9ce8
003d9e38  56 ff ff aa                                      bge #0x3d9b98
003d9e3c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
003d9e40  00 00 5c e3                                      cmp ip, #0
003d9e44  90 ff ff 1a                                      bne #0x3d9c8c
003d9e48  f2 ff ff ea                                      b #0x3d9e18
003d9e4c  0c 40 95 e5                                      ldr r4, [r5, #0xc]
003d9e50  14 10 93 e5                                      ldr r1, [r3, #0x14]
003d9e54  10 90 93 e5                                      ldr sb, [r3, #0x10]
003d9e58  20 a0 94 e5                                      ldr sl, [r4, #0x20]
003d9e5c  24 30 94 e5                                      ldr r3, [r4, #0x24]
003d9e60  09 90 61 e0                                      rsb sb, r1, sb
003d9e64  0a a0 63 e0                                      rsb sl, r3, sl
003d9e68  0a 00 59 e1                                      cmp sb, sl
003d9e6c  09 20 a0 b1                                      movlt r2, sb
003d9e70  0a 20 a0 a1                                      movge r2, sl
003d9e74  03 00 a0 e1                                      mov r0, r3
003d9e78  d8 d1 fc eb                                      bl #0x30e5e0
003d9e7c  00 00 50 e3                                      cmp r0, #0
003d9e80  03 00 00 1a                                      bne #0x3d9e94
003d9e84  09 00 5a e1                                      cmp sl, sb
003d9e88  03 00 00 ba                                      blt #0x3d9e9c
003d9e8c  00 00 a0 d3                                      movle r0, #0
003d9e90  01 00 a0 c3                                      movgt r0, #1
003d9e94  00 00 50 e3                                      cmp r0, #0
003d9e98  08 00 00 aa                                      bge #0x3d9ec0
003d9e9c  00 c0 a0 e3                                      mov ip, #0
003d9ea0  06 10 a0 e1                                      mov r1, r6
003d9ea4  04 20 a0 e1                                      mov r2, r4
003d9ea8  08 30 a0 e1                                      mov r3, r8
003d9eac  07 00 a0 e1                                      mov r0, r7
003d9eb0  00 c0 8d e5                                      str ip, [sp]
003d9eb4  04 50 8d e5                                      str r5, [sp, #4]
003d9eb8  44 fe ff eb                                      bl #0x3d97d0
003d9ebc  89 ff ff ea                                      b #0x3d9ce8
003d9ec0  06 10 a0 e1                                      mov r1, r6
003d9ec4  08 20 a0 e1                                      mov r2, r8
003d9ec8  28 00 8d e2                                      add r0, sp, #0x28
003d9ecc  7b fe ff eb                                      bl #0x3d98c0
003d9ed0  28 30 9d e5                                      ldr r3, [sp, #0x28]
003d9ed4  00 30 87 e5                                      str r3, [r7]
003d9ed8  82 ff ff ea                                      b #0x3d9ce8
003d9edc  04 20 95 e5                                      ldr r2, [r5, #4]
003d9ee0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003d9ee4  01 00 55 e1                                      cmp r5, r1
003d9ee8  05 40 a0 11                                      movne r4, r5
003d9eec  04 00 00 0a                                      beq #0x3d9f04
003d9ef0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003d9ef4  01 00 52 e1                                      cmp r2, r1
003d9ef8  02 40 a0 11                                      movne r4, r2
003d9efc  2d ff ff ea                                      b #0x3d9bb8
003d9f00  01 20 a0 e1                                      mov r2, r1
003d9f04  04 10 92 e5                                      ldr r1, [r2, #4]
003d9f08  0c 00 91 e5                                      ldr r0, [r1, #0xc]
003d9f0c  02 00 50 e1                                      cmp r0, r2
003d9f10  fa ff ff 0a                                      beq #0x3d9f00
003d9f14  02 40 a0 e1                                      mov r4, r2
003d9f18  01 20 a0 e1                                      mov r2, r1
003d9f1c  f3 ff ff ea                                      b #0x3d9ef0
003d9f20  14 20 9d e5                                      ldr r2, [sp, #0x14]
003d9f24  00 50 92 e5                                      ldr r5, [r2]
003d9f28  0c c0 95 e5                                      ldr ip, [r5, #0xc]
003d9f2c  00 00 5c e3                                      cmp ip, #0
003d9f30  ab ff ff 1a                                      bne #0x3d9de4
003d9f34  06 10 a0 e1                                      mov r1, r6
003d9f38  05 20 a0 e1                                      mov r2, r5
003d9f3c  08 30 a0 e1                                      mov r3, r8
003d9f40  07 00 a0 e1                                      mov r0, r7
003d9f44  00 c0 8d e5                                      str ip, [sp]
003d9f48  04 50 8d e5                                      str r5, [sp, #4]
003d9f4c  1f fe ff eb                                      bl #0x3d97d0
003d9f50  64 ff ff ea                                      b #0x3d9ce8
003d9f54  06 10 a0 e1                                      mov r1, r6
003d9f58  08 20 a0 e1                                      mov r2, r8
003d9f5c  30 00 8d e2                                      add r0, sp, #0x30
003d9f60  56 fe ff eb                                      bl #0x3d98c0
003d9f64  30 30 9d e5                                      ldr r3, [sp, #0x30]
003d9f68  00 30 87 e5                                      str r3, [r7]
003d9f6c  5d ff ff ea                                      b #0x3d9ce8
003d9f70  14 20 9d e5                                      ldr r2, [sp, #0x14]
003d9f74  00 30 92 e5                                      ldr r3, [r2]
003d9f78  00 30 87 e5                                      str r3, [r7]
003d9f7c  59 ff ff ea                                      b #0x3d9ce8
003d9f80  08 20 a0 e1                                      mov r2, r8
003d9f84  38 00 8d e2                                      add r0, sp, #0x38
003d9f88  4c fe ff eb                                      bl #0x3d98c0
003d9f8c  38 30 9d e5                                      ldr r3, [sp, #0x38]
003d9f90  00 30 87 e5                                      str r3, [r7]
003d9f94  53 ff ff ea                                      b #0x3d9ce8
003d9f98  06 10 a0 e1                                      mov r1, r6
003d9f9c  0c 20 a0 e1                                      mov r2, ip
003d9fa0  08 30 a0 e1                                      mov r3, r8
003d9fa4  07 00 a0 e1                                      mov r0, r7
003d9fa8  00 e0 8d e5                                      str lr, [sp]
003d9fac  04 c0 8d e5                                      str ip, [sp, #4]
003d9fb0  06 fe ff eb                                      bl #0x3d97d0
003d9fb4  4b ff ff ea                                      b #0x3d9ce8
003d9fb8  00 e0 a0 e3                                      mov lr, #0
003d9fbc  06 10 a0 e1                                      mov r1, r6
003d9fc0  0c 20 a0 e1                                      mov r2, ip
003d9fc4  08 30 a0 e1                                      mov r3, r8
003d9fc8  07 00 a0 e1                                      mov r0, r7
003d9fcc  00 e0 8d e5                                      str lr, [sp]
003d9fd0  04 c0 8d e5                                      str ip, [sp, #4]
003d9fd4  fd fd ff eb                                      bl #0x3d97d0
003d9fd8  42 ff ff ea                                      b #0x3d9ce8
