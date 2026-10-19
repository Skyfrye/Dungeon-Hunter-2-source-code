; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056055c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CTriangleAttribute
; alias: _ZNK6glitch2io18CTriangleAttribute7getTypeEv
; demangled: glitch::io::CTriangleAttribute::getType() const
; decoder-mode: arm
0056055c  13 00 a0 e3                                      mov r0, #0x13
00560560  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560564, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CTriangleAttribute
; alias: _ZNK6glitch2io18CTriangleAttribute13getTypeStringEv
; demangled: glitch::io::CTriangleAttribute::getTypeString() const
; decoder-mode: arm
00560564  04 00 9f e5                                      ldr r0, [pc, #4]
00560568  00 00 8f e0                                      add r0, pc, r0
0056056c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560570  c8 e8 37 00                                      .byte 0xc8, 0xe8, 0x37, 0x00

; FUNCTION 0x00561d50, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CTriangleAttribute
; alias: _ZN6glitch2io18CTriangleAttribute8getPlaneEv
; demangled: glitch::io::CTriangleAttribute::getPlane()
; decoder-mode: arm
00561d50  30 40 2d e9                                      push {r4, r5, lr}
00561d54  2c d0 4d e2                                      sub sp, sp, #0x2c
00561d58  04 50 8d e2                                      add r5, sp, #4
00561d5c  00 40 a0 e1                                      mov r4, r0
00561d60  00 30 91 e5                                      ldr r3, [r1]
00561d64  05 00 a0 e1                                      mov r0, r5
00561d68  0f e0 a0 e1                                      mov lr, pc
00561d6c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00561d70  00 30 a0 e3                                      mov r3, #0
00561d74  04 00 a0 e1                                      mov r0, r4
00561d78  08 30 84 e5                                      str r3, [r4, #8]
00561d7c  00 30 84 e5                                      str r3, [r4]
00561d80  04 30 84 e5                                      str r3, [r4, #4]
00561d84  05 10 a0 e1                                      mov r1, r5
00561d88  0c 20 85 e2                                      add r2, r5, #0xc
00561d8c  18 30 85 e2                                      add r3, r5, #0x18
00561d90  91 ff ff eb                                      bl #0x561bdc
00561d94  04 00 a0 e1                                      mov r0, r4
00561d98  2c d0 8d e2                                      add sp, sp, #0x2c
00561d9c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00564b6c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CTriangleAttribute
; alias: _ZN6glitch2io18CTriangleAttributeD1Ev
; demangled: glitch::io::CTriangleAttribute::~CTriangleAttribute()
; decoder-mode: arm
00564b6c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564b70  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564b74  10 40 2d e9                                      push {r4, lr}
00564b78  03 30 8f e0                                      add r3, pc, r3
00564b7c  02 20 93 e7                                      ldr r2, [r3, r2]
00564b80  00 40 a0 e1                                      mov r4, r0
00564b84  08 20 82 e2                                      add r2, r2, #8
00564b88  00 20 80 e5                                      str r2, [r0]
00564b8c  19 07 f7 eb                                      bl #0x3267f8
00564b90  04 00 a0 e1                                      mov r0, r4
00564b94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564b98  18 ff 42 00 04 38 00 00                          .byte 0x18, 0xff, 0x42, 0x00, 0x04, 0x38, 0x00, 0x00

; FUNCTION 0x00565008, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CTriangleAttribute
; alias: _ZN6glitch2io18CTriangleAttributeD0Ev
; demangled: glitch::io::CTriangleAttribute::~CTriangleAttribute()
; decoder-mode: arm
00565008  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0056500c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00565010  10 40 2d e9                                      push {r4, lr}
00565014  03 30 8f e0                                      add r3, pc, r3
00565018  02 20 93 e7                                      ldr r2, [r3, r2]
0056501c  00 40 a0 e1                                      mov r4, r0
00565020  08 20 82 e2                                      add r2, r2, #8
00565024  00 20 80 e5                                      str r2, [r0]
00565028  f2 05 f7 eb                                      bl #0x3267f8
0056502c  04 00 a0 e1                                      mov r0, r4
00565030  9e a4 f6 eb                                      bl #0x30e2b0
00565034  04 00 a0 e1                                      mov r0, r4
00565038  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056503c  7c fa 42 00 04 38 00 00                          .byte 0x7c, 0xfa, 0x42, 0x00, 0x04, 0x38, 0x00, 0x00
