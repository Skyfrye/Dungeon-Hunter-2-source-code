; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560574, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CLine2dAttribute
; alias: _ZNK6glitch2io16CLine2dAttribute7getTypeEv
; demangled: glitch::io::CLine2dAttribute::getType() const
; decoder-mode: arm
00560574  14 00 a0 e3                                      mov r0, #0x14
00560578  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056057c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CLine2dAttribute
; alias: _ZNK6glitch2io16CLine2dAttribute13getTypeStringEv
; demangled: glitch::io::CLine2dAttribute::getTypeString() const
; decoder-mode: arm
0056057c  04 00 9f e5                                      ldr r0, [pc, #4]
00560580  00 00 8f e0                                      add r0, pc, r0
00560584  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560588  d8 e8 37 00                                      .byte 0xd8, 0xe8, 0x37, 0x00

; FUNCTION 0x00564b38, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CLine2dAttribute
; alias: _ZN6glitch2io16CLine2dAttributeD1Ev
; demangled: glitch::io::CLine2dAttribute::~CLine2dAttribute()
; decoder-mode: arm
00564b38  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564b3c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564b40  10 40 2d e9                                      push {r4, lr}
00564b44  03 30 8f e0                                      add r3, pc, r3
00564b48  02 20 93 e7                                      ldr r2, [r3, r2]
00564b4c  00 40 a0 e1                                      mov r4, r0
00564b50  08 20 82 e2                                      add r2, r2, #8
00564b54  00 20 80 e5                                      str r2, [r0]
00564b58  26 07 f7 eb                                      bl #0x3267f8
00564b5c  04 00 a0 e1                                      mov r0, r4
00564b60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564b64  4c ff 42 00 c0 2a 00 00                          .byte 0x4c, 0xff, 0x42, 0x00, 0xc0, 0x2a, 0x00, 0x00

; FUNCTION 0x00564fcc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CLine2dAttribute
; alias: _ZN6glitch2io16CLine2dAttributeD0Ev
; demangled: glitch::io::CLine2dAttribute::~CLine2dAttribute()
; decoder-mode: arm
00564fcc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564fd0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564fd4  10 40 2d e9                                      push {r4, lr}
00564fd8  03 30 8f e0                                      add r3, pc, r3
00564fdc  02 20 93 e7                                      ldr r2, [r3, r2]
00564fe0  00 40 a0 e1                                      mov r4, r0
00564fe4  08 20 82 e2                                      add r2, r2, #8
00564fe8  00 20 80 e5                                      str r2, [r0]
00564fec  01 06 f7 eb                                      bl #0x3267f8
00564ff0  04 00 a0 e1                                      mov r0, r4
00564ff4  ad a4 f6 eb                                      bl #0x30e2b0
00564ff8  04 00 a0 e1                                      mov r0, r4
00564ffc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00565000  b8 fa 42 00 c0 2a 00 00                          .byte 0xb8, 0xfa, 0x42, 0x00, 0xc0, 0x2a, 0x00, 0x00
