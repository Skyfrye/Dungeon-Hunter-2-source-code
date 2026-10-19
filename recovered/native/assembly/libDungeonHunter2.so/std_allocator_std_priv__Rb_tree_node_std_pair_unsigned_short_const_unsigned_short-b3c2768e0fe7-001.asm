; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a69a0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned short const, unsigned short> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKttEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned short const, unsigned short> > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: arm
005a69a0  04 e0 2d e5                                      str lr, [sp, #-4]!
005a69a4  0c d0 4d e2                                      sub sp, sp, #0xc
005a69a8  08 00 8d e2                                      add r0, sp, #8
005a69ac  14 30 a0 e3                                      mov r3, #0x14
005a69b0  04 30 20 e5                                      str r3, [r0, #-4]!
005a69b4  41 89 05 eb                                      bl #0x708ec0
005a69b8  0c d0 8d e2                                      add sp, sp, #0xc
005a69bc  00 80 bd e8                                      ldm sp!, {pc}
