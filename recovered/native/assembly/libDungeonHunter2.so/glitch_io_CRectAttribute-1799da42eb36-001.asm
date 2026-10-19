; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005604e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CRectAttribute
; alias: _ZNK6glitch2io14CRectAttribute7getTypeEv
; demangled: glitch::io::CRectAttribute::getType() const
; decoder-mode: arm
005604e4  0e 00 a0 e3                                      mov r0, #0xe
005604e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005604ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CRectAttribute
; alias: _ZNK6glitch2io14CRectAttribute13getTypeStringEv
; demangled: glitch::io::CRectAttribute::getTypeString() const
; decoder-mode: arm
005604ec  04 00 9f e5                                      ldr r0, [pc, #4]
005604f0  00 00 8f e0                                      add r0, pc, r0
005604f4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005604f8  a8 e8 37 00                                      .byte 0xa8, 0xe8, 0x37, 0x00

; FUNCTION 0x00564c70, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CRectAttribute
; alias: _ZN6glitch2io14CRectAttributeD1Ev
; demangled: glitch::io::CRectAttribute::~CRectAttribute()
; decoder-mode: arm
00564c70  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564c74  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564c78  10 40 2d e9                                      push {r4, lr}
00564c7c  03 30 8f e0                                      add r3, pc, r3
00564c80  02 20 93 e7                                      ldr r2, [r3, r2]
00564c84  00 40 a0 e1                                      mov r4, r0
00564c88  08 20 82 e2                                      add r2, r2, #8
00564c8c  00 20 80 e5                                      str r2, [r0]
00564c90  d8 06 f7 eb                                      bl #0x3267f8
00564c94  04 00 a0 e1                                      mov r0, r4
00564c98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564c9c  14 fe 42 00 a0 15 00 00                          .byte 0x14, 0xfe, 0x42, 0x00, 0xa0, 0x15, 0x00, 0x00

; FUNCTION 0x00564e64, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CRectAttribute
; alias: _ZN6glitch2io14CRectAttributeD0Ev
; demangled: glitch::io::CRectAttribute::~CRectAttribute()
; decoder-mode: arm
00564e64  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564e68  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564e6c  10 40 2d e9                                      push {r4, lr}
00564e70  03 30 8f e0                                      add r3, pc, r3
00564e74  02 20 93 e7                                      ldr r2, [r3, r2]
00564e78  00 40 a0 e1                                      mov r4, r0
00564e7c  08 20 82 e2                                      add r2, r2, #8
00564e80  00 20 80 e5                                      str r2, [r0]
00564e84  5b 06 f7 eb                                      bl #0x3267f8
00564e88  04 00 a0 e1                                      mov r0, r4
00564e8c  07 a5 f6 eb                                      bl #0x30e2b0
00564e90  04 00 a0 e1                                      mov r0, r4
00564e94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564e98  20 fc 42 00 a0 15 00 00                          .byte 0x20, 0xfc, 0x42, 0x00, 0xa0, 0x15, 0x00, 0x00
