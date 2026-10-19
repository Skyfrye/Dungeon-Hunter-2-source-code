; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051e118, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, PFGInnerEdge*> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjP12PFGInnerEdgeEEEE8allocateEjPKv.clone.10
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, PFGInnerEdge*> > >::allocate(unsigned int, void const*) [clone .clone.10]
; decoder-mode: arm
0051e118  04 e0 2d e5                                      str lr, [sp, #-4]!
0051e11c  0c d0 4d e2                                      sub sp, sp, #0xc
0051e120  08 00 8d e2                                      add r0, sp, #8
0051e124  18 30 a0 e3                                      mov r3, #0x18
0051e128  04 30 20 e5                                      str r3, [r0, #-4]!
0051e12c  63 ab 07 eb                                      bl #0x708ec0
0051e130  0c d0 8d e2                                      add sp, sp, #0xc
0051e134  00 80 bd e8                                      ldm sp!, {pc}
