; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052aa84, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<PFGInnerEdge const*> >
; alias: _ZNSaINSt4priv10_List_nodeIPK12PFGInnerEdgeEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::priv::_List_node<PFGInnerEdge const*> >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
0052aa84  04 e0 2d e5                                      str lr, [sp, #-4]!
0052aa88  0c d0 4d e2                                      sub sp, sp, #0xc
0052aa8c  08 00 8d e2                                      add r0, sp, #8
0052aa90  0c 30 a0 e3                                      mov r3, #0xc
0052aa94  04 30 20 e5                                      str r3, [r0, #-4]!
0052aa98  08 79 07 eb                                      bl #0x708ec0
0052aa9c  0c d0 8d e2                                      add sp, sp, #0xc
0052aaa0  00 80 bd e8                                      ldm sp!, {pc}
