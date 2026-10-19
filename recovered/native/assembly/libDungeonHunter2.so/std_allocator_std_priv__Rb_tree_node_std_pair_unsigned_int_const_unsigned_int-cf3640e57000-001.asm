; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00802608, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjjEEEE8allocateEjPKv.clone.14
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, unsigned int> > >::allocate(unsigned int, void const*) [clone .clone.14]
; decoder-mode: arm
00802608  04 e0 2d e5                                      str lr, [sp, #-4]!
0080260c  0c d0 4d e2                                      sub sp, sp, #0xc
00802610  08 00 8d e2                                      add r0, sp, #8
00802614  18 30 a0 e3                                      mov r3, #0x18
00802618  04 30 20 e5                                      str r3, [r0, #-4]!
0080261c  3d ef 02 eb                                      bl #0x8be318
00802620  0c d0 8d e2                                      add sp, sp, #0xc
00802624  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x008171d4, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, unsigned int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKjjEEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<unsigned int const, unsigned int> > >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
008171d4  04 e0 2d e5                                      str lr, [sp, #-4]!
008171d8  0c d0 4d e2                                      sub sp, sp, #0xc
008171dc  08 00 8d e2                                      add r0, sp, #8
008171e0  18 30 a0 e3                                      mov r3, #0x18
008171e4  04 30 20 e5                                      str r3, [r0, #-4]!
008171e8  4a 9c 02 eb                                      bl #0x8be318
008171ec  0c d0 8d e2                                      add sp, sp, #0xc
008171f0  00 80 bd e8                                      ldm sp!, {pc}
