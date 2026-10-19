; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c970, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<rnd::ListElem>
; alias: _ZNSaIN3rnd8ListElemEE11_M_allocateEjRj
; demangled: std::allocator<rnd::ListElem>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0048c970  10 40 2d e9                                      push {r4, lr}
0048c974  33 33 03 e3                                      movw r3, #0x3333
0048c978  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048c97c  03 00 51 e1                                      cmp r1, r3
0048c980  08 d0 4d e2                                      sub sp, sp, #8
0048c984  02 40 a0 e1                                      mov r4, r2
0048c988  14 00 00 8a                                      bhi #0x48c9e0
0048c98c  00 00 51 e3                                      cmp r1, #0
0048c990  01 00 a0 01                                      moveq r0, r1
0048c994  01 00 00 1a                                      bne #0x48c9a0
0048c998  08 d0 8d e2                                      add sp, sp, #8
0048c99c  10 80 bd e8                                      pop {r4, pc}
0048c9a0  50 00 a0 e3                                      mov r0, #0x50
0048c9a4  90 01 00 e0                                      mul r0, r0, r1
0048c9a8  80 00 50 e3                                      cmp r0, #0x80
0048c9ac  04 00 8d e5                                      str r0, [sp, #4]
0048c9b0  08 00 00 8a                                      bhi #0x48c9d8
0048c9b4  04 00 8d e2                                      add r0, sp, #4
0048c9b8  40 f1 09 eb                                      bl #0x708ec0
0048c9bc  04 20 9d e5                                      ldr r2, [sp, #4]
0048c9c0  cd 3c 0c e3                                      movw r3, #0xcccd
0048c9c4  cc 3c 4c e3                                      movt r3, #0xcccc
0048c9c8  93 12 83 e0                                      umull r1, r3, r3, r2
0048c9cc  23 33 a0 e1                                      lsr r3, r3, #6
0048c9d0  00 30 84 e5                                      str r3, [r4]
0048c9d4  ef ff ff ea                                      b #0x48c998
0048c9d8  9d 0e fa eb                                      bl #0x310454
0048c9dc  f6 ff ff ea                                      b #0x48c9bc
0048c9e0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0048c9e4  00 00 8f e0                                      add r0, pc, r0
0048c9e8  b5 05 fa eb                                      bl #0x30e0c4
0048c9ec  01 00 a0 e3                                      mov r0, #1
0048c9f0  14 05 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0048c9f4  8c 1a 43 00                                      .byte 0x8c, 0x1a, 0x43, 0x00
