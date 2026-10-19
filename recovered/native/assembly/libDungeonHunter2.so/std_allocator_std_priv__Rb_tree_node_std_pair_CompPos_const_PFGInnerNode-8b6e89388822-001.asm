; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051eab4, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<CompPos const, PFGInnerNode*> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIK7CompPosP12PFGInnerNodeEEEE8allocateEjPKv.clone.11
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<CompPos const, PFGInnerNode*> > >::allocate(unsigned int, void const*) [clone .clone.11]
; decoder-mode: arm
0051eab4  04 e0 2d e5                                      str lr, [sp, #-4]!
0051eab8  0c d0 4d e2                                      sub sp, sp, #0xc
0051eabc  08 00 8d e2                                      add r0, sp, #8
0051eac0  20 30 a0 e3                                      mov r3, #0x20
0051eac4  04 30 20 e5                                      str r3, [r0, #-4]!
0051eac8  fc a8 07 eb                                      bl #0x708ec0
0051eacc  0c d0 8d e2                                      add sp, sp, #0xc
0051ead0  00 80 bd e8                                      ldm sp!, {pc}
