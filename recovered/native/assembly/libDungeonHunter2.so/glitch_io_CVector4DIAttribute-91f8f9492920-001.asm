; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005604b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CVector4DIAttribute
; alias: _ZNK6glitch2io19CVector4DIAttribute7getTypeEv
; demangled: glitch::io::CVector4DIAttribute::getType() const
; decoder-mode: arm
005604b4  0c 00 a0 e3                                      mov r0, #0xc
005604b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005604bc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CVector4DIAttribute
; alias: _ZNK6glitch2io19CVector4DIAttribute13getTypeStringEv
; demangled: glitch::io::CVector4DIAttribute::getTypeString() const
; decoder-mode: arm
005604bc  04 00 9f e5                                      ldr r0, [pc, #4]
005604c0  00 00 8f e0                                      add r0, pc, r0
005604c4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005604c8  88 e8 37 00                                      .byte 0x88, 0xe8, 0x37, 0x00

; FUNCTION 0x00563c04, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector4DIAttribute
; alias: _ZN6glitch2io19CVector4DIAttribute9getMatrixEv
; demangled: glitch::io::CVector4DIAttribute::getMatrix()
; decoder-mode: arm
00563c04  00 10 a0 e3                                      mov r1, #0
00563c08  10 40 2d e9                                      push {r4, lr}
00563c0c  40 20 a0 e3                                      mov r2, #0x40
00563c10  40 10 c0 e5                                      strb r1, [r0, #0x40]
00563c14  00 40 a0 e1                                      mov r4, r0
00563c18  10 aa f6 eb                                      bl #0x30e460
00563c1c  fe 35 a0 e3                                      mov r3, #0x3f800000
00563c20  01 20 a0 e3                                      mov r2, #1
00563c24  40 20 c4 e5                                      strb r2, [r4, #0x40]
00563c28  3c 30 84 e5                                      str r3, [r4, #0x3c]
00563c2c  00 30 84 e5                                      str r3, [r4]
00563c30  14 30 84 e5                                      str r3, [r4, #0x14]
00563c34  28 30 84 e5                                      str r3, [r4, #0x28]
00563c38  04 00 a0 e1                                      mov r0, r4
00563c3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00564cd8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CVector4DIAttribute
; alias: _ZN6glitch2io19CVector4DIAttributeD1Ev
; demangled: glitch::io::CVector4DIAttribute::~CVector4DIAttribute()
; decoder-mode: arm
00564cd8  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564cdc  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564ce0  10 40 2d e9                                      push {r4, lr}
00564ce4  03 30 8f e0                                      add r3, pc, r3
00564ce8  02 20 93 e7                                      ldr r2, [r3, r2]
00564cec  00 40 a0 e1                                      mov r4, r0
00564cf0  08 20 82 e2                                      add r2, r2, #8
00564cf4  00 20 80 e5                                      str r2, [r0]
00564cf8  be 06 f7 eb                                      bl #0x3267f8
00564cfc  04 00 a0 e1                                      mov r0, r4
00564d00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564d04  ac fd 42 00 c0 2b 00 00                          .byte 0xac, 0xfd, 0x42, 0x00, 0xc0, 0x2b, 0x00, 0x00

; FUNCTION 0x00564edc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector4DIAttribute
; alias: _ZN6glitch2io19CVector4DIAttributeD0Ev
; demangled: glitch::io::CVector4DIAttribute::~CVector4DIAttribute()
; decoder-mode: arm
00564edc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564ee0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564ee4  10 40 2d e9                                      push {r4, lr}
00564ee8  03 30 8f e0                                      add r3, pc, r3
00564eec  02 20 93 e7                                      ldr r2, [r3, r2]
00564ef0  00 40 a0 e1                                      mov r4, r0
00564ef4  08 20 82 e2                                      add r2, r2, #8
00564ef8  00 20 80 e5                                      str r2, [r0]
00564efc  3d 06 f7 eb                                      bl #0x3267f8
00564f00  04 00 a0 e1                                      mov r0, r4
00564f04  e9 a4 f6 eb                                      bl #0x30e2b0
00564f08  04 00 a0 e1                                      mov r0, r4
00564f0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564f10  a8 fb 42 00 c0 2b 00 00                          .byte 0xa8, 0xfb, 0x42, 0x00, 0xc0, 0x2b, 0x00, 0x00
