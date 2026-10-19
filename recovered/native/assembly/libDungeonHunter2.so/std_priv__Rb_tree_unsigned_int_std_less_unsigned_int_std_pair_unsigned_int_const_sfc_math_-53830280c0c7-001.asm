; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051d684, declared_size=292, range_size=292, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7_InNodeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSD_SL_SL_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0051d684  02 00 51 e1                                      cmp r1, r2
0051d688  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051d68c  01 40 a0 e1                                      mov r4, r1
0051d690  02 70 a0 e1                                      mov r7, r2
0051d694  00 50 a0 e1                                      mov r5, r0
0051d698  03 80 a0 e1                                      mov r8, r3
0051d69c  2e 00 00 0a                                      beq #0x51d75c
0051d6a0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0051d6a4  00 00 53 e3                                      cmp r3, #0
0051d6a8  17 00 00 0a                                      beq #0x51d70c
0051d6ac  04 00 a0 e1                                      mov r0, r4
0051d6b0  eb ff ff eb                                      bl #0x51d664
0051d6b4  00 20 98 e5                                      ldr r2, [r8]
0051d6b8  00 30 a0 e3                                      mov r3, #0
0051d6bc  00 60 a0 e1                                      mov r6, r0
0051d6c0  10 20 80 e5                                      str r2, [r0, #0x10]
0051d6c4  04 20 98 e5                                      ldr r2, [r8, #4]
0051d6c8  0c 30 80 e5                                      str r3, [r0, #0xc]
0051d6cc  08 30 80 e5                                      str r3, [r0, #8]
0051d6d0  14 20 80 e5                                      str r2, [r0, #0x14]
0051d6d4  0c 00 87 e5                                      str r0, [r7, #0xc]
0051d6d8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0051d6dc  03 00 57 e1                                      cmp r7, r3
0051d6e0  1b 00 00 0a                                      beq #0x51d754
0051d6e4  06 00 a0 e1                                      mov r0, r6
0051d6e8  04 70 86 e5                                      str r7, [r6, #4]
0051d6ec  04 10 84 e2                                      add r1, r4, #4
0051d6f0  1a d8 f7 eb                                      bl #0x313760
0051d6f4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051d6f8  05 00 a0 e1                                      mov r0, r5
0051d6fc  01 30 83 e2                                      add r3, r3, #1
0051d700  10 30 84 e5                                      str r3, [r4, #0x10]
0051d704  00 60 85 e5                                      str r6, [r5]
0051d708  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051d70c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0051d710  00 00 53 e3                                      cmp r3, #0
0051d714  1e 00 00 0a                                      beq #0x51d794
0051d718  04 00 a0 e1                                      mov r0, r4
0051d71c  d0 ff ff eb                                      bl #0x51d664
0051d720  00 20 98 e5                                      ldr r2, [r8]
0051d724  00 30 a0 e3                                      mov r3, #0
0051d728  00 60 a0 e1                                      mov r6, r0
0051d72c  10 20 80 e5                                      str r2, [r0, #0x10]
0051d730  04 20 98 e5                                      ldr r2, [r8, #4]
0051d734  0c 30 80 e5                                      str r3, [r0, #0xc]
0051d738  08 30 80 e5                                      str r3, [r0, #8]
0051d73c  14 20 80 e5                                      str r2, [r0, #0x14]
0051d740  08 00 87 e5                                      str r0, [r7, #8]
0051d744  08 30 94 e5                                      ldr r3, [r4, #8]
0051d748  03 00 57 e1                                      cmp r7, r3
0051d74c  08 00 84 05                                      streq r0, [r4, #8]
0051d750  e3 ff ff ea                                      b #0x51d6e4
0051d754  0c 60 84 e5                                      str r6, [r4, #0xc]
0051d758  e1 ff ff ea                                      b #0x51d6e4
0051d75c  01 00 a0 e1                                      mov r0, r1
0051d760  bf ff ff eb                                      bl #0x51d664
0051d764  00 20 98 e5                                      ldr r2, [r8]
0051d768  00 30 a0 e3                                      mov r3, #0
0051d76c  00 60 a0 e1                                      mov r6, r0
0051d770  10 20 80 e5                                      str r2, [r0, #0x10]
0051d774  04 20 98 e5                                      ldr r2, [r8, #4]
0051d778  0c 30 80 e5                                      str r3, [r0, #0xc]
0051d77c  08 30 80 e5                                      str r3, [r0, #8]
0051d780  14 20 80 e5                                      str r2, [r0, #0x14]
0051d784  08 00 84 e5                                      str r0, [r4, #8]
0051d788  04 00 84 e5                                      str r0, [r4, #4]
0051d78c  0c 00 84 e5                                      str r0, [r4, #0xc]
0051d790  d3 ff ff ea                                      b #0x51d6e4
0051d794  00 20 98 e5                                      ldr r2, [r8]
0051d798  10 30 97 e5                                      ldr r3, [r7, #0x10]
0051d79c  03 00 52 e1                                      cmp r2, r3
0051d7a0  c1 ff ff 2a                                      bhs #0x51d6ac
0051d7a4  db ff ff ea                                      b #0x51d718

; FUNCTION 0x0051d7a8, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7_InNodeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueERKSD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >::insert_unique(std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> const&)
; decoder-mode: arm
0051d7a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0051d7ac  04 c0 91 e5                                      ldr ip, [r1, #4]
0051d7b0  10 d0 4d e2                                      sub sp, sp, #0x10
0051d7b4  00 40 a0 e1                                      mov r4, r0
0051d7b8  00 00 5c e3                                      cmp ip, #0
0051d7bc  02 30 a0 e1                                      mov r3, r2
0051d7c0  01 c0 a0 01                                      moveq ip, r1
0051d7c4  15 00 00 0a                                      beq #0x51d820
0051d7c8  00 60 92 e5                                      ldr r6, [r2]
0051d7cc  00 00 00 ea                                      b #0x51d7d4
0051d7d0  02 c0 a0 e1                                      mov ip, r2
0051d7d4  10 00 9c e5                                      ldr r0, [ip, #0x10]
0051d7d8  01 50 a0 e3                                      mov r5, #1
0051d7dc  06 00 50 e1                                      cmp r0, r6
0051d7e0  08 20 9c 85                                      ldrhi r2, [ip, #8]
0051d7e4  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0051d7e8  00 50 a0 93                                      movls r5, #0
0051d7ec  00 00 52 e3                                      cmp r2, #0
0051d7f0  f6 ff ff 1a                                      bne #0x51d7d0
0051d7f4  00 00 55 e3                                      cmp r5, #0
0051d7f8  0c 50 a0 01                                      moveq r5, ip
0051d7fc  07 00 00 1a                                      bne #0x51d820
0051d800  00 00 56 e1                                      cmp r6, r0
0051d804  00 30 a0 93                                      movls r3, #0
0051d808  00 50 84 95                                      strls r5, [r4]
0051d80c  04 30 c4 95                                      strbls r3, [r4, #4]
0051d810  1c 00 00 8a                                      bhi #0x51d888
0051d814  04 00 a0 e1                                      mov r0, r4
0051d818  10 d0 8d e2                                      add sp, sp, #0x10
0051d81c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051d820  08 20 91 e5                                      ldr r2, [r1, #8]
0051d824  02 00 5c e1                                      cmp ip, r2
0051d828  36 00 00 0a                                      beq #0x51d908
0051d82c  00 20 dc e5                                      ldrb r2, [ip]
0051d830  00 00 52 e3                                      cmp r2, #0
0051d834  03 00 00 1a                                      bne #0x51d848
0051d838  04 20 9c e5                                      ldr r2, [ip, #4]
0051d83c  04 20 92 e5                                      ldr r2, [r2, #4]
0051d840  02 00 5c e1                                      cmp ip, r2
0051d844  2a 00 00 0a                                      beq #0x51d8f4
0051d848  08 00 9c e5                                      ldr r0, [ip, #8]
0051d84c  00 00 50 e3                                      cmp r0, #0
0051d850  01 00 00 1a                                      bne #0x51d85c
0051d854  16 00 00 ea                                      b #0x51d8b4
0051d858  02 00 a0 e1                                      mov r0, r2
0051d85c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0051d860  00 00 52 e3                                      cmp r2, #0
0051d864  fb ff ff 1a                                      bne #0x51d858
0051d868  00 60 93 e5                                      ldr r6, [r3]
0051d86c  00 50 a0 e1                                      mov r5, r0
0051d870  10 00 90 e5                                      ldr r0, [r0, #0x10]
0051d874  00 00 56 e1                                      cmp r6, r0
0051d878  00 30 a0 93                                      movls r3, #0
0051d87c  00 50 84 95                                      strls r5, [r4]
0051d880  04 30 c4 95                                      strbls r3, [r4, #4]
0051d884  e2 ff ff 9a                                      bls #0x51d814
0051d888  0c 20 a0 e1                                      mov r2, ip
0051d88c  08 00 8d e2                                      add r0, sp, #8
0051d890  00 c0 a0 e3                                      mov ip, #0
0051d894  04 c0 8d e5                                      str ip, [sp, #4]
0051d898  00 c0 8d e5                                      str ip, [sp]
0051d89c  78 ff ff eb                                      bl #0x51d684
0051d8a0  08 30 9d e5                                      ldr r3, [sp, #8]
0051d8a4  01 20 a0 e3                                      mov r2, #1
0051d8a8  04 20 c4 e5                                      strb r2, [r4, #4]
0051d8ac  00 30 84 e5                                      str r3, [r4]
0051d8b0  d7 ff ff ea                                      b #0x51d814
0051d8b4  04 20 9c e5                                      ldr r2, [ip, #4]
0051d8b8  08 00 92 e5                                      ldr r0, [r2, #8]
0051d8bc  00 00 5c e1                                      cmp ip, r0
0051d8c0  02 50 a0 11                                      movne r5, r2
0051d8c4  00 60 93 15                                      ldrne r6, [r3]
0051d8c8  10 00 92 15                                      ldrne r0, [r2, #0x10]
0051d8cc  01 00 00 0a                                      beq #0x51d8d8
0051d8d0  ca ff ff ea                                      b #0x51d800
0051d8d4  05 20 a0 e1                                      mov r2, r5
0051d8d8  04 50 92 e5                                      ldr r5, [r2, #4]
0051d8dc  08 00 95 e5                                      ldr r0, [r5, #8]
0051d8e0  02 00 50 e1                                      cmp r0, r2
0051d8e4  fa ff ff 0a                                      beq #0x51d8d4
0051d8e8  00 60 93 e5                                      ldr r6, [r3]
0051d8ec  10 00 95 e5                                      ldr r0, [r5, #0x10]
0051d8f0  c2 ff ff ea                                      b #0x51d800
0051d8f4  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0051d8f8  00 60 93 e5                                      ldr r6, [r3]
0051d8fc  02 50 a0 e1                                      mov r5, r2
0051d900  10 00 92 e5                                      ldr r0, [r2, #0x10]
0051d904  bd ff ff ea                                      b #0x51d800
0051d908  0c 20 a0 e1                                      mov r2, ip
0051d90c  00 e0 a0 e3                                      mov lr, #0
0051d910  0c 00 8d e2                                      add r0, sp, #0xc
0051d914  00 50 8d e8                                      stm sp, {ip, lr}
0051d918  59 ff ff eb                                      bl #0x51d684
0051d91c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051d920  01 20 a0 e3                                      mov r2, #1
0051d924  04 20 c4 e5                                      strb r2, [r4, #4]
0051d928  00 30 84 e5                                      str r3, [r4]
0051d92c  b8 ff ff ea                                      b #0x51d814

; FUNCTION 0x0051d930, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7_InNodeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueENS_17_Rb_tree_iteratorISD_SH_EERKSD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> const&)
; decoder-mode: arm
0051d930  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0051d934  00 40 92 e5                                      ldr r4, [r2]
0051d938  08 20 91 e5                                      ldr r2, [r1, #8]
0051d93c  2c d0 4d e2                                      sub sp, sp, #0x2c
0051d940  01 50 a0 e1                                      mov r5, r1
0051d944  02 00 54 e1                                      cmp r4, r2
0051d948  00 70 a0 e1                                      mov r7, r0
0051d94c  03 60 a0 e1                                      mov r6, r3
0051d950  5a 00 00 0a                                      beq #0x51dac0
0051d954  01 00 54 e1                                      cmp r4, r1
0051d958  78 00 00 0a                                      beq #0x51db40
0051d95c  00 30 d4 e5                                      ldrb r3, [r4]
0051d960  00 00 53 e3                                      cmp r3, #0
0051d964  3a 00 00 0a                                      beq #0x51da54
0051d968  08 c0 94 e5                                      ldr ip, [r4, #8]
0051d96c  00 00 5c e3                                      cmp ip, #0
0051d970  01 00 00 1a                                      bne #0x51d97c
0051d974  3e 00 00 ea                                      b #0x51da74
0051d978  03 c0 a0 e1                                      mov ip, r3
0051d97c  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0051d980  00 00 53 e3                                      cmp r3, #0
0051d984  fb ff ff 1a                                      bne #0x51d978
0051d988  00 20 96 e5                                      ldr r2, [r6]
0051d98c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0051d990  00 00 52 e1                                      cmp r2, r0
0051d994  00 10 a0 23                                      movhs r1, #0
0051d998  01 10 a0 33                                      movlo r1, #1
0051d99c  00 00 51 e3                                      cmp r1, #0
0051d9a0  1b 00 00 1a                                      bne #0x51da14
0051d9a4  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0051d9a8  00 00 58 e3                                      cmp r8, #0
0051d9ac  7d 00 00 0a                                      beq #0x51dba8
0051d9b0  08 c0 a0 e1                                      mov ip, r8
0051d9b4  00 00 00 ea                                      b #0x51d9bc
0051d9b8  03 c0 a0 e1                                      mov ip, r3
0051d9bc  08 30 9c e5                                      ldr r3, [ip, #8]
0051d9c0  00 00 53 e3                                      cmp r3, #0
0051d9c4  fb ff ff 1a                                      bne #0x51d9b8
0051d9c8  00 00 51 e3                                      cmp r1, #0
0051d9cc  34 00 00 1a                                      bne #0x51daa4
0051d9d0  00 00 52 e1                                      cmp r2, r0
0051d9d4  63 00 00 9a                                      bls #0x51db68
0051d9d8  0c 00 55 e1                                      cmp r5, ip
0051d9dc  02 00 00 0a                                      beq #0x51d9ec
0051d9e0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051d9e4  03 00 52 e1                                      cmp r2, r3
0051d9e8  2d 00 00 2a                                      bhs #0x51daa4
0051d9ec  00 00 58 e3                                      cmp r8, #0
0051d9f0  4a 00 00 1a                                      bne #0x51db20
0051d9f4  05 10 a0 e1                                      mov r1, r5
0051d9f8  04 20 a0 e1                                      mov r2, r4
0051d9fc  06 30 a0 e1                                      mov r3, r6
0051da00  07 00 a0 e1                                      mov r0, r7
0051da04  00 80 8d e5                                      str r8, [sp]
0051da08  04 40 8d e5                                      str r4, [sp, #4]
0051da0c  1c ff ff eb                                      bl #0x51d684
0051da10  0c 00 00 ea                                      b #0x51da48
0051da14  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051da18  03 00 52 e1                                      cmp r2, r3
0051da1c  e0 ff ff 9a                                      bls #0x51d9a4
0051da20  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0051da24  00 00 5e e3                                      cmp lr, #0
0051da28  56 00 00 0a                                      beq #0x51db88
0051da2c  00 c0 a0 e3                                      mov ip, #0
0051da30  05 10 a0 e1                                      mov r1, r5
0051da34  04 20 a0 e1                                      mov r2, r4
0051da38  06 30 a0 e1                                      mov r3, r6
0051da3c  07 00 a0 e1                                      mov r0, r7
0051da40  10 10 8d e8                                      stm sp, {r4, ip}
0051da44  0e ff ff eb                                      bl #0x51d684
0051da48  07 00 a0 e1                                      mov r0, r7
0051da4c  2c d0 8d e2                                      add sp, sp, #0x2c
0051da50  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0051da54  04 30 94 e5                                      ldr r3, [r4, #4]
0051da58  04 30 93 e5                                      ldr r3, [r3, #4]
0051da5c  03 00 54 e1                                      cmp r4, r3
0051da60  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0051da64  c7 ff ff 0a                                      beq #0x51d988
0051da68  08 c0 94 e5                                      ldr ip, [r4, #8]
0051da6c  00 00 5c e3                                      cmp ip, #0
0051da70  c1 ff ff 1a                                      bne #0x51d97c
0051da74  04 c0 94 e5                                      ldr ip, [r4, #4]
0051da78  08 30 9c e5                                      ldr r3, [ip, #8]
0051da7c  03 00 54 e1                                      cmp r4, r3
0051da80  01 00 00 0a                                      beq #0x51da8c
0051da84  bf ff ff ea                                      b #0x51d988
0051da88  03 c0 a0 e1                                      mov ip, r3
0051da8c  04 30 9c e5                                      ldr r3, [ip, #4]
0051da90  08 20 93 e5                                      ldr r2, [r3, #8]
0051da94  0c 00 52 e1                                      cmp r2, ip
0051da98  fa ff ff 0a                                      beq #0x51da88
0051da9c  03 c0 a0 e1                                      mov ip, r3
0051daa0  b8 ff ff ea                                      b #0x51d988
0051daa4  05 10 a0 e1                                      mov r1, r5
0051daa8  06 20 a0 e1                                      mov r2, r6
0051daac  08 00 8d e2                                      add r0, sp, #8
0051dab0  3c ff ff eb                                      bl #0x51d7a8
0051dab4  08 30 9d e5                                      ldr r3, [sp, #8]
0051dab8  00 30 87 e5                                      str r3, [r7]
0051dabc  e1 ff ff ea                                      b #0x51da48
0051dac0  10 20 91 e5                                      ldr r2, [r1, #0x10]
0051dac4  00 00 52 e3                                      cmp r2, #0
0051dac8  52 00 00 0a                                      beq #0x51dc18
0051dacc  00 20 93 e5                                      ldr r2, [r3]
0051dad0  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0051dad4  0c 00 52 e1                                      cmp r2, ip
0051dad8  54 00 00 3a                                      blo #0x51dc30
0051dadc  21 00 00 9a                                      bls #0x51db68
0051dae0  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0051dae4  00 00 5e e3                                      cmp lr, #0
0051dae8  3c 00 00 0a                                      beq #0x51dbe0
0051daec  0e c0 a0 e1                                      mov ip, lr
0051daf0  00 00 00 ea                                      b #0x51daf8
0051daf4  03 c0 a0 e1                                      mov ip, r3
0051daf8  08 30 9c e5                                      ldr r3, [ip, #8]
0051dafc  00 00 53 e3                                      cmp r3, #0
0051db00  fb ff ff 1a                                      bne #0x51daf4
0051db04  0c 00 55 e1                                      cmp r5, ip
0051db08  5c 00 00 0a                                      beq #0x51dc80
0051db0c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051db10  03 00 52 e1                                      cmp r2, r3
0051db14  4a 00 00 2a                                      bhs #0x51dc44
0051db18  00 00 5e e3                                      cmp lr, #0
0051db1c  4f 00 00 0a                                      beq #0x51dc60
0051db20  00 e0 a0 e3                                      mov lr, #0
0051db24  05 10 a0 e1                                      mov r1, r5
0051db28  0c 20 a0 e1                                      mov r2, ip
0051db2c  06 30 a0 e1                                      mov r3, r6
0051db30  07 00 a0 e1                                      mov r0, r7
0051db34  00 50 8d e8                                      stm sp, {ip, lr}
0051db38  d1 fe ff eb                                      bl #0x51d684
0051db3c  c1 ff ff ea                                      b #0x51da48
0051db40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0051db44  00 c0 93 e5                                      ldr ip, [r3]
0051db48  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0051db4c  0c 00 5e e1                                      cmp lr, ip
0051db50  06 00 00 2a                                      bhs #0x51db70
0051db54  00 c0 a0 e3                                      mov ip, #0
0051db58  00 c0 8d e5                                      str ip, [sp]
0051db5c  04 40 8d e5                                      str r4, [sp, #4]
0051db60  c7 fe ff eb                                      bl #0x51d684
0051db64  b7 ff ff ea                                      b #0x51da48
0051db68  00 40 87 e5                                      str r4, [r7]
0051db6c  b5 ff ff ea                                      b #0x51da48
0051db70  03 20 a0 e1                                      mov r2, r3
0051db74  10 00 8d e2                                      add r0, sp, #0x10
0051db78  0a ff ff eb                                      bl #0x51d7a8
0051db7c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0051db80  00 30 87 e5                                      str r3, [r7]
0051db84  af ff ff ea                                      b #0x51da48
0051db88  05 10 a0 e1                                      mov r1, r5
0051db8c  0c 20 a0 e1                                      mov r2, ip
0051db90  06 30 a0 e1                                      mov r3, r6
0051db94  07 00 a0 e1                                      mov r0, r7
0051db98  00 e0 8d e5                                      str lr, [sp]
0051db9c  04 c0 8d e5                                      str ip, [sp, #4]
0051dba0  b7 fe ff eb                                      bl #0x51d684
0051dba4  a7 ff ff ea                                      b #0x51da48
0051dba8  04 30 94 e5                                      ldr r3, [r4, #4]
0051dbac  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0051dbb0  0c 00 54 e1                                      cmp r4, ip
0051dbb4  04 c0 a0 11                                      movne ip, r4
0051dbb8  04 00 00 1a                                      bne #0x51dbd0
0051dbbc  03 c0 a0 e1                                      mov ip, r3
0051dbc0  04 30 93 e5                                      ldr r3, [r3, #4]
0051dbc4  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0051dbc8  0a 00 5c e1                                      cmp ip, sl
0051dbcc  fa ff ff 0a                                      beq #0x51dbbc
0051dbd0  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0051dbd4  0a 00 53 e1                                      cmp r3, sl
0051dbd8  03 c0 a0 11                                      movne ip, r3
0051dbdc  79 ff ff ea                                      b #0x51d9c8
0051dbe0  04 30 94 e5                                      ldr r3, [r4, #4]
0051dbe4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0051dbe8  01 00 54 e1                                      cmp r4, r1
0051dbec  04 c0 a0 11                                      movne ip, r4
0051dbf0  04 00 00 1a                                      bne #0x51dc08
0051dbf4  03 c0 a0 e1                                      mov ip, r3
0051dbf8  04 30 93 e5                                      ldr r3, [r3, #4]
0051dbfc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0051dc00  0c 00 51 e1                                      cmp r1, ip
0051dc04  fa ff ff 0a                                      beq #0x51dbf4
0051dc08  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0051dc0c  01 00 53 e1                                      cmp r3, r1
0051dc10  03 c0 a0 11                                      movne ip, r3
0051dc14  ba ff ff ea                                      b #0x51db04
0051dc18  03 20 a0 e1                                      mov r2, r3
0051dc1c  20 00 8d e2                                      add r0, sp, #0x20
0051dc20  e0 fe ff eb                                      bl #0x51d7a8
0051dc24  20 30 9d e5                                      ldr r3, [sp, #0x20]
0051dc28  00 30 87 e5                                      str r3, [r7]
0051dc2c  85 ff ff ea                                      b #0x51da48
0051dc30  00 c0 a0 e3                                      mov ip, #0
0051dc34  04 20 a0 e1                                      mov r2, r4
0051dc38  10 10 8d e8                                      stm sp, {r4, ip}
0051dc3c  90 fe ff eb                                      bl #0x51d684
0051dc40  80 ff ff ea                                      b #0x51da48
0051dc44  05 10 a0 e1                                      mov r1, r5
0051dc48  06 20 a0 e1                                      mov r2, r6
0051dc4c  18 00 8d e2                                      add r0, sp, #0x18
0051dc50  d4 fe ff eb                                      bl #0x51d7a8
0051dc54  18 30 9d e5                                      ldr r3, [sp, #0x18]
0051dc58  00 30 87 e5                                      str r3, [r7]
0051dc5c  79 ff ff ea                                      b #0x51da48
0051dc60  05 10 a0 e1                                      mov r1, r5
0051dc64  04 20 a0 e1                                      mov r2, r4
0051dc68  06 30 a0 e1                                      mov r3, r6
0051dc6c  07 00 a0 e1                                      mov r0, r7
0051dc70  00 e0 8d e5                                      str lr, [sp]
0051dc74  04 40 8d e5                                      str r4, [sp, #4]
0051dc78  81 fe ff eb                                      bl #0x51d684
0051dc7c  71 ff ff ea                                      b #0x51da48
0051dc80  00 c0 a0 e3                                      mov ip, #0
0051dc84  05 10 a0 e1                                      mov r1, r5
0051dc88  04 20 a0 e1                                      mov r2, r4
0051dc8c  06 30 a0 e1                                      mov r3, r6
0051dc90  07 00 a0 e1                                      mov r0, r7
0051dc94  00 c0 8d e5                                      str ip, [sp]
0051dc98  04 40 8d e5                                      str r4, [sp, #4]
0051dc9c  78 fe ff eb                                      bl #0x51d684
0051dca0  68 ff ff ea                                      b #0x51da48

; FUNCTION 0x00523254, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7_InNodeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00523254  70 40 2d e9                                      push {r4, r5, r6, lr}
00523258  00 40 51 e2                                      subs r4, r1, #0
0052325c  00 60 a0 e1                                      mov r6, r0
00523260  08 00 00 0a                                      beq #0x523288
00523264  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00523268  06 00 a0 e1                                      mov r0, r6
0052326c  f8 ff ff eb                                      bl #0x523254
00523270  08 50 94 e5                                      ldr r5, [r4, #8]
00523274  04 00 a0 e1                                      mov r0, r4
00523278  18 10 a0 e3                                      mov r1, #0x18
0052327c  1f 97 07 eb                                      bl #0x708f00
00523280  00 40 55 e2                                      subs r4, r5, #0
00523284  f6 ff ff 1a                                      bne #0x523264
00523288  70 80 bd e8                                      pop {r4, r5, r6, pc}
