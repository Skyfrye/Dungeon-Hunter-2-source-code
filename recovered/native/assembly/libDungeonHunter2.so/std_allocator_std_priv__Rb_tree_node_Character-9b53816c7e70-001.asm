; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00395c44, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<Character*> >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeIP9CharacterEEE8allocateEjPKv.clone.3
; demangled: std::allocator<std::priv::_Rb_tree_node<Character*> >::allocate(unsigned int, void const*) [clone .clone.3]
; decoder-mode: arm
00395c44  04 e0 2d e5                                      str lr, [sp, #-4]!
00395c48  0c d0 4d e2                                      sub sp, sp, #0xc
00395c4c  08 00 8d e2                                      add r0, sp, #8
00395c50  14 30 a0 e3                                      mov r3, #0x14
00395c54  04 30 20 e5                                      str r3, [r0, #-4]!
00395c58  98 cc 0d eb                                      bl #0x708ec0
00395c5c  0c d0 8d e2                                      add sp, sp, #0xc
00395c60  00 80 bd e8                                      ldm sp!, {pc}
