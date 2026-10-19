; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004843c4, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >
; alias: _ZNKSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd8ListRuleEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIS2_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
004843c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004843c8  04 40 90 e5                                      ldr r4, [r0, #4]
004843cc  00 80 a0 e1                                      mov r8, r0
004843d0  01 50 a0 e1                                      mov r5, r1
004843d4  00 00 54 e3                                      cmp r4, #0
004843d8  13 00 00 0a                                      beq #0x48442c
004843dc  14 60 80 e2                                      add r6, r0, #0x14
004843e0  00 70 a0 e1                                      mov r7, r0
004843e4  10 10 94 e5                                      ldr r1, [r4, #0x10]
004843e8  06 00 a0 e1                                      mov r0, r6
004843ec  00 20 95 e5                                      ldr r2, [r5]
004843f0  7d 4d fa eb                                      bl #0x3179ec
004843f4  00 00 50 e3                                      cmp r0, #0
004843f8  04 70 a0 01                                      moveq r7, r4
004843fc  0c 40 94 15                                      ldrne r4, [r4, #0xc]
00484400  08 40 94 05                                      ldreq r4, [r4, #8]
00484404  00 00 54 e3                                      cmp r4, #0
00484408  f5 ff ff 1a                                      bne #0x4843e4
0048440c  08 00 57 e1                                      cmp r7, r8
00484410  06 00 00 0a                                      beq #0x484430
00484414  06 00 a0 e1                                      mov r0, r6
00484418  00 10 95 e5                                      ldr r1, [r5]
0048441c  10 20 97 e5                                      ldr r2, [r7, #0x10]
00484420  71 4d fa eb                                      bl #0x3179ec
00484424  00 00 50 e3                                      cmp r0, #0
00484428  00 00 00 0a                                      beq #0x484430
0048442c  08 70 a0 e1                                      mov r7, r8
00484430  07 00 a0 e1                                      mov r0, r7
00484434  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0048446c, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >
; alias: _ZNKSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd8ListRuleEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIA512_cEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::ListRule*>, std::priv::_Select1st<std::pair<char const* const, rnd::ListRule*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::ListRule*> >, std::allocator<std::pair<char const* const, rnd::ListRule*> > >::_M_find<char [512]>(char const (&) [512]) const
; decoder-mode: arm
0048446c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00484470  04 40 90 e5                                      ldr r4, [r0, #4]
00484474  00 80 a0 e1                                      mov r8, r0
00484478  01 50 a0 e1                                      mov r5, r1
0048447c  00 00 54 e3                                      cmp r4, #0
00484480  13 00 00 0a                                      beq #0x4844d4
00484484  14 60 80 e2                                      add r6, r0, #0x14
00484488  00 70 a0 e1                                      mov r7, r0
0048448c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00484490  06 00 a0 e1                                      mov r0, r6
00484494  05 20 a0 e1                                      mov r2, r5
00484498  53 4d fa eb                                      bl #0x3179ec
0048449c  00 00 50 e3                                      cmp r0, #0
004844a0  04 70 a0 01                                      moveq r7, r4
004844a4  0c 40 94 15                                      ldrne r4, [r4, #0xc]
004844a8  08 40 94 05                                      ldreq r4, [r4, #8]
004844ac  00 00 54 e3                                      cmp r4, #0
004844b0  f5 ff ff 1a                                      bne #0x48448c
004844b4  08 00 57 e1                                      cmp r7, r8
004844b8  06 00 00 0a                                      beq #0x4844d8
004844bc  06 00 a0 e1                                      mov r0, r6
004844c0  05 10 a0 e1                                      mov r1, r5
004844c4  10 20 97 e5                                      ldr r2, [r7, #0x10]
004844c8  47 4d fa eb                                      bl #0x3179ec
004844cc  00 00 50 e3                                      cmp r0, #0
004844d0  00 00 00 0a                                      beq #0x4844d8
004844d4  08 70 a0 e1                                      mov r7, r8
004844d8  07 00 a0 e1                                      mov r0, r7
004844dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
