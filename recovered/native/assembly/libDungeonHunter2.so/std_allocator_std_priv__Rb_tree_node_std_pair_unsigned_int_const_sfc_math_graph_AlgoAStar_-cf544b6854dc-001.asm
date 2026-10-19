; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00529734, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeEEEEE8allocateEjPKv.clone.18
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >::allocate(unsigned int, void const*) [clone .clone.18]
; decoder-mode: arm
00529734  04 e0 2d e5                                      str lr, [sp, #-4]!
00529738  0c d0 4d e2                                      sub sp, sp, #0xc
0052973c  08 00 8d e2                                      add r0, sp, #8
00529740  20 30 a0 e3                                      mov r3, #0x20
00529744  04 30 20 e5                                      str r3, [r0, #-4]!
00529748  dc 7d 07 eb                                      bl #0x708ec0
0052974c  0c d0 8d e2                                      add sp, sp, #0xc
00529750  00 80 bd e8                                      ldm sp!, {pc}
