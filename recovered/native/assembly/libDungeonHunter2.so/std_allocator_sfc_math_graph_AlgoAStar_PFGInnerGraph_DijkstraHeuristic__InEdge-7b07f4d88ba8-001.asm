; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052a1b4, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>
; alias: _ZNSaIN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeEE11_M_allocateEjRj
; demangled: std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0052a1b4  10 40 2d e9                                      push {r4, lr}
0052a1b8  55 35 05 e3                                      movw r3, #0x5555
0052a1bc  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0052a1c0  03 00 51 e1                                      cmp r1, r3
0052a1c4  08 d0 4d e2                                      sub sp, sp, #8
0052a1c8  02 40 a0 e1                                      mov r4, r2
0052a1cc  14 00 00 8a                                      bhi #0x52a224
0052a1d0  00 00 51 e3                                      cmp r1, #0
0052a1d4  01 00 a0 01                                      moveq r0, r1
0052a1d8  01 00 00 1a                                      bne #0x52a1e4
0052a1dc  08 d0 8d e2                                      add sp, sp, #8
0052a1e0  10 80 bd e8                                      pop {r4, pc}
0052a1e4  0c 00 a0 e3                                      mov r0, #0xc
0052a1e8  90 01 00 e0                                      mul r0, r0, r1
0052a1ec  80 00 50 e3                                      cmp r0, #0x80
0052a1f0  04 00 8d e5                                      str r0, [sp, #4]
0052a1f4  08 00 00 8a                                      bhi #0x52a21c
0052a1f8  04 00 8d e2                                      add r0, sp, #4
0052a1fc  2f 7b 07 eb                                      bl #0x708ec0
0052a200  04 20 9d e5                                      ldr r2, [sp, #4]
0052a204  ab 3a 0a e3                                      movw r3, #0xaaab
0052a208  aa 3a 4a e3                                      movt r3, #0xaaaa
0052a20c  93 12 83 e0                                      umull r1, r3, r3, r2
0052a210  a3 31 a0 e1                                      lsr r3, r3, #3
0052a214  00 30 84 e5                                      str r3, [r4]
0052a218  ef ff ff ea                                      b #0x52a1dc
0052a21c  8c 98 f7 eb                                      bl #0x310454
0052a220  f6 ff ff ea                                      b #0x52a200
0052a224  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0052a228  00 00 8f e0                                      add r0, pc, r0
0052a22c  a4 8f f7 eb                                      bl #0x30e0c4
0052a230  01 00 a0 e3                                      mov r0, #1
0052a234  03 8f f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0052a238  48 42 39 00                                      .byte 0x48, 0x42, 0x39, 0x00
