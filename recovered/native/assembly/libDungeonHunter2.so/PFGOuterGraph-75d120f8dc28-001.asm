; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00523164, declared_size=52, range_size=52, mode=arm
; class-group: PFGOuterGraph
; alias: _ZN13PFGOuterGraphD1Ev
; demangled: PFGOuterGraph::~PFGOuterGraph()
; decoder-mode: arm
00523164  24 30 9f e5                                      ldr r3, [pc, #0x24]
00523168  24 20 9f e5                                      ldr r2, [pc, #0x24]
0052316c  10 40 2d e9                                      push {r4, lr}
00523170  03 30 8f e0                                      add r3, pc, r3
00523174  02 20 93 e7                                      ldr r2, [r3, r2]
00523178  00 40 a0 e1                                      mov r4, r0
0052317c  08 20 82 e2                                      add r2, r2, #8
00523180  00 20 80 e5                                      str r2, [r0]
00523184  dd ff ff eb                                      bl #0x523100
00523188  04 00 a0 e1                                      mov r0, r4
0052318c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00523190  20 19 47 00 2c 26 00 00                          .byte 0x20, 0x19, 0x47, 0x00, 0x2c, 0x26, 0x00, 0x00

; FUNCTION 0x00523198, declared_size=60, range_size=60, mode=arm
; class-group: PFGOuterGraph
; alias: _ZN13PFGOuterGraphD0Ev
; demangled: PFGOuterGraph::~PFGOuterGraph()
; decoder-mode: arm
00523198  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0052319c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005231a0  10 40 2d e9                                      push {r4, lr}
005231a4  03 30 8f e0                                      add r3, pc, r3
005231a8  02 20 93 e7                                      ldr r2, [r3, r2]
005231ac  00 40 a0 e1                                      mov r4, r0
005231b0  08 20 82 e2                                      add r2, r2, #8
005231b4  00 20 80 e5                                      str r2, [r0]
005231b8  d0 ff ff eb                                      bl #0x523100
005231bc  04 00 a0 e1                                      mov r0, r4
005231c0  9e b4 f7 eb                                      bl #0x310440
005231c4  04 00 a0 e1                                      mov r0, r4
005231c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005231cc  ec 18 47 00 2c 26 00 00                          .byte 0xec, 0x18, 0x47, 0x00, 0x2c, 0x26, 0x00, 0x00
