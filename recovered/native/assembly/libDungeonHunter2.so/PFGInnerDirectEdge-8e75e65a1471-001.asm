; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005241ac, declared_size=4, range_size=4, mode=arm
; class-group: PFGInnerDirectEdge
; alias: _ZN18PFGInnerDirectEdgeD1Ev
; demangled: PFGInnerDirectEdge::~PFGInnerDirectEdge()
; decoder-mode: arm
005241ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005241b0, declared_size=8, range_size=8, mode=arm
; class-group: PFGInnerDirectEdge
; alias: _ZNK18PFGInnerDirectEdge9GetSourceEv
; demangled: PFGInnerDirectEdge::GetSource() const
; decoder-mode: arm
005241b0  18 00 80 e2                                      add r0, r0, #0x18
005241b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005241b8, declared_size=8, range_size=8, mode=arm
; class-group: PFGInnerDirectEdge
; alias: _ZNK18PFGInnerDirectEdge14GetDestinationEv
; demangled: PFGInnerDirectEdge::GetDestination() const
; decoder-mode: arm
005241b8  24 00 80 e2                                      add r0, r0, #0x24
005241bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00524348, declared_size=52, range_size=52, mode=arm
; class-group: PFGInnerDirectEdge
; alias: _ZN18PFGInnerDirectEdgeD0Ev
; demangled: PFGInnerDirectEdge::~PFGInnerDirectEdge()
; decoder-mode: arm
00524348  24 30 9f e5                                      ldr r3, [pc, #0x24]
0052434c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00524350  10 40 2d e9                                      push {r4, lr}
00524354  03 30 8f e0                                      add r3, pc, r3
00524358  02 20 93 e7                                      ldr r2, [r3, r2]
0052435c  00 40 a0 e1                                      mov r4, r0
00524360  08 20 82 e2                                      add r2, r2, #8
00524364  00 20 80 e5                                      str r2, [r0]
00524368  34 b0 f7 eb                                      bl #0x310440
0052436c  04 00 a0 e1                                      mov r0, r4
00524370  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00524374  3c 07 47 00 60 0f 00 00                          .byte 0x3c, 0x07, 0x47, 0x00, 0x60, 0x0f, 0x00, 0x00
