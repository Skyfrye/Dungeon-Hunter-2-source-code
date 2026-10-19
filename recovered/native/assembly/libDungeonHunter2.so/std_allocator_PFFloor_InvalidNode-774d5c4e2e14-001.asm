; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c6cc, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<PFFloor::InvalidNode>
; alias: _ZNSaIN7PFFloor11InvalidNodeEE11_M_allocateEjRj
; demangled: std::allocator<PFFloor::InvalidNode>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0051c6cc  10 40 2d e9                                      push {r4, lr}
0051c6d0  24 39 04 e3                                      movw r3, #0x4924
0051c6d4  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0051c6d8  03 00 51 e1                                      cmp r1, r3
0051c6dc  08 d0 4d e2                                      sub sp, sp, #8
0051c6e0  02 40 a0 e1                                      mov r4, r2
0051c6e4  14 00 00 8a                                      bhi #0x51c73c
0051c6e8  00 00 51 e3                                      cmp r1, #0
0051c6ec  01 00 a0 01                                      moveq r0, r1
0051c6f0  01 00 00 1a                                      bne #0x51c6fc
0051c6f4  08 d0 8d e2                                      add sp, sp, #8
0051c6f8  10 80 bd e8                                      pop {r4, pc}
0051c6fc  38 00 a0 e3                                      mov r0, #0x38
0051c700  90 01 00 e0                                      mul r0, r0, r1
0051c704  80 00 50 e3                                      cmp r0, #0x80
0051c708  04 00 8d e5                                      str r0, [sp, #4]
0051c70c  08 00 00 8a                                      bhi #0x51c734
0051c710  04 00 8d e2                                      add r0, sp, #4
0051c714  e9 b1 07 eb                                      bl #0x708ec0
0051c718  04 20 9d e5                                      ldr r2, [sp, #4]
0051c71c  25 39 04 e3                                      movw r3, #0x4925
0051c720  92 34 42 e3                                      movt r3, #0x2492
0051c724  a2 21 a0 e1                                      lsr r2, r2, #3
0051c728  93 12 83 e0                                      umull r1, r3, r3, r2
0051c72c  00 30 84 e5                                      str r3, [r4]
0051c730  ef ff ff ea                                      b #0x51c6f4
0051c734  46 cf f7 eb                                      bl #0x310454
0051c738  f6 ff ff ea                                      b #0x51c718
0051c73c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0051c740  00 00 8f e0                                      add r0, pc, r0
0051c744  5e c6 f7 eb                                      bl #0x30e0c4
0051c748  01 00 a0 e3                                      mov r0, #1
0051c74c  bd c5 f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0051c750  30 1d 3a 00                                      .byte 0x30, 0x1d, 0x3a, 0x00
