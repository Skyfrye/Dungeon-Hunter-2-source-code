; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051c520, declared_size=96, range_size=96, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7_InNodeD1Ev
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode::~_InNode()
; decoder-mode: arm
0051c520  70 40 2d e9                                      push {r4, r5, r6, lr}
0051c524  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0051c528  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0051c52c  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
0051c530  03 30 8f e0                                      add r3, pc, r3
0051c534  02 20 93 e7                                      ldr r2, [r3, r2]
0051c538  00 00 51 e3                                      cmp r1, #0
0051c53c  00 40 a0 e1                                      mov r4, r0
0051c540  08 20 82 e2                                      add r2, r2, #8
0051c544  00 20 80 e5                                      str r2, [r0]
0051c548  08 00 00 0a                                      beq #0x51c570
0051c54c  2c 50 80 e2                                      add r5, r0, #0x2c
0051c550  05 00 a0 e1                                      mov r0, r5
0051c554  30 10 94 e5                                      ldr r1, [r4, #0x30]
0051c558  e2 ff ff eb                                      bl #0x51c4e8
0051c55c  00 30 a0 e3                                      mov r3, #0
0051c560  38 50 84 e5                                      str r5, [r4, #0x38]
0051c564  3c 30 84 e5                                      str r3, [r4, #0x3c]
0051c568  34 50 84 e5                                      str r5, [r4, #0x34]
0051c56c  30 30 84 e5                                      str r3, [r4, #0x30]
0051c570  04 00 a0 e1                                      mov r0, r4
0051c574  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0051c578  60 85 47 00 24 3d 00 00                          .byte 0x60, 0x85, 0x47, 0x00, 0x24, 0x3d, 0x00, 0x00

; FUNCTION 0x0051c580, declared_size=124, range_size=124, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7_InNodeD0Ev
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode::~_InNode()
; decoder-mode: arm
0051c580  70 40 2d e9                                      push {r4, r5, r6, lr}
0051c584  64 50 9f e5                                      ldr r5, [pc, #0x64]
0051c588  64 30 9f e5                                      ldr r3, [pc, #0x64]
0051c58c  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0051c590  05 50 8f e0                                      add r5, pc, r5
0051c594  03 30 95 e7                                      ldr r3, [r5, r3]
0051c598  00 00 52 e3                                      cmp r2, #0
0051c59c  00 40 a0 e1                                      mov r4, r0
0051c5a0  08 30 83 e2                                      add r3, r3, #8
0051c5a4  00 30 80 e5                                      str r3, [r0]
0051c5a8  08 00 00 0a                                      beq #0x51c5d0
0051c5ac  2c 60 80 e2                                      add r6, r0, #0x2c
0051c5b0  06 00 a0 e1                                      mov r0, r6
0051c5b4  30 10 94 e5                                      ldr r1, [r4, #0x30]
0051c5b8  ca ff ff eb                                      bl #0x51c4e8
0051c5bc  00 30 a0 e3                                      mov r3, #0
0051c5c0  38 60 84 e5                                      str r6, [r4, #0x38]
0051c5c4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0051c5c8  34 60 84 e5                                      str r6, [r4, #0x34]
0051c5cc  30 30 84 e5                                      str r3, [r4, #0x30]
0051c5d0  20 30 9f e5                                      ldr r3, [pc, #0x20]
0051c5d4  04 00 a0 e1                                      mov r0, r4
0051c5d8  03 30 95 e7                                      ldr r3, [r5, r3]
0051c5dc  08 30 83 e2                                      add r3, r3, #8
0051c5e0  00 30 84 e5                                      str r3, [r4]
0051c5e4  95 cf f7 eb                                      bl #0x310440
0051c5e8  04 00 a0 e1                                      mov r0, r4
0051c5ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0051c5f0  00 85 47 00 24 3d 00 00 c4 27 00 00              .byte 0x00, 0x85, 0x47, 0x00, 0x24, 0x3d, 0x00, 0x00, 0xc4, 0x27, 0x00, 0x00
