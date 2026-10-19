; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039670c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<GameObject*> >
; alias: _ZNSaINSt4priv10_List_nodeIP10GameObjectEEE8allocateEjPKv.clone.1
; demangled: std::allocator<std::priv::_List_node<GameObject*> >::allocate(unsigned int, void const*) [clone .clone.1]
; decoder-mode: arm
0039670c  04 e0 2d e5                                      str lr, [sp, #-4]!
00396710  0c d0 4d e2                                      sub sp, sp, #0xc
00396714  08 00 8d e2                                      add r0, sp, #8
00396718  0c 30 a0 e3                                      mov r3, #0xc
0039671c  04 30 20 e5                                      str r3, [r0, #-4]!
00396720  e6 c9 0d eb                                      bl #0x708ec0
00396724  0c d0 8d e2                                      add sp, sp, #0xc
00396728  00 80 bd e8                                      ldm sp!, {pc}
