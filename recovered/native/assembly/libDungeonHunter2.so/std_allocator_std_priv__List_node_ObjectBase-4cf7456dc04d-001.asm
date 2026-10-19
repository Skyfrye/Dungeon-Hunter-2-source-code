; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00343168, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<ObjectBase*> >
; alias: _ZNSaINSt4priv10_List_nodeIP10ObjectBaseEEE8allocateEjPKv.clone.20
; demangled: std::allocator<std::priv::_List_node<ObjectBase*> >::allocate(unsigned int, void const*) [clone .clone.20]
; decoder-mode: arm
00343168  04 e0 2d e5                                      str lr, [sp, #-4]!
0034316c  0c d0 4d e2                                      sub sp, sp, #0xc
00343170  08 00 8d e2                                      add r0, sp, #8
00343174  0c 30 a0 e3                                      mov r3, #0xc
00343178  04 30 20 e5                                      str r3, [r0, #-4]!
0034317c  4f 17 0f eb                                      bl #0x708ec0
00343180  0c d0 8d e2                                      add sp, sp, #0xc
00343184  00 80 bd e8                                      ldm sp!, {pc}
