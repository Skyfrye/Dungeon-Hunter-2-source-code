; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c7c4, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<PFGInnerEdge*>
; alias: _ZNSaIP12PFGInnerEdgeE11_M_allocateEjRj
; demangled: std::allocator<PFGInnerEdge*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0051c7c4  10 40 2d e9                                      push {r4, lr}
0051c7c8  07 01 71 e3                                      cmn r1, #0xc0000001
0051c7cc  08 d0 4d e2                                      sub sp, sp, #8
0051c7d0  02 40 a0 e1                                      mov r4, r2
0051c7d4  10 00 00 8a                                      bhi #0x51c81c
0051c7d8  00 00 51 e3                                      cmp r1, #0
0051c7dc  01 00 a0 01                                      moveq r0, r1
0051c7e0  01 00 00 1a                                      bne #0x51c7ec
0051c7e4  08 d0 8d e2                                      add sp, sp, #8
0051c7e8  10 80 bd e8                                      pop {r4, pc}
0051c7ec  01 01 a0 e1                                      lsl r0, r1, #2
0051c7f0  80 00 50 e3                                      cmp r0, #0x80
0051c7f4  04 00 8d e5                                      str r0, [sp, #4]
0051c7f8  05 00 00 8a                                      bhi #0x51c814
0051c7fc  04 00 8d e2                                      add r0, sp, #4
0051c800  ae b1 07 eb                                      bl #0x708ec0
0051c804  04 30 9d e5                                      ldr r3, [sp, #4]
0051c808  23 31 a0 e1                                      lsr r3, r3, #2
0051c80c  00 30 84 e5                                      str r3, [r4]
0051c810  f3 ff ff ea                                      b #0x51c7e4
0051c814  0e cf f7 eb                                      bl #0x310454
0051c818  f9 ff ff ea                                      b #0x51c804
0051c81c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0051c820  00 00 8f e0                                      add r0, pc, r0
0051c824  26 c6 f7 eb                                      bl #0x30e0c4
0051c828  01 00 a0 e3                                      mov r0, #1
0051c82c  85 c5 f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0051c830  50 1c 3a 00                                      .byte 0x50, 0x1c, 0x3a, 0x00
