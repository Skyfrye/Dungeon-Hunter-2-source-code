; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a4b1c, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<std::pair<unsigned int, glitch::core::aabbox3d<float> > >
; alias: _ZNSaISt4pairIjN6glitch4core8aabbox3dIfEEEE11_M_allocateEjRj
; demangled: std::allocator<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
005a4b1c  10 40 2d e9                                      push {r4, lr}
005a4b20  49 32 09 e3                                      movw r3, #0x9249
005a4b24  03 36 83 e1                                      orr r3, r3, r3, lsl #12
005a4b28  03 00 51 e1                                      cmp r1, r3
005a4b2c  08 d0 4d e2                                      sub sp, sp, #8
005a4b30  02 40 a0 e1                                      mov r4, r2
005a4b34  14 00 00 8a                                      bhi #0x5a4b8c
005a4b38  00 00 51 e3                                      cmp r1, #0
005a4b3c  01 00 a0 01                                      moveq r0, r1
005a4b40  01 00 00 1a                                      bne #0x5a4b4c
005a4b44  08 d0 8d e2                                      add sp, sp, #8
005a4b48  10 80 bd e8                                      pop {r4, pc}
005a4b4c  1c 00 a0 e3                                      mov r0, #0x1c
005a4b50  90 01 00 e0                                      mul r0, r0, r1
005a4b54  80 00 50 e3                                      cmp r0, #0x80
005a4b58  04 00 8d e5                                      str r0, [sp, #4]
005a4b5c  08 00 00 8a                                      bhi #0x5a4b84
005a4b60  04 00 8d e2                                      add r0, sp, #4
005a4b64  d5 90 05 eb                                      bl #0x708ec0
005a4b68  04 20 9d e5                                      ldr r2, [sp, #4]
005a4b6c  25 39 04 e3                                      movw r3, #0x4925
005a4b70  92 34 42 e3                                      movt r3, #0x2492
005a4b74  22 21 a0 e1                                      lsr r2, r2, #2
005a4b78  93 12 83 e0                                      umull r1, r3, r3, r2
005a4b7c  00 30 84 e5                                      str r3, [r4]
005a4b80  ef ff ff ea                                      b #0x5a4b44
005a4b84  40 a7 f5 eb                                      bl #0x30e88c
005a4b88  f6 ff ff ea                                      b #0x5a4b68
005a4b8c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005a4b90  00 00 8f e0                                      add r0, pc, r0
005a4b94  4a a5 f5 eb                                      bl #0x30e0c4
005a4b98  01 00 a0 e3                                      mov r0, #1
005a4b9c  a9 a4 f5 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
005a4ba0  e0 98 31 00                                      .byte 0xe0, 0x98, 0x31, 0x00
