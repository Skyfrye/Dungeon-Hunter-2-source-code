; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f542c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISsEEE8allocateEjPKv.clone.9
; demangled: std::allocator<std::priv::_Rb_tree_node<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::allocate(unsigned int, void const*) [clone .clone.9]
; decoder-mode: arm
003f542c  04 e0 2d e5                                      str lr, [sp, #-4]!
003f5430  0c d0 4d e2                                      sub sp, sp, #0xc
003f5434  08 00 8d e2                                      add r0, sp, #8
003f5438  28 30 a0 e3                                      mov r3, #0x28
003f543c  04 30 20 e5                                      str r3, [r0, #-4]!
003f5440  9e 4e 0c eb                                      bl #0x708ec0
003f5444  0c d0 8d e2                                      add sp, sp, #0xc
003f5448  00 80 bd e8                                      ldm sp!, {pc}
