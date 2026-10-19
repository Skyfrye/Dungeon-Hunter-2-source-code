; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b5d4c, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<glitch::io::SVertexStreamHeader>
; alias: _ZNSaIN6glitch2io19SVertexStreamHeaderEE11_M_allocateEjRj
; demangled: std::allocator<glitch::io::SVertexStreamHeader>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
006b5d4c  10 40 2d e9                                      push {r4, lr}
006b5d50  55 35 05 e3                                      movw r3, #0x5555
006b5d54  03 37 83 e1                                      orr r3, r3, r3, lsl #14
006b5d58  03 00 51 e1                                      cmp r1, r3
006b5d5c  08 d0 4d e2                                      sub sp, sp, #8
006b5d60  02 40 a0 e1                                      mov r4, r2
006b5d64  14 00 00 8a                                      bhi #0x6b5dbc
006b5d68  00 00 51 e3                                      cmp r1, #0
006b5d6c  01 00 a0 01                                      moveq r0, r1
006b5d70  01 00 00 1a                                      bne #0x6b5d7c
006b5d74  08 d0 8d e2                                      add sp, sp, #8
006b5d78  10 80 bd e8                                      pop {r4, pc}
006b5d7c  0c 00 a0 e3                                      mov r0, #0xc
006b5d80  90 01 00 e0                                      mul r0, r0, r1
006b5d84  80 00 50 e3                                      cmp r0, #0x80
006b5d88  04 00 8d e5                                      str r0, [sp, #4]
006b5d8c  08 00 00 8a                                      bhi #0x6b5db4
006b5d90  04 00 8d e2                                      add r0, sp, #4
006b5d94  49 4c 01 eb                                      bl #0x708ec0
006b5d98  04 20 9d e5                                      ldr r2, [sp, #4]
006b5d9c  ab 3a 0a e3                                      movw r3, #0xaaab
006b5da0  aa 3a 4a e3                                      movt r3, #0xaaaa
006b5da4  93 12 83 e0                                      umull r1, r3, r3, r2
006b5da8  a3 31 a0 e1                                      lsr r3, r3, #3
006b5dac  00 30 84 e5                                      str r3, [r4]
006b5db0  ef ff ff ea                                      b #0x6b5d74
006b5db4  b4 62 f1 eb                                      bl #0x30e88c
006b5db8  f6 ff ff ea                                      b #0x6b5d98
006b5dbc  0c 00 9f e5                                      ldr r0, [pc, #0xc]
006b5dc0  00 00 8f e0                                      add r0, pc, r0
006b5dc4  be 60 f1 eb                                      bl #0x30e0c4
006b5dc8  01 00 a0 e3                                      mov r0, #1
006b5dcc  1d 60 f1 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
006b5dd0  b0 86 20 00                                      .byte 0xb0, 0x86, 0x20, 0x00
