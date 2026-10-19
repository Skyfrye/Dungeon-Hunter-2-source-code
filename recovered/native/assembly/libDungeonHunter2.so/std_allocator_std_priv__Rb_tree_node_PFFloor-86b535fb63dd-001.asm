; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051de58, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<PFFloor*> >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeIP7PFFloorEEE8allocateEjPKv.clone.12
; demangled: std::allocator<std::priv::_Rb_tree_node<PFFloor*> >::allocate(unsigned int, void const*) [clone .clone.12]
; decoder-mode: arm
0051de58  04 e0 2d e5                                      str lr, [sp, #-4]!
0051de5c  0c d0 4d e2                                      sub sp, sp, #0xc
0051de60  08 00 8d e2                                      add r0, sp, #8
0051de64  14 30 a0 e3                                      mov r3, #0x14
0051de68  04 30 20 e5                                      str r3, [r0, #-4]!
0051de6c  13 ac 07 eb                                      bl #0x708ec0
0051de70  0c d0 8d e2                                      add sp, sp, #0xc
0051de74  00 80 bd e8                                      ldm sp!, {pc}
