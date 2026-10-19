; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031844c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKSsSsEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: arm
0031844c  04 e0 2d e5                                      str lr, [sp, #-4]!
00318450  0c d0 4d e2                                      sub sp, sp, #0xc
00318454  08 00 8d e2                                      add r0, sp, #8
00318458  40 30 a0 e3                                      mov r3, #0x40
0031845c  04 30 20 e5                                      str r3, [r0, #-4]!
00318460  96 c2 0f eb                                      bl #0x708ec0
00318464  0c d0 8d e2                                      add sp, sp, #0xc
00318468  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0082ea58, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKSsSsEEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
0082ea58  04 e0 2d e5                                      str lr, [sp, #-4]!
0082ea5c  0c d0 4d e2                                      sub sp, sp, #0xc
0082ea60  08 00 8d e2                                      add r0, sp, #8
0082ea64  40 30 a0 e3                                      mov r3, #0x40
0082ea68  04 30 20 e5                                      str r3, [r0, #-4]!
0082ea6c  29 3e 02 eb                                      bl #0x8be318
0082ea70  0c d0 8d e2                                      add sp, sp, #0xc
0082ea74  00 80 bd e8                                      ldm sp!, {pc}
