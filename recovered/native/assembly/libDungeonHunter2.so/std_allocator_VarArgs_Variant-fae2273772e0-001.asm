; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fac54, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<VarArgs::Variant>
; alias: _ZNSaIN7VarArgs7VariantEE11_M_allocateEjRj
; demangled: std::allocator<VarArgs::Variant>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003fac54  10 40 2d e9                                      push {r4, lr}
003fac58  55 35 05 e3                                      movw r3, #0x5555
003fac5c  03 37 83 e1                                      orr r3, r3, r3, lsl #14
003fac60  03 00 51 e1                                      cmp r1, r3
003fac64  08 d0 4d e2                                      sub sp, sp, #8
003fac68  02 40 a0 e1                                      mov r4, r2
003fac6c  14 00 00 8a                                      bhi #0x3facc4
003fac70  00 00 51 e3                                      cmp r1, #0
003fac74  01 00 a0 01                                      moveq r0, r1
003fac78  01 00 00 1a                                      bne #0x3fac84
003fac7c  08 d0 8d e2                                      add sp, sp, #8
003fac80  10 80 bd e8                                      pop {r4, pc}
003fac84  0c 00 a0 e3                                      mov r0, #0xc
003fac88  90 01 00 e0                                      mul r0, r0, r1
003fac8c  80 00 50 e3                                      cmp r0, #0x80
003fac90  04 00 8d e5                                      str r0, [sp, #4]
003fac94  08 00 00 8a                                      bhi #0x3facbc
003fac98  04 00 8d e2                                      add r0, sp, #4
003fac9c  87 38 0c eb                                      bl #0x708ec0
003faca0  04 20 9d e5                                      ldr r2, [sp, #4]
003faca4  ab 3a 0a e3                                      movw r3, #0xaaab
003faca8  aa 3a 4a e3                                      movt r3, #0xaaaa
003facac  93 12 83 e0                                      umull r1, r3, r3, r2
003facb0  a3 31 a0 e1                                      lsr r3, r3, #3
003facb4  00 30 84 e5                                      str r3, [r4]
003facb8  ef ff ff ea                                      b #0x3fac7c
003facbc  e4 55 fc eb                                      bl #0x310454
003facc0  f6 ff ff ea                                      b #0x3faca0
003facc4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003facc8  00 00 8f e0                                      add r0, pc, r0
003faccc  fc 4c fc eb                                      bl #0x30e0c4
003facd0  01 00 a0 e3                                      mov r0, #1
003facd4  5b 4c fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003facd8  a8 37 4c 00                                      .byte 0xa8, 0x37, 0x4c, 0x00
