; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560514, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CQuaternionAttribute
; alias: _ZNK6glitch2io20CQuaternionAttribute7getTypeEv
; demangled: glitch::io::CQuaternionAttribute::getType() const
; decoder-mode: arm
00560514  10 00 a0 e3                                      mov r0, #0x10
00560518  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056051c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CQuaternionAttribute
; alias: _ZNK6glitch2io20CQuaternionAttribute13getTypeStringEv
; demangled: glitch::io::CQuaternionAttribute::getTypeString() const
; decoder-mode: arm
0056051c  04 00 9f e5                                      ldr r0, [pc, #4]
00560520  00 00 8f e0                                      add r0, pc, r0
00560524  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560528  b0 e8 37 00                                      .byte 0xb0, 0xe8, 0x37, 0x00

; FUNCTION 0x00563bc4, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CQuaternionAttribute
; alias: _ZN6glitch2io20CQuaternionAttribute9getMatrixEv
; demangled: glitch::io::CQuaternionAttribute::getMatrix()
; decoder-mode: arm
00563bc4  30 40 2d e9                                      push {r4, r5, lr}
00563bc8  14 d0 4d e2                                      sub sp, sp, #0x14
00563bcc  00 40 a0 e1                                      mov r4, r0
00563bd0  00 30 91 e5                                      ldr r3, [r1]
00563bd4  0d 00 a0 e1                                      mov r0, sp
00563bd8  0f e0 a0 e1                                      mov lr, pc
00563bdc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00563be0  00 30 a0 e3                                      mov r3, #0
00563be4  0d 00 a0 e1                                      mov r0, sp
00563be8  40 30 c4 e5                                      strb r3, [r4, #0x40]
00563bec  04 10 a0 e1                                      mov r1, r4
00563bf0  b6 f1 ff eb                                      bl #0x5602d0
00563bf4  0d 50 a0 e1                                      mov r5, sp
00563bf8  04 00 a0 e1                                      mov r0, r4
00563bfc  14 d0 8d e2                                      add sp, sp, #0x14
00563c00  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00564c08, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CQuaternionAttribute
; alias: _ZN6glitch2io20CQuaternionAttributeD1Ev
; demangled: glitch::io::CQuaternionAttribute::~CQuaternionAttribute()
; decoder-mode: arm
00564c08  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564c0c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564c10  10 40 2d e9                                      push {r4, lr}
00564c14  03 30 8f e0                                      add r3, pc, r3
00564c18  02 20 93 e7                                      ldr r2, [r3, r2]
00564c1c  00 40 a0 e1                                      mov r4, r0
00564c20  08 20 82 e2                                      add r2, r2, #8
00564c24  00 20 80 e5                                      str r2, [r0]
00564c28  f2 06 f7 eb                                      bl #0x3267f8
00564c2c  04 00 a0 e1                                      mov r0, r4
00564c30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564c34  7c fe 42 00 9c 48 00 00                          .byte 0x7c, 0xfe, 0x42, 0x00, 0x9c, 0x48, 0x00, 0x00

; FUNCTION 0x00564dec, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CQuaternionAttribute
; alias: _ZN6glitch2io20CQuaternionAttributeD0Ev
; demangled: glitch::io::CQuaternionAttribute::~CQuaternionAttribute()
; decoder-mode: arm
00564dec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564df0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564df4  10 40 2d e9                                      push {r4, lr}
00564df8  03 30 8f e0                                      add r3, pc, r3
00564dfc  02 20 93 e7                                      ldr r2, [r3, r2]
00564e00  00 40 a0 e1                                      mov r4, r0
00564e04  08 20 82 e2                                      add r2, r2, #8
00564e08  00 20 80 e5                                      str r2, [r0]
00564e0c  79 06 f7 eb                                      bl #0x3267f8
00564e10  04 00 a0 e1                                      mov r0, r4
00564e14  25 a5 f6 eb                                      bl #0x30e2b0
00564e18  04 00 a0 e1                                      mov r0, r4
00564e1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564e20  98 fc 42 00 9c 48 00 00                          .byte 0x98, 0xfc, 0x42, 0x00, 0x9c, 0x48, 0x00, 0x00
