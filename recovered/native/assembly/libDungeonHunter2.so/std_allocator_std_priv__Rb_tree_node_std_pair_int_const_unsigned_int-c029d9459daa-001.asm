; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ab39c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, unsigned int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKijEEEE8allocateEjPKv.clone.11
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, unsigned int> > >::allocate(unsigned int, void const*) [clone .clone.11]
; decoder-mode: arm
003ab39c  04 e0 2d e5                                      str lr, [sp, #-4]!
003ab3a0  0c d0 4d e2                                      sub sp, sp, #0xc
003ab3a4  08 00 8d e2                                      add r0, sp, #8
003ab3a8  18 30 a0 e3                                      mov r3, #0x18
003ab3ac  04 30 20 e5                                      str r3, [r0, #-4]!
003ab3b0  c2 76 0d eb                                      bl #0x708ec0
003ab3b4  0c d0 8d e2                                      add sp, sp, #0xc
003ab3b8  00 80 bd e8                                      ldm sp!, {pc}
