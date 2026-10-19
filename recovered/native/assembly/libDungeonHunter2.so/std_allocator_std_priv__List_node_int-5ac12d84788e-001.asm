; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003441d8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<int> >
; alias: _ZNSaINSt4priv10_List_nodeIiEEE8allocateEjPKv.clone.8
; demangled: std::allocator<std::priv::_List_node<int> >::allocate(unsigned int, void const*) [clone .clone.8]
; decoder-mode: arm
003441d8  04 e0 2d e5                                      str lr, [sp, #-4]!
003441dc  0c d0 4d e2                                      sub sp, sp, #0xc
003441e0  08 00 8d e2                                      add r0, sp, #8
003441e4  0c 30 a0 e3                                      mov r3, #0xc
003441e8  04 30 20 e5                                      str r3, [r0, #-4]!
003441ec  33 13 0f eb                                      bl #0x708ec0
003441f0  0c d0 8d e2                                      add sp, sp, #0xc
003441f4  00 80 bd e8                                      ldm sp!, {pc}
