; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a170c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_Rb_tree_node<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >
; alias: _ZNSaINSt4priv13_Rb_tree_nodeISt4pairIKN5boost13intrusive_ptrIKN6glitch5video7IBufferEEENS4_4core11SBufferDataEEEEE8allocateEjPKv.clone.0
; demangled: std::allocator<std::priv::_Rb_tree_node<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >::allocate(unsigned int, void const*) [clone .clone.0]
; decoder-mode: arm
006a170c  04 e0 2d e5                                      str lr, [sp, #-4]!
006a1710  0c d0 4d e2                                      sub sp, sp, #0xc
006a1714  08 00 8d e2                                      add r0, sp, #8
006a1718  1c 30 a0 e3                                      mov r3, #0x1c
006a171c  04 30 20 e5                                      str r3, [r0, #-4]!
006a1720  e6 9d 01 eb                                      bl #0x708ec0
006a1724  0c d0 8d e2                                      add sp, sp, #0xc
006a1728  00 80 bd e8                                      ldm sp!, {pc}
