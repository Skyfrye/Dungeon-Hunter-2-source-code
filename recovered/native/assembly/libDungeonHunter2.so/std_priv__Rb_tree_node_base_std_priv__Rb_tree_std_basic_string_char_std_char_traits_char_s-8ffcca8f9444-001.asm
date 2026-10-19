; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00327b0c, declared_size=212, range_size=212, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findISsEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::_M_find<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
00327b0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00327b10  04 40 90 e5                                      ldr r4, [r0, #4]
00327b14  00 a0 a0 e1                                      mov sl, r0
00327b18  00 90 a0 e1                                      mov sb, r0
00327b1c  00 00 54 e3                                      cmp r4, #0
00327b20  29 00 00 0a                                      beq #0x327bcc
00327b24  10 60 91 e5                                      ldr r6, [r1, #0x10]
00327b28  14 70 91 e5                                      ldr r7, [r1, #0x14]
00327b2c  00 80 a0 e1                                      mov r8, r0
00327b30  06 60 67 e0                                      rsb r6, r7, r6
00327b34  05 00 00 ea                                      b #0x327b50
00327b38  06 00 55 e1                                      cmp r5, r6
00327b3c  0f 00 00 ba                                      blt #0x327b80
00327b40  04 80 a0 e1                                      mov r8, r4
00327b44  08 40 94 e5                                      ldr r4, [r4, #8]
00327b48  00 00 54 e3                                      cmp r4, #0
00327b4c  0e 00 00 0a                                      beq #0x327b8c
00327b50  24 30 94 e5                                      ldr r3, [r4, #0x24]
00327b54  20 50 94 e5                                      ldr r5, [r4, #0x20]
00327b58  07 10 a0 e1                                      mov r1, r7
00327b5c  03 00 a0 e1                                      mov r0, r3
00327b60  05 50 63 e0                                      rsb r5, r3, r5
00327b64  05 00 56 e1                                      cmp r6, r5
00327b68  06 20 a0 b1                                      movlt r2, r6
00327b6c  05 20 a0 a1                                      movge r2, r5
00327b70  9a 9a ff eb                                      bl #0x30e5e0
00327b74  00 00 50 e3                                      cmp r0, #0
00327b78  ee ff ff 0a                                      beq #0x327b38
00327b7c  ef ff ff aa                                      bge #0x327b40
00327b80  0c 40 94 e5                                      ldr r4, [r4, #0xc]
00327b84  00 00 54 e3                                      cmp r4, #0
00327b88  f0 ff ff 1a                                      bne #0x327b50
00327b8c  0a 00 58 e1                                      cmp r8, sl
00327b90  0c 00 00 0a                                      beq #0x327bc8
00327b94  24 30 98 e5                                      ldr r3, [r8, #0x24]
00327b98  20 40 98 e5                                      ldr r4, [r8, #0x20]
00327b9c  07 00 a0 e1                                      mov r0, r7
00327ba0  03 10 a0 e1                                      mov r1, r3
00327ba4  04 40 63 e0                                      rsb r4, r3, r4
00327ba8  06 00 54 e1                                      cmp r4, r6
00327bac  04 20 a0 b1                                      movlt r2, r4
00327bb0  06 20 a0 a1                                      movge r2, r6
00327bb4  89 9a ff eb                                      bl #0x30e5e0
00327bb8  00 00 50 e3                                      cmp r0, #0
00327bbc  04 00 00 1a                                      bne #0x327bd4
00327bc0  04 00 56 e1                                      cmp r6, r4
00327bc4  00 00 00 ba                                      blt #0x327bcc
00327bc8  08 90 a0 e1                                      mov sb, r8
00327bcc  09 00 a0 e1                                      mov r0, sb
00327bd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00327bd4  fb ff ff aa                                      bge #0x327bc8
00327bd8  09 00 a0 e1                                      mov r0, sb
00327bdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0032b244, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
0032b244  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032b248  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
0032b24c  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0032b250  54 d0 4d e2                                      sub sp, sp, #0x54
0032b254  0b b0 8f e0                                      add fp, pc, fp
0032b258  02 30 9b e7                                      ldr r3, [fp, r2]
0032b25c  0c 20 8d e5                                      str r2, [sp, #0xc]
0032b260  08 00 8d e5                                      str r0, [sp, #8]
0032b264  04 40 90 e5                                      ldr r4, [r0, #4]
0032b268  00 30 93 e5                                      ldr r3, [r3]
0032b26c  01 80 a0 e1                                      mov r8, r1
0032b270  00 00 54 e3                                      cmp r4, #0
0032b274  4c 30 8d e5                                      str r3, [sp, #0x4c]
0032b278  40 00 00 0a                                      beq #0x32b380
0032b27c  00 a0 a0 e1                                      mov sl, r0
0032b280  34 70 8d e2                                      add r7, sp, #0x34
0032b284  18 90 8d e2                                      add sb, sp, #0x18
0032b288  00 10 98 e5                                      ldr r1, [r8]
0032b28c  09 20 a0 e1                                      mov r2, sb
0032b290  07 00 a0 e1                                      mov r0, r7
0032b294  94 a3 ff eb                                      bl #0x3140ec
0032b298  24 30 94 e5                                      ldr r3, [r4, #0x24]
0032b29c  48 10 9d e5                                      ldr r1, [sp, #0x48]
0032b2a0  20 60 94 e5                                      ldr r6, [r4, #0x20]
0032b2a4  44 50 9d e5                                      ldr r5, [sp, #0x44]
0032b2a8  03 00 a0 e1                                      mov r0, r3
0032b2ac  06 60 63 e0                                      rsb r6, r3, r6
0032b2b0  05 50 61 e0                                      rsb r5, r1, r5
0032b2b4  06 00 55 e1                                      cmp r5, r6
0032b2b8  05 20 a0 b1                                      movlt r2, r5
0032b2bc  06 20 a0 a1                                      movge r2, r6
0032b2c0  c6 8c ff eb                                      bl #0x30e5e0
0032b2c4  00 30 50 e2                                      subs r3, r0, #0
0032b2c8  04 00 00 1a                                      bne #0x32b2e0
0032b2cc  05 00 56 e1                                      cmp r6, r5
0032b2d0  00 30 e0 b3                                      mvnlt r3, #0
0032b2d4  01 00 00 ba                                      blt #0x32b2e0
0032b2d8  00 30 a0 d3                                      movle r3, #0
0032b2dc  01 30 a0 c3                                      movgt r3, #1
0032b2e0  07 00 a0 e1                                      mov r0, r7
0032b2e4  04 30 8d e5                                      str r3, [sp, #4]
0032b2e8  af a1 ff eb                                      bl #0x3139ac
0032b2ec  04 30 9d e5                                      ldr r3, [sp, #4]
0032b2f0  00 00 53 e3                                      cmp r3, #0
0032b2f4  04 a0 a0 a1                                      movge sl, r4
0032b2f8  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0032b2fc  08 40 94 a5                                      ldrge r4, [r4, #8]
0032b300  00 00 54 e3                                      cmp r4, #0
0032b304  df ff ff 1a                                      bne #0x32b288
0032b308  08 30 9d e5                                      ldr r3, [sp, #8]
0032b30c  03 00 5a e1                                      cmp sl, r3
0032b310  1b 00 00 0a                                      beq #0x32b384
0032b314  1c 40 8d e2                                      add r4, sp, #0x1c
0032b318  00 10 98 e5                                      ldr r1, [r8]
0032b31c  14 20 8d e2                                      add r2, sp, #0x14
0032b320  04 00 a0 e1                                      mov r0, r4
0032b324  70 a3 ff eb                                      bl #0x3140ec
0032b328  30 30 9d e5                                      ldr r3, [sp, #0x30]
0032b32c  24 10 9a e5                                      ldr r1, [sl, #0x24]
0032b330  20 50 9a e5                                      ldr r5, [sl, #0x20]
0032b334  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0032b338  03 00 a0 e1                                      mov r0, r3
0032b33c  05 50 61 e0                                      rsb r5, r1, r5
0032b340  06 60 63 e0                                      rsb r6, r3, r6
0032b344  06 00 55 e1                                      cmp r5, r6
0032b348  05 20 a0 b1                                      movlt r2, r5
0032b34c  06 20 a0 a1                                      movge r2, r6
0032b350  a2 8c ff eb                                      bl #0x30e5e0
0032b354  00 70 50 e2                                      subs r7, r0, #0
0032b358  04 00 00 1a                                      bne #0x32b370
0032b35c  05 00 56 e1                                      cmp r6, r5
0032b360  00 70 e0 b3                                      mvnlt r7, #0
0032b364  01 00 00 ba                                      blt #0x32b370
0032b368  00 70 a0 d3                                      movle r7, #0
0032b36c  01 70 a0 c3                                      movgt r7, #1
0032b370  04 00 a0 e1                                      mov r0, r4
0032b374  8c a1 ff eb                                      bl #0x3139ac
0032b378  00 00 57 e3                                      cmp r7, #0
0032b37c  00 00 00 aa                                      bge #0x32b384
0032b380  08 a0 9d e5                                      ldr sl, [sp, #8]
0032b384  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0032b388  0a 00 a0 e1                                      mov r0, sl
0032b38c  02 30 9b e7                                      ldr r3, [fp, r2]
0032b390  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0032b394  00 30 93 e5                                      ldr r3, [r3]
0032b398  03 00 52 e1                                      cmp r2, r3
0032b39c  01 00 00 1a                                      bne #0x32b3a8
0032b3a0  54 d0 8d e2                                      add sp, sp, #0x54
0032b3a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032b3a8  d8 8b ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032b3ac  3c 98 66 00 ac 40 00 00                          .byte 0x3c, 0x98, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0032b828, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN6glitch8debugger10CTweakable8SMappingEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
0032b828  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032b82c  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
0032b830  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0032b834  2c d0 4d e2                                      sub sp, sp, #0x2c
0032b838  0b b0 8f e0                                      add fp, pc, fp
0032b83c  02 30 9b e7                                      ldr r3, [fp, r2]
0032b840  04 20 8d e5                                      str r2, [sp, #4]
0032b844  00 90 a0 e1                                      mov sb, r0
0032b848  00 30 93 e5                                      ldr r3, [r3]
0032b84c  01 80 a0 e1                                      mov r8, r1
0032b850  24 30 8d e5                                      str r3, [sp, #0x24]
0032b854  04 40 90 e5                                      ldr r4, [r0, #4]
0032b858  00 00 54 e3                                      cmp r4, #0
0032b85c  21 00 00 0a                                      beq #0x32b8e8
0032b860  0c 70 8d e2                                      add r7, sp, #0xc
0032b864  08 a0 8d e2                                      add sl, sp, #8
0032b868  00 10 98 e5                                      ldr r1, [r8]
0032b86c  0a 20 a0 e1                                      mov r2, sl
0032b870  07 00 a0 e1                                      mov r0, r7
0032b874  1c a2 ff eb                                      bl #0x3140ec
0032b878  24 30 94 e5                                      ldr r3, [r4, #0x24]
0032b87c  20 10 9d e5                                      ldr r1, [sp, #0x20]
0032b880  20 60 94 e5                                      ldr r6, [r4, #0x20]
0032b884  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0032b888  03 00 a0 e1                                      mov r0, r3
0032b88c  06 60 63 e0                                      rsb r6, r3, r6
0032b890  05 50 61 e0                                      rsb r5, r1, r5
0032b894  06 00 55 e1                                      cmp r5, r6
0032b898  05 20 a0 b1                                      movlt r2, r5
0032b89c  06 20 a0 a1                                      movge r2, r6
0032b8a0  4e 8b ff eb                                      bl #0x30e5e0
0032b8a4  00 30 50 e2                                      subs r3, r0, #0
0032b8a8  04 00 00 1a                                      bne #0x32b8c0
0032b8ac  05 00 56 e1                                      cmp r6, r5
0032b8b0  00 30 e0 b3                                      mvnlt r3, #0
0032b8b4  01 00 00 ba                                      blt #0x32b8c0
0032b8b8  00 30 a0 d3                                      movle r3, #0
0032b8bc  01 30 a0 c3                                      movgt r3, #1
0032b8c0  07 00 a0 e1                                      mov r0, r7
0032b8c4  00 30 8d e5                                      str r3, [sp]
0032b8c8  37 a0 ff eb                                      bl #0x3139ac
0032b8cc  00 30 9d e5                                      ldr r3, [sp]
0032b8d0  00 00 53 e3                                      cmp r3, #0
0032b8d4  04 90 a0 a1                                      movge sb, r4
0032b8d8  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0032b8dc  08 40 94 a5                                      ldrge r4, [r4, #8]
0032b8e0  00 00 54 e3                                      cmp r4, #0
0032b8e4  df ff ff 1a                                      bne #0x32b868
0032b8e8  04 20 9d e5                                      ldr r2, [sp, #4]
0032b8ec  09 00 a0 e1                                      mov r0, sb
0032b8f0  02 30 9b e7                                      ldr r3, [fp, r2]
0032b8f4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0032b8f8  00 30 93 e5                                      ldr r3, [r3]
0032b8fc  03 00 52 e1                                      cmp r2, r3
0032b900  01 00 00 1a                                      bne #0x32b90c
0032b904  2c d0 8d e2                                      add sp, sp, #0x2c
0032b908  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032b90c  7f 8a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032b910  58 92 66 00 ac 40 00 00                          .byte 0x58, 0x92, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00
