; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00825bc8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<long const, int> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKliEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<long const, int> > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: arm
00825bc8  04 e0 2d e5                                      str lr, [sp, #-4]!
00825bcc  0c d0 4d e2                                      sub sp, sp, #0xc
00825bd0  08 00 8d e2                                      add r0, sp, #8
00825bd4  18 30 a0 e3                                      mov r3, #0x18
00825bd8  04 30 20 e5                                      str r3, [r0, #-4]!
00825bdc  cd 61 02 eb                                      bl #0x8be318
00825be0  0c d0 8d e2                                      add sp, sp, #0xc
00825be4  00 80 bd e8                                      ldm sp!, {pc}
