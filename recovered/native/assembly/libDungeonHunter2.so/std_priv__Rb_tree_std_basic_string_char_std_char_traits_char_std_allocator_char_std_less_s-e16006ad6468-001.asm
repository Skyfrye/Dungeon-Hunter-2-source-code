; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004af834, declared_size=72, range_size=72, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt6vectorIN12PyDataArrays6_FuncsESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004af834  70 40 2d e9                                      push {r4, r5, r6, lr}
004af838  00 40 51 e2                                      subs r4, r1, #0
004af83c  00 60 a0 e1                                      mov r6, r0
004af840  0c 00 00 0a                                      beq #0x4af878
004af844  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004af848  06 00 a0 e1                                      mov r0, r6
004af84c  f8 ff ff eb                                      bl #0x4af834
004af850  08 50 94 e5                                      ldr r5, [r4, #8]
004af854  28 00 84 e2                                      add r0, r4, #0x28
004af858  d5 ff ff eb                                      bl #0x4af7b4
004af85c  10 00 84 e2                                      add r0, r4, #0x10
004af860  7b a2 f9 eb                                      bl #0x318254
004af864  04 00 a0 e1                                      mov r0, r4
004af868  34 10 a0 e3                                      mov r1, #0x34
004af86c  a3 65 09 eb                                      bl #0x708f00
004af870  00 40 55 e2                                      subs r4, r5, #0
004af874  f2 ff ff 1a                                      bne #0x4af844
004af878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004bca18, declared_size=92, range_size=92, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt6vectorIN12PyDataArrays6_FuncsESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE14_M_create_nodeERKSA_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > const&)
; decoder-mode: arm
004bca18  30 40 2d e9                                      push {r4, r5, lr}
004bca1c  0c d0 4d e2                                      sub sp, sp, #0xc
004bca20  34 30 a0 e3                                      mov r3, #0x34
004bca24  08 00 8d e2                                      add r0, sp, #8
004bca28  04 30 20 e5                                      str r3, [r0, #-4]!
004bca2c  01 50 a0 e1                                      mov r5, r1
004bca30  22 31 09 eb                                      bl #0x708ec0
004bca34  00 40 a0 e1                                      mov r4, r0
004bca38  10 00 80 e2                                      add r0, r0, #0x10
004bca3c  20 00 84 e5                                      str r0, [r4, #0x20]
004bca40  24 00 84 e5                                      str r0, [r4, #0x24]
004bca44  14 10 95 e5                                      ldr r1, [r5, #0x14]
004bca48  10 20 95 e5                                      ldr r2, [r5, #0x10]
004bca4c  25 53 f9 eb                                      bl #0x3116e8
004bca50  18 10 85 e2                                      add r1, r5, #0x18
004bca54  28 00 84 e2                                      add r0, r4, #0x28
004bca58  bd cc ff eb                                      bl #0x4afd54
004bca5c  00 30 a0 e3                                      mov r3, #0
004bca60  0c 30 84 e5                                      str r3, [r4, #0xc]
004bca64  08 30 84 e5                                      str r3, [r4, #8]
004bca68  04 00 a0 e1                                      mov r0, r4
004bca6c  0c d0 8d e2                                      add sp, sp, #0xc
004bca70  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004bca74, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt6vectorIN12PyDataArrays6_FuncsESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SI_SI_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004bca74  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004bca78  02 00 51 e1                                      cmp r1, r2
004bca7c  0c d0 4d e2                                      sub sp, sp, #0xc
004bca80  01 40 a0 e1                                      mov r4, r1
004bca84  02 50 a0 e1                                      mov r5, r2
004bca88  00 60 a0 e1                                      mov r6, r0
004bca8c  23 00 00 0a                                      beq #0x4bcb20
004bca90  24 20 9d e5                                      ldr r2, [sp, #0x24]
004bca94  00 00 52 e3                                      cmp r2, #0
004bca98  12 00 00 0a                                      beq #0x4bcae8
004bca9c  03 10 a0 e1                                      mov r1, r3
004bcaa0  04 00 a0 e1                                      mov r0, r4
004bcaa4  db ff ff eb                                      bl #0x4bca18
004bcaa8  0c 00 85 e5                                      str r0, [r5, #0xc]
004bcaac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004bcab0  00 70 a0 e1                                      mov r7, r0
004bcab4  03 00 55 e1                                      cmp r5, r3
004bcab8  16 00 00 0a                                      beq #0x4bcb18
004bcabc  07 00 a0 e1                                      mov r0, r7
004bcac0  04 50 87 e5                                      str r5, [r7, #4]
004bcac4  04 10 84 e2                                      add r1, r4, #4
004bcac8  24 5b f9 eb                                      bl #0x313760
004bcacc  10 30 94 e5                                      ldr r3, [r4, #0x10]
004bcad0  06 00 a0 e1                                      mov r0, r6
004bcad4  01 30 83 e2                                      add r3, r3, #1
004bcad8  10 30 84 e5                                      str r3, [r4, #0x10]
004bcadc  00 70 86 e5                                      str r7, [r6]
004bcae0  0c d0 8d e2                                      add sp, sp, #0xc
004bcae4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004bcae8  20 20 9d e5                                      ldr r2, [sp, #0x20]
004bcaec  00 00 52 e3                                      cmp r2, #0
004bcaf0  12 00 00 0a                                      beq #0x4bcb40
004bcaf4  03 10 a0 e1                                      mov r1, r3
004bcaf8  04 00 a0 e1                                      mov r0, r4
004bcafc  c5 ff ff eb                                      bl #0x4bca18
004bcb00  08 00 85 e5                                      str r0, [r5, #8]
004bcb04  08 30 94 e5                                      ldr r3, [r4, #8]
004bcb08  00 70 a0 e1                                      mov r7, r0
004bcb0c  03 00 55 e1                                      cmp r5, r3
004bcb10  08 00 84 05                                      streq r0, [r4, #8]
004bcb14  e8 ff ff ea                                      b #0x4bcabc
004bcb18  0c 70 84 e5                                      str r7, [r4, #0xc]
004bcb1c  e6 ff ff ea                                      b #0x4bcabc
004bcb20  03 10 a0 e1                                      mov r1, r3
004bcb24  04 00 a0 e1                                      mov r0, r4
004bcb28  ba ff ff eb                                      bl #0x4bca18
004bcb2c  00 70 a0 e1                                      mov r7, r0
004bcb30  08 00 84 e5                                      str r0, [r4, #8]
004bcb34  04 00 84 e5                                      str r0, [r4, #4]
004bcb38  0c 00 84 e5                                      str r0, [r4, #0xc]
004bcb3c  de ff ff ea                                      b #0x4bcabc
004bcb40  14 00 81 e2                                      add r0, r1, #0x14
004bcb44  10 20 85 e2                                      add r2, r5, #0x10
004bcb48  03 10 a0 e1                                      mov r1, r3
004bcb4c  04 30 8d e5                                      str r3, [sp, #4]
004bcb50  28 5c f9 eb                                      bl #0x313bf8
004bcb54  00 00 50 e3                                      cmp r0, #0
004bcb58  04 30 9d e5                                      ldr r3, [sp, #4]
004bcb5c  ce ff ff 0a                                      beq #0x4bca9c
004bcb60  e3 ff ff ea                                      b #0x4bcaf4

; FUNCTION 0x004bce8c, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt6vectorIN12PyDataArrays6_FuncsESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > const&)
; decoder-mode: arm
004bce8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bce90  04 50 91 e5                                      ldr r5, [r1, #4]
004bce94  14 d0 4d e2                                      sub sp, sp, #0x14
004bce98  01 90 a0 e1                                      mov sb, r1
004bce9c  00 00 55 e3                                      cmp r5, #0
004bcea0  00 40 a0 e1                                      mov r4, r0
004bcea4  02 80 a0 e1                                      mov r8, r2
004bcea8  38 00 00 0a                                      beq #0x4bcf90
004bceac  14 70 92 e5                                      ldr r7, [r2, #0x14]
004bceb0  10 b0 92 e5                                      ldr fp, [r2, #0x10]
004bceb4  0b a0 67 e0                                      rsb sl, r7, fp
004bceb8  04 00 00 ea                                      b #0x4bced0
004bcebc  08 30 95 e5                                      ldr r3, [r5, #8]
004bcec0  01 10 a0 e3                                      mov r1, #1
004bcec4  00 00 53 e3                                      cmp r3, #0
004bcec8  16 00 00 0a                                      beq #0x4bcf28
004bcecc  03 50 a0 e1                                      mov r5, r3
004bced0  24 30 95 e5                                      ldr r3, [r5, #0x24]
004bced4  20 60 95 e5                                      ldr r6, [r5, #0x20]
004bced8  07 00 a0 e1                                      mov r0, r7
004bcedc  03 10 a0 e1                                      mov r1, r3
004bcee0  06 60 63 e0                                      rsb r6, r3, r6
004bcee4  0a 00 56 e1                                      cmp r6, sl
004bcee8  06 20 a0 b1                                      movlt r2, r6
004bceec  0a 20 a0 a1                                      movge r2, sl
004bcef0  ba 45 f9 eb                                      bl #0x30e5e0
004bcef4  00 00 50 e3                                      cmp r0, #0
004bcef8  05 20 a0 e1                                      mov r2, r5
004bcefc  03 00 00 1a                                      bne #0x4bcf10
004bcf00  06 00 5a e1                                      cmp sl, r6
004bcf04  ec ff ff ba                                      blt #0x4bcebc
004bcf08  00 00 a0 d3                                      movle r0, #0
004bcf0c  01 00 a0 c3                                      movgt r0, #1
004bcf10  00 00 50 e3                                      cmp r0, #0
004bcf14  e8 ff ff ba                                      blt #0x4bcebc
004bcf18  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004bcf1c  00 10 a0 e3                                      mov r1, #0
004bcf20  00 00 53 e3                                      cmp r3, #0
004bcf24  e8 ff ff 1a                                      bne #0x4bcecc
004bcf28  00 00 51 e3                                      cmp r1, #0
004bcf2c  05 a0 a0 01                                      moveq sl, r5
004bcf30  17 00 00 1a                                      bne #0x4bcf94
004bcf34  24 00 92 e5                                      ldr r0, [r2, #0x24]
004bcf38  20 60 92 e5                                      ldr r6, [r2, #0x20]
004bcf3c  0b b0 67 e0                                      rsb fp, r7, fp
004bcf40  07 10 a0 e1                                      mov r1, r7
004bcf44  06 60 60 e0                                      rsb r6, r0, r6
004bcf48  06 00 5b e1                                      cmp fp, r6
004bcf4c  0b 20 a0 b1                                      movlt r2, fp
004bcf50  06 20 a0 a1                                      movge r2, r6
004bcf54  a1 45 f9 eb                                      bl #0x30e5e0
004bcf58  00 00 50 e3                                      cmp r0, #0
004bcf5c  03 00 00 1a                                      bne #0x4bcf70
004bcf60  0b 00 56 e1                                      cmp r6, fp
004bcf64  20 00 00 ba                                      blt #0x4bcfec
004bcf68  00 00 a0 d3                                      movle r0, #0
004bcf6c  01 00 a0 c3                                      movgt r0, #1
004bcf70  00 00 50 e3                                      cmp r0, #0
004bcf74  00 30 a0 a3                                      movge r3, #0
004bcf78  00 a0 84 a5                                      strge sl, [r4]
004bcf7c  04 30 c4 a5                                      strbge r3, [r4, #4]
004bcf80  19 00 00 ba                                      blt #0x4bcfec
004bcf84  04 00 a0 e1                                      mov r0, r4
004bcf88  14 d0 8d e2                                      add sp, sp, #0x14
004bcf8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bcf90  01 50 a0 e1                                      mov r5, r1
004bcf94  08 30 99 e5                                      ldr r3, [sb, #8]
004bcf98  03 00 55 e1                                      cmp r5, r3
004bcf9c  32 00 00 0a                                      beq #0x4bd06c
004bcfa0  00 30 d5 e5                                      ldrb r3, [r5]
004bcfa4  00 00 53 e3                                      cmp r3, #0
004bcfa8  03 00 00 1a                                      bne #0x4bcfbc
004bcfac  04 30 95 e5                                      ldr r3, [r5, #4]
004bcfb0  04 30 93 e5                                      ldr r3, [r3, #4]
004bcfb4  03 00 55 e1                                      cmp r5, r3
004bcfb8  26 00 00 0a                                      beq #0x4bd058
004bcfbc  08 20 95 e5                                      ldr r2, [r5, #8]
004bcfc0  00 00 52 e3                                      cmp r2, #0
004bcfc4  01 00 00 1a                                      bne #0x4bcfd0
004bcfc8  14 00 00 ea                                      b #0x4bd020
004bcfcc  03 20 a0 e1                                      mov r2, r3
004bcfd0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
004bcfd4  00 00 53 e3                                      cmp r3, #0
004bcfd8  fb ff ff 1a                                      bne #0x4bcfcc
004bcfdc  02 a0 a0 e1                                      mov sl, r2
004bcfe0  14 70 98 e5                                      ldr r7, [r8, #0x14]
004bcfe4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bcfe8  d1 ff ff ea                                      b #0x4bcf34
004bcfec  00 c0 a0 e3                                      mov ip, #0
004bcff0  05 20 a0 e1                                      mov r2, r5
004bcff4  08 30 a0 e1                                      mov r3, r8
004bcff8  09 10 a0 e1                                      mov r1, sb
004bcffc  08 00 8d e2                                      add r0, sp, #8
004bd000  04 c0 8d e5                                      str ip, [sp, #4]
004bd004  00 c0 8d e5                                      str ip, [sp]
004bd008  99 fe ff eb                                      bl #0x4bca74
004bd00c  08 30 9d e5                                      ldr r3, [sp, #8]
004bd010  01 20 a0 e3                                      mov r2, #1
004bd014  04 20 c4 e5                                      strb r2, [r4, #4]
004bd018  00 30 84 e5                                      str r3, [r4]
004bd01c  d8 ff ff ea                                      b #0x4bcf84
004bd020  04 30 95 e5                                      ldr r3, [r5, #4]
004bd024  08 20 93 e5                                      ldr r2, [r3, #8]
004bd028  02 00 55 e1                                      cmp r5, r2
004bd02c  01 00 00 0a                                      beq #0x4bd038
004bd030  19 00 00 ea                                      b #0x4bd09c
004bd034  02 30 a0 e1                                      mov r3, r2
004bd038  04 20 93 e5                                      ldr r2, [r3, #4]
004bd03c  08 10 92 e5                                      ldr r1, [r2, #8]
004bd040  03 00 51 e1                                      cmp r1, r3
004bd044  fa ff ff 0a                                      beq #0x4bd034
004bd048  14 70 98 e5                                      ldr r7, [r8, #0x14]
004bd04c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bd050  02 a0 a0 e1                                      mov sl, r2
004bd054  b6 ff ff ea                                      b #0x4bcf34
004bd058  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004bd05c  14 70 98 e5                                      ldr r7, [r8, #0x14]
004bd060  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bd064  02 a0 a0 e1                                      mov sl, r2
004bd068  b1 ff ff ea                                      b #0x4bcf34
004bd06c  05 20 a0 e1                                      mov r2, r5
004bd070  08 30 a0 e1                                      mov r3, r8
004bd074  00 c0 a0 e3                                      mov ip, #0
004bd078  09 10 a0 e1                                      mov r1, sb
004bd07c  0c 00 8d e2                                      add r0, sp, #0xc
004bd080  20 10 8d e8                                      stm sp, {r5, ip}
004bd084  7a fe ff eb                                      bl #0x4bca74
004bd088  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004bd08c  01 20 a0 e3                                      mov r2, #1
004bd090  04 20 c4 e5                                      strb r2, [r4, #4]
004bd094  00 30 84 e5                                      str r3, [r4]
004bd098  b9 ff ff ea                                      b #0x4bcf84
004bd09c  03 20 a0 e1                                      mov r2, r3
004bd0a0  cd ff ff ea                                      b #0x4bcfdc

; FUNCTION 0x004bdd70, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsSt6vectorIN12PyDataArrays6_FuncsESaIS7_EEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueENS_17_Rb_tree_iteratorISA_SE_EERKSA_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > const&)
; decoder-mode: arm
004bdd70  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bdd74  44 d0 4d e2                                      sub sp, sp, #0x44
004bdd78  14 20 8d e5                                      str r2, [sp, #0x14]
004bdd7c  00 50 92 e5                                      ldr r5, [r2]
004bdd80  08 20 91 e5                                      ldr r2, [r1, #8]
004bdd84  01 60 a0 e1                                      mov r6, r1
004bdd88  00 70 a0 e1                                      mov r7, r0
004bdd8c  02 00 55 e1                                      cmp r5, r2
004bdd90  03 80 a0 e1                                      mov r8, r3
004bdd94  7c 00 00 0a                                      beq #0x4bdf8c
004bdd98  01 00 55 e1                                      cmp r5, r1
004bdd9c  d0 00 00 0a                                      beq #0x4be0e4
004bdda0  00 30 d5 e5                                      ldrb r3, [r5]
004bdda4  00 00 53 e3                                      cmp r3, #0
004bdda8  35 00 00 0a                                      beq #0x4bde84
004bddac  08 40 95 e5                                      ldr r4, [r5, #8]
004bddb0  00 00 54 e3                                      cmp r4, #0
004bddb4  01 00 00 1a                                      bne #0x4bddc0
004bddb8  39 00 00 ea                                      b #0x4bdea4
004bddbc  03 40 a0 e1                                      mov r4, r3
004bddc0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004bddc4  00 00 53 e3                                      cmp r3, #0
004bddc8  fb ff ff 1a                                      bne #0x4bddbc
004bddcc  24 30 95 e5                                      ldr r3, [r5, #0x24]
004bddd0  14 90 98 e5                                      ldr sb, [r8, #0x14]
004bddd4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bddd8  20 20 95 e5                                      ldr r2, [r5, #0x20]
004bdddc  03 10 a0 e1                                      mov r1, r3
004bdde0  0b b0 69 e0                                      rsb fp, sb, fp
004bdde4  02 20 63 e0                                      rsb r2, r3, r2
004bdde8  18 20 8d e5                                      str r2, [sp, #0x18]
004bddec  09 00 a0 e1                                      mov r0, sb
004bddf0  0b 00 52 e1                                      cmp r2, fp
004bddf4  0b 20 a0 a1                                      movge r2, fp
004bddf8  0c 30 8d e5                                      str r3, [sp, #0xc]
004bddfc  1c 20 8d e5                                      str r2, [sp, #0x1c]
004bde00  f6 41 f9 eb                                      bl #0x30e5e0
004bde04  00 00 50 e3                                      cmp r0, #0
004bde08  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004bde0c  05 00 00 1a                                      bne #0x4bde28
004bde10  18 20 9d e5                                      ldr r2, [sp, #0x18]
004bde14  02 00 5b e1                                      cmp fp, r2
004bde18  00 00 e0 b3                                      mvnlt r0, #0
004bde1c  01 00 00 ba                                      blt #0x4bde28
004bde20  00 00 a0 d3                                      movle r0, #0
004bde24  01 00 a0 c3                                      movgt r0, #1
004bde28  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
004bde2c  28 00 00 1a                                      bne #0x4bded4
004bde30  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004bde34  00 00 54 e3                                      cmp r4, #0
004bde38  01 00 00 1a                                      bne #0x4bde44
004bde3c  cc 00 00 ea                                      b #0x4be174
004bde40  02 40 a0 e1                                      mov r4, r2
004bde44  08 20 94 e5                                      ldr r2, [r4, #8]
004bde48  00 00 52 e3                                      cmp r2, #0
004bde4c  fb ff ff 1a                                      bne #0x4bde40
004bde50  00 00 5c e3                                      cmp ip, #0
004bde54  43 00 00 1a                                      bne #0x4bdf68
004bde58  03 00 a0 e1                                      mov r0, r3
004bde5c  09 10 a0 e1                                      mov r1, sb
004bde60  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004bde64  dd 41 f9 eb                                      bl #0x30e5e0
004bde68  00 00 50 e3                                      cmp r0, #0
004bde6c  34 00 00 1a                                      bne #0x4bdf44
004bde70  18 30 9d e5                                      ldr r3, [sp, #0x18]
004bde74  03 00 5b e1                                      cmp fp, r3
004bde78  32 00 00 ca                                      bgt #0x4bdf48
004bde7c  00 50 87 e5                                      str r5, [r7]
004bde80  3e 00 00 ea                                      b #0x4bdf80
004bde84  04 30 95 e5                                      ldr r3, [r5, #4]
004bde88  04 30 93 e5                                      ldr r3, [r3, #4]
004bde8c  03 00 55 e1                                      cmp r5, r3
004bde90  0c 40 95 05                                      ldreq r4, [r5, #0xc]
004bde94  cc ff ff 0a                                      beq #0x4bddcc
004bde98  08 40 95 e5                                      ldr r4, [r5, #8]
004bde9c  00 00 54 e3                                      cmp r4, #0
004bdea0  c6 ff ff 1a                                      bne #0x4bddc0
004bdea4  04 40 95 e5                                      ldr r4, [r5, #4]
004bdea8  08 30 94 e5                                      ldr r3, [r4, #8]
004bdeac  03 00 55 e1                                      cmp r5, r3
004bdeb0  01 00 00 0a                                      beq #0x4bdebc
004bdeb4  c4 ff ff ea                                      b #0x4bddcc
004bdeb8  03 40 a0 e1                                      mov r4, r3
004bdebc  04 30 94 e5                                      ldr r3, [r4, #4]
004bdec0  08 20 93 e5                                      ldr r2, [r3, #8]
004bdec4  04 00 52 e1                                      cmp r2, r4
004bdec8  fa ff ff 0a                                      beq #0x4bdeb8
004bdecc  03 40 a0 e1                                      mov r4, r3
004bded0  bd ff ff ea                                      b #0x4bddcc
004bded4  24 20 94 e5                                      ldr r2, [r4, #0x24]
004bded8  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004bdedc  09 10 a0 e1                                      mov r1, sb
004bdee0  02 00 a0 e1                                      mov r0, r2
004bdee4  0a a0 62 e0                                      rsb sl, r2, sl
004bdee8  0a 00 5b e1                                      cmp fp, sl
004bdeec  0b 20 a0 b1                                      movlt r2, fp
004bdef0  0a 20 a0 a1                                      movge r2, sl
004bdef4  0c 30 8d e5                                      str r3, [sp, #0xc]
004bdef8  10 c0 8d e5                                      str ip, [sp, #0x10]
004bdefc  b7 41 f9 eb                                      bl #0x30e5e0
004bdf00  00 00 50 e3                                      cmp r0, #0
004bdf04  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004bdf08  10 c0 9d e5                                      ldr ip, [sp, #0x10]
004bdf0c  6f 00 00 1a                                      bne #0x4be0d0
004bdf10  0a 00 5b e1                                      cmp fp, sl
004bdf14  c5 ff ff da                                      ble #0x4bde30
004bdf18  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004bdf1c  00 00 5c e3                                      cmp ip, #0
004bdf20  62 00 00 0a                                      beq #0x4be0b0
004bdf24  00 c0 a0 e3                                      mov ip, #0
004bdf28  06 10 a0 e1                                      mov r1, r6
004bdf2c  05 20 a0 e1                                      mov r2, r5
004bdf30  08 30 a0 e1                                      mov r3, r8
004bdf34  07 00 a0 e1                                      mov r0, r7
004bdf38  20 10 8d e8                                      stm sp, {r5, ip}
004bdf3c  cc fa ff eb                                      bl #0x4bca74
004bdf40  0e 00 00 ea                                      b #0x4bdf80
004bdf44  cc ff ff aa                                      bge #0x4bde7c
004bdf48  04 00 56 e1                                      cmp r6, r4
004bdf4c  9b 00 00 0a                                      beq #0x4be1c0
004bdf50  14 00 86 e2                                      add r0, r6, #0x14
004bdf54  08 10 a0 e1                                      mov r1, r8
004bdf58  10 20 84 e2                                      add r2, r4, #0x10
004bdf5c  25 57 f9 eb                                      bl #0x313bf8
004bdf60  00 00 50 e3                                      cmp r0, #0
004bdf64  93 00 00 1a                                      bne #0x4be1b8
004bdf68  06 10 a0 e1                                      mov r1, r6
004bdf6c  08 20 a0 e1                                      mov r2, r8
004bdf70  20 00 8d e2                                      add r0, sp, #0x20
004bdf74  c4 fb ff eb                                      bl #0x4bce8c
004bdf78  20 30 9d e5                                      ldr r3, [sp, #0x20]
004bdf7c  00 30 87 e5                                      str r3, [r7]
004bdf80  07 00 a0 e1                                      mov r0, r7
004bdf84  44 d0 8d e2                                      add sp, sp, #0x44
004bdf88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bdf8c  10 30 91 e5                                      ldr r3, [r1, #0x10]
004bdf90  00 00 53 e3                                      cmp r3, #0
004bdf94  9f 00 00 0a                                      beq #0x4be218
004bdf98  14 30 98 e5                                      ldr r3, [r8, #0x14]
004bdf9c  24 10 95 e5                                      ldr r1, [r5, #0x24]
004bdfa0  10 40 98 e5                                      ldr r4, [r8, #0x10]
004bdfa4  20 a0 95 e5                                      ldr sl, [r5, #0x20]
004bdfa8  03 00 a0 e1                                      mov r0, r3
004bdfac  04 40 63 e0                                      rsb r4, r3, r4
004bdfb0  0a a0 61 e0                                      rsb sl, r1, sl
004bdfb4  04 00 5a e1                                      cmp sl, r4
004bdfb8  0a 20 a0 b1                                      movlt r2, sl
004bdfbc  04 20 a0 a1                                      movge r2, r4
004bdfc0  86 41 f9 eb                                      bl #0x30e5e0
004bdfc4  00 00 50 e3                                      cmp r0, #0
004bdfc8  03 00 00 1a                                      bne #0x4bdfdc
004bdfcc  0a 00 54 e1                                      cmp r4, sl
004bdfd0  d3 ff ff ba                                      blt #0x4bdf24
004bdfd4  00 00 a0 d3                                      movle r0, #0
004bdfd8  01 00 a0 c3                                      movgt r0, #1
004bdfdc  00 00 50 e3                                      cmp r0, #0
004bdfe0  cf ff ff ba                                      blt #0x4bdf24
004bdfe4  14 a0 86 e2                                      add sl, r6, #0x14
004bdfe8  10 10 85 e2                                      add r1, r5, #0x10
004bdfec  0a 00 a0 e1                                      mov r0, sl
004bdff0  08 20 a0 e1                                      mov r2, r8
004bdff4  ff 56 f9 eb                                      bl #0x313bf8
004bdff8  00 00 50 e3                                      cmp r0, #0
004bdffc  81 00 00 0a                                      beq #0x4be208
004be000  14 30 9d e5                                      ldr r3, [sp, #0x14]
004be004  00 c0 93 e5                                      ldr ip, [r3]
004be008  0c 40 9c e5                                      ldr r4, [ip, #0xc]
004be00c  00 00 54 e3                                      cmp r4, #0
004be010  22 00 00 1a                                      bne #0x4be0a0
004be014  04 30 9c e5                                      ldr r3, [ip, #4]
004be018  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004be01c  02 00 5c e1                                      cmp ip, r2
004be020  0c 40 a0 11                                      movne r4, ip
004be024  04 00 00 1a                                      bne #0x4be03c
004be028  03 40 a0 e1                                      mov r4, r3
004be02c  04 30 93 e5                                      ldr r3, [r3, #4]
004be030  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004be034  04 00 52 e1                                      cmp r2, r4
004be038  fa ff ff 0a                                      beq #0x4be028
004be03c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004be040  02 00 53 e1                                      cmp r3, r2
004be044  03 40 a0 11                                      movne r4, r3
004be048  04 00 56 e1                                      cmp r6, r4
004be04c  7f 00 00 0a                                      beq #0x4be250
004be050  0a 00 a0 e1                                      mov r0, sl
004be054  08 10 a0 e1                                      mov r1, r8
004be058  10 20 84 e2                                      add r2, r4, #0x10
004be05c  e5 56 f9 eb                                      bl #0x313bf8
004be060  00 00 50 e3                                      cmp r0, #0
004be064  60 00 00 0a                                      beq #0x4be1ec
004be068  14 20 9d e5                                      ldr r2, [sp, #0x14]
004be06c  00 c0 92 e5                                      ldr ip, [r2]
004be070  0c e0 9c e5                                      ldr lr, [ip, #0xc]
004be074  00 00 5e e3                                      cmp lr, #0
004be078  6c 00 00 0a                                      beq #0x4be230
004be07c  00 c0 a0 e3                                      mov ip, #0
004be080  06 10 a0 e1                                      mov r1, r6
004be084  04 20 a0 e1                                      mov r2, r4
004be088  08 30 a0 e1                                      mov r3, r8
004be08c  07 00 a0 e1                                      mov r0, r7
004be090  10 10 8d e8                                      stm sp, {r4, ip}
004be094  76 fa ff eb                                      bl #0x4bca74
004be098  b8 ff ff ea                                      b #0x4bdf80
004be09c  03 40 a0 e1                                      mov r4, r3
004be0a0  08 30 94 e5                                      ldr r3, [r4, #8]
004be0a4  00 00 53 e3                                      cmp r3, #0
004be0a8  fb ff ff 1a                                      bne #0x4be09c
004be0ac  e5 ff ff ea                                      b #0x4be048
004be0b0  06 10 a0 e1                                      mov r1, r6
004be0b4  04 20 a0 e1                                      mov r2, r4
004be0b8  08 30 a0 e1                                      mov r3, r8
004be0bc  07 00 a0 e1                                      mov r0, r7
004be0c0  00 c0 8d e5                                      str ip, [sp]
004be0c4  04 40 8d e5                                      str r4, [sp, #4]
004be0c8  69 fa ff eb                                      bl #0x4bca74
004be0cc  ab ff ff ea                                      b #0x4bdf80
004be0d0  56 ff ff aa                                      bge #0x4bde30
004be0d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004be0d8  00 00 5c e3                                      cmp ip, #0
004be0dc  90 ff ff 1a                                      bne #0x4bdf24
004be0e0  f2 ff ff ea                                      b #0x4be0b0
004be0e4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004be0e8  14 10 93 e5                                      ldr r1, [r3, #0x14]
004be0ec  10 90 93 e5                                      ldr sb, [r3, #0x10]
004be0f0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004be0f4  24 30 94 e5                                      ldr r3, [r4, #0x24]
004be0f8  09 90 61 e0                                      rsb sb, r1, sb
004be0fc  0a a0 63 e0                                      rsb sl, r3, sl
004be100  0a 00 59 e1                                      cmp sb, sl
004be104  09 20 a0 b1                                      movlt r2, sb
004be108  0a 20 a0 a1                                      movge r2, sl
004be10c  03 00 a0 e1                                      mov r0, r3
004be110  32 41 f9 eb                                      bl #0x30e5e0
004be114  00 00 50 e3                                      cmp r0, #0
004be118  03 00 00 1a                                      bne #0x4be12c
004be11c  09 00 5a e1                                      cmp sl, sb
004be120  03 00 00 ba                                      blt #0x4be134
004be124  00 00 a0 d3                                      movle r0, #0
004be128  01 00 a0 c3                                      movgt r0, #1
004be12c  00 00 50 e3                                      cmp r0, #0
004be130  08 00 00 aa                                      bge #0x4be158
004be134  00 c0 a0 e3                                      mov ip, #0
004be138  06 10 a0 e1                                      mov r1, r6
004be13c  04 20 a0 e1                                      mov r2, r4
004be140  08 30 a0 e1                                      mov r3, r8
004be144  07 00 a0 e1                                      mov r0, r7
004be148  00 c0 8d e5                                      str ip, [sp]
004be14c  04 50 8d e5                                      str r5, [sp, #4]
004be150  47 fa ff eb                                      bl #0x4bca74
004be154  89 ff ff ea                                      b #0x4bdf80
004be158  06 10 a0 e1                                      mov r1, r6
004be15c  08 20 a0 e1                                      mov r2, r8
004be160  28 00 8d e2                                      add r0, sp, #0x28
004be164  48 fb ff eb                                      bl #0x4bce8c
004be168  28 30 9d e5                                      ldr r3, [sp, #0x28]
004be16c  00 30 87 e5                                      str r3, [r7]
004be170  82 ff ff ea                                      b #0x4bdf80
004be174  04 20 95 e5                                      ldr r2, [r5, #4]
004be178  0c 10 92 e5                                      ldr r1, [r2, #0xc]
004be17c  01 00 55 e1                                      cmp r5, r1
004be180  05 40 a0 11                                      movne r4, r5
004be184  04 00 00 0a                                      beq #0x4be19c
004be188  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004be18c  01 00 52 e1                                      cmp r2, r1
004be190  02 40 a0 11                                      movne r4, r2
004be194  2d ff ff ea                                      b #0x4bde50
004be198  01 20 a0 e1                                      mov r2, r1
004be19c  04 10 92 e5                                      ldr r1, [r2, #4]
004be1a0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
004be1a4  02 00 50 e1                                      cmp r0, r2
004be1a8  fa ff ff 0a                                      beq #0x4be198
004be1ac  02 40 a0 e1                                      mov r4, r2
004be1b0  01 20 a0 e1                                      mov r2, r1
004be1b4  f3 ff ff ea                                      b #0x4be188
004be1b8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004be1bc  00 50 92 e5                                      ldr r5, [r2]
004be1c0  0c c0 95 e5                                      ldr ip, [r5, #0xc]
004be1c4  00 00 5c e3                                      cmp ip, #0
004be1c8  ab ff ff 1a                                      bne #0x4be07c
004be1cc  06 10 a0 e1                                      mov r1, r6
004be1d0  05 20 a0 e1                                      mov r2, r5
004be1d4  08 30 a0 e1                                      mov r3, r8
004be1d8  07 00 a0 e1                                      mov r0, r7
004be1dc  00 c0 8d e5                                      str ip, [sp]
004be1e0  04 50 8d e5                                      str r5, [sp, #4]
004be1e4  22 fa ff eb                                      bl #0x4bca74
004be1e8  64 ff ff ea                                      b #0x4bdf80
004be1ec  06 10 a0 e1                                      mov r1, r6
004be1f0  08 20 a0 e1                                      mov r2, r8
004be1f4  30 00 8d e2                                      add r0, sp, #0x30
004be1f8  23 fb ff eb                                      bl #0x4bce8c
004be1fc  30 30 9d e5                                      ldr r3, [sp, #0x30]
004be200  00 30 87 e5                                      str r3, [r7]
004be204  5d ff ff ea                                      b #0x4bdf80
004be208  14 20 9d e5                                      ldr r2, [sp, #0x14]
004be20c  00 30 92 e5                                      ldr r3, [r2]
004be210  00 30 87 e5                                      str r3, [r7]
004be214  59 ff ff ea                                      b #0x4bdf80
004be218  08 20 a0 e1                                      mov r2, r8
004be21c  38 00 8d e2                                      add r0, sp, #0x38
004be220  19 fb ff eb                                      bl #0x4bce8c
004be224  38 30 9d e5                                      ldr r3, [sp, #0x38]
004be228  00 30 87 e5                                      str r3, [r7]
004be22c  53 ff ff ea                                      b #0x4bdf80
004be230  06 10 a0 e1                                      mov r1, r6
004be234  0c 20 a0 e1                                      mov r2, ip
004be238  08 30 a0 e1                                      mov r3, r8
004be23c  07 00 a0 e1                                      mov r0, r7
004be240  00 e0 8d e5                                      str lr, [sp]
004be244  04 c0 8d e5                                      str ip, [sp, #4]
004be248  09 fa ff eb                                      bl #0x4bca74
004be24c  4b ff ff ea                                      b #0x4bdf80
004be250  00 e0 a0 e3                                      mov lr, #0
004be254  06 10 a0 e1                                      mov r1, r6
004be258  0c 20 a0 e1                                      mov r2, ip
004be25c  08 30 a0 e1                                      mov r3, r8
004be260  07 00 a0 e1                                      mov r0, r7
004be264  00 e0 8d e5                                      str lr, [sp]
004be268  04 c0 8d e5                                      str ip, [sp, #4]
004be26c  00 fa ff eb                                      bl #0x4bca74
004be270  42 ff ff ea                                      b #0x4bdf80
