; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056049c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CVector3DIAttribute
; alias: _ZNK6glitch2io19CVector3DIAttribute7getTypeEv
; demangled: glitch::io::CVector3DIAttribute::getType() const
; decoder-mode: arm
0056049c  0b 00 a0 e3                                      mov r0, #0xb
005604a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005604a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CVector3DIAttribute
; alias: _ZNK6glitch2io19CVector3DIAttribute13getTypeStringEv
; demangled: glitch::io::CVector3DIAttribute::getTypeString() const
; decoder-mode: arm
005604a4  04 00 9f e5                                      ldr r0, [pc, #4]
005604a8  00 00 8f e0                                      add r0, pc, r0
005604ac  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005604b0  78 e8 37 00                                      .byte 0x78, 0xe8, 0x37, 0x00

; FUNCTION 0x00563d9c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector3DIAttribute
; alias: _ZN6glitch2io19CVector3DIAttribute9getMatrixEv
; demangled: glitch::io::CVector3DIAttribute::getMatrix()
; decoder-mode: arm
00563d9c  00 10 a0 e3                                      mov r1, #0
00563da0  10 40 2d e9                                      push {r4, lr}
00563da4  40 20 a0 e3                                      mov r2, #0x40
00563da8  40 10 c0 e5                                      strb r1, [r0, #0x40]
00563dac  00 40 a0 e1                                      mov r4, r0
00563db0  aa a9 f6 eb                                      bl #0x30e460
00563db4  fe 35 a0 e3                                      mov r3, #0x3f800000
00563db8  01 20 a0 e3                                      mov r2, #1
00563dbc  40 20 c4 e5                                      strb r2, [r4, #0x40]
00563dc0  3c 30 84 e5                                      str r3, [r4, #0x3c]
00563dc4  00 30 84 e5                                      str r3, [r4]
00563dc8  14 30 84 e5                                      str r3, [r4, #0x14]
00563dcc  28 30 84 e5                                      str r3, [r4, #0x28]
00563dd0  04 00 a0 e1                                      mov r0, r4
00563dd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00564d0c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CVector3DIAttribute
; alias: _ZN6glitch2io19CVector3DIAttributeD1Ev
; demangled: glitch::io::CVector3DIAttribute::~CVector3DIAttribute()
; decoder-mode: arm
00564d0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564d10  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564d14  10 40 2d e9                                      push {r4, lr}
00564d18  03 30 8f e0                                      add r3, pc, r3
00564d1c  02 20 93 e7                                      ldr r2, [r3, r2]
00564d20  00 40 a0 e1                                      mov r4, r0
00564d24  08 20 82 e2                                      add r2, r2, #8
00564d28  00 20 80 e5                                      str r2, [r0]
00564d2c  b1 06 f7 eb                                      bl #0x3267f8
00564d30  04 00 a0 e1                                      mov r0, r4
00564d34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564d38  78 fd 42 00 9c 08 00 00                          .byte 0x78, 0xfd, 0x42, 0x00, 0x9c, 0x08, 0x00, 0x00

; FUNCTION 0x00564f18, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector3DIAttribute
; alias: _ZN6glitch2io19CVector3DIAttributeD0Ev
; demangled: glitch::io::CVector3DIAttribute::~CVector3DIAttribute()
; decoder-mode: arm
00564f18  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564f1c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564f20  10 40 2d e9                                      push {r4, lr}
00564f24  03 30 8f e0                                      add r3, pc, r3
00564f28  02 20 93 e7                                      ldr r2, [r3, r2]
00564f2c  00 40 a0 e1                                      mov r4, r0
00564f30  08 20 82 e2                                      add r2, r2, #8
00564f34  00 20 80 e5                                      str r2, [r0]
00564f38  2e 06 f7 eb                                      bl #0x3267f8
00564f3c  04 00 a0 e1                                      mov r0, r4
00564f40  da a4 f6 eb                                      bl #0x30e2b0
00564f44  04 00 a0 e1                                      mov r0, r4
00564f48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564f4c  6c fb 42 00 9c 08 00 00                          .byte 0x6c, 0xfb, 0x42, 0x00, 0x9c, 0x08, 0x00, 0x00
