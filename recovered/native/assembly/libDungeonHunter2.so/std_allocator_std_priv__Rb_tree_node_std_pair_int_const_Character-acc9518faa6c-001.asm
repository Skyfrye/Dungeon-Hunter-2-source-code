; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003aa75c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, Character*> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiP9CharacterEEEE8allocateEjPKv.clone.8
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, Character*> > >::allocate(unsigned int, void const*) [clone .clone.8]
; decoder-mode: arm
003aa75c  04 e0 2d e5                                      str lr, [sp, #-4]!
003aa760  0c d0 4d e2                                      sub sp, sp, #0xc
003aa764  08 00 8d e2                                      add r0, sp, #8
003aa768  18 30 a0 e3                                      mov r3, #0x18
003aa76c  04 30 20 e5                                      str r3, [r0, #-4]!
003aa770  d2 79 0d eb                                      bl #0x708ec0
003aa774  0c d0 8d e2                                      add sp, sp, #0xc
003aa778  00 80 bd e8                                      ldm sp!, {pc}
