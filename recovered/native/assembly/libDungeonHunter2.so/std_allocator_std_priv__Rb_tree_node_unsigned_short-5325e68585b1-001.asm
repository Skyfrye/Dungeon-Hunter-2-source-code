; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080b640, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<unsigned short> >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeItEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_Rb_tree_node<unsigned short> >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
0080b640  04 e0 2d e5                                      str lr, [sp, #-4]!
0080b644  0c d0 4d e2                                      sub sp, sp, #0xc
0080b648  08 00 8d e2                                      add r0, sp, #8
0080b64c  14 30 a0 e3                                      mov r3, #0x14
0080b650  04 30 20 e5                                      str r3, [r0, #-4]!
0080b654  2f cb 02 eb                                      bl #0x8be318
0080b658  0c d0 8d e2                                      add sp, sp, #0xc
0080b65c  00 80 bd e8                                      ldm sp!, {pc}
