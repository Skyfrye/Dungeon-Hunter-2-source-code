; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522f70, declared_size=400, range_size=400, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGOuterEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGOuterEdgeE5clearEv
; demangled: sfc::math::graph::GraphSparse<PFGOuterEdge>::clear()
; decoder-mode: arm
00522f70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00522f74  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00522f78  00 80 a0 e1                                      mov r8, r0
00522f7c  04 70 80 e2                                      add r7, r0, #4
00522f80  00 a0 a0 e3                                      mov sl, #0
00522f84  04 00 57 e1                                      cmp r7, r4
00522f88  28 00 00 0a                                      beq #0x523030
00522f8c  14 60 94 e5                                      ldr r6, [r4, #0x14]
00522f90  10 90 96 e5                                      ldr sb, [r6, #0x10]
00522f94  08 50 86 e2                                      add r5, r6, #8
00522f98  09 00 55 e1                                      cmp r5, sb
00522f9c  11 00 00 0a                                      beq #0x522fe8
00522fa0  14 30 99 e5                                      ldr r3, [sb, #0x14]
00522fa4  00 00 53 e3                                      cmp r3, #0
00522fa8  03 00 00 0a                                      beq #0x522fbc
00522fac  03 00 a0 e1                                      mov r0, r3
00522fb0  00 30 93 e5                                      ldr r3, [r3]
00522fb4  0f e0 a0 e1                                      mov lr, pc
00522fb8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00522fbc  0c 20 99 e5                                      ldr r2, [sb, #0xc]
00522fc0  00 00 52 e3                                      cmp r2, #0
00522fc4  01 00 00 1a                                      bne #0x522fd0
00522fc8  24 00 00 ea                                      b #0x523060
00522fcc  03 20 a0 e1                                      mov r2, r3
00522fd0  08 30 92 e5                                      ldr r3, [r2, #8]
00522fd4  00 00 53 e3                                      cmp r3, #0
00522fd8  fb ff ff 1a                                      bne #0x522fcc
00522fdc  02 90 a0 e1                                      mov sb, r2
00522fe0  09 00 55 e1                                      cmp r5, sb
00522fe4  ed ff ff 1a                                      bne #0x522fa0
00522fe8  18 30 96 e5                                      ldr r3, [r6, #0x18]
00522fec  00 00 53 e3                                      cmp r3, #0
00522ff0  27 00 00 1a                                      bne #0x523094
00522ff4  06 00 a0 e1                                      mov r0, r6
00522ff8  00 30 96 e5                                      ldr r3, [r6]
00522ffc  0f e0 a0 e1                                      mov lr, pc
00523000  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00523004  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00523008  00 00 52 e3                                      cmp r2, #0
0052300c  2e 00 00 0a                                      beq #0x5230cc
00523010  02 40 a0 e1                                      mov r4, r2
00523014  00 00 00 ea                                      b #0x52301c
00523018  03 40 a0 e1                                      mov r4, r3
0052301c  08 30 94 e5                                      ldr r3, [r4, #8]
00523020  00 00 53 e3                                      cmp r3, #0
00523024  fb ff ff 1a                                      bne #0x523018
00523028  04 00 57 e1                                      cmp r7, r4
0052302c  d6 ff ff 1a                                      bne #0x522f8c
00523030  14 30 98 e5                                      ldr r3, [r8, #0x14]
00523034  00 00 53 e3                                      cmp r3, #0
00523038  07 00 00 0a                                      beq #0x52305c
0052303c  07 00 a0 e1                                      mov r0, r7
00523040  08 10 98 e5                                      ldr r1, [r8, #8]
00523044  bb ff ff eb                                      bl #0x522f38
00523048  00 30 a0 e3                                      mov r3, #0
0052304c  14 30 88 e5                                      str r3, [r8, #0x14]
00523050  10 70 88 e5                                      str r7, [r8, #0x10]
00523054  0c 70 88 e5                                      str r7, [r8, #0xc]
00523058  08 30 88 e5                                      str r3, [r8, #8]
0052305c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00523060  04 30 99 e5                                      ldr r3, [sb, #4]
00523064  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00523068  01 00 59 e1                                      cmp sb, r1
0052306c  05 00 00 1a                                      bne #0x523088
00523070  03 90 a0 e1                                      mov sb, r3
00523074  04 30 93 e5                                      ldr r3, [r3, #4]
00523078  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0052307c  09 00 52 e1                                      cmp r2, sb
00523080  fa ff ff 0a                                      beq #0x523070
00523084  0c 20 99 e5                                      ldr r2, [sb, #0xc]
00523088  03 00 52 e1                                      cmp r2, r3
0052308c  03 90 a0 11                                      movne sb, r3
00523090  c0 ff ff ea                                      b #0x522f98
00523094  05 00 a0 e1                                      mov r0, r5
00523098  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0052309c  97 ff ff eb                                      bl #0x522f00
005230a0  14 50 86 e5                                      str r5, [r6, #0x14]
005230a4  10 50 86 e5                                      str r5, [r6, #0x10]
005230a8  0c a0 86 e5                                      str sl, [r6, #0xc]
005230ac  18 a0 86 e5                                      str sl, [r6, #0x18]
005230b0  06 00 a0 e1                                      mov r0, r6
005230b4  00 30 96 e5                                      ldr r3, [r6]
005230b8  0f e0 a0 e1                                      mov lr, pc
005230bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005230c0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005230c4  00 00 52 e3                                      cmp r2, #0
005230c8  d0 ff ff 1a                                      bne #0x523010
005230cc  04 30 94 e5                                      ldr r3, [r4, #4]
005230d0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005230d4  01 00 54 e1                                      cmp r4, r1
005230d8  05 00 00 1a                                      bne #0x5230f4
005230dc  03 40 a0 e1                                      mov r4, r3
005230e0  04 30 93 e5                                      ldr r3, [r3, #4]
005230e4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005230e8  04 00 52 e1                                      cmp r2, r4
005230ec  fa ff ff 0a                                      beq #0x5230dc
005230f0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005230f4  02 00 53 e1                                      cmp r3, r2
005230f8  03 40 a0 11                                      movne r4, r3
005230fc  a0 ff ff ea                                      b #0x522f84

; FUNCTION 0x00523100, declared_size=100, range_size=100, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGOuterEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGOuterEdgeED2Ev
; demangled: sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse()
; decoder-mode: arm
00523100  54 30 9f e5                                      ldr r3, [pc, #0x54]
00523104  54 20 9f e5                                      ldr r2, [pc, #0x54]
00523108  70 40 2d e9                                      push {r4, r5, r6, lr}
0052310c  03 30 8f e0                                      add r3, pc, r3
00523110  02 20 93 e7                                      ldr r2, [r3, r2]
00523114  00 40 a0 e1                                      mov r4, r0
00523118  08 20 82 e2                                      add r2, r2, #8
0052311c  00 20 80 e5                                      str r2, [r0]
00523120  92 ff ff eb                                      bl #0x522f70
00523124  14 30 94 e5                                      ldr r3, [r4, #0x14]
00523128  00 00 53 e3                                      cmp r3, #0
0052312c  08 00 00 0a                                      beq #0x523154
00523130  04 50 84 e2                                      add r5, r4, #4
00523134  05 00 a0 e1                                      mov r0, r5
00523138  08 10 94 e5                                      ldr r1, [r4, #8]
0052313c  7d ff ff eb                                      bl #0x522f38
00523140  00 30 a0 e3                                      mov r3, #0
00523144  10 50 84 e5                                      str r5, [r4, #0x10]
00523148  14 30 84 e5                                      str r3, [r4, #0x14]
0052314c  0c 50 84 e5                                      str r5, [r4, #0xc]
00523150  08 30 84 e5                                      str r3, [r4, #8]
00523154  04 00 a0 e1                                      mov r0, r4
00523158  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0052315c  84 19 47 00 dc 4b 00 00                          .byte 0x84, 0x19, 0x47, 0x00, 0xdc, 0x4b, 0x00, 0x00

; FUNCTION 0x005231d4, declared_size=100, range_size=100, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGOuterEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGOuterEdgeED1Ev
; demangled: sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse()
; decoder-mode: arm
005231d4  54 30 9f e5                                      ldr r3, [pc, #0x54]
005231d8  54 20 9f e5                                      ldr r2, [pc, #0x54]
005231dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005231e0  03 30 8f e0                                      add r3, pc, r3
005231e4  02 20 93 e7                                      ldr r2, [r3, r2]
005231e8  00 40 a0 e1                                      mov r4, r0
005231ec  08 20 82 e2                                      add r2, r2, #8
005231f0  00 20 80 e5                                      str r2, [r0]
005231f4  5d ff ff eb                                      bl #0x522f70
005231f8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005231fc  00 00 53 e3                                      cmp r3, #0
00523200  08 00 00 0a                                      beq #0x523228
00523204  04 50 84 e2                                      add r5, r4, #4
00523208  05 00 a0 e1                                      mov r0, r5
0052320c  08 10 94 e5                                      ldr r1, [r4, #8]
00523210  48 ff ff eb                                      bl #0x522f38
00523214  00 30 a0 e3                                      mov r3, #0
00523218  10 50 84 e5                                      str r5, [r4, #0x10]
0052321c  14 30 84 e5                                      str r3, [r4, #0x14]
00523220  0c 50 84 e5                                      str r5, [r4, #0xc]
00523224  08 30 84 e5                                      str r3, [r4, #8]
00523228  04 00 a0 e1                                      mov r0, r4
0052322c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00523230  b0 18 47 00 dc 4b 00 00                          .byte 0xb0, 0x18, 0x47, 0x00, 0xdc, 0x4b, 0x00, 0x00

; FUNCTION 0x00523238, declared_size=28, range_size=28, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGOuterEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGOuterEdgeED0Ev
; demangled: sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse()
; decoder-mode: arm
00523238  10 40 2d e9                                      push {r4, lr}
0052323c  00 40 a0 e1                                      mov r4, r0
00523240  e3 ff ff eb                                      bl #0x5231d4
00523244  04 00 a0 e1                                      mov r0, r4
00523248  7c b4 f7 eb                                      bl #0x310440
0052324c  04 00 a0 e1                                      mov r0, r4
00523250  10 80 bd e8                                      pop {r4, pc}
