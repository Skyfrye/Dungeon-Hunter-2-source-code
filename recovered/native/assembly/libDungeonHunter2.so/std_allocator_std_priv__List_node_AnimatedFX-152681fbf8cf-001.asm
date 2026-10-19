; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00494ab4, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::priv::_List_node<AnimatedFX*> >
; alias: _ZNSaINSt4priv10_List_nodeIP10AnimatedFXEEE8allocateEjPKv.clone.12
; demangled: std::allocator<std::priv::_List_node<AnimatedFX*> >::allocate(unsigned int, void const*) [clone .clone.12]
; decoder-mode: arm
00494ab4  04 e0 2d e5                                      str lr, [sp, #-4]!
00494ab8  0c d0 4d e2                                      sub sp, sp, #0xc
00494abc  08 00 8d e2                                      add r0, sp, #8
00494ac0  0c 30 a0 e3                                      mov r3, #0xc
00494ac4  04 30 20 e5                                      str r3, [r0, #-4]!
00494ac8  fc d0 09 eb                                      bl #0x708ec0
00494acc  0c d0 8d e2                                      add sp, sp, #0xc
00494ad0  00 80 bd e8                                      ldm sp!, {pc}
