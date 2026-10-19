; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dbb08, declared_size=72, range_size=72, mode=arm
; class-group: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> >
; alias: _ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE9push_backES8_
; demangled: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> >::push_back(std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>)
; decoder-mode: arm
006dbb08  04 40 2d e5                                      str r4, [sp, #-4]!
006dbb0c  18 40 90 e5                                      ldr r4, [r0, #0x18]
006dbb10  10 20 90 e5                                      ldr r2, [r0, #0x10]
006dbb14  01 c0 a0 e1                                      mov ip, r1
006dbb18  08 40 44 e2                                      sub r4, r4, #8
006dbb1c  04 00 52 e1                                      cmp r2, r4
006dbb20  08 00 00 0a                                      beq #0x6dbb48
006dbb24  00 10 91 e5                                      ldr r1, [r1]
006dbb28  00 10 82 e5                                      str r1, [r2]
006dbb2c  04 10 9c e5                                      ldr r1, [ip, #4]
006dbb30  04 10 82 e5                                      str r1, [r2, #4]
006dbb34  10 20 90 e5                                      ldr r2, [r0, #0x10]
006dbb38  08 20 82 e2                                      add r2, r2, #8
006dbb3c  10 20 80 e5                                      str r2, [r0, #0x10]
006dbb40  10 00 bd e8                                      ldm sp!, {r4}
006dbb44  1e ff 2f e1                                      bx lr
006dbb48  10 00 bd e8                                      ldm sp!, {r4}
006dbb4c  8a ff ff ea                                      b #0x6db97c
