; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0058cb7c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<glitch::video::SVertexStreamData>
; alias: _ZNSaIN6glitch5video17SVertexStreamDataEE11_M_allocateEjRj
; demangled: std::allocator<glitch::video::SVertexStreamData>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0058cb7c  10 40 2d e9                                      push {r4, lr}
0058cb80  1f 02 71 e3                                      cmn r1, #0xf0000001
0058cb84  08 d0 4d e2                                      sub sp, sp, #8
0058cb88  02 40 a0 e1                                      mov r4, r2
0058cb8c  10 00 00 8a                                      bhi #0x58cbd4
0058cb90  00 00 51 e3                                      cmp r1, #0
0058cb94  01 00 a0 01                                      moveq r0, r1
0058cb98  01 00 00 1a                                      bne #0x58cba4
0058cb9c  08 d0 8d e2                                      add sp, sp, #8
0058cba0  10 80 bd e8                                      pop {r4, pc}
0058cba4  01 02 a0 e1                                      lsl r0, r1, #4
0058cba8  80 00 50 e3                                      cmp r0, #0x80
0058cbac  04 00 8d e5                                      str r0, [sp, #4]
0058cbb0  05 00 00 8a                                      bhi #0x58cbcc
0058cbb4  04 00 8d e2                                      add r0, sp, #4
0058cbb8  c0 f0 05 eb                                      bl #0x708ec0
0058cbbc  04 30 9d e5                                      ldr r3, [sp, #4]
0058cbc0  23 32 a0 e1                                      lsr r3, r3, #4
0058cbc4  00 30 84 e5                                      str r3, [r4]
0058cbc8  f3 ff ff ea                                      b #0x58cb9c
0058cbcc  2e 07 f6 eb                                      bl #0x30e88c
0058cbd0  f9 ff ff ea                                      b #0x58cbbc
0058cbd4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0058cbd8  00 00 8f e0                                      add r0, pc, r0
0058cbdc  38 05 f6 eb                                      bl #0x30e0c4
0058cbe0  01 00 a0 e3                                      mov r0, #1
0058cbe4  97 04 f6 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0058cbe8  98 18 33 00                                      .byte 0x98, 0x18, 0x33, 0x00
