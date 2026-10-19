; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db1fc, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> >
; alias: _ZNKSt4priv20_Deque_iterator_baseISt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE11_M_subtractERKS8_
; demangled: std::priv::_Deque_iterator_base<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> >::_M_subtract(std::priv::_Deque_iterator_base<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE> > const&) const
; decoder-mode: arm
006db1fc  30 00 2d e9                                      push {r4, r5}
006db200  0c c0 91 e5                                      ldr ip, [r1, #0xc]
006db204  00 50 90 e5                                      ldr r5, [r0]
006db208  04 20 90 e5                                      ldr r2, [r0, #4]
006db20c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
006db210  08 30 91 e5                                      ldr r3, [r1, #8]
006db214  00 10 91 e5                                      ldr r1, [r1]
006db218  05 20 62 e0                                      rsb r2, r2, r5
006db21c  04 00 6c e0                                      rsb r0, ip, r4
006db220  03 30 61 e0                                      rsb r3, r1, r3
006db224  c2 21 a0 e1                                      asr r2, r2, #3
006db228  40 01 a0 e1                                      asr r0, r0, #2
006db22c  c3 31 82 e0                                      add r3, r2, r3, asr #3
006db230  01 00 40 e2                                      sub r0, r0, #1
006db234  00 02 83 e0                                      add r0, r3, r0, lsl #4
006db238  30 00 bd e8                                      pop {r4, r5}
006db23c  1e ff 2f e1                                      bx lr
