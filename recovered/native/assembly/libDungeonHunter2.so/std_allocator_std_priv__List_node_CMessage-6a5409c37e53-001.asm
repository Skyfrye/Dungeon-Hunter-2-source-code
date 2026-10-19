; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080d018, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<CMessage*> >
; alias: _ZNSaINSt4priv10_List_nodeIP8CMessageEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::priv::_List_node<CMessage*> >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
0080d018  04 e0 2d e5                                      str lr, [sp, #-4]!
0080d01c  0c d0 4d e2                                      sub sp, sp, #0xc
0080d020  08 00 8d e2                                      add r0, sp, #8
0080d024  0c 30 a0 e3                                      mov r3, #0xc
0080d028  04 30 20 e5                                      str r3, [r0, #-4]!
0080d02c  b9 c4 02 eb                                      bl #0x8be318
0080d030  0c d0 8d e2                                      add sp, sp, #0xc
0080d034  00 80 bd e8                                      ldm sp!, {pc}
