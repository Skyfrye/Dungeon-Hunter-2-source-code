; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00529fc0, declared_size=52, range_size=52, mode=arm
; class-group: sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>
; alias: _ZN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicED1Ev
; demangled: sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::~AlgoAStar()
; decoder-mode: arm
00529fc0  24 30 9f e5                                      ldr r3, [pc, #0x24]
00529fc4  24 20 9f e5                                      ldr r2, [pc, #0x24]
00529fc8  10 40 2d e9                                      push {r4, lr}
00529fcc  03 30 8f e0                                      add r3, pc, r3
00529fd0  02 20 93 e7                                      ldr r2, [r3, r2]
00529fd4  00 40 a0 e1                                      mov r4, r0
00529fd8  08 20 82 e2                                      add r2, r2, #8
00529fdc  08 20 80 e4                                      str r2, [r0], #8
00529fe0  d9 ff ff eb                                      bl #0x529f4c
00529fe4  04 00 a0 e1                                      mov r0, r4
00529fe8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00529fec  c4 aa 46 00 30 3d 00 00                          .byte 0xc4, 0xaa, 0x46, 0x00, 0x30, 0x3d, 0x00, 0x00

; FUNCTION 0x0052a030, declared_size=60, range_size=60, mode=arm
; class-group: sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>
; alias: _ZN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicED0Ev
; demangled: sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::~AlgoAStar()
; decoder-mode: arm
0052a030  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0052a034  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0052a038  10 40 2d e9                                      push {r4, lr}
0052a03c  03 30 8f e0                                      add r3, pc, r3
0052a040  02 20 93 e7                                      ldr r2, [r3, r2]
0052a044  00 40 a0 e1                                      mov r4, r0
0052a048  08 20 82 e2                                      add r2, r2, #8
0052a04c  08 20 80 e4                                      str r2, [r0], #8
0052a050  bd ff ff eb                                      bl #0x529f4c
0052a054  04 00 a0 e1                                      mov r0, r4
0052a058  f8 98 f7 eb                                      bl #0x310440
0052a05c  04 00 a0 e1                                      mov r0, r4
0052a060  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0052a064  54 aa 46 00 30 3d 00 00                          .byte 0x54, 0xaa, 0x46, 0x00, 0x30, 0x3d, 0x00, 0x00

; FUNCTION 0x0052ca20, declared_size=368, range_size=368, mode=arm
; class-group: sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>
; alias: _ZN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE9_markNodeERSt3mapIjNS5_7_InEdgeESt4lessIjESaISt4pairIKjS7_EEERS7_
; demangled: sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_markNode(std::map<unsigned int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge> > >&, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge&)
; decoder-mode: arm
0052ca20  70 40 2d e9                                      push {r4, r5, r6, lr}
0052ca24  00 30 92 e5                                      ldr r3, [r2]
0052ca28  18 d0 4d e2                                      sub sp, sp, #0x18
0052ca2c  01 60 a0 e1                                      mov r6, r1
0052ca30  03 00 a0 e1                                      mov r0, r3
0052ca34  00 30 93 e5                                      ldr r3, [r3]
0052ca38  02 50 a0 e1                                      mov r5, r2
0052ca3c  0f e0 a0 e1                                      mov lr, pc
0052ca40  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052ca44  00 30 90 e5                                      ldr r3, [r0]
0052ca48  00 40 a0 e1                                      mov r4, r0
0052ca4c  0f e0 a0 e1                                      mov lr, pc
0052ca50  00 f0 93 e5                                      ldr pc, [r3]
0052ca54  04 30 96 e5                                      ldr r3, [r6, #4]
0052ca58  00 00 53 e3                                      cmp r3, #0
0052ca5c  47 00 00 0a                                      beq #0x52cb80
0052ca60  06 10 a0 e1                                      mov r1, r6
0052ca64  00 00 00 ea                                      b #0x52ca6c
0052ca68  02 30 a0 e1                                      mov r3, r2
0052ca6c  10 20 93 e5                                      ldr r2, [r3, #0x10]
0052ca70  02 00 50 e1                                      cmp r0, r2
0052ca74  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0052ca78  08 20 93 95                                      ldrls r2, [r3, #8]
0052ca7c  01 30 a0 81                                      movhi r3, r1
0052ca80  03 10 a0 e1                                      mov r1, r3
0052ca84  00 00 52 e3                                      cmp r2, #0
0052ca88  f6 ff ff 1a                                      bne #0x52ca68
0052ca8c  03 00 56 e1                                      cmp r6, r3
0052ca90  0a 00 00 0a                                      beq #0x52cac0
0052ca94  10 20 93 e5                                      ldr r2, [r3, #0x10]
0052ca98  02 00 50 e1                                      cmp r0, r2
0052ca9c  37 00 00 3a                                      blo #0x52cb80
0052caa0  03 00 56 e1                                      cmp r6, r3
0052caa4  05 00 00 0a                                      beq #0x52cac0
0052caa8  18 00 93 e5                                      ldr r0, [r3, #0x18]
0052caac  04 10 95 e5                                      ldr r1, [r5, #4]
0052cab0  bd 87 f7 eb                                      bl #0x30e9ac
0052cab4  00 00 50 e3                                      cmp r0, #0
0052cab8  00 00 a0 13                                      movne r0, #0
0052cabc  2d 00 00 1a                                      bne #0x52cb78
0052cac0  04 00 a0 e1                                      mov r0, r4
0052cac4  00 30 94 e5                                      ldr r3, [r4]
0052cac8  0f e0 a0 e1                                      mov lr, pc
0052cacc  00 f0 93 e5                                      ldr pc, [r3]
0052cad0  04 c0 96 e5                                      ldr ip, [r6, #4]
0052cad4  00 40 a0 e1                                      mov r4, r0
0052cad8  00 00 5c e3                                      cmp ip, #0
0052cadc  06 20 a0 11                                      movne r2, r6
0052cae0  01 00 00 1a                                      bne #0x52caec
0052cae4  27 00 00 ea                                      b #0x52cb88
0052cae8  03 c0 a0 e1                                      mov ip, r3
0052caec  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052caf0  03 00 54 e1                                      cmp r4, r3
0052caf4  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0052caf8  08 30 9c 95                                      ldrls r3, [ip, #8]
0052cafc  02 c0 a0 81                                      movhi ip, r2
0052cb00  0c 20 a0 e1                                      mov r2, ip
0052cb04  00 00 53 e3                                      cmp r3, #0
0052cb08  f6 ff ff 1a                                      bne #0x52cae8
0052cb0c  0c 00 56 e1                                      cmp r6, ip
0052cb10  03 00 00 0a                                      beq #0x52cb24
0052cb14  10 20 9c e5                                      ldr r2, [ip, #0x10]
0052cb18  0c 30 a0 e1                                      mov r3, ip
0052cb1c  02 00 54 e1                                      cmp r4, r2
0052cb20  0c 00 00 2a                                      bhs #0x52cb58
0052cb24  00 e0 a0 e3                                      mov lr, #0
0052cb28  0d 30 a0 e1                                      mov r3, sp
0052cb2c  00 40 8d e5                                      str r4, [sp]
0052cb30  06 10 a0 e1                                      mov r1, r6
0052cb34  10 00 8d e2                                      add r0, sp, #0x10
0052cb38  14 20 8d e2                                      add r2, sp, #0x14
0052cb3c  00 40 a0 e3                                      mov r4, #0
0052cb40  04 40 8d e5                                      str r4, [sp, #4]
0052cb44  0c e0 8d e5                                      str lr, [sp, #0xc]
0052cb48  14 c0 8d e5                                      str ip, [sp, #0x14]
0052cb4c  08 e0 8d e5                                      str lr, [sp, #8]
0052cb50  d5 fe ff eb                                      bl #0x52c6ac
0052cb54  10 30 9d e5                                      ldr r3, [sp, #0x10]
0052cb58  05 20 a0 e1                                      mov r2, r5
0052cb5c  04 10 92 e4                                      ldr r1, [r2], #4
0052cb60  01 00 a0 e3                                      mov r0, #1
0052cb64  14 10 83 e5                                      str r1, [r3, #0x14]
0052cb68  04 10 95 e5                                      ldr r1, [r5, #4]
0052cb6c  18 10 83 e5                                      str r1, [r3, #0x18]
0052cb70  04 20 92 e5                                      ldr r2, [r2, #4]
0052cb74  1c 20 83 e5                                      str r2, [r3, #0x1c]
0052cb78  18 d0 8d e2                                      add sp, sp, #0x18
0052cb7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0052cb80  06 30 a0 e1                                      mov r3, r6
0052cb84  c5 ff ff ea                                      b #0x52caa0
0052cb88  06 c0 a0 e1                                      mov ip, r6
0052cb8c  de ff ff ea                                      b #0x52cb0c
