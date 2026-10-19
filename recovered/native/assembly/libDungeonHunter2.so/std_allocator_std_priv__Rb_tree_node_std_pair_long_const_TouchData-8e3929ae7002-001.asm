; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003824dc, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<long const, TouchData> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKl9TouchDataEEEE8allocateEjPKv.clone.2
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<long const, TouchData> > >::allocate(unsigned int, void const*) [clone .clone.2]
; decoder-mode: arm
003824dc  04 e0 2d e5                                      str lr, [sp, #-4]!
003824e0  0c d0 4d e2                                      sub sp, sp, #0xc
003824e4  08 00 8d e2                                      add r0, sp, #8
003824e8  1c 30 a0 e3                                      mov r3, #0x1c
003824ec  04 30 20 e5                                      str r3, [r0, #-4]!
003824f0  72 1a 0e eb                                      bl #0x708ec0
003824f4  0c d0 8d e2                                      add sp, sp, #0xc
003824f8  00 80 bd e8                                      ldm sp!, {pc}
