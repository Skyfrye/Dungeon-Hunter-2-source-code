; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005605a4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute8getFloatEv
; demangled: glitch::io::CEnumAttribute::getFloat()
; decoder-mode: arm
005605a4  10 40 2d e9                                      push {r4, lr}
005605a8  00 30 90 e5                                      ldr r3, [r0]
005605ac  0f e0 a0 e1                                      mov lr, pc
005605b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005605b4  ea b8 f6 eb                                      bl #0x30e964
005605b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005605bc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute7getBoolEv
; demangled: glitch::io::CEnumAttribute::getBool()
; decoder-mode: arm
005605bc  10 40 2d e9                                      push {r4, lr}
005605c0  00 30 90 e5                                      ldr r3, [r0]
005605c4  0f e0 a0 e1                                      mov lr, pc
005605c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005605cc  00 00 50 e2                                      subs r0, r0, #0
005605d0  01 00 a0 13                                      movne r0, #1
005605d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005605d8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute8setFloatEf
; demangled: glitch::io::CEnumAttribute::setFloat(float)
; decoder-mode: arm
005605d8  70 40 2d e9                                      push {r4, r5, r6, lr}
005605dc  00 40 a0 e1                                      mov r4, r0
005605e0  01 00 a0 e1                                      mov r0, r1
005605e4  b8 b7 f6 eb                                      bl #0x30e4cc
005605e8  00 50 94 e5                                      ldr r5, [r4]
005605ec  00 10 a0 e1                                      mov r1, r0
005605f0  04 00 a0 e1                                      mov r0, r4
005605f4  0f e0 a0 e1                                      mov lr, pc
005605f8  88 f0 95 e5                                      ldr pc, [r5, #0x88]
005605fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00560600, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute7getEnumEv
; demangled: glitch::io::CEnumAttribute::getEnum()
; decoder-mode: arm
00560600  38 00 90 e5                                      ldr r0, [r0, #0x38]
00560604  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560608, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZNK6glitch2io14CEnumAttribute7getTypeEv
; demangled: glitch::io::CEnumAttribute::getType() const
; decoder-mode: arm
00560608  04 00 a0 e3                                      mov r0, #4
0056060c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560610, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZNK6glitch2io14CEnumAttribute13getTypeStringEv
; demangled: glitch::io::CEnumAttribute::getTypeString() const
; decoder-mode: arm
00560610  04 00 9f e5                                      ldr r0, [pc, #4]
00560614  00 00 8f e0                                      add r0, pc, r0
00560618  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0056061c  84 e8 37 00                                      .byte 0x84, 0xe8, 0x37, 0x00

; FUNCTION 0x00561e98, declared_size=108, range_size=108, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute6getIntEv
; demangled: glitch::io::CEnumAttribute::getInt()
; decoder-mode: arm
00561e98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00561e9c  3c 60 90 e5                                      ldr r6, [r0, #0x3c]
00561ea0  40 30 90 e5                                      ldr r3, [r0, #0x40]
00561ea4  03 30 66 e0                                      rsb r3, r6, r3
00561ea8  c3 31 a0 e1                                      asr r3, r3, #3
00561eac  03 21 83 e0                                      add r2, r3, r3, lsl #2
00561eb0  02 22 82 e0                                      add r2, r2, r2, lsl #4
00561eb4  02 24 82 e0                                      add r2, r2, r2, lsl #8
00561eb8  02 28 82 e0                                      add r2, r2, r2, lsl #16
00561ebc  82 30 83 e0                                      add r3, r3, r2, lsl #1
00561ec0  00 00 53 e3                                      cmp r3, #0
00561ec4  00 50 e0 03                                      mvneq r5, #0
00561ec8  0b 00 00 0a                                      beq #0x561efc
00561ecc  00 40 a0 e3                                      mov r4, #0
00561ed0  38 70 90 e5                                      ldr r7, [r0, #0x38]
00561ed4  04 50 a0 e1                                      mov r5, r4
00561ed8  00 00 00 ea                                      b #0x561ee0
00561edc  01 50 85 e2                                      add r5, r5, #1
00561ee0  04 30 86 e0                                      add r3, r6, r4
00561ee4  14 10 93 e5                                      ldr r1, [r3, #0x14]
00561ee8  07 00 a0 e1                                      mov r0, r7
00561eec  fd b1 f6 eb                                      bl #0x30e6e8
00561ef0  00 00 50 e3                                      cmp r0, #0
00561ef4  18 40 84 e2                                      add r4, r4, #0x18
00561ef8  f7 ff ff 1a                                      bne #0x561edc
00561efc  05 00 a0 e1                                      mov r0, r5
00561f00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00562a84, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute10getStringWEv
; demangled: glitch::io::CEnumAttribute::getStringW()
; decoder-mode: arm
00562a84  70 40 2d e9                                      push {r4, r5, r6, lr}
00562a88  34 40 91 e5                                      ldr r4, [r1, #0x34]
00562a8c  38 50 91 e5                                      ldr r5, [r1, #0x38]
00562a90  00 60 a0 e1                                      mov r6, r0
00562a94  40 00 86 e5                                      str r0, [r6, #0x40]
00562a98  04 40 65 e0                                      rsb r4, r5, r4
00562a9c  01 10 84 e2                                      add r1, r4, #1
00562aa0  44 00 86 e5                                      str r0, [r6, #0x44]
00562aa4  9d f7 f6 eb                                      bl #0x320920
00562aa8  00 00 54 e3                                      cmp r4, #0
00562aac  44 10 96 e5                                      ldr r1, [r6, #0x44]
00562ab0  06 00 00 da                                      ble #0x562ad0
00562ab4  00 30 a0 e3                                      mov r3, #0
00562ab8  d3 20 95 e1                                      ldrsb r2, [r5, r3]
00562abc  03 21 81 e7                                      str r2, [r1, r3, lsl #2]
00562ac0  01 30 83 e2                                      add r3, r3, #1
00562ac4  04 00 53 e1                                      cmp r3, r4
00562ac8  fa ff ff 1a                                      bne #0x562ab8
00562acc  03 11 81 e0                                      add r1, r1, r3, lsl #2
00562ad0  00 30 a0 e3                                      mov r3, #0
00562ad4  40 10 86 e5                                      str r1, [r6, #0x40]
00562ad8  06 00 a0 e1                                      mov r0, r6
00562adc  00 30 81 e5                                      str r3, [r1]
00562ae0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00562d0c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute9getStringEv
; demangled: glitch::io::CEnumAttribute::getString()
; decoder-mode: arm
00562d0c  10 40 2d e9                                      push {r4, lr}
00562d10  24 10 81 e2                                      add r1, r1, #0x24
00562d14  00 40 a0 e1                                      mov r4, r0
00562d18  f2 ff ff eb                                      bl #0x562ce8
00562d1c  04 00 a0 e1                                      mov r0, r4
00562d20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056532c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttributeD1Ev
; demangled: glitch::io::CEnumAttribute::~CEnumAttribute()
; decoder-mode: arm
0056532c  70 40 2d e9                                      push {r4, r5, r6, lr}
00565330  68 40 9f e5                                      ldr r4, [pc, #0x68]
00565334  68 30 9f e5                                      ldr r3, [pc, #0x68]
00565338  00 50 a0 e1                                      mov r5, r0
0056533c  04 40 8f e0                                      add r4, pc, r4
00565340  03 30 94 e7                                      ldr r3, [r4, r3]
00565344  08 30 83 e2                                      add r3, r3, #8
00565348  3c 30 80 e4                                      str r3, [r0], #0x3c
0056534c  a5 fb ff eb                                      bl #0x5641e8
00565350  24 30 85 e2                                      add r3, r5, #0x24
00565354  14 00 93 e5                                      ldr r0, [r3, #0x14]
00565358  03 00 50 e1                                      cmp r0, r3
0056535c  02 00 00 0a                                      beq #0x56536c
00565360  00 00 50 e3                                      cmp r0, #0
00565364  00 00 00 0a                                      beq #0x56536c
00565368  38 ac f6 eb                                      bl #0x310450
0056536c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00565370  05 30 a0 e1                                      mov r3, r5
00565374  02 20 94 e7                                      ldr r2, [r4, r2]
00565378  08 20 82 e2                                      add r2, r2, #8
0056537c  08 20 83 e4                                      str r2, [r3], #8
00565380  14 00 93 e5                                      ldr r0, [r3, #0x14]
00565384  03 00 50 e1                                      cmp r0, r3
00565388  02 00 00 0a                                      beq #0x565398
0056538c  00 00 50 e3                                      cmp r0, #0
00565390  00 00 00 0a                                      beq #0x565398
00565394  2d ac f6 eb                                      bl #0x310450
00565398  05 00 a0 e1                                      mov r0, r5
0056539c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005653a0  54 f7 42 00 cc 2c 00 00 44 2c 00 00              .byte 0x54, 0xf7, 0x42, 0x00, 0xcc, 0x2c, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x005653ac, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttributeD0Ev
; demangled: glitch::io::CEnumAttribute::~CEnumAttribute()
; decoder-mode: arm
005653ac  10 40 2d e9                                      push {r4, lr}
005653b0  00 40 a0 e1                                      mov r4, r0
005653b4  dc ff ff eb                                      bl #0x56532c
005653b8  04 00 a0 e1                                      mov r0, r4
005653bc  bb a3 f6 eb                                      bl #0x30e2b0
005653c0  04 00 a0 e1                                      mov r0, r4
005653c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005656c8, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute7setEnumEPKcPKS3_
; demangled: glitch::io::CEnumAttribute::setEnum(char const*, char const* const*)
; decoder-mode: arm
005656c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005656cc  d4 80 9f e5                                      ldr r8, [pc, #0xd4]
005656d0  d4 90 9f e5                                      ldr sb, [pc, #0xd4]
005656d4  24 d0 4d e2                                      sub sp, sp, #0x24
005656d8  08 80 8f e0                                      add r8, pc, r8
005656dc  09 30 98 e7                                      ldr r3, [r8, sb]
005656e0  00 50 52 e2                                      subs r5, r2, #0
005656e4  00 a0 a0 e1                                      mov sl, r0
005656e8  00 30 93 e5                                      ldr r3, [r3]
005656ec  01 b0 a0 e1                                      mov fp, r1
005656f0  1c 30 8d e5                                      str r3, [sp, #0x1c]
005656f4  1e 00 00 0a                                      beq #0x565774
005656f8  00 10 95 e5                                      ldr r1, [r5]
005656fc  00 00 51 e3                                      cmp r1, #0
00565700  04 00 00 0a                                      beq #0x565718
00565704  00 10 a0 e3                                      mov r1, #0
00565708  01 10 81 e2                                      add r1, r1, #1
0056570c  01 31 95 e7                                      ldr r3, [r5, r1, lsl #2]
00565710  00 00 53 e3                                      cmp r3, #0
00565714  fb ff ff 1a                                      bne #0x565708
00565718  3c 60 8a e2                                      add r6, sl, #0x3c
0056571c  06 00 a0 e1                                      mov r0, r6
00565720  9f ff ff eb                                      bl #0x5655a4
00565724  00 10 95 e5                                      ldr r1, [r5]
00565728  00 00 51 e3                                      cmp r1, #0
0056572c  10 00 00 0a                                      beq #0x565774
00565730  04 40 8d e2                                      add r4, sp, #4
00565734  0d 70 a0 e1                                      mov r7, sp
00565738  0d 20 a0 e1                                      mov r2, sp
0056573c  04 00 a0 e1                                      mov r0, r4
00565740  3d 02 f7 eb                                      bl #0x32603c
00565744  06 00 a0 e1                                      mov r0, r6
00565748  04 10 a0 e1                                      mov r1, r4
0056574c  60 ff ff eb                                      bl #0x5654d4
00565750  18 00 9d e5                                      ldr r0, [sp, #0x18]
00565754  04 00 50 e1                                      cmp r0, r4
00565758  02 00 00 0a                                      beq #0x565768
0056575c  00 00 50 e3                                      cmp r0, #0
00565760  00 00 00 0a                                      beq #0x565768
00565764  39 ab f6 eb                                      bl #0x310450
00565768  04 10 b5 e5                                      ldr r1, [r5, #4]!
0056576c  00 00 51 e3                                      cmp r1, #0
00565770  f0 ff ff 1a                                      bne #0x565738
00565774  00 30 9a e5                                      ldr r3, [sl]
00565778  0a 00 a0 e1                                      mov r0, sl
0056577c  0b 10 a0 e1                                      mov r1, fp
00565780  0f e0 a0 e1                                      mov lr, pc
00565784  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00565788  09 30 98 e7                                      ldr r3, [r8, sb]
0056578c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00565790  00 30 93 e5                                      ldr r3, [r3]
00565794  03 00 52 e1                                      cmp r2, r3
00565798  01 00 00 1a                                      bne #0x5657a4
0056579c  24 d0 8d e2                                      add sp, sp, #0x24
005657a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005657a4  d9 a2 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005657a8  b8 f3 42 00 ac 40 00 00                          .byte 0xb8, 0xf3, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0056706c, declared_size=216, range_size=216, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttributeC1EPKcS3_PKS3_b
; demangled: glitch::io::CEnumAttribute::CEnumAttribute(char const*, char const*, char const* const*, bool)
; decoder-mode: arm
0056706c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00567070  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
00567074  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
00567078  00 40 a0 e1                                      mov r4, r0
0056707c  06 60 8f e0                                      add r6, pc, r6
00567080  0c c0 96 e7                                      ldr ip, [r6, ip]
00567084  00 50 a0 e1                                      mov r5, r0
00567088  01 00 a0 e3                                      mov r0, #1
0056708c  08 c0 8c e2                                      add ip, ip, #8
00567090  04 00 84 e5                                      str r0, [r4, #4]
00567094  08 c0 85 e4                                      str ip, [r5], #8
00567098  01 70 a0 e1                                      mov r7, r1
0056709c  18 50 84 e5                                      str r5, [r4, #0x18]
005670a0  1c 50 84 e5                                      str r5, [r4, #0x1c]
005670a4  05 00 a0 e1                                      mov r0, r5
005670a8  10 10 a0 e3                                      mov r1, #0x10
005670ac  02 80 a0 e1                                      mov r8, r2
005670b0  03 a0 a0 e1                                      mov sl, r3
005670b4  28 b0 dd e5                                      ldrb fp, [sp, #0x28]
005670b8  3a e6 f6 eb                                      bl #0x3209a8
005670bc  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
005670c0  18 10 94 e5                                      ldr r1, [r4, #0x18]
005670c4  04 30 a0 e1                                      mov r3, r4
005670c8  02 20 96 e7                                      ldr r2, [r6, r2]
005670cc  00 90 a0 e3                                      mov sb, #0
005670d0  00 90 c1 e5                                      strb sb, [r1]
005670d4  08 20 82 e2                                      add r2, r2, #8
005670d8  20 b0 c4 e5                                      strb fp, [r4, #0x20]
005670dc  24 20 83 e4                                      str r2, [r3], #0x24
005670e0  03 00 a0 e1                                      mov r0, r3
005670e4  34 30 84 e5                                      str r3, [r4, #0x34]
005670e8  38 30 84 e5                                      str r3, [r4, #0x38]
005670ec  10 10 a0 e3                                      mov r1, #0x10
005670f0  2c e6 f6 eb                                      bl #0x3209a8
005670f4  34 30 94 e5                                      ldr r3, [r4, #0x34]
005670f8  07 00 a0 e1                                      mov r0, r7
005670fc  00 90 c3 e5                                      strb sb, [r3]
00567100  44 90 84 e5                                      str sb, [r4, #0x44]
00567104  3c 90 84 e5                                      str sb, [r4, #0x3c]
00567108  40 90 84 e5                                      str sb, [r4, #0x40]
0056710c  50 9b f6 eb                                      bl #0x30de54
00567110  07 10 a0 e1                                      mov r1, r7
00567114  00 20 87 e0                                      add r2, r7, r0
00567118  05 00 a0 e1                                      mov r0, r5
0056711c  99 e6 f6 eb                                      bl #0x320b88
00567120  04 00 a0 e1                                      mov r0, r4
00567124  08 10 a0 e1                                      mov r1, r8
00567128  0a 20 a0 e1                                      mov r2, sl
0056712c  65 f9 ff eb                                      bl #0x5656c8
00567130  04 00 a0 e1                                      mov r0, r4
00567134  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00567138  14 da 42 00 44 2c 00 00 cc 2c 00 00              .byte 0x14, 0xda, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0xcc, 0x2c, 0x00, 0x00

; FUNCTION 0x00567144, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute9setStringEPKc
; demangled: glitch::io::CEnumAttribute::setString(char const*)
; decoder-mode: arm
00567144  70 40 2d e9                                      push {r4, r5, r6, lr}
00567148  00 40 a0 e1                                      mov r4, r0
0056714c  01 00 a0 e1                                      mov r0, r1
00567150  01 50 a0 e1                                      mov r5, r1
00567154  3e 9b f6 eb                                      bl #0x30de54
00567158  05 10 a0 e1                                      mov r1, r5
0056715c  00 20 85 e0                                      add r2, r5, r0
00567160  24 00 84 e2                                      add r0, r4, #0x24
00567164  70 40 bd e8                                      pop {r4, r5, r6, lr}
00567168  86 e6 f6 ea                                      b #0x320b88

; FUNCTION 0x00567eb8, declared_size=108, range_size=108, mode=arm
; class-group: glitch::io::CEnumAttribute
; alias: _ZN6glitch2io14CEnumAttribute6setIntEi
; demangled: glitch::io::CEnumAttribute::setInt(int)
; decoder-mode: arm
00567eb8  00 00 51 e3                                      cmp r1, #0
00567ebc  12 00 00 ba                                      blt #0x567f0c
00567ec0  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
00567ec4  40 30 90 e5                                      ldr r3, [r0, #0x40]
00567ec8  03 30 6c e0                                      rsb r3, ip, r3
00567ecc  c3 31 a0 e1                                      asr r3, r3, #3
00567ed0  03 21 83 e0                                      add r2, r3, r3, lsl #2
00567ed4  02 22 82 e0                                      add r2, r2, r2, lsl #4
00567ed8  02 24 82 e0                                      add r2, r2, r2, lsl #8
00567edc  02 28 82 e0                                      add r2, r2, r2, lsl #16
00567ee0  82 30 83 e0                                      add r3, r3, r2, lsl #1
00567ee4  03 00 51 e1                                      cmp r1, r3
00567ee8  07 00 00 aa                                      bge #0x567f0c
00567eec  18 30 a0 e3                                      mov r3, #0x18
00567ef0  93 c1 21 e0                                      mla r1, r3, r1, ip
00567ef4  24 00 80 e2                                      add r0, r0, #0x24
00567ef8  01 00 50 e1                                      cmp r0, r1
00567efc  1e ff 2f 01                                      bxeq lr
00567f00  10 20 91 e5                                      ldr r2, [r1, #0x10]
00567f04  14 10 91 e5                                      ldr r1, [r1, #0x14]
00567f08  1e e3 f6 ea                                      b #0x320b88
00567f0c  0c 10 9f e5                                      ldr r1, [pc, #0xc]
00567f10  24 00 80 e2                                      add r0, r0, #0x24
00567f14  01 10 8f e0                                      add r1, pc, r1
00567f18  01 20 a0 e1                                      mov r2, r1
00567f1c  19 e3 f6 ea                                      b #0x320b88
; mapping-symbol data/literal pool
00567f20  f4 38 36 00                                      .byte 0xf4, 0x38, 0x36, 0x00
