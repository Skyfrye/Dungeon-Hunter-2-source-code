; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056052c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CBBoxAttribute
; alias: _ZNK6glitch2io14CBBoxAttribute7getTypeEv
; demangled: glitch::io::CBBoxAttribute::getType() const
; decoder-mode: arm
0056052c  11 00 a0 e3                                      mov r0, #0x11
00560530  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560534, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CBBoxAttribute
; alias: _ZNK6glitch2io14CBBoxAttribute13getTypeStringEv
; demangled: glitch::io::CBBoxAttribute::getTypeString() const
; decoder-mode: arm
00560534  04 00 9f e5                                      ldr r0, [pc, #4]
00560538  00 00 8f e0                                      add r0, pc, r0
0056053c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560540  c8 e8 37 00                                      .byte 0xc8, 0xe8, 0x37, 0x00

; FUNCTION 0x00564bd4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CBBoxAttribute
; alias: _ZN6glitch2io14CBBoxAttributeD1Ev
; demangled: glitch::io::CBBoxAttribute::~CBBoxAttribute()
; decoder-mode: arm
00564bd4  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564bd8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564bdc  10 40 2d e9                                      push {r4, lr}
00564be0  03 30 8f e0                                      add r3, pc, r3
00564be4  02 20 93 e7                                      ldr r2, [r3, r2]
00564be8  00 40 a0 e1                                      mov r4, r0
00564bec  08 20 82 e2                                      add r2, r2, #8
00564bf0  00 20 80 e5                                      str r2, [r0]
00564bf4  ff 06 f7 eb                                      bl #0x3267f8
00564bf8  04 00 a0 e1                                      mov r0, r4
00564bfc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564c00  b0 fe 42 00 80 27 00 00                          .byte 0xb0, 0xfe, 0x42, 0x00, 0x80, 0x27, 0x00, 0x00

; FUNCTION 0x00564db0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CBBoxAttribute
; alias: _ZN6glitch2io14CBBoxAttributeD0Ev
; demangled: glitch::io::CBBoxAttribute::~CBBoxAttribute()
; decoder-mode: arm
00564db0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564db4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564db8  10 40 2d e9                                      push {r4, lr}
00564dbc  03 30 8f e0                                      add r3, pc, r3
00564dc0  02 20 93 e7                                      ldr r2, [r3, r2]
00564dc4  00 40 a0 e1                                      mov r4, r0
00564dc8  08 20 82 e2                                      add r2, r2, #8
00564dcc  00 20 80 e5                                      str r2, [r0]
00564dd0  88 06 f7 eb                                      bl #0x3267f8
00564dd4  04 00 a0 e1                                      mov r0, r4
00564dd8  34 a5 f6 eb                                      bl #0x30e2b0
00564ddc  04 00 a0 e1                                      mov r0, r4
00564de0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564de4  d4 fc 42 00 80 27 00 00                          .byte 0xd4, 0xfc, 0x42, 0x00, 0x80, 0x27, 0x00, 0x00
