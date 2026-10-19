; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f2dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CVector3DAttribute
; alias: _ZNK6glitch2io18CVector3DAttribute7getTypeEv
; demangled: glitch::io::CVector3DAttribute::getType() const
; decoder-mode: arm
0031f2dc  08 00 a0 e3                                      mov r0, #8
0031f2e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f2e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CVector3DAttribute
; alias: _ZNK6glitch2io18CVector3DAttribute13getTypeStringEv
; demangled: glitch::io::CVector3DAttribute::getTypeString() const
; decoder-mode: arm
0031f2e4  04 00 9f e5                                      ldr r0, [pc, #4]
0031f2e8  00 00 8f e0                                      add r0, pc, r0
0031f2ec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f2f0  e0 f7 59 00                                      .byte 0xe0, 0xf7, 0x59, 0x00

; FUNCTION 0x003268ac, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CVector3DAttribute
; alias: _ZN6glitch2io18CVector3DAttributeD1Ev
; demangled: glitch::io::CVector3DAttribute::~CVector3DAttribute()
; decoder-mode: arm
003268ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
003268b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
003268b4  10 40 2d e9                                      push {r4, lr}
003268b8  03 30 8f e0                                      add r3, pc, r3
003268bc  02 20 93 e7                                      ldr r2, [r3, r2]
003268c0  00 40 a0 e1                                      mov r4, r0
003268c4  08 20 82 e2                                      add r2, r2, #8
003268c8  00 20 80 e5                                      str r2, [r0]
003268cc  c9 ff ff eb                                      bl #0x3267f8
003268d0  04 00 a0 e1                                      mov r0, r4
003268d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003268d8  d8 e1 66 00 d8 4a 00 00                          .byte 0xd8, 0xe1, 0x66, 0x00, 0xd8, 0x4a, 0x00, 0x00

; FUNCTION 0x0032697c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector3DAttribute
; alias: _ZN6glitch2io18CVector3DAttributeD0Ev
; demangled: glitch::io::CVector3DAttribute::~CVector3DAttribute()
; decoder-mode: arm
0032697c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00326980  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00326984  10 40 2d e9                                      push {r4, lr}
00326988  03 30 8f e0                                      add r3, pc, r3
0032698c  02 20 93 e7                                      ldr r2, [r3, r2]
00326990  00 40 a0 e1                                      mov r4, r0
00326994  08 20 82 e2                                      add r2, r2, #8
00326998  00 20 80 e5                                      str r2, [r0]
0032699c  95 ff ff eb                                      bl #0x3267f8
003269a0  04 00 a0 e1                                      mov r0, r4
003269a4  a5 a6 ff eb                                      bl #0x310440
003269a8  04 00 a0 e1                                      mov r0, r4
003269ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003269b0  08 e1 66 00 d8 4a 00 00                          .byte 0x08, 0xe1, 0x66, 0x00, 0xd8, 0x4a, 0x00, 0x00

; FUNCTION 0x003273ac, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CVector3DAttribute
; alias: _ZN6glitch2io18CVector3DAttribute9getMatrixEv
; demangled: glitch::io::CVector3DAttribute::getMatrix()
; decoder-mode: arm
003273ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003273b0  00 60 a0 e3                                      mov r6, #0
003273b4  40 70 a0 e3                                      mov r7, #0x40
003273b8  00 40 a0 e1                                      mov r4, r0
003273bc  fe 55 a0 e3                                      mov r5, #0x3f800000
003273c0  01 80 a0 e1                                      mov r8, r1
003273c4  07 20 a0 e1                                      mov r2, r7
003273c8  06 10 a0 e1                                      mov r1, r6
003273cc  40 60 c0 e5                                      strb r6, [r0, #0x40]
003273d0  22 9c ff eb                                      bl #0x30e460
003273d4  07 20 a0 e1                                      mov r2, r7
003273d8  06 10 a0 e1                                      mov r1, r6
003273dc  00 50 84 e5                                      str r5, [r4]
003273e0  14 50 84 e5                                      str r5, [r4, #0x14]
003273e4  28 50 84 e5                                      str r5, [r4, #0x28]
003273e8  3c 50 84 e5                                      str r5, [r4, #0x3c]
003273ec  40 60 c4 e5                                      strb r6, [r4, #0x40]
003273f0  04 00 a0 e1                                      mov r0, r4
003273f4  19 9c ff eb                                      bl #0x30e460
003273f8  01 30 a0 e3                                      mov r3, #1
003273fc  40 30 c4 e5                                      strb r3, [r4, #0x40]
00327400  3c 50 84 e5                                      str r5, [r4, #0x3c]
00327404  00 50 84 e5                                      str r5, [r4]
00327408  14 50 84 e5                                      str r5, [r4, #0x14]
0032740c  28 50 84 e5                                      str r5, [r4, #0x28]
00327410  30 30 98 e5                                      ldr r3, [r8, #0x30]
00327414  04 00 a0 e1                                      mov r0, r4
00327418  08 20 93 e5                                      ldr r2, [r3, #8]
0032741c  00 10 93 e5                                      ldr r1, [r3]
00327420  04 30 93 e5                                      ldr r3, [r3, #4]
00327424  40 60 c4 e5                                      strb r6, [r4, #0x40]
00327428  30 10 84 e5                                      str r1, [r4, #0x30]
0032742c  34 30 84 e5                                      str r3, [r4, #0x34]
00327430  38 20 84 e5                                      str r2, [r4, #0x38]
00327434  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
