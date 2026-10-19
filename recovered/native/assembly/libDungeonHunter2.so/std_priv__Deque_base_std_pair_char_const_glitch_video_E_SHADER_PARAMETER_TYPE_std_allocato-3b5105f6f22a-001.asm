; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e1d1c, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >
; alias: _ZNSt4priv11_Deque_baseISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEESaIS7_EED2Ev
; demangled: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >::~_Deque_base()
; decoder-mode: arm
005e1d1c  70 40 2d e9                                      push {r4, r5, r6, lr}
005e1d20  00 60 a0 e1                                      mov r6, r0
005e1d24  20 00 90 e5                                      ldr r0, [r0, #0x20]
005e1d28  00 00 50 e3                                      cmp r0, #0
005e1d2c  14 00 00 0a                                      beq #0x5e1d84
005e1d30  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
005e1d34  0c 40 96 e5                                      ldr r4, [r6, #0xc]
005e1d38  04 50 85 e2                                      add r5, r5, #4
005e1d3c  05 00 54 e1                                      cmp r4, r5
005e1d40  14 00 00 2a                                      bhs #0x5e1d98
005e1d44  00 00 94 e5                                      ldr r0, [r4]
005e1d48  80 10 a0 e3                                      mov r1, #0x80
005e1d4c  04 40 84 e2                                      add r4, r4, #4
005e1d50  00 00 50 e3                                      cmp r0, #0
005e1d54  00 00 00 0a                                      beq #0x5e1d5c
005e1d58  68 9c 04 eb                                      bl #0x708f00
005e1d5c  04 00 55 e1                                      cmp r5, r4
005e1d60  f7 ff ff 8a                                      bhi #0x5e1d44
005e1d64  20 00 96 e5                                      ldr r0, [r6, #0x20]
005e1d68  24 10 96 e5                                      ldr r1, [r6, #0x24]
005e1d6c  00 00 50 e3                                      cmp r0, #0
005e1d70  03 00 00 0a                                      beq #0x5e1d84
005e1d74  01 11 a0 e1                                      lsl r1, r1, #2
005e1d78  80 00 51 e3                                      cmp r1, #0x80
005e1d7c  02 00 00 8a                                      bhi #0x5e1d8c
005e1d80  5e 9c 04 eb                                      bl #0x708f00
005e1d84  06 00 a0 e1                                      mov r0, r6
005e1d88  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e1d8c  47 b1 f4 eb                                      bl #0x30e2b0
005e1d90  06 00 a0 e1                                      mov r0, r6
005e1d94  70 80 bd e8                                      pop {r4, r5, r6, pc}
005e1d98  24 10 96 e5                                      ldr r1, [r6, #0x24]
005e1d9c  f4 ff ff ea                                      b #0x5e1d74

; FUNCTION 0x005e1e00, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >
; alias: _ZNSt4priv11_Deque_baseISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEESaIS7_EE17_M_initialize_mapEj
; demangled: std::priv::_Deque_base<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >::_M_initialize_map(unsigned int)
; decoder-mode: arm
005e1e00  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e1e04  21 62 a0 e1                                      lsr r6, r1, #4
005e1e08  01 50 a0 e1                                      mov r5, r1
005e1e0c  03 10 86 e2                                      add r1, r6, #3
005e1e10  08 00 51 e3                                      cmp r1, #8
005e1e14  08 10 a0 33                                      movlo r1, #8
005e1e18  00 40 a0 e1                                      mov r4, r0
005e1e1c  24 10 80 e5                                      str r1, [r0, #0x24]
005e1e20  00 20 a0 e3                                      mov r2, #0
005e1e24  20 00 80 e2                                      add r0, r0, #0x20
005e1e28  dc ff ff eb                                      bl #0x5e1da0
005e1e2c  24 b0 94 e5                                      ldr fp, [r4, #0x24]
005e1e30  01 60 86 e2                                      add r6, r6, #1
005e1e34  00 90 a0 e1                                      mov sb, r0
005e1e38  0b b0 66 e0                                      rsb fp, r6, fp
005e1e3c  ab b0 a0 e1                                      lsr fp, fp, #1
005e1e40  20 00 84 e5                                      str r0, [r4, #0x20]
005e1e44  0b a1 80 e0                                      add sl, r0, fp, lsl #2
005e1e48  06 61 8a e0                                      add r6, sl, r6, lsl #2
005e1e4c  06 00 5a e1                                      cmp sl, r6
005e1e50  06 00 00 2a                                      bhs #0x5e1e70
005e1e54  24 80 84 e2                                      add r8, r4, #0x24
005e1e58  0a 70 a0 e1                                      mov r7, sl
005e1e5c  08 00 a0 e1                                      mov r0, r8
005e1e60  e1 fe ff eb                                      bl #0x5e19ec
005e1e64  04 00 87 e4                                      str r0, [r7], #4
005e1e68  07 00 56 e1                                      cmp r6, r7
005e1e6c  fa ff ff 8a                                      bhi #0x5e1e5c
005e1e70  0c a0 84 e5                                      str sl, [r4, #0xc]
005e1e74  0b 21 99 e7                                      ldr r2, [sb, fp, lsl #2]
005e1e78  04 30 46 e2                                      sub r3, r6, #4
005e1e7c  1c 30 84 e5                                      str r3, [r4, #0x1c]
005e1e80  80 30 82 e2                                      add r3, r2, #0x80
005e1e84  0c 00 84 e9                                      stmib r4, {r2, r3}
005e1e88  04 30 16 e5                                      ldr r3, [r6, #-4]
005e1e8c  0f 50 05 e2                                      and r5, r5, #0xf
005e1e90  00 20 84 e5                                      str r2, [r4]
005e1e94  85 51 83 e0                                      add r5, r3, r5, lsl #3
005e1e98  80 20 83 e2                                      add r2, r3, #0x80
005e1e9c  10 50 84 e5                                      str r5, [r4, #0x10]
005e1ea0  18 20 84 e5                                      str r2, [r4, #0x18]
005e1ea4  14 30 84 e5                                      str r3, [r4, #0x14]
005e1ea8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
