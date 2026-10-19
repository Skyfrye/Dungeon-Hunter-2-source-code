; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00367868, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender14getNumSegmentsEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getNumSegments() const
; decoder-mode: arm
00367868  24 00 40 e2                                      sub r0, r0, #0x24
0036786c  ff ff ff ea                                      b #0x367870

; FUNCTION 0x00367870, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender14getNumSegmentsEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getNumSegments() const
; decoder-mode: arm
00367870  10 40 2d e9                                      push {r4, lr}
00367874  30 30 90 e5                                      ldr r3, [r0, #0x30]
00367878  00 30 93 e5                                      ldr r3, [r3]
0036787c  03 00 a0 e1                                      mov r0, r3
00367880  00 30 93 e5                                      ldr r3, [r3]
00367884  0f e0 a0 e1                                      mov lr, pc
00367888  08 f0 93 e5                                      ldr pc, [r3, #8]
0036788c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00367890, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender24getSynchronizationLengthEij
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(int, unsigned int) const
; decoder-mode: arm
00367890  24 00 40 e2                                      sub r0, r0, #0x24
00367894  ff ff ff ea                                      b #0x367898

; FUNCTION 0x00367898, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender24getSynchronizationLengthEij
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(int, unsigned int) const
; decoder-mode: arm
00367898  10 40 2d e9                                      push {r4, lr}
0036789c  30 30 90 e5                                      ldr r3, [r0, #0x30]
003678a0  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
003678a4  02 10 a0 e1                                      mov r1, r2
003678a8  03 00 a0 e1                                      mov r0, r3
003678ac  00 30 93 e5                                      ldr r3, [r3]
003678b0  0f e0 a0 e1                                      mov lr, pc
003678b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
003678b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003678bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender24getSynchronizationLengthEj
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(unsigned int) const
; decoder-mode: arm
003678bc  24 00 40 e2                                      sub r0, r0, #0x24
003678c0  ff ff ff ea                                      b #0x3678c4

; FUNCTION 0x003678c4, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender24getSynchronizationLengthEj
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(unsigned int) const
; decoder-mode: arm
003678c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003678c8  34 70 90 e5                                      ldr r7, [r0, #0x34]
003678cc  30 30 90 e5                                      ldr r3, [r0, #0x30]
003678d0  00 50 a0 e1                                      mov r5, r0
003678d4  01 80 a0 e1                                      mov r8, r1
003678d8  07 70 63 e0                                      rsb r7, r3, r7
003678dc  47 71 b0 e1                                      asrs r7, r7, #2
003678e0  00 60 a0 13                                      movne r6, #0
003678e4  00 40 a0 13                                      movne r4, #0
003678e8  12 00 00 0a                                      beq #0x367938
003678ec  04 10 a0 e1                                      mov r1, r4
003678f0  08 20 a0 e1                                      mov r2, r8
003678f4  00 30 95 e5                                      ldr r3, [r5]
003678f8  05 00 a0 e1                                      mov r0, r5
003678fc  0f e0 a0 e1                                      mov lr, pc
00367900  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00367904  16 9c fe eb                                      bl #0x30e964
00367908  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0036790c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00367910  15 9d fe eb                                      bl #0x30ed6c
00367914  00 10 a0 e1                                      mov r1, r0
00367918  06 00 a0 e1                                      mov r0, r6
0036791c  a0 9c fe eb                                      bl #0x30eba4
00367920  01 40 84 e2                                      add r4, r4, #1
00367924  07 00 54 e1                                      cmp r4, r7
00367928  00 60 a0 e1                                      mov r6, r0
0036792c  ee ff ff 1a                                      bne #0x3678ec
00367930  e5 9a fe eb                                      bl #0x30e4cc
00367934  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00367938  07 00 a0 e1                                      mov r0, r7
0036793c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00367940, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender27getSynchronizationTimestampEij
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(int, unsigned int) const
; decoder-mode: arm
00367940  24 00 40 e2                                      sub r0, r0, #0x24
00367944  ff ff ff ea                                      b #0x367948

; FUNCTION 0x00367948, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender27getSynchronizationTimestampEij
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(int, unsigned int) const
; decoder-mode: arm
00367948  10 40 2d e9                                      push {r4, lr}
0036794c  30 30 90 e5                                      ldr r3, [r0, #0x30]
00367950  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00367954  02 10 a0 e1                                      mov r1, r2
00367958  03 00 a0 e1                                      mov r0, r3
0036795c  00 30 93 e5                                      ldr r3, [r3]
00367960  0f e0 a0 e1                                      mov lr, pc
00367964  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00367968  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036796c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender27getSynchronizationTimestampEj
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(unsigned int) const
; decoder-mode: arm
0036796c  24 00 40 e2                                      sub r0, r0, #0x24
00367970  ff ff ff ea                                      b #0x367974

; FUNCTION 0x00367974, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender27getSynchronizationTimestampEj
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(unsigned int) const
; decoder-mode: arm
00367974  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00367978  34 70 90 e5                                      ldr r7, [r0, #0x34]
0036797c  30 30 90 e5                                      ldr r3, [r0, #0x30]
00367980  00 50 a0 e1                                      mov r5, r0
00367984  01 80 a0 e1                                      mov r8, r1
00367988  07 70 63 e0                                      rsb r7, r3, r7
0036798c  47 71 b0 e1                                      asrs r7, r7, #2
00367990  00 60 a0 13                                      movne r6, #0
00367994  00 40 a0 13                                      movne r4, #0
00367998  12 00 00 0a                                      beq #0x3679e8
0036799c  04 10 a0 e1                                      mov r1, r4
003679a0  08 20 a0 e1                                      mov r2, r8
003679a4  00 30 95 e5                                      ldr r3, [r5]
003679a8  05 00 a0 e1                                      mov r0, r5
003679ac  0f e0 a0 e1                                      mov lr, pc
003679b0  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003679b4  ea 9b fe eb                                      bl #0x30e964
003679b8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
003679bc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
003679c0  e9 9c fe eb                                      bl #0x30ed6c
003679c4  00 10 a0 e1                                      mov r1, r0
003679c8  06 00 a0 e1                                      mov r0, r6
003679cc  74 9c fe eb                                      bl #0x30eba4
003679d0  01 40 84 e2                                      add r4, r4, #1
003679d4  07 00 54 e1                                      cmp r4, r7
003679d8  00 60 a0 e1                                      mov r6, r0
003679dc  ee ff ff 1a                                      bne #0x36799c
003679e0  b9 9a fe eb                                      bl #0x30e4cc
003679e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003679e8  07 00 a0 e1                                      mov r0, r7
003679ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003679f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender25getSynchronizationSegmentEii
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int, int) const
; decoder-mode: arm
003679f0  24 00 40 e2                                      sub r0, r0, #0x24
003679f4  ff ff ff ea                                      b #0x3679f8

; FUNCTION 0x003679f8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender25getSynchronizationSegmentEii
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int, int) const
; decoder-mode: arm
003679f8  10 40 2d e9                                      push {r4, lr}
003679fc  30 30 90 e5                                      ldr r3, [r0, #0x30]
00367a00  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00367a04  02 10 a0 e1                                      mov r1, r2
00367a08  03 00 a0 e1                                      mov r0, r3
00367a0c  00 30 93 e5                                      ldr r3, [r3]
00367a10  0f e0 a0 e1                                      mov lr, pc
00367a14  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00367a18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00367a1c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender25getSynchronizationSegmentEi
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int) const
; decoder-mode: arm
00367a1c  24 00 40 e2                                      sub r0, r0, #0x24
00367a20  ff ff ff ea                                      b #0x367a24

; FUNCTION 0x00367a24, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender25getSynchronizationSegmentEi
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(int) const
; decoder-mode: arm
00367a24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00367a28  00 30 90 e5                                      ldr r3, [r0]
00367a2c  00 50 a0 e1                                      mov r5, r0
00367a30  01 70 a0 e1                                      mov r7, r1
00367a34  0f e0 a0 e1                                      mov lr, pc
00367a38  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00367a3c  00 40 a0 e3                                      mov r4, #0
00367a40  01 60 40 e2                                      sub r6, r0, #1
00367a44  05 00 00 ea                                      b #0x367a60
00367a48  00 30 95 e5                                      ldr r3, [r5]
00367a4c  0f e0 a0 e1                                      mov lr, pc
00367a50  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00367a54  07 00 50 e1                                      cmp r0, r7
00367a58  04 60 a0 d1                                      movle r6, r4
00367a5c  01 40 84 e2                                      add r4, r4, #1
00367a60  00 30 95 e5                                      ldr r3, [r5]
00367a64  05 00 a0 e1                                      mov r0, r5
00367a68  0f e0 a0 e1                                      mov lr, pc
00367a6c  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00367a70  00 00 54 e1                                      cmp r4, r0
00367a74  04 10 a0 e1                                      mov r1, r4
00367a78  05 00 a0 e1                                      mov r0, r5
00367a7c  f1 ff ff 3a                                      blo #0x367a48
00367a80  06 00 a0 e1                                      mov r0, r6
00367a84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00367a88, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender16normalizeWeightsEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::normalizeWeights()
; decoder-mode: arm
00367a88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00367a8c  b2 40 d0 e5                                      ldrb r4, [r0, #0xb2]
00367a90  00 80 a0 e1                                      mov r8, r0
00367a94  00 00 54 e3                                      cmp r4, #0
00367a98  1c 00 00 1a                                      bne #0x367b10
00367a9c  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
00367aa0  40 70 90 e5                                      ldr r7, [r0, #0x40]
00367aa4  07 70 65 e0                                      rsb r7, r5, r7
00367aa8  47 71 b0 e1                                      asrs r7, r7, #2
00367aac  15 00 00 0a                                      beq #0x367b08
00367ab0  00 60 a0 e3                                      mov r6, #0
00367ab4  06 00 a0 e1                                      mov r0, r6
00367ab8  04 11 95 e7                                      ldr r1, [r5, r4, lsl #2]
00367abc  38 9c fe eb                                      bl #0x30eba4
00367ac0  01 40 84 e2                                      add r4, r4, #1
00367ac4  07 00 54 e1                                      cmp r4, r7
00367ac8  00 60 a0 e1                                      mov r6, r0
00367acc  f8 ff ff 1a                                      bne #0x367ab4
00367ad0  00 10 a0 e3                                      mov r1, #0
00367ad4  2c 99 fe eb                                      bl #0x30df8c
00367ad8  00 00 50 e3                                      cmp r0, #0
00367adc  0c 00 00 1a                                      bne #0x367b14
00367ae0  00 40 a0 e3                                      mov r4, #0
00367ae4  00 00 00 ea                                      b #0x367aec
00367ae8  3c 50 98 e5                                      ldr r5, [r8, #0x3c]
00367aec  04 01 95 e7                                      ldr r0, [r5, r4, lsl #2]
00367af0  06 10 a0 e1                                      mov r1, r6
00367af4  66 9c fe eb                                      bl #0x30ec94
00367af8  04 01 85 e7                                      str r0, [r5, r4, lsl #2]
00367afc  01 40 84 e2                                      add r4, r4, #1
00367b00  07 00 54 e1                                      cmp r4, r7
00367b04  f7 ff ff 1a                                      bne #0x367ae8
00367b08  01 30 a0 e3                                      mov r3, #1
00367b0c  b2 30 c8 e5                                      strb r3, [r8, #0xb2]
00367b10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00367b14  00 00 54 e3                                      cmp r4, #0
00367b18  fe 35 a0 13                                      movne r3, #0x3f800000
00367b1c  00 30 85 15                                      strne r3, [r5]
00367b20  01 30 a0 e3                                      mov r3, #1
00367b24  b2 30 c8 e5                                      strb r3, [r8, #0xb2]
00367b28  f8 ff ff ea                                      b #0x367b10

; FUNCTION 0x00367b2c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender29getSynchronizationElapsedTimeEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime() const
; decoder-mode: arm
00367b2c  24 00 40 e2                                      sub r0, r0, #0x24
00367b30  ff ff ff ea                                      b #0x367b34

; FUNCTION 0x00367b34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender29getSynchronizationElapsedTimeEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime() const
; decoder-mode: arm
00367b34  00 00 a0 e3                                      mov r0, #0
00367b38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00367b3c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender28getSynchronizationPercentageEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage() const
; decoder-mode: arm
00367b3c  24 00 40 e2                                      sub r0, r0, #0x24
00367b40  ff ff ff ea                                      b #0x367b44

; FUNCTION 0x00367b44, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender28getSynchronizationPercentageEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage() const
; decoder-mode: arm
00367b44  10 40 2d e9                                      push {r4, lr}
00367b48  30 30 90 e5                                      ldr r3, [r0, #0x30]
00367b4c  00 30 93 e5                                      ldr r3, [r3]
00367b50  03 00 a0 e1                                      mov r0, r3
00367b54  00 30 93 e5                                      ldr r3, [r3]
00367b58  0f e0 a0 e1                                      mov lr, pc
00367b5c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00367b60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00660db0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender17getAnimationTrackEi
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationTrack(int)
; decoder-mode: arm
00660db0  10 40 2d e9                                      push {r4, lr}
00660db4  30 30 90 e5                                      ldr r3, [r0, #0x30]
00660db8  00 30 93 e5                                      ldr r3, [r3]
00660dbc  04 30 93 e5                                      ldr r3, [r3, #4]
00660dc0  03 00 a0 e1                                      mov r0, r3
00660dc4  00 30 93 e5                                      ldr r3, [r3]
00660dc8  0f e0 a0 e1                                      mov lr, pc
00660dcc  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00660dd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00660dd4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19getAnimationTrackExEi
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationTrackEx(int)
; decoder-mode: arm
00660dd4  10 40 2d e9                                      push {r4, lr}
00660dd8  30 30 90 e5                                      ldr r3, [r0, #0x30]
00660ddc  00 30 93 e5                                      ldr r3, [r3]
00660de0  04 30 93 e5                                      ldr r3, [r3, #4]
00660de4  03 00 a0 e1                                      mov r0, r3
00660de8  00 30 93 e5                                      ldr r3, [r3]
00660dec  0f e0 a0 e1                                      mov lr, pc
00660df0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00660df4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00660df8, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::setTarget(int, void*, glitch::collada::animation_track::CApplicatorInfo const*)
; decoder-mode: arm
00660df8  70 40 2d e9                                      push {r4, r5, r6, lr}
00660dfc  60 c0 90 e5                                      ldr ip, [r0, #0x60]
00660e00  03 60 a0 e1                                      mov r6, r3
00660e04  00 40 a0 e1                                      mov r4, r0
00660e08  01 21 8c e7                                      str r2, [ip, r1, lsl #2]
00660e0c  6c 30 90 e5                                      ldr r3, [r0, #0x6c]
00660e10  01 50 a0 e1                                      mov r5, r1
00660e14  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00660e18  00 00 53 e3                                      cmp r3, #0
00660e1c  06 00 00 0a                                      beq #0x660e3c
00660e20  03 00 a0 e1                                      mov r0, r3
00660e24  00 30 93 e5                                      ldr r3, [r3]
00660e28  0f e0 a0 e1                                      mov lr, pc
00660e2c  04 f0 93 e5                                      ldr pc, [r3, #4]
00660e30  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
00660e34  00 20 a0 e3                                      mov r2, #0
00660e38  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
00660e3c  00 00 56 e3                                      cmp r6, #0
00660e40  05 00 00 0a                                      beq #0x660e5c
00660e44  06 00 a0 e1                                      mov r0, r6
00660e48  00 30 96 e5                                      ldr r3, [r6]
00660e4c  6c 40 94 e5                                      ldr r4, [r4, #0x6c]
00660e50  0f e0 a0 e1                                      mov lr, pc
00660e54  08 f0 93 e5                                      ldr pc, [r3, #8]
00660e58  05 01 84 e7                                      str r0, [r4, r5, lsl #2]
00660e5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00660e60, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender10getBindURIEi
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getBindURI(int)
; decoder-mode: arm
00660e60  10 40 2d e9                                      push {r4, lr}
00660e64  30 30 90 e5                                      ldr r3, [r0, #0x30]
00660e68  00 30 93 e5                                      ldr r3, [r3]
00660e6c  04 30 93 e5                                      ldr r3, [r3, #4]
00660e70  03 00 a0 e1                                      mov r0, r3
00660e74  00 30 93 e5                                      ldr r3, [r3]
00660e78  0f e0 a0 e1                                      mov lr, pc
00660e7c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00660e80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00660e84, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender14getTargetCountEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetCount()
; decoder-mode: arm
00660e84  10 40 2d e9                                      push {r4, lr}
00660e88  30 30 90 e5                                      ldr r3, [r0, #0x30]
00660e8c  00 30 93 e5                                      ldr r3, [r3]
00660e90  04 30 93 e5                                      ldr r3, [r3, #4]
00660e94  03 00 a0 e1                                      mov r0, r3
00660e98  00 30 93 e5                                      ldr r3, [r3]
00660e9c  0f e0 a0 e1                                      mov lr, pc
00660ea0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00660ea4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00660ea8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender13getTargetSizeEi
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetSize(int)
; decoder-mode: arm
00660ea8  10 40 2d e9                                      push {r4, lr}
00660eac  30 30 90 e5                                      ldr r3, [r0, #0x30]
00660eb0  00 30 93 e5                                      ldr r3, [r3]
00660eb4  04 30 93 e5                                      ldr r3, [r3, #4]
00660eb8  03 00 a0 e1                                      mov r0, r3
00660ebc  00 30 93 e5                                      ldr r3, [r3]
00660ec0  0f e0 a0 e1                                      mov lr, pc
00660ec4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00660ec8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00660ecc, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender14getTargetsSizeEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getTargetsSize()
; decoder-mode: arm
00660ecc  10 40 2d e9                                      push {r4, lr}
00660ed0  30 30 90 e5                                      ldr r3, [r0, #0x30]
00660ed4  00 30 93 e5                                      ldr r3, [r3]
00660ed8  04 30 93 e5                                      ldr r3, [r3, #4]
00660edc  03 00 a0 e1                                      mov r0, r3
00660ee0  00 30 93 e5                                      ldr r3, [r3]
00660ee4  0f e0 a0 e1                                      mov lr, pc
00660ee8  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00660eec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00660ef0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender9getLengthEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getLength() const
; decoder-mode: arm
00660ef0  70 40 2d e9                                      push {r4, r5, r6, lr}
00660ef4  00 50 a0 e1                                      mov r5, r0
00660ef8  30 30 90 e5                                      ldr r3, [r0, #0x30]
00660efc  34 00 90 e5                                      ldr r0, [r0, #0x34]
00660f00  00 00 63 e0                                      rsb r0, r3, r0
00660f04  40 01 b0 e1                                      asrs r0, r0, #2
00660f08  16 00 00 0a                                      beq #0x660f68
00660f0c  00 60 a0 e3                                      mov r6, #0
00660f10  00 40 a0 e3                                      mov r4, #0
00660f14  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00660f18  04 30 93 e5                                      ldr r3, [r3, #4]
00660f1c  03 00 a0 e1                                      mov r0, r3
00660f20  00 30 93 e5                                      ldr r3, [r3]
00660f24  0f e0 a0 e1                                      mov lr, pc
00660f28  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00660f2c  8c b6 f2 eb                                      bl #0x30e964
00660f30  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00660f34  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00660f38  8b b7 f2 eb                                      bl #0x30ed6c
00660f3c  00 10 a0 e1                                      mov r1, r0
00660f40  06 00 a0 e1                                      mov r0, r6
00660f44  16 b7 f2 eb                                      bl #0x30eba4
00660f48  30 30 95 e5                                      ldr r3, [r5, #0x30]
00660f4c  34 20 95 e5                                      ldr r2, [r5, #0x34]
00660f50  01 40 84 e2                                      add r4, r4, #1
00660f54  00 60 a0 e1                                      mov r6, r0
00660f58  02 20 63 e0                                      rsb r2, r3, r2
00660f5c  42 01 54 e1                                      cmp r4, r2, asr #2
00660f60  eb ff ff 3a                                      blo #0x660f14
00660f64  58 b5 f2 eb                                      bl #0x30e4cc
00660f68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00660f84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlender32applySynchronizedAnimationValuesEf
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(float)
; decoder-mode: arm
00660f84  24 00 40 e2                                      sub r0, r0, #0x24
00660f88  ff ff ff ea                                      b #0x660f8c

; FUNCTION 0x00660f8c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender32applySynchronizedAnimationValuesEf
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(float)
; decoder-mode: arm
00660f8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00660f90  00 50 a0 e1                                      mov r5, r0
00660f94  01 70 a0 e1                                      mov r7, r1
00660f98  ba 1a f4 eb                                      bl #0x367a88
00660f9c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00660fa0  34 60 95 e5                                      ldr r6, [r5, #0x34]
00660fa4  06 60 63 e0                                      rsb r6, r3, r6
00660fa8  46 61 b0 e1                                      asrs r6, r6, #2
00660fac  0b 00 00 0a                                      beq #0x660fe0
00660fb0  00 40 a0 e3                                      mov r4, #0
00660fb4  00 00 00 ea                                      b #0x660fbc
00660fb8  30 30 95 e5                                      ldr r3, [r5, #0x30]
00660fbc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00660fc0  07 10 a0 e1                                      mov r1, r7
00660fc4  01 40 84 e2                                      add r4, r4, #1
00660fc8  03 00 a0 e1                                      mov r0, r3
00660fcc  00 30 93 e5                                      ldr r3, [r3]
00660fd0  0f e0 a0 e1                                      mov lr, pc
00660fd4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00660fd8  06 00 54 e1                                      cmp r4, r6
00660fdc  f5 ff ff 1a                                      bne #0x660fb8
00660fe0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00660fe4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlender34computeSynchronizedAnimationValuesEf
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(float)
; decoder-mode: arm
00660fe4  24 00 40 e2                                      sub r0, r0, #0x24
00660fe8  ff ff ff ea                                      b #0x660fec

; FUNCTION 0x00660fec, declared_size=236, range_size=236, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender34computeSynchronizedAnimationValuesEf
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(float)
; decoder-mode: arm
00660fec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00660ff0  00 50 a0 e1                                      mov r5, r0
00660ff4  0c d0 4d e2                                      sub sp, sp, #0xc
00660ff8  01 70 a0 e1                                      mov r7, r1
00660ffc  a1 1a f4 eb                                      bl #0x367a88
00661000  30 30 95 e5                                      ldr r3, [r5, #0x30]
00661004  34 60 95 e5                                      ldr r6, [r5, #0x34]
00661008  06 60 63 e0                                      rsb r6, r3, r6
0066100c  46 61 b0 e1                                      asrs r6, r6, #2
00661010  0b 00 00 0a                                      beq #0x661044
00661014  00 40 a0 e3                                      mov r4, #0
00661018  00 00 00 ea                                      b #0x661020
0066101c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00661020  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00661024  07 10 a0 e1                                      mov r1, r7
00661028  01 40 84 e2                                      add r4, r4, #1
0066102c  03 00 a0 e1                                      mov r0, r3
00661030  00 30 93 e5                                      ldr r3, [r3]
00661034  0f e0 a0 e1                                      mov lr, pc
00661038  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0066103c  06 00 54 e1                                      cmp r4, r6
00661040  f5 ff ff 1a                                      bne #0x66101c
00661044  60 30 95 e5                                      ldr r3, [r5, #0x60]
00661048  64 00 95 e5                                      ldr r0, [r5, #0x64]
0066104c  00 20 63 e0                                      rsb r2, r3, r0
00661050  22 21 b0 e1                                      lsrs r2, r2, #2
00661054  1d 00 00 0a                                      beq #0x6610d0
00661058  00 40 a0 e3                                      mov r4, #0
0066105c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
00661060  04 10 a0 e1                                      mov r1, r4
00661064  00 00 52 e3                                      cmp r2, #0
00661068  14 00 00 0a                                      beq #0x6610c0
0066106c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00661070  00 30 93 e5                                      ldr r3, [r3]
00661074  04 30 93 e5                                      ldr r3, [r3, #4]
00661078  03 00 a0 e1                                      mov r0, r3
0066107c  00 30 93 e5                                      ldr r3, [r3]
00661080  0f e0 a0 e1                                      mov lr, pc
00661084  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00661088  60 c0 95 e5                                      ldr ip, [r5, #0x60]
0066108c  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
00661090  40 30 95 e5                                      ldr r3, [r5, #0x40]
00661094  54 10 95 e5                                      ldr r1, [r5, #0x54]
00661098  04 e1 9c e7                                      ldr lr, [ip, r4, lsl #2]
0066109c  03 30 62 e0                                      rsb r3, r2, r3
006610a0  00 c0 90 e5                                      ldr ip, [r0]
006610a4  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
006610a8  43 31 a0 e1                                      asr r3, r3, #2
006610ac  00 e0 8d e5                                      str lr, [sp]
006610b0  0f e0 a0 e1                                      mov lr, pc
006610b4  10 f0 9c e5                                      ldr pc, [ip, #0x10]
006610b8  60 30 95 e5                                      ldr r3, [r5, #0x60]
006610bc  64 00 95 e5                                      ldr r0, [r5, #0x64]
006610c0  01 40 84 e2                                      add r4, r4, #1
006610c4  00 20 63 e0                                      rsb r2, r3, r0
006610c8  42 01 54 e1                                      cmp r4, r2, asr #2
006610cc  e2 ff ff 3a                                      blo #0x66105c
006610d0  0c d0 8d e2                                      add sp, sp, #0xc
006610d4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006610d8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender11animateNodeEPNS_5scene10ISceneNodeEj
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
006610d8  10 40 2d e9                                      push {r4, lr}
006610dc  02 10 a0 e1                                      mov r1, r2
006610e0  00 30 90 e5                                      ldr r3, [r0]
006610e4  0f e0 a0 e1                                      mov lr, pc
006610e8  50 f0 93 e5                                      ldr pc, [r3, #0x50]
006610ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006610f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_NK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender13hasReachedEndEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd() const
; decoder-mode: arm
006610f0  24 00 40 e2                                      sub r0, r0, #0x24
006610f4  ff ff ff ea                                      b #0x6610f8

; FUNCTION 0x006610f8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender13hasReachedEndEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd() const
; decoder-mode: arm
006610f8  10 40 2d e9                                      push {r4, lr}
006610fc  30 30 90 e5                                      ldr r3, [r0, #0x30]
00661100  00 30 93 e5                                      ldr r3, [r3]
00661104  03 00 a0 e1                                      mov r0, r3
00661108  00 30 93 e5                                      ldr r3, [r3]
0066110c  0f e0 a0 e1                                      mov lr, pc
00661110  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00661114  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00661118, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlender18fillInputTimeStartEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart()
; decoder-mode: arm
00661118  24 00 40 e2                                      sub r0, r0, #0x24
0066111c  ff ff ff ea                                      b #0x661120

; FUNCTION 0x00661120, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender18fillInputTimeStartEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart()
; decoder-mode: arm
00661120  70 40 2d e9                                      push {r4, r5, r6, lr}
00661124  30 30 90 e5                                      ldr r3, [r0, #0x30]
00661128  34 20 90 e5                                      ldr r2, [r0, #0x34]
0066112c  00 50 a0 e1                                      mov r5, r0
00661130  02 20 63 e0                                      rsb r2, r3, r2
00661134  22 21 b0 e1                                      lsrs r2, r2, #2
00661138  0e 00 00 0a                                      beq #0x661178
0066113c  00 40 a0 e3                                      mov r4, #0
00661140  04 60 a0 e1                                      mov r6, r4
00661144  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00661148  03 00 a0 e1                                      mov r0, r3
0066114c  00 30 93 e5                                      ldr r3, [r3]
00661150  0f e0 a0 e1                                      mov lr, pc
00661154  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00661158  a0 30 95 e5                                      ldr r3, [r5, #0xa0]
0066115c  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
00661160  30 30 95 e5                                      ldr r3, [r5, #0x30]
00661164  34 20 95 e5                                      ldr r2, [r5, #0x34]
00661168  01 40 84 e2                                      add r4, r4, #1
0066116c  02 20 63 e0                                      rsb r2, r3, r2
00661170  42 01 54 e1                                      cmp r4, r2, asr #2
00661174  f2 ff ff 3a                                      blo #0x661144
00661178  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066117c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlender16fillInputTimeEndEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd()
; decoder-mode: arm
0066117c  24 00 40 e2                                      sub r0, r0, #0x24
00661180  ff ff ff ea                                      b #0x661184

; FUNCTION 0x00661184, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender16fillInputTimeEndEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd()
; decoder-mode: arm
00661184  70 40 2d e9                                      push {r4, r5, r6, lr}
00661188  30 30 90 e5                                      ldr r3, [r0, #0x30]
0066118c  34 20 90 e5                                      ldr r2, [r0, #0x34]
00661190  00 50 a0 e1                                      mov r5, r0
00661194  02 20 63 e0                                      rsb r2, r3, r2
00661198  22 21 b0 e1                                      lsrs r2, r2, #2
0066119c  14 00 00 0a                                      beq #0x6611f4
006611a0  00 40 a0 e3                                      mov r4, #0
006611a4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006611a8  03 00 a0 e1                                      mov r0, r3
006611ac  00 30 93 e5                                      ldr r3, [r3]
006611b0  0f e0 a0 e1                                      mov lr, pc
006611b4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006611b8  30 30 95 e5                                      ldr r3, [r5, #0x30]
006611bc  a0 60 95 e5                                      ldr r6, [r5, #0xa0]
006611c0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006611c4  04 30 93 e5                                      ldr r3, [r3, #4]
006611c8  03 00 a0 e1                                      mov r0, r3
006611cc  00 30 93 e5                                      ldr r3, [r3]
006611d0  0f e0 a0 e1                                      mov lr, pc
006611d4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006611d8  04 01 86 e7                                      str r0, [r6, r4, lsl #2]
006611dc  30 30 95 e5                                      ldr r3, [r5, #0x30]
006611e0  34 20 95 e5                                      ldr r2, [r5, #0x34]
006611e4  01 40 84 e2                                      add r4, r4, #1
006611e8  02 20 63 e0                                      rsb r2, r3, r2
006611ec  42 01 54 e1                                      cmp r4, r2, asr #2
006611f0  eb ff ff 3a                                      blo #0x6611a4
006611f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006611f8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlender35fillInputSynchronizationElapsedTimeEv
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime()
; decoder-mode: arm
006611f8  24 00 40 e2                                      sub r0, r0, #0x24
006611fc  ff ff ff ea                                      b #0x661200

; FUNCTION 0x00661200, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender35fillInputSynchronizationElapsedTimeEv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime()
; decoder-mode: arm
00661200  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00661204  30 30 90 e5                                      ldr r3, [r0, #0x30]
00661208  34 20 90 e5                                      ldr r2, [r0, #0x34]
0066120c  00 50 a0 e1                                      mov r5, r0
00661210  02 20 63 e0                                      rsb r2, r3, r2
00661214  22 21 b0 e1                                      lsrs r2, r2, #2
00661218  1e 00 00 0a                                      beq #0x661298
0066121c  00 40 a0 e3                                      mov r4, #0
00661220  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00661224  03 00 a0 e1                                      mov r0, r3
00661228  00 30 93 e5                                      ldr r3, [r3]
0066122c  0f e0 a0 e1                                      mov lr, pc
00661230  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00661234  30 30 95 e5                                      ldr r3, [r5, #0x30]
00661238  a0 60 95 e5                                      ldr r6, [r5, #0xa0]
0066123c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00661240  03 00 a0 e1                                      mov r0, r3
00661244  00 30 93 e5                                      ldr r3, [r3]
00661248  0f e0 a0 e1                                      mov lr, pc
0066124c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00661250  30 30 95 e5                                      ldr r3, [r5, #0x30]
00661254  00 70 a0 e1                                      mov r7, r0
00661258  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0066125c  04 30 93 e5                                      ldr r3, [r3, #4]
00661260  03 00 a0 e1                                      mov r0, r3
00661264  00 30 93 e5                                      ldr r3, [r3]
00661268  0f e0 a0 e1                                      mov lr, pc
0066126c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00661270  00 10 a0 e1                                      mov r1, r0
00661274  07 00 a0 e1                                      mov r0, r7
00661278  a1 b5 f2 eb                                      bl #0x30e904
0066127c  04 11 86 e7                                      str r1, [r6, r4, lsl #2]
00661280  30 30 95 e5                                      ldr r3, [r5, #0x30]
00661284  34 20 95 e5                                      ldr r2, [r5, #0x34]
00661288  01 40 84 e2                                      add r4, r4, #1
0066128c  02 20 63 e0                                      rsb r2, r3, r2
00661290  42 01 54 e1                                      cmp r4, r2, asr #2
00661294  e1 ff ff 3a                                      blo #0x661220
00661298  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006612bc, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender22computeAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::computeAnimationValues(unsigned int)
; decoder-mode: arm
006612bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006612c0  b1 30 d0 e5                                      ldrb r3, [r0, #0xb1]
006612c4  00 40 a0 e1                                      mov r4, r0
006612c8  01 50 a0 e1                                      mov r5, r1
006612cc  00 00 53 e3                                      cmp r3, #0
006612d0  48 00 00 1a                                      bne #0x6613f8
006612d4  30 30 94 e5                                      ldr r3, [r4, #0x30]
006612d8  34 80 94 e5                                      ldr r8, [r4, #0x34]
006612dc  08 80 63 e0                                      rsb r8, r3, r8
006612e0  48 81 b0 e1                                      asrs r8, r8, #2
006612e4  08 70 a0 01                                      moveq r7, r8
006612e8  12 00 00 0a                                      beq #0x661338
006612ec  00 60 a0 e3                                      mov r6, #0
006612f0  06 70 a0 e1                                      mov r7, r6
006612f4  00 00 00 ea                                      b #0x6612fc
006612f8  30 30 94 e5                                      ldr r3, [r4, #0x30]
006612fc  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00661300  04 30 93 e5                                      ldr r3, [r3, #4]
00661304  03 00 a0 e1                                      mov r0, r3
00661308  00 30 93 e5                                      ldr r3, [r3]
0066130c  0f e0 a0 e1                                      mov lr, pc
00661310  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00661314  92 b5 f2 eb                                      bl #0x30e964
00661318  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0066131c  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
00661320  91 b6 f2 eb                                      bl #0x30ed6c
00661324  68 b4 f2 eb                                      bl #0x30e4cc
00661328  01 60 86 e2                                      add r6, r6, #1
0066132c  08 00 56 e1                                      cmp r6, r8
00661330  00 70 87 e0                                      add r7, r7, r0
00661334  ef ff ff 1a                                      bne #0x6612f8
00661338  78 c0 94 e5                                      ldr ip, [r4, #0x78]
0066133c  00 10 a0 e3                                      mov r1, #0
00661340  07 20 a0 e1                                      mov r2, r7
00661344  01 30 a0 e1                                      mov r3, r1
00661348  0c 00 a0 e1                                      mov r0, ip
0066134c  00 c0 9c e5                                      ldr ip, [ip]
00661350  0f e0 a0 e1                                      mov lr, pc
00661354  50 f0 9c e5                                      ldr pc, [ip, #0x50]
00661358  05 10 a0 e1                                      mov r1, r5
0066135c  04 00 a0 e1                                      mov r0, r4
00661360  38 1a 00 eb                                      bl #0x667c48
00661364  ac 20 94 e5                                      ldr r2, [r4, #0xac]
00661368  00 30 94 e5                                      ldr r3, [r4]
0066136c  ac 50 84 e5                                      str r5, [r4, #0xac]
00661370  04 00 a0 e1                                      mov r0, r4
00661374  05 50 62 e0                                      rsb r5, r2, r5
00661378  0f e0 a0 e1                                      mov lr, pc
0066137c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00661380  00 30 94 e5                                      ldr r3, [r4]
00661384  00 70 a0 e1                                      mov r7, r0
00661388  04 00 a0 e1                                      mov r0, r4
0066138c  0f e0 a0 e1                                      mov lr, pc
00661390  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00661394  00 60 a0 e1                                      mov r6, r0
00661398  c5 0f c5 e1                                      bic r0, r5, r5, asr #31
0066139c  70 b5 f2 eb                                      bl #0x30e964
006613a0  00 50 a0 e1                                      mov r5, r0
006613a4  07 00 a0 e1                                      mov r0, r7
006613a8  6d b5 f2 eb                                      bl #0x30e964
006613ac  00 10 a0 e1                                      mov r1, r0
006613b0  05 00 a0 e1                                      mov r0, r5
006613b4  36 b6 f2 eb                                      bl #0x30ec94
006613b8  00 10 a0 e1                                      mov r1, r0
006613bc  06 00 a0 e1                                      mov r0, r6
006613c0  f7 b5 f2 eb                                      bl #0x30eba4
006613c4  00 30 94 e5                                      ldr r3, [r4]
006613c8  00 10 a0 e1                                      mov r1, r0
006613cc  04 00 a0 e1                                      mov r0, r4
006613d0  0f e0 a0 e1                                      mov lr, pc
006613d4  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
006613d8  30 30 94 e5                                      ldr r3, [r4, #0x30]
006613dc  00 30 93 e5                                      ldr r3, [r3]
006613e0  03 00 a0 e1                                      mov r0, r3
006613e4  00 30 93 e5                                      ldr r3, [r3]
006613e8  0f e0 a0 e1                                      mov lr, pc
006613ec  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006613f0  b0 00 c4 e5                                      strb r0, [r4, #0xb0]
006613f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006613f8  a2 19 f4 eb                                      bl #0x367a88
006613fc  00 30 a0 e3                                      mov r3, #0
00661400  b1 30 c4 e5                                      strb r3, [r4, #0xb1]
00661404  b2 ff ff ea                                      b #0x6612d4

; FUNCTION 0x00661408, declared_size=492, range_size=492, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender20applyAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::applyAnimationValues(unsigned int)
; decoder-mode: arm
00661408  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066140c  b1 30 d0 e5                                      ldrb r3, [r0, #0xb1]
00661410  08 d0 4d e2                                      sub sp, sp, #8
00661414  00 40 a0 e1                                      mov r4, r0
00661418  00 00 53 e3                                      cmp r3, #0
0066141c  01 50 a0 e1                                      mov r5, r1
00661420  6f 00 00 1a                                      bne #0x6615e4
00661424  30 30 94 e5                                      ldr r3, [r4, #0x30]
00661428  34 80 94 e5                                      ldr r8, [r4, #0x34]
0066142c  08 80 63 e0                                      rsb r8, r3, r8
00661430  48 81 b0 e1                                      asrs r8, r8, #2
00661434  08 70 a0 01                                      moveq r7, r8
00661438  12 00 00 0a                                      beq #0x661488
0066143c  00 60 a0 e3                                      mov r6, #0
00661440  06 70 a0 e1                                      mov r7, r6
00661444  00 00 00 ea                                      b #0x66144c
00661448  30 30 94 e5                                      ldr r3, [r4, #0x30]
0066144c  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00661450  04 30 93 e5                                      ldr r3, [r3, #4]
00661454  03 00 a0 e1                                      mov r0, r3
00661458  00 30 93 e5                                      ldr r3, [r3]
0066145c  0f e0 a0 e1                                      mov lr, pc
00661460  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00661464  3e b5 f2 eb                                      bl #0x30e964
00661468  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0066146c  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
00661470  3d b6 f2 eb                                      bl #0x30ed6c
00661474  14 b4 f2 eb                                      bl #0x30e4cc
00661478  01 60 86 e2                                      add r6, r6, #1
0066147c  08 00 56 e1                                      cmp r6, r8
00661480  00 70 87 e0                                      add r7, r7, r0
00661484  ef ff ff 1a                                      bne #0x661448
00661488  78 c0 94 e5                                      ldr ip, [r4, #0x78]
0066148c  00 10 a0 e3                                      mov r1, #0
00661490  07 20 a0 e1                                      mov r2, r7
00661494  01 30 a0 e1                                      mov r3, r1
00661498  0c 00 a0 e1                                      mov r0, ip
0066149c  00 c0 9c e5                                      ldr ip, [ip]
006614a0  0f e0 a0 e1                                      mov lr, pc
006614a4  50 f0 9c e5                                      ldr pc, [ip, #0x50]
006614a8  05 10 a0 e1                                      mov r1, r5
006614ac  04 00 a0 e1                                      mov r0, r4
006614b0  e4 19 00 eb                                      bl #0x667c48
006614b4  ac 20 94 e5                                      ldr r2, [r4, #0xac]
006614b8  00 30 94 e5                                      ldr r3, [r4]
006614bc  ac 50 84 e5                                      str r5, [r4, #0xac]
006614c0  04 00 a0 e1                                      mov r0, r4
006614c4  05 50 62 e0                                      rsb r5, r2, r5
006614c8  0f e0 a0 e1                                      mov lr, pc
006614cc  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006614d0  00 30 94 e5                                      ldr r3, [r4]
006614d4  00 70 a0 e1                                      mov r7, r0
006614d8  04 00 a0 e1                                      mov r0, r4
006614dc  0f e0 a0 e1                                      mov lr, pc
006614e0  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
006614e4  00 60 a0 e1                                      mov r6, r0
006614e8  c5 0f c5 e1                                      bic r0, r5, r5, asr #31
006614ec  1c b5 f2 eb                                      bl #0x30e964
006614f0  00 50 a0 e1                                      mov r5, r0
006614f4  07 00 a0 e1                                      mov r0, r7
006614f8  19 b5 f2 eb                                      bl #0x30e964
006614fc  00 10 a0 e1                                      mov r1, r0
00661500  05 00 a0 e1                                      mov r0, r5
00661504  e2 b5 f2 eb                                      bl #0x30ec94
00661508  00 10 a0 e1                                      mov r1, r0
0066150c  06 00 a0 e1                                      mov r0, r6
00661510  a3 b5 f2 eb                                      bl #0x30eba4
00661514  00 30 94 e5                                      ldr r3, [r4]
00661518  00 10 a0 e1                                      mov r1, r0
0066151c  04 00 a0 e1                                      mov r0, r4
00661520  0f e0 a0 e1                                      mov lr, pc
00661524  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00661528  30 30 94 e5                                      ldr r3, [r4, #0x30]
0066152c  00 30 93 e5                                      ldr r3, [r3]
00661530  03 00 a0 e1                                      mov r0, r3
00661534  00 30 93 e5                                      ldr r3, [r3]
00661538  0f e0 a0 e1                                      mov lr, pc
0066153c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00661540  60 30 94 e5                                      ldr r3, [r4, #0x60]
00661544  64 20 94 e5                                      ldr r2, [r4, #0x64]
00661548  b0 00 c4 e5                                      strb r0, [r4, #0xb0]
0066154c  02 10 63 e0                                      rsb r1, r3, r2
00661550  21 11 b0 e1                                      lsrs r1, r1, #2
00661554  20 00 00 0a                                      beq #0x6615dc
00661558  00 50 a0 e3                                      mov r5, #0
0066155c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00661560  05 10 a0 e1                                      mov r1, r5
00661564  00 00 50 e3                                      cmp r0, #0
00661568  17 00 00 0a                                      beq #0x6615cc
0066156c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00661570  00 30 93 e5                                      ldr r3, [r3]
00661574  04 30 93 e5                                      ldr r3, [r3, #4]
00661578  03 00 a0 e1                                      mov r0, r3
0066157c  00 30 93 e5                                      ldr r3, [r3]
00661580  0f e0 a0 e1                                      mov lr, pc
00661584  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00661588  60 30 94 e5                                      ldr r3, [r4, #0x60]
0066158c  54 20 94 e5                                      ldr r2, [r4, #0x54]
00661590  6c e0 94 e5                                      ldr lr, [r4, #0x6c]
00661594  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00661598  05 11 92 e7                                      ldr r1, [r2, r5, lsl #2]
0066159c  00 c0 90 e5                                      ldr ip, [r0]
006615a0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
006615a4  00 30 8d e5                                      str r3, [sp]
006615a8  40 30 94 e5                                      ldr r3, [r4, #0x40]
006615ac  05 e1 9e e7                                      ldr lr, [lr, r5, lsl #2]
006615b0  03 30 62 e0                                      rsb r3, r2, r3
006615b4  43 31 a0 e1                                      asr r3, r3, #2
006615b8  04 e0 8d e5                                      str lr, [sp, #4]
006615bc  0f e0 a0 e1                                      mov lr, pc
006615c0  18 f0 9c e5                                      ldr pc, [ip, #0x18]
006615c4  60 30 94 e5                                      ldr r3, [r4, #0x60]
006615c8  64 20 94 e5                                      ldr r2, [r4, #0x64]
006615cc  01 50 85 e2                                      add r5, r5, #1
006615d0  02 10 63 e0                                      rsb r1, r3, r2
006615d4  41 01 55 e1                                      cmp r5, r1, asr #2
006615d8  df ff ff 3a                                      blo #0x66155c
006615dc  08 d0 8d e2                                      add sp, sp, #8
006615e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006615e4  27 19 f4 eb                                      bl #0x367a88
006615e8  00 30 a0 e3                                      mov r3, #0
006615ec  b1 30 c4 e5                                      strb r3, [r4, #0xb1]
006615f0  8b ff ff ea                                      b #0x661424

; FUNCTION 0x0066185c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD1Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
0066185c  24 00 40 e2                                      sub r0, r0, #0x24
00661860  01 00 00 ea                                      b #0x66186c

; FUNCTION 0x00661864, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn4_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD1Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
00661864  04 00 40 e2                                      sub r0, r0, #4
00661868  ff ff ff ea                                      b #0x66186c

; FUNCTION 0x0066186c, declared_size=368, range_size=368, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD1Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
0066186c  70 40 2d e9                                      push {r4, r5, r6, lr}
00661870  54 61 9f e5                                      ldr r6, [pc, #0x154]
00661874  54 31 9f e5                                      ldr r3, [pc, #0x154]
00661878  30 20 90 e5                                      ldr r2, [r0, #0x30]
0066187c  34 10 90 e5                                      ldr r1, [r0, #0x34]
00661880  06 60 8f e0                                      add r6, pc, r6
00661884  03 30 96 e7                                      ldr r3, [r6, r3]
00661888  01 10 62 e0                                      rsb r1, r2, r1
0066188c  00 40 a0 e1                                      mov r4, r0
00661890  0c c0 83 e2                                      add ip, r3, #0xc
00661894  51 0f 83 e2                                      add r0, r3, #0x144
00661898  21 11 b0 e1                                      lsrs r1, r1, #2
0066189c  f0 10 83 e2                                      add r1, r3, #0xf0
006618a0  dc 30 83 e2                                      add r3, r3, #0xdc
006618a4  00 c0 84 e5                                      str ip, [r4]
006618a8  b4 00 84 e5                                      str r0, [r4, #0xb4]
006618ac  04 30 84 e5                                      str r3, [r4, #4]
006618b0  24 10 84 e5                                      str r1, [r4, #0x24]
006618b4  0c 00 00 0a                                      beq #0x6618ec
006618b8  00 50 a0 e3                                      mov r5, #0
006618bc  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
006618c0  01 50 85 e2                                      add r5, r5, #1
006618c4  04 30 93 e5                                      ldr r3, [r3, #4]
006618c8  00 20 93 e5                                      ldr r2, [r3]
006618cc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006618d0  00 00 83 e0                                      add r0, r3, r0
006618d4  2a ef f2 eb                                      bl #0x31d584
006618d8  30 20 94 e5                                      ldr r2, [r4, #0x30]
006618dc  34 30 94 e5                                      ldr r3, [r4, #0x34]
006618e0  03 30 62 e0                                      rsb r3, r2, r3
006618e4  43 01 55 e1                                      cmp r5, r3, asr #2
006618e8  f3 ff ff 3a                                      blo #0x6618bc
006618ec  78 30 94 e5                                      ldr r3, [r4, #0x78]
006618f0  00 00 53 e3                                      cmp r3, #0
006618f4  03 00 00 0a                                      beq #0x661908
006618f8  03 00 a0 e1                                      mov r0, r3
006618fc  00 30 93 e5                                      ldr r3, [r3]
00661900  0f e0 a0 e1                                      mov lr, pc
00661904  08 f0 93 e5                                      ldr pc, [r3, #8]
00661908  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
0066190c  00 00 50 e3                                      cmp r0, #0
00661910  00 00 00 0a                                      beq #0x661918
00661914  cd ba f2 eb                                      bl #0x310450
00661918  94 00 94 e5                                      ldr r0, [r4, #0x94]
0066191c  00 00 50 e3                                      cmp r0, #0
00661920  00 00 00 0a                                      beq #0x661928
00661924  c9 ba f2 eb                                      bl #0x310450
00661928  88 00 94 e5                                      ldr r0, [r4, #0x88]
0066192c  00 00 50 e3                                      cmp r0, #0
00661930  00 00 00 0a                                      beq #0x661938
00661934  c5 ba f2 eb                                      bl #0x310450
00661938  7c 00 84 e2                                      add r0, r4, #0x7c
0066193c  b5 ff ff eb                                      bl #0x661818
00661940  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
00661944  00 00 50 e3                                      cmp r0, #0
00661948  00 00 00 0a                                      beq #0x661950
0066194c  bf ba f2 eb                                      bl #0x310450
00661950  60 00 94 e5                                      ldr r0, [r4, #0x60]
00661954  00 00 50 e3                                      cmp r0, #0
00661958  00 00 00 0a                                      beq #0x661960
0066195c  bb ba f2 eb                                      bl #0x310450
00661960  54 00 94 e5                                      ldr r0, [r4, #0x54]
00661964  00 00 50 e3                                      cmp r0, #0
00661968  00 00 00 0a                                      beq #0x661970
0066196c  b7 ba f2 eb                                      bl #0x310450
00661970  48 00 94 e5                                      ldr r0, [r4, #0x48]
00661974  00 00 50 e3                                      cmp r0, #0
00661978  00 00 00 0a                                      beq #0x661980
0066197c  b3 ba f2 eb                                      bl #0x310450
00661980  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00661984  00 00 50 e3                                      cmp r0, #0
00661988  00 00 00 0a                                      beq #0x661990
0066198c  af ba f2 eb                                      bl #0x310450
00661990  30 00 94 e5                                      ldr r0, [r4, #0x30]
00661994  00 00 50 e3                                      cmp r0, #0
00661998  00 00 00 0a                                      beq #0x6619a0
0066199c  ab ba f2 eb                                      bl #0x310450
006619a0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006619a4  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
006619a8  04 00 a0 e1                                      mov r0, r4
006619ac  03 30 96 e7                                      ldr r3, [r6, r3]
006619b0  01 10 96 e7                                      ldr r1, [r6, r1]
006619b4  08 30 83 e2                                      add r3, r3, #8
006619b8  24 30 84 e5                                      str r3, [r4, #0x24]
006619bc  04 10 81 e2                                      add r1, r1, #4
006619c0  7f 1f 00 eb                                      bl #0x6697c4
006619c4  04 00 a0 e1                                      mov r0, r4
006619c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006619cc  10 32 33 00 0c 1d 00 00 dc 31 00 00 34 09 00 00  .byte 0x10, 0x32, 0x33, 0x00, 0x0c, 0x1d, 0x00, 0x00, 0xdc, 0x31, 0x00, 0x00, 0x34, 0x09, 0x00, 0x00

; FUNCTION 0x006619dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn36_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD0Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
006619dc  24 00 40 e2                                      sub r0, r0, #0x24
006619e0  01 00 00 ea                                      b #0x6619ec

; FUNCTION 0x006619e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZThn4_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD0Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
006619e4  04 00 40 e2                                      sub r0, r0, #4
006619e8  ff ff ff ea                                      b #0x6619ec

; FUNCTION 0x006619ec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD0Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
006619ec  10 40 2d e9                                      push {r4, lr}
006619f0  00 40 a0 e1                                      mov r4, r0
006619f4  9c ff ff eb                                      bl #0x66186c
006619f8  04 00 a0 e1                                      mov r0, r4
006619fc  2b b2 f2 eb                                      bl #0x30e2b0
00661a00  04 00 a0 e1                                      mov r0, r4
00661a04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00661a08, declared_size=364, range_size=364, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD2Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
00661a08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00661a0c  00 30 91 e5                                      ldr r3, [r1]
00661a10  01 70 a0 e1                                      mov r7, r1
00661a14  4c 51 9f e5                                      ldr r5, [pc, #0x14c]
00661a18  00 30 80 e5                                      str r3, [r0]
00661a1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00661a20  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
00661a24  40 21 9f e5                                      ldr r2, [pc, #0x140]
00661a28  05 50 8f e0                                      add r5, pc, r5
00661a2c  03 10 80 e7                                      str r1, [r0, r3]
00661a30  30 30 90 e5                                      ldr r3, [r0, #0x30]
00661a34  34 10 90 e5                                      ldr r1, [r0, #0x34]
00661a38  02 20 95 e7                                      ldr r2, [r5, r2]
00661a3c  00 40 a0 e1                                      mov r4, r0
00661a40  01 10 63 e0                                      rsb r1, r3, r1
00661a44  21 11 b0 e1                                      lsrs r1, r1, #2
00661a48  f0 10 82 e2                                      add r1, r2, #0xf0
00661a4c  dc 20 82 e2                                      add r2, r2, #0xdc
00661a50  04 20 80 e5                                      str r2, [r0, #4]
00661a54  24 10 80 e5                                      str r1, [r0, #0x24]
00661a58  0c 00 00 0a                                      beq #0x661a90
00661a5c  00 60 a0 e3                                      mov r6, #0
00661a60  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00661a64  01 60 86 e2                                      add r6, r6, #1
00661a68  04 30 93 e5                                      ldr r3, [r3, #4]
00661a6c  00 20 93 e5                                      ldr r2, [r3]
00661a70  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00661a74  00 00 83 e0                                      add r0, r3, r0
00661a78  c1 ee f2 eb                                      bl #0x31d584
00661a7c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00661a80  34 20 94 e5                                      ldr r2, [r4, #0x34]
00661a84  02 20 63 e0                                      rsb r2, r3, r2
00661a88  42 01 56 e1                                      cmp r6, r2, asr #2
00661a8c  f3 ff ff 3a                                      blo #0x661a60
00661a90  78 30 94 e5                                      ldr r3, [r4, #0x78]
00661a94  00 00 53 e3                                      cmp r3, #0
00661a98  03 00 00 0a                                      beq #0x661aac
00661a9c  03 00 a0 e1                                      mov r0, r3
00661aa0  00 30 93 e5                                      ldr r3, [r3]
00661aa4  0f e0 a0 e1                                      mov lr, pc
00661aa8  08 f0 93 e5                                      ldr pc, [r3, #8]
00661aac  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
00661ab0  00 00 50 e3                                      cmp r0, #0
00661ab4  00 00 00 0a                                      beq #0x661abc
00661ab8  64 ba f2 eb                                      bl #0x310450
00661abc  94 00 94 e5                                      ldr r0, [r4, #0x94]
00661ac0  00 00 50 e3                                      cmp r0, #0
00661ac4  00 00 00 0a                                      beq #0x661acc
00661ac8  60 ba f2 eb                                      bl #0x310450
00661acc  88 00 94 e5                                      ldr r0, [r4, #0x88]
00661ad0  00 00 50 e3                                      cmp r0, #0
00661ad4  00 00 00 0a                                      beq #0x661adc
00661ad8  5c ba f2 eb                                      bl #0x310450
00661adc  7c 00 84 e2                                      add r0, r4, #0x7c
00661ae0  4c ff ff eb                                      bl #0x661818
00661ae4  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
00661ae8  00 00 50 e3                                      cmp r0, #0
00661aec  00 00 00 0a                                      beq #0x661af4
00661af0  56 ba f2 eb                                      bl #0x310450
00661af4  60 00 94 e5                                      ldr r0, [r4, #0x60]
00661af8  00 00 50 e3                                      cmp r0, #0
00661afc  00 00 00 0a                                      beq #0x661b04
00661b00  52 ba f2 eb                                      bl #0x310450
00661b04  54 00 94 e5                                      ldr r0, [r4, #0x54]
00661b08  00 00 50 e3                                      cmp r0, #0
00661b0c  00 00 00 0a                                      beq #0x661b14
00661b10  4e ba f2 eb                                      bl #0x310450
00661b14  48 00 94 e5                                      ldr r0, [r4, #0x48]
00661b18  00 00 50 e3                                      cmp r0, #0
00661b1c  00 00 00 0a                                      beq #0x661b24
00661b20  4a ba f2 eb                                      bl #0x310450
00661b24  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00661b28  00 00 50 e3                                      cmp r0, #0
00661b2c  00 00 00 0a                                      beq #0x661b34
00661b30  46 ba f2 eb                                      bl #0x310450
00661b34  30 00 94 e5                                      ldr r0, [r4, #0x30]
00661b38  00 00 50 e3                                      cmp r0, #0
00661b3c  00 00 00 0a                                      beq #0x661b44
00661b40  42 ba f2 eb                                      bl #0x310450
00661b44  24 30 9f e5                                      ldr r3, [pc, #0x24]
00661b48  04 10 87 e2                                      add r1, r7, #4
00661b4c  04 00 a0 e1                                      mov r0, r4
00661b50  03 30 95 e7                                      ldr r3, [r5, r3]
00661b54  08 30 83 e2                                      add r3, r3, #8
00661b58  24 30 84 e5                                      str r3, [r4, #0x24]
00661b5c  18 1f 00 eb                                      bl #0x6697c4
00661b60  04 00 a0 e1                                      mov r0, r4
00661b64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00661b68  68 30 33 00 0c 1d 00 00 dc 31 00 00              .byte 0x68, 0x30, 0x33, 0x00, 0x0c, 0x1d, 0x00, 0x00, 0xdc, 0x31, 0x00, 0x00

; FUNCTION 0x00661b74, declared_size=260, range_size=260, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderC1Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
00661b74  70 40 2d e9                                      push {r4, r5, r6, lr}
00661b78  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
00661b7c  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00661b80  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
00661b84  05 50 8f e0                                      add r5, pc, r5
00661b88  03 30 95 e7                                      ldr r3, [r5, r3]
00661b8c  01 10 95 e7                                      ldr r1, [r5, r1]
00661b90  01 60 a0 e3                                      mov r6, #1
00661b94  08 30 83 e2                                      add r3, r3, #8
00661b98  b4 30 80 e5                                      str r3, [r0, #0xb4]
00661b9c  b8 60 80 e5                                      str r6, [r0, #0xb8]
00661ba0  04 10 81 e2                                      add r1, r1, #4
00661ba4  00 40 a0 e1                                      mov r4, r0
00661ba8  53 1f 00 eb                                      bl #0x6698fc
00661bac  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
00661bb0  00 30 a0 e3                                      mov r3, #0
00661bb4  30 30 84 e5                                      str r3, [r4, #0x30]
00661bb8  02 20 95 e7                                      ldr r2, [r5, r2]
00661bbc  34 30 84 e5                                      str r3, [r4, #0x34]
00661bc0  38 30 84 e5                                      str r3, [r4, #0x38]
00661bc4  f0 10 82 e2                                      add r1, r2, #0xf0
00661bc8  0c c0 82 e2                                      add ip, r2, #0xc
00661bcc  51 0f 82 e2                                      add r0, r2, #0x144
00661bd0  dc 20 82 e2                                      add r2, r2, #0xdc
00661bd4  b4 00 84 e5                                      str r0, [r4, #0xb4]
00661bd8  00 c0 84 e5                                      str ip, [r4]
00661bdc  04 20 84 e5                                      str r2, [r4, #4]
00661be0  24 10 84 e5                                      str r1, [r4, #0x24]
00661be4  3c 30 84 e5                                      str r3, [r4, #0x3c]
00661be8  40 30 84 e5                                      str r3, [r4, #0x40]
00661bec  44 30 84 e5                                      str r3, [r4, #0x44]
00661bf0  48 30 84 e5                                      str r3, [r4, #0x48]
00661bf4  4c 30 84 e5                                      str r3, [r4, #0x4c]
00661bf8  50 30 84 e5                                      str r3, [r4, #0x50]
00661bfc  54 30 84 e5                                      str r3, [r4, #0x54]
00661c00  58 30 84 e5                                      str r3, [r4, #0x58]
00661c04  5c 30 84 e5                                      str r3, [r4, #0x5c]
00661c08  60 30 84 e5                                      str r3, [r4, #0x60]
00661c0c  64 30 84 e5                                      str r3, [r4, #0x64]
00661c10  68 30 84 e5                                      str r3, [r4, #0x68]
00661c14  6c 30 84 e5                                      str r3, [r4, #0x6c]
00661c18  70 30 84 e5                                      str r3, [r4, #0x70]
00661c1c  74 30 84 e5                                      str r3, [r4, #0x74]
00661c20  7c 30 84 e5                                      str r3, [r4, #0x7c]
00661c24  80 30 84 e5                                      str r3, [r4, #0x80]
00661c28  84 30 84 e5                                      str r3, [r4, #0x84]
00661c2c  88 30 84 e5                                      str r3, [r4, #0x88]
00661c30  8c 30 84 e5                                      str r3, [r4, #0x8c]
00661c34  90 30 84 e5                                      str r3, [r4, #0x90]
00661c38  94 30 84 e5                                      str r3, [r4, #0x94]
00661c3c  98 30 84 e5                                      str r3, [r4, #0x98]
00661c40  9c 30 84 e5                                      str r3, [r4, #0x9c]
00661c44  a0 30 84 e5                                      str r3, [r4, #0xa0]
00661c48  04 00 a0 e1                                      mov r0, r4
00661c4c  a4 30 84 e5                                      str r3, [r4, #0xa4]
00661c50  b1 60 c4 e5                                      strb r6, [r4, #0xb1]
00661c54  b2 30 c4 e5                                      strb r3, [r4, #0xb2]
00661c58  a8 30 84 e5                                      str r3, [r4, #0xa8]
00661c5c  b0 30 c4 e5                                      strb r3, [r4, #0xb0]
00661c60  28 40 84 e5                                      str r4, [r4, #0x28]
00661c64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00661c68  0c 2f 33 00 44 2b 00 00 34 09 00 00 0c 1d 00 00  .byte 0x0c, 0x2f, 0x33, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x34, 0x09, 0x00, 0x00, 0x0c, 0x1d, 0x00, 0x00

; FUNCTION 0x00661c78, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderC2Ev
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
00661c78  70 40 2d e9                                      push {r4, r5, r6, lr}
00661c7c  01 60 a0 e1                                      mov r6, r1
00661c80  e0 50 9f e5                                      ldr r5, [pc, #0xe0]
00661c84  04 10 81 e2                                      add r1, r1, #4
00661c88  00 40 a0 e1                                      mov r4, r0
00661c8c  1a 1f 00 eb                                      bl #0x6698fc
00661c90  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00661c94  05 50 8f e0                                      add r5, pc, r5
00661c98  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00661c9c  02 20 95 e7                                      ldr r2, [r5, r2]
00661ca0  00 30 a0 e3                                      mov r3, #0
00661ca4  01 10 95 e7                                      ldr r1, [r5, r1]
00661ca8  08 20 82 e2                                      add r2, r2, #8
00661cac  24 20 84 e5                                      str r2, [r4, #0x24]
00661cb0  00 00 96 e5                                      ldr r0, [r6]
00661cb4  f0 20 81 e2                                      add r2, r1, #0xf0
00661cb8  dc 10 81 e2                                      add r1, r1, #0xdc
00661cbc  00 00 84 e5                                      str r0, [r4]
00661cc0  0c c0 10 e5                                      ldr ip, [r0, #-0xc]
00661cc4  1c 60 96 e5                                      ldr r6, [r6, #0x1c]
00661cc8  04 00 a0 e1                                      mov r0, r4
00661ccc  0c 60 84 e7                                      str r6, [r4, ip]
00661cd0  24 20 84 e5                                      str r2, [r4, #0x24]
00661cd4  01 20 a0 e3                                      mov r2, #1
00661cd8  04 10 84 e5                                      str r1, [r4, #4]
00661cdc  30 30 84 e5                                      str r3, [r4, #0x30]
00661ce0  34 30 84 e5                                      str r3, [r4, #0x34]
00661ce4  38 30 84 e5                                      str r3, [r4, #0x38]
00661ce8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00661cec  40 30 84 e5                                      str r3, [r4, #0x40]
00661cf0  44 30 84 e5                                      str r3, [r4, #0x44]
00661cf4  48 30 84 e5                                      str r3, [r4, #0x48]
00661cf8  4c 30 84 e5                                      str r3, [r4, #0x4c]
00661cfc  50 30 84 e5                                      str r3, [r4, #0x50]
00661d00  54 30 84 e5                                      str r3, [r4, #0x54]
00661d04  58 30 84 e5                                      str r3, [r4, #0x58]
00661d08  5c 30 84 e5                                      str r3, [r4, #0x5c]
00661d0c  60 30 84 e5                                      str r3, [r4, #0x60]
00661d10  64 30 84 e5                                      str r3, [r4, #0x64]
00661d14  68 30 84 e5                                      str r3, [r4, #0x68]
00661d18  6c 30 84 e5                                      str r3, [r4, #0x6c]
00661d1c  70 30 84 e5                                      str r3, [r4, #0x70]
00661d20  74 30 84 e5                                      str r3, [r4, #0x74]
00661d24  7c 30 84 e5                                      str r3, [r4, #0x7c]
00661d28  80 30 84 e5                                      str r3, [r4, #0x80]
00661d2c  84 30 84 e5                                      str r3, [r4, #0x84]
00661d30  88 30 84 e5                                      str r3, [r4, #0x88]
00661d34  8c 30 84 e5                                      str r3, [r4, #0x8c]
00661d38  90 30 84 e5                                      str r3, [r4, #0x90]
00661d3c  b1 20 c4 e5                                      strb r2, [r4, #0xb1]
00661d40  b2 30 c4 e5                                      strb r3, [r4, #0xb2]
00661d44  94 30 84 e5                                      str r3, [r4, #0x94]
00661d48  98 30 84 e5                                      str r3, [r4, #0x98]
00661d4c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00661d50  a0 30 84 e5                                      str r3, [r4, #0xa0]
00661d54  a4 30 84 e5                                      str r3, [r4, #0xa4]
00661d58  a8 30 84 e5                                      str r3, [r4, #0xa8]
00661d5c  b0 30 c4 e5                                      strb r3, [r4, #0xb0]
00661d60  28 40 84 e5                                      str r4, [r4, #0x28]
00661d64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00661d68  fc 2d 33 00 dc 31 00 00 0c 1d 00 00              .byte 0xfc, 0x2d, 0x33, 0x00, 0xdc, 0x31, 0x00, 0x00, 0x0c, 0x1d, 0x00, 0x00

; FUNCTION 0x00662290, declared_size=324, range_size=324, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender17getAnimationValueEiiPv
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::getAnimationValue(int, int, void*)
; decoder-mode: arm
00662290  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00662294  30 20 90 e5                                      ldr r2, [r0, #0x30]
00662298  03 b0 a0 e1                                      mov fp, r3
0066229c  2c d0 4d e2                                      sub sp, sp, #0x2c
006622a0  00 30 92 e5                                      ldr r3, [r2]
006622a4  00 60 a0 e1                                      mov r6, r0
006622a8  01 a0 a0 e1                                      mov sl, r1
006622ac  04 30 93 e5                                      ldr r3, [r3, #4]
006622b0  00 50 a0 e3                                      mov r5, #0
006622b4  03 00 a0 e1                                      mov r0, r3
006622b8  00 30 93 e5                                      ldr r3, [r3]
006622bc  0f e0 a0 e1                                      mov lr, pc
006622c0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006622c4  30 20 96 e5                                      ldr r2, [r6, #0x30]
006622c8  34 70 96 e5                                      ldr r7, [r6, #0x34]
006622cc  00 30 90 e5                                      ldr r3, [r0]
006622d0  00 90 a0 e1                                      mov sb, r0
006622d4  07 70 62 e0                                      rsb r7, r2, r7
006622d8  0f e0 a0 e1                                      mov lr, pc
006622dc  08 f0 93 e5                                      ldr pc, [r3, #8]
006622e0  47 71 a0 e1                                      asr r7, r7, #2
006622e4  97 00 01 e0                                      mul r1, r7, r0
006622e8  27 20 8d e2                                      add r2, sp, #0x27
006622ec  00 80 a0 e1                                      mov r8, r0
006622f0  14 00 8d e2                                      add r0, sp, #0x14
006622f4  14 50 8d e5                                      str r5, [sp, #0x14]
006622f8  18 50 8d e5                                      str r5, [sp, #0x18]
006622fc  1c 50 8d e5                                      str r5, [sp, #0x1c]
00662300  27 50 cd e5                                      strb r5, [sp, #0x27]
00662304  90 6d fc eb                                      bl #0x57d94c
00662308  08 00 8d e2                                      add r0, sp, #8
0066230c  07 10 a0 e1                                      mov r1, r7
00662310  20 20 8d e2                                      add r2, sp, #0x20
00662314  08 50 8d e5                                      str r5, [sp, #8]
00662318  0c 50 8d e5                                      str r5, [sp, #0xc]
0066231c  10 50 8d e5                                      str r5, [sp, #0x10]
00662320  20 50 8d e5                                      str r5, [sp, #0x20]
00662324  45 f2 ff eb                                      bl #0x65ec40
00662328  05 00 57 e1                                      cmp r7, r5
0066232c  14 00 00 da                                      ble #0x662384
00662330  05 40 a0 e1                                      mov r4, r5
00662334  14 20 9d e5                                      ldr r2, [sp, #0x14]
00662338  08 30 9d e5                                      ldr r3, [sp, #8]
0066233c  0a 10 a0 e1                                      mov r1, sl
00662340  05 20 82 e0                                      add r2, r2, r5
00662344  04 21 83 e7                                      str r2, [r3, r4, lsl #2]
00662348  30 20 96 e5                                      ldr r2, [r6, #0x30]
0066234c  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
00662350  08 50 85 e0                                      add r5, r5, r8
00662354  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
00662358  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
0066235c  08 30 9d e5                                      ldr r3, [sp, #8]
00662360  04 c0 90 e5                                      ldr ip, [r0, #4]
00662364  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00662368  0c 00 a0 e1                                      mov r0, ip
0066236c  01 40 84 e2                                      add r4, r4, #1
00662370  00 c0 9c e5                                      ldr ip, [ip]
00662374  0f e0 a0 e1                                      mov lr, pc
00662378  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
0066237c  07 00 54 e1                                      cmp r4, r7
00662380  eb ff ff 1a                                      bne #0x662334
00662384  40 30 96 e5                                      ldr r3, [r6, #0x40]
00662388  3c 20 96 e5                                      ldr r2, [r6, #0x3c]
0066238c  09 00 a0 e1                                      mov r0, sb
00662390  00 c0 99 e5                                      ldr ip, [sb]
00662394  03 30 62 e0                                      rsb r3, r2, r3
00662398  14 10 9d e5                                      ldr r1, [sp, #0x14]
0066239c  43 31 a0 e1                                      asr r3, r3, #2
006623a0  00 b0 8d e5                                      str fp, [sp]
006623a4  0f e0 a0 e1                                      mov lr, pc
006623a8  10 f0 9c e5                                      ldr pc, [ip, #0x10]
006623ac  08 00 9d e5                                      ldr r0, [sp, #8]
006623b0  00 00 50 e3                                      cmp r0, #0
006623b4  00 00 00 0a                                      beq #0x6623bc
006623b8  24 b8 f2 eb                                      bl #0x310450
006623bc  14 00 9d e5                                      ldr r0, [sp, #0x14]
006623c0  00 00 50 e3                                      cmp r0, #0
006623c4  00 00 00 0a                                      beq #0x6623cc
006623c8  20 b8 f2 eb                                      bl #0x310450
006623cc  2c d0 8d e2                                      add sp, sp, #0x2c
006623d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006623d4, declared_size=852, range_size=852, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender7compileEPSt6vectorIhNS_4core10SAllocatorIhLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::compile(std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >*)
; decoder-mode: arm
006623d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006623d8  44 d0 4d e2                                      sub sp, sp, #0x44
006623dc  00 30 90 e5                                      ldr r3, [r0]
006623e0  0c 10 8d e5                                      str r1, [sp, #0xc]
006623e4  00 40 a0 e1                                      mov r4, r0
006623e8  0f e0 a0 e1                                      mov lr, pc
006623ec  78 f0 93 e5                                      ldr pc, [r3, #0x78]
006623f0  34 10 94 e5                                      ldr r1, [r4, #0x34]
006623f4  30 20 94 e5                                      ldr r2, [r4, #0x30]
006623f8  00 30 94 e5                                      ldr r3, [r4]
006623fc  00 50 a0 e1                                      mov r5, r0
00662400  01 20 62 e0                                      rsb r2, r2, r1
00662404  42 21 a0 e1                                      asr r2, r2, #2
00662408  04 00 a0 e1                                      mov r0, r4
0066240c  08 20 8d e5                                      str r2, [sp, #8]
00662410  0f e0 a0 e1                                      mov lr, pc
00662414  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00662418  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0066241c  04 00 8d e5                                      str r0, [sp, #4]
00662420  00 00 51 e3                                      cmp r1, #0
00662424  b5 00 00 0a                                      beq #0x662700
00662428  40 20 8d e2                                      add r2, sp, #0x40
0066242c  00 50 a0 e3                                      mov r5, #0
00662430  08 50 22 e5                                      str r5, [r2, #-8]!
00662434  08 10 9d e5                                      ldr r1, [sp, #8]
00662438  3c 00 84 e2                                      add r0, r4, #0x3c
0066243c  c7 19 f4 eb                                      bl #0x368b60
00662440  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00662444  40 10 94 e5                                      ldr r1, [r4, #0x40]
00662448  01 10 62 e0                                      rsb r1, r2, r1
0066244c  41 11 b0 e1                                      asrs r1, r1, #2
00662450  06 00 00 0a                                      beq #0x662470
00662454  00 30 a0 e3                                      mov r3, #0
00662458  00 00 00 ea                                      b #0x662460
0066245c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00662460  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
00662464  01 30 83 e2                                      add r3, r3, #1
00662468  01 00 53 e1                                      cmp r3, r1
0066246c  fa ff ff 1a                                      bne #0x66245c
00662470  04 00 a0 e1                                      mov r0, r4
00662474  83 15 f4 eb                                      bl #0x367a88
00662478  00 90 a0 e3                                      mov sb, #0
0066247c  40 20 8d e2                                      add r2, sp, #0x40
00662480  0c 90 22 e5                                      str sb, [r2, #-0xc]!
00662484  a0 00 84 e2                                      add r0, r4, #0xa0
00662488  08 10 9d e5                                      ldr r1, [sp, #8]
0066248c  35 f8 ff eb                                      bl #0x660568
00662490  40 20 8d e2                                      add r2, sp, #0x40
00662494  10 90 22 e5                                      str sb, [r2, #-0x10]!
00662498  54 00 84 e2                                      add r0, r4, #0x54
0066249c  04 10 9d e5                                      ldr r1, [sp, #4]
006624a0  e6 f1 ff eb                                      bl #0x65ec40
006624a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006624a8  30 30 94 e5                                      ldr r3, [r4, #0x30]
006624ac  05 00 91 e8                                      ldm r1, {r0, r2}
006624b0  00 30 93 e5                                      ldr r3, [r3]
006624b4  09 10 a0 e1                                      mov r1, sb
006624b8  02 20 60 e0                                      rsb r2, r0, r2
006624bc  04 b0 93 e5                                      ldr fp, [r3, #4]
006624c0  e6 af f2 eb                                      bl #0x30e460
006624c4  04 20 9d e5                                      ldr r2, [sp, #4]
006624c8  09 00 52 e1                                      cmp r2, sb
006624cc  3a 00 00 da                                      ble #0x6625bc
006624d0  00 90 8d e5                                      str sb, [sp]
006624d4  09 10 a0 e1                                      mov r1, sb
006624d8  00 30 94 e5                                      ldr r3, [r4]
006624dc  04 00 a0 e1                                      mov r0, r4
006624e0  0f e0 a0 e1                                      mov lr, pc
006624e4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006624e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006624ec  00 10 9d e5                                      ldr r1, [sp]
006624f0  00 50 a0 e1                                      mov r5, r0
006624f4  00 20 93 e5                                      ldr r2, [r3]
006624f8  54 30 94 e5                                      ldr r3, [r4, #0x54]
006624fc  0b 00 a0 e1                                      mov r0, fp
00662500  01 20 82 e0                                      add r2, r2, r1
00662504  09 21 83 e7                                      str r2, [r3, sb, lsl #2]
00662508  54 20 94 e5                                      ldr r2, [r4, #0x54]
0066250c  09 10 a0 e1                                      mov r1, sb
00662510  00 30 a0 e3                                      mov r3, #0
00662514  09 71 92 e7                                      ldr r7, [r2, sb, lsl #2]
00662518  00 c0 9b e5                                      ldr ip, [fp]
0066251c  07 20 a0 e1                                      mov r2, r7
00662520  0f e0 a0 e1                                      mov lr, pc
00662524  68 f0 9c e5                                      ldr pc, [ip, #0x68]
00662528  00 30 9b e5                                      ldr r3, [fp]
0066252c  0b 00 a0 e1                                      mov r0, fp
00662530  09 10 a0 e1                                      mov r1, sb
00662534  0f e0 a0 e1                                      mov lr, pc
00662538  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0066253c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00662540  34 80 94 e5                                      ldr r8, [r4, #0x34]
00662544  00 a0 a0 e1                                      mov sl, r0
00662548  08 80 63 e0                                      rsb r8, r3, r8
0066254c  48 81 a0 e1                                      asr r8, r8, #2
00662550  01 00 58 e3                                      cmp r8, #1
00662554  0f 00 00 9a                                      bls #0x662598
00662558  05 70 87 e0                                      add r7, r7, r5
0066255c  01 60 a0 e3                                      mov r6, #1
00662560  00 00 00 ea                                      b #0x662568
00662564  30 30 94 e5                                      ldr r3, [r4, #0x30]
00662568  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0066256c  07 20 a0 e1                                      mov r2, r7
00662570  01 60 86 e2                                      add r6, r6, #1
00662574  04 30 93 e5                                      ldr r3, [r3, #4]
00662578  0a 10 a0 e1                                      mov r1, sl
0066257c  05 70 87 e0                                      add r7, r7, r5
00662580  03 00 a0 e1                                      mov r0, r3
00662584  00 30 93 e5                                      ldr r3, [r3]
00662588  0f e0 a0 e1                                      mov lr, pc
0066258c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00662590  08 00 56 e1                                      cmp r6, r8
00662594  f2 ff ff 1a                                      bne #0x662564
00662598  04 20 9d e5                                      ldr r2, [sp, #4]
0066259c  01 90 89 e2                                      add sb, sb, #1
006625a0  02 00 59 e1                                      cmp sb, r2
006625a4  04 00 00 0a                                      beq #0x6625bc
006625a8  00 10 9d e5                                      ldr r1, [sp]
006625ac  08 30 9d e5                                      ldr r3, [sp, #8]
006625b0  93 15 21 e0                                      mla r1, r3, r5, r1
006625b4  00 10 8d e5                                      str r1, [sp]
006625b8  c5 ff ff ea                                      b #0x6624d4
006625bc  00 50 a0 e3                                      mov r5, #0
006625c0  40 20 8d e2                                      add r2, sp, #0x40
006625c4  14 50 22 e5                                      str r5, [r2, #-0x14]!
006625c8  60 00 84 e2                                      add r0, r4, #0x60
006625cc  04 10 9d e5                                      ldr r1, [sp, #4]
006625d0  9a f1 ff eb                                      bl #0x65ec40
006625d4  40 20 8d e2                                      add r2, sp, #0x40
006625d8  18 50 22 e5                                      str r5, [r2, #-0x18]!
006625dc  04 10 9d e5                                      ldr r1, [sp, #4]
006625e0  6c 00 84 e2                                      add r0, r4, #0x6c
006625e4  da f1 ff eb                                      bl #0x65ed54
006625e8  34 20 94 e5                                      ldr r2, [r4, #0x34]
006625ec  30 30 94 e5                                      ldr r3, [r4, #0x30]
006625f0  2c 50 c4 e5                                      strb r5, [r4, #0x2c]
006625f4  02 30 63 e0                                      rsb r3, r3, r2
006625f8  23 31 b0 e1                                      lsrs r3, r3, #2
006625fc  3c 00 00 1a                                      bne #0x6626f4
00662600  00 10 a0 e3                                      mov r1, #0
00662604  48 00 a0 e3                                      mov r0, #0x48
00662608  e7 46 fb eb                                      bl #0x5341ac
0066260c  00 50 a0 e1                                      mov r5, r0
00662610  14 60 8d e2                                      add r6, sp, #0x14
00662614  09 12 00 eb                                      bl #0x666e40
00662618  00 30 94 e5                                      ldr r3, [r4]
0066261c  05 10 a0 e1                                      mov r1, r5
00662620  78 50 84 e5                                      str r5, [r4, #0x78]
00662624  04 00 a0 e1                                      mov r0, r4
00662628  0f e0 a0 e1                                      mov lr, pc
0066262c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00662630  00 50 a0 e3                                      mov r5, #0
00662634  06 20 a0 e1                                      mov r2, r6
00662638  08 10 9d e5                                      ldr r1, [sp, #8]
0066263c  7c 00 84 e2                                      add r0, r4, #0x7c
00662640  14 50 8d e5                                      str r5, [sp, #0x14]
00662644  18 50 8d e5                                      str r5, [sp, #0x18]
00662648  1c 50 8d e5                                      str r5, [sp, #0x1c]
0066264c  f5 fe ff eb                                      bl #0x662228
00662650  06 00 a0 e1                                      mov r0, r6
00662654  0b fc ff eb                                      bl #0x661688
00662658  40 20 8d e2                                      add r2, sp, #0x40
0066265c  1c 50 22 e5                                      str r5, [r2, #-0x1c]!
00662660  88 00 84 e2                                      add r0, r4, #0x88
00662664  08 10 9d e5                                      ldr r1, [sp, #8]
00662668  be f7 ff eb                                      bl #0x660568
0066266c  00 30 a0 e3                                      mov r3, #0
00662670  40 20 8d e2                                      add r2, sp, #0x40
00662674  08 10 9d e5                                      ldr r1, [sp, #8]
00662678  94 00 84 e2                                      add r0, r4, #0x94
0066267c  20 30 22 e5                                      str r3, [r2, #-0x20]!
00662680  36 19 f4 eb                                      bl #0x368b60
00662684  30 30 94 e5                                      ldr r3, [r4, #0x30]
00662688  34 60 94 e5                                      ldr r6, [r4, #0x34]
0066268c  06 60 63 e0                                      rsb r6, r3, r6
00662690  46 61 b0 e1                                      asrs r6, r6, #2
00662694  01 00 00 1a                                      bne #0x6626a0
00662698  0a 00 00 ea                                      b #0x6626c8
0066269c  30 30 94 e5                                      ldr r3, [r4, #0x30]
006626a0  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
006626a4  00 10 a0 e3                                      mov r1, #0
006626a8  01 50 85 e2                                      add r5, r5, #1
006626ac  04 30 93 e5                                      ldr r3, [r3, #4]
006626b0  03 00 a0 e1                                      mov r0, r3
006626b4  00 30 93 e5                                      ldr r3, [r3]
006626b8  0f e0 a0 e1                                      mov lr, pc
006626bc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
006626c0  06 00 55 e1                                      cmp r5, r6
006626c4  f4 ff ff 1a                                      bne #0x66269c
006626c8  78 30 94 e5                                      ldr r3, [r4, #0x78]
006626cc  00 10 a0 e3                                      mov r1, #0
006626d0  ac 10 84 e5                                      str r1, [r4, #0xac]
006626d4  03 00 a0 e1                                      mov r0, r3
006626d8  00 c0 93 e5                                      ldr ip, [r3]
006626dc  01 20 a0 e1                                      mov r2, r1
006626e0  01 30 a0 e3                                      mov r3, #1
006626e4  0f e0 a0 e1                                      mov lr, pc
006626e8  50 f0 9c e5                                      ldr pc, [ip, #0x50]
006626ec  44 d0 8d e2                                      add sp, sp, #0x44
006626f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006626f4  04 00 a0 e1                                      mov r0, r4
006626f8  06 16 00 eb                                      bl #0x667f18
006626fc  bf ff ff ea                                      b #0x662600
00662700  40 20 8d e2                                      add r2, sp, #0x40
00662704  00 30 a0 e3                                      mov r3, #0
00662708  01 30 62 e5                                      strb r3, [r2, #-1]!
0066270c  48 30 84 e2                                      add r3, r4, #0x48
00662710  0c 30 8d e5                                      str r3, [sp, #0xc]
00662714  08 30 9d e5                                      ldr r3, [sp, #8]
00662718  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0066271c  93 05 01 e0                                      mul r1, r3, r5
00662720  89 6c fc eb                                      bl #0x57d94c
00662724  3f ff ff ea                                      b #0x662428

; FUNCTION 0x00662728, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZTv0_n12_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD0Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
00662728  00 30 90 e5                                      ldr r3, [r0]
0066272c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00662730  03 00 80 e0                                      add r0, r0, r3
00662734  ac fc ff ea                                      b #0x6619ec

; FUNCTION 0x00662738, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender
; alias: _ZTv0_n12_N6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD1Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender()
; decoder-mode: arm
00662738  00 30 90 e5                                      ldr r3, [r0]
0066273c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00662740  03 00 80 e0                                      add r0, r0, r3
00662744  48 fc ff ea                                      b #0x66186c
