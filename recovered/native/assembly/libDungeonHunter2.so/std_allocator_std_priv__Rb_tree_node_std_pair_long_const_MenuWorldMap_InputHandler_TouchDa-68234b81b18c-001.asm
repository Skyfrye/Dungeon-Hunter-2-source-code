; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043665c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKlN12MenuWorldMap12InputHandler9TouchDataEEEEE8allocateEjPKv.clone.4
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<long const, MenuWorldMap::InputHandler::TouchData> > >::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
0043665c  04 e0 2d e5                                      str lr, [sp, #-4]!
00436660  0c d0 4d e2                                      sub sp, sp, #0xc
00436664  08 00 8d e2                                      add r0, sp, #8
00436668  1c 30 a0 e3                                      mov r3, #0x1c
0043666c  04 30 20 e5                                      str r3, [r0, #-4]!
00436670  12 4a 0b eb                                      bl #0x708ec0
00436674  0c d0 8d e2                                      add sp, sp, #0xc
00436678  00 80 bd e8                                      ldm sp!, {pc}
