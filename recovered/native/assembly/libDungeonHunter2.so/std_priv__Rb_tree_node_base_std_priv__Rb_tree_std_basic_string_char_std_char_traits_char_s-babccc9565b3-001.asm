; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00424a04, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFbPKcS6_PvEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE14_M_lower_boundIS6_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
00424a04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00424a08  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
00424a0c  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
00424a10  2c d0 4d e2                                      sub sp, sp, #0x2c
00424a14  0b b0 8f e0                                      add fp, pc, fp
00424a18  02 30 9b e7                                      ldr r3, [fp, r2]
00424a1c  04 20 8d e5                                      str r2, [sp, #4]
00424a20  00 90 a0 e1                                      mov sb, r0
00424a24  00 30 93 e5                                      ldr r3, [r3]
00424a28  01 80 a0 e1                                      mov r8, r1
00424a2c  24 30 8d e5                                      str r3, [sp, #0x24]
00424a30  04 40 90 e5                                      ldr r4, [r0, #4]
00424a34  00 00 54 e3                                      cmp r4, #0
00424a38  21 00 00 0a                                      beq #0x424ac4
00424a3c  0c 70 8d e2                                      add r7, sp, #0xc
00424a40  08 a0 8d e2                                      add sl, sp, #8
00424a44  00 10 98 e5                                      ldr r1, [r8]
00424a48  0a 20 a0 e1                                      mov r2, sl
00424a4c  07 00 a0 e1                                      mov r0, r7
00424a50  a5 bd fb eb                                      bl #0x3140ec
00424a54  24 30 94 e5                                      ldr r3, [r4, #0x24]
00424a58  20 10 9d e5                                      ldr r1, [sp, #0x20]
00424a5c  20 60 94 e5                                      ldr r6, [r4, #0x20]
00424a60  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00424a64  03 00 a0 e1                                      mov r0, r3
00424a68  06 60 63 e0                                      rsb r6, r3, r6
00424a6c  05 50 61 e0                                      rsb r5, r1, r5
00424a70  06 00 55 e1                                      cmp r5, r6
00424a74  05 20 a0 b1                                      movlt r2, r5
00424a78  06 20 a0 a1                                      movge r2, r6
00424a7c  d7 a6 fb eb                                      bl #0x30e5e0
00424a80  00 30 50 e2                                      subs r3, r0, #0
00424a84  04 00 00 1a                                      bne #0x424a9c
00424a88  05 00 56 e1                                      cmp r6, r5
00424a8c  00 30 e0 b3                                      mvnlt r3, #0
00424a90  01 00 00 ba                                      blt #0x424a9c
00424a94  00 30 a0 d3                                      movle r3, #0
00424a98  01 30 a0 c3                                      movgt r3, #1
00424a9c  07 00 a0 e1                                      mov r0, r7
00424aa0  00 30 8d e5                                      str r3, [sp]
00424aa4  ea cd fb eb                                      bl #0x318254
00424aa8  00 30 9d e5                                      ldr r3, [sp]
00424aac  00 00 53 e3                                      cmp r3, #0
00424ab0  04 90 a0 a1                                      movge sb, r4
00424ab4  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
00424ab8  08 40 94 a5                                      ldrge r4, [r4, #8]
00424abc  00 00 54 e3                                      cmp r4, #0
00424ac0  df ff ff 1a                                      bne #0x424a44
00424ac4  04 20 9d e5                                      ldr r2, [sp, #4]
00424ac8  09 00 a0 e1                                      mov r0, sb
00424acc  02 30 9b e7                                      ldr r3, [fp, r2]
00424ad0  24 20 9d e5                                      ldr r2, [sp, #0x24]
00424ad4  00 30 93 e5                                      ldr r3, [r3]
00424ad8  03 00 52 e1                                      cmp r2, r3
00424adc  01 00 00 1a                                      bne #0x424ae8
00424ae0  2c d0 8d e2                                      add sp, sp, #0x2c
00424ae4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00424ae8  08 a6 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00424aec  7c 00 57 00 ac 40 00 00                          .byte 0x7c, 0x00, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00424d60, declared_size=400, range_size=400, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsPFbPKcS6_PvEENS_10_Select1stISA_EENS_11_MapTraitsTISA_EESaISA_EE7_M_findIS6_EEPNS_18_Rb_tree_node_baseERKT_.clone.21
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, bool (*)(char const*, char const*, void*)> > >::_M_find<char const*>(char const* const&) const [clone .clone.21]
; decoder-mode: arm
00424d60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00424d64  78 b1 9f e5                                      ldr fp, [pc, #0x178]
00424d68  78 21 9f e5                                      ldr r2, [pc, #0x178]
00424d6c  78 31 9f e5                                      ldr r3, [pc, #0x178]
00424d70  0b b0 8f e0                                      add fp, pc, fp
00424d74  54 d0 4d e2                                      sub sp, sp, #0x54
00424d78  02 80 9b e7                                      ldr r8, [fp, r2]
00424d7c  0c 30 8d e5                                      str r3, [sp, #0xc]
00424d80  03 30 9b e7                                      ldr r3, [fp, r3]
00424d84  04 40 98 e5                                      ldr r4, [r8, #4]
00424d88  00 a0 a0 e1                                      mov sl, r0
00424d8c  00 30 93 e5                                      ldr r3, [r3]
00424d90  00 00 54 e3                                      cmp r4, #0
00424d94  08 20 8d e5                                      str r2, [sp, #8]
00424d98  4c 30 8d e5                                      str r3, [sp, #0x4c]
00424d9c  08 00 a0 01                                      moveq r0, r8
00424da0  46 00 00 0a                                      beq #0x424ec0
00424da4  1c 70 8d e2                                      add r7, sp, #0x1c
00424da8  14 90 8d e2                                      add sb, sp, #0x14
00424dac  01 00 00 ea                                      b #0x424db8
00424db0  04 80 a0 e1                                      mov r8, r4
00424db4  03 40 a0 e1                                      mov r4, r3
00424db8  00 10 9a e5                                      ldr r1, [sl]
00424dbc  09 20 a0 e1                                      mov r2, sb
00424dc0  07 00 a0 e1                                      mov r0, r7
00424dc4  c8 bc fb eb                                      bl #0x3140ec
00424dc8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00424dcc  30 10 9d e5                                      ldr r1, [sp, #0x30]
00424dd0  20 60 94 e5                                      ldr r6, [r4, #0x20]
00424dd4  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
00424dd8  03 00 a0 e1                                      mov r0, r3
00424ddc  06 60 63 e0                                      rsb r6, r3, r6
00424de0  05 50 61 e0                                      rsb r5, r1, r5
00424de4  06 00 55 e1                                      cmp r5, r6
00424de8  05 20 a0 b1                                      movlt r2, r5
00424dec  06 20 a0 a1                                      movge r2, r6
00424df0  fa a5 fb eb                                      bl #0x30e5e0
00424df4  00 30 50 e2                                      subs r3, r0, #0
00424df8  04 00 00 1a                                      bne #0x424e10
00424dfc  05 00 56 e1                                      cmp r6, r5
00424e00  00 30 e0 b3                                      mvnlt r3, #0
00424e04  01 00 00 ba                                      blt #0x424e10
00424e08  00 30 a0 d3                                      movle r3, #0
00424e0c  01 30 a0 c3                                      movgt r3, #1
00424e10  07 00 a0 e1                                      mov r0, r7
00424e14  04 30 8d e5                                      str r3, [sp, #4]
00424e18  0d cd fb eb                                      bl #0x318254
00424e1c  04 30 9d e5                                      ldr r3, [sp, #4]
00424e20  00 00 53 e3                                      cmp r3, #0
00424e24  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00424e28  08 30 94 a5                                      ldrge r3, [r4, #8]
00424e2c  08 40 a0 b1                                      movlt r4, r8
00424e30  00 00 53 e3                                      cmp r3, #0
00424e34  dd ff ff 1a                                      bne #0x424db0
00424e38  08 20 9d e5                                      ldr r2, [sp, #8]
00424e3c  04 00 a0 e1                                      mov r0, r4
00424e40  02 30 9b e7                                      ldr r3, [fp, r2]
00424e44  03 00 54 e1                                      cmp r4, r3
00424e48  1c 00 00 0a                                      beq #0x424ec0
00424e4c  34 50 8d e2                                      add r5, sp, #0x34
00424e50  00 10 9a e5                                      ldr r1, [sl]
00424e54  18 20 8d e2                                      add r2, sp, #0x18
00424e58  05 00 a0 e1                                      mov r0, r5
00424e5c  a2 bc fb eb                                      bl #0x3140ec
00424e60  48 30 9d e5                                      ldr r3, [sp, #0x48]
00424e64  24 10 94 e5                                      ldr r1, [r4, #0x24]
00424e68  20 60 94 e5                                      ldr r6, [r4, #0x20]
00424e6c  44 70 9d e5                                      ldr r7, [sp, #0x44]
00424e70  03 00 a0 e1                                      mov r0, r3
00424e74  06 60 61 e0                                      rsb r6, r1, r6
00424e78  07 70 63 e0                                      rsb r7, r3, r7
00424e7c  07 00 56 e1                                      cmp r6, r7
00424e80  06 20 a0 b1                                      movlt r2, r6
00424e84  07 20 a0 a1                                      movge r2, r7
00424e88  d4 a5 fb eb                                      bl #0x30e5e0
00424e8c  00 80 50 e2                                      subs r8, r0, #0
00424e90  04 00 00 1a                                      bne #0x424ea8
00424e94  06 00 57 e1                                      cmp r7, r6
00424e98  00 80 e0 b3                                      mvnlt r8, #0
00424e9c  01 00 00 ba                                      blt #0x424ea8
00424ea0  00 80 a0 d3                                      movle r8, #0
00424ea4  01 80 a0 c3                                      movgt r8, #1
00424ea8  05 00 a0 e1                                      mov r0, r5
00424eac  e8 cc fb eb                                      bl #0x318254
00424eb0  00 00 58 e3                                      cmp r8, #0
00424eb4  08 30 9d b5                                      ldrlt r3, [sp, #8]
00424eb8  04 00 a0 a1                                      movge r0, r4
00424ebc  03 00 9b b7                                      ldrlt r0, [fp, r3]
00424ec0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00424ec4  02 30 9b e7                                      ldr r3, [fp, r2]
00424ec8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00424ecc  00 30 93 e5                                      ldr r3, [r3]
00424ed0  03 00 52 e1                                      cmp r2, r3
00424ed4  01 00 00 1a                                      bne #0x424ee0
00424ed8  54 d0 8d e2                                      add sp, sp, #0x54
00424edc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00424ee0  0a a5 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00424ee4  20 fd 56 00 00 0f 00 00 ac 40 00 00              .byte 0x20, 0xfd, 0x56, 0x00, 0x00, 0x0f, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00
