; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d2f3c, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeISt4pairISsiESt4lessIS2_ES1_IKS2_N6CharAI9GroupInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003d2f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
003d2f40  00 40 51 e2                                      subs r4, r1, #0
003d2f44  00 60 a0 e1                                      mov r6, r0
003d2f48  0a 00 00 0a                                      beq #0x3d2f78
003d2f4c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003d2f50  06 00 a0 e1                                      mov r0, r6
003d2f54  f8 ff ff eb                                      bl #0x3d2f3c
003d2f58  08 50 94 e5                                      ldr r5, [r4, #8]
003d2f5c  10 00 84 e2                                      add r0, r4, #0x10
003d2f60  e2 ff ff eb                                      bl #0x3d2ef0
003d2f64  04 00 a0 e1                                      mov r0, r4
003d2f68  58 10 a0 e3                                      mov r1, #0x58
003d2f6c  e3 d7 0c eb                                      bl #0x708f00
003d2f70  00 40 55 e2                                      subs r4, r5, #0
003d2f74  f4 ff ff 1a                                      bne #0x3d2f4c
003d2f78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d31a0, declared_size=284, range_size=284, mode=arm
; class-group: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeISt4pairISsiESt4lessIS2_ES1_IKS2_N6CharAI9GroupInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS8_SG_SG_
; demangled: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
003d31a0  02 00 51 e1                                      cmp r1, r2
003d31a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d31a8  01 40 a0 e1                                      mov r4, r1
003d31ac  02 50 a0 e1                                      mov r5, r2
003d31b0  00 60 a0 e1                                      mov r6, r0
003d31b4  03 80 a0 e1                                      mov r8, r3
003d31b8  2c 00 00 0a                                      beq #0x3d3270
003d31bc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003d31c0  00 00 53 e3                                      cmp r3, #0
003d31c4  16 00 00 0a                                      beq #0x3d3224
003d31c8  04 00 a0 e1                                      mov r0, r4
003d31cc  b3 fe ff eb                                      bl #0x3d2ca0
003d31d0  08 10 a0 e1                                      mov r1, r8
003d31d4  00 70 a0 e1                                      mov r7, r0
003d31d8  10 00 80 e2                                      add r0, r0, #0x10
003d31dc  e0 ff ff eb                                      bl #0x3d3164
003d31e0  00 30 a0 e3                                      mov r3, #0
003d31e4  0c 30 87 e5                                      str r3, [r7, #0xc]
003d31e8  08 30 87 e5                                      str r3, [r7, #8]
003d31ec  0c 70 85 e5                                      str r7, [r5, #0xc]
003d31f0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003d31f4  03 00 55 e1                                      cmp r5, r3
003d31f8  1a 00 00 0a                                      beq #0x3d3268
003d31fc  07 00 a0 e1                                      mov r0, r7
003d3200  04 50 87 e5                                      str r5, [r7, #4]
003d3204  04 10 84 e2                                      add r1, r4, #4
003d3208  54 01 fd eb                                      bl #0x313760
003d320c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d3210  06 00 a0 e1                                      mov r0, r6
003d3214  01 30 83 e2                                      add r3, r3, #1
003d3218  10 30 84 e5                                      str r3, [r4, #0x10]
003d321c  00 70 86 e5                                      str r7, [r6]
003d3220  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d3224  18 30 9d e5                                      ldr r3, [sp, #0x18]
003d3228  00 00 53 e3                                      cmp r3, #0
003d322c  1c 00 00 0a                                      beq #0x3d32a4
003d3230  04 00 a0 e1                                      mov r0, r4
003d3234  99 fe ff eb                                      bl #0x3d2ca0
003d3238  08 10 a0 e1                                      mov r1, r8
003d323c  00 70 a0 e1                                      mov r7, r0
003d3240  10 00 80 e2                                      add r0, r0, #0x10
003d3244  c6 ff ff eb                                      bl #0x3d3164
003d3248  00 30 a0 e3                                      mov r3, #0
003d324c  0c 30 87 e5                                      str r3, [r7, #0xc]
003d3250  08 30 87 e5                                      str r3, [r7, #8]
003d3254  08 70 85 e5                                      str r7, [r5, #8]
003d3258  08 30 94 e5                                      ldr r3, [r4, #8]
003d325c  03 00 55 e1                                      cmp r5, r3
003d3260  08 70 84 05                                      streq r7, [r4, #8]
003d3264  e4 ff ff ea                                      b #0x3d31fc
003d3268  0c 70 84 e5                                      str r7, [r4, #0xc]
003d326c  e2 ff ff ea                                      b #0x3d31fc
003d3270  01 00 a0 e1                                      mov r0, r1
003d3274  89 fe ff eb                                      bl #0x3d2ca0
003d3278  08 10 a0 e1                                      mov r1, r8
003d327c  00 70 a0 e1                                      mov r7, r0
003d3280  10 00 80 e2                                      add r0, r0, #0x10
003d3284  b6 ff ff eb                                      bl #0x3d3164
003d3288  00 30 a0 e3                                      mov r3, #0
003d328c  0c 30 87 e5                                      str r3, [r7, #0xc]
003d3290  08 30 87 e5                                      str r3, [r7, #8]
003d3294  08 70 84 e5                                      str r7, [r4, #8]
003d3298  04 70 84 e5                                      str r7, [r4, #4]
003d329c  0c 70 84 e5                                      str r7, [r4, #0xc]
003d32a0  d5 ff ff ea                                      b #0x3d31fc
003d32a4  08 00 a0 e1                                      mov r0, r8
003d32a8  10 10 82 e2                                      add r1, r2, #0x10
003d32ac  0d fe ff eb                                      bl #0x3d2ae8
003d32b0  00 00 50 e3                                      cmp r0, #0
003d32b4  c3 ff ff 0a                                      beq #0x3d31c8
003d32b8  dc ff ff ea                                      b #0x3d3230

; FUNCTION 0x003d32bc, declared_size=404, range_size=404, mode=arm
; class-group: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeISt4pairISsiESt4lessIS2_ES1_IKS2_N6CharAI9GroupInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueERKS8_
; demangled: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >::insert_unique(std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> const&)
; decoder-mode: arm
003d32bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d32c0  04 50 91 e5                                      ldr r5, [r1, #4]
003d32c4  10 d0 4d e2                                      sub sp, sp, #0x10
003d32c8  01 70 a0 e1                                      mov r7, r1
003d32cc  00 00 55 e3                                      cmp r5, #0
003d32d0  00 40 a0 e1                                      mov r4, r0
003d32d4  02 60 a0 e1                                      mov r6, r2
003d32d8  01 50 a0 01                                      moveq r5, r1
003d32dc  01 00 00 1a                                      bne #0x3d32e8
003d32e0  16 00 00 ea                                      b #0x3d3340
003d32e4  03 50 a0 e1                                      mov r5, r3
003d32e8  10 10 85 e2                                      add r1, r5, #0x10
003d32ec  06 00 a0 e1                                      mov r0, r6
003d32f0  fc fd ff eb                                      bl #0x3d2ae8
003d32f4  00 00 50 e3                                      cmp r0, #0
003d32f8  08 30 95 15                                      ldrne r3, [r5, #8]
003d32fc  0c 30 95 05                                      ldreq r3, [r5, #0xc]
003d3300  05 20 a0 e1                                      mov r2, r5
003d3304  00 00 53 e3                                      cmp r3, #0
003d3308  f5 ff ff 1a                                      bne #0x3d32e4
003d330c  00 00 50 e3                                      cmp r0, #0
003d3310  05 80 a0 01                                      moveq r8, r5
003d3314  09 00 00 1a                                      bne #0x3d3340
003d3318  10 00 82 e2                                      add r0, r2, #0x10
003d331c  06 10 a0 e1                                      mov r1, r6
003d3320  f0 fd ff eb                                      bl #0x3d2ae8
003d3324  00 00 50 e3                                      cmp r0, #0
003d3328  00 80 84 05                                      streq r8, [r4]
003d332c  04 00 c4 05                                      strbeq r0, [r4, #4]
003d3330  1c 00 00 1a                                      bne #0x3d33a8
003d3334  04 00 a0 e1                                      mov r0, r4
003d3338  10 d0 8d e2                                      add sp, sp, #0x10
003d333c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d3340  08 30 97 e5                                      ldr r3, [r7, #8]
003d3344  03 00 55 e1                                      cmp r5, r3
003d3348  34 00 00 0a                                      beq #0x3d3420
003d334c  00 30 d5 e5                                      ldrb r3, [r5]
003d3350  00 00 53 e3                                      cmp r3, #0
003d3354  03 00 00 1a                                      bne #0x3d3368
003d3358  04 30 95 e5                                      ldr r3, [r5, #4]
003d335c  04 30 93 e5                                      ldr r3, [r3, #4]
003d3360  03 00 55 e1                                      cmp r5, r3
003d3364  2a 00 00 0a                                      beq #0x3d3414
003d3368  08 20 95 e5                                      ldr r2, [r5, #8]
003d336c  00 00 52 e3                                      cmp r2, #0
003d3370  01 00 00 1a                                      bne #0x3d337c
003d3374  18 00 00 ea                                      b #0x3d33dc
003d3378  03 20 a0 e1                                      mov r2, r3
003d337c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
003d3380  00 00 53 e3                                      cmp r3, #0
003d3384  fb ff ff 1a                                      bne #0x3d3378
003d3388  02 80 a0 e1                                      mov r8, r2
003d338c  10 00 82 e2                                      add r0, r2, #0x10
003d3390  06 10 a0 e1                                      mov r1, r6
003d3394  d3 fd ff eb                                      bl #0x3d2ae8
003d3398  00 00 50 e3                                      cmp r0, #0
003d339c  00 80 84 05                                      streq r8, [r4]
003d33a0  04 00 c4 05                                      strbeq r0, [r4, #4]
003d33a4  e2 ff ff 0a                                      beq #0x3d3334
003d33a8  00 c0 a0 e3                                      mov ip, #0
003d33ac  05 20 a0 e1                                      mov r2, r5
003d33b0  06 30 a0 e1                                      mov r3, r6
003d33b4  07 10 a0 e1                                      mov r1, r7
003d33b8  08 00 8d e2                                      add r0, sp, #8
003d33bc  04 c0 8d e5                                      str ip, [sp, #4]
003d33c0  00 c0 8d e5                                      str ip, [sp]
003d33c4  75 ff ff eb                                      bl #0x3d31a0
003d33c8  08 30 9d e5                                      ldr r3, [sp, #8]
003d33cc  01 20 a0 e3                                      mov r2, #1
003d33d0  04 20 c4 e5                                      strb r2, [r4, #4]
003d33d4  00 30 84 e5                                      str r3, [r4]
003d33d8  d5 ff ff ea                                      b #0x3d3334
003d33dc  04 30 95 e5                                      ldr r3, [r5, #4]
003d33e0  08 20 93 e5                                      ldr r2, [r3, #8]
003d33e4  02 00 55 e1                                      cmp r5, r2
003d33e8  03 20 a0 11                                      movne r2, r3
003d33ec  02 80 a0 11                                      movne r8, r2
003d33f0  01 00 00 0a                                      beq #0x3d33fc
003d33f4  c7 ff ff ea                                      b #0x3d3318
003d33f8  02 30 a0 e1                                      mov r3, r2
003d33fc  04 20 93 e5                                      ldr r2, [r3, #4]
003d3400  08 10 92 e5                                      ldr r1, [r2, #8]
003d3404  03 00 51 e1                                      cmp r1, r3
003d3408  fa ff ff 0a                                      beq #0x3d33f8
003d340c  02 80 a0 e1                                      mov r8, r2
003d3410  dd ff ff ea                                      b #0x3d338c
003d3414  0c 20 95 e5                                      ldr r2, [r5, #0xc]
003d3418  02 80 a0 e1                                      mov r8, r2
003d341c  bd ff ff ea                                      b #0x3d3318
003d3420  05 20 a0 e1                                      mov r2, r5
003d3424  06 30 a0 e1                                      mov r3, r6
003d3428  00 c0 a0 e3                                      mov ip, #0
003d342c  07 10 a0 e1                                      mov r1, r7
003d3430  0c 00 8d e2                                      add r0, sp, #0xc
003d3434  20 10 8d e8                                      stm sp, {r5, ip}
003d3438  58 ff ff eb                                      bl #0x3d31a0
003d343c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003d3440  01 20 a0 e3                                      mov r2, #1
003d3444  04 20 c4 e5                                      strb r2, [r4, #4]
003d3448  00 30 84 e5                                      str r3, [r4]
003d344c  b8 ff ff ea                                      b #0x3d3334

; FUNCTION 0x003d3450, declared_size=896, range_size=896, mode=arm
; class-group: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >
; alias: _ZNSt4priv8_Rb_treeISt4pairISsiESt4lessIS2_ES1_IKS2_N6CharAI9GroupInfoEENS_10_Select1stIS8_EENS_11_MapTraitsTIS8_EESaIS8_EE13insert_uniqueENS_17_Rb_tree_iteratorIS8_SC_EERKS8_
; demangled: std::priv::_Rb_tree<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>, std::less<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_Select1st<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> >, std::allocator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>, std::priv::_MapTraitsT<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >, std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> const&)
; decoder-mode: arm
003d3450  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d3454  02 80 a0 e1                                      mov r8, r2
003d3458  00 a0 92 e5                                      ldr sl, [r2]
003d345c  08 20 91 e5                                      ldr r2, [r1, #8]
003d3460  2c d0 4d e2                                      sub sp, sp, #0x2c
003d3464  01 60 a0 e1                                      mov r6, r1
003d3468  02 00 5a e1                                      cmp sl, r2
003d346c  00 50 a0 e1                                      mov r5, r0
003d3470  03 70 a0 e1                                      mov r7, r3
003d3474  71 00 00 0a                                      beq #0x3d3640
003d3478  01 00 5a e1                                      cmp sl, r1
003d347c  a3 00 00 0a                                      beq #0x3d3710
003d3480  00 30 da e5                                      ldrb r3, [sl]
003d3484  00 00 53 e3                                      cmp r3, #0
003d3488  51 00 00 0a                                      beq #0x3d35d4
003d348c  08 40 9a e5                                      ldr r4, [sl, #8]
003d3490  00 00 54 e3                                      cmp r4, #0
003d3494  01 00 00 1a                                      bne #0x3d34a0
003d3498  55 00 00 ea                                      b #0x3d35f4
003d349c  03 40 a0 e1                                      mov r4, r3
003d34a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003d34a4  00 00 53 e3                                      cmp r3, #0
003d34a8  fb ff ff 1a                                      bne #0x3d349c
003d34ac  10 10 8a e2                                      add r1, sl, #0x10
003d34b0  07 00 a0 e1                                      mov r0, r7
003d34b4  8b fd ff eb                                      bl #0x3d2ae8
003d34b8  00 a0 50 e2                                      subs sl, r0, #0
003d34bc  12 00 00 0a                                      beq #0x3d350c
003d34c0  10 00 84 e2                                      add r0, r4, #0x10
003d34c4  07 10 a0 e1                                      mov r1, r7
003d34c8  86 fd ff eb                                      bl #0x3d2ae8
003d34cc  00 00 50 e3                                      cmp r0, #0
003d34d0  0d 00 00 0a                                      beq #0x3d350c
003d34d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
003d34d8  00 00 5c e3                                      cmp ip, #0
003d34dc  a5 00 00 0a                                      beq #0x3d3778
003d34e0  00 c0 98 e5                                      ldr ip, [r8]
003d34e4  00 e0 a0 e3                                      mov lr, #0
003d34e8  06 10 a0 e1                                      mov r1, r6
003d34ec  07 30 a0 e1                                      mov r3, r7
003d34f0  0c 20 a0 e1                                      mov r2, ip
003d34f4  05 00 a0 e1                                      mov r0, r5
003d34f8  00 50 8d e8                                      stm sp, {ip, lr}
003d34fc  27 ff ff eb                                      bl #0x3d31a0
003d3500  05 00 a0 e1                                      mov r0, r5
003d3504  2c d0 8d e2                                      add sp, sp, #0x2c
003d3508  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d350c  00 00 98 e5                                      ldr r0, [r8]
003d3510  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003d3514  00 00 54 e3                                      cmp r4, #0
003d3518  27 00 00 1a                                      bne #0x3d35bc
003d351c  04 30 90 e5                                      ldr r3, [r0, #4]
003d3520  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d3524  00 00 52 e1                                      cmp r2, r0
003d3528  00 40 a0 11                                      movne r4, r0
003d352c  04 00 00 1a                                      bne #0x3d3544
003d3530  03 40 a0 e1                                      mov r4, r3
003d3534  04 30 93 e5                                      ldr r3, [r3, #4]
003d3538  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d353c  04 00 52 e1                                      cmp r2, r4
003d3540  fa ff ff 0a                                      beq #0x3d3530
003d3544  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d3548  02 00 53 e1                                      cmp r3, r2
003d354c  03 40 a0 11                                      movne r4, r3
003d3550  00 00 5a e3                                      cmp sl, #0
003d3554  32 00 00 1a                                      bne #0x3d3624
003d3558  10 00 80 e2                                      add r0, r0, #0x10
003d355c  07 10 a0 e1                                      mov r1, r7
003d3560  60 fd ff eb                                      bl #0x3d2ae8
003d3564  00 00 50 e3                                      cmp r0, #0
003d3568  78 00 00 0a                                      beq #0x3d3750
003d356c  04 00 56 e1                                      cmp r6, r4
003d3570  04 00 00 0a                                      beq #0x3d3588
003d3574  07 00 a0 e1                                      mov r0, r7
003d3578  10 10 84 e2                                      add r1, r4, #0x10
003d357c  59 fd ff eb                                      bl #0x3d2ae8
003d3580  00 00 50 e3                                      cmp r0, #0
003d3584  26 00 00 0a                                      beq #0x3d3624
003d3588  00 c0 98 e5                                      ldr ip, [r8]
003d358c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003d3590  00 00 5e e3                                      cmp lr, #0
003d3594  7f 00 00 0a                                      beq #0x3d3798
003d3598  00 c0 a0 e3                                      mov ip, #0
003d359c  06 10 a0 e1                                      mov r1, r6
003d35a0  04 20 a0 e1                                      mov r2, r4
003d35a4  07 30 a0 e1                                      mov r3, r7
003d35a8  05 00 a0 e1                                      mov r0, r5
003d35ac  10 10 8d e8                                      stm sp, {r4, ip}
003d35b0  fa fe ff eb                                      bl #0x3d31a0
003d35b4  d1 ff ff ea                                      b #0x3d3500
003d35b8  03 40 a0 e1                                      mov r4, r3
003d35bc  08 30 94 e5                                      ldr r3, [r4, #8]
003d35c0  00 00 53 e3                                      cmp r3, #0
003d35c4  fb ff ff 1a                                      bne #0x3d35b8
003d35c8  00 00 5a e3                                      cmp sl, #0
003d35cc  14 00 00 1a                                      bne #0x3d3624
003d35d0  e0 ff ff ea                                      b #0x3d3558
003d35d4  04 30 9a e5                                      ldr r3, [sl, #4]
003d35d8  04 30 93 e5                                      ldr r3, [r3, #4]
003d35dc  03 00 5a e1                                      cmp sl, r3
003d35e0  0c 40 9a 05                                      ldreq r4, [sl, #0xc]
003d35e4  b0 ff ff 0a                                      beq #0x3d34ac
003d35e8  08 40 9a e5                                      ldr r4, [sl, #8]
003d35ec  00 00 54 e3                                      cmp r4, #0
003d35f0  aa ff ff 1a                                      bne #0x3d34a0
003d35f4  04 40 9a e5                                      ldr r4, [sl, #4]
003d35f8  08 30 94 e5                                      ldr r3, [r4, #8]
003d35fc  03 00 5a e1                                      cmp sl, r3
003d3600  01 00 00 0a                                      beq #0x3d360c
003d3604  a8 ff ff ea                                      b #0x3d34ac
003d3608  03 40 a0 e1                                      mov r4, r3
003d360c  04 30 94 e5                                      ldr r3, [r4, #4]
003d3610  08 20 93 e5                                      ldr r2, [r3, #8]
003d3614  04 00 52 e1                                      cmp r2, r4
003d3618  fa ff ff 0a                                      beq #0x3d3608
003d361c  03 40 a0 e1                                      mov r4, r3
003d3620  a1 ff ff ea                                      b #0x3d34ac
003d3624  06 10 a0 e1                                      mov r1, r6
003d3628  07 20 a0 e1                                      mov r2, r7
003d362c  08 00 8d e2                                      add r0, sp, #8
003d3630  21 ff ff eb                                      bl #0x3d32bc
003d3634  08 30 9d e5                                      ldr r3, [sp, #8]
003d3638  00 30 85 e5                                      str r3, [r5]
003d363c  af ff ff ea                                      b #0x3d3500
003d3640  10 30 91 e5                                      ldr r3, [r1, #0x10]
003d3644  00 00 53 e3                                      cmp r3, #0
003d3648  5a 00 00 0a                                      beq #0x3d37b8
003d364c  10 10 8a e2                                      add r1, sl, #0x10
003d3650  07 00 a0 e1                                      mov r0, r7
003d3654  23 fd ff eb                                      bl #0x3d2ae8
003d3658  00 00 50 e3                                      cmp r0, #0
003d365c  9f ff ff 1a                                      bne #0x3d34e0
003d3660  00 00 98 e5                                      ldr r0, [r8]
003d3664  07 10 a0 e1                                      mov r1, r7
003d3668  10 00 80 e2                                      add r0, r0, #0x10
003d366c  1d fd ff eb                                      bl #0x3d2ae8
003d3670  00 00 50 e3                                      cmp r0, #0
003d3674  35 00 00 0a                                      beq #0x3d3750
003d3678  00 c0 98 e5                                      ldr ip, [r8]
003d367c  0c 40 9c e5                                      ldr r4, [ip, #0xc]
003d3680  00 00 54 e3                                      cmp r4, #0
003d3684  1d 00 00 1a                                      bne #0x3d3700
003d3688  04 30 9c e5                                      ldr r3, [ip, #4]
003d368c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d3690  02 00 5c e1                                      cmp ip, r2
003d3694  0c 40 a0 11                                      movne r4, ip
003d3698  04 00 00 1a                                      bne #0x3d36b0
003d369c  03 40 a0 e1                                      mov r4, r3
003d36a0  04 30 93 e5                                      ldr r3, [r3, #4]
003d36a4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d36a8  04 00 52 e1                                      cmp r2, r4
003d36ac  fa ff ff 0a                                      beq #0x3d369c
003d36b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d36b4  02 00 53 e1                                      cmp r3, r2
003d36b8  03 40 a0 11                                      movne r4, r3
003d36bc  04 00 56 e1                                      cmp r6, r4
003d36c0  06 10 a0 01                                      moveq r1, r6
003d36c4  0c 20 a0 01                                      moveq r2, ip
003d36c8  19 00 00 0a                                      beq #0x3d3734
003d36cc  07 00 a0 e1                                      mov r0, r7
003d36d0  10 10 84 e2                                      add r1, r4, #0x10
003d36d4  03 fd ff eb                                      bl #0x3d2ae8
003d36d8  00 00 50 e3                                      cmp r0, #0
003d36dc  a9 ff ff 1a                                      bne #0x3d3588
003d36e0  06 10 a0 e1                                      mov r1, r6
003d36e4  07 20 a0 e1                                      mov r2, r7
003d36e8  18 00 8d e2                                      add r0, sp, #0x18
003d36ec  f2 fe ff eb                                      bl #0x3d32bc
003d36f0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003d36f4  00 30 85 e5                                      str r3, [r5]
003d36f8  80 ff ff ea                                      b #0x3d3500
003d36fc  03 40 a0 e1                                      mov r4, r3
003d3700  08 30 94 e5                                      ldr r3, [r4, #8]
003d3704  00 00 53 e3                                      cmp r3, #0
003d3708  fb ff ff 1a                                      bne #0x3d36fc
003d370c  ea ff ff ea                                      b #0x3d36bc
003d3710  0c 00 9a e5                                      ldr r0, [sl, #0xc]
003d3714  03 10 a0 e1                                      mov r1, r3
003d3718  10 00 80 e2                                      add r0, r0, #0x10
003d371c  f1 fc ff eb                                      bl #0x3d2ae8
003d3720  00 00 50 e3                                      cmp r0, #0
003d3724  0c 00 00 0a                                      beq #0x3d375c
003d3728  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003d372c  00 c0 98 e5                                      ldr ip, [r8]
003d3730  0a 10 a0 e1                                      mov r1, sl
003d3734  00 e0 a0 e3                                      mov lr, #0
003d3738  07 30 a0 e1                                      mov r3, r7
003d373c  05 00 a0 e1                                      mov r0, r5
003d3740  00 e0 8d e5                                      str lr, [sp]
003d3744  04 c0 8d e5                                      str ip, [sp, #4]
003d3748  94 fe ff eb                                      bl #0x3d31a0
003d374c  6b ff ff ea                                      b #0x3d3500
003d3750  00 30 98 e5                                      ldr r3, [r8]
003d3754  00 30 85 e5                                      str r3, [r5]
003d3758  68 ff ff ea                                      b #0x3d3500
003d375c  0a 10 a0 e1                                      mov r1, sl
003d3760  07 20 a0 e1                                      mov r2, r7
003d3764  10 00 8d e2                                      add r0, sp, #0x10
003d3768  d3 fe ff eb                                      bl #0x3d32bc
003d376c  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d3770  00 30 85 e5                                      str r3, [r5]
003d3774  61 ff ff ea                                      b #0x3d3500
003d3778  06 10 a0 e1                                      mov r1, r6
003d377c  04 20 a0 e1                                      mov r2, r4
003d3780  07 30 a0 e1                                      mov r3, r7
003d3784  05 00 a0 e1                                      mov r0, r5
003d3788  00 c0 8d e5                                      str ip, [sp]
003d378c  04 40 8d e5                                      str r4, [sp, #4]
003d3790  82 fe ff eb                                      bl #0x3d31a0
003d3794  59 ff ff ea                                      b #0x3d3500
003d3798  06 10 a0 e1                                      mov r1, r6
003d379c  0c 20 a0 e1                                      mov r2, ip
003d37a0  07 30 a0 e1                                      mov r3, r7
003d37a4  05 00 a0 e1                                      mov r0, r5
003d37a8  00 e0 8d e5                                      str lr, [sp]
003d37ac  04 c0 8d e5                                      str ip, [sp, #4]
003d37b0  7a fe ff eb                                      bl #0x3d31a0
003d37b4  51 ff ff ea                                      b #0x3d3500
003d37b8  07 20 a0 e1                                      mov r2, r7
003d37bc  20 00 8d e2                                      add r0, sp, #0x20
003d37c0  bd fe ff eb                                      bl #0x3d32bc
003d37c4  20 30 9d e5                                      ldr r3, [sp, #0x20]
003d37c8  00 30 85 e5                                      str r3, [r5]
003d37cc  4b ff ff ea                                      b #0x3d3500
