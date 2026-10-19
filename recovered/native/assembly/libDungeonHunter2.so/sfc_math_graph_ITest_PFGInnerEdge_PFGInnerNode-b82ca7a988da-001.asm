; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005250bc, declared_size=24, range_size=24, mode=arm
; class-group: sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>
; alias: _ZNK3sfc4math5graph5ITestI12PFGInnerEdge12PFGInnerNodeE7isValidEPKS3_
; demangled: sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>::isValid(PFGInnerEdge const*) const
; decoder-mode: arm
005250bc  10 40 2d e9                                      push {r4, lr}
005250c0  01 00 a0 e1                                      mov r0, r1
005250c4  00 30 91 e5                                      ldr r3, [r1]
005250c8  0f e0 a0 e1                                      mov lr, pc
005250cc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005250d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005250d4, declared_size=24, range_size=24, mode=arm
; class-group: sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>
; alias: _ZNK3sfc4math5graph5ITestI12PFGInnerEdge12PFGInnerNodeE7isValidEPKS4_
; demangled: sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>::isValid(PFGInnerNode const*) const
; decoder-mode: arm
005250d4  10 40 2d e9                                      push {r4, lr}
005250d8  01 00 a0 e1                                      mov r0, r1
005250dc  00 30 91 e5                                      ldr r3, [r1]
005250e0  0f e0 a0 e1                                      mov lr, pc
005250e4  04 f0 93 e5                                      ldr pc, [r3, #4]
005250e8  10 80 bd e8                                      pop {r4, pc}
