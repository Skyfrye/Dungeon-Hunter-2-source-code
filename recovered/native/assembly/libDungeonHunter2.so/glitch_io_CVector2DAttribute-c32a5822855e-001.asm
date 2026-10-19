; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f2c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CVector2DAttribute
; alias: _ZNK6glitch2io18CVector2DAttribute7getTypeEv
; demangled: glitch::io::CVector2DAttribute::getType() const
; decoder-mode: arm
0031f2c4  07 00 a0 e3                                      mov r0, #7
0031f2c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f2cc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CVector2DAttribute
; alias: _ZNK6glitch2io18CVector2DAttribute13getTypeStringEv
; demangled: glitch::io::CVector2DAttribute::getTypeString() const
; decoder-mode: arm
0031f2cc  04 00 9f e5                                      ldr r0, [pc, #4]
0031f2d0  00 00 8f e0                                      add r0, pc, r0
0031f2d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f2d8  d0 f7 59 00                                      .byte 0xd0, 0xf7, 0x59, 0x00

; FUNCTION 0x003268e0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CVector2DAttribute
; alias: _ZN6glitch2io18CVector2DAttributeD1Ev
; demangled: glitch::io::CVector2DAttribute::~CVector2DAttribute()
; decoder-mode: arm
003268e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003268e4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003268e8  10 40 2d e9                                      push {r4, lr}
003268ec  03 30 8f e0                                      add r3, pc, r3
003268f0  02 20 93 e7                                      ldr r2, [r3, r2]
003268f4  00 40 a0 e1                                      mov r4, r0
003268f8  08 20 82 e2                                      add r2, r2, #8
003268fc  00 20 80 e5                                      str r2, [r0]
00326900  bc ff ff eb                                      bl #0x3267f8
00326904  04 00 a0 e1                                      mov r0, r4
00326908  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0032690c  a4 e1 66 00 84 0b 00 00                          .byte 0xa4, 0xe1, 0x66, 0x00, 0x84, 0x0b, 0x00, 0x00

; FUNCTION 0x00326a6c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector2DAttribute
; alias: _ZN6glitch2io18CVector2DAttributeD0Ev
; demangled: glitch::io::CVector2DAttribute::~CVector2DAttribute()
; decoder-mode: arm
00326a6c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00326a70  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00326a74  10 40 2d e9                                      push {r4, lr}
00326a78  03 30 8f e0                                      add r3, pc, r3
00326a7c  02 20 93 e7                                      ldr r2, [r3, r2]
00326a80  00 40 a0 e1                                      mov r4, r0
00326a84  08 20 82 e2                                      add r2, r2, #8
00326a88  00 20 80 e5                                      str r2, [r0]
00326a8c  59 ff ff eb                                      bl #0x3267f8
00326a90  04 00 a0 e1                                      mov r0, r4
00326a94  69 a6 ff eb                                      bl #0x310440
00326a98  04 00 a0 e1                                      mov r0, r4
00326a9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326aa0  18 e0 66 00 84 0b 00 00                          .byte 0x18, 0xe0, 0x66, 0x00, 0x84, 0x0b, 0x00, 0x00

; FUNCTION 0x00326f90, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector2DAttribute
; alias: _ZN6glitch2io18CVector2DAttribute9getMatrixEv
; demangled: glitch::io::CVector2DAttribute::getMatrix()
; decoder-mode: arm
00326f90  00 10 a0 e3                                      mov r1, #0
00326f94  10 40 2d e9                                      push {r4, lr}
00326f98  40 20 a0 e3                                      mov r2, #0x40
00326f9c  40 10 c0 e5                                      strb r1, [r0, #0x40]
00326fa0  00 40 a0 e1                                      mov r4, r0
00326fa4  2d 9d ff eb                                      bl #0x30e460
00326fa8  fe 35 a0 e3                                      mov r3, #0x3f800000
00326fac  01 20 a0 e3                                      mov r2, #1
00326fb0  40 20 c4 e5                                      strb r2, [r4, #0x40]
00326fb4  3c 30 84 e5                                      str r3, [r4, #0x3c]
00326fb8  00 30 84 e5                                      str r3, [r4]
00326fbc  14 30 84 e5                                      str r3, [r4, #0x14]
00326fc0  28 30 84 e5                                      str r3, [r4, #0x28]
00326fc4  04 00 a0 e1                                      mov r0, r4
00326fc8  10 80 bd e8                                      pop {r4, pc}
