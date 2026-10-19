; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004af7f4, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFiPKcEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004af7f4  70 40 2d e9                                      push {r4, r5, r6, lr}
004af7f8  00 40 51 e2                                      subs r4, r1, #0
004af7fc  00 60 a0 e1                                      mov r6, r0
004af800  0a 00 00 0a                                      beq #0x4af830
004af804  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004af808  06 00 a0 e1                                      mov r0, r6
004af80c  f8 ff ff eb                                      bl #0x4af7f4
004af810  08 50 94 e5                                      ldr r5, [r4, #8]
004af814  10 00 84 e2                                      add r0, r4, #0x10
004af818  8d a2 f9 eb                                      bl #0x318254
004af81c  04 00 a0 e1                                      mov r0, r4
004af820  2c 10 a0 e3                                      mov r1, #0x2c
004af824  b5 65 09 eb                                      bl #0x708f00
004af828  00 40 55 e2                                      subs r4, r5, #0
004af82c  f4 ff ff 1a                                      bne #0x4af804
004af830  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004bcb64, declared_size=88, range_size=88, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFiPKcEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_create_nodeERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >::_M_create_node(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> const&)
; decoder-mode: arm
004bcb64  30 40 2d e9                                      push {r4, r5, lr}
004bcb68  0c d0 4d e2                                      sub sp, sp, #0xc
004bcb6c  2c 30 a0 e3                                      mov r3, #0x2c
004bcb70  08 00 8d e2                                      add r0, sp, #8
004bcb74  04 30 20 e5                                      str r3, [r0, #-4]!
004bcb78  01 50 a0 e1                                      mov r5, r1
004bcb7c  cf 30 09 eb                                      bl #0x708ec0
004bcb80  00 40 a0 e1                                      mov r4, r0
004bcb84  10 00 80 e2                                      add r0, r0, #0x10
004bcb88  20 00 84 e5                                      str r0, [r4, #0x20]
004bcb8c  24 00 84 e5                                      str r0, [r4, #0x24]
004bcb90  10 20 95 e5                                      ldr r2, [r5, #0x10]
004bcb94  14 10 95 e5                                      ldr r1, [r5, #0x14]
004bcb98  d2 52 f9 eb                                      bl #0x3116e8
004bcb9c  18 20 95 e5                                      ldr r2, [r5, #0x18]
004bcba0  00 30 a0 e3                                      mov r3, #0
004bcba4  0c 30 84 e5                                      str r3, [r4, #0xc]
004bcba8  28 20 84 e5                                      str r2, [r4, #0x28]
004bcbac  08 30 84 e5                                      str r3, [r4, #8]
004bcbb0  04 00 a0 e1                                      mov r0, r4
004bcbb4  0c d0 8d e2                                      add sp, sp, #0xc
004bcbb8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004bcbbc, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFiPKcEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS9_SH_SH_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
004bcbbc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004bcbc0  02 00 51 e1                                      cmp r1, r2
004bcbc4  0c d0 4d e2                                      sub sp, sp, #0xc
004bcbc8  01 40 a0 e1                                      mov r4, r1
004bcbcc  02 50 a0 e1                                      mov r5, r2
004bcbd0  00 60 a0 e1                                      mov r6, r0
004bcbd4  23 00 00 0a                                      beq #0x4bcc68
004bcbd8  24 20 9d e5                                      ldr r2, [sp, #0x24]
004bcbdc  00 00 52 e3                                      cmp r2, #0
004bcbe0  12 00 00 0a                                      beq #0x4bcc30
004bcbe4  03 10 a0 e1                                      mov r1, r3
004bcbe8  04 00 a0 e1                                      mov r0, r4
004bcbec  dc ff ff eb                                      bl #0x4bcb64
004bcbf0  0c 00 85 e5                                      str r0, [r5, #0xc]
004bcbf4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004bcbf8  00 70 a0 e1                                      mov r7, r0
004bcbfc  03 00 55 e1                                      cmp r5, r3
004bcc00  16 00 00 0a                                      beq #0x4bcc60
004bcc04  07 00 a0 e1                                      mov r0, r7
004bcc08  04 50 87 e5                                      str r5, [r7, #4]
004bcc0c  04 10 84 e2                                      add r1, r4, #4
004bcc10  d2 5a f9 eb                                      bl #0x313760
004bcc14  10 30 94 e5                                      ldr r3, [r4, #0x10]
004bcc18  06 00 a0 e1                                      mov r0, r6
004bcc1c  01 30 83 e2                                      add r3, r3, #1
004bcc20  10 30 84 e5                                      str r3, [r4, #0x10]
004bcc24  00 70 86 e5                                      str r7, [r6]
004bcc28  0c d0 8d e2                                      add sp, sp, #0xc
004bcc2c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004bcc30  20 20 9d e5                                      ldr r2, [sp, #0x20]
004bcc34  00 00 52 e3                                      cmp r2, #0
004bcc38  12 00 00 0a                                      beq #0x4bcc88
004bcc3c  03 10 a0 e1                                      mov r1, r3
004bcc40  04 00 a0 e1                                      mov r0, r4
004bcc44  c6 ff ff eb                                      bl #0x4bcb64
004bcc48  08 00 85 e5                                      str r0, [r5, #8]
004bcc4c  08 30 94 e5                                      ldr r3, [r4, #8]
004bcc50  00 70 a0 e1                                      mov r7, r0
004bcc54  03 00 55 e1                                      cmp r5, r3
004bcc58  08 00 84 05                                      streq r0, [r4, #8]
004bcc5c  e8 ff ff ea                                      b #0x4bcc04
004bcc60  0c 70 84 e5                                      str r7, [r4, #0xc]
004bcc64  e6 ff ff ea                                      b #0x4bcc04
004bcc68  03 10 a0 e1                                      mov r1, r3
004bcc6c  04 00 a0 e1                                      mov r0, r4
004bcc70  bb ff ff eb                                      bl #0x4bcb64
004bcc74  00 70 a0 e1                                      mov r7, r0
004bcc78  08 00 84 e5                                      str r0, [r4, #8]
004bcc7c  04 00 84 e5                                      str r0, [r4, #4]
004bcc80  0c 00 84 e5                                      str r0, [r4, #0xc]
004bcc84  de ff ff ea                                      b #0x4bcc04
004bcc88  14 00 81 e2                                      add r0, r1, #0x14
004bcc8c  10 20 85 e2                                      add r2, r5, #0x10
004bcc90  03 10 a0 e1                                      mov r1, r3
004bcc94  04 30 8d e5                                      str r3, [sp, #4]
004bcc98  d6 5b f9 eb                                      bl #0x313bf8
004bcc9c  00 00 50 e3                                      cmp r0, #0
004bcca0  04 30 9d e5                                      ldr r3, [sp, #4]
004bcca4  ce ff ff 0a                                      beq #0x4bcbe4
004bcca8  e3 ff ff ea                                      b #0x4bcc3c

; FUNCTION 0x004bd0a4, declared_size=536, range_size=536, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFiPKcEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >::insert_unique(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> const&)
; decoder-mode: arm
004bd0a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bd0a8  04 50 91 e5                                      ldr r5, [r1, #4]
004bd0ac  14 d0 4d e2                                      sub sp, sp, #0x14
004bd0b0  01 90 a0 e1                                      mov sb, r1
004bd0b4  00 00 55 e3                                      cmp r5, #0
004bd0b8  00 40 a0 e1                                      mov r4, r0
004bd0bc  02 80 a0 e1                                      mov r8, r2
004bd0c0  38 00 00 0a                                      beq #0x4bd1a8
004bd0c4  14 70 92 e5                                      ldr r7, [r2, #0x14]
004bd0c8  10 b0 92 e5                                      ldr fp, [r2, #0x10]
004bd0cc  0b a0 67 e0                                      rsb sl, r7, fp
004bd0d0  04 00 00 ea                                      b #0x4bd0e8
004bd0d4  08 30 95 e5                                      ldr r3, [r5, #8]
004bd0d8  01 10 a0 e3                                      mov r1, #1
004bd0dc  00 00 53 e3                                      cmp r3, #0
004bd0e0  16 00 00 0a                                      beq #0x4bd140
004bd0e4  03 50 a0 e1                                      mov r5, r3
004bd0e8  24 30 95 e5                                      ldr r3, [r5, #0x24]
004bd0ec  20 60 95 e5                                      ldr r6, [r5, #0x20]
004bd0f0  07 00 a0 e1                                      mov r0, r7
004bd0f4  03 10 a0 e1                                      mov r1, r3
004bd0f8  06 60 63 e0                                      rsb r6, r3, r6
004bd0fc  0a 00 56 e1                                      cmp r6, sl
004bd100  06 20 a0 b1                                      movlt r2, r6
004bd104  0a 20 a0 a1                                      movge r2, sl
004bd108  34 45 f9 eb                                      bl #0x30e5e0
004bd10c  00 00 50 e3                                      cmp r0, #0
004bd110  05 20 a0 e1                                      mov r2, r5
004bd114  03 00 00 1a                                      bne #0x4bd128
004bd118  06 00 5a e1                                      cmp sl, r6
004bd11c  ec ff ff ba                                      blt #0x4bd0d4
004bd120  00 00 a0 d3                                      movle r0, #0
004bd124  01 00 a0 c3                                      movgt r0, #1
004bd128  00 00 50 e3                                      cmp r0, #0
004bd12c  e8 ff ff ba                                      blt #0x4bd0d4
004bd130  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004bd134  00 10 a0 e3                                      mov r1, #0
004bd138  00 00 53 e3                                      cmp r3, #0
004bd13c  e8 ff ff 1a                                      bne #0x4bd0e4
004bd140  00 00 51 e3                                      cmp r1, #0
004bd144  05 a0 a0 01                                      moveq sl, r5
004bd148  17 00 00 1a                                      bne #0x4bd1ac
004bd14c  24 00 92 e5                                      ldr r0, [r2, #0x24]
004bd150  20 60 92 e5                                      ldr r6, [r2, #0x20]
004bd154  0b b0 67 e0                                      rsb fp, r7, fp
004bd158  07 10 a0 e1                                      mov r1, r7
004bd15c  06 60 60 e0                                      rsb r6, r0, r6
004bd160  06 00 5b e1                                      cmp fp, r6
004bd164  0b 20 a0 b1                                      movlt r2, fp
004bd168  06 20 a0 a1                                      movge r2, r6
004bd16c  1b 45 f9 eb                                      bl #0x30e5e0
004bd170  00 00 50 e3                                      cmp r0, #0
004bd174  03 00 00 1a                                      bne #0x4bd188
004bd178  0b 00 56 e1                                      cmp r6, fp
004bd17c  20 00 00 ba                                      blt #0x4bd204
004bd180  00 00 a0 d3                                      movle r0, #0
004bd184  01 00 a0 c3                                      movgt r0, #1
004bd188  00 00 50 e3                                      cmp r0, #0
004bd18c  00 30 a0 a3                                      movge r3, #0
004bd190  00 a0 84 a5                                      strge sl, [r4]
004bd194  04 30 c4 a5                                      strbge r3, [r4, #4]
004bd198  19 00 00 ba                                      blt #0x4bd204
004bd19c  04 00 a0 e1                                      mov r0, r4
004bd1a0  14 d0 8d e2                                      add sp, sp, #0x14
004bd1a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bd1a8  01 50 a0 e1                                      mov r5, r1
004bd1ac  08 30 99 e5                                      ldr r3, [sb, #8]
004bd1b0  03 00 55 e1                                      cmp r5, r3
004bd1b4  32 00 00 0a                                      beq #0x4bd284
004bd1b8  00 30 d5 e5                                      ldrb r3, [r5]
004bd1bc  00 00 53 e3                                      cmp r3, #0
004bd1c0  03 00 00 1a                                      bne #0x4bd1d4
004bd1c4  04 30 95 e5                                      ldr r3, [r5, #4]
004bd1c8  04 30 93 e5                                      ldr r3, [r3, #4]
004bd1cc  03 00 55 e1                                      cmp r5, r3
004bd1d0  26 00 00 0a                                      beq #0x4bd270
004bd1d4  08 20 95 e5                                      ldr r2, [r5, #8]
004bd1d8  00 00 52 e3                                      cmp r2, #0
004bd1dc  01 00 00 1a                                      bne #0x4bd1e8
004bd1e0  14 00 00 ea                                      b #0x4bd238
004bd1e4  03 20 a0 e1                                      mov r2, r3
004bd1e8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
004bd1ec  00 00 53 e3                                      cmp r3, #0
004bd1f0  fb ff ff 1a                                      bne #0x4bd1e4
004bd1f4  02 a0 a0 e1                                      mov sl, r2
004bd1f8  14 70 98 e5                                      ldr r7, [r8, #0x14]
004bd1fc  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bd200  d1 ff ff ea                                      b #0x4bd14c
004bd204  00 c0 a0 e3                                      mov ip, #0
004bd208  05 20 a0 e1                                      mov r2, r5
004bd20c  08 30 a0 e1                                      mov r3, r8
004bd210  09 10 a0 e1                                      mov r1, sb
004bd214  08 00 8d e2                                      add r0, sp, #8
004bd218  04 c0 8d e5                                      str ip, [sp, #4]
004bd21c  00 c0 8d e5                                      str ip, [sp]
004bd220  65 fe ff eb                                      bl #0x4bcbbc
004bd224  08 30 9d e5                                      ldr r3, [sp, #8]
004bd228  01 20 a0 e3                                      mov r2, #1
004bd22c  04 20 c4 e5                                      strb r2, [r4, #4]
004bd230  00 30 84 e5                                      str r3, [r4]
004bd234  d8 ff ff ea                                      b #0x4bd19c
004bd238  04 30 95 e5                                      ldr r3, [r5, #4]
004bd23c  08 20 93 e5                                      ldr r2, [r3, #8]
004bd240  02 00 55 e1                                      cmp r5, r2
004bd244  01 00 00 0a                                      beq #0x4bd250
004bd248  19 00 00 ea                                      b #0x4bd2b4
004bd24c  02 30 a0 e1                                      mov r3, r2
004bd250  04 20 93 e5                                      ldr r2, [r3, #4]
004bd254  08 10 92 e5                                      ldr r1, [r2, #8]
004bd258  03 00 51 e1                                      cmp r1, r3
004bd25c  fa ff ff 0a                                      beq #0x4bd24c
004bd260  14 70 98 e5                                      ldr r7, [r8, #0x14]
004bd264  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bd268  02 a0 a0 e1                                      mov sl, r2
004bd26c  b6 ff ff ea                                      b #0x4bd14c
004bd270  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004bd274  14 70 98 e5                                      ldr r7, [r8, #0x14]
004bd278  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bd27c  02 a0 a0 e1                                      mov sl, r2
004bd280  b1 ff ff ea                                      b #0x4bd14c
004bd284  05 20 a0 e1                                      mov r2, r5
004bd288  08 30 a0 e1                                      mov r3, r8
004bd28c  00 c0 a0 e3                                      mov ip, #0
004bd290  09 10 a0 e1                                      mov r1, sb
004bd294  0c 00 8d e2                                      add r0, sp, #0xc
004bd298  20 10 8d e8                                      stm sp, {r5, ip}
004bd29c  46 fe ff eb                                      bl #0x4bcbbc
004bd2a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004bd2a4  01 20 a0 e3                                      mov r2, #1
004bd2a8  04 20 c4 e5                                      strb r2, [r4, #4]
004bd2ac  00 30 84 e5                                      str r3, [r4]
004bd2b0  b9 ff ff ea                                      b #0x4bd19c
004bd2b4  03 20 a0 e1                                      mov r2, r3
004bd2b8  cd ff ff ea                                      b #0x4bd1f4

; FUNCTION 0x004bd688, declared_size=1284, range_size=1284, mode=arm
; class-group: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >
; alias: _ZNSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFiPKcEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE13insert_uniqueENS_17_Rb_tree_iteratorIS9_SD_EERKS9_
; demangled: std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> const&)
; decoder-mode: arm
004bd688  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bd68c  44 d0 4d e2                                      sub sp, sp, #0x44
004bd690  14 20 8d e5                                      str r2, [sp, #0x14]
004bd694  00 50 92 e5                                      ldr r5, [r2]
004bd698  08 20 91 e5                                      ldr r2, [r1, #8]
004bd69c  01 60 a0 e1                                      mov r6, r1
004bd6a0  00 70 a0 e1                                      mov r7, r0
004bd6a4  02 00 55 e1                                      cmp r5, r2
004bd6a8  03 80 a0 e1                                      mov r8, r3
004bd6ac  7c 00 00 0a                                      beq #0x4bd8a4
004bd6b0  01 00 55 e1                                      cmp r5, r1
004bd6b4  d0 00 00 0a                                      beq #0x4bd9fc
004bd6b8  00 30 d5 e5                                      ldrb r3, [r5]
004bd6bc  00 00 53 e3                                      cmp r3, #0
004bd6c0  35 00 00 0a                                      beq #0x4bd79c
004bd6c4  08 40 95 e5                                      ldr r4, [r5, #8]
004bd6c8  00 00 54 e3                                      cmp r4, #0
004bd6cc  01 00 00 1a                                      bne #0x4bd6d8
004bd6d0  39 00 00 ea                                      b #0x4bd7bc
004bd6d4  03 40 a0 e1                                      mov r4, r3
004bd6d8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004bd6dc  00 00 53 e3                                      cmp r3, #0
004bd6e0  fb ff ff 1a                                      bne #0x4bd6d4
004bd6e4  24 30 95 e5                                      ldr r3, [r5, #0x24]
004bd6e8  14 90 98 e5                                      ldr sb, [r8, #0x14]
004bd6ec  10 b0 98 e5                                      ldr fp, [r8, #0x10]
004bd6f0  20 20 95 e5                                      ldr r2, [r5, #0x20]
004bd6f4  03 10 a0 e1                                      mov r1, r3
004bd6f8  0b b0 69 e0                                      rsb fp, sb, fp
004bd6fc  02 20 63 e0                                      rsb r2, r3, r2
004bd700  18 20 8d e5                                      str r2, [sp, #0x18]
004bd704  09 00 a0 e1                                      mov r0, sb
004bd708  0b 00 52 e1                                      cmp r2, fp
004bd70c  0b 20 a0 a1                                      movge r2, fp
004bd710  0c 30 8d e5                                      str r3, [sp, #0xc]
004bd714  1c 20 8d e5                                      str r2, [sp, #0x1c]
004bd718  b0 43 f9 eb                                      bl #0x30e5e0
004bd71c  00 00 50 e3                                      cmp r0, #0
004bd720  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004bd724  05 00 00 1a                                      bne #0x4bd740
004bd728  18 20 9d e5                                      ldr r2, [sp, #0x18]
004bd72c  02 00 5b e1                                      cmp fp, r2
004bd730  00 00 e0 b3                                      mvnlt r0, #0
004bd734  01 00 00 ba                                      blt #0x4bd740
004bd738  00 00 a0 d3                                      movle r0, #0
004bd73c  01 00 a0 c3                                      movgt r0, #1
004bd740  a0 cf b0 e1                                      lsrs ip, r0, #0x1f
004bd744  28 00 00 1a                                      bne #0x4bd7ec
004bd748  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004bd74c  00 00 54 e3                                      cmp r4, #0
004bd750  01 00 00 1a                                      bne #0x4bd75c
004bd754  cc 00 00 ea                                      b #0x4bda8c
004bd758  02 40 a0 e1                                      mov r4, r2
004bd75c  08 20 94 e5                                      ldr r2, [r4, #8]
004bd760  00 00 52 e3                                      cmp r2, #0
004bd764  fb ff ff 1a                                      bne #0x4bd758
004bd768  00 00 5c e3                                      cmp ip, #0
004bd76c  43 00 00 1a                                      bne #0x4bd880
004bd770  03 00 a0 e1                                      mov r0, r3
004bd774  09 10 a0 e1                                      mov r1, sb
004bd778  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004bd77c  97 43 f9 eb                                      bl #0x30e5e0
004bd780  00 00 50 e3                                      cmp r0, #0
004bd784  34 00 00 1a                                      bne #0x4bd85c
004bd788  18 30 9d e5                                      ldr r3, [sp, #0x18]
004bd78c  03 00 5b e1                                      cmp fp, r3
004bd790  32 00 00 ca                                      bgt #0x4bd860
004bd794  00 50 87 e5                                      str r5, [r7]
004bd798  3e 00 00 ea                                      b #0x4bd898
004bd79c  04 30 95 e5                                      ldr r3, [r5, #4]
004bd7a0  04 30 93 e5                                      ldr r3, [r3, #4]
004bd7a4  03 00 55 e1                                      cmp r5, r3
004bd7a8  0c 40 95 05                                      ldreq r4, [r5, #0xc]
004bd7ac  cc ff ff 0a                                      beq #0x4bd6e4
004bd7b0  08 40 95 e5                                      ldr r4, [r5, #8]
004bd7b4  00 00 54 e3                                      cmp r4, #0
004bd7b8  c6 ff ff 1a                                      bne #0x4bd6d8
004bd7bc  04 40 95 e5                                      ldr r4, [r5, #4]
004bd7c0  08 30 94 e5                                      ldr r3, [r4, #8]
004bd7c4  03 00 55 e1                                      cmp r5, r3
004bd7c8  01 00 00 0a                                      beq #0x4bd7d4
004bd7cc  c4 ff ff ea                                      b #0x4bd6e4
004bd7d0  03 40 a0 e1                                      mov r4, r3
004bd7d4  04 30 94 e5                                      ldr r3, [r4, #4]
004bd7d8  08 20 93 e5                                      ldr r2, [r3, #8]
004bd7dc  04 00 52 e1                                      cmp r2, r4
004bd7e0  fa ff ff 0a                                      beq #0x4bd7d0
004bd7e4  03 40 a0 e1                                      mov r4, r3
004bd7e8  bd ff ff ea                                      b #0x4bd6e4
004bd7ec  24 20 94 e5                                      ldr r2, [r4, #0x24]
004bd7f0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004bd7f4  09 10 a0 e1                                      mov r1, sb
004bd7f8  02 00 a0 e1                                      mov r0, r2
004bd7fc  0a a0 62 e0                                      rsb sl, r2, sl
004bd800  0a 00 5b e1                                      cmp fp, sl
004bd804  0b 20 a0 b1                                      movlt r2, fp
004bd808  0a 20 a0 a1                                      movge r2, sl
004bd80c  0c 30 8d e5                                      str r3, [sp, #0xc]
004bd810  10 c0 8d e5                                      str ip, [sp, #0x10]
004bd814  71 43 f9 eb                                      bl #0x30e5e0
004bd818  00 00 50 e3                                      cmp r0, #0
004bd81c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004bd820  10 c0 9d e5                                      ldr ip, [sp, #0x10]
004bd824  6f 00 00 1a                                      bne #0x4bd9e8
004bd828  0a 00 5b e1                                      cmp fp, sl
004bd82c  c5 ff ff da                                      ble #0x4bd748
004bd830  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004bd834  00 00 5c e3                                      cmp ip, #0
004bd838  62 00 00 0a                                      beq #0x4bd9c8
004bd83c  00 c0 a0 e3                                      mov ip, #0
004bd840  06 10 a0 e1                                      mov r1, r6
004bd844  05 20 a0 e1                                      mov r2, r5
004bd848  08 30 a0 e1                                      mov r3, r8
004bd84c  07 00 a0 e1                                      mov r0, r7
004bd850  20 10 8d e8                                      stm sp, {r5, ip}
004bd854  d8 fc ff eb                                      bl #0x4bcbbc
004bd858  0e 00 00 ea                                      b #0x4bd898
004bd85c  cc ff ff aa                                      bge #0x4bd794
004bd860  04 00 56 e1                                      cmp r6, r4
004bd864  9b 00 00 0a                                      beq #0x4bdad8
004bd868  14 00 86 e2                                      add r0, r6, #0x14
004bd86c  08 10 a0 e1                                      mov r1, r8
004bd870  10 20 84 e2                                      add r2, r4, #0x10
004bd874  df 58 f9 eb                                      bl #0x313bf8
004bd878  00 00 50 e3                                      cmp r0, #0
004bd87c  93 00 00 1a                                      bne #0x4bdad0
004bd880  06 10 a0 e1                                      mov r1, r6
004bd884  08 20 a0 e1                                      mov r2, r8
004bd888  20 00 8d e2                                      add r0, sp, #0x20
004bd88c  04 fe ff eb                                      bl #0x4bd0a4
004bd890  20 30 9d e5                                      ldr r3, [sp, #0x20]
004bd894  00 30 87 e5                                      str r3, [r7]
004bd898  07 00 a0 e1                                      mov r0, r7
004bd89c  44 d0 8d e2                                      add sp, sp, #0x44
004bd8a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bd8a4  10 30 91 e5                                      ldr r3, [r1, #0x10]
004bd8a8  00 00 53 e3                                      cmp r3, #0
004bd8ac  9f 00 00 0a                                      beq #0x4bdb30
004bd8b0  14 30 98 e5                                      ldr r3, [r8, #0x14]
004bd8b4  24 10 95 e5                                      ldr r1, [r5, #0x24]
004bd8b8  10 40 98 e5                                      ldr r4, [r8, #0x10]
004bd8bc  20 a0 95 e5                                      ldr sl, [r5, #0x20]
004bd8c0  03 00 a0 e1                                      mov r0, r3
004bd8c4  04 40 63 e0                                      rsb r4, r3, r4
004bd8c8  0a a0 61 e0                                      rsb sl, r1, sl
004bd8cc  04 00 5a e1                                      cmp sl, r4
004bd8d0  0a 20 a0 b1                                      movlt r2, sl
004bd8d4  04 20 a0 a1                                      movge r2, r4
004bd8d8  40 43 f9 eb                                      bl #0x30e5e0
004bd8dc  00 00 50 e3                                      cmp r0, #0
004bd8e0  03 00 00 1a                                      bne #0x4bd8f4
004bd8e4  0a 00 54 e1                                      cmp r4, sl
004bd8e8  d3 ff ff ba                                      blt #0x4bd83c
004bd8ec  00 00 a0 d3                                      movle r0, #0
004bd8f0  01 00 a0 c3                                      movgt r0, #1
004bd8f4  00 00 50 e3                                      cmp r0, #0
004bd8f8  cf ff ff ba                                      blt #0x4bd83c
004bd8fc  14 a0 86 e2                                      add sl, r6, #0x14
004bd900  10 10 85 e2                                      add r1, r5, #0x10
004bd904  0a 00 a0 e1                                      mov r0, sl
004bd908  08 20 a0 e1                                      mov r2, r8
004bd90c  b9 58 f9 eb                                      bl #0x313bf8
004bd910  00 00 50 e3                                      cmp r0, #0
004bd914  81 00 00 0a                                      beq #0x4bdb20
004bd918  14 30 9d e5                                      ldr r3, [sp, #0x14]
004bd91c  00 c0 93 e5                                      ldr ip, [r3]
004bd920  0c 40 9c e5                                      ldr r4, [ip, #0xc]
004bd924  00 00 54 e3                                      cmp r4, #0
004bd928  22 00 00 1a                                      bne #0x4bd9b8
004bd92c  04 30 9c e5                                      ldr r3, [ip, #4]
004bd930  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004bd934  02 00 5c e1                                      cmp ip, r2
004bd938  0c 40 a0 11                                      movne r4, ip
004bd93c  04 00 00 1a                                      bne #0x4bd954
004bd940  03 40 a0 e1                                      mov r4, r3
004bd944  04 30 93 e5                                      ldr r3, [r3, #4]
004bd948  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004bd94c  04 00 52 e1                                      cmp r2, r4
004bd950  fa ff ff 0a                                      beq #0x4bd940
004bd954  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004bd958  02 00 53 e1                                      cmp r3, r2
004bd95c  03 40 a0 11                                      movne r4, r3
004bd960  04 00 56 e1                                      cmp r6, r4
004bd964  7f 00 00 0a                                      beq #0x4bdb68
004bd968  0a 00 a0 e1                                      mov r0, sl
004bd96c  08 10 a0 e1                                      mov r1, r8
004bd970  10 20 84 e2                                      add r2, r4, #0x10
004bd974  9f 58 f9 eb                                      bl #0x313bf8
004bd978  00 00 50 e3                                      cmp r0, #0
004bd97c  60 00 00 0a                                      beq #0x4bdb04
004bd980  14 20 9d e5                                      ldr r2, [sp, #0x14]
004bd984  00 c0 92 e5                                      ldr ip, [r2]
004bd988  0c e0 9c e5                                      ldr lr, [ip, #0xc]
004bd98c  00 00 5e e3                                      cmp lr, #0
004bd990  6c 00 00 0a                                      beq #0x4bdb48
004bd994  00 c0 a0 e3                                      mov ip, #0
004bd998  06 10 a0 e1                                      mov r1, r6
004bd99c  04 20 a0 e1                                      mov r2, r4
004bd9a0  08 30 a0 e1                                      mov r3, r8
004bd9a4  07 00 a0 e1                                      mov r0, r7
004bd9a8  10 10 8d e8                                      stm sp, {r4, ip}
004bd9ac  82 fc ff eb                                      bl #0x4bcbbc
004bd9b0  b8 ff ff ea                                      b #0x4bd898
004bd9b4  03 40 a0 e1                                      mov r4, r3
004bd9b8  08 30 94 e5                                      ldr r3, [r4, #8]
004bd9bc  00 00 53 e3                                      cmp r3, #0
004bd9c0  fb ff ff 1a                                      bne #0x4bd9b4
004bd9c4  e5 ff ff ea                                      b #0x4bd960
004bd9c8  06 10 a0 e1                                      mov r1, r6
004bd9cc  04 20 a0 e1                                      mov r2, r4
004bd9d0  08 30 a0 e1                                      mov r3, r8
004bd9d4  07 00 a0 e1                                      mov r0, r7
004bd9d8  00 c0 8d e5                                      str ip, [sp]
004bd9dc  04 40 8d e5                                      str r4, [sp, #4]
004bd9e0  75 fc ff eb                                      bl #0x4bcbbc
004bd9e4  ab ff ff ea                                      b #0x4bd898
004bd9e8  56 ff ff aa                                      bge #0x4bd748
004bd9ec  0c c0 94 e5                                      ldr ip, [r4, #0xc]
004bd9f0  00 00 5c e3                                      cmp ip, #0
004bd9f4  90 ff ff 1a                                      bne #0x4bd83c
004bd9f8  f2 ff ff ea                                      b #0x4bd9c8
004bd9fc  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004bda00  14 10 93 e5                                      ldr r1, [r3, #0x14]
004bda04  10 90 93 e5                                      ldr sb, [r3, #0x10]
004bda08  20 a0 94 e5                                      ldr sl, [r4, #0x20]
004bda0c  24 30 94 e5                                      ldr r3, [r4, #0x24]
004bda10  09 90 61 e0                                      rsb sb, r1, sb
004bda14  0a a0 63 e0                                      rsb sl, r3, sl
004bda18  0a 00 59 e1                                      cmp sb, sl
004bda1c  09 20 a0 b1                                      movlt r2, sb
004bda20  0a 20 a0 a1                                      movge r2, sl
004bda24  03 00 a0 e1                                      mov r0, r3
004bda28  ec 42 f9 eb                                      bl #0x30e5e0
004bda2c  00 00 50 e3                                      cmp r0, #0
004bda30  03 00 00 1a                                      bne #0x4bda44
004bda34  09 00 5a e1                                      cmp sl, sb
004bda38  03 00 00 ba                                      blt #0x4bda4c
004bda3c  00 00 a0 d3                                      movle r0, #0
004bda40  01 00 a0 c3                                      movgt r0, #1
004bda44  00 00 50 e3                                      cmp r0, #0
004bda48  08 00 00 aa                                      bge #0x4bda70
004bda4c  00 c0 a0 e3                                      mov ip, #0
004bda50  06 10 a0 e1                                      mov r1, r6
004bda54  04 20 a0 e1                                      mov r2, r4
004bda58  08 30 a0 e1                                      mov r3, r8
004bda5c  07 00 a0 e1                                      mov r0, r7
004bda60  00 c0 8d e5                                      str ip, [sp]
004bda64  04 50 8d e5                                      str r5, [sp, #4]
004bda68  53 fc ff eb                                      bl #0x4bcbbc
004bda6c  89 ff ff ea                                      b #0x4bd898
004bda70  06 10 a0 e1                                      mov r1, r6
004bda74  08 20 a0 e1                                      mov r2, r8
004bda78  28 00 8d e2                                      add r0, sp, #0x28
004bda7c  88 fd ff eb                                      bl #0x4bd0a4
004bda80  28 30 9d e5                                      ldr r3, [sp, #0x28]
004bda84  00 30 87 e5                                      str r3, [r7]
004bda88  82 ff ff ea                                      b #0x4bd898
004bda8c  04 20 95 e5                                      ldr r2, [r5, #4]
004bda90  0c 10 92 e5                                      ldr r1, [r2, #0xc]
004bda94  01 00 55 e1                                      cmp r5, r1
004bda98  05 40 a0 11                                      movne r4, r5
004bda9c  04 00 00 0a                                      beq #0x4bdab4
004bdaa0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004bdaa4  01 00 52 e1                                      cmp r2, r1
004bdaa8  02 40 a0 11                                      movne r4, r2
004bdaac  2d ff ff ea                                      b #0x4bd768
004bdab0  01 20 a0 e1                                      mov r2, r1
004bdab4  04 10 92 e5                                      ldr r1, [r2, #4]
004bdab8  0c 00 91 e5                                      ldr r0, [r1, #0xc]
004bdabc  02 00 50 e1                                      cmp r0, r2
004bdac0  fa ff ff 0a                                      beq #0x4bdab0
004bdac4  02 40 a0 e1                                      mov r4, r2
004bdac8  01 20 a0 e1                                      mov r2, r1
004bdacc  f3 ff ff ea                                      b #0x4bdaa0
004bdad0  14 20 9d e5                                      ldr r2, [sp, #0x14]
004bdad4  00 50 92 e5                                      ldr r5, [r2]
004bdad8  0c c0 95 e5                                      ldr ip, [r5, #0xc]
004bdadc  00 00 5c e3                                      cmp ip, #0
004bdae0  ab ff ff 1a                                      bne #0x4bd994
004bdae4  06 10 a0 e1                                      mov r1, r6
004bdae8  05 20 a0 e1                                      mov r2, r5
004bdaec  08 30 a0 e1                                      mov r3, r8
004bdaf0  07 00 a0 e1                                      mov r0, r7
004bdaf4  00 c0 8d e5                                      str ip, [sp]
004bdaf8  04 50 8d e5                                      str r5, [sp, #4]
004bdafc  2e fc ff eb                                      bl #0x4bcbbc
004bdb00  64 ff ff ea                                      b #0x4bd898
004bdb04  06 10 a0 e1                                      mov r1, r6
004bdb08  08 20 a0 e1                                      mov r2, r8
004bdb0c  30 00 8d e2                                      add r0, sp, #0x30
004bdb10  63 fd ff eb                                      bl #0x4bd0a4
004bdb14  30 30 9d e5                                      ldr r3, [sp, #0x30]
004bdb18  00 30 87 e5                                      str r3, [r7]
004bdb1c  5d ff ff ea                                      b #0x4bd898
004bdb20  14 20 9d e5                                      ldr r2, [sp, #0x14]
004bdb24  00 30 92 e5                                      ldr r3, [r2]
004bdb28  00 30 87 e5                                      str r3, [r7]
004bdb2c  59 ff ff ea                                      b #0x4bd898
004bdb30  08 20 a0 e1                                      mov r2, r8
004bdb34  38 00 8d e2                                      add r0, sp, #0x38
004bdb38  59 fd ff eb                                      bl #0x4bd0a4
004bdb3c  38 30 9d e5                                      ldr r3, [sp, #0x38]
004bdb40  00 30 87 e5                                      str r3, [r7]
004bdb44  53 ff ff ea                                      b #0x4bd898
004bdb48  06 10 a0 e1                                      mov r1, r6
004bdb4c  0c 20 a0 e1                                      mov r2, ip
004bdb50  08 30 a0 e1                                      mov r3, r8
004bdb54  07 00 a0 e1                                      mov r0, r7
004bdb58  00 e0 8d e5                                      str lr, [sp]
004bdb5c  04 c0 8d e5                                      str ip, [sp, #4]
004bdb60  15 fc ff eb                                      bl #0x4bcbbc
004bdb64  4b ff ff ea                                      b #0x4bd898
004bdb68  00 e0 a0 e3                                      mov lr, #0
004bdb6c  06 10 a0 e1                                      mov r1, r6
004bdb70  0c 20 a0 e1                                      mov r2, ip
004bdb74  08 30 a0 e1                                      mov r3, r8
004bdb78  07 00 a0 e1                                      mov r0, r7
004bdb7c  00 e0 8d e5                                      str lr, [sp]
004bdb80  04 c0 8d e5                                      str ip, [sp, #4]
004bdb84  0c fc ff eb                                      bl #0x4bcbbc
004bdb88  42 ff ff ea                                      b #0x4bd898
