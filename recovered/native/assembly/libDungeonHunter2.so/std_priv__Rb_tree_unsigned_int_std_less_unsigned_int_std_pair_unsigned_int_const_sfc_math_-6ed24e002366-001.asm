; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522f38, declared_size=56, range_size=56, mode=arm
; class-group: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*> > >
; alias: _ZNSt4priv8_Rb_treeIjSt4lessIjESt4pairIKjPN3sfc4math5graph11GraphSparseI12PFGOuterEdgeE7_InNodeEENS_10_Select1stISD_EENS_11_MapTraitsTISD_EESaISD_EE8_M_eraseEPNS_18_Rb_tree_node_baseE
; demangled: std::priv::_Rb_tree<unsigned int, std::less<unsigned int>, std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*>, std::priv::_Select1st<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*> >, std::priv::_MapTraitsT<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*> >, std::allocator<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGOuterEdge>::_InNode*> > >::_M_erase(std::priv::_Rb_tree_node_base*)
; decoder-mode: arm
00522f38  70 40 2d e9                                      push {r4, r5, r6, lr}
00522f3c  00 40 51 e2                                      subs r4, r1, #0
00522f40  00 60 a0 e1                                      mov r6, r0
00522f44  08 00 00 0a                                      beq #0x522f6c
00522f48  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00522f4c  06 00 a0 e1                                      mov r0, r6
00522f50  f8 ff ff eb                                      bl #0x522f38
00522f54  08 50 94 e5                                      ldr r5, [r4, #8]
00522f58  04 00 a0 e1                                      mov r0, r4
00522f5c  18 10 a0 e3                                      mov r1, #0x18
00522f60  e6 97 07 eb                                      bl #0x708f00
00522f64  00 40 55 e2                                      subs r4, r5, #0
00522f68  f6 ff ff 1a                                      bne #0x522f48
00522f6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
