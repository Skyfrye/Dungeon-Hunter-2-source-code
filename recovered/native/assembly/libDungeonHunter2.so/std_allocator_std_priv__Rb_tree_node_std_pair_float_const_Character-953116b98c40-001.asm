; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d6eec, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<float const, Character*> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKfP9CharacterEEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<float const, Character*> > >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
003d6eec  04 e0 2d e5                                      str lr, [sp, #-4]!
003d6ef0  0c d0 4d e2                                      sub sp, sp, #0xc
003d6ef4  08 00 8d e2                                      add r0, sp, #8
003d6ef8  18 30 a0 e3                                      mov r3, #0x18
003d6efc  04 30 20 e5                                      str r3, [r0, #-4]!
003d6f00  ee c7 0c eb                                      bl #0x708ec0
003d6f04  0c d0 8d e2                                      add sp, sp, #0xc
003d6f08  00 80 bd e8                                      ldm sp!, {pc}
