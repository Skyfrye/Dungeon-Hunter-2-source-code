; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004844e0, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >
; alias: _ZNKSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd5BlockEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIA512_cEEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >::_M_find<char [512]>(char const (&) [512]) const
; decoder-mode: arm
004844e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004844e4  04 40 90 e5                                      ldr r4, [r0, #4]
004844e8  00 80 a0 e1                                      mov r8, r0
004844ec  01 50 a0 e1                                      mov r5, r1
004844f0  00 00 54 e3                                      cmp r4, #0
004844f4  13 00 00 0a                                      beq #0x484548
004844f8  14 60 80 e2                                      add r6, r0, #0x14
004844fc  00 70 a0 e1                                      mov r7, r0
00484500  10 10 94 e5                                      ldr r1, [r4, #0x10]
00484504  06 00 a0 e1                                      mov r0, r6
00484508  05 20 a0 e1                                      mov r2, r5
0048450c  36 4d fa eb                                      bl #0x3179ec
00484510  00 00 50 e3                                      cmp r0, #0
00484514  04 70 a0 01                                      moveq r7, r4
00484518  0c 40 94 15                                      ldrne r4, [r4, #0xc]
0048451c  08 40 94 05                                      ldreq r4, [r4, #8]
00484520  00 00 54 e3                                      cmp r4, #0
00484524  f5 ff ff 1a                                      bne #0x484500
00484528  08 00 57 e1                                      cmp r7, r8
0048452c  06 00 00 0a                                      beq #0x48454c
00484530  06 00 a0 e1                                      mov r0, r6
00484534  05 10 a0 e1                                      mov r1, r5
00484538  10 20 97 e5                                      ldr r2, [r7, #0x10]
0048453c  2a 4d fa eb                                      bl #0x3179ec
00484540  00 00 50 e3                                      cmp r0, #0
00484544  00 00 00 0a                                      beq #0x48454c
00484548  08 70 a0 e1                                      mov r7, r8
0048454c  07 00 a0 e1                                      mov r0, r7
00484550  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0048c418, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >
; alias: _ZNKSt4priv8_Rb_treeIPKc4lstrSt4pairIKS2_PN3rnd5BlockEENS_10_Select1stIS9_EENS_11_MapTraitsTIS9_EESaIS9_EE7_M_findIS2_EEPNS_18_Rb_tree_node_baseERKT_
; demangled: std::priv::_Rb_tree_node_base* std::priv::_Rb_tree<char const*, lstr, std::pair<char const* const, rnd::Block*>, std::priv::_Select1st<std::pair<char const* const, rnd::Block*> >, std::priv::_MapTraitsT<std::pair<char const* const, rnd::Block*> >, std::allocator<std::pair<char const* const, rnd::Block*> > >::_M_find<char const*>(char const* const&) const
; decoder-mode: arm
0048c418  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048c41c  04 40 90 e5                                      ldr r4, [r0, #4]
0048c420  00 80 a0 e1                                      mov r8, r0
0048c424  01 50 a0 e1                                      mov r5, r1
0048c428  00 00 54 e3                                      cmp r4, #0
0048c42c  13 00 00 0a                                      beq #0x48c480
0048c430  14 60 80 e2                                      add r6, r0, #0x14
0048c434  00 70 a0 e1                                      mov r7, r0
0048c438  10 10 94 e5                                      ldr r1, [r4, #0x10]
0048c43c  06 00 a0 e1                                      mov r0, r6
0048c440  00 20 95 e5                                      ldr r2, [r5]
0048c444  68 2d fa eb                                      bl #0x3179ec
0048c448  00 00 50 e3                                      cmp r0, #0
0048c44c  04 70 a0 01                                      moveq r7, r4
0048c450  0c 40 94 15                                      ldrne r4, [r4, #0xc]
0048c454  08 40 94 05                                      ldreq r4, [r4, #8]
0048c458  00 00 54 e3                                      cmp r4, #0
0048c45c  f5 ff ff 1a                                      bne #0x48c438
0048c460  08 00 57 e1                                      cmp r7, r8
0048c464  06 00 00 0a                                      beq #0x48c484
0048c468  06 00 a0 e1                                      mov r0, r6
0048c46c  00 10 95 e5                                      ldr r1, [r5]
0048c470  10 20 97 e5                                      ldr r2, [r7, #0x10]
0048c474  5c 2d fa eb                                      bl #0x3179ec
0048c478  00 00 50 e3                                      cmp r0, #0
0048c47c  00 00 00 0a                                      beq #0x48c484
0048c480  08 70 a0 e1                                      mov r7, r8
0048c484  07 00 a0 e1                                      mov r0, r7
0048c488  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
