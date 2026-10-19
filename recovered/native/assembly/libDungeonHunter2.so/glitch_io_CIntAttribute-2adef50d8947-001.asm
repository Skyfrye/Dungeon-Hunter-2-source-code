; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d978, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttribute6getIntEv
; demangled: glitch::io::CIntAttribute::getInt()
; decoder-mode: arm
0031d978  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031d97c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d980, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttribute8getFloatEv
; demangled: glitch::io::CIntAttribute::getFloat()
; decoder-mode: arm
0031d980  10 40 2d e9                                      push {r4, lr}
0031d984  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031d988  f5 c3 ff eb                                      bl #0x30e964
0031d98c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031d990, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttribute7getBoolEv
; demangled: glitch::io::CIntAttribute::getBool()
; decoder-mode: arm
0031d990  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031d994  00 00 50 e2                                      subs r0, r0, #0
0031d998  01 00 a0 13                                      movne r0, #1
0031d99c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d9a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttribute6setIntEi
; demangled: glitch::io::CIntAttribute::setInt(int)
; decoder-mode: arm
0031d9a0  24 10 80 e5                                      str r1, [r0, #0x24]
0031d9a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d9a8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttribute8setFloatEf
; demangled: glitch::io::CIntAttribute::setFloat(float)
; decoder-mode: arm
0031d9a8  10 40 2d e9                                      push {r4, lr}
0031d9ac  00 40 a0 e1                                      mov r4, r0
0031d9b0  01 00 a0 e1                                      mov r0, r1
0031d9b4  c4 c2 ff eb                                      bl #0x30e4cc
0031d9b8  24 00 84 e5                                      str r0, [r4, #0x24]
0031d9bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031d9c0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZNK6glitch2io13CIntAttribute7getTypeEv
; demangled: glitch::io::CIntAttribute::getType() const
; decoder-mode: arm
0031d9c0  00 00 a0 e3                                      mov r0, #0
0031d9c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d9c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZNK6glitch2io13CIntAttribute13getTypeStringEv
; demangled: glitch::io::CIntAttribute::getTypeString() const
; decoder-mode: arm
0031d9c8  04 00 9f e5                                      ldr r0, [pc, #4]
0031d9cc  00 00 8f e0                                      add r0, pc, r0
0031d9d0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031d9d4  2c 10 5a 00                                      .byte 0x2c, 0x10, 0x5a, 0x00

; FUNCTION 0x00320908, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttribute9setStringEPKc
; demangled: glitch::io::CIntAttribute::setString(char const*)
; decoder-mode: arm
00320908  10 40 2d e9                                      push {r4, lr}
0032090c  00 40 a0 e1                                      mov r4, r0
00320910  01 00 a0 e1                                      mov r0, r1
00320914  de b5 ff eb                                      bl #0x30e094
00320918  24 00 84 e5                                      str r0, [r4, #0x24]
0032091c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00325fdc, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttribute10getStringWEv
; demangled: glitch::io::CIntAttribute::getStringW()
; decoder-mode: arm
00325fdc  10 40 2d e9                                      push {r4, lr}
00325fe0  00 40 a0 e1                                      mov r4, r0
00325fe4  24 10 91 e5                                      ldr r1, [r1, #0x24]
00325fe8  e3 ff ff eb                                      bl #0x325f7c
00325fec  04 00 a0 e1                                      mov r0, r4
00325ff0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0032665c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttributeD1Ev
; demangled: glitch::io::CIntAttribute::~CIntAttribute()
; decoder-mode: arm
0032665c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00326660  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00326664  10 40 2d e9                                      push {r4, lr}
00326668  03 30 8f e0                                      add r3, pc, r3
0032666c  02 20 93 e7                                      ldr r2, [r3, r2]
00326670  00 10 a0 e1                                      mov r1, r0
00326674  00 40 a0 e1                                      mov r4, r0
00326678  08 20 82 e2                                      add r2, r2, #8
0032667c  08 20 81 e4                                      str r2, [r1], #8
00326680  14 00 91 e5                                      ldr r0, [r1, #0x14]
00326684  01 00 50 e1                                      cmp r0, r1
00326688  02 00 00 0a                                      beq #0x326698
0032668c  00 00 50 e3                                      cmp r0, #0
00326690  00 00 00 0a                                      beq #0x326698
00326694  6d a7 ff eb                                      bl #0x310450
00326698  04 00 a0 e1                                      mov r0, r4
0032669c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003266a0  28 e4 66 00 44 2c 00 00                          .byte 0x28, 0xe4, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00327344, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttributeD0Ev
; demangled: glitch::io::CIntAttribute::~CIntAttribute()
; decoder-mode: arm
00327344  70 40 2d e9                                      push {r4, r5, r6, lr}
00327348  50 40 9f e5                                      ldr r4, [pc, #0x50]
0032734c  50 30 9f e5                                      ldr r3, [pc, #0x50]
00327350  00 20 a0 e1                                      mov r2, r0
00327354  04 40 8f e0                                      add r4, pc, r4
00327358  03 30 94 e7                                      ldr r3, [r4, r3]
0032735c  00 50 a0 e1                                      mov r5, r0
00327360  08 30 83 e2                                      add r3, r3, #8
00327364  08 30 82 e4                                      str r3, [r2], #8
00327368  14 00 92 e5                                      ldr r0, [r2, #0x14]
0032736c  02 00 50 e1                                      cmp r0, r2
00327370  02 00 00 0a                                      beq #0x327380
00327374  00 00 50 e3                                      cmp r0, #0
00327378  00 00 00 0a                                      beq #0x327380
0032737c  33 a4 ff eb                                      bl #0x310450
00327380  20 30 9f e5                                      ldr r3, [pc, #0x20]
00327384  05 00 a0 e1                                      mov r0, r5
00327388  03 30 94 e7                                      ldr r3, [r4, r3]
0032738c  08 30 83 e2                                      add r3, r3, #8
00327390  00 30 85 e5                                      str r3, [r5]
00327394  29 a4 ff eb                                      bl #0x310440
00327398  05 00 a0 e1                                      mov r0, r5
0032739c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003273a0  3c d7 66 00 44 2c 00 00 44 2b 00 00              .byte 0x3c, 0xd7, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x005672a4, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CIntAttribute
; alias: _ZN6glitch2io13CIntAttributeC1EPKcib
; demangled: glitch::io::CIntAttribute::CIntAttribute(char const*, int, bool)
; decoder-mode: arm
005672a4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005672a8  84 60 9f e5                                      ldr r6, [pc, #0x84]
005672ac  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005672b0  00 40 a0 e1                                      mov r4, r0
005672b4  06 60 8f e0                                      add r6, pc, r6
005672b8  0c c0 96 e7                                      ldr ip, [r6, ip]
005672bc  00 50 a0 e1                                      mov r5, r0
005672c0  01 00 a0 e3                                      mov r0, #1
005672c4  08 c0 8c e2                                      add ip, ip, #8
005672c8  04 00 84 e5                                      str r0, [r4, #4]
005672cc  08 c0 85 e4                                      str ip, [r5], #8
005672d0  01 70 a0 e1                                      mov r7, r1
005672d4  05 00 a0 e1                                      mov r0, r5
005672d8  18 50 84 e5                                      str r5, [r4, #0x18]
005672dc  1c 50 84 e5                                      str r5, [r4, #0x1c]
005672e0  10 10 a0 e3                                      mov r1, #0x10
005672e4  02 80 a0 e1                                      mov r8, r2
005672e8  03 a0 a0 e1                                      mov sl, r3
005672ec  ad e5 f6 eb                                      bl #0x3209a8
005672f0  44 30 9f e5                                      ldr r3, [pc, #0x44]
005672f4  18 20 94 e5                                      ldr r2, [r4, #0x18]
005672f8  00 10 a0 e3                                      mov r1, #0
005672fc  03 30 96 e7                                      ldr r3, [r6, r3]
00567300  00 10 c2 e5                                      strb r1, [r2]
00567304  07 00 a0 e1                                      mov r0, r7
00567308  08 30 83 e2                                      add r3, r3, #8
0056730c  00 30 84 e5                                      str r3, [r4]
00567310  20 a0 c4 e5                                      strb sl, [r4, #0x20]
00567314  ce 9a f6 eb                                      bl #0x30de54
00567318  07 10 a0 e1                                      mov r1, r7
0056731c  00 20 87 e0                                      add r2, r7, r0
00567320  05 00 a0 e1                                      mov r0, r5
00567324  17 e6 f6 eb                                      bl #0x320b88
00567328  24 80 84 e5                                      str r8, [r4, #0x24]
0056732c  04 00 a0 e1                                      mov r0, r4
00567330  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00567334  dc d7 42 00 44 2c 00 00 7c 29 00 00              .byte 0xdc, 0xd7, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x7c, 0x29, 0x00, 0x00
