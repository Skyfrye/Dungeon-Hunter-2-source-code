; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051b840, declared_size=4, range_size=4, mode=arm
; class-group: PFGInnerEdge
; alias: _ZN12PFGInnerEdgeD1Ev
; demangled: PFGInnerEdge::~PFGInnerEdge()
; decoder-mode: arm
0051b840  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051b844, declared_size=24, range_size=24, mode=arm
; class-group: PFGInnerEdge
; alias: _ZNK12PFGInnerEdge9GetSourceEv
; demangled: PFGInnerEdge::GetSource() const
; decoder-mode: arm
0051b844  10 40 2d e9                                      push {r4, lr}
0051b848  00 30 90 e5                                      ldr r3, [r0]
0051b84c  0f e0 a0 e1                                      mov lr, pc
0051b850  04 f0 93 e5                                      ldr pc, [r3, #4]
0051b854  08 00 80 e2                                      add r0, r0, #8
0051b858  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051b85c, declared_size=24, range_size=24, mode=arm
; class-group: PFGInnerEdge
; alias: _ZNK12PFGInnerEdge14GetDestinationEv
; demangled: PFGInnerEdge::GetDestination() const
; decoder-mode: arm
0051b85c  10 40 2d e9                                      push {r4, lr}
0051b860  00 30 90 e5                                      ldr r3, [r0]
0051b864  0f e0 a0 e1                                      mov lr, pc
0051b868  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0051b86c  08 00 80 e2                                      add r0, r0, #8
0051b870  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051c114, declared_size=52, range_size=52, mode=arm
; class-group: PFGInnerEdge
; alias: _ZN12PFGInnerEdgeD0Ev
; demangled: PFGInnerEdge::~PFGInnerEdge()
; decoder-mode: arm
0051c114  24 30 9f e5                                      ldr r3, [pc, #0x24]
0051c118  24 20 9f e5                                      ldr r2, [pc, #0x24]
0051c11c  10 40 2d e9                                      push {r4, lr}
0051c120  03 30 8f e0                                      add r3, pc, r3
0051c124  02 20 93 e7                                      ldr r2, [r3, r2]
0051c128  00 40 a0 e1                                      mov r4, r0
0051c12c  08 20 82 e2                                      add r2, r2, #8
0051c130  00 20 80 e5                                      str r2, [r0]
0051c134  c1 d0 f7 eb                                      bl #0x310440
0051c138  04 00 a0 e1                                      mov r0, r4
0051c13c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0051c140  70 89 47 00 60 0f 00 00                          .byte 0x70, 0x89, 0x47, 0x00, 0x60, 0x0f, 0x00, 0x00
