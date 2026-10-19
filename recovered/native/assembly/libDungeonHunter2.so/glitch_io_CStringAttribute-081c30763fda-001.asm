; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f30c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZNK6glitch2io16CStringAttribute7getTypeEv
; demangled: glitch::io::CStringAttribute::getType() const
; decoder-mode: arm
0031f30c  02 00 a0 e3                                      mov r0, #2
0031f310  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f314, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZNK6glitch2io16CStringAttribute13getTypeStringEv
; demangled: glitch::io::CStringAttribute::getTypeString() const
; decoder-mode: arm
0031f314  04 00 9f e5                                      ldr r0, [pc, #4]
0031f318  00 00 8f e0                                      add r0, pc, r0
0031f31c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f320  00 f8 59 00                                      .byte 0x00, 0xf8, 0x59, 0x00

; FUNCTION 0x0031f324, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute9getBinaryEPvi
; demangled: glitch::io::CStringAttribute::getBinary(void*, int)
; decoder-mode: arm
0031f324  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
0031f328  00 00 52 e3                                      cmp r2, #0
0031f32c  38 60 90 e5                                      ldr r6, [r0, #0x38]
0031f330  34 00 00 da                                      ble #0x31f408
0031f334  00 30 a0 e3                                      mov r3, #0
0031f338  03 00 a0 e1                                      mov r0, r3
0031f33c  03 00 c1 e7                                      strb r0, [r1, r3]
0031f340  01 30 83 e2                                      add r3, r3, #1
0031f344  02 00 53 e1                                      cmp r3, r2
0031f348  fb ff ff 1a                                      bne #0x31f33c
0031f34c  d0 30 d6 e1                                      ldrsb r3, [r6]
0031f350  00 00 53 e3                                      cmp r3, #0
0031f354  2b 00 00 0a                                      beq #0x31f408
0031f358  00 50 a0 e3                                      mov r5, #0
0031f35c  06 00 a0 e1                                      mov r0, r6
0031f360  05 30 a0 e1                                      mov r3, r5
0031f364  00 c0 d0 e5                                      ldrb ip, [r0]
0031f368  7c 40 ef e6                                      uxtb r4, ip
0031f36c  30 70 44 e2                                      sub r7, r4, #0x30
0031f370  77 70 ef e6                                      uxtb r7, r7
0031f374  09 00 57 e3                                      cmp r7, #9
0031f378  7c c0 af 96                                      sxtbls ip, ip
0031f37c  30 c0 4c 92                                      subls ip, ip, #0x30
0031f380  0c c2 a0 91                                      lslls ip, ip, #4
0031f384  06 00 00 9a                                      bls #0x31f3a4
0031f388  61 40 44 e2                                      sub r4, r4, #0x61
0031f38c  74 40 ef e6                                      uxtb r4, r4
0031f390  05 00 54 e3                                      cmp r4, #5
0031f394  7c c0 af 96                                      sxtbls ip, ip
0031f398  57 c0 4c 92                                      subls ip, ip, #0x57
0031f39c  00 c0 a0 83                                      movhi ip, #0
0031f3a0  0c c2 a0 91                                      lslls ip, ip, #4
0031f3a4  01 40 d0 e5                                      ldrb r4, [r0, #1]
0031f3a8  00 00 54 e3                                      cmp r4, #0
0031f3ac  0d 00 00 0a                                      beq #0x31f3e8
0031f3b0  74 70 ef e6                                      uxtb r7, r4
0031f3b4  30 80 47 e2                                      sub r8, r7, #0x30
0031f3b8  78 80 ef e6                                      uxtb r8, r8
0031f3bc  09 00 58 e3                                      cmp r8, #9
0031f3c0  74 40 af 96                                      sxtbls r4, r4
0031f3c4  30 40 44 92                                      subls r4, r4, #0x30
0031f3c8  05 00 00 9a                                      bls #0x31f3e4
0031f3cc  61 70 47 e2                                      sub r7, r7, #0x61
0031f3d0  77 70 ef e6                                      uxtb r7, r7
0031f3d4  05 00 57 e3                                      cmp r7, #5
0031f3d8  74 40 af 96                                      sxtbls r4, r4
0031f3dc  00 40 a0 83                                      movhi r4, #0
0031f3e0  57 40 44 92                                      subls r4, r4, #0x57
0031f3e4  04 c0 8c e0                                      add ip, ip, r4
0031f3e8  01 30 83 e2                                      add r3, r3, #1
0031f3ec  05 c0 c1 e7                                      strb ip, [r1, r5]
0031f3f0  d3 c0 96 e1                                      ldrsb ip, [r6, r3]
0031f3f4  02 00 80 e2                                      add r0, r0, #2
0031f3f8  03 50 a0 e1                                      mov r5, r3
0031f3fc  00 00 5c e3                                      cmp ip, #0
0031f400  03 00 52 11                                      cmpne r2, r3
0031f404  d6 ff ff ca                                      bgt #0x31f364
0031f408  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
0031f40c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00325e78, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute10getStringWEv
; demangled: glitch::io::CStringAttribute::getStringW()
; decoder-mode: arm
00325e78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00325e7c  21 70 d1 e5                                      ldrb r7, [r1, #0x21]
00325e80  00 40 a0 e1                                      mov r4, r0
00325e84  00 00 57 e3                                      cmp r7, #0
00325e88  06 00 00 0a                                      beq #0x325ea8
00325e8c  40 00 84 e5                                      str r0, [r4, #0x40]
00325e90  44 00 84 e5                                      str r0, [r4, #0x44]
00325e94  7c 20 91 e5                                      ldr r2, [r1, #0x7c]
00325e98  80 10 91 e5                                      ldr r1, [r1, #0x80]
00325e9c  e2 ff ff eb                                      bl #0x325e2c
00325ea0  04 00 a0 e1                                      mov r0, r4
00325ea4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00325ea8  34 50 91 e5                                      ldr r5, [r1, #0x34]
00325eac  38 60 91 e5                                      ldr r6, [r1, #0x38]
00325eb0  40 00 84 e5                                      str r0, [r4, #0x40]
00325eb4  44 00 84 e5                                      str r0, [r4, #0x44]
00325eb8  05 50 66 e0                                      rsb r5, r6, r5
00325ebc  01 10 85 e2                                      add r1, r5, #1
00325ec0  96 ea ff eb                                      bl #0x320920
00325ec4  00 00 55 e3                                      cmp r5, #0
00325ec8  44 20 94 e5                                      ldr r2, [r4, #0x44]
00325ecc  05 00 00 da                                      ble #0x325ee8
00325ed0  d7 30 96 e1                                      ldrsb r3, [r6, r7]
00325ed4  07 31 82 e7                                      str r3, [r2, r7, lsl #2]
00325ed8  01 70 87 e2                                      add r7, r7, #1
00325edc  05 00 57 e1                                      cmp r7, r5
00325ee0  fa ff ff 1a                                      bne #0x325ed0
00325ee4  07 21 82 e0                                      add r2, r2, r7, lsl #2
00325ee8  00 30 a0 e3                                      mov r3, #0
00325eec  40 20 84 e5                                      str r2, [r4, #0x40]
00325ef0  04 00 a0 e1                                      mov r0, r4
00325ef4  00 30 82 e5                                      str r3, [r2]
00325ef8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003260d0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute9getStringEv
; demangled: glitch::io::CStringAttribute::getString()
; decoder-mode: arm
003260d0  10 40 2d e9                                      push {r4, lr}
003260d4  21 30 d1 e5                                      ldrb r3, [r1, #0x21]
003260d8  08 d0 4d e2                                      sub sp, sp, #8
003260dc  00 40 a0 e1                                      mov r4, r0
003260e0  00 00 53 e3                                      cmp r3, #0
003260e4  07 00 00 1a                                      bne #0x326108
003260e8  10 00 84 e5                                      str r0, [r4, #0x10]
003260ec  14 00 84 e5                                      str r0, [r4, #0x14]
003260f0  34 20 91 e5                                      ldr r2, [r1, #0x34]
003260f4  38 10 91 e5                                      ldr r1, [r1, #0x38]
003260f8  bd ff ff eb                                      bl #0x325ff4
003260fc  04 00 a0 e1                                      mov r0, r4
00326100  08 d0 8d e2                                      add sp, sp, #8
00326104  10 80 bd e8                                      pop {r4, pc}
00326108  7c 20 91 e5                                      ldr r2, [r1, #0x7c]
0032610c  04 30 8d e2                                      add r3, sp, #4
00326110  80 10 91 e5                                      ldr r1, [r1, #0x80]
00326114  10 00 84 e5                                      str r0, [r4, #0x10]
00326118  14 00 84 e5                                      str r0, [r4, #0x14]
0032611c  35 ea ff eb                                      bl #0x3209f8
00326120  f5 ff ff ea                                      b #0x3260fc

; FUNCTION 0x00326444, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute9setStringEPKc
; demangled: glitch::io::CStringAttribute::setString(char const*)
; decoder-mode: arm
00326444  30 40 2d e9                                      push {r4, r5, lr}
00326448  21 30 d0 e5                                      ldrb r3, [r0, #0x21]
0032644c  4c d0 4d e2                                      sub sp, sp, #0x4c
00326450  00 50 a0 e1                                      mov r5, r0
00326454  00 00 53 e3                                      cmp r3, #0
00326458  01 40 a0 e1                                      mov r4, r1
0032645c  11 00 00 0a                                      beq #0x3264a8
00326460  3c 50 80 e2                                      add r5, r0, #0x3c
00326464  0d 40 a0 e1                                      mov r4, sp
00326468  0d 00 a0 e1                                      mov r0, sp
0032646c  95 ff ff eb                                      bl #0x3262c8
00326470  04 00 55 e1                                      cmp r5, r4
00326474  03 00 00 0a                                      beq #0x326488
00326478  05 00 a0 e1                                      mov r0, r5
0032647c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00326480  40 20 9d e5                                      ldr r2, [sp, #0x40]
00326484  45 f3 ff eb                                      bl #0x3231a0
00326488  44 00 9d e5                                      ldr r0, [sp, #0x44]
0032648c  04 00 50 e1                                      cmp r0, r4
00326490  02 00 00 0a                                      beq #0x3264a0
00326494  00 00 50 e3                                      cmp r0, #0
00326498  00 00 00 0a                                      beq #0x3264a0
0032649c  eb a7 ff eb                                      bl #0x310450
003264a0  4c d0 8d e2                                      add sp, sp, #0x4c
003264a4  30 80 bd e8                                      pop {r4, r5, pc}
003264a8  01 00 a0 e1                                      mov r0, r1
003264ac  68 9e ff eb                                      bl #0x30de54
003264b0  04 10 a0 e1                                      mov r1, r4
003264b4  00 20 84 e0                                      add r2, r4, r0
003264b8  24 00 85 e2                                      add r0, r5, #0x24
003264bc  b1 e9 ff eb                                      bl #0x320b88
003264c0  f6 ff ff ea                                      b #0x3264a0

; FUNCTION 0x003266a8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttributeD1Ev
; demangled: glitch::io::CStringAttribute::~CStringAttribute()
; decoder-mode: arm
003266a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003266ac  80 40 9f e5                                      ldr r4, [pc, #0x80]
003266b0  80 30 9f e5                                      ldr r3, [pc, #0x80]
003266b4  00 20 a0 e1                                      mov r2, r0
003266b8  04 40 8f e0                                      add r4, pc, r4
003266bc  03 30 94 e7                                      ldr r3, [r4, r3]
003266c0  00 50 a0 e1                                      mov r5, r0
003266c4  08 30 83 e2                                      add r3, r3, #8
003266c8  3c 30 82 e4                                      str r3, [r2], #0x3c
003266cc  44 00 92 e5                                      ldr r0, [r2, #0x44]
003266d0  02 00 50 e1                                      cmp r0, r2
003266d4  02 00 00 0a                                      beq #0x3266e4
003266d8  00 00 50 e3                                      cmp r0, #0
003266dc  00 00 00 0a                                      beq #0x3266e4
003266e0  5a a7 ff eb                                      bl #0x310450
003266e4  24 30 85 e2                                      add r3, r5, #0x24
003266e8  14 00 93 e5                                      ldr r0, [r3, #0x14]
003266ec  03 00 50 e1                                      cmp r0, r3
003266f0  02 00 00 0a                                      beq #0x326700
003266f4  00 00 50 e3                                      cmp r0, #0
003266f8  00 00 00 0a                                      beq #0x326700
003266fc  53 a7 ff eb                                      bl #0x310450
00326700  34 20 9f e5                                      ldr r2, [pc, #0x34]
00326704  05 30 a0 e1                                      mov r3, r5
00326708  02 20 94 e7                                      ldr r2, [r4, r2]
0032670c  08 20 82 e2                                      add r2, r2, #8
00326710  08 20 83 e4                                      str r2, [r3], #8
00326714  14 00 93 e5                                      ldr r0, [r3, #0x14]
00326718  03 00 50 e1                                      cmp r0, r3
0032671c  02 00 00 0a                                      beq #0x32672c
00326720  00 00 50 e3                                      cmp r0, #0
00326724  00 00 00 0a                                      beq #0x32672c
00326728  48 a7 ff eb                                      bl #0x310450
0032672c  05 00 a0 e1                                      mov r0, r5
00326730  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00326734  d8 e3 66 00 e4 0e 00 00 44 2c 00 00              .byte 0xd8, 0xe3, 0x66, 0x00, 0xe4, 0x0e, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00326740, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttributeD0Ev
; demangled: glitch::io::CStringAttribute::~CStringAttribute()
; decoder-mode: arm
00326740  10 40 2d e9                                      push {r4, lr}
00326744  00 40 a0 e1                                      mov r4, r0
00326748  d6 ff ff eb                                      bl #0x3266a8
0032674c  04 00 a0 e1                                      mov r0, r4
00326750  3a a7 ff eb                                      bl #0x310440
00326754  04 00 a0 e1                                      mov r0, r4
00326758  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00326da4, declared_size=184, range_size=184, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute9setStringEPKw
; demangled: glitch::io::CStringAttribute::setString(wchar_t const*)
; decoder-mode: arm
00326da4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00326da8  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
00326dac  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
00326db0  21 20 d0 e5                                      ldrb r2, [r0, #0x21]
00326db4  04 40 8f e0                                      add r4, pc, r4
00326db8  05 30 94 e7                                      ldr r3, [r4, r5]
00326dbc  24 d0 4d e2                                      sub sp, sp, #0x24
00326dc0  00 00 52 e3                                      cmp r2, #0
00326dc4  00 30 93 e5                                      ldr r3, [r3]
00326dc8  00 70 a0 e1                                      mov r7, r0
00326dcc  01 60 a0 e1                                      mov r6, r1
00326dd0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00326dd4  16 00 00 1a                                      bne #0x326e34
00326dd8  04 60 8d e2                                      add r6, sp, #4
00326ddc  24 70 80 e2                                      add r7, r0, #0x24
00326de0  06 00 a0 e1                                      mov r0, r6
00326de4  9b ff ff eb                                      bl #0x326c58
00326de8  06 00 57 e1                                      cmp r7, r6
00326dec  03 00 00 0a                                      beq #0x326e00
00326df0  07 00 a0 e1                                      mov r0, r7
00326df4  18 10 9d e5                                      ldr r1, [sp, #0x18]
00326df8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00326dfc  61 e7 ff eb                                      bl #0x320b88
00326e00  18 00 9d e5                                      ldr r0, [sp, #0x18]
00326e04  06 00 50 e1                                      cmp r0, r6
00326e08  02 00 00 0a                                      beq #0x326e18
00326e0c  00 00 50 e3                                      cmp r0, #0
00326e10  00 00 00 0a                                      beq #0x326e18
00326e14  8d a5 ff eb                                      bl #0x310450
00326e18  05 30 94 e7                                      ldr r3, [r4, r5]
00326e1c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00326e20  00 30 93 e5                                      ldr r3, [r3]
00326e24  03 00 52 e1                                      cmp r2, r3
00326e28  08 00 00 1a                                      bne #0x326e50
00326e2c  24 d0 8d e2                                      add sp, sp, #0x24
00326e30  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00326e34  01 00 a0 e1                                      mov r0, r1
00326e38  92 9f ff eb                                      bl #0x30ec88
00326e3c  06 10 a0 e1                                      mov r1, r6
00326e40  00 21 86 e0                                      add r2, r6, r0, lsl #2
00326e44  3c 00 87 e2                                      add r0, r7, #0x3c
00326e48  d4 f0 ff eb                                      bl #0x3231a0
00326e4c  f1 ff ff ea                                      b #0x326e18
00326e50  2e 9d ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00326e54  dc dc 66 00 ac 40 00 00                          .byte 0xdc, 0xdc, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00326ec4, declared_size=204, range_size=204, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute6setIntEi
; demangled: glitch::io::CStringAttribute::setInt(int)
; decoder-mode: arm
00326ec4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00326ec8  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
00326ecc  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
00326ed0  21 20 d0 e5                                      ldrb r2, [r0, #0x21]
00326ed4  04 40 8f e0                                      add r4, pc, r4
00326ed8  05 30 94 e7                                      ldr r3, [r4, r5]
00326edc  6c d0 4d e2                                      sub sp, sp, #0x6c
00326ee0  00 00 52 e3                                      cmp r2, #0
00326ee4  00 30 93 e5                                      ldr r3, [r3]
00326ee8  64 30 8d e5                                      str r3, [sp, #0x64]
00326eec  16 00 00 0a                                      beq #0x326f4c
00326ef0  04 60 8d e2                                      add r6, sp, #4
00326ef4  3c 70 80 e2                                      add r7, r0, #0x3c
00326ef8  06 00 a0 e1                                      mov r0, r6
00326efc  1e fc ff eb                                      bl #0x325f7c
00326f00  06 00 57 e1                                      cmp r7, r6
00326f04  03 00 00 0a                                      beq #0x326f18
00326f08  07 00 a0 e1                                      mov r0, r7
00326f0c  48 10 9d e5                                      ldr r1, [sp, #0x48]
00326f10  44 20 9d e5                                      ldr r2, [sp, #0x44]
00326f14  a1 f0 ff eb                                      bl #0x3231a0
00326f18  48 00 9d e5                                      ldr r0, [sp, #0x48]
00326f1c  06 00 50 e1                                      cmp r0, r6
00326f20  02 00 00 0a                                      beq #0x326f30
00326f24  00 00 50 e3                                      cmp r0, #0
00326f28  00 00 00 0a                                      beq #0x326f30
00326f2c  47 a5 ff eb                                      bl #0x310450
00326f30  05 30 94 e7                                      ldr r3, [r4, r5]
00326f34  64 20 9d e5                                      ldr r2, [sp, #0x64]
00326f38  00 30 93 e5                                      ldr r3, [r3]
00326f3c  03 00 52 e1                                      cmp r2, r3
00326f40  0f 00 00 1a                                      bne #0x326f84
00326f44  6c d0 8d e2                                      add sp, sp, #0x6c
00326f48  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00326f4c  4c 60 8d e2                                      add r6, sp, #0x4c
00326f50  24 70 80 e2                                      add r7, r0, #0x24
00326f54  06 00 a0 e1                                      mov r0, r6
00326f58  44 fc ff eb                                      bl #0x326070
00326f5c  06 00 57 e1                                      cmp r7, r6
00326f60  03 00 00 0a                                      beq #0x326f74
00326f64  07 00 a0 e1                                      mov r0, r7
00326f68  60 10 9d e5                                      ldr r1, [sp, #0x60]
00326f6c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00326f70  04 e7 ff eb                                      bl #0x320b88
00326f74  60 00 9d e5                                      ldr r0, [sp, #0x60]
00326f78  06 00 50 e1                                      cmp r0, r6
00326f7c  e8 ff ff 1a                                      bne #0x326f24
00326f80  ea ff ff ea                                      b #0x326f30
00326f84  e1 9c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00326f88  bc db 66 00 ac 40 00 00                          .byte 0xbc, 0xdb, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003271e4, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute6getIntEv
; demangled: glitch::io::CStringAttribute::getInt()
; decoder-mode: arm
003271e4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003271e8  98 40 9f e5                                      ldr r4, [pc, #0x98]
003271ec  98 50 9f e5                                      ldr r5, [pc, #0x98]
003271f0  21 20 d0 e5                                      ldrb r2, [r0, #0x21]
003271f4  04 40 8f e0                                      add r4, pc, r4
003271f8  05 30 94 e7                                      ldr r3, [r4, r5]
003271fc  24 d0 4d e2                                      sub sp, sp, #0x24
00327200  00 00 52 e3                                      cmp r2, #0
00327204  00 30 93 e5                                      ldr r3, [r3]
00327208  1c 30 8d e5                                      str r3, [sp, #0x1c]
0032720c  0a 00 00 1a                                      bne #0x32723c
00327210  38 00 90 e5                                      ldr r0, [r0, #0x38]
00327214  9e 9b ff eb                                      bl #0x30e094
00327218  00 70 a0 e1                                      mov r7, r0
0032721c  05 30 94 e7                                      ldr r3, [r4, r5]
00327220  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00327224  07 00 a0 e1                                      mov r0, r7
00327228  00 30 93 e5                                      ldr r3, [r3]
0032722c  03 00 52 e1                                      cmp r2, r3
00327230  13 00 00 1a                                      bne #0x327284
00327234  24 d0 8d e2                                      add sp, sp, #0x24
00327238  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032723c  04 60 8d e2                                      add r6, sp, #4
00327240  7c 20 90 e5                                      ldr r2, [r0, #0x7c]
00327244  80 10 90 e5                                      ldr r1, [r0, #0x80]
00327248  0d 30 a0 e1                                      mov r3, sp
0032724c  06 00 a0 e1                                      mov r0, r6
00327250  14 60 8d e5                                      str r6, [sp, #0x14]
00327254  18 60 8d e5                                      str r6, [sp, #0x18]
00327258  e6 e5 ff eb                                      bl #0x3209f8
0032725c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00327260  8b 9b ff eb                                      bl #0x30e094
00327264  00 70 a0 e1                                      mov r7, r0
00327268  18 00 9d e5                                      ldr r0, [sp, #0x18]
0032726c  06 00 50 e1                                      cmp r0, r6
00327270  e9 ff ff 0a                                      beq #0x32721c
00327274  00 00 50 e3                                      cmp r0, #0
00327278  e7 ff ff 0a                                      beq #0x32721c
0032727c  73 a4 ff eb                                      bl #0x310450
00327280  e5 ff ff ea                                      b #0x32721c
00327284  21 9c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00327288  9c d8 66 00 ac 40 00 00                          .byte 0x9c, 0xd8, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00327290, declared_size=180, range_size=180, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute8getFloatEv
; demangled: glitch::io::CStringAttribute::getFloat()
; decoder-mode: arm
00327290  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00327294  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
00327298  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
0032729c  21 20 d0 e5                                      ldrb r2, [r0, #0x21]
003272a0  04 40 8f e0                                      add r4, pc, r4
003272a4  05 30 94 e7                                      ldr r3, [r4, r5]
003272a8  2c d0 4d e2                                      sub sp, sp, #0x2c
003272ac  00 00 52 e3                                      cmp r2, #0
003272b0  00 30 93 e5                                      ldr r3, [r3]
003272b4  24 30 8d e5                                      str r3, [sp, #0x24]
003272b8  0b 00 00 1a                                      bne #0x3272ec
003272bc  38 00 90 e5                                      ldr r0, [r0, #0x38]
003272c0  04 10 8d e2                                      add r1, sp, #4
003272c4  3f ee ff eb                                      bl #0x322bc8
003272c8  04 70 9d e5                                      ldr r7, [sp, #4]
003272cc  05 30 94 e7                                      ldr r3, [r4, r5]
003272d0  24 20 9d e5                                      ldr r2, [sp, #0x24]
003272d4  07 00 a0 e1                                      mov r0, r7
003272d8  00 30 93 e5                                      ldr r3, [r3]
003272dc  03 00 52 e1                                      cmp r2, r3
003272e0  14 00 00 1a                                      bne #0x327338
003272e4  2c d0 8d e2                                      add sp, sp, #0x2c
003272e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003272ec  0c 60 8d e2                                      add r6, sp, #0xc
003272f0  7c 20 90 e5                                      ldr r2, [r0, #0x7c]
003272f4  80 10 90 e5                                      ldr r1, [r0, #0x80]
003272f8  08 30 8d e2                                      add r3, sp, #8
003272fc  06 00 a0 e1                                      mov r0, r6
00327300  1c 60 8d e5                                      str r6, [sp, #0x1c]
00327304  20 60 8d e5                                      str r6, [sp, #0x20]
00327308  ba e5 ff eb                                      bl #0x3209f8
0032730c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00327310  04 10 8d e2                                      add r1, sp, #4
00327314  2b ee ff eb                                      bl #0x322bc8
00327318  20 00 9d e5                                      ldr r0, [sp, #0x20]
0032731c  04 70 9d e5                                      ldr r7, [sp, #4]
00327320  06 00 50 e1                                      cmp r0, r6
00327324  e8 ff ff 0a                                      beq #0x3272cc
00327328  00 00 50 e3                                      cmp r0, #0
0032732c  e6 ff ff 0a                                      beq #0x3272cc
00327330  46 a4 ff eb                                      bl #0x310450
00327334  e4 ff ff ea                                      b #0x3272cc
00327338  f4 9b ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032733c  f0 d7 66 00 ac 40 00 00                          .byte 0xf0, 0xd7, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003274a0, declared_size=180, range_size=180, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute9setBinaryEPvi
; demangled: glitch::io::CStringAttribute::setBinary(void*, int)
; decoder-mode: arm
003274a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003274a4  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003274a8  24 60 80 e2                                      add r6, r0, #0x24
003274ac  08 d0 4d e2                                      sub sp, sp, #8
003274b0  03 30 8f e0                                      add r3, pc, r3
003274b4  02 70 a0 e1                                      mov r7, r2
003274b8  00 40 a0 e3                                      mov r4, #0
003274bc  01 80 a0 e1                                      mov r8, r1
003274c0  06 00 a0 e1                                      mov r0, r6
003274c4  03 10 a0 e1                                      mov r1, r3
003274c8  03 20 a0 e1                                      mov r2, r3
003274cc  06 40 cd e5                                      strb r4, [sp, #6]
003274d0  ac e5 ff eb                                      bl #0x320b88
003274d4  04 00 57 e1                                      cmp r7, r4
003274d8  1a 00 00 da                                      ble #0x327548
003274dc  04 50 8d e2                                      add r5, sp, #4
003274e0  04 30 d8 e7                                      ldrb r3, [r8, r4]
003274e4  05 00 a0 e1                                      mov r0, r5
003274e8  01 40 84 e2                                      add r4, r4, #1
003274ec  23 22 a0 e1                                      lsr r2, r3, #4
003274f0  09 00 52 e3                                      cmp r2, #9
003274f4  30 e0 82 92                                      addls lr, r2, #0x30
003274f8  0a c0 42 e2                                      sub ip, r2, #0xa
003274fc  04 e0 cd 95                                      strbls lr, [sp, #4]
00327500  05 00 5c e3                                      cmp ip, #5
00327504  0f 30 03 e2                                      and r3, r3, #0xf
00327508  57 20 82 92                                      addls r2, r2, #0x57
0032750c  04 20 cd 95                                      strbls r2, [sp, #4]
00327510  09 00 53 e3                                      cmp r3, #9
00327514  30 20 83 92                                      addls r2, r3, #0x30
00327518  0a 10 43 e2                                      sub r1, r3, #0xa
0032751c  05 20 cd 95                                      strbls r2, [sp, #5]
00327520  05 00 51 e3                                      cmp r1, #5
00327524  57 30 83 92                                      addls r3, r3, #0x57
00327528  05 30 cd 95                                      strbls r3, [sp, #5]
0032752c  48 9a ff eb                                      bl #0x30de54
00327530  05 10 a0 e1                                      mov r1, r5
00327534  00 20 85 e0                                      add r2, r5, r0
00327538  06 00 a0 e1                                      mov r0, r6
0032753c  42 e5 ff eb                                      bl #0x320a4c
00327540  07 00 54 e1                                      cmp r4, r7
00327544  e5 ff ff 1a                                      bne #0x3274e0
00327548  08 d0 8d e2                                      add sp, sp, #8
0032754c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00327550  58 43 5a 00                                      .byte 0x58, 0x43, 0x5a, 0x00

; FUNCTION 0x00327798, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute7getBoolEv
; demangled: glitch::io::CStringAttribute::getBool()
; decoder-mode: arm
00327798  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032779c  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
003277a0  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
003277a4  21 20 d0 e5                                      ldrb r2, [r0, #0x21]
003277a8  04 40 8f e0                                      add r4, pc, r4
003277ac  05 30 94 e7                                      ldr r3, [r4, r5]
003277b0  20 d0 4d e2                                      sub sp, sp, #0x20
003277b4  00 00 52 e3                                      cmp r2, #0
003277b8  00 30 93 e5                                      ldr r3, [r3]
003277bc  1c 30 8d e5                                      str r3, [sp, #0x1c]
003277c0  0d 00 00 1a                                      bne #0x3277fc
003277c4  94 10 9f e5                                      ldr r1, [pc, #0x94]
003277c8  38 00 90 e5                                      ldr r0, [r0, #0x38]
003277cc  01 10 8f e0                                      add r1, pc, r1
003277d0  c4 9b ff eb                                      bl #0x30e6e8
003277d4  01 80 70 e2                                      rsbs r8, r0, #1
003277d8  00 80 a0 33                                      movlo r8, #0
003277dc  05 30 94 e7                                      ldr r3, [r4, r5]
003277e0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003277e4  08 00 a0 e1                                      mov r0, r8
003277e8  00 30 93 e5                                      ldr r3, [r3]
003277ec  03 00 52 e1                                      cmp r2, r3
003277f0  17 00 00 1a                                      bne #0x327854
003277f4  20 d0 8d e2                                      add sp, sp, #0x20
003277f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003277fc  04 60 8d e2                                      add r6, sp, #4
00327800  7c 20 90 e5                                      ldr r2, [r0, #0x7c]
00327804  80 10 90 e5                                      ldr r1, [r0, #0x80]
00327808  0d 30 a0 e1                                      mov r3, sp
0032780c  06 00 a0 e1                                      mov r0, r6
00327810  14 60 8d e5                                      str r6, [sp, #0x14]
00327814  18 60 8d e5                                      str r6, [sp, #0x18]
00327818  76 e4 ff eb                                      bl #0x3209f8
0032781c  18 70 9d e5                                      ldr r7, [sp, #0x18]
00327820  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00327824  07 00 a0 e1                                      mov r0, r7
00327828  01 10 8f e0                                      add r1, pc, r1
0032782c  ad 9b ff eb                                      bl #0x30e6e8
00327830  01 80 70 e2                                      rsbs r8, r0, #1
00327834  00 80 a0 33                                      movlo r8, #0
00327838  06 00 57 e1                                      cmp r7, r6
0032783c  e6 ff ff 0a                                      beq #0x3277dc
00327840  00 00 57 e3                                      cmp r7, #0
00327844  e4 ff ff 0a                                      beq #0x3277dc
00327848  07 00 a0 e1                                      mov r0, r7
0032784c  ff a2 ff eb                                      bl #0x310450
00327850  e1 ff ff ea                                      b #0x3277dc
00327854  ad 9a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00327858  e8 d2 66 00 ac 40 00 00 24 71 59 00 c8 70 59 00  .byte 0xe8, 0xd2, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x24, 0x71, 0x59, 0x00, 0xc8, 0x70, 0x59, 0x00

; FUNCTION 0x0032d3d4, declared_size=344, range_size=344, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttribute8setFloatEf
; demangled: glitch::io::CStringAttribute::setFloat(float)
; decoder-mode: arm
0032d3d4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0032d3d8  44 41 9f e5                                      ldr r4, [pc, #0x144]
0032d3dc  44 51 9f e5                                      ldr r5, [pc, #0x144]
0032d3e0  21 30 d0 e5                                      ldrb r3, [r0, #0x21]
0032d3e4  04 40 8f e0                                      add r4, pc, r4
0032d3e8  05 20 94 e7                                      ldr r2, [r4, r5]
0032d3ec  6f df 4d e2                                      sub sp, sp, #0x1bc
0032d3f0  00 00 53 e3                                      cmp r3, #0
0032d3f4  00 20 92 e5                                      ldr r2, [r2]
0032d3f8  00 60 a0 e1                                      mov r6, r0
0032d3fc  01 80 a0 e1                                      mov r8, r1
0032d400  b4 21 8d e5                                      str r2, [sp, #0x1b4]
0032d404  28 00 00 0a                                      beq #0x32d4ac
0032d408  dc 70 8d e2                                      add r7, sp, #0xdc
0032d40c  07 00 a0 e1                                      mov r0, r7
0032d410  56 ff ff eb                                      bl #0x32d170
0032d414  08 00 a0 e1                                      mov r0, r8
0032d418  21 85 ff eb                                      bl #0x30e8a4
0032d41c  67 8f 8d e2                                      add r8, sp, #0x19c
0032d420  00 20 a0 e1                                      mov r2, r0
0032d424  01 30 a0 e1                                      mov r3, r1
0032d428  07 00 a0 e1                                      mov r0, r7
0032d42c  69 88 ff eb                                      bl #0x30f5d8
0032d430  28 10 87 e2                                      add r1, r7, #0x28
0032d434  08 00 a0 e1                                      mov r0, r8
0032d438  36 f9 ff eb                                      bl #0x32b918
0032d43c  0d a0 a0 e1                                      mov sl, sp
0032d440  3c 60 86 e2                                      add r6, r6, #0x3c
0032d444  0d 00 a0 e1                                      mov r0, sp
0032d448  b0 11 9d e5                                      ldr r1, [sp, #0x1b0]
0032d44c  9d e3 ff eb                                      bl #0x3262c8
0032d450  0a 00 56 e1                                      cmp r6, sl
0032d454  03 00 00 0a                                      beq #0x32d468
0032d458  06 00 a0 e1                                      mov r0, r6
0032d45c  44 10 9d e5                                      ldr r1, [sp, #0x44]
0032d460  40 20 9d e5                                      ldr r2, [sp, #0x40]
0032d464  4d d7 ff eb                                      bl #0x3231a0
0032d468  44 00 9d e5                                      ldr r0, [sp, #0x44]
0032d46c  0a 00 50 e1                                      cmp r0, sl
0032d470  02 00 00 0a                                      beq #0x32d480
0032d474  00 00 50 e3                                      cmp r0, #0
0032d478  00 00 00 0a                                      beq #0x32d480
0032d47c  f3 8b ff eb                                      bl #0x310450
0032d480  08 00 a0 e1                                      mov r0, r8
0032d484  48 99 ff eb                                      bl #0x3139ac
0032d488  07 00 a0 e1                                      mov r0, r7
0032d48c  94 d6 ff eb                                      bl #0x322ee4
0032d490  05 30 94 e7                                      ldr r3, [r4, r5]
0032d494  b4 21 9d e5                                      ldr r2, [sp, #0x1b4]
0032d498  00 30 93 e5                                      ldr r3, [r3]
0032d49c  03 00 52 e1                                      cmp r2, r3
0032d4a0  1e 00 00 1a                                      bne #0x32d520
0032d4a4  6f df 8d e2                                      add sp, sp, #0x1bc
0032d4a8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0032d4ac  4c 70 8d e2                                      add r7, sp, #0x4c
0032d4b0  07 00 a0 e1                                      mov r0, r7
0032d4b4  2d ff ff eb                                      bl #0x32d170
0032d4b8  08 00 a0 e1                                      mov r0, r8
0032d4bc  f8 84 ff eb                                      bl #0x30e8a4
0032d4c0  61 8f 8d e2                                      add r8, sp, #0x184
0032d4c4  00 20 a0 e1                                      mov r2, r0
0032d4c8  01 30 a0 e1                                      mov r3, r1
0032d4cc  07 00 a0 e1                                      mov r0, r7
0032d4d0  40 88 ff eb                                      bl #0x30f5d8
0032d4d4  5b af 8d e2                                      add sl, sp, #0x16c
0032d4d8  28 10 87 e2                                      add r1, r7, #0x28
0032d4dc  08 00 a0 e1                                      mov r0, r8
0032d4e0  0c f9 ff eb                                      bl #0x32b918
0032d4e4  24 60 86 e2                                      add r6, r6, #0x24
0032d4e8  0a 00 a0 e1                                      mov r0, sl
0032d4ec  98 11 9d e5                                      ldr r1, [sp, #0x198]
0032d4f0  48 20 8d e2                                      add r2, sp, #0x48
0032d4f4  d0 e2 ff eb                                      bl #0x32603c
0032d4f8  0a 00 56 e1                                      cmp r6, sl
0032d4fc  03 00 00 0a                                      beq #0x32d510
0032d500  06 00 a0 e1                                      mov r0, r6
0032d504  80 11 9d e5                                      ldr r1, [sp, #0x180]
0032d508  7c 21 9d e5                                      ldr r2, [sp, #0x17c]
0032d50c  9d cd ff eb                                      bl #0x320b88
0032d510  80 01 9d e5                                      ldr r0, [sp, #0x180]
0032d514  0a 00 50 e1                                      cmp r0, sl
0032d518  d5 ff ff 1a                                      bne #0x32d474
0032d51c  d7 ff ff ea                                      b #0x32d480
0032d520  7a 83 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032d524  ac 76 66 00 ac 40 00 00                          .byte 0xac, 0x76, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00565044, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttributeD2Ev
; demangled: glitch::io::CStringAttribute::~CStringAttribute()
; decoder-mode: arm
00565044  70 40 2d e9                                      push {r4, r5, r6, lr}
00565048  80 40 9f e5                                      ldr r4, [pc, #0x80]
0056504c  80 30 9f e5                                      ldr r3, [pc, #0x80]
00565050  00 20 a0 e1                                      mov r2, r0
00565054  04 40 8f e0                                      add r4, pc, r4
00565058  03 30 94 e7                                      ldr r3, [r4, r3]
0056505c  00 50 a0 e1                                      mov r5, r0
00565060  08 30 83 e2                                      add r3, r3, #8
00565064  3c 30 82 e4                                      str r3, [r2], #0x3c
00565068  44 00 92 e5                                      ldr r0, [r2, #0x44]
0056506c  02 00 50 e1                                      cmp r0, r2
00565070  02 00 00 0a                                      beq #0x565080
00565074  00 00 50 e3                                      cmp r0, #0
00565078  00 00 00 0a                                      beq #0x565080
0056507c  f3 ac f6 eb                                      bl #0x310450
00565080  24 30 85 e2                                      add r3, r5, #0x24
00565084  14 00 93 e5                                      ldr r0, [r3, #0x14]
00565088  03 00 50 e1                                      cmp r0, r3
0056508c  02 00 00 0a                                      beq #0x56509c
00565090  00 00 50 e3                                      cmp r0, #0
00565094  00 00 00 0a                                      beq #0x56509c
00565098  ec ac f6 eb                                      bl #0x310450
0056509c  34 20 9f e5                                      ldr r2, [pc, #0x34]
005650a0  05 30 a0 e1                                      mov r3, r5
005650a4  02 20 94 e7                                      ldr r2, [r4, r2]
005650a8  08 20 82 e2                                      add r2, r2, #8
005650ac  08 20 83 e4                                      str r2, [r3], #8
005650b0  14 00 93 e5                                      ldr r0, [r3, #0x14]
005650b4  03 00 50 e1                                      cmp r0, r3
005650b8  02 00 00 0a                                      beq #0x5650c8
005650bc  00 00 50 e3                                      cmp r0, #0
005650c0  00 00 00 0a                                      beq #0x5650c8
005650c4  e1 ac f6 eb                                      bl #0x310450
005650c8  05 00 a0 e1                                      mov r0, r5
005650cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005650d0  3c fa 42 00 e4 0e 00 00 44 2c 00 00              .byte 0x3c, 0xfa, 0x42, 0x00, 0xe4, 0x0e, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00565c00, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttributeC1EPKcPKwb
; demangled: glitch::io::CStringAttribute::CStringAttribute(char const*, wchar_t const*, bool)
; decoder-mode: arm
00565c00  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00565c04  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
00565c08  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
00565c0c  00 50 a0 e1                                      mov r5, r0
00565c10  06 60 8f e0                                      add r6, pc, r6
00565c14  0c c0 96 e7                                      ldr ip, [r6, ip]
00565c18  01 80 a0 e3                                      mov r8, #1
00565c1c  04 80 80 e5                                      str r8, [r0, #4]
00565c20  08 c0 8c e2                                      add ip, ip, #8
00565c24  08 c0 85 e4                                      str ip, [r5], #8
00565c28  00 40 a0 e1                                      mov r4, r0
00565c2c  01 70 a0 e1                                      mov r7, r1
00565c30  18 50 80 e5                                      str r5, [r0, #0x18]
00565c34  1c 50 80 e5                                      str r5, [r0, #0x1c]
00565c38  10 10 a0 e3                                      mov r1, #0x10
00565c3c  05 00 a0 e1                                      mov r0, r5
00565c40  03 a0 a0 e1                                      mov sl, r3
00565c44  02 90 a0 e1                                      mov sb, r2
00565c48  56 eb f6 eb                                      bl #0x3209a8
00565c4c  90 20 9f e5                                      ldr r2, [pc, #0x90]
00565c50  18 10 94 e5                                      ldr r1, [r4, #0x18]
00565c54  04 30 a0 e1                                      mov r3, r4
00565c58  02 20 96 e7                                      ldr r2, [r6, r2]
00565c5c  00 60 a0 e3                                      mov r6, #0
00565c60  00 60 c1 e5                                      strb r6, [r1]
00565c64  08 20 82 e2                                      add r2, r2, #8
00565c68  20 a0 c4 e5                                      strb sl, [r4, #0x20]
00565c6c  24 20 83 e4                                      str r2, [r3], #0x24
00565c70  03 00 a0 e1                                      mov r0, r3
00565c74  34 30 84 e5                                      str r3, [r4, #0x34]
00565c78  38 30 84 e5                                      str r3, [r4, #0x38]
00565c7c  10 10 a0 e3                                      mov r1, #0x10
00565c80  48 eb f6 eb                                      bl #0x3209a8
00565c84  34 20 94 e5                                      ldr r2, [r4, #0x34]
00565c88  3c 30 84 e2                                      add r3, r4, #0x3c
00565c8c  03 00 a0 e1                                      mov r0, r3
00565c90  00 60 c2 e5                                      strb r6, [r2]
00565c94  10 10 a0 e3                                      mov r1, #0x10
00565c98  7c 30 84 e5                                      str r3, [r4, #0x7c]
00565c9c  80 30 84 e5                                      str r3, [r4, #0x80]
00565ca0  1e eb f6 eb                                      bl #0x320920
00565ca4  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00565ca8  07 00 a0 e1                                      mov r0, r7
00565cac  00 60 83 e5                                      str r6, [r3]
00565cb0  21 80 c4 e5                                      strb r8, [r4, #0x21]
00565cb4  66 a0 f6 eb                                      bl #0x30de54
00565cb8  07 10 a0 e1                                      mov r1, r7
00565cbc  00 20 87 e0                                      add r2, r7, r0
00565cc0  05 00 a0 e1                                      mov r0, r5
00565cc4  af eb f6 eb                                      bl #0x320b88
00565cc8  04 00 a0 e1                                      mov r0, r4
00565ccc  09 10 a0 e1                                      mov r1, sb
00565cd0  33 04 f7 eb                                      bl #0x326da4
00565cd4  04 00 a0 e1                                      mov r0, r4
00565cd8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00565cdc  80 ee 42 00 44 2c 00 00 e4 0e 00 00              .byte 0x80, 0xee, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0xe4, 0x0e, 0x00, 0x00

; FUNCTION 0x00566f7c, declared_size=240, range_size=240, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttributeC2EPKcPvib
; demangled: glitch::io::CStringAttribute::CStringAttribute(char const*, void*, int, bool)
; decoder-mode: arm
00566f7c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00566f80  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
00566f84  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
00566f88  00 40 a0 e1                                      mov r4, r0
00566f8c  06 60 8f e0                                      add r6, pc, r6
00566f90  0c c0 96 e7                                      ldr ip, [r6, ip]
00566f94  00 50 a0 e1                                      mov r5, r0
00566f98  01 00 a0 e3                                      mov r0, #1
00566f9c  08 c0 8c e2                                      add ip, ip, #8
00566fa0  04 00 84 e5                                      str r0, [r4, #4]
00566fa4  08 c0 85 e4                                      str ip, [r5], #8
00566fa8  01 70 a0 e1                                      mov r7, r1
00566fac  18 50 84 e5                                      str r5, [r4, #0x18]
00566fb0  1c 50 84 e5                                      str r5, [r4, #0x1c]
00566fb4  05 00 a0 e1                                      mov r0, r5
00566fb8  10 10 a0 e3                                      mov r1, #0x10
00566fbc  02 80 a0 e1                                      mov r8, r2
00566fc0  03 a0 a0 e1                                      mov sl, r3
00566fc4  28 b0 dd e5                                      ldrb fp, [sp, #0x28]
00566fc8  76 e6 f6 eb                                      bl #0x3209a8
00566fcc  94 20 9f e5                                      ldr r2, [pc, #0x94]
00566fd0  18 10 94 e5                                      ldr r1, [r4, #0x18]
00566fd4  04 30 a0 e1                                      mov r3, r4
00566fd8  02 20 96 e7                                      ldr r2, [r6, r2]
00566fdc  00 90 a0 e3                                      mov sb, #0
00566fe0  00 90 c1 e5                                      strb sb, [r1]
00566fe4  08 20 82 e2                                      add r2, r2, #8
00566fe8  20 b0 c4 e5                                      strb fp, [r4, #0x20]
00566fec  24 20 83 e4                                      str r2, [r3], #0x24
00566ff0  03 00 a0 e1                                      mov r0, r3
00566ff4  34 30 84 e5                                      str r3, [r4, #0x34]
00566ff8  38 30 84 e5                                      str r3, [r4, #0x38]
00566ffc  10 10 a0 e3                                      mov r1, #0x10
00567000  68 e6 f6 eb                                      bl #0x3209a8
00567004  34 20 94 e5                                      ldr r2, [r4, #0x34]
00567008  3c 30 84 e2                                      add r3, r4, #0x3c
0056700c  03 00 a0 e1                                      mov r0, r3
00567010  00 90 c2 e5                                      strb sb, [r2]
00567014  10 10 a0 e3                                      mov r1, #0x10
00567018  7c 30 84 e5                                      str r3, [r4, #0x7c]
0056701c  80 30 84 e5                                      str r3, [r4, #0x80]
00567020  3e e6 f6 eb                                      bl #0x320920
00567024  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00567028  07 00 a0 e1                                      mov r0, r7
0056702c  00 90 83 e5                                      str sb, [r3]
00567030  21 90 c4 e5                                      strb sb, [r4, #0x21]
00567034  86 9b f6 eb                                      bl #0x30de54
00567038  07 10 a0 e1                                      mov r1, r7
0056703c  00 20 87 e0                                      add r2, r7, r0
00567040  05 00 a0 e1                                      mov r0, r5
00567044  cf e6 f6 eb                                      bl #0x320b88
00567048  04 00 a0 e1                                      mov r0, r4
0056704c  08 10 a0 e1                                      mov r1, r8
00567050  0a 20 a0 e1                                      mov r2, sl
00567054  11 01 f7 eb                                      bl #0x3274a0
00567058  04 00 a0 e1                                      mov r0, r4
0056705c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00567060  04 db 42 00 44 2c 00 00 e4 0e 00 00              .byte 0x04, 0xdb, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0xe4, 0x0e, 0x00, 0x00

; FUNCTION 0x00567d60, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CStringAttribute
; alias: _ZN6glitch2io16CStringAttributeC1EPKcS3_b
; demangled: glitch::io::CStringAttribute::CStringAttribute(char const*, char const*, bool)
; decoder-mode: arm
00567d60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00567d64  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
00567d68  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
00567d6c  00 40 a0 e1                                      mov r4, r0
00567d70  06 60 8f e0                                      add r6, pc, r6
00567d74  0c c0 96 e7                                      ldr ip, [r6, ip]
00567d78  00 50 a0 e1                                      mov r5, r0
00567d7c  01 00 a0 e3                                      mov r0, #1
00567d80  08 c0 8c e2                                      add ip, ip, #8
00567d84  04 00 84 e5                                      str r0, [r4, #4]
00567d88  08 c0 85 e4                                      str ip, [r5], #8
00567d8c  01 70 a0 e1                                      mov r7, r1
00567d90  05 00 a0 e1                                      mov r0, r5
00567d94  18 50 84 e5                                      str r5, [r4, #0x18]
00567d98  1c 50 84 e5                                      str r5, [r4, #0x1c]
00567d9c  10 10 a0 e3                                      mov r1, #0x10
00567da0  03 a0 a0 e1                                      mov sl, r3
00567da4  02 80 a0 e1                                      mov r8, r2
00567da8  fe e2 f6 eb                                      bl #0x3209a8
00567dac  90 20 9f e5                                      ldr r2, [pc, #0x90]
00567db0  18 10 94 e5                                      ldr r1, [r4, #0x18]
00567db4  04 30 a0 e1                                      mov r3, r4
00567db8  02 20 96 e7                                      ldr r2, [r6, r2]
00567dbc  00 90 a0 e3                                      mov sb, #0
00567dc0  00 90 c1 e5                                      strb sb, [r1]
00567dc4  08 20 82 e2                                      add r2, r2, #8
00567dc8  20 a0 c4 e5                                      strb sl, [r4, #0x20]
00567dcc  24 20 83 e4                                      str r2, [r3], #0x24
00567dd0  03 00 a0 e1                                      mov r0, r3
00567dd4  34 30 84 e5                                      str r3, [r4, #0x34]
00567dd8  38 30 84 e5                                      str r3, [r4, #0x38]
00567ddc  10 10 a0 e3                                      mov r1, #0x10
00567de0  f0 e2 f6 eb                                      bl #0x3209a8
00567de4  34 20 94 e5                                      ldr r2, [r4, #0x34]
00567de8  3c 30 84 e2                                      add r3, r4, #0x3c
00567dec  03 00 a0 e1                                      mov r0, r3
00567df0  00 90 c2 e5                                      strb sb, [r2]
00567df4  10 10 a0 e3                                      mov r1, #0x10
00567df8  7c 30 84 e5                                      str r3, [r4, #0x7c]
00567dfc  80 30 84 e5                                      str r3, [r4, #0x80]
00567e00  c6 e2 f6 eb                                      bl #0x320920
00567e04  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00567e08  07 00 a0 e1                                      mov r0, r7
00567e0c  00 90 83 e5                                      str sb, [r3]
00567e10  21 90 c4 e5                                      strb sb, [r4, #0x21]
00567e14  0e 98 f6 eb                                      bl #0x30de54
00567e18  07 10 a0 e1                                      mov r1, r7
00567e1c  00 20 87 e0                                      add r2, r7, r0
00567e20  05 00 a0 e1                                      mov r0, r5
00567e24  57 e3 f6 eb                                      bl #0x320b88
00567e28  04 00 a0 e1                                      mov r0, r4
00567e2c  08 10 a0 e1                                      mov r1, r8
00567e30  83 f9 f6 eb                                      bl #0x326444
00567e34  04 00 a0 e1                                      mov r0, r4
00567e38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00567e3c  20 cd 42 00 44 2c 00 00 e4 0e 00 00              .byte 0x20, 0xcd, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0xe4, 0x0e, 0x00, 0x00
