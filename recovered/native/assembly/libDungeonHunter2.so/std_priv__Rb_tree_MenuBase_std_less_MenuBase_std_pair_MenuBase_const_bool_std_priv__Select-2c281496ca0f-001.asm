; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042da60, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<MenuBase*, std::less<MenuBase*>, std::pair<MenuBase* const, bool>, std::priv::_Select1st<std::pair<MenuBase* const, bool> >, std::priv::_MapTraitsT<std::pair<MenuBase* const, bool> >, std::allocator<std::pair<MenuBase* const, bool> > >
; alias: _ZNSt4priv8_Rb_treeIP8MenuBaseSt4lessIS2_ESt4pairIKS2_bENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<MenuBase*, std::less<MenuBase*>, std::pair<MenuBase* const, bool>, std::priv::_Select1st<std::pair<MenuBase* const, bool> >, std::priv::_MapTraitsT<std::pair<MenuBase* const, bool> >, std::allocator<std::pair<MenuBase* const, bool> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0042da60  70 40 2d e9                                      push {r4, r5, r6, lr}
0042da64  00 40 51 e2                                      subs r4, r1, #0
0042da68  00 60 a0 e1                                      mov r6, r0
0042da6c  08 00 00 0a                                      beq #0x42da94
0042da70  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0042da74  06 00 a0 e1                                      mov r0, r6
0042da78  f8 ff ff eb                                      bl #0x42da60
0042da7c  08 50 94 e5                                      ldr r5, [r4, #8]
0042da80  04 00 a0 e1                                      mov r0, r4
0042da84  18 10 a0 e3                                      mov r1, #0x18
0042da88  1c 6d 0b eb                                      bl #0x708f00
0042da8c  00 40 55 e2                                      subs r4, r5, #0
0042da90  f6 ff ff 1a                                      bne #0x42da70
0042da94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00431498, declared_size=312, range_size=312, mode=arm
; class-group: std::priv::_Rb_tree<MenuBase*, std::less<MenuBase*>, std::pair<MenuBase* const, bool>, std::priv::_Select1st<std::pair<MenuBase* const, bool> >, std::priv::_MapTraitsT<std::pair<MenuBase* const, bool> >, std::allocator<std::pair<MenuBase* const, bool> > >
; alias: _ZNSt4priv8_Rb_treeIP8MenuBaseSt4lessIS2_ESt4pairIKS2_bENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE9_M_insertEPNS_18_Rb_tree_node_baseERKS7_SF_SF_.clone.6
; demangled: std::priv::_Rb_tree<MenuBase*, std::less<MenuBase*>, std::pair<MenuBase* const, bool>, std::priv::_Select1st<std::pair<MenuBase* const, bool> >, std::priv::_MapTraitsT<std::pair<MenuBase* const, bool> >, std::allocator<std::pair<MenuBase* const, bool> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<MenuBase* const, bool> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*) [clone .clone.6]
; decoder-mode: arm
00431498  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0043149c  02 00 51 e1                                      cmp r1, r2
004314a0  0c d0 4d e2                                      sub sp, sp, #0xc
004314a4  01 40 a0 e1                                      mov r4, r1
004314a8  00 50 a0 e1                                      mov r5, r0
004314ac  20 70 9d e5                                      ldr r7, [sp, #0x20]
004314b0  14 00 00 0a                                      beq #0x431508
004314b4  00 00 57 e3                                      cmp r7, #0
004314b8  2e 00 00 0a                                      beq #0x431578
004314bc  04 00 a0 e1                                      mov r0, r4
004314c0  04 20 8d e5                                      str r2, [sp, #4]
004314c4  00 30 8d e5                                      str r3, [sp]
004314c8  ea ff ff eb                                      bl #0x431478
004314cc  00 30 9d e5                                      ldr r3, [sp]
004314d0  00 10 a0 e3                                      mov r1, #0
004314d4  00 60 a0 e1                                      mov r6, r0
004314d8  00 c0 93 e5                                      ldr ip, [r3]
004314dc  10 c0 80 e5                                      str ip, [r0, #0x10]
004314e0  04 30 d3 e5                                      ldrb r3, [r3, #4]
004314e4  0c 10 80 e5                                      str r1, [r0, #0xc]
004314e8  08 10 80 e5                                      str r1, [r0, #8]
004314ec  14 30 c0 e5                                      strb r3, [r0, #0x14]
004314f0  04 20 9d e5                                      ldr r2, [sp, #4]
004314f4  08 00 82 e5                                      str r0, [r2, #8]
004314f8  08 30 94 e5                                      ldr r3, [r4, #8]
004314fc  03 00 52 e1                                      cmp r2, r3
00431500  08 00 84 05                                      streq r0, [r4, #8]
00431504  10 00 00 ea                                      b #0x43154c
00431508  01 00 a0 e1                                      mov r0, r1
0043150c  04 20 8d e5                                      str r2, [sp, #4]
00431510  00 30 8d e5                                      str r3, [sp]
00431514  d7 ff ff eb                                      bl #0x431478
00431518  00 30 9d e5                                      ldr r3, [sp]
0043151c  00 10 a0 e3                                      mov r1, #0
00431520  00 60 a0 e1                                      mov r6, r0
00431524  00 c0 93 e5                                      ldr ip, [r3]
00431528  10 c0 80 e5                                      str ip, [r0, #0x10]
0043152c  04 30 d3 e5                                      ldrb r3, [r3, #4]
00431530  0c 10 80 e5                                      str r1, [r0, #0xc]
00431534  08 10 80 e5                                      str r1, [r0, #8]
00431538  14 30 c0 e5                                      strb r3, [r0, #0x14]
0043153c  08 00 84 e5                                      str r0, [r4, #8]
00431540  04 00 84 e5                                      str r0, [r4, #4]
00431544  0c 00 84 e5                                      str r0, [r4, #0xc]
00431548  04 20 9d e5                                      ldr r2, [sp, #4]
0043154c  06 00 a0 e1                                      mov r0, r6
00431550  04 20 86 e5                                      str r2, [r6, #4]
00431554  04 10 84 e2                                      add r1, r4, #4
00431558  80 88 fb eb                                      bl #0x313760
0043155c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00431560  05 00 a0 e1                                      mov r0, r5
00431564  01 30 83 e2                                      add r3, r3, #1
00431568  10 30 84 e5                                      str r3, [r4, #0x10]
0043156c  00 60 85 e5                                      str r6, [r5]
00431570  0c d0 8d e2                                      add sp, sp, #0xc
00431574  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00431578  00 00 93 e5                                      ldr r0, [r3]
0043157c  10 10 92 e5                                      ldr r1, [r2, #0x10]
00431580  01 00 50 e1                                      cmp r0, r1
00431584  cc ff ff 3a                                      blo #0x4314bc
00431588  04 00 a0 e1                                      mov r0, r4
0043158c  04 20 8d e5                                      str r2, [sp, #4]
00431590  00 30 8d e5                                      str r3, [sp]
00431594  b7 ff ff eb                                      bl #0x431478
00431598  00 30 9d e5                                      ldr r3, [sp]
0043159c  00 60 a0 e1                                      mov r6, r0
004315a0  00 10 93 e5                                      ldr r1, [r3]
004315a4  10 10 80 e5                                      str r1, [r0, #0x10]
004315a8  04 30 d3 e5                                      ldrb r3, [r3, #4]
004315ac  0c 70 80 e5                                      str r7, [r0, #0xc]
004315b0  08 70 80 e5                                      str r7, [r0, #8]
004315b4  14 30 c0 e5                                      strb r3, [r0, #0x14]
004315b8  04 20 9d e5                                      ldr r2, [sp, #4]
004315bc  0c 00 82 e5                                      str r0, [r2, #0xc]
004315c0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004315c4  03 00 52 e1                                      cmp r2, r3
004315c8  0c 00 84 05                                      streq r0, [r4, #0xc]
004315cc  de ff ff ea                                      b #0x43154c

; FUNCTION 0x004315d0, declared_size=384, range_size=384, mode=arm
; class-group: std::priv::_Rb_tree<MenuBase*, std::less<MenuBase*>, std::pair<MenuBase* const, bool>, std::priv::_Select1st<std::pair<MenuBase* const, bool> >, std::priv::_MapTraitsT<std::pair<MenuBase* const, bool> >, std::allocator<std::pair<MenuBase* const, bool> > >
; alias: _ZNSt4priv8_Rb_treeIP8MenuBaseSt4lessIS2_ESt4pairIKS2_bENS_10_Select1stIS7_EENS_11_MapTraitsTIS7_EESaIS7_EE13insert_uniqueERKS7_
; demangled: std::priv::_Rb_tree<MenuBase*, std::less<MenuBase*>, std::pair<MenuBase* const, bool>, std::priv::_Select1st<std::pair<MenuBase* const, bool> >, std::priv::_MapTraitsT<std::pair<MenuBase* const, bool> >, std::allocator<std::pair<MenuBase* const, bool> > >::insert_unique(std::pair<MenuBase* const, bool> const&)
; decoder-mode: arm
004315d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004315d4  04 c0 91 e5                                      ldr ip, [r1, #4]
004315d8  10 d0 4d e2                                      sub sp, sp, #0x10
004315dc  00 40 a0 e1                                      mov r4, r0
004315e0  00 00 5c e3                                      cmp ip, #0
004315e4  02 30 a0 e1                                      mov r3, r2
004315e8  01 c0 a0 01                                      moveq ip, r1
004315ec  15 00 00 0a                                      beq #0x431648
004315f0  00 60 92 e5                                      ldr r6, [r2]
004315f4  00 00 00 ea                                      b #0x4315fc
004315f8  02 c0 a0 e1                                      mov ip, r2
004315fc  10 00 9c e5                                      ldr r0, [ip, #0x10]
00431600  01 50 a0 e3                                      mov r5, #1
00431604  06 00 50 e1                                      cmp r0, r6
00431608  08 20 9c 85                                      ldrhi r2, [ip, #8]
0043160c  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
00431610  00 50 a0 93                                      movls r5, #0
00431614  00 00 52 e3                                      cmp r2, #0
00431618  f6 ff ff 1a                                      bne #0x4315f8
0043161c  00 00 55 e3                                      cmp r5, #0
00431620  0c 50 a0 01                                      moveq r5, ip
00431624  07 00 00 1a                                      bne #0x431648
00431628  00 00 56 e1                                      cmp r6, r0
0043162c  00 30 a0 93                                      movls r3, #0
00431630  00 50 84 95                                      strls r5, [r4]
00431634  04 30 c4 95                                      strbls r3, [r4, #4]
00431638  1c 00 00 8a                                      bhi #0x4316b0
0043163c  04 00 a0 e1                                      mov r0, r4
00431640  10 d0 8d e2                                      add sp, sp, #0x10
00431644  70 80 bd e8                                      pop {r4, r5, r6, pc}
00431648  08 20 91 e5                                      ldr r2, [r1, #8]
0043164c  02 00 5c e1                                      cmp ip, r2
00431650  35 00 00 0a                                      beq #0x43172c
00431654  00 20 dc e5                                      ldrb r2, [ip]
00431658  00 00 52 e3                                      cmp r2, #0
0043165c  03 00 00 1a                                      bne #0x431670
00431660  04 20 9c e5                                      ldr r2, [ip, #4]
00431664  04 20 92 e5                                      ldr r2, [r2, #4]
00431668  02 00 5c e1                                      cmp ip, r2
0043166c  29 00 00 0a                                      beq #0x431718
00431670  08 00 9c e5                                      ldr r0, [ip, #8]
00431674  00 00 50 e3                                      cmp r0, #0
00431678  01 00 00 1a                                      bne #0x431684
0043167c  15 00 00 ea                                      b #0x4316d8
00431680  02 00 a0 e1                                      mov r0, r2
00431684  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00431688  00 00 52 e3                                      cmp r2, #0
0043168c  fb ff ff 1a                                      bne #0x431680
00431690  00 60 93 e5                                      ldr r6, [r3]
00431694  00 50 a0 e1                                      mov r5, r0
00431698  10 00 90 e5                                      ldr r0, [r0, #0x10]
0043169c  00 00 56 e1                                      cmp r6, r0
004316a0  00 30 a0 93                                      movls r3, #0
004316a4  00 50 84 95                                      strls r5, [r4]
004316a8  04 30 c4 95                                      strbls r3, [r4, #4]
004316ac  e2 ff ff 9a                                      bls #0x43163c
004316b0  0c 20 a0 e1                                      mov r2, ip
004316b4  08 00 8d e2                                      add r0, sp, #8
004316b8  00 c0 a0 e3                                      mov ip, #0
004316bc  00 c0 8d e5                                      str ip, [sp]
004316c0  74 ff ff eb                                      bl #0x431498
004316c4  08 30 9d e5                                      ldr r3, [sp, #8]
004316c8  01 20 a0 e3                                      mov r2, #1
004316cc  04 20 c4 e5                                      strb r2, [r4, #4]
004316d0  00 30 84 e5                                      str r3, [r4]
004316d4  d8 ff ff ea                                      b #0x43163c
004316d8  04 20 9c e5                                      ldr r2, [ip, #4]
004316dc  08 00 92 e5                                      ldr r0, [r2, #8]
004316e0  00 00 5c e1                                      cmp ip, r0
004316e4  02 50 a0 11                                      movne r5, r2
004316e8  00 60 93 15                                      ldrne r6, [r3]
004316ec  10 00 92 15                                      ldrne r0, [r2, #0x10]
004316f0  01 00 00 0a                                      beq #0x4316fc
004316f4  cb ff ff ea                                      b #0x431628
004316f8  05 20 a0 e1                                      mov r2, r5
004316fc  04 50 92 e5                                      ldr r5, [r2, #4]
00431700  08 00 95 e5                                      ldr r0, [r5, #8]
00431704  02 00 50 e1                                      cmp r0, r2
00431708  fa ff ff 0a                                      beq #0x4316f8
0043170c  00 60 93 e5                                      ldr r6, [r3]
00431710  10 00 95 e5                                      ldr r0, [r5, #0x10]
00431714  c3 ff ff ea                                      b #0x431628
00431718  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0043171c  00 60 93 e5                                      ldr r6, [r3]
00431720  02 50 a0 e1                                      mov r5, r2
00431724  10 00 92 e5                                      ldr r0, [r2, #0x10]
00431728  be ff ff ea                                      b #0x431628
0043172c  0c 20 a0 e1                                      mov r2, ip
00431730  0c 00 8d e2                                      add r0, sp, #0xc
00431734  00 c0 8d e5                                      str ip, [sp]
00431738  56 ff ff eb                                      bl #0x431498
0043173c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00431740  01 20 a0 e3                                      mov r2, #1
00431744  04 20 c4 e5                                      strb r2, [r4, #4]
00431748  00 30 84 e5                                      str r3, [r4]
0043174c  ba ff ff ea                                      b #0x43163c
