; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033bea4, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<TouchScreenBase::_QueuedEvent>
; alias: _ZNSaIN15TouchScreenBase12_QueuedEventEE11_M_allocateEjRj
; demangled: std::allocator<TouchScreenBase::_QueuedEvent>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0033bea4  10 40 2d e9                                      push {r4, lr}
0033bea8  55 35 05 e3                                      movw r3, #0x5555
0033beac  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0033beb0  03 00 51 e1                                      cmp r1, r3
0033beb4  08 d0 4d e2                                      sub sp, sp, #8
0033beb8  02 40 a0 e1                                      mov r4, r2
0033bebc  14 00 00 8a                                      bhi #0x33bf14
0033bec0  00 00 51 e3                                      cmp r1, #0
0033bec4  01 00 a0 01                                      moveq r0, r1
0033bec8  01 00 00 1a                                      bne #0x33bed4
0033becc  08 d0 8d e2                                      add sp, sp, #8
0033bed0  10 80 bd e8                                      pop {r4, pc}
0033bed4  0c 00 a0 e3                                      mov r0, #0xc
0033bed8  90 01 00 e0                                      mul r0, r0, r1
0033bedc  80 00 50 e3                                      cmp r0, #0x80
0033bee0  04 00 8d e5                                      str r0, [sp, #4]
0033bee4  08 00 00 8a                                      bhi #0x33bf0c
0033bee8  04 00 8d e2                                      add r0, sp, #4
0033beec  f3 33 0f eb                                      bl #0x708ec0
0033bef0  04 20 9d e5                                      ldr r2, [sp, #4]
0033bef4  ab 3a 0a e3                                      movw r3, #0xaaab
0033bef8  aa 3a 4a e3                                      movt r3, #0xaaaa
0033befc  93 12 83 e0                                      umull r1, r3, r3, r2
0033bf00  a3 31 a0 e1                                      lsr r3, r3, #3
0033bf04  00 30 84 e5                                      str r3, [r4]
0033bf08  ef ff ff ea                                      b #0x33becc
0033bf0c  50 51 ff eb                                      bl #0x310454
0033bf10  f6 ff ff ea                                      b #0x33bef0
0033bf14  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0033bf18  00 00 8f e0                                      add r0, pc, r0
0033bf1c  68 48 ff eb                                      bl #0x30e0c4
0033bf20  01 00 a0 e3                                      mov r0, #1
0033bf24  c7 47 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0033bf28  58 25 58 00                                      .byte 0x58, 0x25, 0x58, 0x00
