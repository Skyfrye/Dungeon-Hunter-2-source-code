; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037715c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiN9NetStruct14tPacketHistoryEEEEE8allocateEjPKv.clone.14
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, NetStruct::tPacketHistory> > >::allocate(unsigned int, void const*) [clone .clone.14]
; decoder-mode: arm
0037715c  04 e0 2d e5                                      str lr, [sp, #-4]!
00377160  0c d0 4d e2                                      sub sp, sp, #0xc
00377164  08 00 8d e2                                      add r0, sp, #8
00377168  28 30 a0 e3                                      mov r3, #0x28
0037716c  04 30 20 e5                                      str r3, [r0, #-4]!
00377170  52 47 0e eb                                      bl #0x708ec0
00377174  0c d0 8d e2                                      add sp, sp, #0xc
00377178  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x004417b8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiN9NetStruct14tPacketHistoryEEEEE8allocateEjPKv.clone.10
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, NetStruct::tPacketHistory> > >::allocate(unsigned int, void const*) [clone .clone.10]
; decoder-mode: arm
004417b8  04 e0 2d e5                                      str lr, [sp, #-4]!
004417bc  0c d0 4d e2                                      sub sp, sp, #0xc
004417c0  08 00 8d e2                                      add r0, sp, #8
004417c4  28 30 a0 e3                                      mov r3, #0x28
004417c8  04 30 20 e5                                      str r3, [r0, #-4]!
004417cc  bb 1d 0b eb                                      bl #0x708ec0
004417d0  0c d0 8d e2                                      add sp, sp, #0xc
004417d4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00813a24, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, NetStruct::tPacketHistory> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiN9NetStruct14tPacketHistoryEEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, NetStruct::tPacketHistory> > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: arm
00813a24  04 e0 2d e5                                      str lr, [sp, #-4]!
00813a28  0c d0 4d e2                                      sub sp, sp, #0xc
00813a2c  08 00 8d e2                                      add r0, sp, #8
00813a30  28 30 a0 e3                                      mov r3, #0x28
00813a34  04 30 20 e5                                      str r3, [r0, #-4]!
00813a38  36 aa 02 eb                                      bl #0x8be318
00813a3c  0c d0 8d e2                                      add sp, sp, #0xc
00813a40  00 80 bd e8                                      ldm sp!, {pc}
