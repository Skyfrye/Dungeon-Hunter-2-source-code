; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00497890, declared_size=308, range_size=308, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSs9VectorSetIP7SWFAnimEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE14_M_lower_boundIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::_M_lower_bound<char const*>(char const* const&) const
; decoder-mode: arm
00497890  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00497894  20 21 9f e5                                      ldr r2, [pc, #0x120]
00497898  20 31 9f e5                                      ldr r3, [pc, #0x120]
0049789c  34 d0 4d e2                                      sub sp, sp, #0x34
004978a0  02 20 8f e0                                      add r2, pc, r2
004978a4  0c 30 8d e5                                      str r3, [sp, #0xc]
004978a8  03 30 92 e7                                      ldr r3, [r2, r3]
004978ac  05 00 8d e9                                      stmib sp, {r0, r2}
004978b0  00 30 93 e5                                      ldr r3, [r3]
004978b4  01 a0 a0 e1                                      mov sl, r1
004978b8  2c 30 8d e5                                      str r3, [sp, #0x2c]
004978bc  04 50 90 e5                                      ldr r5, [r0, #4]
004978c0  00 00 55 e3                                      cmp r5, #0
004978c4  31 00 00 0a                                      beq #0x497990
004978c8  14 80 8d e2                                      add r8, sp, #0x14
004978cc  10 90 8d e2                                      add sb, sp, #0x10
004978d0  07 00 00 ea                                      b #0x4978f4
004978d4  04 00 a0 e1                                      mov r0, r4
004978d8  88 c5 09 eb                                      bl #0x708f00
004978dc  00 00 5b e3                                      cmp fp, #0
004978e0  04 50 8d a5                                      strge r5, [sp, #4]
004978e4  08 50 95 a5                                      ldrge r5, [r5, #8]
004978e8  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
004978ec  00 00 55 e3                                      cmp r5, #0
004978f0  26 00 00 0a                                      beq #0x497990
004978f4  00 10 9a e5                                      ldr r1, [sl]
004978f8  09 20 a0 e1                                      mov r2, sb
004978fc  08 00 a0 e1                                      mov r0, r8
00497900  f9 f1 f9 eb                                      bl #0x3140ec
00497904  24 30 95 e5                                      ldr r3, [r5, #0x24]
00497908  28 40 9d e5                                      ldr r4, [sp, #0x28]
0049790c  20 70 95 e5                                      ldr r7, [r5, #0x20]
00497910  24 60 9d e5                                      ldr r6, [sp, #0x24]
00497914  03 00 a0 e1                                      mov r0, r3
00497918  07 70 63 e0                                      rsb r7, r3, r7
0049791c  06 60 64 e0                                      rsb r6, r4, r6
00497920  07 00 56 e1                                      cmp r6, r7
00497924  06 20 a0 b1                                      movlt r2, r6
00497928  07 20 a0 a1                                      movge r2, r7
0049792c  04 10 a0 e1                                      mov r1, r4
00497930  2a db f9 eb                                      bl #0x30e5e0
00497934  00 b0 50 e2                                      subs fp, r0, #0
00497938  04 00 00 1a                                      bne #0x497950
0049793c  06 00 57 e1                                      cmp r7, r6
00497940  00 b0 e0 b3                                      mvnlt fp, #0
00497944  01 00 00 ba                                      blt #0x497950
00497948  00 b0 a0 d3                                      movle fp, #0
0049794c  01 b0 a0 c3                                      movgt fp, #1
00497950  08 00 54 e1                                      cmp r4, r8
00497954  e0 ff ff 0a                                      beq #0x4978dc
00497958  00 00 54 e3                                      cmp r4, #0
0049795c  de ff ff 0a                                      beq #0x4978dc
00497960  14 10 9d e5                                      ldr r1, [sp, #0x14]
00497964  01 10 64 e0                                      rsb r1, r4, r1
00497968  80 00 51 e3                                      cmp r1, #0x80
0049796c  d8 ff ff 9a                                      bls #0x4978d4
00497970  04 00 a0 e1                                      mov r0, r4
00497974  b1 e2 f9 eb                                      bl #0x310440
00497978  00 00 5b e3                                      cmp fp, #0
0049797c  04 50 8d a5                                      strge r5, [sp, #4]
00497980  08 50 95 a5                                      ldrge r5, [r5, #8]
00497984  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00497988  00 00 55 e3                                      cmp r5, #0
0049798c  d8 ff ff 1a                                      bne #0x4978f4
00497990  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00497994  08 10 9d e5                                      ldr r1, [sp, #8]
00497998  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0049799c  00 30 91 e7                                      ldr r3, [r1, r0]
004979a0  04 00 9d e5                                      ldr r0, [sp, #4]
004979a4  00 30 93 e5                                      ldr r3, [r3]
004979a8  03 00 52 e1                                      cmp r2, r3
004979ac  01 00 00 1a                                      bne #0x4979b8
004979b0  34 d0 8d e2                                      add sp, sp, #0x34
004979b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004979b8  54 da f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004979bc  f0 d1 4f 00 ac 40 00 00                          .byte 0xf0, 0xd1, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004979c4, declared_size=500, range_size=500, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNKSt4priv8_Rb_treeISsSt4lessISsESt4pairIKSs9VectorSetIP7SWFAnimEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIPKcEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::priv::_MapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
004979c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004979c8  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
004979cc  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
004979d0  54 d0 4d e2                                      sub sp, sp, #0x54
004979d4  02 20 8f e0                                      add r2, pc, r2
004979d8  0c 30 8d e5                                      str r3, [sp, #0xc]
004979dc  03 30 92 e7                                      ldr r3, [r2, r3]
004979e0  04 20 8d e5                                      str r2, [sp, #4]
004979e4  08 00 8d e5                                      str r0, [sp, #8]
004979e8  04 50 90 e5                                      ldr r5, [r0, #4]
004979ec  00 30 93 e5                                      ldr r3, [r3]
004979f0  01 90 a0 e1                                      mov sb, r1
004979f4  00 00 55 e3                                      cmp r5, #0
004979f8  4c 30 8d e5                                      str r3, [sp, #0x4c]
004979fc  5a 00 00 0a                                      beq #0x497b6c
00497a00  00 a0 a0 e1                                      mov sl, r0
00497a04  18 00 8d e2                                      add r0, sp, #0x18
00497a08  34 80 8d e2                                      add r8, sp, #0x34
00497a0c  00 00 8d e5                                      str r0, [sp]
00497a10  07 00 00 ea                                      b #0x497a34
00497a14  04 00 a0 e1                                      mov r0, r4
00497a18  38 c5 09 eb                                      bl #0x708f00
00497a1c  00 00 5b e3                                      cmp fp, #0
00497a20  05 a0 a0 a1                                      movge sl, r5
00497a24  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00497a28  08 50 95 a5                                      ldrge r5, [r5, #8]
00497a2c  00 00 55 e3                                      cmp r5, #0
00497a30  26 00 00 0a                                      beq #0x497ad0
00497a34  00 10 99 e5                                      ldr r1, [sb]
00497a38  00 20 9d e5                                      ldr r2, [sp]
00497a3c  08 00 a0 e1                                      mov r0, r8
00497a40  a9 f1 f9 eb                                      bl #0x3140ec
00497a44  24 30 95 e5                                      ldr r3, [r5, #0x24]
00497a48  48 40 9d e5                                      ldr r4, [sp, #0x48]
00497a4c  20 70 95 e5                                      ldr r7, [r5, #0x20]
00497a50  44 60 9d e5                                      ldr r6, [sp, #0x44]
00497a54  03 00 a0 e1                                      mov r0, r3
00497a58  07 70 63 e0                                      rsb r7, r3, r7
00497a5c  06 60 64 e0                                      rsb r6, r4, r6
00497a60  07 00 56 e1                                      cmp r6, r7
00497a64  06 20 a0 b1                                      movlt r2, r6
00497a68  07 20 a0 a1                                      movge r2, r7
00497a6c  04 10 a0 e1                                      mov r1, r4
00497a70  da da f9 eb                                      bl #0x30e5e0
00497a74  00 b0 50 e2                                      subs fp, r0, #0
00497a78  04 00 00 1a                                      bne #0x497a90
00497a7c  06 00 57 e1                                      cmp r7, r6
00497a80  00 b0 e0 b3                                      mvnlt fp, #0
00497a84  01 00 00 ba                                      blt #0x497a90
00497a88  00 b0 a0 d3                                      movle fp, #0
00497a8c  01 b0 a0 c3                                      movgt fp, #1
00497a90  08 00 54 e1                                      cmp r4, r8
00497a94  e0 ff ff 0a                                      beq #0x497a1c
00497a98  00 00 54 e3                                      cmp r4, #0
00497a9c  de ff ff 0a                                      beq #0x497a1c
00497aa0  34 10 9d e5                                      ldr r1, [sp, #0x34]
00497aa4  01 10 64 e0                                      rsb r1, r4, r1
00497aa8  80 00 51 e3                                      cmp r1, #0x80
00497aac  d8 ff ff 9a                                      bls #0x497a14
00497ab0  04 00 a0 e1                                      mov r0, r4
00497ab4  61 e2 f9 eb                                      bl #0x310440
00497ab8  00 00 5b e3                                      cmp fp, #0
00497abc  05 a0 a0 a1                                      movge sl, r5
00497ac0  0c 50 95 b5                                      ldrlt r5, [r5, #0xc]
00497ac4  08 50 95 a5                                      ldrge r5, [r5, #8]
00497ac8  00 00 55 e3                                      cmp r5, #0
00497acc  d8 ff ff 1a                                      bne #0x497a34
00497ad0  08 10 9d e5                                      ldr r1, [sp, #8]
00497ad4  01 00 5a e1                                      cmp sl, r1
00497ad8  24 00 00 0a                                      beq #0x497b70
00497adc  1c 50 8d e2                                      add r5, sp, #0x1c
00497ae0  00 10 99 e5                                      ldr r1, [sb]
00497ae4  14 20 8d e2                                      add r2, sp, #0x14
00497ae8  05 00 a0 e1                                      mov r0, r5
00497aec  7e f1 f9 eb                                      bl #0x3140ec
00497af0  24 30 9a e5                                      ldr r3, [sl, #0x24]
00497af4  30 40 9d e5                                      ldr r4, [sp, #0x30]
00497af8  20 70 9a e5                                      ldr r7, [sl, #0x20]
00497afc  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00497b00  03 10 a0 e1                                      mov r1, r3
00497b04  07 70 63 e0                                      rsb r7, r3, r7
00497b08  06 60 64 e0                                      rsb r6, r4, r6
00497b0c  06 00 57 e1                                      cmp r7, r6
00497b10  07 20 a0 b1                                      movlt r2, r7
00497b14  06 20 a0 a1                                      movge r2, r6
00497b18  04 00 a0 e1                                      mov r0, r4
00497b1c  af da f9 eb                                      bl #0x30e5e0
00497b20  00 80 50 e2                                      subs r8, r0, #0
00497b24  04 00 00 1a                                      bne #0x497b3c
00497b28  07 00 56 e1                                      cmp r6, r7
00497b2c  00 80 e0 b3                                      mvnlt r8, #0
00497b30  01 00 00 ba                                      blt #0x497b3c
00497b34  00 80 a0 d3                                      movle r8, #0
00497b38  01 80 a0 c3                                      movgt r8, #1
00497b3c  05 00 54 e1                                      cmp r4, r5
00497b40  07 00 00 0a                                      beq #0x497b64
00497b44  00 00 54 e3                                      cmp r4, #0
00497b48  05 00 00 0a                                      beq #0x497b64
00497b4c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00497b50  01 10 64 e0                                      rsb r1, r4, r1
00497b54  80 00 51 e3                                      cmp r1, #0x80
00497b58  0e 00 00 8a                                      bhi #0x497b98
00497b5c  04 00 a0 e1                                      mov r0, r4
00497b60  e6 c4 09 eb                                      bl #0x708f00
00497b64  00 00 58 e3                                      cmp r8, #0
00497b68  00 00 00 aa                                      bge #0x497b70
00497b6c  08 a0 9d e5                                      ldr sl, [sp, #8]
00497b70  04 00 9d e5                                      ldr r0, [sp, #4]
00497b74  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00497b78  02 30 90 e7                                      ldr r3, [r0, r2]
00497b7c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00497b80  0a 00 a0 e1                                      mov r0, sl
00497b84  00 30 93 e5                                      ldr r3, [r3]
00497b88  03 00 52 e1                                      cmp r2, r3
00497b8c  06 00 00 1a                                      bne #0x497bac
00497b90  54 d0 8d e2                                      add sp, sp, #0x54
00497b94  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00497b98  04 00 a0 e1                                      mov r0, r4
00497b9c  27 e2 f9 eb                                      bl #0x310440
00497ba0  00 00 58 e3                                      cmp r8, #0
00497ba4  f0 ff ff ba                                      blt #0x497b6c
00497ba8  f0 ff ff ea                                      b #0x497b70
00497bac  d7 d9 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00497bb0  bc d0 4f 00 ac 40 00 00                          .byte 0xbc, 0xd0, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00
