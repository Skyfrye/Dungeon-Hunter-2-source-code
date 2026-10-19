; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037d350, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjiEEEE8allocateEjPKv.clone.6
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, int> > >::allocate(unsigned int, void const*) [clone .clone.6]
; decoder-mode: arm
0037d350  04 e0 2d e5                                      str lr, [sp, #-4]!
0037d354  0c d0 4d e2                                      sub sp, sp, #0xc
0037d358  08 00 8d e2                                      add r0, sp, #8
0037d35c  18 30 a0 e3                                      mov r3, #0x18
0037d360  04 30 20 e5                                      str r3, [r0, #-4]!
0037d364  d5 2e 0e eb                                      bl #0x708ec0
0037d368  0c d0 8d e2                                      add sp, sp, #0xc
0037d36c  00 80 bd e8                                      ldm sp!, {pc}
