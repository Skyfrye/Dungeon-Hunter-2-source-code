; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00366594, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender16normalizeWeightsEv
; demangled: glitch::collada::CSceneNodeAnimatorBlender::normalizeWeights()
; decoder-mode: arm
00366594  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00366598  34 50 90 e5                                      ldr r5, [r0, #0x34]
0036659c  38 70 90 e5                                      ldr r7, [r0, #0x38]
003665a0  00 80 a0 e1                                      mov r8, r0
003665a4  07 70 65 e0                                      rsb r7, r5, r7
003665a8  47 71 b0 e1                                      asrs r7, r7, #2
003665ac  16 00 00 0a                                      beq #0x36660c
003665b0  00 60 a0 e3                                      mov r6, #0
003665b4  00 40 a0 e3                                      mov r4, #0
003665b8  06 00 a0 e1                                      mov r0, r6
003665bc  04 11 95 e7                                      ldr r1, [r5, r4, lsl #2]
003665c0  77 a1 fe eb                                      bl #0x30eba4
003665c4  01 40 84 e2                                      add r4, r4, #1
003665c8  07 00 54 e1                                      cmp r4, r7
003665cc  00 60 a0 e1                                      mov r6, r0
003665d0  f8 ff ff 1a                                      bne #0x3665b8
003665d4  00 10 a0 e3                                      mov r1, #0
003665d8  6b 9e fe eb                                      bl #0x30df8c
003665dc  00 00 50 e3                                      cmp r0, #0
003665e0  0a 00 00 1a                                      bne #0x366610
003665e4  00 40 a0 e3                                      mov r4, #0
003665e8  00 00 00 ea                                      b #0x3665f0
003665ec  34 50 98 e5                                      ldr r5, [r8, #0x34]
003665f0  04 01 95 e7                                      ldr r0, [r5, r4, lsl #2]
003665f4  06 10 a0 e1                                      mov r1, r6
003665f8  a5 a1 fe eb                                      bl #0x30ec94
003665fc  04 01 85 e7                                      str r0, [r5, r4, lsl #2]
00366600  01 40 84 e2                                      add r4, r4, #1
00366604  07 00 54 e1                                      cmp r4, r7
00366608  f7 ff ff 1a                                      bne #0x3665ec
0036660c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00366610  00 00 54 e3                                      cmp r4, #0
00366614  fe 35 a0 13                                      movne r3, #0x3f800000
00366618  00 30 85 15                                      strne r3, [r5]
0036661c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00366f7c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlenderC2Ev
; demangled: glitch::collada::CSceneNodeAnimatorBlender::CSceneNodeAnimatorBlender()
; decoder-mode: arm
00366f7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00366f80  01 60 a0 e1                                      mov r6, r1
00366f84  84 50 9f e5                                      ldr r5, [pc, #0x84]
00366f88  04 10 81 e2                                      add r1, r1, #4
00366f8c  00 40 a0 e1                                      mov r4, r0
00366f90  59 0a 0c eb                                      bl #0x6698fc
00366f94  00 20 96 e5                                      ldr r2, [r6]
00366f98  74 30 9f e5                                      ldr r3, [pc, #0x74]
00366f9c  05 50 8f e0                                      add r5, pc, r5
00366fa0  00 20 84 e5                                      str r2, [r4]
00366fa4  03 30 95 e7                                      ldr r3, [r5, r3]
00366fa8  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
00366fac  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
00366fb0  a0 20 83 e2                                      add r2, r3, #0xa0
00366fb4  00 30 a0 e3                                      mov r3, #0
00366fb8  01 00 84 e7                                      str r0, [r4, r1]
00366fbc  04 20 84 e5                                      str r2, [r4, #4]
00366fc0  6c 30 84 e5                                      str r3, [r4, #0x6c]
00366fc4  28 30 84 e5                                      str r3, [r4, #0x28]
00366fc8  2c 30 84 e5                                      str r3, [r4, #0x2c]
00366fcc  30 30 84 e5                                      str r3, [r4, #0x30]
00366fd0  34 30 84 e5                                      str r3, [r4, #0x34]
00366fd4  38 30 84 e5                                      str r3, [r4, #0x38]
00366fd8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00366fdc  40 30 84 e5                                      str r3, [r4, #0x40]
00366fe0  44 30 84 e5                                      str r3, [r4, #0x44]
00366fe4  48 30 84 e5                                      str r3, [r4, #0x48]
00366fe8  4c 30 84 e5                                      str r3, [r4, #0x4c]
00366fec  50 30 84 e5                                      str r3, [r4, #0x50]
00366ff0  54 30 84 e5                                      str r3, [r4, #0x54]
00366ff4  58 30 84 e5                                      str r3, [r4, #0x58]
00366ff8  5c 30 84 e5                                      str r3, [r4, #0x5c]
00366ffc  60 30 84 e5                                      str r3, [r4, #0x60]
00367000  64 30 84 e5                                      str r3, [r4, #0x64]
00367004  68 30 84 e5                                      str r3, [r4, #0x68]
00367008  04 00 a0 e1                                      mov r0, r4
0036700c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00367010  f4 da 62 00 4c 44 00 00                          .byte 0xf4, 0xda, 0x62, 0x00, 0x4c, 0x44, 0x00, 0x00

; FUNCTION 0x0065e204, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender17getAnimationTrackEi
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getAnimationTrack(int)
; decoder-mode: arm
0065e204  10 40 2d e9                                      push {r4, lr}
0065e208  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e20c  00 30 93 e5                                      ldr r3, [r3]
0065e210  03 00 a0 e1                                      mov r0, r3
0065e214  00 30 93 e5                                      ldr r3, [r3]
0065e218  0f e0 a0 e1                                      mov lr, pc
0065e21c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0065e220  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e224, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender19getAnimationTrackExEi
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getAnimationTrackEx(int)
; decoder-mode: arm
0065e224  10 40 2d e9                                      push {r4, lr}
0065e228  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e22c  00 30 93 e5                                      ldr r3, [r3]
0065e230  03 00 a0 e1                                      mov r0, r3
0065e234  00 30 93 e5                                      ldr r3, [r3]
0065e238  0f e0 a0 e1                                      mov lr, pc
0065e23c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0065e240  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e244, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::CSceneNodeAnimatorBlender::setTarget(int, void*, glitch::collada::animation_track::CApplicatorInfo const*)
; decoder-mode: arm
0065e244  70 40 2d e9                                      push {r4, r5, r6, lr}
0065e248  58 c0 90 e5                                      ldr ip, [r0, #0x58]
0065e24c  03 60 a0 e1                                      mov r6, r3
0065e250  00 40 a0 e1                                      mov r4, r0
0065e254  01 21 8c e7                                      str r2, [ip, r1, lsl #2]
0065e258  64 30 90 e5                                      ldr r3, [r0, #0x64]
0065e25c  01 50 a0 e1                                      mov r5, r1
0065e260  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0065e264  00 00 53 e3                                      cmp r3, #0
0065e268  06 00 00 0a                                      beq #0x65e288
0065e26c  03 00 a0 e1                                      mov r0, r3
0065e270  00 30 93 e5                                      ldr r3, [r3]
0065e274  0f e0 a0 e1                                      mov lr, pc
0065e278  04 f0 93 e5                                      ldr pc, [r3, #4]
0065e27c  64 30 94 e5                                      ldr r3, [r4, #0x64]
0065e280  00 20 a0 e3                                      mov r2, #0
0065e284  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
0065e288  00 00 56 e3                                      cmp r6, #0
0065e28c  05 00 00 0a                                      beq #0x65e2a8
0065e290  06 00 a0 e1                                      mov r0, r6
0065e294  00 30 96 e5                                      ldr r3, [r6]
0065e298  64 40 94 e5                                      ldr r4, [r4, #0x64]
0065e29c  0f e0 a0 e1                                      mov lr, pc
0065e2a0  08 f0 93 e5                                      ldr pc, [r3, #8]
0065e2a4  05 01 84 e7                                      str r0, [r4, r5, lsl #2]
0065e2a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065e2ac, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender10getBindURIEi
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getBindURI(int)
; decoder-mode: arm
0065e2ac  10 40 2d e9                                      push {r4, lr}
0065e2b0  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e2b4  00 30 93 e5                                      ldr r3, [r3]
0065e2b8  03 00 a0 e1                                      mov r0, r3
0065e2bc  00 30 93 e5                                      ldr r3, [r3]
0065e2c0  0f e0 a0 e1                                      mov lr, pc
0065e2c4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0065e2c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e2cc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender14getTargetCountEv
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getTargetCount()
; decoder-mode: arm
0065e2cc  10 40 2d e9                                      push {r4, lr}
0065e2d0  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e2d4  00 30 93 e5                                      ldr r3, [r3]
0065e2d8  03 00 a0 e1                                      mov r0, r3
0065e2dc  00 30 93 e5                                      ldr r3, [r3]
0065e2e0  0f e0 a0 e1                                      mov lr, pc
0065e2e4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0065e2e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e2ec, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender13getTargetSizeEi
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getTargetSize(int)
; decoder-mode: arm
0065e2ec  10 40 2d e9                                      push {r4, lr}
0065e2f0  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e2f4  00 30 93 e5                                      ldr r3, [r3]
0065e2f8  03 00 a0 e1                                      mov r0, r3
0065e2fc  00 30 93 e5                                      ldr r3, [r3]
0065e300  0f e0 a0 e1                                      mov lr, pc
0065e304  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0065e308  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e30c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender14getTargetsSizeEv
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getTargetsSize()
; decoder-mode: arm
0065e30c  10 40 2d e9                                      push {r4, lr}
0065e310  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e314  00 30 93 e5                                      ldr r3, [r3]
0065e318  03 00 a0 e1                                      mov r0, r3
0065e31c  00 30 93 e5                                      ldr r3, [r3]
0065e320  0f e0 a0 e1                                      mov lr, pc
0065e324  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0065e328  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e32c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZNK6glitch7collada25CSceneNodeAnimatorBlender9getLengthEv
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getLength() const
; decoder-mode: arm
0065e32c  10 40 2d e9                                      push {r4, lr}
0065e330  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e334  00 30 93 e5                                      ldr r3, [r3]
0065e338  03 00 a0 e1                                      mov r0, r3
0065e33c  00 30 93 e5                                      ldr r3, [r3]
0065e340  0f e0 a0 e1                                      mov lr, pc
0065e344  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0065e348  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e34c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender17getAnimationValueEiiPv
; demangled: glitch::collada::CSceneNodeAnimatorBlender::getAnimationValue(int, int, void*)
; decoder-mode: arm
0065e34c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065e350, declared_size=316, range_size=316, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender20applyAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimatorBlender::applyAnimationValues(unsigned int)
; decoder-mode: arm
0065e350  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065e354  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
0065e358  28 30 90 e5                                      ldr r3, [r0, #0x28]
0065e35c  0c d0 4d e2                                      sub sp, sp, #0xc
0065e360  00 40 a0 e1                                      mov r4, r0
0065e364  06 60 63 e0                                      rsb r6, r3, r6
0065e368  46 61 b0 e1                                      asrs r6, r6, #2
0065e36c  01 70 a0 e1                                      mov r7, r1
0065e370  14 00 00 0a                                      beq #0x65e3c8
0065e374  00 50 a0 e3                                      mov r5, #0
0065e378  02 00 00 ea                                      b #0x65e388
0065e37c  01 50 85 e2                                      add r5, r5, #1
0065e380  06 00 55 e1                                      cmp r5, r6
0065e384  0f 00 00 0a                                      beq #0x65e3c8
0065e388  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065e38c  00 10 a0 e3                                      mov r1, #0
0065e390  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0065e394  fc be f2 eb                                      bl #0x30df8c
0065e398  00 00 50 e3                                      cmp r0, #0
0065e39c  f6 ff ff 1a                                      bne #0x65e37c
0065e3a0  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065e3a4  07 10 a0 e1                                      mov r1, r7
0065e3a8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0065e3ac  01 50 85 e2                                      add r5, r5, #1
0065e3b0  03 00 a0 e1                                      mov r0, r3
0065e3b4  00 30 93 e5                                      ldr r3, [r3]
0065e3b8  0f e0 a0 e1                                      mov lr, pc
0065e3bc  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0065e3c0  06 00 55 e1                                      cmp r5, r6
0065e3c4  ef ff ff 1a                                      bne #0x65e388
0065e3c8  04 00 a0 e1                                      mov r0, r4
0065e3cc  70 20 f4 eb                                      bl #0x366594
0065e3d0  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0065e3d4  58 30 94 e5                                      ldr r3, [r4, #0x58]
0065e3d8  02 30 63 e0                                      rsb r3, r3, r2
0065e3dc  23 31 b0 e1                                      lsrs r3, r3, #2
0065e3e0  27 00 00 0a                                      beq #0x65e484
0065e3e4  00 50 a0 e3                                      mov r5, #0
0065e3e8  05 10 a0 e1                                      mov r1, r5
0065e3ec  00 30 94 e5                                      ldr r3, [r4]
0065e3f0  04 00 a0 e1                                      mov r0, r4
0065e3f4  0f e0 a0 e1                                      mov lr, pc
0065e3f8  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0065e3fc  00 00 50 e3                                      cmp r0, #0
0065e400  19 00 00 0a                                      beq #0x65e46c
0065e404  58 30 94 e5                                      ldr r3, [r4, #0x58]
0065e408  05 10 a0 e1                                      mov r1, r5
0065e40c  05 21 93 e7                                      ldr r2, [r3, r5, lsl #2]
0065e410  00 00 52 e3                                      cmp r2, #0
0065e414  15 00 00 0a                                      beq #0x65e470
0065e418  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065e41c  00 30 93 e5                                      ldr r3, [r3]
0065e420  03 00 a0 e1                                      mov r0, r3
0065e424  00 30 93 e5                                      ldr r3, [r3]
0065e428  0f e0 a0 e1                                      mov lr, pc
0065e42c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0065e430  58 30 94 e5                                      ldr r3, [r4, #0x58]
0065e434  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0065e438  64 e0 94 e5                                      ldr lr, [r4, #0x64]
0065e43c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0065e440  05 11 92 e7                                      ldr r1, [r2, r5, lsl #2]
0065e444  00 c0 90 e5                                      ldr ip, [r0]
0065e448  34 20 94 e5                                      ldr r2, [r4, #0x34]
0065e44c  00 30 8d e5                                      str r3, [sp]
0065e450  38 30 94 e5                                      ldr r3, [r4, #0x38]
0065e454  05 e1 9e e7                                      ldr lr, [lr, r5, lsl #2]
0065e458  03 30 62 e0                                      rsb r3, r2, r3
0065e45c  04 e0 8d e5                                      str lr, [sp, #4]
0065e460  43 31 a0 e1                                      asr r3, r3, #2
0065e464  0f e0 a0 e1                                      mov lr, pc
0065e468  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0065e46c  58 30 94 e5                                      ldr r3, [r4, #0x58]
0065e470  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0065e474  01 50 85 e2                                      add r5, r5, #1
0065e478  02 30 63 e0                                      rsb r3, r3, r2
0065e47c  43 01 55 e1                                      cmp r5, r3, asr #2
0065e480  d8 ff ff 3a                                      blo #0x65e3e8
0065e484  0c d0 8d e2                                      add sp, sp, #0xc
0065e488  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0065e48c, declared_size=316, range_size=316, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender22computeAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimatorBlender::computeAnimationValues(unsigned int)
; decoder-mode: arm
0065e48c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065e490  28 60 90 e5                                      ldr r6, [r0, #0x28]
0065e494  2c 70 90 e5                                      ldr r7, [r0, #0x2c]
0065e498  08 d0 4d e2                                      sub sp, sp, #8
0065e49c  00 40 a0 e1                                      mov r4, r0
0065e4a0  07 30 66 e0                                      rsb r3, r6, r7
0065e4a4  23 31 b0 e1                                      lsrs r3, r3, #2
0065e4a8  01 80 a0 e1                                      mov r8, r1
0065e4ac  17 00 00 0a                                      beq #0x65e510
0065e4b0  00 50 a0 e3                                      mov r5, #0
0065e4b4  03 00 00 ea                                      b #0x65e4c8
0065e4b8  01 50 85 e2                                      add r5, r5, #1
0065e4bc  07 30 66 e0                                      rsb r3, r6, r7
0065e4c0  43 01 55 e1                                      cmp r5, r3, asr #2
0065e4c4  11 00 00 2a                                      bhs #0x65e510
0065e4c8  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065e4cc  00 10 a0 e3                                      mov r1, #0
0065e4d0  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0065e4d4  ac be f2 eb                                      bl #0x30df8c
0065e4d8  00 00 50 e3                                      cmp r0, #0
0065e4dc  f5 ff ff 1a                                      bne #0x65e4b8
0065e4e0  05 31 96 e7                                      ldr r3, [r6, r5, lsl #2]
0065e4e4  08 10 a0 e1                                      mov r1, r8
0065e4e8  01 50 85 e2                                      add r5, r5, #1
0065e4ec  03 00 a0 e1                                      mov r0, r3
0065e4f0  00 30 93 e5                                      ldr r3, [r3]
0065e4f4  0f e0 a0 e1                                      mov lr, pc
0065e4f8  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0065e4fc  28 60 94 e5                                      ldr r6, [r4, #0x28]
0065e500  2c 70 94 e5                                      ldr r7, [r4, #0x2c]
0065e504  07 30 66 e0                                      rsb r3, r6, r7
0065e508  43 01 55 e1                                      cmp r5, r3, asr #2
0065e50c  ed ff ff 3a                                      blo #0x65e4c8
0065e510  04 00 a0 e1                                      mov r0, r4
0065e514  1e 20 f4 eb                                      bl #0x366594
0065e518  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0065e51c  58 30 94 e5                                      ldr r3, [r4, #0x58]
0065e520  02 30 63 e0                                      rsb r3, r3, r2
0065e524  23 31 b0 e1                                      lsrs r3, r3, #2
0065e528  24 00 00 0a                                      beq #0x65e5c0
0065e52c  00 50 a0 e3                                      mov r5, #0
0065e530  05 10 a0 e1                                      mov r1, r5
0065e534  00 30 94 e5                                      ldr r3, [r4]
0065e538  04 00 a0 e1                                      mov r0, r4
0065e53c  0f e0 a0 e1                                      mov lr, pc
0065e540  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0065e544  00 00 50 e3                                      cmp r0, #0
0065e548  16 00 00 0a                                      beq #0x65e5a8
0065e54c  58 30 94 e5                                      ldr r3, [r4, #0x58]
0065e550  05 10 a0 e1                                      mov r1, r5
0065e554  05 21 93 e7                                      ldr r2, [r3, r5, lsl #2]
0065e558  00 00 52 e3                                      cmp r2, #0
0065e55c  12 00 00 0a                                      beq #0x65e5ac
0065e560  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065e564  00 30 93 e5                                      ldr r3, [r3]
0065e568  03 00 a0 e1                                      mov r0, r3
0065e56c  00 30 93 e5                                      ldr r3, [r3]
0065e570  0f e0 a0 e1                                      mov lr, pc
0065e574  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0065e578  58 c0 94 e5                                      ldr ip, [r4, #0x58]
0065e57c  34 20 94 e5                                      ldr r2, [r4, #0x34]
0065e580  38 30 94 e5                                      ldr r3, [r4, #0x38]
0065e584  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0065e588  05 e1 9c e7                                      ldr lr, [ip, r5, lsl #2]
0065e58c  03 30 62 e0                                      rsb r3, r2, r3
0065e590  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0065e594  00 c0 90 e5                                      ldr ip, [r0]
0065e598  43 31 a0 e1                                      asr r3, r3, #2
0065e59c  00 e0 8d e5                                      str lr, [sp]
0065e5a0  0f e0 a0 e1                                      mov lr, pc
0065e5a4  10 f0 9c e5                                      ldr pc, [ip, #0x10]
0065e5a8  58 30 94 e5                                      ldr r3, [r4, #0x58]
0065e5ac  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0065e5b0  01 50 85 e2                                      add r5, r5, #1
0065e5b4  02 30 63 e0                                      rsb r3, r3, r2
0065e5b8  43 01 55 e1                                      cmp r5, r3, asr #2
0065e5bc  db ff ff 3a                                      blo #0x65e530
0065e5c0  08 d0 8d e2                                      add sp, sp, #8
0065e5c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065e5c8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender11animateNodeEPNS_5scene10ISceneNodeEj
; demangled: glitch::collada::CSceneNodeAnimatorBlender::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
0065e5c8  10 40 2d e9                                      push {r4, lr}
0065e5cc  02 10 a0 e1                                      mov r1, r2
0065e5d0  00 30 90 e5                                      ldr r3, [r0]
0065e5d4  0f e0 a0 e1                                      mov lr, pc
0065e5d8  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0065e5dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065e950, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZThn4_N6glitch7collada25CSceneNodeAnimatorBlenderD1Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender()
; decoder-mode: arm
0065e950  04 00 40 e2                                      sub r0, r0, #4
0065e954  ff ff ff ea                                      b #0x65e958

; FUNCTION 0x0065e958, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlenderD1Ev
; demangled: glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender()
; decoder-mode: arm
0065e958  70 40 2d e9                                      push {r4, r5, r6, lr}
0065e95c  e4 60 9f e5                                      ldr r6, [pc, #0xe4]
0065e960  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
0065e964  28 20 90 e5                                      ldr r2, [r0, #0x28]
0065e968  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
0065e96c  06 60 8f e0                                      add r6, pc, r6
0065e970  03 30 96 e7                                      ldr r3, [r6, r3]
0065e974  01 10 62 e0                                      rsb r1, r2, r1
0065e978  00 40 a0 e1                                      mov r4, r0
0065e97c  21 11 b0 e1                                      lsrs r1, r1, #2
0065e980  0c 00 83 e2                                      add r0, r3, #0xc
0065e984  a0 10 83 e2                                      add r1, r3, #0xa0
0065e988  bc 30 83 e2                                      add r3, r3, #0xbc
0065e98c  00 00 84 e5                                      str r0, [r4]
0065e990  70 30 84 e5                                      str r3, [r4, #0x70]
0065e994  04 10 84 e5                                      str r1, [r4, #4]
0065e998  0b 00 00 0a                                      beq #0x65e9cc
0065e99c  00 50 a0 e3                                      mov r5, #0
0065e9a0  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
0065e9a4  01 50 85 e2                                      add r5, r5, #1
0065e9a8  00 20 93 e5                                      ldr r2, [r3]
0065e9ac  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0065e9b0  00 00 83 e0                                      add r0, r3, r0
0065e9b4  f2 fa f2 eb                                      bl #0x31d584
0065e9b8  28 20 94 e5                                      ldr r2, [r4, #0x28]
0065e9bc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0065e9c0  03 30 62 e0                                      rsb r3, r2, r3
0065e9c4  43 01 55 e1                                      cmp r5, r3, asr #2
0065e9c8  f4 ff ff 3a                                      blo #0x65e9a0
0065e9cc  64 00 94 e5                                      ldr r0, [r4, #0x64]
0065e9d0  00 00 50 e3                                      cmp r0, #0
0065e9d4  00 00 00 0a                                      beq #0x65e9dc
0065e9d8  9c c6 f2 eb                                      bl #0x310450
0065e9dc  58 00 94 e5                                      ldr r0, [r4, #0x58]
0065e9e0  00 00 50 e3                                      cmp r0, #0
0065e9e4  00 00 00 0a                                      beq #0x65e9ec
0065e9e8  98 c6 f2 eb                                      bl #0x310450
0065e9ec  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0065e9f0  00 00 50 e3                                      cmp r0, #0
0065e9f4  00 00 00 0a                                      beq #0x65e9fc
0065e9f8  94 c6 f2 eb                                      bl #0x310450
0065e9fc  40 00 94 e5                                      ldr r0, [r4, #0x40]
0065ea00  00 00 50 e3                                      cmp r0, #0
0065ea04  00 00 00 0a                                      beq #0x65ea0c
0065ea08  90 c6 f2 eb                                      bl #0x310450
0065ea0c  34 00 94 e5                                      ldr r0, [r4, #0x34]
0065ea10  00 00 50 e3                                      cmp r0, #0
0065ea14  00 00 00 0a                                      beq #0x65ea1c
0065ea18  8c c6 f2 eb                                      bl #0x310450
0065ea1c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0065ea20  00 00 50 e3                                      cmp r0, #0
0065ea24  00 00 00 0a                                      beq #0x65ea2c
0065ea28  88 c6 f2 eb                                      bl #0x310450
0065ea2c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0065ea30  04 00 a0 e1                                      mov r0, r4
0065ea34  01 10 96 e7                                      ldr r1, [r6, r1]
0065ea38  04 10 81 e2                                      add r1, r1, #4
0065ea3c  60 2b 00 eb                                      bl #0x6697c4
0065ea40  04 00 a0 e1                                      mov r0, r4
0065ea44  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0065ea48  24 61 33 00 4c 44 00 00 28 37 00 00              .byte 0x24, 0x61, 0x33, 0x00, 0x4c, 0x44, 0x00, 0x00, 0x28, 0x37, 0x00, 0x00

; FUNCTION 0x0065ea54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZThn4_N6glitch7collada25CSceneNodeAnimatorBlenderD0Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender()
; decoder-mode: arm
0065ea54  04 00 40 e2                                      sub r0, r0, #4
0065ea58  ff ff ff ea                                      b #0x65ea5c

; FUNCTION 0x0065ea5c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlenderD0Ev
; demangled: glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender()
; decoder-mode: arm
0065ea5c  10 40 2d e9                                      push {r4, lr}
0065ea60  00 40 a0 e1                                      mov r4, r0
0065ea64  bb ff ff eb                                      bl #0x65e958
0065ea68  04 00 a0 e1                                      mov r0, r4
0065ea6c  0f be f2 eb                                      bl #0x30e2b0
0065ea70  04 00 a0 e1                                      mov r0, r4
0065ea74  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065ea78, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlenderD2Ev
; demangled: glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender()
; decoder-mode: arm
0065ea78  70 40 2d e9                                      push {r4, r5, r6, lr}
0065ea7c  00 30 91 e5                                      ldr r3, [r1]
0065ea80  00 40 a0 e1                                      mov r4, r0
0065ea84  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0065ea88  00 30 80 e5                                      str r3, [r0]
0065ea8c  1c 00 91 e5                                      ldr r0, [r1, #0x1c]
0065ea90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065ea94  01 60 a0 e1                                      mov r6, r1
0065ea98  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0065ea9c  03 00 84 e7                                      str r0, [r4, r3]
0065eaa0  02 20 8f e0                                      add r2, pc, r2
0065eaa4  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065eaa8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0065eaac  01 10 92 e7                                      ldr r1, [r2, r1]
0065eab0  00 20 63 e0                                      rsb r2, r3, r0
0065eab4  a0 10 81 e2                                      add r1, r1, #0xa0
0065eab8  22 21 b0 e1                                      lsrs r2, r2, #2
0065eabc  04 10 84 e5                                      str r1, [r4, #4]
0065eac0  0b 00 00 0a                                      beq #0x65eaf4
0065eac4  00 50 a0 e3                                      mov r5, #0
0065eac8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0065eacc  01 50 85 e2                                      add r5, r5, #1
0065ead0  00 20 93 e5                                      ldr r2, [r3]
0065ead4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0065ead8  00 00 83 e0                                      add r0, r3, r0
0065eadc  a8 fa f2 eb                                      bl #0x31d584
0065eae0  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065eae4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0065eae8  02 20 63 e0                                      rsb r2, r3, r2
0065eaec  42 01 55 e1                                      cmp r5, r2, asr #2
0065eaf0  f4 ff ff 3a                                      blo #0x65eac8
0065eaf4  64 00 94 e5                                      ldr r0, [r4, #0x64]
0065eaf8  00 00 50 e3                                      cmp r0, #0
0065eafc  00 00 00 0a                                      beq #0x65eb04
0065eb00  52 c6 f2 eb                                      bl #0x310450
0065eb04  58 00 94 e5                                      ldr r0, [r4, #0x58]
0065eb08  00 00 50 e3                                      cmp r0, #0
0065eb0c  00 00 00 0a                                      beq #0x65eb14
0065eb10  4e c6 f2 eb                                      bl #0x310450
0065eb14  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0065eb18  00 00 50 e3                                      cmp r0, #0
0065eb1c  00 00 00 0a                                      beq #0x65eb24
0065eb20  4a c6 f2 eb                                      bl #0x310450
0065eb24  40 00 94 e5                                      ldr r0, [r4, #0x40]
0065eb28  00 00 50 e3                                      cmp r0, #0
0065eb2c  00 00 00 0a                                      beq #0x65eb34
0065eb30  46 c6 f2 eb                                      bl #0x310450
0065eb34  34 00 94 e5                                      ldr r0, [r4, #0x34]
0065eb38  00 00 50 e3                                      cmp r0, #0
0065eb3c  00 00 00 0a                                      beq #0x65eb44
0065eb40  42 c6 f2 eb                                      bl #0x310450
0065eb44  28 00 94 e5                                      ldr r0, [r4, #0x28]
0065eb48  00 00 50 e3                                      cmp r0, #0
0065eb4c  00 00 00 0a                                      beq #0x65eb54
0065eb50  3e c6 f2 eb                                      bl #0x310450
0065eb54  04 10 86 e2                                      add r1, r6, #4
0065eb58  04 00 a0 e1                                      mov r0, r4
0065eb5c  18 2b 00 eb                                      bl #0x6697c4
0065eb60  04 00 a0 e1                                      mov r0, r4
0065eb64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0065eb68  f0 5f 33 00 4c 44 00 00                          .byte 0xf0, 0x5f, 0x33, 0x00, 0x4c, 0x44, 0x00, 0x00

; FUNCTION 0x0065ed98, declared_size=588, range_size=588, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZN6glitch7collada25CSceneNodeAnimatorBlender7compileEPSt6vectorIhNS_4core10SAllocatorIhLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::collada::CSceneNodeAnimatorBlender::compile(std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >*)
; decoder-mode: arm
0065ed98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065ed9c  2c d0 4d e2                                      sub sp, sp, #0x2c
0065eda0  00 30 90 e5                                      ldr r3, [r0]
0065eda4  08 10 8d e5                                      str r1, [sp, #8]
0065eda8  00 40 a0 e1                                      mov r4, r0
0065edac  0f e0 a0 e1                                      mov lr, pc
0065edb0  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0065edb4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0065edb8  28 20 94 e5                                      ldr r2, [r4, #0x28]
0065edbc  00 30 94 e5                                      ldr r3, [r4]
0065edc0  00 50 a0 e1                                      mov r5, r0
0065edc4  01 20 62 e0                                      rsb r2, r2, r1
0065edc8  42 21 a0 e1                                      asr r2, r2, #2
0065edcc  04 00 a0 e1                                      mov r0, r4
0065edd0  0c 20 8d e5                                      str r2, [sp, #0xc]
0065edd4  0f e0 a0 e1                                      mov lr, pc
0065edd8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0065eddc  08 10 9d e5                                      ldr r1, [sp, #8]
0065ede0  04 00 8d e5                                      str r0, [sp, #4]
0065ede4  00 00 51 e3                                      cmp r1, #0
0065ede8  73 00 00 0a                                      beq #0x65efbc
0065edec  28 20 8d e2                                      add r2, sp, #0x28
0065edf0  00 50 a0 e3                                      mov r5, #0
0065edf4  08 50 22 e5                                      str r5, [r2, #-8]!
0065edf8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065edfc  34 00 84 e2                                      add r0, r4, #0x34
0065ee00  56 27 f4 eb                                      bl #0x368b60
0065ee04  34 20 94 e5                                      ldr r2, [r4, #0x34]
0065ee08  38 10 94 e5                                      ldr r1, [r4, #0x38]
0065ee0c  01 10 62 e0                                      rsb r1, r2, r1
0065ee10  41 11 b0 e1                                      asrs r1, r1, #2
0065ee14  06 00 00 0a                                      beq #0x65ee34
0065ee18  00 30 a0 e3                                      mov r3, #0
0065ee1c  00 00 00 ea                                      b #0x65ee24
0065ee20  34 20 94 e5                                      ldr r2, [r4, #0x34]
0065ee24  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
0065ee28  01 30 83 e2                                      add r3, r3, #1
0065ee2c  01 00 53 e1                                      cmp r3, r1
0065ee30  fa ff ff 1a                                      bne #0x65ee20
0065ee34  28 20 8d e2                                      add r2, sp, #0x28
0065ee38  00 50 a0 e3                                      mov r5, #0
0065ee3c  0c 50 22 e5                                      str r5, [r2, #-0xc]!
0065ee40  4c 00 84 e2                                      add r0, r4, #0x4c
0065ee44  04 10 9d e5                                      ldr r1, [sp, #4]
0065ee48  7c ff ff eb                                      bl #0x65ec40
0065ee4c  08 10 9d e5                                      ldr r1, [sp, #8]
0065ee50  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065ee54  05 00 91 e8                                      ldm r1, {r0, r2}
0065ee58  00 b0 93 e5                                      ldr fp, [r3]
0065ee5c  00 00 52 e1                                      cmp r2, r0
0065ee60  02 00 00 0a                                      beq #0x65ee70
0065ee64  05 10 a0 e1                                      mov r1, r5
0065ee68  02 20 60 e0                                      rsb r2, r0, r2
0065ee6c  7b bd f2 eb                                      bl #0x30e460
0065ee70  04 20 9d e5                                      ldr r2, [sp, #4]
0065ee74  00 00 52 e3                                      cmp r2, #0
0065ee78  3a 00 00 da                                      ble #0x65ef68
0065ee7c  00 90 a0 e3                                      mov sb, #0
0065ee80  00 90 8d e5                                      str sb, [sp]
0065ee84  09 10 a0 e1                                      mov r1, sb
0065ee88  00 30 94 e5                                      ldr r3, [r4]
0065ee8c  04 00 a0 e1                                      mov r0, r4
0065ee90  0f e0 a0 e1                                      mov lr, pc
0065ee94  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0065ee98  08 30 9d e5                                      ldr r3, [sp, #8]
0065ee9c  00 10 9d e5                                      ldr r1, [sp]
0065eea0  00 50 a0 e1                                      mov r5, r0
0065eea4  00 20 93 e5                                      ldr r2, [r3]
0065eea8  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0065eeac  0b 00 a0 e1                                      mov r0, fp
0065eeb0  01 20 82 e0                                      add r2, r2, r1
0065eeb4  09 21 83 e7                                      str r2, [r3, sb, lsl #2]
0065eeb8  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0065eebc  09 10 a0 e1                                      mov r1, sb
0065eec0  00 30 a0 e3                                      mov r3, #0
0065eec4  09 71 92 e7                                      ldr r7, [r2, sb, lsl #2]
0065eec8  00 c0 9b e5                                      ldr ip, [fp]
0065eecc  07 20 a0 e1                                      mov r2, r7
0065eed0  0f e0 a0 e1                                      mov lr, pc
0065eed4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0065eed8  00 30 9b e5                                      ldr r3, [fp]
0065eedc  0b 00 a0 e1                                      mov r0, fp
0065eee0  09 10 a0 e1                                      mov r1, sb
0065eee4  0f e0 a0 e1                                      mov lr, pc
0065eee8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0065eeec  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065eef0  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
0065eef4  00 a0 a0 e1                                      mov sl, r0
0065eef8  08 80 63 e0                                      rsb r8, r3, r8
0065eefc  48 81 a0 e1                                      asr r8, r8, #2
0065ef00  01 00 58 e3                                      cmp r8, #1
0065ef04  0e 00 00 9a                                      bls #0x65ef44
0065ef08  05 70 87 e0                                      add r7, r7, r5
0065ef0c  01 60 a0 e3                                      mov r6, #1
0065ef10  00 00 00 ea                                      b #0x65ef18
0065ef14  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065ef18  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0065ef1c  07 20 a0 e1                                      mov r2, r7
0065ef20  01 60 86 e2                                      add r6, r6, #1
0065ef24  03 00 a0 e1                                      mov r0, r3
0065ef28  0a 10 a0 e1                                      mov r1, sl
0065ef2c  00 30 93 e5                                      ldr r3, [r3]
0065ef30  0f e0 a0 e1                                      mov lr, pc
0065ef34  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0065ef38  08 00 56 e1                                      cmp r6, r8
0065ef3c  05 70 87 e0                                      add r7, r7, r5
0065ef40  f3 ff ff 1a                                      bne #0x65ef14
0065ef44  04 20 9d e5                                      ldr r2, [sp, #4]
0065ef48  01 90 89 e2                                      add sb, sb, #1
0065ef4c  02 00 59 e1                                      cmp sb, r2
0065ef50  04 00 00 0a                                      beq #0x65ef68
0065ef54  00 10 9d e5                                      ldr r1, [sp]
0065ef58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0065ef5c  93 15 21 e0                                      mla r1, r3, r5, r1
0065ef60  00 10 8d e5                                      str r1, [sp]
0065ef64  c6 ff ff ea                                      b #0x65ee84
0065ef68  00 50 a0 e3                                      mov r5, #0
0065ef6c  28 20 8d e2                                      add r2, sp, #0x28
0065ef70  10 50 22 e5                                      str r5, [r2, #-0x10]!
0065ef74  58 00 84 e2                                      add r0, r4, #0x58
0065ef78  04 10 9d e5                                      ldr r1, [sp, #4]
0065ef7c  2f ff ff eb                                      bl #0x65ec40
0065ef80  28 20 8d e2                                      add r2, sp, #0x28
0065ef84  14 50 22 e5                                      str r5, [r2, #-0x14]!
0065ef88  04 10 9d e5                                      ldr r1, [sp, #4]
0065ef8c  64 00 84 e2                                      add r0, r4, #0x64
0065ef90  6f ff ff eb                                      bl #0x65ed54
0065ef94  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0065ef98  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065ef9c  24 50 c4 e5                                      strb r5, [r4, #0x24]
0065efa0  02 30 63 e0                                      rsb r3, r3, r2
0065efa4  23 31 b0 e1                                      lsrs r3, r3, #2
0065efa8  01 00 00 0a                                      beq #0x65efb4
0065efac  04 00 a0 e1                                      mov r0, r4
0065efb0  d8 23 00 eb                                      bl #0x667f18
0065efb4  2c d0 8d e2                                      add sp, sp, #0x2c
0065efb8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065efbc  28 20 8d e2                                      add r2, sp, #0x28
0065efc0  00 30 a0 e3                                      mov r3, #0
0065efc4  01 30 62 e5                                      strb r3, [r2, #-1]!
0065efc8  40 30 84 e2                                      add r3, r4, #0x40
0065efcc  08 30 8d e5                                      str r3, [sp, #8]
0065efd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0065efd4  08 00 9d e5                                      ldr r0, [sp, #8]
0065efd8  93 05 01 e0                                      mul r1, r3, r5
0065efdc  5a 7a fc eb                                      bl #0x57d94c
0065efe0  81 ff ff ea                                      b #0x65edec

; FUNCTION 0x0065efe4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZTv0_n12_N6glitch7collada25CSceneNodeAnimatorBlenderD0Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender()
; decoder-mode: arm
0065efe4  00 30 90 e5                                      ldr r3, [r0]
0065efe8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065efec  03 00 80 e0                                      add r0, r0, r3
0065eff0  99 fe ff ea                                      b #0x65ea5c

; FUNCTION 0x0065eff4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorBlender
; alias: _ZTv0_n12_N6glitch7collada25CSceneNodeAnimatorBlenderD1Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender()
; decoder-mode: arm
0065eff4  00 30 90 e5                                      ldr r3, [r0]
0065eff8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065effc  03 00 80 e0                                      add r0, r0, r3
0065f000  54 fe ff ea                                      b #0x65e958
