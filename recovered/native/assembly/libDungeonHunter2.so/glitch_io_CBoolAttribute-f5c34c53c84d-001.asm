; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d8f8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute6getIntEv
; demangled: glitch::io::CBoolAttribute::getInt()
; decoder-mode: arm
0031d8f8  21 00 d0 e5                                      ldrb r0, [r0, #0x21]
0031d8fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d900, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute8getFloatEv
; demangled: glitch::io::CBoolAttribute::getFloat()
; decoder-mode: arm
0031d900  21 30 d0 e5                                      ldrb r3, [r0, #0x21]
0031d904  00 00 53 e3                                      cmp r3, #0
0031d908  00 00 a0 03                                      moveq r0, #0
0031d90c  fe 05 a0 13                                      movne r0, #0x3f800000
0031d910  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d914, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute7getBoolEv
; demangled: glitch::io::CBoolAttribute::getBool()
; decoder-mode: arm
0031d914  21 00 d0 e5                                      ldrb r0, [r0, #0x21]
0031d918  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d91c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute6setIntEi
; demangled: glitch::io::CBoolAttribute::setInt(int)
; decoder-mode: arm
0031d91c  00 10 51 e2                                      subs r1, r1, #0
0031d920  01 10 a0 13                                      movne r1, #1
0031d924  21 10 c0 e5                                      strb r1, [r0, #0x21]
0031d928  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d92c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute8setFloatEf
; demangled: glitch::io::CBoolAttribute::setFloat(float)
; decoder-mode: arm
0031d92c  00 30 a0 e3                                      mov r3, #0
0031d930  10 40 2d e9                                      push {r4, lr}
0031d934  21 30 c0 e5                                      strb r3, [r0, #0x21]
0031d938  00 40 a0 e1                                      mov r4, r0
0031d93c  01 00 a0 e1                                      mov r0, r1
0031d940  00 10 a0 e3                                      mov r1, #0
0031d944  90 c1 ff eb                                      bl #0x30df8c
0031d948  00 00 50 e3                                      cmp r0, #0
0031d94c  01 30 a0 03                                      moveq r3, #1
0031d950  21 30 c4 05                                      strbeq r3, [r4, #0x21]
0031d954  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031d958, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute7setBoolEb
; demangled: glitch::io::CBoolAttribute::setBool(bool)
; decoder-mode: arm
0031d958  21 10 c0 e5                                      strb r1, [r0, #0x21]
0031d95c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d960, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZNK6glitch2io14CBoolAttribute7getTypeEv
; demangled: glitch::io::CBoolAttribute::getType() const
; decoder-mode: arm
0031d960  03 00 a0 e3                                      mov r0, #3
0031d964  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d968, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZNK6glitch2io14CBoolAttribute13getTypeStringEv
; demangled: glitch::io::CBoolAttribute::getTypeString() const
; decoder-mode: arm
0031d968  04 00 9f e5                                      ldr r0, [pc, #4]
0031d96c  00 00 8f e0                                      add r0, pc, r0
0031d970  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031d974  74 10 5a 00                                      .byte 0x74, 0x10, 0x5a, 0x00

; FUNCTION 0x00323220, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute9setStringEPKc
; demangled: glitch::io::CBoolAttribute::setString(char const*)
; decoder-mode: arm
00323220  10 40 2d e9                                      push {r4, lr}
00323224  00 40 a0 e1                                      mov r4, r0
00323228  01 00 a0 e1                                      mov r0, r1
0032322c  14 10 9f e5                                      ldr r1, [pc, #0x14]
00323230  01 10 8f e0                                      add r1, pc, r1
00323234  38 ac ff eb                                      bl #0x30e31c
00323238  01 00 70 e2                                      rsbs r0, r0, #1
0032323c  00 00 a0 33                                      movlo r0, #0
00323240  21 00 c4 e5                                      strb r0, [r4, #0x21]
00323244  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00323248  c0 b6 59 00                                      .byte 0xc0, 0xb6, 0x59, 0x00

; FUNCTION 0x00325f30, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttribute10getStringWEv
; demangled: glitch::io::CBoolAttribute::getStringW()
; decoder-mode: arm
00325f30  10 40 2d e9                                      push {r4, lr}
00325f34  21 30 d1 e5                                      ldrb r3, [r1, #0x21]
00325f38  08 d0 4d e2                                      sub sp, sp, #8
00325f3c  00 40 a0 e1                                      mov r4, r0
00325f40  00 00 53 e3                                      cmp r3, #0
00325f44  07 00 00 1a                                      bne #0x325f68
00325f48  24 10 9f e5                                      ldr r1, [pc, #0x24]
00325f4c  01 10 8f e0                                      add r1, pc, r1
00325f50  04 00 a0 e1                                      mov r0, r4
00325f54  04 20 8d e2                                      add r2, sp, #4
00325f58  e7 ff ff eb                                      bl #0x325efc
00325f5c  04 00 a0 e1                                      mov r0, r4
00325f60  08 d0 8d e2                                      add sp, sp, #8
00325f64  10 80 bd e8                                      pop {r4, pc}
00325f68  08 10 9f e5                                      ldr r1, [pc, #8]
00325f6c  01 10 8f e0                                      add r1, pc, r1
00325f70  f6 ff ff ea                                      b #0x325f50
; mapping-symbol data/literal pool
00325f74  ec 8b 59 00 e4 8b 59 00                          .byte 0xec, 0x8b, 0x59, 0x00, 0xe4, 0x8b, 0x59, 0x00

; FUNCTION 0x003265c4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttributeD1Ev
; demangled: glitch::io::CBoolAttribute::~CBoolAttribute()
; decoder-mode: arm
003265c4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003265c8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003265cc  10 40 2d e9                                      push {r4, lr}
003265d0  03 30 8f e0                                      add r3, pc, r3
003265d4  02 20 93 e7                                      ldr r2, [r3, r2]
003265d8  00 10 a0 e1                                      mov r1, r0
003265dc  00 40 a0 e1                                      mov r4, r0
003265e0  08 20 82 e2                                      add r2, r2, #8
003265e4  08 20 81 e4                                      str r2, [r1], #8
003265e8  14 00 91 e5                                      ldr r0, [r1, #0x14]
003265ec  01 00 50 e1                                      cmp r0, r1
003265f0  02 00 00 0a                                      beq #0x326600
003265f4  00 00 50 e3                                      cmp r0, #0
003265f8  00 00 00 0a                                      beq #0x326600
003265fc  93 a7 ff eb                                      bl #0x310450
00326600  04 00 a0 e1                                      mov r0, r4
00326604  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326608  c0 e4 66 00 44 2c 00 00                          .byte 0xc0, 0xe4, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00326e5c, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttributeD0Ev
; demangled: glitch::io::CBoolAttribute::~CBoolAttribute()
; decoder-mode: arm
00326e5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00326e60  50 40 9f e5                                      ldr r4, [pc, #0x50]
00326e64  50 30 9f e5                                      ldr r3, [pc, #0x50]
00326e68  00 20 a0 e1                                      mov r2, r0
00326e6c  04 40 8f e0                                      add r4, pc, r4
00326e70  03 30 94 e7                                      ldr r3, [r4, r3]
00326e74  00 50 a0 e1                                      mov r5, r0
00326e78  08 30 83 e2                                      add r3, r3, #8
00326e7c  08 30 82 e4                                      str r3, [r2], #8
00326e80  14 00 92 e5                                      ldr r0, [r2, #0x14]
00326e84  02 00 50 e1                                      cmp r0, r2
00326e88  02 00 00 0a                                      beq #0x326e98
00326e8c  00 00 50 e3                                      cmp r0, #0
00326e90  00 00 00 0a                                      beq #0x326e98
00326e94  6d a5 ff eb                                      bl #0x310450
00326e98  20 30 9f e5                                      ldr r3, [pc, #0x20]
00326e9c  05 00 a0 e1                                      mov r0, r5
00326ea0  03 30 94 e7                                      ldr r3, [r4, r3]
00326ea4  08 30 83 e2                                      add r3, r3, #8
00326ea8  00 30 85 e5                                      str r3, [r5]
00326eac  63 a5 ff eb                                      bl #0x310440
00326eb0  05 00 a0 e1                                      mov r0, r5
00326eb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00326eb8  24 dc 66 00 44 2c 00 00 44 2b 00 00              .byte 0x24, 0xdc, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0056716c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CBoolAttribute
; alias: _ZN6glitch2io14CBoolAttributeC1EPKcbb
; demangled: glitch::io::CBoolAttribute::CBoolAttribute(char const*, bool, bool)
; decoder-mode: arm
0056716c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00567170  84 60 9f e5                                      ldr r6, [pc, #0x84]
00567174  84 c0 9f e5                                      ldr ip, [pc, #0x84]
00567178  00 40 a0 e1                                      mov r4, r0
0056717c  06 60 8f e0                                      add r6, pc, r6
00567180  0c c0 96 e7                                      ldr ip, [r6, ip]
00567184  00 50 a0 e1                                      mov r5, r0
00567188  01 00 a0 e3                                      mov r0, #1
0056718c  08 c0 8c e2                                      add ip, ip, #8
00567190  04 00 84 e5                                      str r0, [r4, #4]
00567194  08 c0 85 e4                                      str ip, [r5], #8
00567198  01 70 a0 e1                                      mov r7, r1
0056719c  05 00 a0 e1                                      mov r0, r5
005671a0  18 50 84 e5                                      str r5, [r4, #0x18]
005671a4  1c 50 84 e5                                      str r5, [r4, #0x1c]
005671a8  10 10 a0 e3                                      mov r1, #0x10
005671ac  02 80 a0 e1                                      mov r8, r2
005671b0  03 a0 a0 e1                                      mov sl, r3
005671b4  fb e5 f6 eb                                      bl #0x3209a8
005671b8  44 30 9f e5                                      ldr r3, [pc, #0x44]
005671bc  18 20 94 e5                                      ldr r2, [r4, #0x18]
005671c0  00 10 a0 e3                                      mov r1, #0
005671c4  03 30 96 e7                                      ldr r3, [r6, r3]
005671c8  00 10 c2 e5                                      strb r1, [r2]
005671cc  07 00 a0 e1                                      mov r0, r7
005671d0  08 30 83 e2                                      add r3, r3, #8
005671d4  00 30 84 e5                                      str r3, [r4]
005671d8  20 a0 c4 e5                                      strb sl, [r4, #0x20]
005671dc  1c 9b f6 eb                                      bl #0x30de54
005671e0  07 10 a0 e1                                      mov r1, r7
005671e4  00 20 87 e0                                      add r2, r7, r0
005671e8  05 00 a0 e1                                      mov r0, r5
005671ec  65 e6 f6 eb                                      bl #0x320b88
005671f0  21 80 c4 e5                                      strb r8, [r4, #0x21]
005671f4  04 00 a0 e1                                      mov r0, r4
005671f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005671fc  14 d9 42 00 44 2c 00 00 94 26 00 00              .byte 0x14, 0xd9, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x94, 0x26, 0x00, 0x00
