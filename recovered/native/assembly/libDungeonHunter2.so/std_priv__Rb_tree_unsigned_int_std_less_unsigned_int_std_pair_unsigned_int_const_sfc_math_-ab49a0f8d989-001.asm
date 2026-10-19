; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00529f14, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00529f14  70 40 2d e9                                      push {r4, r5, r6, lr}
00529f18  00 40 51 e2                                      subs r4, r1, #0
00529f1c  00 60 a0 e1                                      mov r6, r0
00529f20  08 00 00 0a                                      beq #0x529f48
00529f24  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00529f28  06 00 a0 e1                                      mov r0, r6
00529f2c  f8 ff ff eb                                      bl #0x529f14
00529f30  08 50 94 e5                                      ldr r5, [r4, #8]
00529f34  04 00 a0 e1                                      mov r0, r4
00529f38  20 10 a0 e3                                      mov r1, #0x20
00529f3c  ef 7b 07 eb                                      bl #0x708f00
00529f40  00 40 55 e2                                      subs r4, r5, #0
00529f44  f6 ff ff 1a                                      bne #0x529f24
00529f48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0052c3d0, declared_size=340, range_size=340, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE9_M_insertEPNS_18_Rb_tree_node_baseERKSD_SL_SL_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >::_M_insert(std::priv::_Rb_tree_node_base*, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> const&, std::priv::_Rb_tree_node_base*, std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
0052c3d0  02 00 51 e1                                      cmp r1, r2
0052c3d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052c3d8  01 40 a0 e1                                      mov r4, r1
0052c3dc  02 70 a0 e1                                      mov r7, r2
0052c3e0  00 50 a0 e1                                      mov r5, r0
0052c3e4  03 80 a0 e1                                      mov r8, r3
0052c3e8  36 00 00 0a                                      beq #0x52c4c8
0052c3ec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0052c3f0  00 00 53 e3                                      cmp r3, #0
0052c3f4  1b 00 00 0a                                      beq #0x52c468
0052c3f8  04 00 a0 e1                                      mov r0, r4
0052c3fc  eb ff ff eb                                      bl #0x52c3b0
0052c400  00 20 98 e5                                      ldr r2, [r8]
0052c404  00 30 a0 e3                                      mov r3, #0
0052c408  00 60 a0 e1                                      mov r6, r0
0052c40c  10 20 80 e5                                      str r2, [r0, #0x10]
0052c410  04 20 98 e5                                      ldr r2, [r8, #4]
0052c414  14 20 80 e5                                      str r2, [r0, #0x14]
0052c418  08 20 98 e5                                      ldr r2, [r8, #8]
0052c41c  18 20 80 e5                                      str r2, [r0, #0x18]
0052c420  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0052c424  0c 30 80 e5                                      str r3, [r0, #0xc]
0052c428  08 30 80 e5                                      str r3, [r0, #8]
0052c42c  1c 20 80 e5                                      str r2, [r0, #0x1c]
0052c430  0c 00 87 e5                                      str r0, [r7, #0xc]
0052c434  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0052c438  03 00 57 e1                                      cmp r7, r3
0052c43c  1f 00 00 0a                                      beq #0x52c4c0
0052c440  06 00 a0 e1                                      mov r0, r6
0052c444  04 70 86 e5                                      str r7, [r6, #4]
0052c448  04 10 84 e2                                      add r1, r4, #4
0052c44c  c3 9c f7 eb                                      bl #0x313760
0052c450  10 30 94 e5                                      ldr r3, [r4, #0x10]
0052c454  05 00 a0 e1                                      mov r0, r5
0052c458  01 30 83 e2                                      add r3, r3, #1
0052c45c  10 30 84 e5                                      str r3, [r4, #0x10]
0052c460  00 60 85 e5                                      str r6, [r5]
0052c464  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0052c468  18 30 9d e5                                      ldr r3, [sp, #0x18]
0052c46c  00 00 53 e3                                      cmp r3, #0
0052c470  26 00 00 0a                                      beq #0x52c510
0052c474  04 00 a0 e1                                      mov r0, r4
0052c478  cc ff ff eb                                      bl #0x52c3b0
0052c47c  00 20 98 e5                                      ldr r2, [r8]
0052c480  00 30 a0 e3                                      mov r3, #0
0052c484  00 60 a0 e1                                      mov r6, r0
0052c488  10 20 80 e5                                      str r2, [r0, #0x10]
0052c48c  04 20 98 e5                                      ldr r2, [r8, #4]
0052c490  14 20 80 e5                                      str r2, [r0, #0x14]
0052c494  08 20 98 e5                                      ldr r2, [r8, #8]
0052c498  18 20 80 e5                                      str r2, [r0, #0x18]
0052c49c  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0052c4a0  0c 30 80 e5                                      str r3, [r0, #0xc]
0052c4a4  08 30 80 e5                                      str r3, [r0, #8]
0052c4a8  1c 20 80 e5                                      str r2, [r0, #0x1c]
0052c4ac  08 00 87 e5                                      str r0, [r7, #8]
0052c4b0  08 30 94 e5                                      ldr r3, [r4, #8]
0052c4b4  03 00 57 e1                                      cmp r7, r3
0052c4b8  08 00 84 05                                      streq r0, [r4, #8]
0052c4bc  df ff ff ea                                      b #0x52c440
0052c4c0  0c 60 84 e5                                      str r6, [r4, #0xc]
0052c4c4  dd ff ff ea                                      b #0x52c440
0052c4c8  01 00 a0 e1                                      mov r0, r1
0052c4cc  b7 ff ff eb                                      bl #0x52c3b0
0052c4d0  00 20 98 e5                                      ldr r2, [r8]
0052c4d4  00 30 a0 e3                                      mov r3, #0
0052c4d8  00 60 a0 e1                                      mov r6, r0
0052c4dc  10 20 80 e5                                      str r2, [r0, #0x10]
0052c4e0  04 20 98 e5                                      ldr r2, [r8, #4]
0052c4e4  14 20 80 e5                                      str r2, [r0, #0x14]
0052c4e8  08 20 98 e5                                      ldr r2, [r8, #8]
0052c4ec  18 20 80 e5                                      str r2, [r0, #0x18]
0052c4f0  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0052c4f4  0c 30 80 e5                                      str r3, [r0, #0xc]
0052c4f8  08 30 80 e5                                      str r3, [r0, #8]
0052c4fc  1c 20 80 e5                                      str r2, [r0, #0x1c]
0052c500  08 00 84 e5                                      str r0, [r4, #8]
0052c504  04 00 84 e5                                      str r0, [r4, #4]
0052c508  0c 00 84 e5                                      str r0, [r4, #0xc]
0052c50c  cb ff ff ea                                      b #0x52c440
0052c510  00 20 98 e5                                      ldr r2, [r8]
0052c514  10 30 97 e5                                      ldr r3, [r7, #0x10]
0052c518  03 00 52 e1                                      cmp r2, r3
0052c51c  b5 ff ff 2a                                      bhs #0x52c3f8
0052c520  d3 ff ff ea                                      b #0x52c474

; FUNCTION 0x0052c524, declared_size=392, range_size=392, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueERKSD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >::insert_unique(std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> const&)
; decoder-mode: arm
0052c524  70 40 2d e9                                      push {r4, r5, r6, lr}
0052c528  04 c0 91 e5                                      ldr ip, [r1, #4]
0052c52c  10 d0 4d e2                                      sub sp, sp, #0x10
0052c530  00 40 a0 e1                                      mov r4, r0
0052c534  00 00 5c e3                                      cmp ip, #0
0052c538  02 30 a0 e1                                      mov r3, r2
0052c53c  01 c0 a0 01                                      moveq ip, r1
0052c540  15 00 00 0a                                      beq #0x52c59c
0052c544  00 60 92 e5                                      ldr r6, [r2]
0052c548  00 00 00 ea                                      b #0x52c550
0052c54c  02 c0 a0 e1                                      mov ip, r2
0052c550  10 00 9c e5                                      ldr r0, [ip, #0x10]
0052c554  01 50 a0 e3                                      mov r5, #1
0052c558  06 00 50 e1                                      cmp r0, r6
0052c55c  08 20 9c 85                                      ldrhi r2, [ip, #8]
0052c560  0c 20 9c 95                                      ldrls r2, [ip, #0xc]
0052c564  00 50 a0 93                                      movls r5, #0
0052c568  00 00 52 e3                                      cmp r2, #0
0052c56c  f6 ff ff 1a                                      bne #0x52c54c
0052c570  00 00 55 e3                                      cmp r5, #0
0052c574  0c 50 a0 01                                      moveq r5, ip
0052c578  07 00 00 1a                                      bne #0x52c59c
0052c57c  00 00 56 e1                                      cmp r6, r0
0052c580  00 30 a0 93                                      movls r3, #0
0052c584  00 50 84 95                                      strls r5, [r4]
0052c588  04 30 c4 95                                      strbls r3, [r4, #4]
0052c58c  1c 00 00 8a                                      bhi #0x52c604
0052c590  04 00 a0 e1                                      mov r0, r4
0052c594  10 d0 8d e2                                      add sp, sp, #0x10
0052c598  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052c59c  08 20 91 e5                                      ldr r2, [r1, #8]
0052c5a0  02 00 5c e1                                      cmp ip, r2
0052c5a4  36 00 00 0a                                      beq #0x52c684
0052c5a8  00 20 dc e5                                      ldrb r2, [ip]
0052c5ac  00 00 52 e3                                      cmp r2, #0
0052c5b0  03 00 00 1a                                      bne #0x52c5c4
0052c5b4  04 20 9c e5                                      ldr r2, [ip, #4]
0052c5b8  04 20 92 e5                                      ldr r2, [r2, #4]
0052c5bc  02 00 5c e1                                      cmp ip, r2
0052c5c0  2a 00 00 0a                                      beq #0x52c670
0052c5c4  08 00 9c e5                                      ldr r0, [ip, #8]
0052c5c8  00 00 50 e3                                      cmp r0, #0
0052c5cc  01 00 00 1a                                      bne #0x52c5d8
0052c5d0  16 00 00 ea                                      b #0x52c630
0052c5d4  02 00 a0 e1                                      mov r0, r2
0052c5d8  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0052c5dc  00 00 52 e3                                      cmp r2, #0
0052c5e0  fb ff ff 1a                                      bne #0x52c5d4
0052c5e4  00 60 93 e5                                      ldr r6, [r3]
0052c5e8  00 50 a0 e1                                      mov r5, r0
0052c5ec  10 00 90 e5                                      ldr r0, [r0, #0x10]
0052c5f0  00 00 56 e1                                      cmp r6, r0
0052c5f4  00 30 a0 93                                      movls r3, #0
0052c5f8  00 50 84 95                                      strls r5, [r4]
0052c5fc  04 30 c4 95                                      strbls r3, [r4, #4]
0052c600  e2 ff ff 9a                                      bls #0x52c590
0052c604  0c 20 a0 e1                                      mov r2, ip
0052c608  08 00 8d e2                                      add r0, sp, #8
0052c60c  00 c0 a0 e3                                      mov ip, #0
0052c610  04 c0 8d e5                                      str ip, [sp, #4]
0052c614  00 c0 8d e5                                      str ip, [sp]
0052c618  6c ff ff eb                                      bl #0x52c3d0
0052c61c  08 30 9d e5                                      ldr r3, [sp, #8]
0052c620  01 20 a0 e3                                      mov r2, #1
0052c624  04 20 c4 e5                                      strb r2, [r4, #4]
0052c628  00 30 84 e5                                      str r3, [r4]
0052c62c  d7 ff ff ea                                      b #0x52c590
0052c630  04 20 9c e5                                      ldr r2, [ip, #4]
0052c634  08 00 92 e5                                      ldr r0, [r2, #8]
0052c638  00 00 5c e1                                      cmp ip, r0
0052c63c  02 50 a0 11                                      movne r5, r2
0052c640  00 60 93 15                                      ldrne r6, [r3]
0052c644  10 00 92 15                                      ldrne r0, [r2, #0x10]
0052c648  01 00 00 0a                                      beq #0x52c654
0052c64c  ca ff ff ea                                      b #0x52c57c
0052c650  05 20 a0 e1                                      mov r2, r5
0052c654  04 50 92 e5                                      ldr r5, [r2, #4]
0052c658  08 00 95 e5                                      ldr r0, [r5, #8]
0052c65c  02 00 50 e1                                      cmp r0, r2
0052c660  fa ff ff 0a                                      beq #0x52c650
0052c664  00 60 93 e5                                      ldr r6, [r3]
0052c668  10 00 95 e5                                      ldr r0, [r5, #0x10]
0052c66c  c2 ff ff ea                                      b #0x52c57c
0052c670  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0052c674  00 60 93 e5                                      ldr r6, [r3]
0052c678  02 50 a0 e1                                      mov r5, r2
0052c67c  10 00 92 e5                                      ldr r0, [r2, #0x10]
0052c680  bd ff ff ea                                      b #0x52c57c
0052c684  0c 20 a0 e1                                      mov r2, ip
0052c688  00 e0 a0 e3                                      mov lr, #0
0052c68c  0c 00 8d e2                                      add r0, sp, #0xc
0052c690  00 50 8d e8                                      stm sp, {ip, lr}
0052c694  4d ff ff eb                                      bl #0x52c3d0
0052c698  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0052c69c  01 20 a0 e3                                      mov r2, #1
0052c6a0  04 20 c4 e5                                      strb r2, [r4, #4]
0052c6a4  00 30 84 e5                                      str r3, [r4]
0052c6a8  b8 ff ff ea                                      b #0x52c590

; FUNCTION 0x0052c6ac, declared_size=884, range_size=884, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE13insert_uniqueENS_17_Rb_tree_iteratorISD_SH_EERKSD_
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >::insert_unique(std::priv::_Rb_tree_iterator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >, std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> const&)
; decoder-mode: arm
0052c6ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0052c6b0  00 40 92 e5                                      ldr r4, [r2]
0052c6b4  08 20 91 e5                                      ldr r2, [r1, #8]
0052c6b8  2c d0 4d e2                                      sub sp, sp, #0x2c
0052c6bc  01 50 a0 e1                                      mov r5, r1
0052c6c0  02 00 54 e1                                      cmp r4, r2
0052c6c4  00 70 a0 e1                                      mov r7, r0
0052c6c8  03 60 a0 e1                                      mov r6, r3
0052c6cc  5a 00 00 0a                                      beq #0x52c83c
0052c6d0  01 00 54 e1                                      cmp r4, r1
0052c6d4  78 00 00 0a                                      beq #0x52c8bc
0052c6d8  00 30 d4 e5                                      ldrb r3, [r4]
0052c6dc  00 00 53 e3                                      cmp r3, #0
0052c6e0  3a 00 00 0a                                      beq #0x52c7d0
0052c6e4  08 c0 94 e5                                      ldr ip, [r4, #8]
0052c6e8  00 00 5c e3                                      cmp ip, #0
0052c6ec  01 00 00 1a                                      bne #0x52c6f8
0052c6f0  3e 00 00 ea                                      b #0x52c7f0
0052c6f4  03 c0 a0 e1                                      mov ip, r3
0052c6f8  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0052c6fc  00 00 53 e3                                      cmp r3, #0
0052c700  fb ff ff 1a                                      bne #0x52c6f4
0052c704  00 20 96 e5                                      ldr r2, [r6]
0052c708  10 00 94 e5                                      ldr r0, [r4, #0x10]
0052c70c  00 00 52 e1                                      cmp r2, r0
0052c710  00 10 a0 23                                      movhs r1, #0
0052c714  01 10 a0 33                                      movlo r1, #1
0052c718  00 00 51 e3                                      cmp r1, #0
0052c71c  1b 00 00 1a                                      bne #0x52c790
0052c720  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0052c724  00 00 58 e3                                      cmp r8, #0
0052c728  7d 00 00 0a                                      beq #0x52c924
0052c72c  08 c0 a0 e1                                      mov ip, r8
0052c730  00 00 00 ea                                      b #0x52c738
0052c734  03 c0 a0 e1                                      mov ip, r3
0052c738  08 30 9c e5                                      ldr r3, [ip, #8]
0052c73c  00 00 53 e3                                      cmp r3, #0
0052c740  fb ff ff 1a                                      bne #0x52c734
0052c744  00 00 51 e3                                      cmp r1, #0
0052c748  34 00 00 1a                                      bne #0x52c820
0052c74c  00 00 52 e1                                      cmp r2, r0
0052c750  63 00 00 9a                                      bls #0x52c8e4
0052c754  0c 00 55 e1                                      cmp r5, ip
0052c758  02 00 00 0a                                      beq #0x52c768
0052c75c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052c760  03 00 52 e1                                      cmp r2, r3
0052c764  2d 00 00 2a                                      bhs #0x52c820
0052c768  00 00 58 e3                                      cmp r8, #0
0052c76c  4a 00 00 1a                                      bne #0x52c89c
0052c770  05 10 a0 e1                                      mov r1, r5
0052c774  04 20 a0 e1                                      mov r2, r4
0052c778  06 30 a0 e1                                      mov r3, r6
0052c77c  07 00 a0 e1                                      mov r0, r7
0052c780  00 80 8d e5                                      str r8, [sp]
0052c784  04 40 8d e5                                      str r4, [sp, #4]
0052c788  10 ff ff eb                                      bl #0x52c3d0
0052c78c  0c 00 00 ea                                      b #0x52c7c4
0052c790  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052c794  03 00 52 e1                                      cmp r2, r3
0052c798  e0 ff ff 9a                                      bls #0x52c720
0052c79c  0c e0 9c e5                                      ldr lr, [ip, #0xc]
0052c7a0  00 00 5e e3                                      cmp lr, #0
0052c7a4  56 00 00 0a                                      beq #0x52c904
0052c7a8  00 c0 a0 e3                                      mov ip, #0
0052c7ac  05 10 a0 e1                                      mov r1, r5
0052c7b0  04 20 a0 e1                                      mov r2, r4
0052c7b4  06 30 a0 e1                                      mov r3, r6
0052c7b8  07 00 a0 e1                                      mov r0, r7
0052c7bc  10 10 8d e8                                      stm sp, {r4, ip}
0052c7c0  02 ff ff eb                                      bl #0x52c3d0
0052c7c4  07 00 a0 e1                                      mov r0, r7
0052c7c8  2c d0 8d e2                                      add sp, sp, #0x2c
0052c7cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0052c7d0  04 30 94 e5                                      ldr r3, [r4, #4]
0052c7d4  04 30 93 e5                                      ldr r3, [r3, #4]
0052c7d8  03 00 54 e1                                      cmp r4, r3
0052c7dc  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0052c7e0  c7 ff ff 0a                                      beq #0x52c704
0052c7e4  08 c0 94 e5                                      ldr ip, [r4, #8]
0052c7e8  00 00 5c e3                                      cmp ip, #0
0052c7ec  c1 ff ff 1a                                      bne #0x52c6f8
0052c7f0  04 c0 94 e5                                      ldr ip, [r4, #4]
0052c7f4  08 30 9c e5                                      ldr r3, [ip, #8]
0052c7f8  03 00 54 e1                                      cmp r4, r3
0052c7fc  01 00 00 0a                                      beq #0x52c808
0052c800  bf ff ff ea                                      b #0x52c704
0052c804  03 c0 a0 e1                                      mov ip, r3
0052c808  04 30 9c e5                                      ldr r3, [ip, #4]
0052c80c  08 20 93 e5                                      ldr r2, [r3, #8]
0052c810  0c 00 52 e1                                      cmp r2, ip
0052c814  fa ff ff 0a                                      beq #0x52c804
0052c818  03 c0 a0 e1                                      mov ip, r3
0052c81c  b8 ff ff ea                                      b #0x52c704
0052c820  05 10 a0 e1                                      mov r1, r5
0052c824  06 20 a0 e1                                      mov r2, r6
0052c828  08 00 8d e2                                      add r0, sp, #8
0052c82c  3c ff ff eb                                      bl #0x52c524
0052c830  08 30 9d e5                                      ldr r3, [sp, #8]
0052c834  00 30 87 e5                                      str r3, [r7]
0052c838  e1 ff ff ea                                      b #0x52c7c4
0052c83c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0052c840  00 00 52 e3                                      cmp r2, #0
0052c844  52 00 00 0a                                      beq #0x52c994
0052c848  00 20 93 e5                                      ldr r2, [r3]
0052c84c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0052c850  0c 00 52 e1                                      cmp r2, ip
0052c854  54 00 00 3a                                      blo #0x52c9ac
0052c858  21 00 00 9a                                      bls #0x52c8e4
0052c85c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0052c860  00 00 5e e3                                      cmp lr, #0
0052c864  3c 00 00 0a                                      beq #0x52c95c
0052c868  0e c0 a0 e1                                      mov ip, lr
0052c86c  00 00 00 ea                                      b #0x52c874
0052c870  03 c0 a0 e1                                      mov ip, r3
0052c874  08 30 9c e5                                      ldr r3, [ip, #8]
0052c878  00 00 53 e3                                      cmp r3, #0
0052c87c  fb ff ff 1a                                      bne #0x52c870
0052c880  0c 00 55 e1                                      cmp r5, ip
0052c884  5c 00 00 0a                                      beq #0x52c9fc
0052c888  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052c88c  03 00 52 e1                                      cmp r2, r3
0052c890  4a 00 00 2a                                      bhs #0x52c9c0
0052c894  00 00 5e e3                                      cmp lr, #0
0052c898  4f 00 00 0a                                      beq #0x52c9dc
0052c89c  00 e0 a0 e3                                      mov lr, #0
0052c8a0  05 10 a0 e1                                      mov r1, r5
0052c8a4  0c 20 a0 e1                                      mov r2, ip
0052c8a8  06 30 a0 e1                                      mov r3, r6
0052c8ac  07 00 a0 e1                                      mov r0, r7
0052c8b0  00 50 8d e8                                      stm sp, {ip, lr}
0052c8b4  c5 fe ff eb                                      bl #0x52c3d0
0052c8b8  c1 ff ff ea                                      b #0x52c7c4
0052c8bc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0052c8c0  00 c0 93 e5                                      ldr ip, [r3]
0052c8c4  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0052c8c8  0c 00 5e e1                                      cmp lr, ip
0052c8cc  06 00 00 2a                                      bhs #0x52c8ec
0052c8d0  00 c0 a0 e3                                      mov ip, #0
0052c8d4  00 c0 8d e5                                      str ip, [sp]
0052c8d8  04 40 8d e5                                      str r4, [sp, #4]
0052c8dc  bb fe ff eb                                      bl #0x52c3d0
0052c8e0  b7 ff ff ea                                      b #0x52c7c4
0052c8e4  00 40 87 e5                                      str r4, [r7]
0052c8e8  b5 ff ff ea                                      b #0x52c7c4
0052c8ec  03 20 a0 e1                                      mov r2, r3
0052c8f0  10 00 8d e2                                      add r0, sp, #0x10
0052c8f4  0a ff ff eb                                      bl #0x52c524
0052c8f8  10 30 9d e5                                      ldr r3, [sp, #0x10]
0052c8fc  00 30 87 e5                                      str r3, [r7]
0052c900  af ff ff ea                                      b #0x52c7c4
0052c904  05 10 a0 e1                                      mov r1, r5
0052c908  0c 20 a0 e1                                      mov r2, ip
0052c90c  06 30 a0 e1                                      mov r3, r6
0052c910  07 00 a0 e1                                      mov r0, r7
0052c914  00 e0 8d e5                                      str lr, [sp]
0052c918  04 c0 8d e5                                      str ip, [sp, #4]
0052c91c  ab fe ff eb                                      bl #0x52c3d0
0052c920  a7 ff ff ea                                      b #0x52c7c4
0052c924  04 30 94 e5                                      ldr r3, [r4, #4]
0052c928  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0052c92c  0c 00 54 e1                                      cmp r4, ip
0052c930  04 c0 a0 11                                      movne ip, r4
0052c934  04 00 00 1a                                      bne #0x52c94c
0052c938  03 c0 a0 e1                                      mov ip, r3
0052c93c  04 30 93 e5                                      ldr r3, [r3, #4]
0052c940  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0052c944  0a 00 5c e1                                      cmp ip, sl
0052c948  fa ff ff 0a                                      beq #0x52c938
0052c94c  0c a0 9c e5                                      ldr sl, [ip, #0xc]
0052c950  0a 00 53 e1                                      cmp r3, sl
0052c954  03 c0 a0 11                                      movne ip, r3
0052c958  79 ff ff ea                                      b #0x52c744
0052c95c  04 30 94 e5                                      ldr r3, [r4, #4]
0052c960  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0052c964  01 00 54 e1                                      cmp r4, r1
0052c968  04 c0 a0 11                                      movne ip, r4
0052c96c  04 00 00 1a                                      bne #0x52c984
0052c970  03 c0 a0 e1                                      mov ip, r3
0052c974  04 30 93 e5                                      ldr r3, [r3, #4]
0052c978  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0052c97c  0c 00 51 e1                                      cmp r1, ip
0052c980  fa ff ff 0a                                      beq #0x52c970
0052c984  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0052c988  01 00 53 e1                                      cmp r3, r1
0052c98c  03 c0 a0 11                                      movne ip, r3
0052c990  ba ff ff ea                                      b #0x52c880
0052c994  03 20 a0 e1                                      mov r2, r3
0052c998  20 00 8d e2                                      add r0, sp, #0x20
0052c99c  e0 fe ff eb                                      bl #0x52c524
0052c9a0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0052c9a4  00 30 87 e5                                      str r3, [r7]
0052c9a8  85 ff ff ea                                      b #0x52c7c4
0052c9ac  00 c0 a0 e3                                      mov ip, #0
0052c9b0  04 20 a0 e1                                      mov r2, r4
0052c9b4  10 10 8d e8                                      stm sp, {r4, ip}
0052c9b8  84 fe ff eb                                      bl #0x52c3d0
0052c9bc  80 ff ff ea                                      b #0x52c7c4
0052c9c0  05 10 a0 e1                                      mov r1, r5
0052c9c4  06 20 a0 e1                                      mov r2, r6
0052c9c8  18 00 8d e2                                      add r0, sp, #0x18
0052c9cc  d4 fe ff eb                                      bl #0x52c524
0052c9d0  18 30 9d e5                                      ldr r3, [sp, #0x18]
0052c9d4  00 30 87 e5                                      str r3, [r7]
0052c9d8  79 ff ff ea                                      b #0x52c7c4
0052c9dc  05 10 a0 e1                                      mov r1, r5
0052c9e0  04 20 a0 e1                                      mov r2, r4
0052c9e4  06 30 a0 e1                                      mov r3, r6
0052c9e8  07 00 a0 e1                                      mov r0, r7
0052c9ec  00 e0 8d e5                                      str lr, [sp]
0052c9f0  04 40 8d e5                                      str r4, [sp, #4]
0052c9f4  75 fe ff eb                                      bl #0x52c3d0
0052c9f8  71 ff ff ea                                      b #0x52c7c4
0052c9fc  00 c0 a0 e3                                      mov ip, #0
0052ca00  05 10 a0 e1                                      mov r1, r5
0052ca04  04 20 a0 e1                                      mov r2, r4
0052ca08  06 30 a0 e1                                      mov r3, r6
0052ca0c  07 00 a0 e1                                      mov r0, r7
0052ca10  00 c0 8d e5                                      str ip, [sp]
0052ca14  04 40 8d e5                                      str r4, [sp, #4]
0052ca18  6c fe ff eb                                      bl #0x52c3d0
0052ca1c  68 ff ff ea                                      b #0x52c7c4
