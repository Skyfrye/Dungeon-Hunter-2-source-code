; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00523480, declared_size=52, range_size=52, mode=arm
; class-group: PFGInnerGraph
; alias: _ZN13PFGInnerGraphD1Ev
; demangled: PFGInnerGraph::~PFGInnerGraph()
; decoder-mode: arm
00523480  24 30 9f e5                                      ldr r3, [pc, #0x24]
00523484  24 20 9f e5                                      ldr r2, [pc, #0x24]
00523488  10 40 2d e9                                      push {r4, lr}
0052348c  03 30 8f e0                                      add r3, pc, r3
00523490  02 20 93 e7                                      ldr r2, [r3, r2]
00523494  00 40 a0 e1                                      mov r4, r0
00523498  08 20 82 e2                                      add r2, r2, #8
0052349c  00 20 80 e5                                      str r2, [r0]
005234a0  dd ff ff eb                                      bl #0x52341c
005234a4  04 00 a0 e1                                      mov r0, r4
005234a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005234ac  04 16 47 00 9c 1d 00 00                          .byte 0x04, 0x16, 0x47, 0x00, 0x9c, 0x1d, 0x00, 0x00

; FUNCTION 0x005234b4, declared_size=60, range_size=60, mode=arm
; class-group: PFGInnerGraph
; alias: _ZN13PFGInnerGraphD0Ev
; demangled: PFGInnerGraph::~PFGInnerGraph()
; decoder-mode: arm
005234b4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005234b8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005234bc  10 40 2d e9                                      push {r4, lr}
005234c0  03 30 8f e0                                      add r3, pc, r3
005234c4  02 20 93 e7                                      ldr r2, [r3, r2]
005234c8  00 40 a0 e1                                      mov r4, r0
005234cc  08 20 82 e2                                      add r2, r2, #8
005234d0  00 20 80 e5                                      str r2, [r0]
005234d4  d0 ff ff eb                                      bl #0x52341c
005234d8  04 00 a0 e1                                      mov r0, r4
005234dc  d7 b3 f7 eb                                      bl #0x310440
005234e0  04 00 a0 e1                                      mov r0, r4
005234e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005234e8  d0 15 47 00 9c 1d 00 00                          .byte 0xd0, 0x15, 0x47, 0x00, 0x9c, 0x1d, 0x00, 0x00

; FUNCTION 0x0052ddd0, declared_size=156, range_size=156, mode=arm
; class-group: PFGInnerGraph
; alias: _ZNK13PFGInnerGraph15DBG_GetMemUsageEv
; demangled: PFGInnerGraph::DBG_GetMemUsage() const
; decoder-mode: arm
0052ddd0  30 00 2d e9                                      push {r4, r5}
0052ddd4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0052ddd8  04 c0 80 e2                                      add ip, r0, #4
0052dddc  0c 00 53 e1                                      cmp r3, ip
0052dde0  00 00 a0 03                                      moveq r0, #0
0052dde4  11 00 00 0a                                      beq #0x52de30
0052dde8  00 00 a0 e3                                      mov r0, #0
0052ddec  18 40 a0 e3                                      mov r4, #0x18
0052ddf0  14 10 93 e5                                      ldr r1, [r3, #0x14]
0052ddf4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0052ddf8  3c 10 91 e5                                      ldr r1, [r1, #0x3c]
0052ddfc  00 00 52 e3                                      cmp r2, #0
0052de00  94 01 01 e0                                      mul r1, r4, r1
0052de04  2c 10 81 e2                                      add r1, r1, #0x2c
0052de08  01 00 80 e0                                      add r0, r0, r1
0052de0c  01 00 00 1a                                      bne #0x52de18
0052de10  08 00 00 ea                                      b #0x52de38
0052de14  03 20 a0 e1                                      mov r2, r3
0052de18  08 30 92 e5                                      ldr r3, [r2, #8]
0052de1c  00 00 53 e3                                      cmp r3, #0
0052de20  fb ff ff 1a                                      bne #0x52de14
0052de24  02 30 a0 e1                                      mov r3, r2
0052de28  03 00 5c e1                                      cmp ip, r3
0052de2c  ef ff ff 1a                                      bne #0x52ddf0
0052de30  30 00 bd e8                                      pop {r4, r5}
0052de34  1e ff 2f e1                                      bx lr
0052de38  04 10 93 e5                                      ldr r1, [r3, #4]
0052de3c  0c 50 91 e5                                      ldr r5, [r1, #0xc]
0052de40  03 00 55 e1                                      cmp r5, r3
0052de44  05 00 00 1a                                      bne #0x52de60
0052de48  01 30 a0 e1                                      mov r3, r1
0052de4c  04 10 91 e5                                      ldr r1, [r1, #4]
0052de50  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0052de54  03 00 52 e1                                      cmp r2, r3
0052de58  fa ff ff 0a                                      beq #0x52de48
0052de5c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0052de60  01 00 52 e1                                      cmp r2, r1
0052de64  01 30 a0 11                                      movne r3, r1
0052de68  ee ff ff ea                                      b #0x52de28
