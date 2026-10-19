; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003428f0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiiEEEE8allocateEjPKv.clone.17
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >::allocate(unsigned int, void const*) [clone .clone.17]
; decoder-mode: arm
003428f0  04 e0 2d e5                                      str lr, [sp, #-4]!
003428f4  0c d0 4d e2                                      sub sp, sp, #0xc
003428f8  08 00 8d e2                                      add r0, sp, #8
003428fc  18 30 a0 e3                                      mov r3, #0x18
00342900  04 30 20 e5                                      str r3, [r0, #-4]!
00342904  6d 19 0f eb                                      bl #0x708ec0
00342908  0c d0 8d e2                                      add sp, sp, #0xc
0034290c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x004657cc, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiiEEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
004657cc  04 e0 2d e5                                      str lr, [sp, #-4]!
004657d0  0c d0 4d e2                                      sub sp, sp, #0xc
004657d4  08 00 8d e2                                      add r0, sp, #8
004657d8  18 30 a0 e3                                      mov r3, #0x18
004657dc  04 30 20 e5                                      str r3, [r0, #-4]!
004657e0  b6 8d 0a eb                                      bl #0x708ec0
004657e4  0c d0 8d e2                                      add sp, sp, #0xc
004657e8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00468088, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiiEEEE8allocateEjPKv.clone.2
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >::allocate(unsigned int, void const*) [clone .clone.2]
; decoder-mode: arm
00468088  04 e0 2d e5                                      str lr, [sp, #-4]!
0046808c  0c d0 4d e2                                      sub sp, sp, #0xc
00468090  08 00 8d e2                                      add r0, sp, #8
00468094  18 30 a0 e3                                      mov r3, #0x18
00468098  04 30 20 e5                                      str r3, [r0, #-4]!
0046809c  87 83 0a eb                                      bl #0x708ec0
004680a0  0c d0 8d e2                                      add sp, sp, #0xc
004680a4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0046ac54, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiiEEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
0046ac54  04 e0 2d e5                                      str lr, [sp, #-4]!
0046ac58  0c d0 4d e2                                      sub sp, sp, #0xc
0046ac5c  08 00 8d e2                                      add r0, sp, #8
0046ac60  18 30 a0 e3                                      mov r3, #0x18
0046ac64  04 30 20 e5                                      str r3, [r0, #-4]!
0046ac68  94 78 0a eb                                      bl #0x708ec0
0046ac6c  0c d0 8d e2                                      add sp, sp, #0xc
0046ac70  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0080d038, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiiEEEE8allocateEjPKv.clone.6
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, int> > >::allocate(unsigned int, void const*) [clone .clone.6]
; decoder-mode: arm
0080d038  04 e0 2d e5                                      str lr, [sp, #-4]!
0080d03c  0c d0 4d e2                                      sub sp, sp, #0xc
0080d040  08 00 8d e2                                      add r0, sp, #8
0080d044  18 30 a0 e3                                      mov r3, #0x18
0080d048  04 30 20 e5                                      str r3, [r0, #-4]!
0080d04c  b1 c4 02 eb                                      bl #0x8be318
0080d050  0c d0 8d e2                                      add sp, sp, #0xc
0080d054  00 80 bd e8                                      ldm sp!, {pc}
