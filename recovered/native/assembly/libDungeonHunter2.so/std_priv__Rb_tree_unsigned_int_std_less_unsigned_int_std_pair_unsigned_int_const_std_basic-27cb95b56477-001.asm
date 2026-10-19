; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037bd7c, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0037bd7c  70 40 2d e9                                      push {r4, r5, r6, lr}
0037bd80  00 40 51 e2                                      subs r4, r1, #0
0037bd84  00 60 a0 e1                                      mov r6, r0
0037bd88  06 00 00 1a                                      bne #0x37bda8
0037bd8c  1a 00 00 ea                                      b #0x37bdfc
0037bd90  5a 34 0e eb                                      bl #0x708f00
0037bd94  04 00 a0 e1                                      mov r0, r4
0037bd98  2c 10 a0 e3                                      mov r1, #0x2c
0037bd9c  57 34 0e eb                                      bl #0x708f00
0037bda0  00 40 55 e2                                      subs r4, r5, #0
0037bda4  14 00 00 0a                                      beq #0x37bdfc
0037bda8  06 00 a0 e1                                      mov r0, r6
0037bdac  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0037bdb0  f1 ff ff eb                                      bl #0x37bd7c
0037bdb4  14 20 84 e2                                      add r2, r4, #0x14
0037bdb8  14 30 92 e5                                      ldr r3, [r2, #0x14]
0037bdbc  08 50 94 e5                                      ldr r5, [r4, #8]
0037bdc0  02 00 53 e1                                      cmp r3, r2
0037bdc4  03 00 a0 e1                                      mov r0, r3
0037bdc8  f1 ff ff 0a                                      beq #0x37bd94
0037bdcc  00 00 53 e3                                      cmp r3, #0
0037bdd0  ef ff ff 0a                                      beq #0x37bd94
0037bdd4  00 10 92 e5                                      ldr r1, [r2]
0037bdd8  01 10 63 e0                                      rsb r1, r3, r1
0037bddc  80 00 51 e3                                      cmp r1, #0x80
0037bde0  ea ff ff 9a                                      bls #0x37bd90
0037bde4  95 51 fe eb                                      bl #0x310440
0037bde8  04 00 a0 e1                                      mov r0, r4
0037bdec  2c 10 a0 e3                                      mov r1, #0x2c
0037bdf0  42 34 0e eb                                      bl #0x708f00
0037bdf4  00 40 55 e2                                      subs r4, r5, #0
0037bdf8  ea ff ff 1a                                      bne #0x37bda8
0037bdfc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0037be48, declared_size=120, range_size=120, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE5eraseENS_17_Rb_tree_iteratorIS5_S9_EE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::erase(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >)
; decoder-mode: arm
0037be48  70 40 2d e9                                      push {r4, r5, r6, lr}
0037be4c  00 40 a0 e1                                      mov r4, r0
0037be50  0c 30 84 e2                                      add r3, r4, #0xc
0037be54  00 00 91 e5                                      ldr r0, [r1]
0037be58  08 20 84 e2                                      add r2, r4, #8
0037be5c  04 10 84 e2                                      add r1, r4, #4
0037be60  67 e8 fe eb                                      bl #0x336004
0037be64  14 30 80 e2                                      add r3, r0, #0x14
0037be68  00 50 a0 e1                                      mov r5, r0
0037be6c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0037be70  03 00 50 e1                                      cmp r0, r3
0037be74  06 00 00 0a                                      beq #0x37be94
0037be78  00 00 50 e3                                      cmp r0, #0
0037be7c  04 00 00 0a                                      beq #0x37be94
0037be80  14 10 95 e5                                      ldr r1, [r5, #0x14]
0037be84  01 10 60 e0                                      rsb r1, r0, r1
0037be88  80 00 51 e3                                      cmp r1, #0x80
0037be8c  09 00 00 8a                                      bhi #0x37beb8
0037be90  1a 34 0e eb                                      bl #0x708f00
0037be94  00 00 55 e3                                      cmp r5, #0
0037be98  02 00 00 0a                                      beq #0x37bea8
0037be9c  05 00 a0 e1                                      mov r0, r5
0037bea0  2c 10 a0 e3                                      mov r1, #0x2c
0037bea4  15 34 0e eb                                      bl #0x708f00
0037bea8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037beac  01 30 43 e2                                      sub r3, r3, #1
0037beb0  10 30 84 e5                                      str r3, [r4, #0x10]
0037beb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037beb8  60 51 fe eb                                      bl #0x310440
0037bebc  f4 ff ff ea                                      b #0x37be94

; FUNCTION 0x0037cd24, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE14_M_create_nodeERKS5_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_create_node(std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)
; decoder-mode: arm
0037cd24  30 40 2d e9                                      push {r4, r5, lr}
0037cd28  0c d0 4d e2                                      sub sp, sp, #0xc
0037cd2c  08 00 8d e2                                      add r0, sp, #8
0037cd30  2c 30 a0 e3                                      mov r3, #0x2c
0037cd34  04 30 20 e5                                      str r3, [r0, #-4]!
0037cd38  01 50 a0 e1                                      mov r5, r1
0037cd3c  5f 30 0e eb                                      bl #0x708ec0
0037cd40  00 30 95 e5                                      ldr r3, [r5]
0037cd44  00 40 a0 e1                                      mov r4, r0
0037cd48  14 00 80 e2                                      add r0, r0, #0x14
0037cd4c  24 00 84 e5                                      str r0, [r4, #0x24]
0037cd50  10 30 84 e5                                      str r3, [r4, #0x10]
0037cd54  28 00 84 e5                                      str r0, [r4, #0x28]
0037cd58  14 20 95 e5                                      ldr r2, [r5, #0x14]
0037cd5c  18 10 95 e5                                      ldr r1, [r5, #0x18]
0037cd60  60 52 fe eb                                      bl #0x3116e8
0037cd64  00 30 a0 e3                                      mov r3, #0
0037cd68  0c 30 84 e5                                      str r3, [r4, #0xc]
0037cd6c  08 30 84 e5                                      str r3, [r4, #8]
0037cd70  04 00 a0 e1                                      mov r0, r4
0037cd74  0c d0 8d e2                                      add sp, sp, #0xc
0037cd78  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0037cd7c, declared_size=216, range_size=216, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS5_SD_SD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0037cd7c  02 00 51 e1                                      cmp r1, r2
0037cd80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037cd84  01 40 a0 e1                                      mov r4, r1
0037cd88  02 50 a0 e1                                      mov r5, r2
0037cd8c  00 60 a0 e1                                      mov r6, r0
0037cd90  22 00 00 0a                                      beq #0x37ce20
0037cd94  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0037cd98  00 00 52 e3                                      cmp r2, #0
0037cd9c  11 00 00 0a                                      beq #0x37cde8
0037cda0  03 10 a0 e1                                      mov r1, r3
0037cda4  04 00 a0 e1                                      mov r0, r4
0037cda8  dd ff ff eb                                      bl #0x37cd24
0037cdac  0c 00 85 e5                                      str r0, [r5, #0xc]
0037cdb0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0037cdb4  00 70 a0 e1                                      mov r7, r0
0037cdb8  03 00 55 e1                                      cmp r5, r3
0037cdbc  15 00 00 0a                                      beq #0x37ce18
0037cdc0  07 00 a0 e1                                      mov r0, r7
0037cdc4  04 50 87 e5                                      str r5, [r7, #4]
0037cdc8  04 10 84 e2                                      add r1, r4, #4
0037cdcc  63 5a fe eb                                      bl #0x313760
0037cdd0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037cdd4  06 00 a0 e1                                      mov r0, r6
0037cdd8  01 30 83 e2                                      add r3, r3, #1
0037cddc  10 30 84 e5                                      str r3, [r4, #0x10]
0037cde0  00 70 86 e5                                      str r7, [r6]
0037cde4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037cde8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0037cdec  00 00 52 e3                                      cmp r2, #0
0037cdf0  12 00 00 0a                                      beq #0x37ce40
0037cdf4  03 10 a0 e1                                      mov r1, r3
0037cdf8  04 00 a0 e1                                      mov r0, r4
0037cdfc  c8 ff ff eb                                      bl #0x37cd24
0037ce00  08 00 85 e5                                      str r0, [r5, #8]
0037ce04  08 30 94 e5                                      ldr r3, [r4, #8]
0037ce08  00 70 a0 e1                                      mov r7, r0
0037ce0c  03 00 55 e1                                      cmp r5, r3
0037ce10  08 00 84 05                                      streq r0, [r4, #8]
0037ce14  e9 ff ff ea                                      b #0x37cdc0
0037ce18  0c 70 84 e5                                      str r7, [r4, #0xc]
0037ce1c  e7 ff ff ea                                      b #0x37cdc0
0037ce20  03 10 a0 e1                                      mov r1, r3
0037ce24  04 00 a0 e1                                      mov r0, r4
0037ce28  bd ff ff eb                                      bl #0x37cd24
0037ce2c  00 70 a0 e1                                      mov r7, r0
0037ce30  08 00 84 e5                                      str r0, [r4, #8]
0037ce34  04 00 84 e5                                      str r0, [r4, #4]
0037ce38  0c 00 84 e5                                      str r0, [r4, #0xc]
0037ce3c  df ff ff ea                                      b #0x37cdc0
0037ce40  00 10 93 e5                                      ldr r1, [r3]
0037ce44  10 20 95 e5                                      ldr r2, [r5, #0x10]
0037ce48  02 00 51 e1                                      cmp r1, r2
0037ce4c  d3 ff ff 2a                                      bhs #0x37cda0
0037ce50  e7 ff ff ea                                      b #0x37cdf4

; FUNCTION 0x0037ce54, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueERKS5_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::insert_unique(std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)
; decoder-mode: arm
0037ce54  70 40 2d e9                                      push {r4, r5, r6, lr}
0037ce58  04 c0 91 e5                                      ldr ip, [r1, #4]
0037ce5c  10 d0 4d e2                                      sub sp, sp, #0x10
0037ce60  00 40 a0 e1                                      mov r4, r0
0037ce64  00 00 5c e3                                      cmp ip, #0
0037ce68  02 30 a0 e1                                      mov r3, r2
0037ce6c  01 c0 a0 01                                      moveq ip, r1
0037ce70  15 00 00 0a                                      beq #0x37cecc
0037ce74  00 60 92 e5                                      ldr r6, [r2]
0037ce78  00 00 00 ea                                      b #0x37ce80
0037ce7c  02 c0 a0 e1                                      mov ip, r2
0037ce80  10 00 9c e5                                      ldr r0, [ip, #0x10]
0037ce84  01 50 a0 e3                                      mov r5, #1
0037ce88  06 00 50 e1                                      cmp r0, r6
0037ce8c  08 20 9c 85                                      ldrhi r2, [ip, #8]
0037ce90  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0037ce94  00 50 a0 93                                      movls r5, #0
0037ce98  00 00 52 e3                                      cmp r2, #0
0037ce9c  f6 ff ff 1a                                      bne #0x37ce7c
0037cea0  00 00 55 e3                                      cmp r5, #0
0037cea4  0c 50 a0 01                                      moveq r5, ip
0037cea8  07 00 00 1a                                      bne #0x37cecc
0037ceac  00 00 56 e1                                      cmp r6, r0
0037ceb0  00 30 a0 93                                      movls r3, #0
0037ceb4  00 50 84 95                                      strls r5, [r4]
0037ceb8  04 30 c4 95                                      strbls r3, [r4, #4]
0037cebc  1c 00 00 8a                                      bhi #0x37cf34
0037cec0  04 00 a0 e1                                      mov r0, r4
0037cec4  10 d0 8d e2                                      add sp, sp, #0x10
0037cec8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037cecc  08 20 91 e5                                      ldr r2, [r1, #8]
0037ced0  02 00 5c e1                                      cmp ip, r2
0037ced4  36 00 00 0a                                      beq #0x37cfb4
0037ced8  00 20 dc e5                                      ldrb r2, [ip]
0037cedc  00 00 52 e3                                      cmp r2, #0
0037cee0  03 00 00 1a                                      bne #0x37cef4
0037cee4  04 20 9c e5                                      ldr r2, [ip, #4]
0037cee8  04 20 92 e5                                      ldr r2, [r2, #4]
0037ceec  02 00 5c e1                                      cmp ip, r2
0037cef0  2a 00 00 0a                                      beq #0x37cfa0
0037cef4  08 00 9c e5                                      ldr r0, [ip, #8]
0037cef8  00 00 50 e3                                      cmp r0, #0
0037cefc  01 00 00 1a                                      bne #0x37cf08
0037cf00  16 00 00 ea                                      b #0x37cf60
0037cf04  02 00 a0 e1                                      mov r0, r2
0037cf08  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0037cf0c  00 00 52 e3                                      cmp r2, #0
0037cf10  fb ff ff 1a                                      bne #0x37cf04
0037cf14  00 60 93 e5                                      ldr r6, [r3]
0037cf18  00 50 a0 e1                                      mov r5, r0
0037cf1c  10 00 90 e5                                      ldr r0, [r0, #0x10]
0037cf20  00 00 56 e1                                      cmp r6, r0
0037cf24  00 30 a0 93                                      movls r3, #0
0037cf28  00 50 84 95                                      strls r5, [r4]
0037cf2c  04 30 c4 95                                      strbls r3, [r4, #4]
0037cf30  e2 ff ff 9a                                      bls #0x37cec0
0037cf34  0c 20 a0 e1                                      mov r2, ip
0037cf38  08 00 8d e2                                      add r0, sp, #8
0037cf3c  00 c0 a0 e3                                      mov ip, #0
0037cf40  04 c0 8d e5                                      str ip, [sp, #4]
0037cf44  00 c0 8d e5                                      str ip, [sp]
0037cf48  8b ff ff eb                                      bl #0x37cd7c
0037cf4c  08 30 9d e5                                      ldr r3, [sp, #8]
0037cf50  01 20 a0 e3                                      mov r2, #1
0037cf54  04 20 c4 e5                                      strb r2, [r4, #4]
0037cf58  00 30 84 e5                                      str r3, [r4]
0037cf5c  d7 ff ff ea                                      b #0x37cec0
0037cf60  04 20 9c e5                                      ldr r2, [ip, #4]
0037cf64  08 00 92 e5                                      ldr r0, [r2, #8]
0037cf68  00 00 5c e1                                      cmp ip, r0
0037cf6c  02 50 a0 11                                      movne r5, r2
0037cf70  00 60 93 15                                      ldrne r6, [r3]
0037cf74  10 00 92 15                                      ldrne r0, [r2, #0x10]
0037cf78  01 00 00 0a                                      beq #0x37cf84
0037cf7c  ca ff ff ea                                      b #0x37ceac
0037cf80  05 20 a0 e1                                      mov r2, r5
0037cf84  04 50 92 e5                                      ldr r5, [r2, #4]
0037cf88  08 00 95 e5                                      ldr r0, [r5, #8]
0037cf8c  02 00 50 e1                                      cmp r0, r2
0037cf90  fa ff ff 0a                                      beq #0x37cf80
0037cf94  00 60 93 e5                                      ldr r6, [r3]
0037cf98  10 00 95 e5                                      ldr r0, [r5, #0x10]
0037cf9c  c2 ff ff ea                                      b #0x37ceac
0037cfa0  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0037cfa4  00 60 93 e5                                      ldr r6, [r3]
0037cfa8  02 50 a0 e1                                      mov r5, r2
0037cfac  10 00 92 e5                                      ldr r0, [r2, #0x10]
0037cfb0  bd ff ff ea                                      b #0x37ceac
0037cfb4  0c 20 a0 e1                                      mov r2, ip
0037cfb8  00 e0 a0 e3                                      mov lr, #0
0037cfbc  0c 00 8d e2                                      add r0, sp, #0xc
0037cfc0  00 50 8d e8                                      stm sp, {ip, lr}
0037cfc4  6c ff ff eb                                      bl #0x37cd7c
0037cfc8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0037cfcc  01 20 a0 e3                                      mov r2, #1
0037cfd0  04 20 c4 e5                                      strb r2, [r4, #4]
0037cfd4  00 30 84 e5                                      str r3, [r4]
0037cfd8  b8 ff ff ea                                      b #0x37cec0

; FUNCTION 0x0037cfdc, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjSsENS_10_Select1stIS5_EENS_11_MapTraitsTIS5_EESaIS5_EE13insert_uniqueENS_17_Rb_tree_iteratorIS5_S9_EERKS5_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_Select1st<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_MapTraitsT<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >, std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)
; decoder-mode: arm
0037cfdc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0037cfe0  00 40 92 e5                                      ldr r4, [r2]
0037cfe4  08 20 91 e5                                      ldr r2, [r1, #8]
0037cfe8  2c d0 4d e2                                      sub sp, sp, #0x2c
0037cfec  01 50 a0 e1                                      mov r5, r1
0037cff0  02 00 54 e1                                      cmp r4, r2
0037cff4  00 70 a0 e1                                      mov r7, r0
0037cff8  03 60 a0 e1                                      mov r6, r3
0037cffc  5a 00 00 0a                                      beq #0x37d16c
0037d000  01 00 54 e1                                      cmp r4, r1
0037d004  78 00 00 0a                                      beq #0x37d1ec
0037d008  00 30 d4 e5                                      ldrb r3, [r4]
0037d00c  00 00 53 e3                                      cmp r3, #0
0037d010  3a 00 00 0a                                      beq #0x37d100
0037d014  08 c0 94 e5                                      ldr ip, [r4, #8]
0037d018  00 00 5c e3                                      cmp ip, #0
0037d01c  01 00 00 1a                                      bne #0x37d028
0037d020  3e 00 00 ea                                      b #0x37d120
0037d024  03 c0 a0 e1                                      mov ip, r3
0037d028  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0037d02c  00 00 53 e3                                      cmp r3, #0
0037d030  fb ff ff 1a                                      bne #0x37d024
0037d034  00 20 96 e5                                      ldr r2, [r6]
0037d038  10 00 94 e5                                      ldr r0, [r4, #0x10]
0037d03c  00 00 52 e1                                      cmp r2, r0
0037d040  00 10 a0 23                                      movhs r1, #0
0037d044  01 10 a0 33                                      movlo r1, #1
0037d048  00 00 51 e3                                      cmp r1, #0
0037d04c  1b 00 00 1a                                      bne #0x37d0c0
0037d050  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0037d054  00 00 58 e3                                      cmp r8, #0
0037d058  7d 00 00 0a                                      beq #0x37d254
0037d05c  08 c0 a0 e1                                      mov ip, r8
0037d060  00 00 00 ea                                      b #0x37d068
0037d064  03 c0 a0 e1                                      mov ip, r3
0037d068  08 30 9c e5                                      ldr r3, [ip, #8]
0037d06c  00 00 53 e3                                      cmp r3, #0
0037d070  fb ff ff 1a                                      bne #0x37d064
0037d074  00 00 51 e3                                      cmp r1, #0
0037d078  34 00 00 1a                                      bne #0x37d150
0037d07c  00 00 52 e1                                      cmp r2, r0
0037d080  63 00 00 9a                                      bls #0x37d214
0037d084  0c 00 55 e1                                      cmp r5, ip
0037d088  02 00 00 0a                                      beq #0x37d098
0037d08c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0037d090  03 00 52 e1                                      cmp r2, r3
0037d094  2d 00 00 2a                                      bhs #0x37d150
0037d098  00 00 58 e3                                      cmp r8, #0
0037d09c  4a 00 00 1a                                      bne #0x37d1cc
0037d0a0  05 10 a0 e1                                      mov r1, r5
0037d0a4  04 20 a0 e1                                      mov r2, r4
0037d0a8  06 30 a0 e1                                      mov r3, r6
0037d0ac  07 00 a0 e1                                      mov r0, r7
0037d0b0  00 80 8d e5                                      str r8, [sp]
0037d0b4  04 40 8d e5                                      str r4, [sp, #4]
0037d0b8  2f ff ff eb                                      bl #0x37cd7c
0037d0bc  0c 00 00 ea                                      b #0x37d0f4
0037d0c0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0037d0c4  03 00 52 e1                                      cmp r2, r3
0037d0c8  e0 ff ff 9a                                      bls #0x37d050
0037d0cc  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0037d0d0  00 00 5e e3                                      cmp lr, #0
0037d0d4  56 00 00 0a                                      beq #0x37d234
0037d0d8  00 c0 a0 e3                                      mov ip, #0
0037d0dc  05 10 a0 e1                                      mov r1, r5
0037d0e0  04 20 a0 e1                                      mov r2, r4
0037d0e4  06 30 a0 e1                                      mov r3, r6
0037d0e8  07 00 a0 e1                                      mov r0, r7
0037d0ec  10 10 8d e8                                      stm sp, {r4, ip}
0037d0f0  21 ff ff eb                                      bl #0x37cd7c
0037d0f4  07 00 a0 e1                                      mov r0, r7
0037d0f8  2c d0 8d e2                                      add sp, sp, #0x2c
0037d0fc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0037d100  04 30 94 e5                                      ldr r3, [r4, #4]
0037d104  04 30 93 e5                                      ldr r3, [r3, #4]
0037d108  03 00 54 e1                                      cmp r4, r3
0037d10c  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0037d110  c7 ff ff 0a                                      beq #0x37d034
0037d114  08 c0 94 e5                                      ldr ip, [r4, #8]
0037d118  00 00 5c e3                                      cmp ip, #0
0037d11c  c1 ff ff 1a                                      bne #0x37d028
0037d120  04 c0 94 e5                                      ldr ip, [r4, #4]
0037d124  08 30 9c e5                                      ldr r3, [ip, #8]
0037d128  03 00 54 e1                                      cmp r4, r3
0037d12c  01 00 00 0a                                      beq #0x37d138
0037d130  bf ff ff ea                                      b #0x37d034
0037d134  03 c0 a0 e1                                      mov ip, r3
0037d138  04 30 9c e5                                      ldr r3, [ip, #4]
0037d13c  08 20 93 e5                                      ldr r2, [r3, #8]
0037d140  0c 00 52 e1                                      cmp r2, ip
0037d144  fa ff ff 0a                                      beq #0x37d134
0037d148  03 c0 a0 e1                                      mov ip, r3
0037d14c  b8 ff ff ea                                      b #0x37d034
0037d150  05 10 a0 e1                                      mov r1, r5
0037d154  06 20 a0 e1                                      mov r2, r6
0037d158  08 00 8d e2                                      add r0, sp, #8
0037d15c  3c ff ff eb                                      bl #0x37ce54
0037d160  08 30 9d e5                                      ldr r3, [sp, #8]
0037d164  00 30 87 e5                                      str r3, [r7]
0037d168  e1 ff ff ea                                      b #0x37d0f4
0037d16c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0037d170  00 00 52 e3                                      cmp r2, #0
0037d174  52 00 00 0a                                      beq #0x37d2c4
0037d178  00 20 93 e5                                      ldr r2, [r3]
0037d17c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0037d180  0c 00 52 e1                                      cmp r2, ip
0037d184  54 00 00 3a                                      blo #0x37d2dc
0037d188  21 00 00 9a                                      bls #0x37d214
0037d18c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0037d190  00 00 5e e3                                      cmp lr, #0
0037d194  3c 00 00 0a                                      beq #0x37d28c
0037d198  0e c0 a0 e1                                      mov ip, lr
0037d19c  00 00 00 ea                                      b #0x37d1a4
0037d1a0  03 c0 a0 e1                                      mov ip, r3
0037d1a4  08 30 9c e5                                      ldr r3, [ip, #8]
0037d1a8  00 00 53 e3                                      cmp r3, #0
0037d1ac  fb ff ff 1a                                      bne #0x37d1a0
0037d1b0  0c 00 55 e1                                      cmp r5, ip
0037d1b4  5c 00 00 0a                                      beq #0x37d32c
0037d1b8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0037d1bc  03 00 52 e1                                      cmp r2, r3
0037d1c0  4a 00 00 2a                                      bhs #0x37d2f0
0037d1c4  00 00 5e e3                                      cmp lr, #0
0037d1c8  4f 00 00 0a                                      beq #0x37d30c
0037d1cc  00 e0 a0 e3                                      mov lr, #0
0037d1d0  05 10 a0 e1                                      mov r1, r5
0037d1d4  0c 20 a0 e1                                      mov r2, ip
0037d1d8  06 30 a0 e1                                      mov r3, r6
0037d1dc  07 00 a0 e1                                      mov r0, r7
0037d1e0  00 50 8d e8                                      stm sp, {ip, lr}
0037d1e4  e4 fe ff eb                                      bl #0x37cd7c
0037d1e8  c1 ff ff ea                                      b #0x37d0f4
0037d1ec  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0037d1f0  00 c0 93 e5                                      ldr ip, [r3]
0037d1f4  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0037d1f8  0c 00 5e e1                                      cmp lr, ip
0037d1fc  06 00 00 2a                                      bhs #0x37d21c
0037d200  00 c0 a0 e3                                      mov ip, #0
0037d204  00 c0 8d e5                                      str ip, [sp]
0037d208  04 40 8d e5                                      str r4, [sp, #4]
0037d20c  da fe ff eb                                      bl #0x37cd7c
0037d210  b7 ff ff ea                                      b #0x37d0f4
0037d214  00 40 87 e5                                      str r4, [r7]
0037d218  b5 ff ff ea                                      b #0x37d0f4
0037d21c  03 20 a0 e1                                      mov r2, r3
0037d220  10 00 8d e2                                      add r0, sp, #0x10
0037d224  0a ff ff eb                                      bl #0x37ce54
0037d228  10 30 9d e5                                      ldr r3, [sp, #0x10]
0037d22c  00 30 87 e5                                      str r3, [r7]
0037d230  af ff ff ea                                      b #0x37d0f4
0037d234  05 10 a0 e1                                      mov r1, r5
0037d238  0c 20 a0 e1                                      mov r2, ip
0037d23c  06 30 a0 e1                                      mov r3, r6
0037d240  07 00 a0 e1                                      mov r0, r7
0037d244  00 e0 8d e5                                      str lr, [sp]
0037d248  04 c0 8d e5                                      str ip, [sp, #4]
0037d24c  ca fe ff eb                                      bl #0x37cd7c
0037d250  a7 ff ff ea                                      b #0x37d0f4
0037d254  04 30 94 e5                                      ldr r3, [r4, #4]
0037d258  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0037d25c  0c 00 54 e1                                      cmp r4, ip
0037d260  04 c0 a0 11                                      movne ip, r4
0037d264  04 00 00 1a                                      bne #0x37d27c
0037d268  03 c0 a0 e1                                      mov ip, r3
0037d26c  04 30 93 e5                                      ldr r3, [r3, #4]
0037d270  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0037d274  0a 00 5c e1                                      cmp ip, sl
0037d278  fa ff ff 0a                                      beq #0x37d268
0037d27c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0037d280  0a 00 53 e1                                      cmp r3, sl
0037d284  03 c0 a0 11                                      movne ip, r3
0037d288  79 ff ff ea                                      b #0x37d074
0037d28c  04 30 94 e5                                      ldr r3, [r4, #4]
0037d290  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0037d294  01 00 54 e1                                      cmp r4, r1
0037d298  04 c0 a0 11                                      movne ip, r4
0037d29c  04 00 00 1a                                      bne #0x37d2b4
0037d2a0  03 c0 a0 e1                                      mov ip, r3
0037d2a4  04 30 93 e5                                      ldr r3, [r3, #4]
0037d2a8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0037d2ac  0c 00 51 e1                                      cmp r1, ip
0037d2b0  fa ff ff 0a                                      beq #0x37d2a0
0037d2b4  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0037d2b8  01 00 53 e1                                      cmp r3, r1
0037d2bc  03 c0 a0 11                                      movne ip, r3
0037d2c0  ba ff ff ea                                      b #0x37d1b0
0037d2c4  03 20 a0 e1                                      mov r2, r3
0037d2c8  20 00 8d e2                                      add r0, sp, #0x20
0037d2cc  e0 fe ff eb                                      bl #0x37ce54
0037d2d0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0037d2d4  00 30 87 e5                                      str r3, [r7]
0037d2d8  85 ff ff ea                                      b #0x37d0f4
0037d2dc  00 c0 a0 e3                                      mov ip, #0
0037d2e0  04 20 a0 e1                                      mov r2, r4
0037d2e4  10 10 8d e8                                      stm sp, {r4, ip}
0037d2e8  a3 fe ff eb                                      bl #0x37cd7c
0037d2ec  80 ff ff ea                                      b #0x37d0f4
0037d2f0  05 10 a0 e1                                      mov r1, r5
0037d2f4  06 20 a0 e1                                      mov r2, r6
0037d2f8  18 00 8d e2                                      add r0, sp, #0x18
0037d2fc  d4 fe ff eb                                      bl #0x37ce54
0037d300  18 30 9d e5                                      ldr r3, [sp, #0x18]
0037d304  00 30 87 e5                                      str r3, [r7]
0037d308  79 ff ff ea                                      b #0x37d0f4
0037d30c  05 10 a0 e1                                      mov r1, r5
0037d310  04 20 a0 e1                                      mov r2, r4
0037d314  06 30 a0 e1                                      mov r3, r6
0037d318  07 00 a0 e1                                      mov r0, r7
0037d31c  00 e0 8d e5                                      str lr, [sp]
0037d320  04 40 8d e5                                      str r4, [sp, #4]
0037d324  94 fe ff eb                                      bl #0x37cd7c
0037d328  71 ff ff ea                                      b #0x37d0f4
0037d32c  00 c0 a0 e3                                      mov ip, #0
0037d330  05 10 a0 e1                                      mov r1, r5
0037d334  04 20 a0 e1                                      mov r2, r4
0037d338  06 30 a0 e1                                      mov r3, r6
0037d33c  07 00 a0 e1                                      mov r0, r7
0037d340  00 c0 8d e5                                      str ip, [sp]
0037d344  04 40 8d e5                                      str r4, [sp, #4]
0037d348  8b fe ff eb                                      bl #0x37cd7c
0037d34c  68 ff ff ea                                      b #0x37d0f4
