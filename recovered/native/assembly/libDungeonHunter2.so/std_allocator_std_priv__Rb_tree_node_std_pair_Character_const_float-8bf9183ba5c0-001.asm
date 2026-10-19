; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d73ac, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<Character* const, float> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKP9CharacterfEEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<Character* const, float> > >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
003d73ac  04 e0 2d e5                                      str lr, [sp, #-4]!
003d73b0  0c d0 4d e2                                      sub sp, sp, #0xc
003d73b4  08 00 8d e2                                      add r0, sp, #8
003d73b8  18 30 a0 e3                                      mov r3, #0x18
003d73bc  04 30 20 e5                                      str r3, [r0, #-4]!
003d73c0  be c6 0c eb                                      bl #0x708ec0
003d73c4  0c d0 8d e2                                      add sp, sp, #0xc
003d73c8  00 80 bd e8                                      ldm sp!, {pc}
