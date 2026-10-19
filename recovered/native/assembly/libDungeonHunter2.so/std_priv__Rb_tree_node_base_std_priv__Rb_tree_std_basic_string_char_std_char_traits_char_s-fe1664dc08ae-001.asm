; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004bcd9c, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFiPKcEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_lower_boundIS6_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
004bcd9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bcda0  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
004bcda4  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
004bcda8  2c d0 4d e2                                      sub sp, sp, #0x2c
004bcdac  0b b0 8f e0                                      add fp, pc, fp
004bcdb0  02 30 9b e7                                      ldr r3, [fp, r2]
004bcdb4  04 20 8d e5                                      str r2, [sp, #4]
004bcdb8  00 90 a0 e1                                      mov sb, r0
004bcdbc  00 30 93 e5                                      ldr r3, [r3]
004bcdc0  01 80 a0 e1                                      mov r8, r1
004bcdc4  24 30 8d e5                                      str r3, [sp, #0x24]
004bcdc8  04 40 90 e5                                      ldr r4, [r0, #4]
004bcdcc  00 00 54 e3                                      cmp r4, #0
004bcdd0  21 00 00 0a                                      beq #0x4bce5c
004bcdd4  0c 70 8d e2                                      add r7, sp, #0xc
004bcdd8  08 a0 8d e2                                      add sl, sp, #8
004bcddc  00 10 98 e5                                      ldr r1, [r8]
004bcde0  0a 20 a0 e1                                      mov r2, sl
004bcde4  07 00 a0 e1                                      mov r0, r7
004bcde8  bf 5c f9 eb                                      bl #0x3140ec
004bcdec  24 30 94 e5                                      ldr r3, [r4, #0x24]
004bcdf0  20 10 9d e5                                      ldr r1, [sp, #0x20]
004bcdf4  20 60 94 e5                                      ldr r6, [r4, #0x20]
004bcdf8  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
004bcdfc  03 00 a0 e1                                      mov r0, r3
004bce00  06 60 63 e0                                      rsb r6, r3, r6
004bce04  05 50 61 e0                                      rsb r5, r1, r5
004bce08  06 00 55 e1                                      cmp r5, r6
004bce0c  05 20 a0 b1                                      movlt r2, r5
004bce10  06 20 a0 a1                                      movge r2, r6
004bce14  f1 45 f9 eb                                      bl #0x30e5e0
004bce18  00 30 50 e2                                      subs r3, r0, #0
004bce1c  04 00 00 1a                                      bne #0x4bce34
004bce20  05 00 56 e1                                      cmp r6, r5
004bce24  00 30 e0 b3                                      mvnlt r3, #0
004bce28  01 00 00 ba                                      blt #0x4bce34
004bce2c  00 30 a0 d3                                      movle r3, #0
004bce30  01 30 a0 c3                                      movgt r3, #1
004bce34  07 00 a0 e1                                      mov r0, r7
004bce38  00 30 8d e5                                      str r3, [sp]
004bce3c  04 6d f9 eb                                      bl #0x318254
004bce40  00 30 9d e5                                      ldr r3, [sp]
004bce44  00 00 53 e3                                      cmp r3, #0
004bce48  04 90 a0 a1                                      movge sb, r4
004bce4c  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
004bce50  08 40 94 a5                                      ldrge r4, [r4, #8]
004bce54  00 00 54 e3                                      cmp r4, #0
004bce58  df ff ff 1a                                      bne #0x4bcddc
004bce5c  04 20 9d e5                                      ldr r2, [sp, #4]
004bce60  09 00 a0 e1                                      mov r0, sb
004bce64  02 30 9b e7                                      ldr r3, [fp, r2]
004bce68  24 20 9d e5                                      ldr r2, [sp, #0x24]
004bce6c  00 30 93 e5                                      ldr r3, [r3]
004bce70  03 00 52 e1                                      cmp r2, r3
004bce74  01 00 00 1a                                      bne #0x4bce80
004bce78  2c d0 8d e2                                      add sp, sp, #0x2c
004bce7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bce80  22 45 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004bce84  e4 7c 4d 00 ac 40 00 00                          .byte 0xe4, 0x7c, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004bd4d0, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFiPKcEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIS6_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int (*)(char const*)> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
004bd4d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004bd4d4  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
004bd4d8  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
004bd4dc  54 d0 4d e2                                      sub sp, sp, #0x54
004bd4e0  0b b0 8f e0                                      add fp, pc, fp
004bd4e4  02 30 9b e7                                      ldr r3, [fp, r2]
004bd4e8  0c 20 8d e5                                      str r2, [sp, #0xc]
004bd4ec  08 00 8d e5                                      str r0, [sp, #8]
004bd4f0  04 40 90 e5                                      ldr r4, [r0, #4]
004bd4f4  00 30 93 e5                                      ldr r3, [r3]
004bd4f8  01 80 a0 e1                                      mov r8, r1
004bd4fc  00 00 54 e3                                      cmp r4, #0
004bd500  4c 30 8d e5                                      str r3, [sp, #0x4c]
004bd504  40 00 00 0a                                      beq #0x4bd60c
004bd508  00 a0 a0 e1                                      mov sl, r0
004bd50c  34 70 8d e2                                      add r7, sp, #0x34
004bd510  18 90 8d e2                                      add sb, sp, #0x18
004bd514  00 10 98 e5                                      ldr r1, [r8]
004bd518  09 20 a0 e1                                      mov r2, sb
004bd51c  07 00 a0 e1                                      mov r0, r7
004bd520  f1 5a f9 eb                                      bl #0x3140ec
004bd524  24 30 94 e5                                      ldr r3, [r4, #0x24]
004bd528  48 10 9d e5                                      ldr r1, [sp, #0x48]
004bd52c  20 60 94 e5                                      ldr r6, [r4, #0x20]
004bd530  44 50 9d e5                                      ldr r5, [sp, #0x44]
004bd534  03 00 a0 e1                                      mov r0, r3
004bd538  06 60 63 e0                                      rsb r6, r3, r6
004bd53c  05 50 61 e0                                      rsb r5, r1, r5
004bd540  06 00 55 e1                                      cmp r5, r6
004bd544  05 20 a0 b1                                      movlt r2, r5
004bd548  06 20 a0 a1                                      movge r2, r6
004bd54c  23 44 f9 eb                                      bl #0x30e5e0
004bd550  00 30 50 e2                                      subs r3, r0, #0
004bd554  04 00 00 1a                                      bne #0x4bd56c
004bd558  05 00 56 e1                                      cmp r6, r5
004bd55c  00 30 e0 b3                                      mvnlt r3, #0
004bd560  01 00 00 ba                                      blt #0x4bd56c
004bd564  00 30 a0 d3                                      movle r3, #0
004bd568  01 30 a0 c3                                      movgt r3, #1
004bd56c  07 00 a0 e1                                      mov r0, r7
004bd570  04 30 8d e5                                      str r3, [sp, #4]
004bd574  36 6b f9 eb                                      bl #0x318254
004bd578  04 30 9d e5                                      ldr r3, [sp, #4]
004bd57c  00 00 53 e3                                      cmp r3, #0
004bd580  04 a0 a0 a1                                      movge sl, r4
004bd584  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
004bd588  08 40 94 a5                                      ldrge r4, [r4, #8]
004bd58c  00 00 54 e3                                      cmp r4, #0
004bd590  df ff ff 1a                                      bne #0x4bd514
004bd594  08 30 9d e5                                      ldr r3, [sp, #8]
004bd598  03 00 5a e1                                      cmp sl, r3
004bd59c  1b 00 00 0a                                      beq #0x4bd610
004bd5a0  1c 40 8d e2                                      add r4, sp, #0x1c
004bd5a4  00 10 98 e5                                      ldr r1, [r8]
004bd5a8  14 20 8d e2                                      add r2, sp, #0x14
004bd5ac  04 00 a0 e1                                      mov r0, r4
004bd5b0  cd 5a f9 eb                                      bl #0x3140ec
004bd5b4  30 30 9d e5                                      ldr r3, [sp, #0x30]
004bd5b8  24 10 9a e5                                      ldr r1, [sl, #0x24]
004bd5bc  20 50 9a e5                                      ldr r5, [sl, #0x20]
004bd5c0  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
004bd5c4  03 00 a0 e1                                      mov r0, r3
004bd5c8  05 50 61 e0                                      rsb r5, r1, r5
004bd5cc  06 60 63 e0                                      rsb r6, r3, r6
004bd5d0  06 00 55 e1                                      cmp r5, r6
004bd5d4  05 20 a0 b1                                      movlt r2, r5
004bd5d8  06 20 a0 a1                                      movge r2, r6
004bd5dc  ff 43 f9 eb                                      bl #0x30e5e0
004bd5e0  00 70 50 e2                                      subs r7, r0, #0
004bd5e4  04 00 00 1a                                      bne #0x4bd5fc
004bd5e8  05 00 56 e1                                      cmp r6, r5
004bd5ec  00 70 e0 b3                                      mvnlt r7, #0
004bd5f0  01 00 00 ba                                      blt #0x4bd5fc
004bd5f4  00 70 a0 d3                                      movle r7, #0
004bd5f8  01 70 a0 c3                                      movgt r7, #1
004bd5fc  04 00 a0 e1                                      mov r0, r4
004bd600  13 6b f9 eb                                      bl #0x318254
004bd604  00 00 57 e3                                      cmp r7, #0
004bd608  00 00 00 aa                                      bge #0x4bd610
004bd60c  08 a0 9d e5                                      ldr sl, [sp, #8]
004bd610  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004bd614  0a 00 a0 e1                                      mov r0, sl
004bd618  02 30 9b e7                                      ldr r3, [fp, r2]
004bd61c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
004bd620  00 30 93 e5                                      ldr r3, [r3]
004bd624  03 00 52 e1                                      cmp r2, r3
004bd628  01 00 00 1a                                      bne #0x4bd634
004bd62c  54 d0 8d e2                                      add sp, sp, #0x54
004bd630  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004bd634  35 43 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004bd638  b0 75 4d 00 ac 40 00 00                          .byte 0xb0, 0x75, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00
