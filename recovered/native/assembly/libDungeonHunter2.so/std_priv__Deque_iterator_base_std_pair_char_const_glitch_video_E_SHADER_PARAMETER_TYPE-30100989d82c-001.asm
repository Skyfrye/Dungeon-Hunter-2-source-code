; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e16ec, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >
; alias: _ZNKSt4priv20_Deque_iterator_baseISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEEE11_M_subtractERKS8_
; demangled: std::priv::_Deque_iterator_base<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >::_M_subtract(std::priv::_Deque_iterator_base<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > const&) const
; decoder-mode: arm
005e16ec  30 00 2d e9                                      push {r4, r5}
005e16f0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005e16f4  00 50 90 e5                                      ldr r5, [r0]
005e16f8  04 20 90 e5                                      ldr r2, [r0, #4]
005e16fc  0c 40 90 e5                                      ldr r4, [r0, #0xc]
005e1700  08 30 91 e5                                      ldr r3, [r1, #8]
005e1704  00 10 91 e5                                      ldr r1, [r1]
005e1708  05 20 62 e0                                      rsb r2, r2, r5
005e170c  04 00 6c e0                                      rsb r0, ip, r4
005e1710  03 30 61 e0                                      rsb r3, r1, r3
005e1714  c2 21 a0 e1                                      asr r2, r2, #3
005e1718  40 01 a0 e1                                      asr r0, r0, #2
005e171c  c3 31 82 e0                                      add r3, r2, r3, asr #3
005e1720  01 00 40 e2                                      sub r0, r0, #1
005e1724  00 02 83 e0                                      add r0, r3, r0, lsl #4
005e1728  30 00 bd e8                                      pop {r4, r5}
005e172c  1e ff 2f e1                                      bx lr
