; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560484, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CVector2DIAttribute
; alias: _ZNK6glitch2io19CVector2DIAttribute7getTypeEv
; demangled: glitch::io::CVector2DIAttribute::getType() const
; decoder-mode: arm
00560484  0a 00 a0 e3                                      mov r0, #0xa
00560488  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056048c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CVector2DIAttribute
; alias: _ZNK6glitch2io19CVector2DIAttribute13getTypeStringEv
; demangled: glitch::io::CVector2DIAttribute::getTypeString() const
; decoder-mode: arm
0056048c  04 00 9f e5                                      ldr r0, [pc, #4]
00560490  00 00 8f e0                                      add r0, pc, r0
00560494  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560498  68 e8 37 00                                      .byte 0x68, 0xe8, 0x37, 0x00

; FUNCTION 0x00563c40, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector2DIAttribute
; alias: _ZN6glitch2io19CVector2DIAttribute9getMatrixEv
; demangled: glitch::io::CVector2DIAttribute::getMatrix()
; decoder-mode: arm
00563c40  00 10 a0 e3                                      mov r1, #0
00563c44  10 40 2d e9                                      push {r4, lr}
00563c48  40 20 a0 e3                                      mov r2, #0x40
00563c4c  40 10 c0 e5                                      strb r1, [r0, #0x40]
00563c50  00 40 a0 e1                                      mov r4, r0
00563c54  01 aa f6 eb                                      bl #0x30e460
00563c58  fe 35 a0 e3                                      mov r3, #0x3f800000
00563c5c  01 20 a0 e3                                      mov r2, #1
00563c60  40 20 c4 e5                                      strb r2, [r4, #0x40]
00563c64  3c 30 84 e5                                      str r3, [r4, #0x3c]
00563c68  00 30 84 e5                                      str r3, [r4]
00563c6c  14 30 84 e5                                      str r3, [r4, #0x14]
00563c70  28 30 84 e5                                      str r3, [r4, #0x28]
00563c74  04 00 a0 e1                                      mov r0, r4
00563c78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00564d40, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CVector2DIAttribute
; alias: _ZN6glitch2io19CVector2DIAttributeD1Ev
; demangled: glitch::io::CVector2DIAttribute::~CVector2DIAttribute()
; decoder-mode: arm
00564d40  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564d44  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564d48  10 40 2d e9                                      push {r4, lr}
00564d4c  03 30 8f e0                                      add r3, pc, r3
00564d50  02 20 93 e7                                      ldr r2, [r3, r2]
00564d54  00 40 a0 e1                                      mov r4, r0
00564d58  08 20 82 e2                                      add r2, r2, #8
00564d5c  00 20 80 e5                                      str r2, [r0]
00564d60  a4 06 f7 eb                                      bl #0x3267f8
00564d64  04 00 a0 e1                                      mov r0, r4
00564d68  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564d6c  44 fd 42 00 3c 27 00 00                          .byte 0x44, 0xfd, 0x42, 0x00, 0x3c, 0x27, 0x00, 0x00

; FUNCTION 0x00564f54, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector2DIAttribute
; alias: _ZN6glitch2io19CVector2DIAttributeD0Ev
; demangled: glitch::io::CVector2DIAttribute::~CVector2DIAttribute()
; decoder-mode: arm
00564f54  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564f58  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564f5c  10 40 2d e9                                      push {r4, lr}
00564f60  03 30 8f e0                                      add r3, pc, r3
00564f64  02 20 93 e7                                      ldr r2, [r3, r2]
00564f68  00 40 a0 e1                                      mov r4, r0
00564f6c  08 20 82 e2                                      add r2, r2, #8
00564f70  00 20 80 e5                                      str r2, [r0]
00564f74  1f 06 f7 eb                                      bl #0x3267f8
00564f78  04 00 a0 e1                                      mov r0, r4
00564f7c  cb a4 f6 eb                                      bl #0x30e2b0
00564f80  04 00 a0 e1                                      mov r0, r4
00564f84  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564f88  30 fb 42 00 3c 27 00 00                          .byte 0x30, 0xfb, 0x42, 0x00, 0x3c, 0x27, 0x00, 0x00
