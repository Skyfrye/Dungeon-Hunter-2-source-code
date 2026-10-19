; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046ce64, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
0046ce64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046ce68  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
0046ce6c  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0046ce70  54 d0 4d e2                                      sub sp, sp, #0x54
0046ce74  0b b0 8f e0                                      add fp, pc, fp
0046ce78  02 30 9b e7                                      ldr r3, [fp, r2]
0046ce7c  0c 20 8d e5                                      str r2, [sp, #0xc]
0046ce80  08 00 8d e5                                      str r0, [sp, #8]
0046ce84  04 40 90 e5                                      ldr r4, [r0, #4]
0046ce88  00 30 93 e5                                      ldr r3, [r3]
0046ce8c  01 80 a0 e1                                      mov r8, r1
0046ce90  00 00 54 e3                                      cmp r4, #0
0046ce94  4c 30 8d e5                                      str r3, [sp, #0x4c]
0046ce98  40 00 00 0a                                      beq #0x46cfa0
0046ce9c  00 a0 a0 e1                                      mov sl, r0
0046cea0  34 70 8d e2                                      add r7, sp, #0x34
0046cea4  18 90 8d e2                                      add sb, sp, #0x18
0046cea8  00 10 98 e5                                      ldr r1, [r8]
0046ceac  09 20 a0 e1                                      mov r2, sb
0046ceb0  07 00 a0 e1                                      mov r0, r7
0046ceb4  8c 9c fa eb                                      bl #0x3140ec
0046ceb8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0046cebc  48 10 9d e5                                      ldr r1, [sp, #0x48]
0046cec0  20 60 94 e5                                      ldr r6, [r4, #0x20]
0046cec4  44 50 9d e5                                      ldr r5, [sp, #0x44]
0046cec8  03 00 a0 e1                                      mov r0, r3
0046cecc  06 60 63 e0                                      rsb r6, r3, r6
0046ced0  05 50 61 e0                                      rsb r5, r1, r5
0046ced4  06 00 55 e1                                      cmp r5, r6
0046ced8  05 20 a0 b1                                      movlt r2, r5
0046cedc  06 20 a0 a1                                      movge r2, r6
0046cee0  be 85 fa eb                                      bl #0x30e5e0
0046cee4  00 30 50 e2                                      subs r3, r0, #0
0046cee8  04 00 00 1a                                      bne #0x46cf00
0046ceec  05 00 56 e1                                      cmp r6, r5
0046cef0  00 30 e0 b3                                      mvnlt r3, #0
0046cef4  01 00 00 ba                                      blt #0x46cf00
0046cef8  00 30 a0 d3                                      movle r3, #0
0046cefc  01 30 a0 c3                                      movgt r3, #1
0046cf00  07 00 a0 e1                                      mov r0, r7
0046cf04  04 30 8d e5                                      str r3, [sp, #4]
0046cf08  d1 ac fa eb                                      bl #0x318254
0046cf0c  04 30 9d e5                                      ldr r3, [sp, #4]
0046cf10  00 00 53 e3                                      cmp r3, #0
0046cf14  04 a0 a0 a1                                      movge sl, r4
0046cf18  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0046cf1c  08 40 94 a5                                      ldrge r4, [r4, #8]
0046cf20  00 00 54 e3                                      cmp r4, #0
0046cf24  df ff ff 1a                                      bne #0x46cea8
0046cf28  08 30 9d e5                                      ldr r3, [sp, #8]
0046cf2c  03 00 5a e1                                      cmp sl, r3
0046cf30  1b 00 00 0a                                      beq #0x46cfa4
0046cf34  1c 40 8d e2                                      add r4, sp, #0x1c
0046cf38  00 10 98 e5                                      ldr r1, [r8]
0046cf3c  14 20 8d e2                                      add r2, sp, #0x14
0046cf40  04 00 a0 e1                                      mov r0, r4
0046cf44  68 9c fa eb                                      bl #0x3140ec
0046cf48  30 30 9d e5                                      ldr r3, [sp, #0x30]
0046cf4c  24 10 9a e5                                      ldr r1, [sl, #0x24]
0046cf50  20 50 9a e5                                      ldr r5, [sl, #0x20]
0046cf54  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0046cf58  03 00 a0 e1                                      mov r0, r3
0046cf5c  05 50 61 e0                                      rsb r5, r1, r5
0046cf60  06 60 63 e0                                      rsb r6, r3, r6
0046cf64  06 00 55 e1                                      cmp r5, r6
0046cf68  05 20 a0 b1                                      movlt r2, r5
0046cf6c  06 20 a0 a1                                      movge r2, r6
0046cf70  9a 85 fa eb                                      bl #0x30e5e0
0046cf74  00 70 50 e2                                      subs r7, r0, #0
0046cf78  04 00 00 1a                                      bne #0x46cf90
0046cf7c  05 00 56 e1                                      cmp r6, r5
0046cf80  00 70 e0 b3                                      mvnlt r7, #0
0046cf84  01 00 00 ba                                      blt #0x46cf90
0046cf88  00 70 a0 d3                                      movle r7, #0
0046cf8c  01 70 a0 c3                                      movgt r7, #1
0046cf90  04 00 a0 e1                                      mov r0, r4
0046cf94  ae ac fa eb                                      bl #0x318254
0046cf98  00 00 57 e3                                      cmp r7, #0
0046cf9c  00 00 00 aa                                      bge #0x46cfa4
0046cfa0  08 a0 9d e5                                      ldr sl, [sp, #8]
0046cfa4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046cfa8  0a 00 a0 e1                                      mov r0, sl
0046cfac  02 30 9b e7                                      ldr r3, [fp, r2]
0046cfb0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0046cfb4  00 30 93 e5                                      ldr r3, [r3]
0046cfb8  03 00 52 e1                                      cmp r2, r3
0046cfbc  01 00 00 1a                                      bne #0x46cfc8
0046cfc0  54 d0 8d e2                                      add sp, sp, #0x54
0046cfc4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046cfc8  d0 84 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046cfcc  1c 7c 52 00 ac 40 00 00                          .byte 0x1c, 0x7c, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0046d694, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
0046d694  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046d698  dc b0 9f e5                                      ldr fp, [pc, #0xdc]
0046d69c  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0046d6a0  2c d0 4d e2                                      sub sp, sp, #0x2c
0046d6a4  0b b0 8f e0                                      add fp, pc, fp
0046d6a8  02 30 9b e7                                      ldr r3, [fp, r2]
0046d6ac  04 20 8d e5                                      str r2, [sp, #4]
0046d6b0  00 90 a0 e1                                      mov sb, r0
0046d6b4  00 30 93 e5                                      ldr r3, [r3]
0046d6b8  01 80 a0 e1                                      mov r8, r1
0046d6bc  24 30 8d e5                                      str r3, [sp, #0x24]
0046d6c0  04 40 90 e5                                      ldr r4, [r0, #4]
0046d6c4  00 00 54 e3                                      cmp r4, #0
0046d6c8  21 00 00 0a                                      beq #0x46d754
0046d6cc  0c 70 8d e2                                      add r7, sp, #0xc
0046d6d0  08 a0 8d e2                                      add sl, sp, #8
0046d6d4  00 10 98 e5                                      ldr r1, [r8]
0046d6d8  0a 20 a0 e1                                      mov r2, sl
0046d6dc  07 00 a0 e1                                      mov r0, r7
0046d6e0  81 9a fa eb                                      bl #0x3140ec
0046d6e4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0046d6e8  20 10 9d e5                                      ldr r1, [sp, #0x20]
0046d6ec  20 60 94 e5                                      ldr r6, [r4, #0x20]
0046d6f0  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0046d6f4  03 00 a0 e1                                      mov r0, r3
0046d6f8  06 60 63 e0                                      rsb r6, r3, r6
0046d6fc  05 50 61 e0                                      rsb r5, r1, r5
0046d700  06 00 55 e1                                      cmp r5, r6
0046d704  05 20 a0 b1                                      movlt r2, r5
0046d708  06 20 a0 a1                                      movge r2, r6
0046d70c  b3 83 fa eb                                      bl #0x30e5e0
0046d710  00 30 50 e2                                      subs r3, r0, #0
0046d714  04 00 00 1a                                      bne #0x46d72c
0046d718  05 00 56 e1                                      cmp r6, r5
0046d71c  00 30 e0 b3                                      mvnlt r3, #0
0046d720  01 00 00 ba                                      blt #0x46d72c
0046d724  00 30 a0 d3                                      movle r3, #0
0046d728  01 30 a0 c3                                      movgt r3, #1
0046d72c  07 00 a0 e1                                      mov r0, r7
0046d730  00 30 8d e5                                      str r3, [sp]
0046d734  c6 aa fa eb                                      bl #0x318254
0046d738  00 30 9d e5                                      ldr r3, [sp]
0046d73c  00 00 53 e3                                      cmp r3, #0
0046d740  04 90 a0 a1                                      movge sb, r4
0046d744  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0046d748  08 40 94 a5                                      ldrge r4, [r4, #8]
0046d74c  00 00 54 e3                                      cmp r4, #0
0046d750  df ff ff 1a                                      bne #0x46d6d4
0046d754  04 20 9d e5                                      ldr r2, [sp, #4]
0046d758  09 00 a0 e1                                      mov r0, sb
0046d75c  02 30 9b e7                                      ldr r3, [fp, r2]
0046d760  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046d764  00 30 93 e5                                      ldr r3, [r3]
0046d768  03 00 52 e1                                      cmp r2, r3
0046d76c  01 00 00 1a                                      bne #0x46d778
0046d770  2c d0 8d e2                                      add sp, sp, #0x2c
0046d774  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046d778  e4 82 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046d77c  ec 73 52 00 ac 40 00 00                          .byte 0xec, 0x73, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0046d784, declared_size=368, range_size=368, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN15SavegameManager11_GameOptionEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findIA128_cEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::_M_find<char [128]>(char const (&) [128]) const
; decoder-mode: arm
0046d784  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046d788  5c b1 9f e5                                      ldr fp, [pc, #0x15c]
0046d78c  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0046d790  54 d0 4d e2                                      sub sp, sp, #0x54
0046d794  0b b0 8f e0                                      add fp, pc, fp
0046d798  02 30 9b e7                                      ldr r3, [fp, r2]
0046d79c  0c 20 8d e5                                      str r2, [sp, #0xc]
0046d7a0  08 00 8d e5                                      str r0, [sp, #8]
0046d7a4  04 40 90 e5                                      ldr r4, [r0, #4]
0046d7a8  00 30 93 e5                                      ldr r3, [r3]
0046d7ac  01 80 a0 e1                                      mov r8, r1
0046d7b0  00 00 54 e3                                      cmp r4, #0
0046d7b4  4c 30 8d e5                                      str r3, [sp, #0x4c]
0046d7b8  40 00 00 0a                                      beq #0x46d8c0
0046d7bc  00 a0 a0 e1                                      mov sl, r0
0046d7c0  34 70 8d e2                                      add r7, sp, #0x34
0046d7c4  18 90 8d e2                                      add sb, sp, #0x18
0046d7c8  08 10 a0 e1                                      mov r1, r8
0046d7cc  09 20 a0 e1                                      mov r2, sb
0046d7d0  07 00 a0 e1                                      mov r0, r7
0046d7d4  44 9a fa eb                                      bl #0x3140ec
0046d7d8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0046d7dc  48 10 9d e5                                      ldr r1, [sp, #0x48]
0046d7e0  20 60 94 e5                                      ldr r6, [r4, #0x20]
0046d7e4  44 50 9d e5                                      ldr r5, [sp, #0x44]
0046d7e8  03 00 a0 e1                                      mov r0, r3
0046d7ec  06 60 63 e0                                      rsb r6, r3, r6
0046d7f0  05 50 61 e0                                      rsb r5, r1, r5
0046d7f4  06 00 55 e1                                      cmp r5, r6
0046d7f8  05 20 a0 b1                                      movlt r2, r5
0046d7fc  06 20 a0 a1                                      movge r2, r6
0046d800  76 83 fa eb                                      bl #0x30e5e0
0046d804  00 30 50 e2                                      subs r3, r0, #0
0046d808  04 00 00 1a                                      bne #0x46d820
0046d80c  05 00 56 e1                                      cmp r6, r5
0046d810  00 30 e0 b3                                      mvnlt r3, #0
0046d814  01 00 00 ba                                      blt #0x46d820
0046d818  00 30 a0 d3                                      movle r3, #0
0046d81c  01 30 a0 c3                                      movgt r3, #1
0046d820  07 00 a0 e1                                      mov r0, r7
0046d824  04 30 8d e5                                      str r3, [sp, #4]
0046d828  89 aa fa eb                                      bl #0x318254
0046d82c  04 30 9d e5                                      ldr r3, [sp, #4]
0046d830  00 00 53 e3                                      cmp r3, #0
0046d834  04 a0 a0 a1                                      movge sl, r4
0046d838  0c 40 94 b5                                      ldrlt r4, [r4, #0xc]
0046d83c  08 40 94 a5                                      ldrge r4, [r4, #8]
0046d840  00 00 54 e3                                      cmp r4, #0
0046d844  df ff ff 1a                                      bne #0x46d7c8
0046d848  08 30 9d e5                                      ldr r3, [sp, #8]
0046d84c  03 00 5a e1                                      cmp sl, r3
0046d850  1b 00 00 0a                                      beq #0x46d8c4
0046d854  1c 40 8d e2                                      add r4, sp, #0x1c
0046d858  08 10 a0 e1                                      mov r1, r8
0046d85c  14 20 8d e2                                      add r2, sp, #0x14
0046d860  04 00 a0 e1                                      mov r0, r4
0046d864  20 9a fa eb                                      bl #0x3140ec
0046d868  30 30 9d e5                                      ldr r3, [sp, #0x30]
0046d86c  24 10 9a e5                                      ldr r1, [sl, #0x24]
0046d870  20 50 9a e5                                      ldr r5, [sl, #0x20]
0046d874  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
0046d878  03 00 a0 e1                                      mov r0, r3
0046d87c  05 50 61 e0                                      rsb r5, r1, r5
0046d880  06 60 63 e0                                      rsb r6, r3, r6
0046d884  06 00 55 e1                                      cmp r5, r6
0046d888  05 20 a0 b1                                      movlt r2, r5
0046d88c  06 20 a0 a1                                      movge r2, r6
0046d890  52 83 fa eb                                      bl #0x30e5e0
0046d894  00 70 50 e2                                      subs r7, r0, #0
0046d898  04 00 00 1a                                      bne #0x46d8b0
0046d89c  05 00 56 e1                                      cmp r6, r5
0046d8a0  00 70 e0 b3                                      mvnlt r7, #0
0046d8a4  01 00 00 ba                                      blt #0x46d8b0
0046d8a8  00 70 a0 d3                                      movle r7, #0
0046d8ac  01 70 a0 c3                                      movgt r7, #1
0046d8b0  04 00 a0 e1                                      mov r0, r4
0046d8b4  66 aa fa eb                                      bl #0x318254
0046d8b8  00 00 57 e3                                      cmp r7, #0
0046d8bc  00 00 00 aa                                      bge #0x46d8c4
0046d8c0  08 a0 9d e5                                      ldr sl, [sp, #8]
0046d8c4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046d8c8  0a 00 a0 e1                                      mov r0, sl
0046d8cc  02 30 9b e7                                      ldr r3, [fp, r2]
0046d8d0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0046d8d4  00 30 93 e5                                      ldr r3, [r3]
0046d8d8  03 00 52 e1                                      cmp r2, r3
0046d8dc  01 00 00 1a                                      bne #0x46d8e8
0046d8e0  54 d0 8d e2                                      add sp, sp, #0x54
0046d8e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046d8e8  88 82 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046d8ec  fc 72 52 00 ac 40 00 00                          .byte 0xfc, 0x72, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00
