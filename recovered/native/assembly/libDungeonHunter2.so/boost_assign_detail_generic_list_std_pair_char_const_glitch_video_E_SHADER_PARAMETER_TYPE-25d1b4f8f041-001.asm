; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e2134, declared_size=72, range_size=72, mode=arm
; class-group: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >
; alias: _ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEEE9push_backES8_
; demangled: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >::push_back(std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>)
; decoder-mode: arm
005e2134  04 40 2d e5                                      str r4, [sp, #-4]!
005e2138  18 40 90 e5                                      ldr r4, [r0, #0x18]
005e213c  10 20 90 e5                                      ldr r2, [r0, #0x10]
005e2140  01 c0 a0 e1                                      mov ip, r1
005e2144  08 40 44 e2                                      sub r4, r4, #8
005e2148  04 00 52 e1                                      cmp r2, r4
005e214c  08 00 00 0a                                      beq #0x5e2174
005e2150  00 10 91 e5                                      ldr r1, [r1]
005e2154  00 10 82 e5                                      str r1, [r2]
005e2158  04 10 9c e5                                      ldr r1, [ip, #4]
005e215c  04 10 82 e5                                      str r1, [r2, #4]
005e2160  10 20 90 e5                                      ldr r2, [r0, #0x10]
005e2164  08 20 82 e2                                      add r2, r2, #8
005e2168  10 20 80 e5                                      str r2, [r0, #0x10]
005e216c  10 00 bd e8                                      ldm sp!, {r4}
005e2170  1e ff 2f e1                                      bx lr
005e2174  10 00 bd e8                                      ldm sp!, {r4}
005e2178  8a ff ff ea                                      b #0x5e1fa8
