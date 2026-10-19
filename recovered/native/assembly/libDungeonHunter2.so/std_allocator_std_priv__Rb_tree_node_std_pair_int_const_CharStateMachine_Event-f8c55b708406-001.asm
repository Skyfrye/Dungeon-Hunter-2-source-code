; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c6a20, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, CharStateMachine::Event> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKiN16CharStateMachine5EventEEEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<int const, CharStateMachine::Event> > >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
003c6a20  04 e0 2d e5                                      str lr, [sp, #-4]!
003c6a24  0c d0 4d e2                                      sub sp, sp, #0xc
003c6a28  08 00 8d e2                                      add r0, sp, #8
003c6a2c  20 30 a0 e3                                      mov r3, #0x20
003c6a30  04 30 20 e5                                      str r3, [r0, #-4]!
003c6a34  21 09 0d eb                                      bl #0x708ec0
003c6a38  0c d0 8d e2                                      add sp, sp, #0xc
003c6a3c  00 80 bd e8                                      ldm sp!, {pc}
