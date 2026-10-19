; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d2ca0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKS1_ISsiEN6CharAI9GroupInfoEEEEE8allocateEjPKv.clone.3
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> > >::allocate(unsigned int, void const*) [clone .clone.3]
; decoder-mode: arm
003d2ca0  04 e0 2d e5                                      str lr, [sp, #-4]!
003d2ca4  0c d0 4d e2                                      sub sp, sp, #0xc
003d2ca8  08 00 8d e2                                      add r0, sp, #8
003d2cac  58 30 a0 e3                                      mov r3, #0x58
003d2cb0  04 30 20 e5                                      str r3, [r0, #-4]!
003d2cb4  81 d8 0c eb                                      bl #0x708ec0
003d2cb8  0c d0 8d e2                                      add sp, sp, #0xc
003d2cbc  00 80 bd e8                                      ldm sp!, {pc}
