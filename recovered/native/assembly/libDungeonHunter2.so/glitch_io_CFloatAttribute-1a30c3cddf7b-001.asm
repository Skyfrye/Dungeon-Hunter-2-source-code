; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d9d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttribute6getIntEv
; demangled: glitch::io::CFloatAttribute::getInt()
; decoder-mode: arm
0031d9d8  10 40 2d e9                                      push {r4, lr}
0031d9dc  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031d9e0  b9 c2 ff eb                                      bl #0x30e4cc
0031d9e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031d9e8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttribute8getFloatEv
; demangled: glitch::io::CFloatAttribute::getFloat()
; decoder-mode: arm
0031d9e8  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031d9ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031d9f0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttribute7getBoolEv
; demangled: glitch::io::CFloatAttribute::getBool()
; decoder-mode: arm
0031d9f0  10 40 2d e9                                      push {r4, lr}
0031d9f4  00 10 a0 e3                                      mov r1, #0
0031d9f8  24 00 90 e5                                      ldr r0, [r0, #0x24]
0031d9fc  62 c1 ff eb                                      bl #0x30df8c
0031da00  00 00 50 e3                                      cmp r0, #0
0031da04  00 00 a0 e3                                      mov r0, #0
0031da08  01 00 a0 03                                      moveq r0, #1
0031da0c  01 00 00 e2                                      and r0, r0, #1
0031da10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031da14, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttribute6setIntEi
; demangled: glitch::io::CFloatAttribute::setInt(int)
; decoder-mode: arm
0031da14  10 40 2d e9                                      push {r4, lr}
0031da18  00 40 a0 e1                                      mov r4, r0
0031da1c  01 00 a0 e1                                      mov r0, r1
0031da20  cf c3 ff eb                                      bl #0x30e964
0031da24  24 00 84 e5                                      str r0, [r4, #0x24]
0031da28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031da2c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttribute8setFloatEf
; demangled: glitch::io::CFloatAttribute::setFloat(float)
; decoder-mode: arm
0031da2c  24 10 80 e5                                      str r1, [r0, #0x24]
0031da30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031da34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZNK6glitch2io15CFloatAttribute7getTypeEv
; demangled: glitch::io::CFloatAttribute::getType() const
; decoder-mode: arm
0031da34  01 00 a0 e3                                      mov r0, #1
0031da38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031da3c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZNK6glitch2io15CFloatAttribute13getTypeStringEv
; demangled: glitch::io::CFloatAttribute::getTypeString() const
; decoder-mode: arm
0031da3c  04 00 9f e5                                      ldr r0, [pc, #4]
0031da40  00 00 8f e0                                      add r0, pc, r0
0031da44  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031da48  c8 0f 5a 00                                      .byte 0xc8, 0x0f, 0x5a, 0x00

; FUNCTION 0x00322d98, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttribute9setStringEPKc
; demangled: glitch::io::CFloatAttribute::setString(char const*)
; decoder-mode: arm
00322d98  10 40 2d e9                                      push {r4, lr}
00322d9c  08 d0 4d e2                                      sub sp, sp, #8
00322da0  00 40 a0 e1                                      mov r4, r0
00322da4  01 00 a0 e1                                      mov r0, r1
00322da8  04 10 8d e2                                      add r1, sp, #4
00322dac  85 ff ff eb                                      bl #0x322bc8
00322db0  04 30 9d e5                                      ldr r3, [sp, #4]
00322db4  24 30 84 e5                                      str r3, [r4, #0x24]
00322db8  08 d0 8d e2                                      add sp, sp, #8
00322dbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00326610, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttributeD1Ev
; demangled: glitch::io::CFloatAttribute::~CFloatAttribute()
; decoder-mode: arm
00326610  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00326614  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00326618  10 40 2d e9                                      push {r4, lr}
0032661c  03 30 8f e0                                      add r3, pc, r3
00326620  02 20 93 e7                                      ldr r2, [r3, r2]
00326624  00 10 a0 e1                                      mov r1, r0
00326628  00 40 a0 e1                                      mov r4, r0
0032662c  08 20 82 e2                                      add r2, r2, #8
00326630  08 20 81 e4                                      str r2, [r1], #8
00326634  14 00 91 e5                                      ldr r0, [r1, #0x14]
00326638  01 00 50 e1                                      cmp r0, r1
0032663c  02 00 00 0a                                      beq #0x32664c
00326640  00 00 50 e3                                      cmp r0, #0
00326644  00 00 00 0a                                      beq #0x32664c
00326648  80 a7 ff eb                                      bl #0x310450
0032664c  04 00 a0 e1                                      mov r0, r4
00326650  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326654  74 e4 66 00 44 2c 00 00                          .byte 0x74, 0xe4, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00327438, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttributeD0Ev
; demangled: glitch::io::CFloatAttribute::~CFloatAttribute()
; decoder-mode: arm
00327438  70 40 2d e9                                      push {r4, r5, r6, lr}
0032743c  50 40 9f e5                                      ldr r4, [pc, #0x50]
00327440  50 30 9f e5                                      ldr r3, [pc, #0x50]
00327444  00 20 a0 e1                                      mov r2, r0
00327448  04 40 8f e0                                      add r4, pc, r4
0032744c  03 30 94 e7                                      ldr r3, [r4, r3]
00327450  00 50 a0 e1                                      mov r5, r0
00327454  08 30 83 e2                                      add r3, r3, #8
00327458  08 30 82 e4                                      str r3, [r2], #8
0032745c  14 00 92 e5                                      ldr r0, [r2, #0x14]
00327460  02 00 50 e1                                      cmp r0, r2
00327464  02 00 00 0a                                      beq #0x327474
00327468  00 00 50 e3                                      cmp r0, #0
0032746c  00 00 00 0a                                      beq #0x327474
00327470  f6 a3 ff eb                                      bl #0x310450
00327474  20 30 9f e5                                      ldr r3, [pc, #0x20]
00327478  05 00 a0 e1                                      mov r0, r5
0032747c  03 30 94 e7                                      ldr r3, [r4, r3]
00327480  08 30 83 e2                                      add r3, r3, #8
00327484  00 30 85 e5                                      str r3, [r5]
00327488  ec a3 ff eb                                      bl #0x310440
0032748c  05 00 a0 e1                                      mov r0, r5
00327490  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00327494  48 d6 66 00 44 2c 00 00 44 2b 00 00              .byte 0x48, 0xd6, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0032d6fc, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttribute10getStringWEv
; demangled: glitch::io::CFloatAttribute::getStringW()
; decoder-mode: arm
0032d6fc  90 30 9f e5                                      ldr r3, [pc, #0x90]
0032d700  90 20 9f e5                                      ldr r2, [pc, #0x90]
0032d704  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032d708  03 30 8f e0                                      add r3, pc, r3
0032d70c  02 50 93 e7                                      ldr r5, [r3, r2]
0032d710  b0 d0 4d e2                                      sub sp, sp, #0xb0
0032d714  04 40 8d e2                                      add r4, sp, #4
0032d718  00 20 95 e5                                      ldr r2, [r5]
0032d71c  00 60 a0 e1                                      mov r6, r0
0032d720  01 80 a0 e1                                      mov r8, r1
0032d724  04 00 a0 e1                                      mov r0, r4
0032d728  ac 20 8d e5                                      str r2, [sp, #0xac]
0032d72c  8f fe ff eb                                      bl #0x32d170
0032d730  24 00 98 e5                                      ldr r0, [r8, #0x24]
0032d734  5a 84 ff eb                                      bl #0x30e8a4
0032d738  94 70 8d e2                                      add r7, sp, #0x94
0032d73c  00 20 a0 e1                                      mov r2, r0
0032d740  01 30 a0 e1                                      mov r3, r1
0032d744  04 00 a0 e1                                      mov r0, r4
0032d748  a2 87 ff eb                                      bl #0x30f5d8
0032d74c  28 10 84 e2                                      add r1, r4, #0x28
0032d750  07 00 a0 e1                                      mov r0, r7
0032d754  6f f8 ff eb                                      bl #0x32b918
0032d758  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0032d75c  06 00 a0 e1                                      mov r0, r6
0032d760  d8 e2 ff eb                                      bl #0x3262c8
0032d764  07 00 a0 e1                                      mov r0, r7
0032d768  8f 98 ff eb                                      bl #0x3139ac
0032d76c  04 00 a0 e1                                      mov r0, r4
0032d770  db d5 ff eb                                      bl #0x322ee4
0032d774  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0032d778  00 30 95 e5                                      ldr r3, [r5]
0032d77c  06 00 a0 e1                                      mov r0, r6
0032d780  03 00 52 e1                                      cmp r2, r3
0032d784  01 00 00 1a                                      bne #0x32d790
0032d788  b0 d0 8d e2                                      add sp, sp, #0xb0
0032d78c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032d790  de 82 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032d794  88 73 66 00 ac 40 00 00                          .byte 0x88, 0x73, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00567208, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CFloatAttribute
; alias: _ZN6glitch2io15CFloatAttributeC1EPKcfb
; demangled: glitch::io::CFloatAttribute::CFloatAttribute(char const*, float, bool)
; decoder-mode: arm
00567208  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056720c  84 60 9f e5                                      ldr r6, [pc, #0x84]
00567210  84 c0 9f e5                                      ldr ip, [pc, #0x84]
00567214  00 40 a0 e1                                      mov r4, r0
00567218  06 60 8f e0                                      add r6, pc, r6
0056721c  0c c0 96 e7                                      ldr ip, [r6, ip]
00567220  00 50 a0 e1                                      mov r5, r0
00567224  01 00 a0 e3                                      mov r0, #1
00567228  08 c0 8c e2                                      add ip, ip, #8
0056722c  04 00 84 e5                                      str r0, [r4, #4]
00567230  08 c0 85 e4                                      str ip, [r5], #8
00567234  01 70 a0 e1                                      mov r7, r1
00567238  05 00 a0 e1                                      mov r0, r5
0056723c  18 50 84 e5                                      str r5, [r4, #0x18]
00567240  1c 50 84 e5                                      str r5, [r4, #0x1c]
00567244  10 10 a0 e3                                      mov r1, #0x10
00567248  02 80 a0 e1                                      mov r8, r2
0056724c  03 a0 a0 e1                                      mov sl, r3
00567250  d4 e5 f6 eb                                      bl #0x3209a8
00567254  44 30 9f e5                                      ldr r3, [pc, #0x44]
00567258  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056725c  00 10 a0 e3                                      mov r1, #0
00567260  03 30 96 e7                                      ldr r3, [r6, r3]
00567264  00 10 c2 e5                                      strb r1, [r2]
00567268  07 00 a0 e1                                      mov r0, r7
0056726c  08 30 83 e2                                      add r3, r3, #8
00567270  00 30 84 e5                                      str r3, [r4]
00567274  20 a0 c4 e5                                      strb sl, [r4, #0x20]
00567278  f5 9a f6 eb                                      bl #0x30de54
0056727c  07 10 a0 e1                                      mov r1, r7
00567280  00 20 87 e0                                      add r2, r7, r0
00567284  05 00 a0 e1                                      mov r0, r5
00567288  3e e6 f6 eb                                      bl #0x320b88
0056728c  24 80 84 e5                                      str r8, [r4, #0x24]
00567290  04 00 a0 e1                                      mov r0, r4
00567294  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00567298  78 d8 42 00 44 2c 00 00 28 45 00 00              .byte 0x78, 0xd8, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x28, 0x45, 0x00, 0x00
