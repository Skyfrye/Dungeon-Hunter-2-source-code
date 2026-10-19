; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004227b0, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFbPKcS6_PvEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004227b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004227b4  00 40 51 e2                                      subs r4, r1, #0
004227b8  00 60 a0 e1                                      mov r6, r0
004227bc  0a 00 00 0a                                      beq #0x4227ec
004227c0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004227c4  06 00 a0 e1                                      mov r0, r6
004227c8  f8 ff ff eb                                      bl #0x4227b0
004227cc  08 50 94 e5                                      ldr r5, [r4, #8]
004227d0  10 00 84 e2                                      add r0, r4, #0x10
004227d4  9e d6 fb eb                                      bl #0x318254
004227d8  04 00 a0 e1                                      mov r0, r4
004227dc  2c 10 a0 e3                                      mov r1, #0x2c
004227e0  c6 99 0b eb                                      bl #0x708f00
004227e4  00 40 55 e2                                      subs r4, r5, #0
004227e8  f4 ff ff 1a                                      bne #0x4227c0
004227ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00425fcc, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFbPKcS6_PvEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE14_M_create_nodeERKSA_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> const&)
; decoder-mode: arm
00425fcc  30 40 2d e9                                      push {r4, r5, lr}
00425fd0  0c d0 4d e2                                      sub sp, sp, #0xc
00425fd4  2c 30 a0 e3                                      mov r3, #0x2c
00425fd8  08 00 8d e2                                      add r0, sp, #8
00425fdc  04 30 20 e5                                      str r3, [r0, #-4]!
00425fe0  01 50 a0 e1                                      mov r5, r1
00425fe4  b5 8b 0b eb                                      bl #0x708ec0
00425fe8  00 40 a0 e1                                      mov r4, r0
00425fec  10 00 80 e2                                      add r0, r0, #0x10
00425ff0  20 00 84 e5                                      str r0, [r4, #0x20]
00425ff4  24 00 84 e5                                      str r0, [r4, #0x24]
00425ff8  10 20 95 e5                                      ldr r2, [r5, #0x10]
00425ffc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00426000  b8 ad fb eb                                      bl #0x3116e8
00426004  18 20 95 e5                                      ldr r2, [r5, #0x18]
00426008  00 30 a0 e3                                      mov r3, #0
0042600c  0c 30 84 e5                                      str r3, [r4, #0xc]
00426010  28 20 84 e5                                      str r2, [r4, #0x28]
00426014  08 30 84 e5                                      str r3, [r4, #8]
00426018  04 00 a0 e1                                      mov r0, r4
0042601c  0c d0 8d e2                                      add sp, sp, #0xc
00426020  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00426024, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFbPKcS6_PvEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSA_SI_SI_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00426024  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00426028  02 00 51 e1                                      cmp r1, r2
0042602c  0c d0 4d e2                                      sub sp, sp, #0xc
00426030  01 40 a0 e1                                      mov r4, r1
00426034  02 50 a0 e1                                      mov r5, r2
00426038  00 60 a0 e1                                      mov r6, r0
0042603c  23 00 00 0a                                      beq #0x4260d0
00426040  24 20 9d e5                                      ldr r2, [sp, #0x24]
00426044  00 00 52 e3                                      cmp r2, #0
00426048  12 00 00 0a                                      beq #0x426098
0042604c  03 10 a0 e1                                      mov r1, r3
00426050  04 00 a0 e1                                      mov r0, r4
00426054  dc ff ff eb                                      bl #0x425fcc
00426058  0c 00 85 e5                                      str r0, [r5, #0xc]
0042605c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00426060  00 70 a0 e1                                      mov r7, r0
00426064  03 00 55 e1                                      cmp r5, r3
00426068  16 00 00 0a                                      beq #0x4260c8
0042606c  07 00 a0 e1                                      mov r0, r7
00426070  04 50 87 e5                                      str r5, [r7, #4]
00426074  04 10 84 e2                                      add r1, r4, #4
00426078  b8 b5 fb eb                                      bl #0x313760
0042607c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00426080  06 00 a0 e1                                      mov r0, r6
00426084  01 30 83 e2                                      add r3, r3, #1
00426088  10 30 84 e5                                      str r3, [r4, #0x10]
0042608c  00 70 86 e5                                      str r7, [r6]
00426090  0c d0 8d e2                                      add sp, sp, #0xc
00426094  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00426098  20 20 9d e5                                      ldr r2, [sp, #0x20]
0042609c  00 00 52 e3                                      cmp r2, #0
004260a0  12 00 00 0a                                      beq #0x4260f0
004260a4  03 10 a0 e1                                      mov r1, r3
004260a8  04 00 a0 e1                                      mov r0, r4
004260ac  c6 ff ff eb                                      bl #0x425fcc
004260b0  08 00 85 e5                                      str r0, [r5, #8]
004260b4  08 30 94 e5                                      ldr r3, [r4, #8]
004260b8  00 70 a0 e1                                      mov r7, r0
004260bc  03 00 55 e1                                      cmp r5, r3
004260c0  08 00 84 05                                      streq r0, [r4, #8]
004260c4  e8 ff ff ea                                      b #0x42606c
004260c8  0c 70 84 e5                                      str r7, [r4, #0xc]
004260cc  e6 ff ff ea                                      b #0x42606c
004260d0  03 10 a0 e1                                      mov r1, r3
004260d4  04 00 a0 e1                                      mov r0, r4
004260d8  bb ff ff eb                                      bl #0x425fcc
004260dc  00 70 a0 e1                                      mov r7, r0
004260e0  08 00 84 e5                                      str r0, [r4, #8]
004260e4  04 00 84 e5                                      str r0, [r4, #4]
004260e8  0c 00 84 e5                                      str r0, [r4, #0xc]
004260ec  de ff ff ea                                      b #0x42606c
004260f0  14 00 81 e2                                      add r0, r1, #0x14
004260f4  10 20 85 e2                                      add r2, r5, #0x10
004260f8  03 10 a0 e1                                      mov r1, r3
004260fc  04 30 8d e5                                      str r3, [sp, #4]
00426100  bc b6 fb eb                                      bl #0x313bf8
00426104  00 00 50 e3                                      cmp r0, #0
00426108  04 30 9d e5                                      ldr r3, [sp, #4]
0042610c  ce ff ff 0a                                      beq #0x42604c
00426110  e3 ff ff ea                                      b #0x4260a4

; FUNCTION 0x00426114, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFbPKcS6_PvEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueERKSA_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> const&)
; decoder-mode: arm
00426114  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00426118  04 50 91 e5                                      ldr r5, [r1, #4]
0042611c  14 d0 4d e2                                      sub sp, sp, #0x14
00426120  01 90 a0 e1                                      mov sb, r1
00426124  00 00 55 e3                                      cmp r5, #0
00426128  00 40 a0 e1                                      mov r4, r0
0042612c  02 80 a0 e1                                      mov r8, r2
00426130  38 00 00 0a                                      beq #0x426218
00426134  14 70 92 e5                                      ldr r7, [r2, #0x14]
00426138  10 b0 92 e5                                      ldr fp, [r2, #0x10]
0042613c  0b a0 67 e0                                      rsb sl, r7, fp
00426140  04 00 00 ea                                      b #0x426158
00426144  08 30 95 e5                                      ldr r3, [r5, #8]
00426148  01 10 a0 e3                                      mov r1, #1
0042614c  00 00 53 e3                                      cmp r3, #0
00426150  16 00 00 0a                                      beq #0x4261b0
00426154  03 50 a0 e1                                      mov r5, r3
00426158  24 30 95 e5                                      ldr r3, [r5, #0x24]
0042615c  20 60 95 e5                                      ldr r6, [r5, #0x20]
00426160  07 00 a0 e1                                      mov r0, r7
00426164  03 10 a0 e1                                      mov r1, r3
00426168  06 60 63 e0                                      rsb r6, r3, r6
0042616c  0a 00 56 e1                                      cmp r6, sl
00426170  06 20 a0 b1                                      movlt r2, r6
00426174  0a 20 a0 a1                                      movge r2, sl
00426178  18 a1 fb eb                                      bl #0x30e5e0
0042617c  00 00 50 e3                                      cmp r0, #0
00426180  05 20 a0 e1                                      mov r2, r5
00426184  03 00 00 1a                                      bne #0x426198
00426188  06 00 5a e1                                      cmp sl, r6
0042618c  ec ff ff ba                                      blt #0x426144
00426190  00 00 a0 d3                                      movle r0, #0
00426194  01 00 a0 c3                                      movgt r0, #1
00426198  00 00 50 e3                                      cmp r0, #0
0042619c  e8 ff ff ba                                      blt #0x426144
004261a0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004261a4  00 10 a0 e3                                      mov r1, #0
004261a8  00 00 53 e3                                      cmp r3, #0
004261ac  e8 ff ff 1a                                      bne #0x426154
004261b0  00 00 51 e3                                      cmp r1, #0
004261b4  05 a0 a0 01                                      moveq sl, r5
004261b8  17 00 00 1a                                      bne #0x42621c
004261bc  24 00 92 e5                                      ldr r0, [r2, #0x24]
004261c0  20 60 92 e5                                      ldr r6, [r2, #0x20]
004261c4  0b b0 67 e0                                      rsb fp, r7, fp
004261c8  07 10 a0 e1                                      mov r1, r7
004261cc  06 60 60 e0                                      rsb r6, r0, r6
004261d0  06 00 5b e1                                      cmp fp, r6
004261d4  0b 20 a0 b1                                      movlt r2, fp
004261d8  06 20 a0 a1                                      movge r2, r6
004261dc  ff a0 fb eb                                      bl #0x30e5e0
004261e0  00 00 50 e3                                      cmp r0, #0
004261e4  03 00 00 1a                                      bne #0x4261f8
004261e8  0b 00 56 e1                                      cmp r6, fp
004261ec  20 00 00 ba                                      blt #0x426274
004261f0  00 00 a0 d3                                      movle r0, #0
004261f4  01 00 a0 c3                                      movgt r0, #1
004261f8  00 00 50 e3                                      cmp r0, #0
004261fc  00 30 a0 a3                                      movge r3, #0
00426200  00 a0 84 a5                                      strge sl, [r4]
00426204  04 30 c4 a5                                      strbge r3, [r4, #4]
00426208  19 00 00 ba                                      blt #0x426274
0042620c  04 00 a0 e1                                      mov r0, r4
00426210  14 d0 8d e2                                      add sp, sp, #0x14
00426214  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00426218  01 50 a0 e1                                      mov r5, r1
0042621c  08 30 99 e5                                      ldr r3, [sb, #8]
00426220  03 00 55 e1                                      cmp r5, r3
00426224  32 00 00 0a                                      beq #0x4262f4
00426228  00 30 d5 e5                                      ldrb r3, [r5]
0042622c  00 00 53 e3                                      cmp r3, #0
00426230  03 00 00 1a                                      bne #0x426244
00426234  04 30 95 e5                                      ldr r3, [r5, #4]
00426238  04 30 93 e5                                      ldr r3, [r3, #4]
0042623c  03 00 55 e1                                      cmp r5, r3
00426240  26 00 00 0a                                      beq #0x4262e0
00426244  08 20 95 e5                                      ldr r2, [r5, #8]
00426248  00 00 52 e3                                      cmp r2, #0
0042624c  01 00 00 1a                                      bne #0x426258
00426250  14 00 00 ea                                      b #0x4262a8
00426254  03 20 a0 e1                                      mov r2, r3
00426258  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0042625c  00 00 53 e3                                      cmp r3, #0
00426260  fb ff ff 1a                                      bne #0x426254
00426264  02 a0 a0 e1                                      mov sl, r2
00426268  14 70 98 e5                                      ldr r7, [r8, #0x14]
0042626c  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00426270  d1 ff ff ea                                      b #0x4261bc
00426274  00 c0 a0 e3                                      mov ip, #0
00426278  05 20 a0 e1                                      mov r2, r5
0042627c  08 30 a0 e1                                      mov r3, r8
00426280  09 10 a0 e1                                      mov r1, sb
00426284  08 00 8d e2                                      add r0, sp, #8
00426288  04 c0 8d e5                                      str ip, [sp, #4]
0042628c  00 c0 8d e5                                      str ip, [sp]
00426290  63 ff ff eb                                      bl #0x426024
00426294  08 30 9d e5                                      ldr r3, [sp, #8]
00426298  01 20 a0 e3                                      mov r2, #1
0042629c  04 20 c4 e5                                      strb r2, [r4, #4]
004262a0  00 30 84 e5                                      str r3, [r4]
004262a4  d8 ff ff ea                                      b #0x42620c
004262a8  04 30 95 e5                                      ldr r3, [r5, #4]
004262ac  08 20 93 e5                                      ldr r2, [r3, #8]
004262b0  02 00 55 e1                                      cmp r5, r2
004262b4  01 00 00 0a                                      beq #0x4262c0
004262b8  19 00 00 ea                                      b #0x426324
004262bc  02 30 a0 e1                                      mov r3, r2
004262c0  04 20 93 e5                                      ldr r2, [r3, #4]
004262c4  08 10 92 e5                                      ldr r1, [r2, #8]
004262c8  03 00 51 e1                                      cmp r1, r3
004262cc  fa ff ff 0a                                      beq #0x4262bc
004262d0  14 70 98 e5                                      ldr r7, [r8, #0x14]
004262d4  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004262d8  02 a0 a0 e1                                      mov sl, r2
004262dc  b6 ff ff ea                                      b #0x4261bc
004262e0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004262e4  14 70 98 e5                                      ldr r7, [r8, #0x14]
004262e8  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004262ec  02 a0 a0 e1                                      mov sl, r2
004262f0  b1 ff ff ea                                      b #0x4261bc
004262f4  05 20 a0 e1                                      mov r2, r5
004262f8  08 30 a0 e1                                      mov r3, r8
004262fc  00 c0 a0 e3                                      mov ip, #0
00426300  09 10 a0 e1                                      mov r1, sb
00426304  0c 00 8d e2                                      add r0, sp, #0xc
00426308  20 10 8d e8                                      stm sp, {r5, ip}
0042630c  44 ff ff eb                                      bl #0x426024
00426310  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00426314  01 20 a0 e3                                      mov r2, #1
00426318  04 20 c4 e5                                      strb r2, [r4, #4]
0042631c  00 30 84 e5                                      str r3, [r4]
00426320  b9 ff ff ea                                      b #0x42620c
00426324  03 20 a0 e1                                      mov r2, r3
00426328  cd ff ff ea                                      b #0x426264

; FUNCTION 0x0042632c, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFbPKcS6_PvEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE13insert_uniqueENS_17_Rb_tree_iteratorISA_SE_EERKSA_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> const&)
; decoder-mode: arm
0042632c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00426330  44 d0 4d e2                                      sub sp, sp, #0x44
00426334  14 20 8d e5                                      str r2, [sp, #0x14]
00426338  00 50 92 e5                                      ldr r5, [r2]
0042633c  08 20 91 e5                                      ldr r2, [r1, #8]
00426340  01 60 a0 e1                                      mov r6, r1
00426344  00 70 a0 e1                                      mov r7, r0
00426348  02 00 55 e1                                      cmp r5, r2
0042634c  03 80 a0 e1                                      mov r8, r3
00426350  7c 00 00 0a                                      beq #0x426548
00426354  01 00 55 e1                                      cmp r5, r1
00426358  d0 00 00 0a                                      beq #0x4266a0
0042635c  00 30 d5 e5                                      ldrb r3, [r5]
00426360  00 00 53 e3                                      cmp r3, #0
00426364  35 00 00 0a                                      beq #0x426440
00426368  08 40 95 e5                                      ldr r4, [r5, #8]
0042636c  00 00 54 e3                                      cmp r4, #0
00426370  01 00 00 1a                                      bne #0x42637c
00426374  39 00 00 ea                                      b #0x426460
00426378  03 40 a0 e1                                      mov r4, r3
0042637c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00426380  00 00 53 e3                                      cmp r3, #0
00426384  fb ff ff 1a                                      bne #0x426378
00426388  24 30 95 e5                                      ldr r3, [r5, #0x24]
0042638c  14 90 98 e5                                      ldr sb, [r8, #0x14]
00426390  10 b0 98 e5                                      ldr fp, [r8, #0x10]
00426394  20 20 95 e5                                      ldr r2, [r5, #0x20]
00426398  03 10 a0 e1                                      mov r1, r3
0042639c  0b b0 69 e0                                      rsb fp, sb, fp
004263a0  02 20 63 e0                                      rsb r2, r3, r2
004263a4  18 20 8d e5                                      str r2, [sp, #0x18]
004263a8  09 00 a0 e1                                      mov r0, sb
004263ac  0b 00 52 e1                                      cmp r2, fp
004263b0  0b 20 a0 a1                                      movge r2, fp
004263b4  0c 30 8d e5                                      str r3, [sp, #0xc]
004263b8  1c 20 8d e5                                      str r2, [sp, #0x1c]
004263bc  87 a0 fb eb                                      bl #0x30e5e0
004263c0  00 00 50 e3                                      cmp r0, #0
004263c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004263c8  05 00 00 1a                                      bne #0x4263e4
004263cc  18 20 9d e5                                      ldr r2, [sp, #0x18]
004263d0  02 00 5b e1                                      cmp fp, r2
004263d4  00 00 e0 b3                                      mvnlt r0, #0
004263d8  01 00 00 ba                                      blt #0x4263e4
004263dc  00 00 a0 d3                                      movle r0, #0
004263e0  01 00 a0 c3                                      movgt r0, #1
004263e4  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
004263e8  28 00 00 1a                                      bne #0x426490
004263ec  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004263f0  00 00 54 e3                                      cmp r4, #0
004263f4  01 00 00 1a                                      bne #0x426400
004263f8  cc 00 00 ea                                      b #0x426730
004263fc  02 40 a0 e1                                      mov r4, r2
00426400  08 20 94 e5                                      ldr r2, [r4, #8]
00426404  00 00 52 e3                                      cmp r2, #0
00426408  fb ff ff 1a                                      bne #0x4263fc
0042640c  00 00 5c e3                                      cmp ip, #0
00426410  43 00 00 1a                                      bne #0x426524
00426414  03 00 a0 e1                                      mov r0, r3
00426418  09 10 a0 e1                                      mov r1, sb
0042641c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00426420  6e a0 fb eb                                      bl #0x30e5e0
00426424  00 00 50 e3                                      cmp r0, #0
00426428  34 00 00 1a                                      bne #0x426500
0042642c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00426430  03 00 5b e1                                      cmp fp, r3
00426434  32 00 00 ca                                      bgt #0x426504
00426438  00 50 87 e5                                      str r5, [r7]
0042643c  3e 00 00 ea                                      b #0x42653c
00426440  04 30 95 e5                                      ldr r3, [r5, #4]
00426444  04 30 93 e5                                      ldr r3, [r3, #4]
00426448  03 00 55 e1                                      cmp r5, r3
0042644c  0c 40 95 05                                      ldreq r4, [r5, #0xc]
00426450  cc ff ff 0a                                      beq #0x426388
00426454  08 40 95 e5                                      ldr r4, [r5, #8]
00426458  00 00 54 e3                                      cmp r4, #0
0042645c  c6 ff ff 1a                                      bne #0x42637c
00426460  04 40 95 e5                                      ldr r4, [r5, #4]
00426464  08 30 94 e5                                      ldr r3, [r4, #8]
00426468  03 00 55 e1                                      cmp r5, r3
0042646c  01 00 00 0a                                      beq #0x426478
00426470  c4 ff ff ea                                      b #0x426388
00426474  03 40 a0 e1                                      mov r4, r3
00426478  04 30 94 e5                                      ldr r3, [r4, #4]
0042647c  08 20 93 e5                                      ldr r2, [r3, #8]
00426480  04 00 52 e1                                      cmp r2, r4
00426484  fa ff ff 0a                                      beq #0x426474
00426488  03 40 a0 e1                                      mov r4, r3
0042648c  bd ff ff ea                                      b #0x426388
00426490  24 20 94 e5                                      ldr r2, [r4, #0x24]
00426494  20 a0 94 e5                                      ldr sl, [r4, #0x20]
00426498  09 10 a0 e1                                      mov r1, sb
0042649c  02 00 a0 e1                                      mov r0, r2
004264a0  0a a0 62 e0                                      rsb sl, r2, sl
004264a4  0a 00 5b e1                                      cmp fp, sl
004264a8  0b 20 a0 b1                                      movlt r2, fp
004264ac  0a 20 a0 a1                                      movge r2, sl
004264b0  0c 30 8d e5                                      str r3, [sp, #0xc]
004264b4  10 c0 8d e5                                      str ip, [sp, #0x10]
004264b8  48 a0 fb eb                                      bl #0x30e5e0
004264bc  00 00 50 e3                                      cmp r0, #0
004264c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004264c4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
004264c8  6f 00 00 1a                                      bne #0x42668c
004264cc  0a 00 5b e1                                      cmp fp, sl
004264d0  c5 ff ff da                                      ble #0x4263ec
004264d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004264d8  00 00 5c e3                                      cmp ip, #0
004264dc  62 00 00 0a                                      beq #0x42666c
004264e0  00 c0 a0 e3                                      mov ip, #0
004264e4  06 10 a0 e1                                      mov r1, r6
004264e8  05 20 a0 e1                                      mov r2, r5
004264ec  08 30 a0 e1                                      mov r3, r8
004264f0  07 00 a0 e1                                      mov r0, r7
004264f4  20 10 8d e8                                      stm sp, {r5, ip}
004264f8  c9 fe ff eb                                      bl #0x426024
004264fc  0e 00 00 ea                                      b #0x42653c
00426500  cc ff ff aa                                      bge #0x426438
00426504  04 00 56 e1                                      cmp r6, r4
00426508  9b 00 00 0a                                      beq #0x42677c
0042650c  14 00 86 e2                                      add r0, r6, #0x14
00426510  08 10 a0 e1                                      mov r1, r8
00426514  10 20 84 e2                                      add r2, r4, #0x10
00426518  b6 b5 fb eb                                      bl #0x313bf8
0042651c  00 00 50 e3                                      cmp r0, #0
00426520  93 00 00 1a                                      bne #0x426774
00426524  06 10 a0 e1                                      mov r1, r6
00426528  08 20 a0 e1                                      mov r2, r8
0042652c  20 00 8d e2                                      add r0, sp, #0x20
00426530  f7 fe ff eb                                      bl #0x426114
00426534  20 30 9d e5                                      ldr r3, [sp, #0x20]
00426538  00 30 87 e5                                      str r3, [r7]
0042653c  07 00 a0 e1                                      mov r0, r7
00426540  44 d0 8d e2                                      add sp, sp, #0x44
00426544  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00426548  10 30 91 e5                                      ldr r3, [r1, #0x10]
0042654c  00 00 53 e3                                      cmp r3, #0
00426550  9f 00 00 0a                                      beq #0x4267d4
00426554  14 30 98 e5                                      ldr r3, [r8, #0x14]
00426558  24 10 95 e5                                      ldr r1, [r5, #0x24]
0042655c  10 40 98 e5                                      ldr r4, [r8, #0x10]
00426560  20 a0 95 e5                                      ldr sl, [r5, #0x20]
00426564  03 00 a0 e1                                      mov r0, r3
00426568  04 40 63 e0                                      rsb r4, r3, r4
0042656c  0a a0 61 e0                                      rsb sl, r1, sl
00426570  04 00 5a e1                                      cmp sl, r4
00426574  0a 20 a0 b1                                      movlt r2, sl
00426578  04 20 a0 a1                                      movge r2, r4
0042657c  17 a0 fb eb                                      bl #0x30e5e0
00426580  00 00 50 e3                                      cmp r0, #0
00426584  03 00 00 1a                                      bne #0x426598
00426588  0a 00 54 e1                                      cmp r4, sl
0042658c  d3 ff ff ba                                      blt #0x4264e0
00426590  00 00 a0 d3                                      movle r0, #0
00426594  01 00 a0 c3                                      movgt r0, #1
00426598  00 00 50 e3                                      cmp r0, #0
0042659c  cf ff ff ba                                      blt #0x4264e0
004265a0  14 a0 86 e2                                      add sl, r6, #0x14
004265a4  10 10 85 e2                                      add r1, r5, #0x10
004265a8  0a 00 a0 e1                                      mov r0, sl
004265ac  08 20 a0 e1                                      mov r2, r8
004265b0  90 b5 fb eb                                      bl #0x313bf8
004265b4  00 00 50 e3                                      cmp r0, #0
004265b8  81 00 00 0a                                      beq #0x4267c4
004265bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
004265c0  00 c0 93 e5                                      ldr ip, [r3]
004265c4  0c 40 9c e5                                      ldr r4, [ip, #0xc]
004265c8  00 00 54 e3                                      cmp r4, #0
004265cc  22 00 00 1a                                      bne #0x42665c
004265d0  04 30 9c e5                                      ldr r3, [ip, #4]
004265d4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004265d8  02 00 5c e1                                      cmp ip, r2
004265dc  0c 40 a0 11                                      movne r4, ip
004265e0  04 00 00 1a                                      bne #0x4265f8
004265e4  03 40 a0 e1                                      mov r4, r3
004265e8  04 30 93 e5                                      ldr r3, [r3, #4]
004265ec  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004265f0  04 00 52 e1                                      cmp r2, r4
004265f4  fa ff ff 0a                                      beq #0x4265e4
004265f8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004265fc  02 00 53 e1                                      cmp r3, r2
00426600  03 40 a0 11                                      movne r4, r3
00426604  04 00 56 e1                                      cmp r6, r4
00426608  7f 00 00 0a                                      beq #0x42680c
0042660c  0a 00 a0 e1                                      mov r0, sl
00426610  08 10 a0 e1                                      mov r1, r8
00426614  10 20 84 e2                                      add r2, r4, #0x10
00426618  76 b5 fb eb                                      bl #0x313bf8
0042661c  00 00 50 e3                                      cmp r0, #0
00426620  60 00 00 0a                                      beq #0x4267a8
00426624  14 20 9d e5                                      ldr r2, [sp, #0x14]
00426628  00 c0 92 e5                                      ldr ip, [r2]
0042662c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00426630  00 00 5e e3                                      cmp lr, #0
00426634  6c 00 00 0a                                      beq #0x4267ec
00426638  00 c0 a0 e3                                      mov ip, #0
0042663c  06 10 a0 e1                                      mov r1, r6
00426640  04 20 a0 e1                                      mov r2, r4
00426644  08 30 a0 e1                                      mov r3, r8
00426648  07 00 a0 e1                                      mov r0, r7
0042664c  10 10 8d e8                                      stm sp, {r4, ip}
00426650  73 fe ff eb                                      bl #0x426024
00426654  b8 ff ff ea                                      b #0x42653c
00426658  03 40 a0 e1                                      mov r4, r3
0042665c  08 30 94 e5                                      ldr r3, [r4, #8]
00426660  00 00 53 e3                                      cmp r3, #0
00426664  fb ff ff 1a                                      bne #0x426658
00426668  e5 ff ff ea                                      b #0x426604
0042666c  06 10 a0 e1                                      mov r1, r6
00426670  04 20 a0 e1                                      mov r2, r4
00426674  08 30 a0 e1                                      mov r3, r8
00426678  07 00 a0 e1                                      mov r0, r7
0042667c  00 c0 8d e5                                      str ip, [sp]
00426680  04 40 8d e5                                      str r4, [sp, #4]
00426684  66 fe ff eb                                      bl #0x426024
00426688  ab ff ff ea                                      b #0x42653c
0042668c  56 ff ff aa                                      bge #0x4263ec
00426690  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00426694  00 00 5c e3                                      cmp ip, #0
00426698  90 ff ff 1a                                      bne #0x4264e0
0042669c  f2 ff ff ea                                      b #0x42666c
004266a0  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004266a4  14 10 93 e5                                      ldr r1, [r3, #0x14]
004266a8  10 90 93 e5                                      ldr sb, [r3, #0x10]
004266ac  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004266b0  24 30 94 e5                                      ldr r3, [r4, #0x24]
004266b4  09 90 61 e0                                      rsb sb, r1, sb
004266b8  0a a0 63 e0                                      rsb sl, r3, sl
004266bc  0a 00 59 e1                                      cmp sb, sl
004266c0  09 20 a0 b1                                      movlt r2, sb
004266c4  0a 20 a0 a1                                      movge r2, sl
004266c8  03 00 a0 e1                                      mov r0, r3
004266cc  c3 9f fb eb                                      bl #0x30e5e0
004266d0  00 00 50 e3                                      cmp r0, #0
004266d4  03 00 00 1a                                      bne #0x4266e8
004266d8  09 00 5a e1                                      cmp sl, sb
004266dc  03 00 00 ba                                      blt #0x4266f0
004266e0  00 00 a0 d3                                      movle r0, #0
004266e4  01 00 a0 c3                                      movgt r0, #1
004266e8  00 00 50 e3                                      cmp r0, #0
004266ec  08 00 00 aa                                      bge #0x426714
004266f0  00 c0 a0 e3                                      mov ip, #0
004266f4  06 10 a0 e1                                      mov r1, r6
004266f8  04 20 a0 e1                                      mov r2, r4
004266fc  08 30 a0 e1                                      mov r3, r8
00426700  07 00 a0 e1                                      mov r0, r7
00426704  00 c0 8d e5                                      str ip, [sp]
00426708  04 50 8d e5                                      str r5, [sp, #4]
0042670c  44 fe ff eb                                      bl #0x426024
00426710  89 ff ff ea                                      b #0x42653c
00426714  06 10 a0 e1                                      mov r1, r6
00426718  08 20 a0 e1                                      mov r2, r8
0042671c  28 00 8d e2                                      add r0, sp, #0x28
00426720  7b fe ff eb                                      bl #0x426114
00426724  28 30 9d e5                                      ldr r3, [sp, #0x28]
00426728  00 30 87 e5                                      str r3, [r7]
0042672c  82 ff ff ea                                      b #0x42653c
00426730  04 20 95 e5                                      ldr r2, [r5, #4]
00426734  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00426738  01 00 55 e1                                      cmp r5, r1
0042673c  05 40 a0 11                                      movne r4, r5
00426740  04 00 00 0a                                      beq #0x426758
00426744  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00426748  01 00 52 e1                                      cmp r2, r1
0042674c  02 40 a0 11                                      movne r4, r2
00426750  2d ff ff ea                                      b #0x42640c
00426754  01 20 a0 e1                                      mov r2, r1
00426758  04 10 92 e5                                      ldr r1, [r2, #4]
0042675c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00426760  02 00 50 e1                                      cmp r0, r2
00426764  fa ff ff 0a                                      beq #0x426754
00426768  02 40 a0 e1                                      mov r4, r2
0042676c  01 20 a0 e1                                      mov r2, r1
00426770  f3 ff ff ea                                      b #0x426744
00426774  14 20 9d e5                                      ldr r2, [sp, #0x14]
00426778  00 50 92 e5                                      ldr r5, [r2]
0042677c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00426780  00 00 5c e3                                      cmp ip, #0
00426784  ab ff ff 1a                                      bne #0x426638
00426788  06 10 a0 e1                                      mov r1, r6
0042678c  05 20 a0 e1                                      mov r2, r5
00426790  08 30 a0 e1                                      mov r3, r8
00426794  07 00 a0 e1                                      mov r0, r7
00426798  00 c0 8d e5                                      str ip, [sp]
0042679c  04 50 8d e5                                      str r5, [sp, #4]
004267a0  1f fe ff eb                                      bl #0x426024
004267a4  64 ff ff ea                                      b #0x42653c
004267a8  06 10 a0 e1                                      mov r1, r6
004267ac  08 20 a0 e1                                      mov r2, r8
004267b0  30 00 8d e2                                      add r0, sp, #0x30
004267b4  56 fe ff eb                                      bl #0x426114
004267b8  30 30 9d e5                                      ldr r3, [sp, #0x30]
004267bc  00 30 87 e5                                      str r3, [r7]
004267c0  5d ff ff ea                                      b #0x42653c
004267c4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004267c8  00 30 92 e5                                      ldr r3, [r2]
004267cc  00 30 87 e5                                      str r3, [r7]
004267d0  59 ff ff ea                                      b #0x42653c
004267d4  08 20 a0 e1                                      mov r2, r8
004267d8  38 00 8d e2                                      add r0, sp, #0x38
004267dc  4c fe ff eb                                      bl #0x426114
004267e0  38 30 9d e5                                      ldr r3, [sp, #0x38]
004267e4  00 30 87 e5                                      str r3, [r7]
004267e8  53 ff ff ea                                      b #0x42653c
004267ec  06 10 a0 e1                                      mov r1, r6
004267f0  0c 20 a0 e1                                      mov r2, ip
004267f4  08 30 a0 e1                                      mov r3, r8
004267f8  07 00 a0 e1                                      mov r0, r7
004267fc  00 e0 8d e5                                      str lr, [sp]
00426800  04 c0 8d e5                                      str ip, [sp, #4]
00426804  06 fe ff eb                                      bl #0x426024
00426808  4b ff ff ea                                      b #0x42653c
0042680c  00 e0 a0 e3                                      mov lr, #0
00426810  06 10 a0 e1                                      mov r1, r6
00426814  0c 20 a0 e1                                      mov r2, ip
00426818  08 30 a0 e1                                      mov r3, r8
0042681c  07 00 a0 e1                                      mov r0, r7
00426820  00 e0 8d e5                                      str lr, [sp]
00426824  04 c0 8d e5                                      str ip, [sp, #4]
00426828  fd fd ff eb                                      bl #0x426024
0042682c  42 ff ff ea                                      b #0x42653c
