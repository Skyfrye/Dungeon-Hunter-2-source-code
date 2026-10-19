; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062db98, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet19setMismatchBehaviorENS1_19E_MISMATCH_BEHAVIORE
; demangled: glitch::collada::CAnimationSet::setMismatchBehavior(glitch::collada::CAnimationSet::E_MISMATCH_BEHAVIOR)
; decoder-mode: arm
0062db98  08 10 80 e5                                      str r1, [r0, #8]
0062db9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062e0fc, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSetD2Ev
; demangled: glitch::collada::CAnimationSet::~CAnimationSet()
; decoder-mode: arm
0062e0fc  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0062e100  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0062e104  10 40 2d e9                                      push {r4, lr}
0062e108  03 30 8f e0                                      add r3, pc, r3
0062e10c  02 20 93 e7                                      ldr r2, [r3, r2]
0062e110  00 40 a0 e1                                      mov r4, r0
0062e114  08 20 82 e2                                      add r2, r2, #8
0062e118  00 20 80 e5                                      str r2, [r0]
0062e11c  ed c3 00 eb                                      bl #0x65f0d8
0062e120  58 00 94 e5                                      ldr r0, [r4, #0x58]
0062e124  00 00 50 e3                                      cmp r0, #0
0062e128  00 00 00 0a                                      beq #0x62e130
0062e12c  c7 88 f3 eb                                      bl #0x310450
0062e130  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0062e134  00 00 50 e3                                      cmp r0, #0
0062e138  00 00 00 0a                                      beq #0x62e140
0062e13c  c3 88 f3 eb                                      bl #0x310450
0062e140  40 00 94 e5                                      ldr r0, [r4, #0x40]
0062e144  00 00 50 e3                                      cmp r0, #0
0062e148  00 00 00 0a                                      beq #0x62e150
0062e14c  bf 88 f3 eb                                      bl #0x310450
0062e150  30 00 94 e5                                      ldr r0, [r4, #0x30]
0062e154  00 00 50 e3                                      cmp r0, #0
0062e158  00 00 00 0a                                      beq #0x62e160
0062e15c  bb 88 f3 eb                                      bl #0x310450
0062e160  24 00 84 e2                                      add r0, r4, #0x24
0062e164  d3 ff ff eb                                      bl #0x62e0b8
0062e168  18 00 94 e5                                      ldr r0, [r4, #0x18]
0062e16c  00 00 50 e3                                      cmp r0, #0
0062e170  00 00 00 0a                                      beq #0x62e178
0062e174  b5 88 f3 eb                                      bl #0x310450
0062e178  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0062e17c  00 00 50 e3                                      cmp r0, #0
0062e180  00 00 00 0a                                      beq #0x62e188
0062e184  b1 88 f3 eb                                      bl #0x310450
0062e188  04 00 a0 e1                                      mov r0, r4
0062e18c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0062e190  88 69 36 00 c8 3c 00 00                          .byte 0x88, 0x69, 0x36, 0x00, 0xc8, 0x3c, 0x00, 0x00

; FUNCTION 0x0065f004, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet12remAnimationEPKNS0_10SAnimationE
; demangled: glitch::collada::CAnimationSet::remAnimation(glitch::collada::SAnimation const*)
; decoder-mode: arm
0065f004  00 00 a0 e3                                      mov r0, #0
0065f008  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f00c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet10getChannelEj
; demangled: glitch::collada::CAnimationSet::getChannel(unsigned int)
; decoder-mode: arm
0065f00c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0065f010  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
0065f014  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f018, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet10getChannelEj
; demangled: glitch::collada::CAnimationSet::getChannel(unsigned int) const
; decoder-mode: arm
0065f018  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0065f01c  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
0065f020  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f024, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet17getAnimationTrackEi
; demangled: glitch::collada::CAnimationSet::getAnimationTrack(int) const
; decoder-mode: arm
0065f024  10 40 2d e9                                      push {r4, lr}
0065f028  00 30 90 e5                                      ldr r3, [r0]
0065f02c  0f e0 a0 e1                                      mov lr, pc
0065f030  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0065f034  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f038, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet19getAnimationTrackExEi
; demangled: glitch::collada::CAnimationSet::getAnimationTrackEx(int)
; decoder-mode: arm
0065f038  18 30 90 e5                                      ldr r3, [r0, #0x18]
0065f03c  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
0065f040  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f044, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet17getAnimationCountEv
; demangled: glitch::collada::CAnimationSet::getAnimationCount() const
; decoder-mode: arm
0065f044  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f048  28 00 90 e5                                      ldr r0, [r0, #0x28]
0065f04c  00 00 63 e0                                      rsb r0, r3, r0
0065f050  c0 01 a0 e1                                      asr r0, r0, #3
0065f054  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f058, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet21getAnimatedTrackCountEv
; demangled: glitch::collada::CAnimationSet::getAnimatedTrackCount() const
; decoder-mode: arm
0065f058  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0065f05c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f060, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet18getAnimationLengthEj
; demangled: glitch::collada::CAnimationSet::getAnimationLength(unsigned int) const
; decoder-mode: arm
0065f060  5c 20 90 e5                                      ldr r2, [r0, #0x5c]
0065f064  58 30 90 e5                                      ldr r3, [r0, #0x58]
0065f068  02 20 63 e0                                      rsb r2, r3, r2
0065f06c  42 01 51 e1                                      cmp r1, r2, asr #2
0065f070  00 00 a0 23                                      movhs r0, #0
0065f074  01 01 93 37                                      ldrlo r0, [r3, r1, lsl #2]
0065f078  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f07c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet17getAnimationStartEj
; demangled: glitch::collada::CAnimationSet::getAnimationStart(unsigned int) const
; decoder-mode: arm
0065f07c  44 20 90 e5                                      ldr r2, [r0, #0x44]
0065f080  40 30 90 e5                                      ldr r3, [r0, #0x40]
0065f084  02 20 63 e0                                      rsb r2, r3, r2
0065f088  42 01 51 e1                                      cmp r1, r2, asr #2
0065f08c  00 00 a0 23                                      movhs r0, #0
0065f090  01 01 93 37                                      ldrlo r0, [r3, r1, lsl #2]
0065f094  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f098, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet15getAnimationEndEj
; demangled: glitch::collada::CAnimationSet::getAnimationEnd(unsigned int) const
; decoder-mode: arm
0065f098  50 20 90 e5                                      ldr r2, [r0, #0x50]
0065f09c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0065f0a0  02 20 63 e0                                      rsb r2, r3, r2
0065f0a4  42 01 51 e1                                      cmp r1, r2, asr #2
0065f0a8  00 00 a0 23                                      movhs r0, #0
0065f0ac  01 01 93 37                                      ldrlo r0, [r3, r1, lsl #2]
0065f0b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f0b4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet11getDatabaseEi
; demangled: glitch::collada::CAnimationSet::getDatabase(int)
; decoder-mode: arm
0065f0b4  24 00 90 e5                                      ldr r0, [r0, #0x24]
0065f0b8  81 01 80 e0                                      add r0, r0, r1, lsl #3
0065f0bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f0c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZNK6glitch7collada13CAnimationSet10getBindingEi
; demangled: glitch::collada::CAnimationSet::getBinding(int) const
; decoder-mode: arm
0065f0c0  30 30 90 e5                                      ldr r3, [r0, #0x30]
0065f0c4  0c 00 a0 e3                                      mov r0, #0xc
0065f0c8  90 31 20 e0                                      mla r0, r0, r1, r3
0065f0cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f0d0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet19remAnimationLibraryERNS0_16CColladaDatabaseE
; demangled: glitch::collada::CAnimationSet::remAnimationLibrary(glitch::collada::CColladaDatabase&)
; decoder-mode: arm
0065f0d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f0d4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet19remAnimationLibraryEi
; demangled: glitch::collada::CAnimationSet::remAnimationLibrary(int)
; decoder-mode: arm
0065f0d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f0d8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet20remAnimationTemplateEv
; demangled: glitch::collada::CAnimationSet::remAnimationTemplate()
; decoder-mode: arm
0065f0d8  10 40 2d e9                                      push {r4, lr}
0065f0dc  64 30 90 e5                                      ldr r3, [r0, #0x64]
0065f0e0  00 00 53 e3                                      cmp r3, #0
0065f0e4  03 00 00 0a                                      beq #0x65f0f8
0065f0e8  03 00 a0 e1                                      mov r0, r3
0065f0ec  00 30 93 e5                                      ldr r3, [r3]
0065f0f0  0f e0 a0 e1                                      mov lr, pc
0065f0f4  04 f0 93 e5                                      ldr pc, [r3, #4]
0065f0f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f2ac, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSetD1Ev
; demangled: glitch::collada::CAnimationSet::~CAnimationSet()
; decoder-mode: arm
0065f2ac  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0065f2b0  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0065f2b4  10 40 2d e9                                      push {r4, lr}
0065f2b8  03 30 8f e0                                      add r3, pc, r3
0065f2bc  02 20 93 e7                                      ldr r2, [r3, r2]
0065f2c0  00 40 a0 e1                                      mov r4, r0
0065f2c4  08 20 82 e2                                      add r2, r2, #8
0065f2c8  00 20 80 e5                                      str r2, [r0]
0065f2cc  81 ff ff eb                                      bl #0x65f0d8
0065f2d0  58 00 94 e5                                      ldr r0, [r4, #0x58]
0065f2d4  00 00 50 e3                                      cmp r0, #0
0065f2d8  00 00 00 0a                                      beq #0x65f2e0
0065f2dc  5b c4 f2 eb                                      bl #0x310450
0065f2e0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0065f2e4  00 00 50 e3                                      cmp r0, #0
0065f2e8  00 00 00 0a                                      beq #0x65f2f0
0065f2ec  57 c4 f2 eb                                      bl #0x310450
0065f2f0  40 00 94 e5                                      ldr r0, [r4, #0x40]
0065f2f4  00 00 50 e3                                      cmp r0, #0
0065f2f8  00 00 00 0a                                      beq #0x65f300
0065f2fc  53 c4 f2 eb                                      bl #0x310450
0065f300  30 00 94 e5                                      ldr r0, [r4, #0x30]
0065f304  00 00 50 e3                                      cmp r0, #0
0065f308  00 00 00 0a                                      beq #0x65f310
0065f30c  4f c4 f2 eb                                      bl #0x310450
0065f310  24 00 84 e2                                      add r0, r4, #0x24
0065f314  67 3b ff eb                                      bl #0x62e0b8
0065f318  18 00 94 e5                                      ldr r0, [r4, #0x18]
0065f31c  00 00 50 e3                                      cmp r0, #0
0065f320  00 00 00 0a                                      beq #0x65f328
0065f324  49 c4 f2 eb                                      bl #0x310450
0065f328  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0065f32c  00 00 50 e3                                      cmp r0, #0
0065f330  00 00 00 0a                                      beq #0x65f338
0065f334  45 c4 f2 eb                                      bl #0x310450
0065f338  04 00 a0 e1                                      mov r0, r4
0065f33c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0065f340  d8 57 33 00 c8 3c 00 00                          .byte 0xd8, 0x57, 0x33, 0x00, 0xc8, 0x3c, 0x00, 0x00

; FUNCTION 0x0065f348, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSetD0Ev
; demangled: glitch::collada::CAnimationSet::~CAnimationSet()
; decoder-mode: arm
0065f348  10 40 2d e9                                      push {r4, lr}
0065f34c  00 40 a0 e1                                      mov r4, r0
0065f350  d5 ff ff eb                                      bl #0x65f2ac
0065f354  04 00 a0 e1                                      mov r0, r4
0065f358  d4 bb f2 eb                                      bl #0x30e2b0
0065f35c  04 00 a0 e1                                      mov r0, r4
0065f360  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006600a4, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet20addAnimationTemplateEPNS0_16CColladaDatabaseE
; demangled: glitch::collada::CAnimationSet::addAnimationTemplate(glitch::collada::CColladaDatabase*)
; decoder-mode: arm
006600a4  70 40 2d e9                                      push {r4, r5, r6, lr}
006600a8  00 40 a0 e1                                      mov r4, r0
006600ac  01 60 a0 e1                                      mov r6, r1
006600b0  10 00 a0 e3                                      mov r0, #0x10
006600b4  00 10 a0 e3                                      mov r1, #0
006600b8  3b 50 fb eb                                      bl #0x5341ac
006600bc  06 10 a0 e1                                      mov r1, r6
006600c0  00 50 a0 e1                                      mov r5, r0
006600c4  d9 09 02 eb                                      bl #0x6e2830
006600c8  64 50 84 e5                                      str r5, [r4, #0x64]
006600cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006600d0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet20addAnimationTemplateEPNS0_10CSceneNodeE
; demangled: glitch::collada::CAnimationSet::addAnimationTemplate(glitch::collada::CSceneNode*)
; decoder-mode: arm
006600d0  70 40 2d e9                                      push {r4, r5, r6, lr}
006600d4  00 40 a0 e1                                      mov r4, r0
006600d8  01 60 a0 e1                                      mov r6, r1
006600dc  10 00 a0 e3                                      mov r0, #0x10
006600e0  00 10 a0 e3                                      mov r1, #0
006600e4  30 50 fb eb                                      bl #0x5341ac
006600e8  06 10 a0 e1                                      mov r1, r6
006600ec  00 50 a0 e1                                      mov r5, r0
006600f0  55 09 02 eb                                      bl #0x6e264c
006600f4  64 50 84 e5                                      str r5, [r4, #0x64]
006600f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006600fc, declared_size=216, range_size=216, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet19addAnimationLibraryEPKc
; demangled: glitch::collada::CAnimationSet::addAnimationLibrary(char const*)
; decoder-mode: arm
006600fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00660100  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
00660104  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
00660108  00 20 a0 e3                                      mov r2, #0
0066010c  04 40 8f e0                                      add r4, pc, r4
00660110  06 70 94 e7                                      ldr r7, [r4, r6]
00660114  08 d0 4d e2                                      sub sp, sp, #8
00660118  00 50 a0 e1                                      mov r5, r0
0066011c  02 30 a0 e1                                      mov r3, r2
00660120  00 00 97 e5                                      ldr r0, [r7]
00660124  01 80 a0 e1                                      mov r8, r1
00660128  cb ea ff eb                                      bl #0x65ac5c
0066012c  00 00 50 e3                                      cmp r0, #0
00660130  19 00 00 0a                                      beq #0x66019c
00660134  90 20 9f e5                                      ldr r2, [pc, #0x90]
00660138  00 30 97 e5                                      ldr r3, [r7]
0066013c  00 10 a0 e3                                      mov r1, #0
00660140  02 20 94 e7                                      ldr r2, [r4, r2]
00660144  28 80 d3 e5                                      ldrb r8, [r3, #0x28]
00660148  28 10 c3 e5                                      strb r1, [r3, #0x28]
0066014c  05 00 8d e8                                      stm sp, {r0, r2}
00660150  04 30 90 e5                                      ldr r3, [r0, #4]
00660154  0d 70 a0 e1                                      mov r7, sp
00660158  01 00 53 e1                                      cmp r3, r1
0066015c  01 30 83 12                                      addne r3, r3, #1
00660160  04 30 80 15                                      strne r3, [r0, #4]
00660164  00 30 95 e5                                      ldr r3, [r5]
00660168  05 00 a0 e1                                      mov r0, r5
0066016c  0d 10 a0 e1                                      mov r1, sp
00660170  0f e0 a0 e1                                      mov lr, pc
00660174  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00660178  00 50 a0 e1                                      mov r5, r0
0066017c  0d 00 a0 e1                                      mov r0, sp
00660180  bb e4 fe eb                                      bl #0x619474
00660184  06 30 94 e7                                      ldr r3, [r4, r6]
00660188  00 30 93 e5                                      ldr r3, [r3]
0066018c  28 80 c3 e5                                      strb r8, [r3, #0x28]
00660190  05 00 a0 e1                                      mov r0, r5
00660194  08 d0 8d e2                                      add sp, sp, #8
00660198  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0066019c  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
006601a0  08 10 a0 e1                                      mov r1, r8
006601a4  00 00 8f e0                                      add r0, pc, r0
006601a8  35 b7 f2 eb                                      bl #0x30de84
006601ac  24 30 95 e5                                      ldr r3, [r5, #0x24]
006601b0  28 50 95 e5                                      ldr r5, [r5, #0x28]
006601b4  05 50 63 e0                                      rsb r5, r3, r5
006601b8  c5 51 a0 e1                                      asr r5, r5, #3
006601bc  01 50 45 e2                                      sub r5, r5, #1
006601c0  f2 ff ff ea                                      b #0x660190
; mapping-symbol data/literal pool
006601c4  84 49 33 00 48 44 00 00 10 47 00 00 b4 56 28 00  .byte 0x84, 0x49, 0x33, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00, 0xb4, 0x56, 0x28, 0x00

; FUNCTION 0x006601d4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet19addAnimationLibraryERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CAnimationSet::addAnimationLibrary(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
006601d4  10 40 2d e9                                      push {r4, lr}
006601d8  00 40 a0 e1                                      mov r4, r0
006601dc  24 00 80 e2                                      add r0, r0, #0x24
006601e0  b1 3a ff eb                                      bl #0x62ecac
006601e4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006601e8  28 00 94 e5                                      ldr r0, [r4, #0x28]
006601ec  00 00 63 e0                                      rsb r0, r3, r0
006601f0  c0 01 a0 e1                                      asr r0, r0, #3
006601f4  01 00 40 e2                                      sub r0, r0, #1
006601f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006601fc, declared_size=684, range_size=684, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet12addAnimationEPKNS0_10SAnimationE
; demangled: glitch::collada::CAnimationSet::addAnimation(glitch::collada::SAnimation const*)
; decoder-mode: arm
006601fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00660200  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00660204  10 b0 90 e5                                      ldr fp, [r0, #0x10]
00660208  8c 22 9f e5                                      ldr r2, [pc, #0x28c]
0066020c  14 d0 4d e2                                      sub sp, sp, #0x14
00660210  0b b0 63 e0                                      rsb fp, r3, fp
00660214  0c 10 8d e5                                      str r1, [sp, #0xc]
00660218  4b b1 b0 e1                                      asrs fp, fp, #2
0066021c  02 20 8f e0                                      add r2, pc, r2
00660220  00 50 a0 e1                                      mov r5, r0
00660224  10 40 91 e5                                      ldr r4, [r1, #0x10]
00660228  40 00 00 0a                                      beq #0x660330
0066022c  6c 12 9f e5                                      ldr r1, [pc, #0x26c]
00660230  00 60 a0 e3                                      mov r6, #0
00660234  0c a0 a0 e3                                      mov sl, #0xc
00660238  01 90 92 e7                                      ldr sb, [r2, r1]
0066023c  60 22 9f e5                                      ldr r2, [pc, #0x260]
00660240  01 80 a0 e3                                      mov r8, #1
00660244  06 71 a0 e1                                      lsl r7, r6, #2
00660248  02 20 8f e0                                      add r2, pc, r2
0066024c  08 20 8d e5                                      str r2, [sp, #8]
00660250  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
00660254  08 30 94 e5                                      ldr r3, [r4, #8]
00660258  00 20 99 e5                                      ldr r2, [sb]
0066025c  08 10 91 e5                                      ldr r1, [r1, #8]
00660260  5b 00 53 e3                                      cmp r3, #0x5b
00660264  9a 21 22 e0                                      mla r2, sl, r1, r2
00660268  24 00 00 8a                                      bhi #0x660300
0066026c  a3 12 a0 e1                                      lsr r1, r3, #5
00660270  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
00660274  1f 30 03 e2                                      and r3, r3, #0x1f
00660278  18 23 12 e0                                      ands r2, r2, r8, lsl r3
0066027c  13 00 00 0a                                      beq #0x6602d0
00660280  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00660284  04 10 94 e5                                      ldr r1, [r4, #4]
00660288  07 70 93 e7                                      ldr r7, [r3, r7]
0066028c  04 00 97 e5                                      ldr r0, [r7, #4]
00660290  21 b8 f2 eb                                      bl #0x30e31c
00660294  00 00 50 e3                                      cmp r0, #0
00660298  0c 00 00 1a                                      bne #0x6602d0
0066029c  08 30 94 e5                                      ldr r3, [r4, #8]
006602a0  0e 00 53 e3                                      cmp r3, #0xe
006602a4  1c 00 00 0a                                      beq #0x66031c
006602a8  56 00 53 e3                                      cmp r3, #0x56
006602ac  02 00 00 0a                                      beq #0x6602bc
006602b0  06 00 a0 e1                                      mov r0, r6
006602b4  14 d0 8d e2                                      add sp, sp, #0x14
006602b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006602bc  0c 00 97 e5                                      ldr r0, [r7, #0xc]
006602c0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006602c4  14 b8 f2 eb                                      bl #0x30e31c
006602c8  00 00 50 e3                                      cmp r0, #0
006602cc  f7 ff ff 0a                                      beq #0x6602b0
006602d0  01 60 86 e2                                      add r6, r6, #1
006602d4  0b 00 56 e1                                      cmp r6, fp
006602d8  14 00 00 0a                                      beq #0x660330
006602dc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006602e0  00 20 99 e5                                      ldr r2, [sb]
006602e4  06 71 a0 e1                                      lsl r7, r6, #2
006602e8  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
006602ec  08 30 94 e5                                      ldr r3, [r4, #8]
006602f0  08 10 91 e5                                      ldr r1, [r1, #8]
006602f4  5b 00 53 e3                                      cmp r3, #0x5b
006602f8  9a 21 22 e0                                      mla r2, sl, r1, r2
006602fc  da ff ff 9a                                      bls #0x66026c
00660300  08 00 9d e5                                      ldr r0, [sp, #8]
00660304  04 20 8d e5                                      str r2, [sp, #4]
00660308  00 30 8d e5                                      str r3, [sp]
0066030c  e7 a2 02 eb                                      bl #0x708eb0
00660310  00 30 9d e5                                      ldr r3, [sp]
00660314  04 20 9d e5                                      ldr r2, [sp, #4]
00660318  d3 ff ff ea                                      b #0x66026c
0066031c  0c 20 d7 e5                                      ldrb r2, [r7, #0xc]
00660320  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
00660324  03 00 52 e1                                      cmp r2, r3
00660328  e8 ff ff 1a                                      bne #0x6602d0
0066032c  df ff ff ea                                      b #0x6602b0
00660330  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00660334  e9 c5 fe eb                                      bl #0x611ae0
00660338  00 60 50 e2                                      subs r6, r0, #0
0066033c  00 00 e0 03                                      mvneq r0, #0
00660340  db ff ff 0a                                      beq #0x6602b4
00660344  10 a0 95 e5                                      ldr sl, [r5, #0x10]
00660348  14 30 95 e5                                      ldr r3, [r5, #0x14]
0066034c  03 00 5a e1                                      cmp sl, r3
00660350  11 00 00 0a                                      beq #0x66039c
00660354  00 40 8a e5                                      str r4, [sl]
00660358  10 30 95 e5                                      ldr r3, [r5, #0x10]
0066035c  04 30 83 e2                                      add r3, r3, #4
00660360  10 30 85 e5                                      str r3, [r5, #0x10]
00660364  1c 80 95 e5                                      ldr r8, [r5, #0x1c]
00660368  20 30 95 e5                                      ldr r3, [r5, #0x20]
0066036c  03 00 58 e1                                      cmp r8, r3
00660370  29 00 00 0a                                      beq #0x66041c
00660374  00 60 88 e5                                      str r6, [r8]
00660378  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0066037c  04 30 83 e2                                      add r3, r3, #4
00660380  1c 30 85 e5                                      str r3, [r5, #0x1c]
00660384  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00660388  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066038c  00 00 63 e0                                      rsb r0, r3, r0
00660390  40 01 a0 e1                                      asr r0, r0, #2
00660394  01 00 40 e2                                      sub r0, r0, #1
00660398  c5 ff ff ea                                      b #0x6602b4
0066039c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006603a0  0a 30 63 e0                                      rsb r3, r3, sl
006603a4  43 31 a0 e1                                      asr r3, r3, #2
006603a8  01 00 53 e3                                      cmp r3, #1
006603ac  03 80 83 20                                      addhs r8, r3, r3
006603b0  01 80 83 32                                      addlo r8, r3, #1
006603b4  07 01 78 e3                                      cmn r8, #0xc0000001
006603b8  15 00 00 8a                                      bhi #0x660414
006603bc  08 00 53 e1                                      cmp r3, r8
006603c0  13 00 00 8a                                      bhi #0x660414
006603c4  08 81 a0 e1                                      lsl r8, r8, #2
006603c8  00 10 a0 e3                                      mov r1, #0
006603cc  08 00 a0 e1                                      mov r0, r8
006603d0  64 c0 f2 eb                                      bl #0x310568
006603d4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006603d8  00 70 a0 e1                                      mov r7, r0
006603dc  01 a0 5a e0                                      subs sl, sl, r1
006603e0  00 a0 a0 01                                      moveq sl, r0
006603e4  02 00 00 0a                                      beq #0x6603f4
006603e8  0a 20 a0 e1                                      mov r2, sl
006603ec  d1 b6 f2 eb                                      bl #0x30df38
006603f0  0a a0 80 e0                                      add sl, r0, sl
006603f4  04 40 8a e4                                      str r4, [sl], #4
006603f8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006603fc  08 80 87 e0                                      add r8, r7, r8
00660400  12 c0 f2 eb                                      bl #0x310450
00660404  10 a0 85 e5                                      str sl, [r5, #0x10]
00660408  14 80 85 e5                                      str r8, [r5, #0x14]
0066040c  0c 70 85 e5                                      str r7, [r5, #0xc]
00660410  d3 ff ff ea                                      b #0x660364
00660414  03 81 e0 e3                                      mvn r8, #0xc0000000
00660418  e9 ff ff ea                                      b #0x6603c4
0066041c  18 30 95 e5                                      ldr r3, [r5, #0x18]
00660420  08 30 63 e0                                      rsb r3, r3, r8
00660424  43 31 a0 e1                                      asr r3, r3, #2
00660428  01 00 53 e3                                      cmp r3, #1
0066042c  03 70 83 20                                      addhs r7, r3, r3
00660430  01 70 83 32                                      addlo r7, r3, #1
00660434  07 01 77 e3                                      cmn r7, #0xc0000001
00660438  15 00 00 8a                                      bhi #0x660494
0066043c  07 00 53 e1                                      cmp r3, r7
00660440  13 00 00 8a                                      bhi #0x660494
00660444  07 71 a0 e1                                      lsl r7, r7, #2
00660448  00 10 a0 e3                                      mov r1, #0
0066044c  07 00 a0 e1                                      mov r0, r7
00660450  44 c0 f2 eb                                      bl #0x310568
00660454  18 10 95 e5                                      ldr r1, [r5, #0x18]
00660458  00 40 a0 e1                                      mov r4, r0
0066045c  01 80 58 e0                                      subs r8, r8, r1
00660460  00 80 a0 01                                      moveq r8, r0
00660464  02 00 00 0a                                      beq #0x660474
00660468  08 20 a0 e1                                      mov r2, r8
0066046c  b1 b6 f2 eb                                      bl #0x30df38
00660470  08 80 80 e0                                      add r8, r0, r8
00660474  04 60 88 e4                                      str r6, [r8], #4
00660478  18 00 95 e5                                      ldr r0, [r5, #0x18]
0066047c  07 70 84 e0                                      add r7, r4, r7
00660480  f2 bf f2 eb                                      bl #0x310450
00660484  1c 80 85 e5                                      str r8, [r5, #0x1c]
00660488  20 70 85 e5                                      str r7, [r5, #0x20]
0066048c  18 40 85 e5                                      str r4, [r5, #0x18]
00660490  bb ff ff ea                                      b #0x660384
00660494  03 71 e0 e3                                      mvn r7, #0xc0000000
00660498  e9 ff ff ea                                      b #0x660444
; mapping-symbol data/literal pool
0066049c  74 48 33 00 4c 45 00 00 80 1a 26 00              .byte 0x74, 0x48, 0x33, 0x00, 0x4c, 0x45, 0x00, 0x00, 0x80, 0x1a, 0x26, 0x00

; FUNCTION 0x006605ac, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet15CompileInternalEv
; demangled: glitch::collada::CAnimationSet::CompileInternal()
; decoder-mode: arm
006605ac  70 40 2d e9                                      push {r4, r5, r6, lr}
006605b0  24 30 90 e5                                      ldr r3, [r0, #0x24]
006605b4  28 10 90 e5                                      ldr r1, [r0, #0x28]
006605b8  40 60 80 e2                                      add r6, r0, #0x40
006605bc  00 40 a0 e1                                      mov r4, r0
006605c0  01 10 63 e0                                      rsb r1, r3, r1
006605c4  10 d0 4d e2                                      sub sp, sp, #0x10
006605c8  06 00 a0 e1                                      mov r0, r6
006605cc  c1 11 a0 e1                                      asr r1, r1, #3
006605d0  2d fe ff eb                                      bl #0x65fe8c
006605d4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006605d8  28 10 94 e5                                      ldr r1, [r4, #0x28]
006605dc  10 20 8d e2                                      add r2, sp, #0x10
006605e0  00 50 a0 e3                                      mov r5, #0
006605e4  01 10 63 e0                                      rsb r1, r3, r1
006605e8  04 50 22 e5                                      str r5, [r2, #-4]!
006605ec  06 00 a0 e1                                      mov r0, r6
006605f0  c1 11 a0 e1                                      asr r1, r1, #3
006605f4  db ff ff eb                                      bl #0x660568
006605f8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006605fc  28 10 94 e5                                      ldr r1, [r4, #0x28]
00660600  4c 60 84 e2                                      add r6, r4, #0x4c
00660604  06 00 a0 e1                                      mov r0, r6
00660608  01 10 63 e0                                      rsb r1, r3, r1
0066060c  c1 11 a0 e1                                      asr r1, r1, #3
00660610  1d fe ff eb                                      bl #0x65fe8c
00660614  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660618  28 10 94 e5                                      ldr r1, [r4, #0x28]
0066061c  10 20 8d e2                                      add r2, sp, #0x10
00660620  08 50 22 e5                                      str r5, [r2, #-8]!
00660624  01 10 63 e0                                      rsb r1, r3, r1
00660628  06 00 a0 e1                                      mov r0, r6
0066062c  c1 11 a0 e1                                      asr r1, r1, #3
00660630  cc ff ff eb                                      bl #0x660568
00660634  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660638  28 10 94 e5                                      ldr r1, [r4, #0x28]
0066063c  58 60 84 e2                                      add r6, r4, #0x58
00660640  06 00 a0 e1                                      mov r0, r6
00660644  01 10 63 e0                                      rsb r1, r3, r1
00660648  c1 11 a0 e1                                      asr r1, r1, #3
0066064c  0e fe ff eb                                      bl #0x65fe8c
00660650  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660654  28 10 94 e5                                      ldr r1, [r4, #0x28]
00660658  10 20 8d e2                                      add r2, sp, #0x10
0066065c  0c 50 22 e5                                      str r5, [r2, #-0xc]!
00660660  01 10 63 e0                                      rsb r1, r3, r1
00660664  06 00 a0 e1                                      mov r0, r6
00660668  c1 11 a0 e1                                      asr r1, r1, #3
0066066c  bd ff ff eb                                      bl #0x660568
00660670  28 20 94 e5                                      ldr r2, [r4, #0x28]
00660674  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660678  02 30 63 e0                                      rsb r3, r3, r2
0066067c  a3 31 b0 e1                                      lsrs r3, r3, #3
00660680  20 00 00 0a                                      beq #0x660708
00660684  02 c1 e0 e3                                      mvn ip, #0x80000000
00660688  02 01 a0 e3                                      mov r0, #0x80000000
0066068c  40 30 94 e5                                      ldr r3, [r4, #0x40]
00660690  05 c1 83 e7                                      str ip, [r3, r5, lsl #2]
00660694  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00660698  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0066069c  24 20 94 e5                                      ldr r2, [r4, #0x24]
006606a0  40 30 94 e5                                      ldr r3, [r4, #0x40]
006606a4  85 21 92 e7                                      ldr r2, [r2, r5, lsl #3]
006606a8  24 20 92 e5                                      ldr r2, [r2, #0x24]
006606ac  20 20 92 e5                                      ldr r2, [r2, #0x20]
006606b0  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
006606b4  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
006606b8  24 20 94 e5                                      ldr r2, [r4, #0x24]
006606bc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006606c0  85 21 92 e7                                      ldr r2, [r2, r5, lsl #3]
006606c4  24 20 92 e5                                      ldr r2, [r2, #0x24]
006606c8  20 20 92 e5                                      ldr r2, [r2, #0x20]
006606cc  20 20 92 e5                                      ldr r2, [r2, #0x20]
006606d0  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
006606d4  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
006606d8  40 20 94 e5                                      ldr r2, [r4, #0x40]
006606dc  58 30 94 e5                                      ldr r3, [r4, #0x58]
006606e0  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
006606e4  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
006606e8  01 20 62 e0                                      rsb r2, r2, r1
006606ec  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
006606f0  28 20 94 e5                                      ldr r2, [r4, #0x28]
006606f4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006606f8  01 50 85 e2                                      add r5, r5, #1
006606fc  02 30 63 e0                                      rsb r3, r3, r2
00660700  c3 01 55 e1                                      cmp r5, r3, asr #3
00660704  e0 ff ff 3a                                      blo #0x66068c
00660708  10 d0 8d e2                                      add sp, sp, #0x10
0066070c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00660710, declared_size=996, range_size=996, mode=arm
; class-group: glitch::collada::CAnimationSet
; alias: _ZN6glitch7collada13CAnimationSet7compileEv
; demangled: glitch::collada::CAnimationSet::compile()
; decoder-mode: arm
00660710  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00660714  00 40 a0 e1                                      mov r4, r0
00660718  64 00 90 e5                                      ldr r0, [r0, #0x64]
0066071c  14 d0 4d e2                                      sub sp, sp, #0x14
00660720  00 00 50 e3                                      cmp r0, #0
00660724  00 00 00 0a                                      beq #0x66072c
00660728  fc 1a 00 eb                                      bl #0x667320
0066072c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660730  28 20 94 e5                                      ldr r2, [r4, #0x28]
00660734  02 10 63 e0                                      rsb r1, r3, r2
00660738  a1 11 b0 e1                                      lsrs r1, r1, #3
0066073c  2f 00 00 0a                                      beq #0x660800
00660740  00 80 a0 e3                                      mov r8, #0
00660744  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
00660748  88 71 83 e0                                      add r7, r3, r8, lsl #3
0066074c  24 10 91 e5                                      ldr r1, [r1, #0x24]
00660750  20 10 91 e5                                      ldr r1, [r1, #0x20]
00660754  24 10 91 e5                                      ldr r1, [r1, #0x24]
00660758  00 00 51 e3                                      cmp r1, #0
0066075c  23 00 00 da                                      ble #0x6607f0
00660760  00 50 a0 e3                                      mov r5, #0
00660764  06 00 00 ea                                      b #0x660784
00660768  00 30 97 e5                                      ldr r3, [r7]
0066076c  01 50 85 e2                                      add r5, r5, #1
00660770  24 30 93 e5                                      ldr r3, [r3, #0x24]
00660774  20 30 93 e5                                      ldr r3, [r3, #0x20]
00660778  24 30 93 e5                                      ldr r3, [r3, #0x24]
0066077c  03 00 55 e1                                      cmp r5, r3
00660780  18 00 00 aa                                      bge #0x6607e8
00660784  05 10 a0 e1                                      mov r1, r5
00660788  07 00 a0 e1                                      mov r0, r7
0066078c  f2 b6 fe eb                                      bl #0x60e35c
00660790  64 30 94 e5                                      ldr r3, [r4, #0x64]
00660794  00 60 a0 e1                                      mov r6, r0
00660798  00 00 53 e2                                      subs r0, r3, #0
0066079c  05 00 00 0a                                      beq #0x6607b8
006607a0  10 10 96 e5                                      ldr r1, [r6, #0x10]
006607a4  00 30 93 e5                                      ldr r3, [r3]
006607a8  0f e0 a0 e1                                      mov lr, pc
006607ac  08 f0 93 e5                                      ldr pc, [r3, #8]
006607b0  00 00 50 e3                                      cmp r0, #0
006607b4  eb ff ff 0a                                      beq #0x660768
006607b8  00 30 94 e5                                      ldr r3, [r4]
006607bc  06 10 a0 e1                                      mov r1, r6
006607c0  04 00 a0 e1                                      mov r0, r4
006607c4  0f e0 a0 e1                                      mov lr, pc
006607c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006607cc  00 30 97 e5                                      ldr r3, [r7]
006607d0  01 50 85 e2                                      add r5, r5, #1
006607d4  24 30 93 e5                                      ldr r3, [r3, #0x24]
006607d8  20 30 93 e5                                      ldr r3, [r3, #0x20]
006607dc  24 30 93 e5                                      ldr r3, [r3, #0x24]
006607e0  03 00 55 e1                                      cmp r5, r3
006607e4  e6 ff ff ba                                      blt #0x660784
006607e8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006607ec  28 20 94 e5                                      ldr r2, [r4, #0x28]
006607f0  01 80 88 e2                                      add r8, r8, #1
006607f4  02 10 63 e0                                      rsb r1, r3, r2
006607f8  c1 01 58 e1                                      cmp r8, r1, asr #3
006607fc  d0 ff ff 3a                                      blo #0x660744
00660800  64 00 94 e5                                      ldr r0, [r4, #0x64]
00660804  00 00 50 e3                                      cmp r0, #0
00660808  04 00 00 0a                                      beq #0x660820
0066080c  18 20 84 e2                                      add r2, r4, #0x18
00660810  0c 10 84 e2                                      add r1, r4, #0xc
00660814  da 1a 00 eb                                      bl #0x667384
00660818  24 30 94 e5                                      ldr r3, [r4, #0x24]
0066081c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00660820  02 10 63 e0                                      rsb r1, r3, r2
00660824  a1 11 b0 e1                                      lsrs r1, r1, #3
00660828  ac 00 00 0a                                      beq #0x660ae0
0066082c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00660830  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660834  00 80 a0 e3                                      mov r8, #0
00660838  0c a0 8d e2                                      add sl, sp, #0xc
0066083c  00 00 61 e0                                      rsb r0, r1, r0
00660840  40 c1 b0 e1                                      asrs ip, r0, #2
00660844  88 61 83 e0                                      add r6, r3, r8, lsl #3
00660848  0f 00 00 0a                                      beq #0x66088c
0066084c  00 50 a0 e3                                      mov r5, #0
00660850  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
00660854  06 00 a0 e1                                      mov r0, r6
00660858  60 ee fe eb                                      bl #0x61c1e0
0066085c  00 00 50 e3                                      cmp r0, #0
00660860  05 71 a0 e1                                      lsl r7, r5, #2
00660864  6b 00 00 0a                                      beq #0x660a18
00660868  10 00 94 e5                                      ldr r0, [r4, #0x10]
0066086c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660870  01 50 85 e2                                      add r5, r5, #1
00660874  00 00 61 e0                                      rsb r0, r1, r0
00660878  40 c1 a0 e1                                      asr ip, r0, #2
0066087c  0c 00 55 e1                                      cmp r5, ip
00660880  f2 ff ff 3a                                      blo #0x660850
00660884  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660888  28 20 94 e5                                      ldr r2, [r4, #0x28]
0066088c  01 80 88 e2                                      add r8, r8, #1
00660890  02 e0 63 e0                                      rsb lr, r3, r2
00660894  ce 01 58 e1                                      cmp r8, lr, asr #3
00660898  e8 ff ff 3a                                      blo #0x660840
0066089c  02 30 63 e0                                      rsb r3, r3, r2
006608a0  c3 51 a0 e1                                      asr r5, r3, #3
006608a4  95 0c 05 e0                                      mul r5, r5, ip
006608a8  30 60 84 e2                                      add r6, r4, #0x30
006608ac  3c c0 84 e5                                      str ip, [r4, #0x3c]
006608b0  06 00 a0 e1                                      mov r0, r6
006608b4  05 10 a0 e1                                      mov r1, r5
006608b8  48 37 ff eb                                      bl #0x62e5e0
006608bc  00 80 a0 e3                                      mov r8, #0
006608c0  05 10 a0 e1                                      mov r1, r5
006608c4  0d 20 a0 e1                                      mov r2, sp
006608c8  06 00 a0 e1                                      mov r0, r6
006608cc  00 80 8d e5                                      str r8, [sp]
006608d0  04 80 8d e5                                      str r8, [sp, #4]
006608d4  08 80 8d e5                                      str r8, [sp, #8]
006608d8  dc 38 ff eb                                      bl #0x62ec50
006608dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
006608e0  28 20 94 e5                                      ldr r2, [r4, #0x28]
006608e4  02 10 63 e0                                      rsb r1, r3, r2
006608e8  a1 11 b0 e1                                      lsrs r1, r1, #3
006608ec  45 00 00 0a                                      beq #0x660a08
006608f0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006608f4  10 00 94 e5                                      ldr r0, [r4, #0x10]
006608f8  08 b0 a0 e1                                      mov fp, r8
006608fc  02 90 a0 e3                                      mov sb, #2
00660900  00 c0 61 e0                                      rsb ip, r1, r0
00660904  2c c1 b0 e1                                      lsrs ip, ip, #2
00660908  8b a1 83 e0                                      add sl, r3, fp, lsl #3
0066090c  39 00 00 0a                                      beq #0x6609f8
00660910  0c 20 a0 e3                                      mov r2, #0xc
00660914  92 08 06 e0                                      mul r6, r2, r8
00660918  00 50 a0 e3                                      mov r5, #0
0066091c  0c 00 00 ea                                      b #0x660954
00660920  30 30 94 e5                                      ldr r3, [r4, #0x30]
00660924  06 90 83 e7                                      str sb, [r3, r6]
00660928  30 30 94 e5                                      ldr r3, [r4, #0x30]
0066092c  06 30 83 e0                                      add r3, r3, r6
00660930  08 70 83 e5                                      str r7, [r3, #8]
00660934  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660938  10 00 94 e5                                      ldr r0, [r4, #0x10]
0066093c  01 50 85 e2                                      add r5, r5, #1
00660940  01 80 88 e2                                      add r8, r8, #1
00660944  00 30 61 e0                                      rsb r3, r1, r0
00660948  43 01 55 e1                                      cmp r5, r3, asr #2
0066094c  0c 60 86 e2                                      add r6, r6, #0xc
00660950  26 00 00 2a                                      bhs #0x6609f0
00660954  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
00660958  0a 00 a0 e1                                      mov r0, sl
0066095c  1f ee fe eb                                      bl #0x61c1e0
00660960  30 20 94 e5                                      ldr r2, [r4, #0x30]
00660964  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00660968  00 70 a0 e1                                      mov r7, r0
0066096c  06 20 82 e0                                      add r2, r2, r6
00660970  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
00660974  0a 00 a0 e1                                      mov r0, sl
00660978  04 20 82 e2                                      add r2, r2, #4
0066097c  4e ef fe eb                                      bl #0x61c6bc
00660980  00 00 57 e3                                      cmp r7, #0
00660984  05 11 a0 e1                                      lsl r1, r5, #2
00660988  e4 ff ff 1a                                      bne #0x660920
0066098c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00660990  01 20 a0 e3                                      mov r2, #1
00660994  00 00 50 e3                                      cmp r0, #0
00660998  06 20 83 e7                                      str r2, [r3, r6]
0066099c  e4 ff ff 1a                                      bne #0x660934
006609a0  64 30 94 e5                                      ldr r3, [r4, #0x64]
006609a4  00 00 53 e3                                      cmp r3, #0
006609a8  e1 ff ff 0a                                      beq #0x660934
006609ac  30 20 94 e5                                      ldr r2, [r4, #0x30]
006609b0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
006609b4  03 00 a0 e1                                      mov r0, r3
006609b8  06 20 82 e0                                      add r2, r2, r6
006609bc  01 10 9c e7                                      ldr r1, [ip, r1]
006609c0  00 30 93 e5                                      ldr r3, [r3]
006609c4  04 20 82 e2                                      add r2, r2, #4
006609c8  0f e0 a0 e1                                      mov lr, pc
006609cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006609d0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006609d4  10 00 94 e5                                      ldr r0, [r4, #0x10]
006609d8  01 50 85 e2                                      add r5, r5, #1
006609dc  01 80 88 e2                                      add r8, r8, #1
006609e0  00 30 61 e0                                      rsb r3, r1, r0
006609e4  43 01 55 e1                                      cmp r5, r3, asr #2
006609e8  0c 60 86 e2                                      add r6, r6, #0xc
006609ec  d8 ff ff 3a                                      blo #0x660954
006609f0  24 30 94 e5                                      ldr r3, [r4, #0x24]
006609f4  28 20 94 e5                                      ldr r2, [r4, #0x28]
006609f8  01 b0 8b e2                                      add fp, fp, #1
006609fc  02 c0 63 e0                                      rsb ip, r3, r2
00660a00  cc 01 5b e1                                      cmp fp, ip, asr #3
00660a04  bd ff ff 3a                                      blo #0x660900
00660a08  04 00 a0 e1                                      mov r0, r4
00660a0c  e6 fe ff eb                                      bl #0x6605ac
00660a10  14 d0 8d e2                                      add sp, sp, #0x14
00660a14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00660a18  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00660a1c  06 00 a0 e1                                      mov r0, r6
00660a20  0a 20 a0 e1                                      mov r2, sl
00660a24  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
00660a28  23 ef fe eb                                      bl #0x61c6bc
00660a2c  00 00 50 e3                                      cmp r0, #0
00660a30  8c ff ff 1a                                      bne #0x660868
00660a34  64 30 94 e5                                      ldr r3, [r4, #0x64]
00660a38  00 00 53 e3                                      cmp r3, #0
00660a3c  08 00 00 0a                                      beq #0x660a64
00660a40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00660a44  03 00 a0 e1                                      mov r0, r3
00660a48  00 30 93 e5                                      ldr r3, [r3]
00660a4c  07 10 92 e7                                      ldr r1, [r2, r7]
00660a50  0a 20 a0 e1                                      mov r2, sl
00660a54  0f e0 a0 e1                                      mov lr, pc
00660a58  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00660a5c  00 00 50 e3                                      cmp r0, #0
00660a60  80 ff ff 1a                                      bne #0x660868
00660a64  08 30 94 e5                                      ldr r3, [r4, #8]
00660a68  00 00 53 e3                                      cmp r3, #0
00660a6c  7d ff ff 1a                                      bne #0x660868
00660a70  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00660a74  10 30 94 e5                                      ldr r3, [r4, #0x10]
00660a78  07 00 80 e0                                      add r0, r0, r7
00660a7c  04 10 80 e2                                      add r1, r0, #4
00660a80  03 00 51 e1                                      cmp r1, r3
00660a84  04 00 00 0a                                      beq #0x660a9c
00660a88  01 20 53 e0                                      subs r2, r3, r1
00660a8c  03 10 a0 01                                      moveq r1, r3
00660a90  01 00 00 0a                                      beq #0x660a9c
00660a94  27 b5 f2 eb                                      bl #0x30df38
00660a98  10 10 94 e5                                      ldr r1, [r4, #0x10]
00660a9c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00660aa0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00660aa4  04 20 41 e2                                      sub r2, r1, #4
00660aa8  07 00 80 e0                                      add r0, r0, r7
00660aac  04 10 80 e2                                      add r1, r0, #4
00660ab0  03 00 51 e1                                      cmp r1, r3
00660ab4  10 20 84 e5                                      str r2, [r4, #0x10]
00660ab8  04 00 00 0a                                      beq #0x660ad0
00660abc  01 20 53 e0                                      subs r2, r3, r1
00660ac0  03 10 a0 01                                      moveq r1, r3
00660ac4  01 00 00 0a                                      beq #0x660ad0
00660ac8  1a b5 f2 eb                                      bl #0x30df38
00660acc  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00660ad0  04 10 41 e2                                      sub r1, r1, #4
00660ad4  1c 10 84 e5                                      str r1, [r4, #0x1c]
00660ad8  01 50 45 e2                                      sub r5, r5, #1
00660adc  61 ff ff ea                                      b #0x660868
00660ae0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00660ae4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00660ae8  0c c0 61 e0                                      rsb ip, r1, ip
00660aec  4c c1 a0 e1                                      asr ip, ip, #2
00660af0  69 ff ff ea                                      b #0x66089c
