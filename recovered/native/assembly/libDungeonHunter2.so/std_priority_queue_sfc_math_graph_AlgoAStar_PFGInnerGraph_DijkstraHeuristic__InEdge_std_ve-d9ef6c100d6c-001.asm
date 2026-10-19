; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052a69c, declared_size=500, range_size=500, mode=arm
; class-group: std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp>
; alias: _ZNSt14priority_queueIN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeESt6vectorIS7_SaIS7_EENS6_6_ECompEE4pushERKS7_
; demangled: std::priority_queue<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, std::vector<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, std::allocator<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> >, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp>::push(sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge const&)
; decoder-mode: arm
0052a69c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0052a6a0  48 00 90 e9                                      ldmib r0, {r3, r6}
0052a6a4  14 d0 4d e2                                      sub sp, sp, #0x14
0052a6a8  00 40 a0 e1                                      mov r4, r0
0052a6ac  06 00 53 e1                                      cmp r3, r6
0052a6b0  01 50 a0 e1                                      mov r5, r1
0052a6b4  12 00 00 0a                                      beq #0x52a704
0052a6b8  00 20 91 e5                                      ldr r2, [r1]
0052a6bc  00 20 83 e5                                      str r2, [r3]
0052a6c0  04 20 91 e5                                      ldr r2, [r1, #4]
0052a6c4  04 20 83 e5                                      str r2, [r3, #4]
0052a6c8  08 20 91 e5                                      ldr r2, [r1, #8]
0052a6cc  08 20 83 e5                                      str r2, [r3, #8]
0052a6d0  04 60 90 e5                                      ldr r6, [r0, #4]
0052a6d4  00 70 90 e5                                      ldr r7, [r0]
0052a6d8  0c 60 86 e2                                      add r6, r6, #0xc
0052a6dc  04 60 80 e5                                      str r6, [r0, #4]
0052a6e0  00 c0 a0 e3                                      mov ip, #0
0052a6e4  07 00 a0 e1                                      mov r0, r7
0052a6e8  06 10 a0 e1                                      mov r1, r6
0052a6ec  0c 30 a0 e1                                      mov r3, ip
0052a6f0  00 20 a0 e3                                      mov r2, #0
0052a6f4  00 c0 8d e5                                      str ip, [sp]
0052a6f8  10 fb ff eb                                      bl #0x529340
0052a6fc  14 d0 8d e2                                      add sp, sp, #0x14
0052a700  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0052a704  00 20 90 e5                                      ldr r2, [r0]
0052a708  55 35 05 e3                                      movw r3, #0x5555
0052a70c  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0052a710  06 20 62 e0                                      rsb r2, r2, r6
0052a714  42 21 a0 e1                                      asr r2, r2, #2
0052a718  02 11 82 e0                                      add r1, r2, r2, lsl #2
0052a71c  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052a720  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052a724  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052a728  81 20 82 e0                                      add r2, r2, r1, lsl #1
0052a72c  01 00 52 e3                                      cmp r2, #1
0052a730  02 10 82 20                                      addhs r1, r2, r2
0052a734  01 10 82 32                                      addlo r1, r2, #1
0052a738  03 00 51 e1                                      cmp r1, r3
0052a73c  4e 00 00 8a                                      bhi #0x52a87c
0052a740  01 00 52 e1                                      cmp r2, r1
0052a744  4c 00 00 8a                                      bhi #0x52a87c
0052a748  10 20 8d e2                                      add r2, sp, #0x10
0052a74c  04 10 22 e5                                      str r1, [r2, #-4]!
0052a750  08 00 84 e2                                      add r0, r4, #8
0052a754  96 fe ff eb                                      bl #0x52a1b4
0052a758  00 30 94 e5                                      ldr r3, [r4]
0052a75c  00 70 a0 e1                                      mov r7, r0
0052a760  06 60 63 e0                                      rsb r6, r3, r6
0052a764  46 61 a0 e1                                      asr r6, r6, #2
0052a768  06 21 86 e0                                      add r2, r6, r6, lsl #2
0052a76c  02 22 82 e0                                      add r2, r2, r2, lsl #4
0052a770  02 24 82 e0                                      add r2, r2, r2, lsl #8
0052a774  02 28 82 e0                                      add r2, r2, r2, lsl #16
0052a778  82 60 86 e0                                      add r6, r6, r2, lsl #1
0052a77c  00 00 56 e3                                      cmp r6, #0
0052a780  00 30 a0 d1                                      movle r3, r0
0052a784  0d 00 00 da                                      ble #0x52a7c0
0052a788  06 10 a0 e1                                      mov r1, r6
0052a78c  00 20 a0 e1                                      mov r2, r0
0052a790  00 00 93 e5                                      ldr r0, [r3]
0052a794  01 10 51 e2                                      subs r1, r1, #1
0052a798  00 00 82 e5                                      str r0, [r2]
0052a79c  04 00 93 e5                                      ldr r0, [r3, #4]
0052a7a0  04 00 82 e5                                      str r0, [r2, #4]
0052a7a4  08 00 93 e5                                      ldr r0, [r3, #8]
0052a7a8  0c 30 83 e2                                      add r3, r3, #0xc
0052a7ac  08 00 82 e5                                      str r0, [r2, #8]
0052a7b0  0c 20 82 e2                                      add r2, r2, #0xc
0052a7b4  f5 ff ff 1a                                      bne #0x52a790
0052a7b8  0c 30 a0 e3                                      mov r3, #0xc
0052a7bc  93 76 23 e0                                      mla r3, r3, r6, r7
0052a7c0  00 20 95 e5                                      ldr r2, [r5]
0052a7c4  0c 60 83 e2                                      add r6, r3, #0xc
0052a7c8  00 20 83 e5                                      str r2, [r3]
0052a7cc  04 20 95 e5                                      ldr r2, [r5, #4]
0052a7d0  04 20 83 e5                                      str r2, [r3, #4]
0052a7d4  08 20 95 e5                                      ldr r2, [r5, #8]
0052a7d8  08 20 83 e5                                      str r2, [r3, #8]
0052a7dc  09 00 94 e8                                      ldm r4, {r0, r3}
0052a7e0  00 00 53 e1                                      cmp r3, r0
0052a7e4  0e 00 00 0a                                      beq #0x52a824
0052a7e8  0c 20 43 e2                                      sub r2, r3, #0xc
0052a7ec  02 20 60 e0                                      rsb r2, r0, r2
0052a7f0  22 21 a0 e1                                      lsr r2, r2, #2
0052a7f4  02 11 82 e0                                      add r1, r2, r2, lsl #2
0052a7f8  81 12 81 e0                                      add r1, r1, r1, lsl #5
0052a7fc  81 10 82 e0                                      add r1, r2, r1, lsl #1
0052a800  81 12 81 e0                                      add r1, r1, r1, lsl #5
0052a804  81 c7 a0 e1                                      lsl ip, r1, #0xf
0052a808  0c 10 61 e0                                      rsb r1, r1, ip
0052a80c  81 20 82 e0                                      add r2, r2, r1, lsl #1
0052a810  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0052a814  0b 10 e0 e3                                      mvn r1, #0xb
0052a818  91 02 02 e0                                      mul r2, r1, r2
0052a81c  01 20 82 e0                                      add r2, r2, r1
0052a820  02 30 83 e0                                      add r3, r3, r2
0052a824  00 00 53 e3                                      cmp r3, #0
0052a828  08 20 94 e5                                      ldr r2, [r4, #8]
0052a82c  0b 00 00 0a                                      beq #0x52a860
0052a830  02 30 63 e0                                      rsb r3, r3, r2
0052a834  43 31 a0 e1                                      asr r3, r3, #2
0052a838  03 11 83 e0                                      add r1, r3, r3, lsl #2
0052a83c  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052a840  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052a844  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052a848  81 30 83 e0                                      add r3, r3, r1, lsl #1
0052a84c  0c 10 a0 e3                                      mov r1, #0xc
0052a850  91 03 01 e0                                      mul r1, r1, r3
0052a854  80 00 51 e3                                      cmp r1, #0x80
0052a858  0a 00 00 8a                                      bhi #0x52a888
0052a85c  a7 79 07 eb                                      bl #0x708f00
0052a860  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0052a864  0c 20 a0 e3                                      mov r2, #0xc
0052a868  00 70 84 e5                                      str r7, [r4]
0052a86c  92 73 23 e0                                      mla r3, r2, r3, r7
0052a870  04 60 84 e5                                      str r6, [r4, #4]
0052a874  08 30 84 e5                                      str r3, [r4, #8]
0052a878  98 ff ff ea                                      b #0x52a6e0
0052a87c  55 15 05 e3                                      movw r1, #0x5555
0052a880  01 17 81 e1                                      orr r1, r1, r1, lsl #14
0052a884  af ff ff ea                                      b #0x52a748
0052a888  ec 96 f7 eb                                      bl #0x310440
0052a88c  f3 ff ff ea                                      b #0x52a860
