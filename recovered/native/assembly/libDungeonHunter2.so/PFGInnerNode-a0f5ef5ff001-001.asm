; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051b83c, declared_size=4, range_size=4, mode=arm
; class-group: PFGInnerNode
; alias: _ZN12PFGInnerNodeD1Ev
; demangled: PFGInnerNode::~PFGInnerNode()
; decoder-mode: arm
0051b83c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051c17c, declared_size=52, range_size=52, mode=arm
; class-group: PFGInnerNode
; alias: _ZN12PFGInnerNodeD0Ev
; demangled: PFGInnerNode::~PFGInnerNode()
; decoder-mode: arm
0051c17c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0051c180  24 20 9f e5                                      ldr r2, [pc, #0x24]
0051c184  10 40 2d e9                                      push {r4, lr}
0051c188  03 30 8f e0                                      add r3, pc, r3
0051c18c  02 20 93 e7                                      ldr r2, [r3, r2]
0051c190  00 40 a0 e1                                      mov r4, r0
0051c194  08 20 82 e2                                      add r2, r2, #8
0051c198  00 20 80 e5                                      str r2, [r0]
0051c19c  a7 d0 f7 eb                                      bl #0x310440
0051c1a0  04 00 a0 e1                                      mov r0, r4
0051c1a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0051c1a8  08 89 47 00 c4 27 00 00                          .byte 0x08, 0x89, 0x47, 0x00, 0xc4, 0x27, 0x00, 0x00
