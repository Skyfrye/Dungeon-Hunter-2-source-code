; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e217c, declared_size=88, range_size=88, mode=arm
; class-group: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >& boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >
; alias: _ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEEEclIA11_cS7_EERS9_RKT_RKT0_
; demangled: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >& boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >::operator()<char [11], glitch::video::E_SHADER_PARAMETER_TYPE>(char const (&) [11], glitch::video::E_SHADER_PARAMETER_TYPE const&)
; decoder-mode: arm
005e217c  10 40 2d e9                                      push {r4, lr}
005e2180  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005e2184  10 30 90 e5                                      ldr r3, [r0, #0x10]
005e2188  00 20 92 e5                                      ldr r2, [r2]
005e218c  08 c0 4c e2                                      sub ip, ip, #8
005e2190  08 d0 4d e2                                      sub sp, sp, #8
005e2194  0c 00 53 e1                                      cmp r3, ip
005e2198  00 40 a0 e1                                      mov r4, r0
005e219c  06 00 8d e8                                      stm sp, {r1, r2}
005e21a0  08 00 00 0a                                      beq #0x5e21c8
005e21a4  00 10 83 e5                                      str r1, [r3]
005e21a8  04 20 9d e5                                      ldr r2, [sp, #4]
005e21ac  04 20 83 e5                                      str r2, [r3, #4]
005e21b0  10 30 90 e5                                      ldr r3, [r0, #0x10]
005e21b4  08 30 83 e2                                      add r3, r3, #8
005e21b8  10 30 80 e5                                      str r3, [r0, #0x10]
005e21bc  04 00 a0 e1                                      mov r0, r4
005e21c0  08 d0 8d e2                                      add sp, sp, #8
005e21c4  10 80 bd e8                                      pop {r4, pc}
005e21c8  0d 10 a0 e1                                      mov r1, sp
005e21cc  75 ff ff eb                                      bl #0x5e1fa8
005e21d0  f9 ff ff ea                                      b #0x5e21bc

; FUNCTION 0x005e21d4, declared_size=88, range_size=88, mode=arm
; class-group: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >& boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >
; alias: _ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEEEclIA13_cS7_EERS9_RKT_RKT0_
; demangled: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >& boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >::operator()<char [13], glitch::video::E_SHADER_PARAMETER_TYPE>(char const (&) [13], glitch::video::E_SHADER_PARAMETER_TYPE const&)
; decoder-mode: arm
005e21d4  10 40 2d e9                                      push {r4, lr}
005e21d8  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005e21dc  10 30 90 e5                                      ldr r3, [r0, #0x10]
005e21e0  00 20 92 e5                                      ldr r2, [r2]
005e21e4  08 c0 4c e2                                      sub ip, ip, #8
005e21e8  08 d0 4d e2                                      sub sp, sp, #8
005e21ec  0c 00 53 e1                                      cmp r3, ip
005e21f0  00 40 a0 e1                                      mov r4, r0
005e21f4  06 00 8d e8                                      stm sp, {r1, r2}
005e21f8  08 00 00 0a                                      beq #0x5e2220
005e21fc  00 10 83 e5                                      str r1, [r3]
005e2200  04 20 9d e5                                      ldr r2, [sp, #4]
005e2204  04 20 83 e5                                      str r2, [r3, #4]
005e2208  10 30 90 e5                                      ldr r3, [r0, #0x10]
005e220c  08 30 83 e2                                      add r3, r3, #8
005e2210  10 30 80 e5                                      str r3, [r0, #0x10]
005e2214  04 00 a0 e1                                      mov r0, r4
005e2218  08 d0 8d e2                                      add sp, sp, #8
005e221c  10 80 bd e8                                      pop {r4, pc}
005e2220  0d 10 a0 e1                                      mov r1, sp
005e2224  5f ff ff eb                                      bl #0x5e1fa8
005e2228  f9 ff ff ea                                      b #0x5e2214

; FUNCTION 0x005e222c, declared_size=88, range_size=88, mode=arm
; class-group: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >& boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >
; alias: _ZN5boost13assign_detail12generic_listISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEEEclIA14_cS7_EERS9_RKT_RKT0_
; demangled: boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >& boost::assign_detail::generic_list<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> >::operator()<char [14], glitch::video::E_SHADER_PARAMETER_TYPE>(char const (&) [14], glitch::video::E_SHADER_PARAMETER_TYPE const&)
; decoder-mode: arm
005e222c  10 40 2d e9                                      push {r4, lr}
005e2230  18 c0 90 e5                                      ldr ip, [r0, #0x18]
005e2234  10 30 90 e5                                      ldr r3, [r0, #0x10]
005e2238  00 20 92 e5                                      ldr r2, [r2]
005e223c  08 c0 4c e2                                      sub ip, ip, #8
005e2240  08 d0 4d e2                                      sub sp, sp, #8
005e2244  0c 00 53 e1                                      cmp r3, ip
005e2248  00 40 a0 e1                                      mov r4, r0
005e224c  06 00 8d e8                                      stm sp, {r1, r2}
005e2250  08 00 00 0a                                      beq #0x5e2278
005e2254  00 10 83 e5                                      str r1, [r3]
005e2258  04 20 9d e5                                      ldr r2, [sp, #4]
005e225c  04 20 83 e5                                      str r2, [r3, #4]
005e2260  10 30 90 e5                                      ldr r3, [r0, #0x10]
005e2264  08 30 83 e2                                      add r3, r3, #8
005e2268  10 30 80 e5                                      str r3, [r0, #0x10]
005e226c  04 00 a0 e1                                      mov r0, r4
005e2270  08 d0 8d e2                                      add sp, sp, #8
005e2274  10 80 bd e8                                      pop {r4, pc}
005e2278  0d 10 a0 e1                                      mov r1, sp
005e227c  49 ff ff eb                                      bl #0x5e1fa8
005e2280  f9 ff ff ea                                      b #0x5e226c
