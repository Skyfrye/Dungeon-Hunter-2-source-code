; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033b6f0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<long> >
; alias: _ZNSaINSt4priv10_List_nodeIlEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_List_node<long> >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
0033b6f0  04 e0 2d e5                                      str lr, [sp, #-4]!
0033b6f4  0c d0 4d e2                                      sub sp, sp, #0xc
0033b6f8  08 00 8d e2                                      add r0, sp, #8
0033b6fc  0c 30 a0 e3                                      mov r3, #0xc
0033b700  04 30 20 e5                                      str r3, [r0, #-4]!
0033b704  ed 35 0f eb                                      bl #0x708ec0
0033b708  0c d0 8d e2                                      add sp, sp, #0xc
0033b70c  00 80 bd e8                                      ldm sp!, {pc}
