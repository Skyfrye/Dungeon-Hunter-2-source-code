; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e1da0, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>*>
; alias: _ZNSaIPSt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEEE8allocateEjPKv
; demangled: std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>*>::allocate(unsigned int, void const*)
; decoder-mode: arm
005e1da0  04 e0 2d e5                                      str lr, [sp, #-4]!
005e1da4  07 01 71 e3                                      cmn r1, #0xc0000001
005e1da8  0c d0 4d e2                                      sub sp, sp, #0xc
005e1dac  0d 00 00 8a                                      bhi #0x5e1de8
005e1db0  00 00 51 e3                                      cmp r1, #0
005e1db4  01 00 a0 01                                      moveq r0, r1
005e1db8  01 00 00 1a                                      bne #0x5e1dc4
005e1dbc  0c d0 8d e2                                      add sp, sp, #0xc
005e1dc0  00 80 bd e8                                      ldm sp!, {pc}
005e1dc4  01 01 a0 e1                                      lsl r0, r1, #2
005e1dc8  80 00 50 e3                                      cmp r0, #0x80
005e1dcc  04 00 8d e5                                      str r0, [sp, #4]
005e1dd0  02 00 00 8a                                      bhi #0x5e1de0
005e1dd4  04 00 8d e2                                      add r0, sp, #4
005e1dd8  38 9c 04 eb                                      bl #0x708ec0
005e1ddc  f6 ff ff ea                                      b #0x5e1dbc
005e1de0  a9 b2 f4 eb                                      bl #0x30e88c
005e1de4  f4 ff ff ea                                      b #0x5e1dbc
005e1de8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005e1dec  00 00 8f e0                                      add r0, pc, r0
005e1df0  b3 b0 f4 eb                                      bl #0x30e0c4
005e1df4  01 00 a0 e3                                      mov r0, #1
005e1df8  12 b0 f4 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
005e1dfc  84 c6 2d 00                                      .byte 0x84, 0xc6, 0x2d, 0x00
