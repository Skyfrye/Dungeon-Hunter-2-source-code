; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560620, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CBinaryAttribute
; alias: _ZNK6glitch2io16CBinaryAttribute7getTypeEv
; demangled: glitch::io::CBinaryAttribute::getType() const
; decoder-mode: arm
00560620  19 00 a0 e3                                      mov r0, #0x19
00560624  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560628, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CBinaryAttribute
; alias: _ZNK6glitch2io16CBinaryAttribute13getTypeStringEv
; demangled: glitch::io::CBinaryAttribute::getTypeString() const
; decoder-mode: arm
00560628  04 00 9f e5                                      ldr r0, [pc, #4]
0056062c  00 00 8f e0                                      add r0, pc, r0
00560630  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560634  84 e8 37 00                                      .byte 0x84, 0xe8, 0x37, 0x00

; FUNCTION 0x005650dc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CBinaryAttribute
; alias: _ZN6glitch2io16CBinaryAttributeD1Ev
; demangled: glitch::io::CBinaryAttribute::~CBinaryAttribute()
; decoder-mode: arm
005650dc  24 30 9f e5                                      ldr r3, [pc, #0x24]
005650e0  24 20 9f e5                                      ldr r2, [pc, #0x24]
005650e4  10 40 2d e9                                      push {r4, lr}
005650e8  03 30 8f e0                                      add r3, pc, r3
005650ec  02 20 93 e7                                      ldr r2, [r3, r2]
005650f0  00 40 a0 e1                                      mov r4, r0
005650f4  08 20 82 e2                                      add r2, r2, #8
005650f8  00 20 80 e5                                      str r2, [r0]
005650fc  d0 ff ff eb                                      bl #0x565044
00565100  04 00 a0 e1                                      mov r0, r4
00565104  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00565108  a8 f9 42 00 78 06 00 00                          .byte 0xa8, 0xf9, 0x42, 0x00, 0x78, 0x06, 0x00, 0x00

; FUNCTION 0x00565110, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CBinaryAttribute
; alias: _ZN6glitch2io16CBinaryAttributeD0Ev
; demangled: glitch::io::CBinaryAttribute::~CBinaryAttribute()
; decoder-mode: arm
00565110  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00565114  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00565118  10 40 2d e9                                      push {r4, lr}
0056511c  03 30 8f e0                                      add r3, pc, r3
00565120  02 20 93 e7                                      ldr r2, [r3, r2]
00565124  00 40 a0 e1                                      mov r4, r0
00565128  08 20 82 e2                                      add r2, r2, #8
0056512c  00 20 80 e5                                      str r2, [r0]
00565130  c3 ff ff eb                                      bl #0x565044
00565134  04 00 a0 e1                                      mov r0, r4
00565138  5c a4 f6 eb                                      bl #0x30e2b0
0056513c  04 00 a0 e1                                      mov r0, r4
00565140  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00565144  74 f9 42 00 78 06 00 00                          .byte 0x74, 0xf9, 0x42, 0x00, 0x78, 0x06, 0x00, 0x00
