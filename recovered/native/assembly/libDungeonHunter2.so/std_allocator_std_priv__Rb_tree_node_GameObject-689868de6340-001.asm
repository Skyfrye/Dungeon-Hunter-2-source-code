; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003982cc, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<GameObject*> >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeIP10GameObjectEEE8allocateEjPKv.clone.3
; demangled: std::allocator<std::priv::_Rb_tree_node<GameObject*> >::allocate(unsigned int, void const*) [clone .clone.3]
; decoder-mode: arm
003982cc  04 e0 2d e5                                      str lr, [sp, #-4]!
003982d0  0c d0 4d e2                                      sub sp, sp, #0xc
003982d4  08 00 8d e2                                      add r0, sp, #8
003982d8  14 30 a0 e3                                      mov r3, #0x14
003982dc  04 30 20 e5                                      str r3, [r0, #-4]!
003982e0  f6 c2 0d eb                                      bl #0x708ec0
003982e4  0c d0 8d e2                                      add sp, sp, #0xc
003982e8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0039ed9c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<GameObject*> >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeIP10GameObjectEEE8allocateEjPKv.clone.8
; demangled: std::allocator<std::priv::_Rb_tree_node<GameObject*> >::allocate(unsigned int, void const*) [clone .clone.8]
; decoder-mode: arm
0039ed9c  04 e0 2d e5                                      str lr, [sp, #-4]!
0039eda0  0c d0 4d e2                                      sub sp, sp, #0xc
0039eda4  08 00 8d e2                                      add r0, sp, #8
0039eda8  14 30 a0 e3                                      mov r3, #0x14
0039edac  04 30 20 e5                                      str r3, [r0, #-4]!
0039edb0  42 a8 0d eb                                      bl #0x708ec0
0039edb4  0c d0 8d e2                                      add sp, sp, #0xc
0039edb8  00 80 bd e8                                      ldm sp!, {pc}
