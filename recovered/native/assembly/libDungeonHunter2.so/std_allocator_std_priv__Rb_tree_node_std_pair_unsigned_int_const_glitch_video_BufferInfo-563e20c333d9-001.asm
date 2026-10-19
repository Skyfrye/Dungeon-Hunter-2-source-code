; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b1c28, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, glitch::video::BufferInfo> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjN6glitch5video10BufferInfoEEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, glitch::video::BufferInfo> > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: arm
005b1c28  04 e0 2d e5                                      str lr, [sp, #-4]!
005b1c2c  0c d0 4d e2                                      sub sp, sp, #0xc
005b1c30  08 00 8d e2                                      add r0, sp, #8
005b1c34  28 30 a0 e3                                      mov r3, #0x28
005b1c38  04 30 20 e5                                      str r3, [r0, #-4]!
005b1c3c  9f 5c 05 eb                                      bl #0x708ec0
005b1c40  0c d0 8d e2                                      add sp, sp, #0xc
005b1c44  00 80 bd e8                                      ldm sp!, {pc}
