; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db6d0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> >
; alias: _ZNSaISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
006db6d0  04 e0 2d e5                                      str lr, [sp, #-4]!
006db6d4  0c d0 4d e2                                      sub sp, sp, #0xc
006db6d8  08 00 8d e2                                      add r0, sp, #8
006db6dc  80 30 a0 e3                                      mov r3, #0x80
006db6e0  04 30 20 e5                                      str r3, [r0, #-4]!
006db6e4  f5 b5 00 eb                                      bl #0x708ec0
006db6e8  0c d0 8d e2                                      add sp, sp, #0xc
006db6ec  00 80 bd e8                                      ldm sp!, {pc}
