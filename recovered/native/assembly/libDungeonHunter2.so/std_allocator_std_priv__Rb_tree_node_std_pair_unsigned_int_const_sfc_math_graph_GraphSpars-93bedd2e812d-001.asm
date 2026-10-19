; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051d664, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjPN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7_InNodeEEEEE8allocateEjPKv.clone.9
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode*> > >::allocate(unsigned int, void const*) [clone .clone.9]
; decoder-mode: arm
0051d664  04 e0 2d e5                                      str lr, [sp, #-4]!
0051d668  0c d0 4d e2                                      sub sp, sp, #0xc
0051d66c  08 00 8d e2                                      add r0, sp, #8
0051d670  18 30 a0 e3                                      mov r3, #0x18
0051d674  04 30 20 e5                                      str r3, [r0, #-4]!
0051d678  10 ae 07 eb                                      bl #0x708ec0
0051d67c  0c d0 8d e2                                      add sp, sp, #0xc
0051d680  00 80 bd e8                                      ldm sp!, {pc}
