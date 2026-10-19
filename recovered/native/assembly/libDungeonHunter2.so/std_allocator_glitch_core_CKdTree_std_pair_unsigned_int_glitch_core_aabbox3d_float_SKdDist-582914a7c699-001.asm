; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a4c5c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance>
; alias: _ZNSaIN6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE11SKdDistanceEE11_M_allocateEjRj
; demangled: std::allocator<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
005a4c5c  10 40 2d e9                                      push {r4, lr}
005a4c60  1e 02 71 e3                                      cmn r1, #0xe0000001
005a4c64  08 d0 4d e2                                      sub sp, sp, #8
005a4c68  02 40 a0 e1                                      mov r4, r2
005a4c6c  10 00 00 8a                                      bhi #0x5a4cb4
005a4c70  00 00 51 e3                                      cmp r1, #0
005a4c74  01 00 a0 01                                      moveq r0, r1
005a4c78  01 00 00 1a                                      bne #0x5a4c84
005a4c7c  08 d0 8d e2                                      add sp, sp, #8
005a4c80  10 80 bd e8                                      pop {r4, pc}
005a4c84  81 01 a0 e1                                      lsl r0, r1, #3
005a4c88  80 00 50 e3                                      cmp r0, #0x80
005a4c8c  04 00 8d e5                                      str r0, [sp, #4]
005a4c90  05 00 00 8a                                      bhi #0x5a4cac
005a4c94  04 00 8d e2                                      add r0, sp, #4
005a4c98  88 90 05 eb                                      bl #0x708ec0
005a4c9c  04 30 9d e5                                      ldr r3, [sp, #4]
005a4ca0  a3 31 a0 e1                                      lsr r3, r3, #3
005a4ca4  00 30 84 e5                                      str r3, [r4]
005a4ca8  f3 ff ff ea                                      b #0x5a4c7c
005a4cac  f6 a6 f5 eb                                      bl #0x30e88c
005a4cb0  f9 ff ff ea                                      b #0x5a4c9c
005a4cb4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005a4cb8  00 00 8f e0                                      add r0, pc, r0
005a4cbc  00 a5 f5 eb                                      bl #0x30e0c4
005a4cc0  01 00 a0 e3                                      mov r0, #1
005a4cc4  5f a4 f5 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
005a4cc8  b8 97 31 00                                      .byte 0xb8, 0x97, 0x31, 0x00
