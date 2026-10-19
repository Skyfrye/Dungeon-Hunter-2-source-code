; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005604cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CPosition2DAttribute
; alias: _ZNK6glitch2io20CPosition2DAttribute7getTypeEv
; demangled: glitch::io::CPosition2DAttribute::getType() const
; decoder-mode: arm
005604cc  0d 00 a0 e3                                      mov r0, #0xd
005604d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005604d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CPosition2DAttribute
; alias: _ZNK6glitch2io20CPosition2DAttribute13getTypeStringEv
; demangled: glitch::io::CPosition2DAttribute::getTypeString() const
; decoder-mode: arm
005604d4  04 00 9f e5                                      ldr r0, [pc, #4]
005604d8  00 00 8f e0                                      add r0, pc, r0
005604dc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005604e0  98 e8 37 00                                      .byte 0x98, 0xe8, 0x37, 0x00

; FUNCTION 0x00564ca4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CPosition2DAttribute
; alias: _ZN6glitch2io20CPosition2DAttributeD1Ev
; demangled: glitch::io::CPosition2DAttribute::~CPosition2DAttribute()
; decoder-mode: arm
00564ca4  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564ca8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564cac  10 40 2d e9                                      push {r4, lr}
00564cb0  03 30 8f e0                                      add r3, pc, r3
00564cb4  02 20 93 e7                                      ldr r2, [r3, r2]
00564cb8  00 40 a0 e1                                      mov r4, r0
00564cbc  08 20 82 e2                                      add r2, r2, #8
00564cc0  00 20 80 e5                                      str r2, [r0]
00564cc4  cb 06 f7 eb                                      bl #0x3267f8
00564cc8  04 00 a0 e1                                      mov r0, r4
00564ccc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564cd0  e0 fd 42 00 08 17 00 00                          .byte 0xe0, 0xfd, 0x42, 0x00, 0x08, 0x17, 0x00, 0x00

; FUNCTION 0x00564ea0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CPosition2DAttribute
; alias: _ZN6glitch2io20CPosition2DAttributeD0Ev
; demangled: glitch::io::CPosition2DAttribute::~CPosition2DAttribute()
; decoder-mode: arm
00564ea0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564ea4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564ea8  10 40 2d e9                                      push {r4, lr}
00564eac  03 30 8f e0                                      add r3, pc, r3
00564eb0  02 20 93 e7                                      ldr r2, [r3, r2]
00564eb4  00 40 a0 e1                                      mov r4, r0
00564eb8  08 20 82 e2                                      add r2, r2, #8
00564ebc  00 20 80 e5                                      str r2, [r0]
00564ec0  4c 06 f7 eb                                      bl #0x3267f8
00564ec4  04 00 a0 e1                                      mov r0, r4
00564ec8  f8 a4 f6 eb                                      bl #0x30e2b0
00564ecc  04 00 a0 e1                                      mov r0, r4
00564ed0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564ed4  e4 fb 42 00 08 17 00 00                          .byte 0xe4, 0xfb, 0x42, 0x00, 0x08, 0x17, 0x00, 0x00
