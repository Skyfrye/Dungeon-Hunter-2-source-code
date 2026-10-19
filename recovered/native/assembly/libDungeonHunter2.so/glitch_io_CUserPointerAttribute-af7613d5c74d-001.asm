; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560708, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttribute6getIntEv
; demangled: glitch::io::CUserPointerAttribute::getInt()
; decoder-mode: arm
00560708  24 00 90 e5                                      ldr r0, [r0, #0x24]
0056070c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560710, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttribute7getBoolEv
; demangled: glitch::io::CUserPointerAttribute::getBool()
; decoder-mode: arm
00560710  24 00 90 e5                                      ldr r0, [r0, #0x24]
00560714  00 00 50 e2                                      subs r0, r0, #0
00560718  01 00 a0 13                                      movne r0, #1
0056071c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560720, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZNK6glitch2io21CUserPointerAttribute7getTypeEv
; demangled: glitch::io::CUserPointerAttribute::getType() const
; decoder-mode: arm
00560720  1c 00 a0 e3                                      mov r0, #0x1c
00560724  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560728, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttribute14setUserPointerEPv
; demangled: glitch::io::CUserPointerAttribute::setUserPointer(void*)
; decoder-mode: arm
00560728  24 10 80 e5                                      str r1, [r0, #0x24]
0056072c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560730, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttribute14getUserPointerEv
; demangled: glitch::io::CUserPointerAttribute::getUserPointer()
; decoder-mode: arm
00560730  24 00 90 e5                                      ldr r0, [r0, #0x24]
00560734  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560738, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZNK6glitch2io21CUserPointerAttribute13getTypeStringEv
; demangled: glitch::io::CUserPointerAttribute::getTypeString() const
; decoder-mode: arm
00560738  04 00 9f e5                                      ldr r0, [pc, #4]
0056073c  00 00 8f e0                                      add r0, pc, r0
00560740  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560744  04 e8 37 00                                      .byte 0x04, 0xe8, 0x37, 0x00

; FUNCTION 0x00561a70, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttribute9getStringEPc
; demangled: glitch::io::CUserPointerAttribute::getString(char*)
; decoder-mode: arm
00561a70  24 20 90 e5                                      ldr r2, [r0, #0x24]
00561a74  01 00 a0 e1                                      mov r0, r1
00561a78  04 10 9f e5                                      ldr r1, [pc, #4]
00561a7c  01 10 8f e0                                      add r1, pc, r1
00561a80  17 b4 f6 ea                                      b #0x30eae4
; mapping-symbol data/literal pool
00561a84  dc 53 38 00                                      .byte 0xdc, 0x53, 0x38, 0x00

; FUNCTION 0x00561a88, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttribute9setStringEPKc
; demangled: glitch::io::CUserPointerAttribute::setString(char const*)
; decoder-mode: arm
00561a88  24 20 80 e2                                      add r2, r0, #0x24
00561a8c  01 00 a0 e1                                      mov r0, r1
00561a90  04 10 9f e5                                      ldr r1, [pc, #4]
00561a94  01 10 8f e0                                      add r1, pc, r1
00561a98  f5 b1 f6 ea                                      b #0x30e274
; mapping-symbol data/literal pool
00561a9c  c4 53 38 00                                      .byte 0xc4, 0x53, 0x38, 0x00

; FUNCTION 0x00564714, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttributeD0Ev
; demangled: glitch::io::CUserPointerAttribute::~CUserPointerAttribute()
; decoder-mode: arm
00564714  44 30 9f e5                                      ldr r3, [pc, #0x44]
00564718  44 20 9f e5                                      ldr r2, [pc, #0x44]
0056471c  10 40 2d e9                                      push {r4, lr}
00564720  03 30 8f e0                                      add r3, pc, r3
00564724  02 20 93 e7                                      ldr r2, [r3, r2]
00564728  00 10 a0 e1                                      mov r1, r0
0056472c  00 40 a0 e1                                      mov r4, r0
00564730  08 20 82 e2                                      add r2, r2, #8
00564734  08 20 81 e4                                      str r2, [r1], #8
00564738  14 00 91 e5                                      ldr r0, [r1, #0x14]
0056473c  01 00 50 e1                                      cmp r0, r1
00564740  02 00 00 0a                                      beq #0x564750
00564744  00 00 50 e3                                      cmp r0, #0
00564748  00 00 00 0a                                      beq #0x564750
0056474c  3f af f6 eb                                      bl #0x310450
00564750  04 00 a0 e1                                      mov r0, r4
00564754  d5 a6 f6 eb                                      bl #0x30e2b0
00564758  04 00 a0 e1                                      mov r0, r4
0056475c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564760  70 03 43 00 44 2c 00 00                          .byte 0x70, 0x03, 0x43, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00564ab8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttributeD1Ev
; demangled: glitch::io::CUserPointerAttribute::~CUserPointerAttribute()
; decoder-mode: arm
00564ab8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00564abc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00564ac0  10 40 2d e9                                      push {r4, lr}
00564ac4  03 30 8f e0                                      add r3, pc, r3
00564ac8  02 20 93 e7                                      ldr r2, [r3, r2]
00564acc  00 10 a0 e1                                      mov r1, r0
00564ad0  00 40 a0 e1                                      mov r4, r0
00564ad4  08 20 82 e2                                      add r2, r2, #8
00564ad8  08 20 81 e4                                      str r2, [r1], #8
00564adc  14 00 91 e5                                      ldr r0, [r1, #0x14]
00564ae0  01 00 50 e1                                      cmp r0, r1
00564ae4  02 00 00 0a                                      beq #0x564af4
00564ae8  00 00 50 e3                                      cmp r0, #0
00564aec  00 00 00 0a                                      beq #0x564af4
00564af0  56 ae f6 eb                                      bl #0x310450
00564af4  04 00 a0 e1                                      mov r0, r4
00564af8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564afc  cc ff 42 00 44 2c 00 00                          .byte 0xcc, 0xff, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00566bf4, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CUserPointerAttribute
; alias: _ZN6glitch2io21CUserPointerAttributeC1EPKcPvb
; demangled: glitch::io::CUserPointerAttribute::CUserPointerAttribute(char const*, void*, bool)
; decoder-mode: arm
00566bf4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00566bf8  84 60 9f e5                                      ldr r6, [pc, #0x84]
00566bfc  84 c0 9f e5                                      ldr ip, [pc, #0x84]
00566c00  00 40 a0 e1                                      mov r4, r0
00566c04  06 60 8f e0                                      add r6, pc, r6
00566c08  0c c0 96 e7                                      ldr ip, [r6, ip]
00566c0c  00 50 a0 e1                                      mov r5, r0
00566c10  01 00 a0 e3                                      mov r0, #1
00566c14  08 c0 8c e2                                      add ip, ip, #8
00566c18  04 00 84 e5                                      str r0, [r4, #4]
00566c1c  08 c0 85 e4                                      str ip, [r5], #8
00566c20  01 70 a0 e1                                      mov r7, r1
00566c24  05 00 a0 e1                                      mov r0, r5
00566c28  18 50 84 e5                                      str r5, [r4, #0x18]
00566c2c  1c 50 84 e5                                      str r5, [r4, #0x1c]
00566c30  10 10 a0 e3                                      mov r1, #0x10
00566c34  02 80 a0 e1                                      mov r8, r2
00566c38  03 a0 a0 e1                                      mov sl, r3
00566c3c  59 e7 f6 eb                                      bl #0x3209a8
00566c40  44 30 9f e5                                      ldr r3, [pc, #0x44]
00566c44  18 20 94 e5                                      ldr r2, [r4, #0x18]
00566c48  00 10 a0 e3                                      mov r1, #0
00566c4c  03 30 96 e7                                      ldr r3, [r6, r3]
00566c50  00 10 c2 e5                                      strb r1, [r2]
00566c54  07 00 a0 e1                                      mov r0, r7
00566c58  08 30 83 e2                                      add r3, r3, #8
00566c5c  00 30 84 e5                                      str r3, [r4]
00566c60  20 a0 c4 e5                                      strb sl, [r4, #0x20]
00566c64  7a 9c f6 eb                                      bl #0x30de54
00566c68  07 10 a0 e1                                      mov r1, r7
00566c6c  00 20 87 e0                                      add r2, r7, r0
00566c70  05 00 a0 e1                                      mov r0, r5
00566c74  c3 e7 f6 eb                                      bl #0x320b88
00566c78  24 80 84 e5                                      str r8, [r4, #0x24]
00566c7c  04 00 a0 e1                                      mov r0, r4
00566c80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00566c84  8c de 42 00 44 2c 00 00 74 13 00 00              .byte 0x8c, 0xde, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x74, 0x13, 0x00, 0x00
