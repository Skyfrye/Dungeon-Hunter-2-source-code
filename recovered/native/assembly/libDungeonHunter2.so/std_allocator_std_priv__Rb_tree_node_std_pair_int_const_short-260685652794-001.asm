; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00343450, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, short> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKisEEEE8allocateEjPKv.clone.24
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, short> > >::allocate(unsigned int, void const*) [clone .clone.24]
; decoder-mode: arm
00343450  04 e0 2d e5                                      str lr, [sp, #-4]!
00343454  0c d0 4d e2                                      sub sp, sp, #0xc
00343458  08 00 8d e2                                      add r0, sp, #8
0034345c  18 30 a0 e3                                      mov r3, #0x18
00343460  04 30 20 e5                                      str r3, [r0, #-4]!
00343464  95 16 0f eb                                      bl #0x708ec0
00343468  0c d0 8d e2                                      add sp, sp, #0xc
0034346c  00 80 bd e8                                      ldm sp!, {pc}
