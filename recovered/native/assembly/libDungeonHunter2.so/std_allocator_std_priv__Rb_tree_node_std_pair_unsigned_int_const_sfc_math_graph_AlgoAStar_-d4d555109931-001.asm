; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052c3b0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeEEEEE8allocateEjPKv.clone.17
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >::allocate(unsigned int, void const*) [clone .clone.17]
; decoder-mode: arm
0052c3b0  04 e0 2d e5                                      str lr, [sp, #-4]!
0052c3b4  0c d0 4d e2                                      sub sp, sp, #0xc
0052c3b8  08 00 8d e2                                      add r0, sp, #8
0052c3bc  20 30 a0 e3                                      mov r3, #0x20
0052c3c0  04 30 20 e5                                      str r3, [r0, #-4]!
0052c3c4  bd 72 07 eb                                      bl #0x708ec0
0052c3c8  0c d0 8d e2                                      add sp, sp, #0xc
0052c3cc  00 80 bd e8                                      ldm sp!, {pc}
