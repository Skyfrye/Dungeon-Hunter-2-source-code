; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052a5e4, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >
; alias: _ZNSt6vectorIN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeESaIS7_EED1Ev
; demangled: std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >::~vector()
; decoder-mode: arm
0052a5e4  10 40 2d e9                                      push {r4, lr}
0052a5e8  00 40 a0 e1                                      mov r4, r0
0052a5ec  00 00 90 e5                                      ldr r0, [r0]
0052a5f0  00 00 50 e3                                      cmp r0, #0
0052a5f4  0c 00 00 0a                                      beq #0x52a62c
0052a5f8  08 30 94 e5                                      ldr r3, [r4, #8]
0052a5fc  03 30 60 e0                                      rsb r3, r0, r3
0052a600  43 31 a0 e1                                      asr r3, r3, #2
0052a604  03 11 83 e0                                      add r1, r3, r3, lsl #2
0052a608  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052a60c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052a610  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052a614  81 30 83 e0                                      add r3, r3, r1, lsl #1
0052a618  0c 10 a0 e3                                      mov r1, #0xc
0052a61c  91 03 01 e0                                      mul r1, r1, r3
0052a620  80 00 51 e3                                      cmp r1, #0x80
0052a624  02 00 00 8a                                      bhi #0x52a634
0052a628  34 7a 07 eb                                      bl #0x708f00
0052a62c  04 00 a0 e1                                      mov r0, r4
0052a630  10 80 bd e8                                      pop {r4, pc}
0052a634  81 97 f7 eb                                      bl #0x310440
0052a638  04 00 a0 e1                                      mov r0, r4
0052a63c  10 80 bd e8                                      pop {r4, pc}
