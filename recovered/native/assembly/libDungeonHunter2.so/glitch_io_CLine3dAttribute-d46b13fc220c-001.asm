; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056058c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CLine3dAttribute
; alias: _ZNK6glitch2io16CLine3dAttribute7getTypeEv
; demangled: glitch::io::CLine3dAttribute::getType() const
; decoder-mode: arm
0056058c  15 00 a0 e3                                      mov r0, #0x15
00560590  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560594, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CLine3dAttribute
; alias: _ZNK6glitch2io16CLine3dAttribute13getTypeStringEv
; demangled: glitch::io::CLine3dAttribute::getTypeString() const
; decoder-mode: arm
00560594  04 00 9f e5                                      ldr r0, [pc, #4]
00560598  00 00 8f e0                                      add r0, pc, r0
0056059c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005605a0  e0 e8 37 00                                      .byte 0xe0, 0xe8, 0x37, 0x00

; FUNCTION 0x00564b04, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CLine3dAttribute
; alias: _ZN6glitch2io16CLine3dAttributeD1Ev
; demangled: glitch::io::CLine3dAttribute::~CLine3dAttribute()
; decoder-mode: arm
00564b04  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564b08  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564b0c  10 40 2d e9                                      push {r4, lr}
00564b10  03 30 8f e0                                      add r3, pc, r3
00564b14  02 20 93 e7                                      ldr r2, [r3, r2]
00564b18  00 40 a0 e1                                      mov r4, r0
00564b1c  08 20 82 e2                                      add r2, r2, #8
00564b20  00 20 80 e5                                      str r2, [r0]
00564b24  33 07 f7 eb                                      bl #0x3267f8
00564b28  04 00 a0 e1                                      mov r0, r4
00564b2c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564b30  80 ff 42 00 18 4b 00 00                          .byte 0x80, 0xff, 0x42, 0x00, 0x18, 0x4b, 0x00, 0x00

; FUNCTION 0x00564f90, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CLine3dAttribute
; alias: _ZN6glitch2io16CLine3dAttributeD0Ev
; demangled: glitch::io::CLine3dAttribute::~CLine3dAttribute()
; decoder-mode: arm
00564f90  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564f94  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564f98  10 40 2d e9                                      push {r4, lr}
00564f9c  03 30 8f e0                                      add r3, pc, r3
00564fa0  02 20 93 e7                                      ldr r2, [r3, r2]
00564fa4  00 40 a0 e1                                      mov r4, r0
00564fa8  08 20 82 e2                                      add r2, r2, #8
00564fac  00 20 80 e5                                      str r2, [r0]
00564fb0  10 06 f7 eb                                      bl #0x3267f8
00564fb4  04 00 a0 e1                                      mov r0, r4
00564fb8  bc a4 f6 eb                                      bl #0x30e2b0
00564fbc  04 00 a0 e1                                      mov r0, r4
00564fc0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564fc4  f4 fa 42 00 18 4b 00 00                          .byte 0xf4, 0xfa, 0x42, 0x00, 0x18, 0x4b, 0x00, 0x00
