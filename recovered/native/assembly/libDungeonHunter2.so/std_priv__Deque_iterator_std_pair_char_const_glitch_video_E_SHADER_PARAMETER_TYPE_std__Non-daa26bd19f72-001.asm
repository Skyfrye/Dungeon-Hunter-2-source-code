; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e1730, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > > std::priv
; alias: _ZNSt4priv7__ucopyINS_15_Deque_iteratorISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEESt13_Const_traitsIS8_EEENS1_IS8_St16_Nonconst_traitsIS8_EEEiEET0_T_SG_SF_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > > std::priv::__ucopy<std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::_Const_traits<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >, std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >, int>(std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::_Const_traits<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >, std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::_Const_traits<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >, std::priv::_Deque_iterator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::_Nonconst_traits<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005e1730  10 d0 4d e2                                      sub sp, sp, #0x10
005e1734  10 40 2d e9                                      push {r4, lr}
005e1738  0c c0 8d e2                                      add ip, sp, #0xc
005e173c  0e 00 8c e8                                      stm ip, {r1, r2, r3}
005e1740  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
005e1744  00 40 a0 e1                                      mov r4, r0
005e1748  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
005e174c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
005e1750  0c 10 a0 e1                                      mov r1, ip
005e1754  1c 00 8d e2                                      add r0, sp, #0x1c
005e1758  e3 ff ff eb                                      bl #0x5e16ec
005e175c  00 00 50 e3                                      cmp r0, #0
005e1760  08 00 00 ca                                      bgt #0x5e1788
005e1764  2b 00 00 ea                                      b #0x5e1818
005e1768  00 30 94 e5                                      ldr r3, [r4]
005e176c  08 20 94 e5                                      ldr r2, [r4, #8]
005e1770  08 30 83 e2                                      add r3, r3, #8
005e1774  02 00 53 e1                                      cmp r3, r2
005e1778  00 30 84 e5                                      str r3, [r4]
005e177c  1b 00 00 0a                                      beq #0x5e17f0
005e1780  01 00 50 e2                                      subs r0, r0, #1
005e1784  23 00 00 0a                                      beq #0x5e1818
005e1788  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005e178c  00 30 94 e5                                      ldr r3, [r4]
005e1790  00 10 92 e5                                      ldr r1, [r2]
005e1794  00 10 83 e5                                      str r1, [r3]
005e1798  04 20 92 e5                                      ldr r2, [r2, #4]
005e179c  04 20 83 e5                                      str r2, [r3, #4]
005e17a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005e17a4  14 20 9d e5                                      ldr r2, [sp, #0x14]
005e17a8  08 30 83 e2                                      add r3, r3, #8
005e17ac  02 00 53 e1                                      cmp r3, r2
005e17b0  0c 30 8d e5                                      str r3, [sp, #0xc]
005e17b4  eb ff ff 1a                                      bne #0x5e1768
005e17b8  18 30 9d e5                                      ldr r3, [sp, #0x18]
005e17bc  04 20 83 e2                                      add r2, r3, #4
005e17c0  18 20 8d e5                                      str r2, [sp, #0x18]
005e17c4  04 30 93 e5                                      ldr r3, [r3, #4]
005e17c8  80 20 83 e2                                      add r2, r3, #0x80
005e17cc  14 20 8d e5                                      str r2, [sp, #0x14]
005e17d0  0c 30 8d e5                                      str r3, [sp, #0xc]
005e17d4  10 30 8d e5                                      str r3, [sp, #0x10]
005e17d8  00 30 94 e5                                      ldr r3, [r4]
005e17dc  08 20 94 e5                                      ldr r2, [r4, #8]
005e17e0  08 30 83 e2                                      add r3, r3, #8
005e17e4  02 00 53 e1                                      cmp r3, r2
005e17e8  00 30 84 e5                                      str r3, [r4]
005e17ec  e3 ff ff 1a                                      bne #0x5e1780
005e17f0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005e17f4  01 00 50 e2                                      subs r0, r0, #1
005e17f8  04 20 83 e2                                      add r2, r3, #4
005e17fc  0c 20 84 e5                                      str r2, [r4, #0xc]
005e1800  04 30 93 e5                                      ldr r3, [r3, #4]
005e1804  80 20 83 e2                                      add r2, r3, #0x80
005e1808  08 20 84 e5                                      str r2, [r4, #8]
005e180c  00 30 84 e5                                      str r3, [r4]
005e1810  04 30 84 e5                                      str r3, [r4, #4]
005e1814  db ff ff 1a                                      bne #0x5e1788
005e1818  04 00 a0 e1                                      mov r0, r4
005e181c  10 40 bd e8                                      pop {r4, lr}
005e1820  10 d0 8d e2                                      add sp, sp, #0x10
005e1824  1e ff 2f e1                                      bx lr
