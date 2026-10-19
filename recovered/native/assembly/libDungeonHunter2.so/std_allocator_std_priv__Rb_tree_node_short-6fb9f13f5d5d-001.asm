; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00344854, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<short> >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeIsEEE8allocateEjPKv.clone.11
; demangled: std::allocator<std::priv::_Rb_tree_node<short> >::allocate(unsigned int, void const*) [clone .clone.11]
; decoder-mode: arm
00344854  04 e0 2d e5                                      str lr, [sp, #-4]!
00344858  0c d0 4d e2                                      sub sp, sp, #0xc
0034485c  08 00 8d e2                                      add r0, sp, #8
00344860  14 30 a0 e3                                      mov r3, #0x14
00344864  04 30 20 e5                                      str r3, [r0, #-4]!
00344868  94 11 0f eb                                      bl #0x708ec0
0034486c  0c d0 8d e2                                      add sp, sp, #0xc
00344870  00 80 bd e8                                      ldm sp!, {pc}
