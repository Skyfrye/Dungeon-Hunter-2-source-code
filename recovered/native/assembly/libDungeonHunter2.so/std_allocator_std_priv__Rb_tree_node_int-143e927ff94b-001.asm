; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00402184, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<int> >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeIiEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_Rb_tree_node<int> >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
00402184  04 e0 2d e5                                      str lr, [sp, #-4]!
00402188  0c d0 4d e2                                      sub sp, sp, #0xc
0040218c  08 00 8d e2                                      add r0, sp, #8
00402190  14 30 a0 e3                                      mov r3, #0x14
00402194  04 30 20 e5                                      str r3, [r0, #-4]!
00402198  48 1b 0c eb                                      bl #0x708ec0
0040219c  0c d0 8d e2                                      add sp, sp, #0xc
004021a0  00 80 bd e8                                      ldm sp!, {pc}
