; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048bd38, declared_size=8, range_size=8, mode=arm
; class-group: rnd::EndPath::Impl
; alias: _ZN3rnd7EndPath4Impl7OneStepEPNS_4TileEPKNS_4ExitES6_
; demangled: rnd::EndPath::Impl::OneStep(rnd::Tile*, rnd::Exit const*, rnd::Exit const*)
; decoder-mode: arm
0048bd38  01 00 a0 e3                                      mov r0, #1
0048bd3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048c018, declared_size=60, range_size=60, mode=arm
; class-group: rnd::EndPath::Impl
; alias: _ZN3rnd7EndPath4ImplC1ERKS0_PNS_4Rule4ImplE
; demangled: rnd::EndPath::Impl::Impl(rnd::EndPath const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048c018  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c01c  28 40 9f e5                                      ldr r4, [pc, #0x28]
0048c020  00 50 a0 e1                                      mov r5, r0
0048c024  01 60 a0 e1                                      mov r6, r1
0048c028  a3 ff ff eb                                      bl #0x48bebc
0048c02c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0048c030  04 40 8f e0                                      add r4, pc, r4
0048c034  44 60 85 e5                                      str r6, [r5, #0x44]
0048c038  03 30 94 e7                                      ldr r3, [r4, r3]
0048c03c  05 00 a0 e1                                      mov r0, r5
0048c040  08 30 83 e2                                      add r3, r3, #8
0048c044  00 30 85 e5                                      str r3, [r5]
0048c048  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048c04c  60 8a 50 00 5c 37 00 00                          .byte 0x60, 0x8a, 0x50, 0x00, 0x5c, 0x37, 0x00, 0x00

; FUNCTION 0x0048c080, declared_size=60, range_size=60, mode=arm
; class-group: rnd::EndPath::Impl
; alias: _ZN3rnd7EndPath4ImplC2ERKS0_PNS_4Rule4ImplE
; demangled: rnd::EndPath::Impl::Impl(rnd::EndPath const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048c080  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c084  28 40 9f e5                                      ldr r4, [pc, #0x28]
0048c088  00 50 a0 e1                                      mov r5, r0
0048c08c  01 60 a0 e1                                      mov r6, r1
0048c090  89 ff ff eb                                      bl #0x48bebc
0048c094  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0048c098  04 40 8f e0                                      add r4, pc, r4
0048c09c  44 60 85 e5                                      str r6, [r5, #0x44]
0048c0a0  03 30 94 e7                                      ldr r3, [r4, r3]
0048c0a4  05 00 a0 e1                                      mov r0, r5
0048c0a8  08 30 83 e2                                      add r3, r3, #8
0048c0ac  00 30 85 e5                                      str r3, [r5]
0048c0b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048c0b4  f8 89 50 00 5c 37 00 00                          .byte 0xf8, 0x89, 0x50, 0x00, 0x5c, 0x37, 0x00, 0x00

; FUNCTION 0x0048d468, declared_size=52, range_size=52, mode=arm
; class-group: rnd::EndPath::Impl
; alias: _ZN3rnd7EndPath4ImplD1Ev
; demangled: rnd::EndPath::Impl::~Impl()
; decoder-mode: arm
0048d468  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048d46c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048d470  10 40 2d e9                                      push {r4, lr}
0048d474  03 30 8f e0                                      add r3, pc, r3
0048d478  02 20 93 e7                                      ldr r2, [r3, r2]
0048d47c  00 40 a0 e1                                      mov r4, r0
0048d480  08 20 82 e2                                      add r2, r2, #8
0048d484  00 20 80 e5                                      str r2, [r0]
0048d488  8d ff ff eb                                      bl #0x48d2c4
0048d48c  04 00 a0 e1                                      mov r0, r4
0048d490  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d494  1c 76 50 00 5c 37 00 00                          .byte 0x1c, 0x76, 0x50, 0x00, 0x5c, 0x37, 0x00, 0x00

; FUNCTION 0x0048d514, declared_size=60, range_size=60, mode=arm
; class-group: rnd::EndPath::Impl
; alias: _ZN3rnd7EndPath4ImplD0Ev
; demangled: rnd::EndPath::Impl::~Impl()
; decoder-mode: arm
0048d514  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d518  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d51c  10 40 2d e9                                      push {r4, lr}
0048d520  03 30 8f e0                                      add r3, pc, r3
0048d524  02 20 93 e7                                      ldr r2, [r3, r2]
0048d528  00 40 a0 e1                                      mov r4, r0
0048d52c  08 20 82 e2                                      add r2, r2, #8
0048d530  00 20 80 e5                                      str r2, [r0]
0048d534  62 ff ff eb                                      bl #0x48d2c4
0048d538  04 00 a0 e1                                      mov r0, r4
0048d53c  bf 0b fa eb                                      bl #0x310440
0048d540  04 00 a0 e1                                      mov r0, r4
0048d544  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d548  70 75 50 00 5c 37 00 00                          .byte 0x70, 0x75, 0x50, 0x00, 0x5c, 0x37, 0x00, 0x00
