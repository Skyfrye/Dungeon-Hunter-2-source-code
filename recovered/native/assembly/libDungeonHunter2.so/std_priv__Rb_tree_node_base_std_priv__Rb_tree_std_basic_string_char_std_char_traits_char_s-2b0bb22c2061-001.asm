; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d9358, declared_size=444, range_size=444, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12CharAIScript6_StateEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
003d9358  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d935c  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
003d9360  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
003d9364  54 d0 4d e2                                      sub sp, sp, #0x54
003d9368  02 20 8f e0                                      add r2, pc, r2
003d936c  0c 30 8d e5                                      str r3, [sp, #0xc]
003d9370  03 30 92 e7                                      ldr r3, [r2, r3]
003d9374  04 20 8d e5                                      str r2, [sp, #4]
003d9378  08 00 8d e5                                      str r0, [sp, #8]
003d937c  04 50 90 e5                                      ldr r5, [r0, #4]
003d9380  00 30 93 e5                                      ldr r3, [r3]
003d9384  01 90 a0 e1                                      mov sb, r1
003d9388  00 00 55 e3                                      cmp r5, #0
003d938c  4c 30 8d e5                                      str r3, [sp, #0x4c]
003d9390  51 00 00 0a                                      beq #0x3d94dc
003d9394  00 a0 a0 e1                                      mov sl, r0
003d9398  18 00 8d e2                                      add r0, sp, #0x18
003d939c  34 80 8d e2                                      add r8, sp, #0x34
003d93a0  00 00 8d e5                                      str r0, [sp]
003d93a4  07 00 00 ea                                      b #0x3d93c8
003d93a8  04 00 a0 e1                                      mov r0, r4
003d93ac  d3 be 0c eb                                      bl #0x708f00
003d93b0  00 00 5b e3                                      cmp fp, #0
003d93b4  05 a0 a0 a1                                      movge sl, r5
003d93b8  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
003d93bc  08 50 95 a5                                      ldrge r5, [r5, #8]
003d93c0  00 00 55 e3                                      cmp r5, #0
003d93c4  26 00 00 0a                                      beq #0x3d9464
003d93c8  00 10 99 e5                                      ldr r1, [sb]
003d93cc  00 20 9d e5                                      ldr r2, [sp]
003d93d0  08 00 a0 e1                                      mov r0, r8
003d93d4  44 eb fc eb                                      bl #0x3140ec
003d93d8  24 30 95 e5                                      ldr r3, [r5, #0x24]
003d93dc  48 40 9d e5                                      ldr r4, [sp, #0x48]
003d93e0  20 70 95 e5                                      ldr r7, [r5, #0x20]
003d93e4  44 60 9d e5                                      ldr r6, [sp, #0x44]
003d93e8  03 00 a0 e1                                      mov r0, r3
003d93ec  07 70 63 e0                                      rsb r7, r3, r7
003d93f0  06 60 64 e0                                      rsb r6, r4, r6
003d93f4  07 00 56 e1                                      cmp r6, r7
003d93f8  06 20 a0 b1                                      movlt r2, r6
003d93fc  07 20 a0 a1                                      movge r2, r7
003d9400  04 10 a0 e1                                      mov r1, r4
003d9404  75 d4 fc eb                                      bl #0x30e5e0
003d9408  00 b0 50 e2                                      subs fp, r0, #0
003d940c  04 00 00 1a                                      bne #0x3d9424
003d9410  06 00 57 e1                                      cmp r7, r6
003d9414  00 b0 e0 b3                                      mvnlt fp, #0
003d9418  01 00 00 ba                                      blt #0x3d9424
003d941c  00 b0 a0 d3                                      movle fp, #0
003d9420  01 b0 a0 c3                                      movgt fp, #1
003d9424  08 00 54 e1                                      cmp r4, r8
003d9428  e0 ff ff 0a                                      beq #0x3d93b0
003d942c  00 00 54 e3                                      cmp r4, #0
003d9430  de ff ff 0a                                      beq #0x3d93b0
003d9434  34 10 9d e5                                      ldr r1, [sp, #0x34]
003d9438  01 10 64 e0                                      rsb r1, r4, r1
003d943c  80 00 51 e3                                      cmp r1, #0x80
003d9440  d8 ff ff 9a                                      bls #0x3d93a8
003d9444  04 00 a0 e1                                      mov r0, r4
003d9448  fc db fc eb                                      bl #0x310440
003d944c  00 00 5b e3                                      cmp fp, #0
003d9450  05 a0 a0 a1                                      movge sl, r5
003d9454  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
003d9458  08 50 95 a5                                      ldrge r5, [r5, #8]
003d945c  00 00 55 e3                                      cmp r5, #0
003d9460  d8 ff ff 1a                                      bne #0x3d93c8
003d9464  08 10 9d e5                                      ldr r1, [sp, #8]
003d9468  01 00 5a e1                                      cmp sl, r1
003d946c  1b 00 00 0a                                      beq #0x3d94e0
003d9470  1c 40 8d e2                                      add r4, sp, #0x1c
003d9474  00 10 99 e5                                      ldr r1, [sb]
003d9478  14 20 8d e2                                      add r2, sp, #0x14
003d947c  04 00 a0 e1                                      mov r0, r4
003d9480  19 eb fc eb                                      bl #0x3140ec
003d9484  30 30 9d e5                                      ldr r3, [sp, #0x30]
003d9488  24 10 9a e5                                      ldr r1, [sl, #0x24]
003d948c  20 50 9a e5                                      ldr r5, [sl, #0x20]
003d9490  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
003d9494  03 00 a0 e1                                      mov r0, r3
003d9498  05 50 61 e0                                      rsb r5, r1, r5
003d949c  06 60 63 e0                                      rsb r6, r3, r6
003d94a0  06 00 55 e1                                      cmp r5, r6
003d94a4  05 20 a0 b1                                      movlt r2, r5
003d94a8  06 20 a0 a1                                      movge r2, r6
003d94ac  4b d4 fc eb                                      bl #0x30e5e0
003d94b0  00 70 50 e2                                      subs r7, r0, #0
003d94b4  04 00 00 1a                                      bne #0x3d94cc
003d94b8  05 00 56 e1                                      cmp r6, r5
003d94bc  00 70 e0 b3                                      mvnlt r7, #0
003d94c0  01 00 00 ba                                      blt #0x3d94cc
003d94c4  00 70 a0 d3                                      movle r7, #0
003d94c8  01 70 a0 c3                                      movgt r7, #1
003d94cc  04 00 a0 e1                                      mov r0, r4
003d94d0  5f fb fc eb                                      bl #0x318254
003d94d4  00 00 57 e3                                      cmp r7, #0
003d94d8  00 00 00 aa                                      bge #0x3d94e0
003d94dc  08 a0 9d e5                                      ldr sl, [sp, #8]
003d94e0  04 00 9d e5                                      ldr r0, [sp, #4]
003d94e4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003d94e8  02 30 90 e7                                      ldr r3, [r0, r2]
003d94ec  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003d94f0  0a 00 a0 e1                                      mov r0, sl
003d94f4  00 30 93 e5                                      ldr r3, [r3]
003d94f8  03 00 52 e1                                      cmp r2, r3
003d94fc  01 00 00 1a                                      bne #0x3d9508
003d9500  54 d0 8d e2                                      add sp, sp, #0x54
003d9504  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d9508  80 d3 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d950c  28 b7 5b 00 ac 40 00 00                          .byte 0x28, 0xb7, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003d9514, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSsN12CharAIScript6_StateEENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State>, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
003d9514  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d9518  20 21 9f e5                                      ldr r2, [pc, #0x120]
003d951c  20 31 9f e5                                      ldr r3, [pc, #0x120]
003d9520  34 d0 4d e2                                      sub sp, sp, #0x34
003d9524  02 20 8f e0                                      add r2, pc, r2
003d9528  0c 30 8d e5                                      str r3, [sp, #0xc]
003d952c  03 30 92 e7                                      ldr r3, [r2, r3]
003d9530  05 00 8d e9                                      stmib sp, {r0, r2}
003d9534  00 30 93 e5                                      ldr r3, [r3]
003d9538  01 a0 a0 e1                                      mov sl, r1
003d953c  2c 30 8d e5                                      str r3, [sp, #0x2c]
003d9540  04 50 90 e5                                      ldr r5, [r0, #4]
003d9544  00 00 55 e3                                      cmp r5, #0
003d9548  31 00 00 0a                                      beq #0x3d9614
003d954c  14 80 8d e2                                      add r8, sp, #0x14
003d9550  10 90 8d e2                                      add sb, sp, #0x10
003d9554  07 00 00 ea                                      b #0x3d9578
003d9558  04 00 a0 e1                                      mov r0, r4
003d955c  67 be 0c eb                                      bl #0x708f00
003d9560  00 00 5b e3                                      cmp fp, #0
003d9564  04 50 8d a5                                      strge r5, [sp, #4]
003d9568  08 50 95 a5                                      ldrge r5, [r5, #8]
003d956c  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
003d9570  00 00 55 e3                                      cmp r5, #0
003d9574  26 00 00 0a                                      beq #0x3d9614
003d9578  00 10 9a e5                                      ldr r1, [sl]
003d957c  09 20 a0 e1                                      mov r2, sb
003d9580  08 00 a0 e1                                      mov r0, r8
003d9584  d8 ea fc eb                                      bl #0x3140ec
003d9588  24 30 95 e5                                      ldr r3, [r5, #0x24]
003d958c  28 40 9d e5                                      ldr r4, [sp, #0x28]
003d9590  20 70 95 e5                                      ldr r7, [r5, #0x20]
003d9594  24 60 9d e5                                      ldr r6, [sp, #0x24]
003d9598  03 00 a0 e1                                      mov r0, r3
003d959c  07 70 63 e0                                      rsb r7, r3, r7
003d95a0  06 60 64 e0                                      rsb r6, r4, r6
003d95a4  07 00 56 e1                                      cmp r6, r7
003d95a8  06 20 a0 b1                                      movlt r2, r6
003d95ac  07 20 a0 a1                                      movge r2, r7
003d95b0  04 10 a0 e1                                      mov r1, r4
003d95b4  09 d4 fc eb                                      bl #0x30e5e0
003d95b8  00 b0 50 e2                                      subs fp, r0, #0
003d95bc  04 00 00 1a                                      bne #0x3d95d4
003d95c0  06 00 57 e1                                      cmp r7, r6
003d95c4  00 b0 e0 b3                                      mvnlt fp, #0
003d95c8  01 00 00 ba                                      blt #0x3d95d4
003d95cc  00 b0 a0 d3                                      movle fp, #0
003d95d0  01 b0 a0 c3                                      movgt fp, #1
003d95d4  08 00 54 e1                                      cmp r4, r8
003d95d8  e0 ff ff 0a                                      beq #0x3d9560
003d95dc  00 00 54 e3                                      cmp r4, #0
003d95e0  de ff ff 0a                                      beq #0x3d9560
003d95e4  14 10 9d e5                                      ldr r1, [sp, #0x14]
003d95e8  01 10 64 e0                                      rsb r1, r4, r1
003d95ec  80 00 51 e3                                      cmp r1, #0x80
003d95f0  d8 ff ff 9a                                      bls #0x3d9558
003d95f4  04 00 a0 e1                                      mov r0, r4
003d95f8  90 db fc eb                                      bl #0x310440
003d95fc  00 00 5b e3                                      cmp fp, #0
003d9600  04 50 8d a5                                      strge r5, [sp, #4]
003d9604  08 50 95 a5                                      ldrge r5, [r5, #8]
003d9608  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
003d960c  00 00 55 e3                                      cmp r5, #0
003d9610  d8 ff ff 1a                                      bne #0x3d9578
003d9614  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003d9618  08 10 9d e5                                      ldr r1, [sp, #8]
003d961c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003d9620  00 30 91 e7                                      ldr r3, [r1, r0]
003d9624  04 00 9d e5                                      ldr r0, [sp, #4]
003d9628  00 30 93 e5                                      ldr r3, [r3]
003d962c  03 00 52 e1                                      cmp r2, r3
003d9630  01 00 00 1a                                      bne #0x3d963c
003d9634  34 d0 8d e2                                      add sp, sp, #0x34
003d9638  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d963c  33 d3 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d9640  6c b5 5b 00 ac 40 00 00                          .byte 0x6c, 0xb5, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00
