; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e19ec, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >
; alias: _ZNSaISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEEE8allocateEjPKv.clone.5
; demangled: std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
005e19ec  04 e0 2d e5                                      str lr, [sp, #-4]!
005e19f0  0c d0 4d e2                                      sub sp, sp, #0xc
005e19f4  08 00 8d e2                                      add r0, sp, #8
005e19f8  80 30 a0 e3                                      mov r3, #0x80
005e19fc  04 30 20 e5                                      str r3, [r0, #-4]!
005e1a00  2e 9d 04 eb                                      bl #0x708ec0
005e1a04  0c d0 8d e2                                      add sp, sp, #0xc
005e1a08  00 80 bd e8                                      ldm sp!, {pc}
