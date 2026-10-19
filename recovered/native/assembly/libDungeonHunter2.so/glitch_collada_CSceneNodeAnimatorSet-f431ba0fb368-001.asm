; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065f0fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet18getAnimationLengthEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationLength(int)
; decoder-mode: arm
0065f0fc  24 00 90 e5                                      ldr r0, [r0, #0x24]
0065f100  d6 ff ff ea                                      b #0x65f060

; FUNCTION 0x0065f104, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet17getAnimationStartEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationStart(int)
; decoder-mode: arm
0065f104  24 00 90 e5                                      ldr r0, [r0, #0x24]
0065f108  db ff ff ea                                      b #0x65f07c

; FUNCTION 0x0065f10c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet15getAnimationEndEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationEnd(int)
; decoder-mode: arm
0065f10c  24 00 90 e5                                      ldr r0, [r0, #0x24]
0065f110  e0 ff ff ea                                      b #0x65f098

; FUNCTION 0x0065f114, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZNK6glitch7collada21CSceneNodeAnimatorSet19getCurrentAnimationEv
; demangled: glitch::collada::CSceneNodeAnimatorSet::getCurrentAnimation() const
; decoder-mode: arm
0065f114  50 00 90 e5                                      ldr r0, [r0, #0x50]
0065f118  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f11c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZNK6glitch7collada21CSceneNodeAnimatorSet17getAnimationCountEv
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationCount() const
; decoder-mode: arm
0065f11c  24 00 90 e5                                      ldr r0, [r0, #0x24]
0065f120  c7 ff ff ea                                      b #0x65f044

; FUNCTION 0x0065f124, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet17getAnimationTrackEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationTrack(int)
; decoder-mode: arm
0065f124  10 40 2d e9                                      push {r4, lr}
0065f128  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f12c  03 00 a0 e1                                      mov r0, r3
0065f130  00 30 93 e5                                      ldr r3, [r3]
0065f134  0f e0 a0 e1                                      mov lr, pc
0065f138  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0065f13c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f140, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet19getAnimationTrackExEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationTrackEx(int)
; decoder-mode: arm
0065f140  10 40 2d e9                                      push {r4, lr}
0065f144  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f148  03 00 a0 e1                                      mov r0, r3
0065f14c  00 30 93 e5                                      ldr r3, [r3]
0065f150  0f e0 a0 e1                                      mov lr, pc
0065f154  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0065f158  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f15c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet10getBindURIEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getBindURI(int)
; decoder-mode: arm
0065f15c  10 40 2d e9                                      push {r4, lr}
0065f160  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f164  03 00 a0 e1                                      mov r0, r3
0065f168  00 30 93 e5                                      ldr r3, [r3]
0065f16c  0f e0 a0 e1                                      mov lr, pc
0065f170  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0065f174  04 00 90 e5                                      ldr r0, [r0, #4]
0065f178  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f17c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet14getTargetCountEv
; demangled: glitch::collada::CSceneNodeAnimatorSet::getTargetCount()
; decoder-mode: arm
0065f17c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f180  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0065f184  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f188, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet13getTargetSizeEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getTargetSize(int)
; decoder-mode: arm
0065f188  10 40 2d e9                                      push {r4, lr}
0065f18c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f190  18 30 93 e5                                      ldr r3, [r3, #0x18]
0065f194  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0065f198  03 00 a0 e1                                      mov r0, r3
0065f19c  00 30 93 e5                                      ldr r3, [r3]
0065f1a0  0f e0 a0 e1                                      mov lr, pc
0065f1a4  08 f0 93 e5                                      ldr pc, [r3, #8]
0065f1a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f1ac, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet14getTargetsSizeEv
; demangled: glitch::collada::CSceneNodeAnimatorSet::getTargetsSize()
; decoder-mode: arm
0065f1ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065f1b0  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f1b4  00 70 a0 e1                                      mov r7, r0
0065f1b8  3c 60 93 e5                                      ldr r6, [r3, #0x3c]
0065f1bc  00 00 56 e3                                      cmp r6, #0
0065f1c0  06 50 a0 01                                      moveq r5, r6
0065f1c4  0d 00 00 0a                                      beq #0x65f200
0065f1c8  00 40 a0 e3                                      mov r4, #0
0065f1cc  04 50 a0 e1                                      mov r5, r4
0065f1d0  00 00 00 ea                                      b #0x65f1d8
0065f1d4  24 30 97 e5                                      ldr r3, [r7, #0x24]
0065f1d8  18 30 93 e5                                      ldr r3, [r3, #0x18]
0065f1dc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0065f1e0  01 40 84 e2                                      add r4, r4, #1
0065f1e4  03 00 a0 e1                                      mov r0, r3
0065f1e8  00 30 93 e5                                      ldr r3, [r3]
0065f1ec  0f e0 a0 e1                                      mov lr, pc
0065f1f0  08 f0 93 e5                                      ldr pc, [r3, #8]
0065f1f4  06 00 54 e1                                      cmp r4, r6
0065f1f8  00 50 85 e0                                      add r5, r5, r0
0065f1fc  f4 ff ff 1a                                      bne #0x65f1d4
0065f200  05 00 a0 e1                                      mov r0, r5
0065f204  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065f208, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::CSceneNodeAnimatorSet::setTarget(int, void*, glitch::collada::animation_track::CApplicatorInfo const*)
; decoder-mode: arm
0065f208  70 40 2d e9                                      push {r4, r5, r6, lr}
0065f20c  28 c0 90 e5                                      ldr ip, [r0, #0x28]
0065f210  03 60 a0 e1                                      mov r6, r3
0065f214  00 40 a0 e1                                      mov r4, r0
0065f218  01 21 8c e7                                      str r2, [ip, r1, lsl #2]
0065f21c  34 30 90 e5                                      ldr r3, [r0, #0x34]
0065f220  01 50 a0 e1                                      mov r5, r1
0065f224  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0065f228  00 00 53 e3                                      cmp r3, #0
0065f22c  06 00 00 0a                                      beq #0x65f24c
0065f230  03 00 a0 e1                                      mov r0, r3
0065f234  00 30 93 e5                                      ldr r3, [r3]
0065f238  0f e0 a0 e1                                      mov lr, pc
0065f23c  04 f0 93 e5                                      ldr pc, [r3, #4]
0065f240  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065f244  00 20 a0 e3                                      mov r2, #0
0065f248  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
0065f24c  00 00 56 e3                                      cmp r6, #0
0065f250  05 00 00 0a                                      beq #0x65f26c
0065f254  06 00 a0 e1                                      mov r0, r6
0065f258  00 30 96 e5                                      ldr r3, [r6]
0065f25c  34 40 94 e5                                      ldr r4, [r4, #0x34]
0065f260  0f e0 a0 e1                                      mov lr, pc
0065f264  08 f0 93 e5                                      ldr pc, [r3, #8]
0065f268  05 01 84 e7                                      str r0, [r4, r5, lsl #2]
0065f26c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065f270, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet11animateNodeEPNS_5scene10ISceneNodeEj
; demangled: glitch::collada::CSceneNodeAnimatorSet::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
0065f270  10 40 2d e9                                      push {r4, lr}
0065f274  02 10 a0 e1                                      mov r1, r2
0065f278  00 30 90 e5                                      ldr r3, [r0]
0065f27c  0f e0 a0 e1                                      mov lr, pc
0065f280  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0065f284  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f288, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet16getIdentityValueEiPv
; demangled: glitch::collada::CSceneNodeAnimatorSet::getIdentityValue(int, void*)
; decoder-mode: arm
0065f288  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065f364, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet16getAnimationDataEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationData(int)
; decoder-mode: arm
0065f364  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065f368  10 d0 4d e2                                      sub sp, sp, #0x10
0065f36c  00 30 90 e5                                      ldr r3, [r0]
0065f370  00 40 a0 e1                                      mov r4, r0
0065f374  01 70 a0 e1                                      mov r7, r1
0065f378  0f e0 a0 e1                                      mov lr, pc
0065f37c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f380  88 50 9f e5                                      ldr r5, [pc, #0x88]
0065f384  00 80 50 e2                                      subs r8, r0, #0
0065f388  05 50 8f e0                                      add r5, pc, r5
0065f38c  07 00 00 0a                                      beq #0x65f3b0
0065f390  00 30 94 e5                                      ldr r3, [r4]
0065f394  04 00 a0 e1                                      mov r0, r4
0065f398  0f e0 a0 e1                                      mov lr, pc
0065f39c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f3a0  00 30 90 e5                                      ldr r3, [r0]
0065f3a4  0f e0 a0 e1                                      mov lr, pc
0065f3a8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0065f3ac  00 80 a0 e1                                      mov r8, r0
0065f3b0  50 10 94 e5                                      ldr r1, [r4, #0x50]
0065f3b4  24 00 94 e5                                      ldr r0, [r4, #0x24]
0065f3b8  3d ff ff eb                                      bl #0x65f0b4
0065f3bc  08 20 a0 e1                                      mov r2, r8
0065f3c0  00 10 a0 e1                                      mov r1, r0
0065f3c4  07 30 a0 e1                                      mov r3, r7
0065f3c8  0d 00 a0 e1                                      mov r0, sp
0065f3cc  c1 f8 ff eb                                      bl #0x65d6d8
0065f3d0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0065f3d4  54 20 84 e2                                      add r2, r4, #0x54
0065f3d8  0d 10 a0 e1                                      mov r1, sp
0065f3dc  03 30 95 e7                                      ldr r3, [r5, r3]
0065f3e0  0d 60 a0 e1                                      mov r6, sp
0065f3e4  00 00 93 e5                                      ldr r0, [r3]
0065f3e8  6b b4 fe eb                                      bl #0x60c59c
0065f3ec  54 40 94 e5                                      ldr r4, [r4, #0x54]
0065f3f0  0d 00 a0 e1                                      mov r0, sp
0065f3f4  00 00 54 e3                                      cmp r4, #0
0065f3f8  14 30 94 15                                      ldrne r3, [r4, #0x14]
0065f3fc  0c 40 93 15                                      ldrne r4, [r3, #0xc]
0065f400  1b e8 fe eb                                      bl #0x619474
0065f404  04 00 a0 e1                                      mov r0, r4
0065f408  10 d0 8d e2                                      add sp, sp, #0x10
0065f40c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0065f410  08 57 33 00 74 09 00 00                          .byte 0x08, 0x57, 0x33, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0065f418, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet20applyAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimatorSet::applyAnimationValues(unsigned int)
; decoder-mode: arm
0065f418  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065f41c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f420  44 d0 4d e2                                      sub sp, sp, #0x44
0065f424  00 40 a0 e1                                      mov r4, r0
0065f428  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
0065f42c  01 50 a0 e1                                      mov r5, r1
0065f430  00 00 53 e3                                      cmp r3, #0
0065f434  02 00 00 1a                                      bne #0x65f444
0065f438  18 30 90 e5                                      ldr r3, [r0, #0x18]
0065f43c  00 00 53 e3                                      cmp r3, #0
0065f440  5e 00 00 0a                                      beq #0x65f5c0
0065f444  04 00 a0 e1                                      mov r0, r4
0065f448  05 10 a0 e1                                      mov r1, r5
0065f44c  fd 21 00 eb                                      bl #0x667c48
0065f450  00 30 94 e5                                      ldr r3, [r4]
0065f454  04 00 a0 e1                                      mov r0, r4
0065f458  0f e0 a0 e1                                      mov lr, pc
0065f45c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f460  00 00 50 e3                                      cmp r0, #0
0065f464  57 00 00 0a                                      beq #0x65f5c8
0065f468  04 00 90 e5                                      ldr r0, [r0, #4]
0065f46c  0c 00 8d e5                                      str r0, [sp, #0xc]
0065f470  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0065f474  50 10 94 e5                                      ldr r1, [r4, #0x50]
0065f478  24 00 94 e5                                      ldr r0, [r4, #0x24]
0065f47c  01 30 53 e2                                      subs r3, r3, #1
0065f480  01 30 a0 13                                      movne r3, #1
0065f484  14 30 8d e5                                      str r3, [sp, #0x14]
0065f488  09 ff ff eb                                      bl #0x65f0b4
0065f48c  00 30 90 e5                                      ldr r3, [r0]
0065f490  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065f494  04 00 a0 e1                                      mov r0, r4
0065f498  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065f49c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065f4a0  14 50 93 e5                                      ldr r5, [r3, #0x14]
0065f4a4  ae ff ff eb                                      bl #0x65f364
0065f4a8  10 00 8d e5                                      str r0, [sp, #0x10]
0065f4ac  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065f4b0  00 50 55 e2                                      subs r5, r5, #0
0065f4b4  01 50 a0 13                                      movne r5, #1
0065f4b8  31 50 cd e5                                      strb r5, [sp, #0x31]
0065f4bc  3c b0 93 e5                                      ldr fp, [r3, #0x3c]
0065f4c0  00 00 5b e3                                      cmp fp, #0
0065f4c4  3d 00 00 0a                                      beq #0x65f5c0
0065f4c8  24 10 8d e2                                      add r1, sp, #0x24
0065f4cc  34 20 8d e2                                      add r2, sp, #0x34
0065f4d0  00 50 a0 e3                                      mov r5, #0
0065f4d4  18 10 8d e5                                      str r1, [sp, #0x18]
0065f4d8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0065f4dc  02 00 00 ea                                      b #0x65f4ec
0065f4e0  01 50 85 e2                                      add r5, r5, #1
0065f4e4  0b 00 55 e1                                      cmp r5, fp
0065f4e8  34 00 00 0a                                      beq #0x65f5c0
0065f4ec  05 10 a0 e1                                      mov r1, r5
0065f4f0  00 30 94 e5                                      ldr r3, [r4]
0065f4f4  04 00 a0 e1                                      mov r0, r4
0065f4f8  0f e0 a0 e1                                      mov lr, pc
0065f4fc  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0065f500  00 00 50 e3                                      cmp r0, #0
0065f504  f5 ff ff 0a                                      beq #0x65f4e0
0065f508  28 30 94 e5                                      ldr r3, [r4, #0x28]
0065f50c  05 81 a0 e1                                      lsl r8, r5, #2
0065f510  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
0065f514  00 00 56 e3                                      cmp r6, #0
0065f518  06 20 a0 e1                                      mov r2, r6
0065f51c  ef ff ff 0a                                      beq #0x65f4e0
0065f520  4c 90 94 e5                                      ldr sb, [r4, #0x4c]
0065f524  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065f528  0c c0 a0 e3                                      mov ip, #0xc
0065f52c  09 90 85 e0                                      add sb, r5, sb
0065f530  9c 09 09 e0                                      mul sb, ip, sb
0065f534  30 a0 93 e5                                      ldr sl, [r3, #0x30]
0065f538  09 70 8a e0                                      add r7, sl, sb
0065f53c  04 10 97 e5                                      ldr r1, [r7, #4]
0065f540  00 00 51 e3                                      cmp r1, #0
0065f544  07 00 00 0a                                      beq #0x65f568
0065f548  18 00 93 e5                                      ldr r0, [r3, #0x18]
0065f54c  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065f550  08 c0 90 e7                                      ldr ip, [r0, r8]
0065f554  08 30 93 e7                                      ldr r3, [r3, r8]
0065f558  0c 00 a0 e1                                      mov r0, ip
0065f55c  00 c0 9c e5                                      ldr ip, [ip]
0065f560  0f e0 a0 e1                                      mov lr, pc
0065f564  70 f0 9c e5                                      ldr pc, [ip, #0x70]
0065f568  09 30 9a e7                                      ldr r3, [sl, sb]
0065f56c  02 00 53 e3                                      cmp r3, #2
0065f570  da ff ff 1a                                      bne #0x65f4e0
0065f574  08 20 97 e5                                      ldr r2, [r7, #8]
0065f578  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065f57c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0065f580  34 20 8d e5                                      str r2, [sp, #0x34]
0065f584  18 20 9d e5                                      ldr r2, [sp, #0x18]
0065f588  38 10 8d e5                                      str r1, [sp, #0x38]
0065f58c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0065f590  3c 20 8d e5                                      str r2, [sp, #0x3c]
0065f594  40 10 94 e5                                      ldr r1, [r4, #0x40]
0065f598  08 30 93 e7                                      ldr r3, [r3, r8]
0065f59c  06 20 a0 e1                                      mov r2, r6
0065f5a0  08 80 81 e0                                      add r8, r1, r8
0065f5a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0065f5a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065f5ac  01 50 85 e2                                      add r5, r5, #1
0065f5b0  00 11 8d e8                                      stm sp, {r8, ip}
0065f5b4  c1 2a 00 eb                                      bl #0x66a0c0
0065f5b8  0b 00 55 e1                                      cmp r5, fp
0065f5bc  ca ff ff 1a                                      bne #0x65f4ec
0065f5c0  44 d0 8d e2                                      add sp, sp, #0x44
0065f5c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065f5c8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0065f5cc  05 00 a0 e1                                      mov r0, r5
0065f5d0  55 bd f2 eb                                      bl #0x30eb2c
0065f5d4  0c 10 8d e5                                      str r1, [sp, #0xc]
0065f5d8  a4 ff ff ea                                      b #0x65f470

; FUNCTION 0x0065f5dc, declared_size=472, range_size=472, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet22computeAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimatorSet::computeAnimationValues(unsigned int)
; decoder-mode: arm
0065f5dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065f5e0  24 30 90 e5                                      ldr r3, [r0, #0x24]
0065f5e4  4c d0 4d e2                                      sub sp, sp, #0x4c
0065f5e8  00 50 a0 e1                                      mov r5, r0
0065f5ec  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
0065f5f0  01 40 a0 e1                                      mov r4, r1
0065f5f4  00 00 53 e3                                      cmp r3, #0
0065f5f8  02 00 00 1a                                      bne #0x65f608
0065f5fc  18 30 90 e5                                      ldr r3, [r0, #0x18]
0065f600  00 00 53 e3                                      cmp r3, #0
0065f604  63 00 00 0a                                      beq #0x65f798
0065f608  05 00 a0 e1                                      mov r0, r5
0065f60c  04 10 a0 e1                                      mov r1, r4
0065f610  8c 21 00 eb                                      bl #0x667c48
0065f614  00 30 95 e5                                      ldr r3, [r5]
0065f618  05 00 a0 e1                                      mov r0, r5
0065f61c  0f e0 a0 e1                                      mov lr, pc
0065f620  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f624  00 00 50 e3                                      cmp r0, #0
0065f628  5c 00 00 0a                                      beq #0x65f7a0
0065f62c  04 00 90 e5                                      ldr r0, [r0, #4]
0065f630  14 00 8d e5                                      str r0, [sp, #0x14]
0065f634  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0065f638  50 10 95 e5                                      ldr r1, [r5, #0x50]
0065f63c  24 00 95 e5                                      ldr r0, [r5, #0x24]
0065f640  01 30 53 e2                                      subs r3, r3, #1
0065f644  01 30 a0 13                                      movne r3, #1
0065f648  1c 30 8d e5                                      str r3, [sp, #0x1c]
0065f64c  98 fe ff eb                                      bl #0x65f0b4
0065f650  00 30 90 e5                                      ldr r3, [r0]
0065f654  14 10 9d e5                                      ldr r1, [sp, #0x14]
0065f658  05 00 a0 e1                                      mov r0, r5
0065f65c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065f660  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065f664  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065f668  00 30 53 e2                                      subs r3, r3, #0
0065f66c  01 30 a0 13                                      movne r3, #1
0065f670  10 30 8d e5                                      str r3, [sp, #0x10]
0065f674  3a ff ff eb                                      bl #0x65f364
0065f678  10 20 9d e5                                      ldr r2, [sp, #0x10]
0065f67c  18 00 8d e5                                      str r0, [sp, #0x18]
0065f680  24 30 95 e5                                      ldr r3, [r5, #0x24]
0065f684  39 20 cd e5                                      strb r2, [sp, #0x39]
0065f688  3c 60 93 e5                                      ldr r6, [r3, #0x3c]
0065f68c  00 00 56 e3                                      cmp r6, #0
0065f690  40 00 00 0a                                      beq #0x65f798
0065f694  2c 30 8d e2                                      add r3, sp, #0x2c
0065f698  3c c0 8d e2                                      add ip, sp, #0x3c
0065f69c  00 40 a0 e3                                      mov r4, #0
0065f6a0  20 30 8d e5                                      str r3, [sp, #0x20]
0065f6a4  24 c0 8d e5                                      str ip, [sp, #0x24]
0065f6a8  06 90 a0 e1                                      mov sb, r6
0065f6ac  02 00 00 ea                                      b #0x65f6bc
0065f6b0  01 40 84 e2                                      add r4, r4, #1
0065f6b4  09 00 54 e1                                      cmp r4, sb
0065f6b8  36 00 00 0a                                      beq #0x65f798
0065f6bc  04 10 a0 e1                                      mov r1, r4
0065f6c0  00 30 95 e5                                      ldr r3, [r5]
0065f6c4  05 00 a0 e1                                      mov r0, r5
0065f6c8  0f e0 a0 e1                                      mov lr, pc
0065f6cc  80 f0 93 e5                                      ldr pc, [r3, #0x80]
0065f6d0  00 00 50 e3                                      cmp r0, #0
0065f6d4  f5 ff ff 0a                                      beq #0x65f6b0
0065f6d8  28 30 95 e5                                      ldr r3, [r5, #0x28]
0065f6dc  04 b1 a0 e1                                      lsl fp, r4, #2
0065f6e0  04 61 93 e7                                      ldr r6, [r3, r4, lsl #2]
0065f6e4  00 00 56 e3                                      cmp r6, #0
0065f6e8  f0 ff ff 0a                                      beq #0x65f6b0
0065f6ec  4c 70 95 e5                                      ldr r7, [r5, #0x4c]
0065f6f0  24 30 95 e5                                      ldr r3, [r5, #0x24]
0065f6f4  0c 20 a0 e3                                      mov r2, #0xc
0065f6f8  07 70 84 e0                                      add r7, r4, r7
0065f6fc  92 07 07 e0                                      mul r7, r2, r7
0065f700  30 80 93 e5                                      ldr r8, [r3, #0x30]
0065f704  07 a0 88 e0                                      add sl, r8, r7
0065f708  04 10 9a e5                                      ldr r1, [sl, #4]
0065f70c  00 00 51 e3                                      cmp r1, #0
0065f710  0a 00 00 0a                                      beq #0x65f740
0065f714  18 30 93 e5                                      ldr r3, [r3, #0x18]
0065f718  0b 30 93 e7                                      ldr r3, [r3, fp]
0065f71c  03 00 a0 e1                                      mov r0, r3
0065f720  00 30 93 e5                                      ldr r3, [r3]
0065f724  0c 10 8d e5                                      str r1, [sp, #0xc]
0065f728  0f e0 a0 e1                                      mov lr, pc
0065f72c  08 f0 93 e5                                      ldr pc, [r3, #8]
0065f730  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0065f734  00 20 a0 e1                                      mov r2, r0
0065f738  06 00 a0 e1                                      mov r0, r6
0065f73c  49 bc f2 eb                                      bl #0x30e868
0065f740  07 30 98 e7                                      ldr r3, [r8, r7]
0065f744  02 00 53 e3                                      cmp r3, #2
0065f748  d8 ff ff 1a                                      bne #0x65f6b0
0065f74c  08 30 9a e5                                      ldr r3, [sl, #8]
0065f750  18 20 9d e5                                      ldr r2, [sp, #0x18]
0065f754  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0065f758  3c 30 8d e5                                      str r3, [sp, #0x3c]
0065f75c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0065f760  40 20 8d e5                                      str r2, [sp, #0x40]
0065f764  00 00 5c e3                                      cmp ip, #0
0065f768  44 30 8d e5                                      str r3, [sp, #0x44]
0065f76c  40 30 95 e5                                      ldr r3, [r5, #0x40]
0065f770  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0065f774  06 20 a0 e1                                      mov r2, r6
0065f778  0b 30 83 00                                      addeq r3, r3, fp
0065f77c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0065f780  14 10 9d e5                                      ldr r1, [sp, #0x14]
0065f784  01 40 84 e2                                      add r4, r4, #1
0065f788  00 c0 8d e5                                      str ip, [sp]
0065f78c  85 2a 00 eb                                      bl #0x66a1a8
0065f790  09 00 54 e1                                      cmp r4, sb
0065f794  c8 ff ff 1a                                      bne #0x65f6bc
0065f798  4c d0 8d e2                                      add sp, sp, #0x4c
0065f79c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065f7a0  14 10 95 e5                                      ldr r1, [r5, #0x14]
0065f7a4  04 00 a0 e1                                      mov r0, r4
0065f7a8  df bc f2 eb                                      bl #0x30eb2c
0065f7ac  14 10 8d e5                                      str r1, [sp, #0x14]
0065f7b0  9f ff ff ea                                      b #0x65f634

; FUNCTION 0x0065f7b4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet17getAnimationValueEiiPv
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationValue(int, int, void*)
; decoder-mode: arm
0065f7b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065f7b8  00 40 a0 e1                                      mov r4, r0
0065f7bc  02 90 a0 e1                                      mov sb, r2
0065f7c0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0065f7c4  34 d0 4d e2                                      sub sp, sp, #0x34
0065f7c8  01 50 a0 e1                                      mov r5, r1
0065f7cc  24 00 90 e5                                      ldr r0, [r0, #0x24]
0065f7d0  50 10 94 e5                                      ldr r1, [r4, #0x50]
0065f7d4  03 a0 a0 e1                                      mov sl, r3
0065f7d8  0c 20 8d e5                                      str r2, [sp, #0xc]
0065f7dc  34 fe ff eb                                      bl #0x65f0b4
0065f7e0  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
0065f7e4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065f7e8  0c 10 a0 e3                                      mov r1, #0xc
0065f7ec  00 20 90 e5                                      ldr r2, [r0]
0065f7f0  06 60 85 e0                                      add r6, r5, r6
0065f7f4  91 06 06 e0                                      mul r6, r1, r6
0065f7f8  30 70 93 e5                                      ldr r7, [r3, #0x30]
0065f7fc  24 20 92 e5                                      ldr r2, [r2, #0x24]
0065f800  06 80 87 e0                                      add r8, r7, r6
0065f804  04 10 98 e5                                      ldr r1, [r8, #4]
0065f808  20 20 92 e5                                      ldr r2, [r2, #0x20]
0065f80c  00 00 51 e3                                      cmp r1, #0
0065f810  14 b0 92 e5                                      ldr fp, [r2, #0x14]
0065f814  0a 00 00 0a                                      beq #0x65f844
0065f818  18 30 93 e5                                      ldr r3, [r3, #0x18]
0065f81c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0065f820  03 00 a0 e1                                      mov r0, r3
0065f824  00 30 93 e5                                      ldr r3, [r3]
0065f828  08 10 8d e5                                      str r1, [sp, #8]
0065f82c  0f e0 a0 e1                                      mov lr, pc
0065f830  08 f0 93 e5                                      ldr pc, [r3, #8]
0065f834  08 10 9d e5                                      ldr r1, [sp, #8]
0065f838  00 20 a0 e1                                      mov r2, r0
0065f83c  0a 00 a0 e1                                      mov r0, sl
0065f840  08 bc f2 eb                                      bl #0x30e868
0065f844  06 30 97 e7                                      ldr r3, [r7, r6]
0065f848  02 00 53 e3                                      cmp r3, #2
0065f84c  14 00 00 1a                                      bne #0x65f8a4
0065f850  00 30 a0 e3                                      mov r3, #0
0065f854  09 10 a0 e1                                      mov r1, sb
0065f858  04 00 a0 e1                                      mov r0, r4
0065f85c  21 30 cd e5                                      strb r3, [sp, #0x21]
0065f860  bf fe ff eb                                      bl #0x65f364
0065f864  08 30 98 e5                                      ldr r3, [r8, #8]
0065f868  28 00 8d e5                                      str r0, [sp, #0x28]
0065f86c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0065f870  24 30 8d e5                                      str r3, [sp, #0x24]
0065f874  14 30 8d e2                                      add r3, sp, #0x14
0065f878  2c 30 8d e5                                      str r3, [sp, #0x2c]
0065f87c  40 30 94 e5                                      ldr r3, [r4, #0x40]
0065f880  00 00 5b e3                                      cmp fp, #0
0065f884  09 10 a0 e1                                      mov r1, sb
0065f888  05 31 83 00                                      addeq r3, r3, r5, lsl #2
0065f88c  24 00 8d e2                                      add r0, sp, #0x24
0065f890  01 c0 52 e2                                      subs ip, r2, #1
0065f894  01 c0 a0 13                                      movne ip, #1
0065f898  0a 20 a0 e1                                      mov r2, sl
0065f89c  00 c0 8d e5                                      str ip, [sp]
0065f8a0  40 2a 00 eb                                      bl #0x66a1a8
0065f8a4  34 d0 8d e2                                      add sp, sp, #0x34
0065f8a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0065f8ac, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZNK6glitch7collada21CSceneNodeAnimatorSet25getAnimationVisualSceneIDEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::getAnimationVisualSceneID(int) const
; decoder-mode: arm
0065f8ac  10 40 2d e9                                      push {r4, lr}
0065f8b0  24 00 90 e5                                      ldr r0, [r0, #0x24]
0065f8b4  fe fd ff eb                                      bl #0x65f0b4
0065f8b8  00 10 a0 e3                                      mov r1, #0
0065f8bc  22 bb fe eb                                      bl #0x60e54c
0065f8c0  00 00 90 e5                                      ldr r0, [r0]
0065f8c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065f8c8, declared_size=312, range_size=312, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet19setCurrentAnimationEi
; demangled: glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(int)
; decoder-mode: arm
0065f8c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065f8cc  00 40 a0 e1                                      mov r4, r0
0065f8d0  01 50 a0 e1                                      mov r5, r1
0065f8d4  08 fe ff eb                                      bl #0x65f0fc
0065f8d8  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065f8dc  14 00 84 e5                                      str r0, [r4, #0x14]
0065f8e0  05 10 a0 e1                                      mov r1, r5
0065f8e4  3c 20 93 e5                                      ldr r2, [r3, #0x3c]
0065f8e8  03 00 a0 e1                                      mov r0, r3
0065f8ec  50 50 84 e5                                      str r5, [r4, #0x50]
0065f8f0  92 05 03 e0                                      mul r3, r2, r5
0065f8f4  4c 30 84 e5                                      str r3, [r4, #0x4c]
0065f8f8  ed fd ff eb                                      bl #0x65f0b4
0065f8fc  8c ba fe eb                                      bl #0x60e334
0065f900  00 30 94 e5                                      ldr r3, [r4]
0065f904  00 60 a0 e1                                      mov r6, r0
0065f908  04 00 a0 e1                                      mov r0, r4
0065f90c  0f e0 a0 e1                                      mov lr, pc
0065f910  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f914  00 00 50 e3                                      cmp r0, #0
0065f918  37 00 00 0a                                      beq #0x65f9fc
0065f91c  00 80 96 e5                                      ldr r8, [r6]
0065f920  00 00 58 e3                                      cmp r8, #0
0065f924  0f 00 00 0a                                      beq #0x65f968
0065f928  00 30 94 e5                                      ldr r3, [r4]
0065f92c  04 00 a0 e1                                      mov r0, r4
0065f930  0f e0 a0 e1                                      mov lr, pc
0065f934  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f938  34 60 80 e5                                      str r6, [r0, #0x34]
0065f93c  00 20 96 e5                                      ldr r2, [r6]
0065f940  00 00 52 e3                                      cmp r2, #0
0065f944  01 10 a0 03                                      moveq r1, #1
0065f948  14 10 80 05                                      streq r1, [r0, #0x14]
0065f94c  10 20 80 05                                      streq r2, [r0, #0x10]
0065f950  1f 00 00 0a                                      beq #0x65f9d4
0065f954  00 30 90 e5                                      ldr r3, [r0]
0065f958  00 10 a0 e3                                      mov r1, #0
0065f95c  0f e0 a0 e1                                      mov lr, pc
0065f960  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0065f964  1a 00 00 ea                                      b #0x65f9d4
0065f968  00 30 94 e5                                      ldr r3, [r4]
0065f96c  04 00 a0 e1                                      mov r0, r4
0065f970  0f e0 a0 e1                                      mov lr, pc
0065f974  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f978  01 70 a0 e3                                      mov r7, #1
0065f97c  10 80 80 e5                                      str r8, [r0, #0x10]
0065f980  34 80 80 e5                                      str r8, [r0, #0x34]
0065f984  14 70 80 e5                                      str r7, [r0, #0x14]
0065f988  00 30 94 e5                                      ldr r3, [r4]
0065f98c  04 00 a0 e1                                      mov r0, r4
0065f990  0f e0 a0 e1                                      mov lr, pc
0065f994  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065f998  00 30 90 e5                                      ldr r3, [r0]
0065f99c  00 80 a0 e1                                      mov r8, r0
0065f9a0  05 10 a0 e1                                      mov r1, r5
0065f9a4  04 00 a0 e1                                      mov r0, r4
0065f9a8  50 60 93 e5                                      ldr r6, [r3, #0x50]
0065f9ac  d4 fd ff eb                                      bl #0x65f104
0065f9b0  05 10 a0 e1                                      mov r1, r5
0065f9b4  00 a0 a0 e1                                      mov sl, r0
0065f9b8  04 00 a0 e1                                      mov r0, r4
0065f9bc  d2 fd ff eb                                      bl #0x65f10c
0065f9c0  0a 10 a0 e1                                      mov r1, sl
0065f9c4  00 20 a0 e1                                      mov r2, r0
0065f9c8  07 30 a0 e1                                      mov r3, r7
0065f9cc  08 00 a0 e1                                      mov r0, r8
0065f9d0  36 ff 2f e1                                      blx r6
0065f9d4  05 10 a0 e1                                      mov r1, r5
0065f9d8  24 00 94 e5                                      ldr r0, [r4, #0x24]
0065f9dc  b4 fd ff eb                                      bl #0x65f0b4
0065f9e0  00 30 90 e5                                      ldr r3, [r0]
0065f9e4  04 00 a0 e1                                      mov r0, r4
0065f9e8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065f9ec  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065f9f0  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
0065f9f4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0065f9f8  2e c0 fe ea                                      b #0x60fab8
0065f9fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0065fa00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZThn4_N6glitch7collada21CSceneNodeAnimatorSetD1Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet()
; decoder-mode: arm
0065fa00  04 00 40 e2                                      sub r0, r0, #4
0065fa04  ff ff ff ea                                      b #0x65fa08

; FUNCTION 0x0065fa08, declared_size=256, range_size=256, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSetD1Ev
; demangled: glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet()
; decoder-mode: arm
0065fa08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065fa0c  e8 80 9f e5                                      ldr r8, [pc, #0xe8]
0065fa10  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
0065fa14  34 30 90 e5                                      ldr r3, [r0, #0x34]
0065fa18  38 60 90 e5                                      ldr r6, [r0, #0x38]
0065fa1c  08 80 8f e0                                      add r8, pc, r8
0065fa20  02 20 98 e7                                      ldr r2, [r8, r2]
0065fa24  06 60 63 e0                                      rsb r6, r3, r6
0065fa28  46 61 a0 e1                                      asr r6, r6, #2
0065fa2c  00 40 a0 e1                                      mov r4, r0
0065fa30  a4 10 82 e2                                      add r1, r2, #0xa4
0065fa34  0c 00 82 e2                                      add r0, r2, #0xc
0065fa38  00 00 56 e3                                      cmp r6, #0
0065fa3c  c0 20 82 e2                                      add r2, r2, #0xc0
0065fa40  00 00 84 e5                                      str r0, [r4]
0065fa44  58 20 84 e5                                      str r2, [r4, #0x58]
0065fa48  04 10 84 e5                                      str r1, [r4, #4]
0065fa4c  0f 00 00 da                                      ble #0x65fa90
0065fa50  00 50 a0 e3                                      mov r5, #0
0065fa54  05 70 a0 e1                                      mov r7, r5
0065fa58  00 00 00 ea                                      b #0x65fa60
0065fa5c  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065fa60  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0065fa64  00 00 53 e3                                      cmp r3, #0
0065fa68  05 00 00 0a                                      beq #0x65fa84
0065fa6c  03 00 a0 e1                                      mov r0, r3
0065fa70  00 30 93 e5                                      ldr r3, [r3]
0065fa74  0f e0 a0 e1                                      mov lr, pc
0065fa78  04 f0 93 e5                                      ldr pc, [r3, #4]
0065fa7c  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065fa80  05 71 83 e7                                      str r7, [r3, r5, lsl #2]
0065fa84  01 50 85 e2                                      add r5, r5, #1
0065fa88  06 00 55 e1                                      cmp r5, r6
0065fa8c  f2 ff ff 1a                                      bne #0x65fa5c
0065fa90  54 00 94 e5                                      ldr r0, [r4, #0x54]
0065fa94  00 00 50 e3                                      cmp r0, #0
0065fa98  00 00 00 0a                                      beq #0x65faa0
0065fa9c  4c b0 fe eb                                      bl #0x60bbd4
0065faa0  40 00 94 e5                                      ldr r0, [r4, #0x40]
0065faa4  00 00 50 e3                                      cmp r0, #0
0065faa8  00 00 00 0a                                      beq #0x65fab0
0065faac  67 c2 f2 eb                                      bl #0x310450
0065fab0  34 00 94 e5                                      ldr r0, [r4, #0x34]
0065fab4  00 00 50 e3                                      cmp r0, #0
0065fab8  00 00 00 0a                                      beq #0x65fac0
0065fabc  63 c2 f2 eb                                      bl #0x310450
0065fac0  28 00 94 e5                                      ldr r0, [r4, #0x28]
0065fac4  00 00 50 e3                                      cmp r0, #0
0065fac8  00 00 00 0a                                      beq #0x65fad0
0065facc  5f c2 f2 eb                                      bl #0x310450
0065fad0  24 00 94 e5                                      ldr r0, [r4, #0x24]
0065fad4  00 00 50 e3                                      cmp r0, #0
0065fad8  00 00 00 0a                                      beq #0x65fae0
0065fadc  a8 f6 f2 eb                                      bl #0x31d584
0065fae0  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0065fae4  04 00 a0 e1                                      mov r0, r4
0065fae8  01 10 98 e7                                      ldr r1, [r8, r1]
0065faec  04 10 81 e2                                      add r1, r1, #4
0065faf0  33 27 00 eb                                      bl #0x6697c4
0065faf4  04 00 a0 e1                                      mov r0, r4
0065faf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0065fafc  74 50 33 00 00 26 00 00 44 15 00 00              .byte 0x74, 0x50, 0x33, 0x00, 0x00, 0x26, 0x00, 0x00, 0x44, 0x15, 0x00, 0x00

; FUNCTION 0x0065fb08, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZThn4_N6glitch7collada21CSceneNodeAnimatorSetD0Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet()
; decoder-mode: arm
0065fb08  04 00 40 e2                                      sub r0, r0, #4
0065fb0c  ff ff ff ea                                      b #0x65fb10

; FUNCTION 0x0065fb10, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSetD0Ev
; demangled: glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet()
; decoder-mode: arm
0065fb10  10 40 2d e9                                      push {r4, lr}
0065fb14  00 40 a0 e1                                      mov r4, r0
0065fb18  ba ff ff eb                                      bl #0x65fa08
0065fb1c  04 00 a0 e1                                      mov r0, r4
0065fb20  e2 b9 f2 eb                                      bl #0x30e2b0
0065fb24  04 00 a0 e1                                      mov r0, r4
0065fb28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065fb2c, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSetD2Ev
; demangled: glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet()
; decoder-mode: arm
0065fb2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065fb30  00 30 91 e5                                      ldr r3, [r1]
0065fb34  00 40 a0 e1                                      mov r4, r0
0065fb38  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
0065fb3c  00 30 80 e5                                      str r3, [r0]
0065fb40  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065fb44  1c 00 91 e5                                      ldr r0, [r1, #0x1c]
0065fb48  01 80 a0 e1                                      mov r8, r1
0065fb4c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
0065fb50  03 00 84 e7                                      str r0, [r4, r3]
0065fb54  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065fb58  38 60 94 e5                                      ldr r6, [r4, #0x38]
0065fb5c  02 20 8f e0                                      add r2, pc, r2
0065fb60  01 10 92 e7                                      ldr r1, [r2, r1]
0065fb64  06 60 63 e0                                      rsb r6, r3, r6
0065fb68  46 61 a0 e1                                      asr r6, r6, #2
0065fb6c  a4 10 81 e2                                      add r1, r1, #0xa4
0065fb70  00 00 56 e3                                      cmp r6, #0
0065fb74  04 10 84 e5                                      str r1, [r4, #4]
0065fb78  0f 00 00 da                                      ble #0x65fbbc
0065fb7c  00 50 a0 e3                                      mov r5, #0
0065fb80  05 70 a0 e1                                      mov r7, r5
0065fb84  00 00 00 ea                                      b #0x65fb8c
0065fb88  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065fb8c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0065fb90  00 00 53 e3                                      cmp r3, #0
0065fb94  05 00 00 0a                                      beq #0x65fbb0
0065fb98  03 00 a0 e1                                      mov r0, r3
0065fb9c  00 30 93 e5                                      ldr r3, [r3]
0065fba0  0f e0 a0 e1                                      mov lr, pc
0065fba4  04 f0 93 e5                                      ldr pc, [r3, #4]
0065fba8  34 30 94 e5                                      ldr r3, [r4, #0x34]
0065fbac  05 71 83 e7                                      str r7, [r3, r5, lsl #2]
0065fbb0  01 50 85 e2                                      add r5, r5, #1
0065fbb4  06 00 55 e1                                      cmp r5, r6
0065fbb8  f2 ff ff 1a                                      bne #0x65fb88
0065fbbc  54 00 94 e5                                      ldr r0, [r4, #0x54]
0065fbc0  00 00 50 e3                                      cmp r0, #0
0065fbc4  00 00 00 0a                                      beq #0x65fbcc
0065fbc8  01 b0 fe eb                                      bl #0x60bbd4
0065fbcc  40 00 94 e5                                      ldr r0, [r4, #0x40]
0065fbd0  00 00 50 e3                                      cmp r0, #0
0065fbd4  00 00 00 0a                                      beq #0x65fbdc
0065fbd8  1c c2 f2 eb                                      bl #0x310450
0065fbdc  34 00 94 e5                                      ldr r0, [r4, #0x34]
0065fbe0  00 00 50 e3                                      cmp r0, #0
0065fbe4  00 00 00 0a                                      beq #0x65fbec
0065fbe8  18 c2 f2 eb                                      bl #0x310450
0065fbec  28 00 94 e5                                      ldr r0, [r4, #0x28]
0065fbf0  00 00 50 e3                                      cmp r0, #0
0065fbf4  00 00 00 0a                                      beq #0x65fbfc
0065fbf8  14 c2 f2 eb                                      bl #0x310450
0065fbfc  24 00 94 e5                                      ldr r0, [r4, #0x24]
0065fc00  00 00 50 e3                                      cmp r0, #0
0065fc04  00 00 00 0a                                      beq #0x65fc0c
0065fc08  5d f6 f2 eb                                      bl #0x31d584
0065fc0c  04 10 88 e2                                      add r1, r8, #4
0065fc10  04 00 a0 e1                                      mov r0, r4
0065fc14  ea 26 00 eb                                      bl #0x6697c4
0065fc18  04 00 a0 e1                                      mov r0, r4
0065fc1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0065fc20  34 4f 33 00 00 26 00 00                          .byte 0x34, 0x4f, 0x33, 0x00, 0x00, 0x26, 0x00, 0x00

; FUNCTION 0x00660af4, declared_size=300, range_size=300, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSet4initERKN5boost13intrusive_ptrINS0_13CAnimationSetEEE
; demangled: glitch::collada::CSceneNodeAnimatorSet::init(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&)
; decoder-mode: arm
00660af4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00660af8  00 30 91 e5                                      ldr r3, [r1]
00660afc  00 40 a0 e1                                      mov r4, r0
00660b00  14 d0 4d e2                                      sub sp, sp, #0x14
00660b04  00 00 53 e3                                      cmp r3, #0
00660b08  04 20 93 15                                      ldrne r2, [r3, #4]
00660b0c  01 20 82 12                                      addne r2, r2, #1
00660b10  04 20 83 15                                      strne r2, [r3, #4]
00660b14  24 00 90 e5                                      ldr r0, [r0, #0x24]
00660b18  24 30 84 e5                                      str r3, [r4, #0x24]
00660b1c  00 00 50 e3                                      cmp r0, #0
00660b20  01 00 00 0a                                      beq #0x660b2c
00660b24  96 f2 f2 eb                                      bl #0x31d584
00660b28  24 30 94 e5                                      ldr r3, [r4, #0x24]
00660b2c  03 00 a0 e1                                      mov r0, r3
00660b30  48 f9 ff eb                                      bl #0x65f058
00660b34  28 70 84 e2                                      add r7, r4, #0x28
00660b38  00 50 a0 e1                                      mov r5, r0
00660b3c  00 10 a0 e1                                      mov r1, r0
00660b40  07 00 a0 e1                                      mov r0, r7
00660b44  5e fc ff eb                                      bl #0x65fcc4
00660b48  00 60 a0 e3                                      mov r6, #0
00660b4c  10 20 8d e2                                      add r2, sp, #0x10
00660b50  04 60 22 e5                                      str r6, [r2, #-4]!
00660b54  07 00 a0 e1                                      mov r0, r7
00660b58  05 10 a0 e1                                      mov r1, r5
00660b5c  37 f8 ff eb                                      bl #0x65ec40
00660b60  06 00 55 e1                                      cmp r5, r6
00660b64  05 00 00 da                                      ble #0x660b80
00660b68  06 20 a0 e1                                      mov r2, r6
00660b6c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00660b70  06 21 83 e7                                      str r2, [r3, r6, lsl #2]
00660b74  01 60 86 e2                                      add r6, r6, #1
00660b78  05 00 56 e1                                      cmp r6, r5
00660b7c  fa ff ff 1a                                      bne #0x660b6c
00660b80  34 70 84 e2                                      add r7, r4, #0x34
00660b84  07 00 a0 e1                                      mov r0, r7
00660b88  05 10 a0 e1                                      mov r1, r5
00660b8c  85 fc ff eb                                      bl #0x65fda8
00660b90  00 60 a0 e3                                      mov r6, #0
00660b94  10 20 8d e2                                      add r2, sp, #0x10
00660b98  08 60 22 e5                                      str r6, [r2, #-8]!
00660b9c  07 00 a0 e1                                      mov r0, r7
00660ba0  05 10 a0 e1                                      mov r1, r5
00660ba4  40 70 84 e2                                      add r7, r4, #0x40
00660ba8  69 f8 ff eb                                      bl #0x65ed54
00660bac  07 00 a0 e1                                      mov r0, r7
00660bb0  05 10 a0 e1                                      mov r1, r5
00660bb4  b4 fc ff eb                                      bl #0x65fe8c
00660bb8  10 20 8d e2                                      add r2, sp, #0x10
00660bbc  0c 60 22 e5                                      str r6, [r2, #-0xc]!
00660bc0  07 00 a0 e1                                      mov r0, r7
00660bc4  05 10 a0 e1                                      mov r1, r5
00660bc8  66 fe ff eb                                      bl #0x660568
00660bcc  06 10 a0 e1                                      mov r1, r6
00660bd0  48 00 a0 e3                                      mov r0, #0x48
00660bd4  74 4d fb eb                                      bl #0x5341ac
00660bd8  00 50 a0 e1                                      mov r5, r0
00660bdc  97 18 00 eb                                      bl #0x666e40
00660be0  04 00 a0 e1                                      mov r0, r4
00660be4  05 10 a0 e1                                      mov r1, r5
00660be8  00 30 94 e5                                      ldr r3, [r4]
00660bec  0f e0 a0 e1                                      mov lr, pc
00660bf0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00660bf4  04 00 a0 e1                                      mov r0, r4
00660bf8  00 30 94 e5                                      ldr r3, [r4]
00660bfc  06 10 a0 e1                                      mov r1, r6
00660c00  0f e0 a0 e1                                      mov lr, pc
00660c04  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00660c08  00 30 95 e5                                      ldr r3, [r5]
00660c0c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00660c10  00 00 85 e0                                      add r0, r5, r0
00660c14  5a f2 f2 eb                                      bl #0x31d584
00660c18  14 d0 8d e2                                      add sp, sp, #0x14
00660c1c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00660c20, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSetC1ERKN5boost13intrusive_ptrINS0_13CAnimationSetEEE
; demangled: glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&)
; decoder-mode: arm
00660c20  70 40 2d e9                                      push {r4, r5, r6, lr}
00660c24  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00660c28  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00660c2c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00660c30  05 50 8f e0                                      add r5, pc, r5
00660c34  02 20 95 e7                                      ldr r2, [r5, r2]
00660c38  03 30 95 e7                                      ldr r3, [r5, r3]
00660c3c  01 c0 a0 e3                                      mov ip, #1
00660c40  08 20 82 e2                                      add r2, r2, #8
00660c44  01 60 a0 e1                                      mov r6, r1
00660c48  5c c0 80 e5                                      str ip, [r0, #0x5c]
00660c4c  04 10 83 e2                                      add r1, r3, #4
00660c50  58 20 80 e5                                      str r2, [r0, #0x58]
00660c54  00 40 a0 e1                                      mov r4, r0
00660c58  27 23 00 eb                                      bl #0x6698fc
00660c5c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00660c60  04 00 a0 e1                                      mov r0, r4
00660c64  03 30 95 e7                                      ldr r3, [r5, r3]
00660c68  a4 20 83 e2                                      add r2, r3, #0xa4
00660c6c  0c 10 83 e2                                      add r1, r3, #0xc
00660c70  c0 30 83 e2                                      add r3, r3, #0xc0
00660c74  06 00 84 e8                                      stm r4, {r1, r2}
00660c78  58 30 84 e5                                      str r3, [r4, #0x58]
00660c7c  00 30 96 e5                                      ldr r3, [r6]
00660c80  06 10 a0 e1                                      mov r1, r6
00660c84  00 00 53 e3                                      cmp r3, #0
00660c88  24 30 84 e5                                      str r3, [r4, #0x24]
00660c8c  04 20 93 15                                      ldrne r2, [r3, #4]
00660c90  01 20 82 12                                      addne r2, r2, #1
00660c94  04 20 83 15                                      strne r2, [r3, #4]
00660c98  00 30 a0 e3                                      mov r3, #0
00660c9c  54 30 84 e5                                      str r3, [r4, #0x54]
00660ca0  28 30 84 e5                                      str r3, [r4, #0x28]
00660ca4  2c 30 84 e5                                      str r3, [r4, #0x2c]
00660ca8  30 30 84 e5                                      str r3, [r4, #0x30]
00660cac  34 30 84 e5                                      str r3, [r4, #0x34]
00660cb0  38 30 84 e5                                      str r3, [r4, #0x38]
00660cb4  3c 30 84 e5                                      str r3, [r4, #0x3c]
00660cb8  40 30 84 e5                                      str r3, [r4, #0x40]
00660cbc  44 30 84 e5                                      str r3, [r4, #0x44]
00660cc0  48 30 84 e5                                      str r3, [r4, #0x48]
00660cc4  4c 30 84 e5                                      str r3, [r4, #0x4c]
00660cc8  89 ff ff eb                                      bl #0x660af4
00660ccc  04 00 a0 e1                                      mov r0, r4
00660cd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00660cd4  60 3e 33 00 44 2b 00 00 44 15 00 00 00 26 00 00  .byte 0x60, 0x3e, 0x33, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x44, 0x15, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00

; FUNCTION 0x00660ce4, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSetC2ERKN5boost13intrusive_ptrINS0_13CAnimationSetEEE
; demangled: glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&)
; decoder-mode: arm
00660ce4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00660ce8  01 50 a0 e1                                      mov r5, r1
00660cec  90 40 9f e5                                      ldr r4, [pc, #0x90]
00660cf0  04 10 81 e2                                      add r1, r1, #4
00660cf4  00 60 a0 e1                                      mov r6, r0
00660cf8  02 70 a0 e1                                      mov r7, r2
00660cfc  fe 22 00 eb                                      bl #0x6698fc
00660d00  00 20 95 e5                                      ldr r2, [r5]
00660d04  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00660d08  04 40 8f e0                                      add r4, pc, r4
00660d0c  00 20 86 e5                                      str r2, [r6]
00660d10  03 30 94 e7                                      ldr r3, [r4, r3]
00660d14  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00660d18  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00660d1c  a4 30 83 e2                                      add r3, r3, #0xa4
00660d20  06 00 a0 e1                                      mov r0, r6
00660d24  02 10 86 e7                                      str r1, [r6, r2]
00660d28  04 30 86 e5                                      str r3, [r6, #4]
00660d2c  00 30 97 e5                                      ldr r3, [r7]
00660d30  07 10 a0 e1                                      mov r1, r7
00660d34  00 00 53 e3                                      cmp r3, #0
00660d38  24 30 86 e5                                      str r3, [r6, #0x24]
00660d3c  04 20 93 15                                      ldrne r2, [r3, #4]
00660d40  01 20 82 12                                      addne r2, r2, #1
00660d44  04 20 83 15                                      strne r2, [r3, #4]
00660d48  00 30 a0 e3                                      mov r3, #0
00660d4c  54 30 86 e5                                      str r3, [r6, #0x54]
00660d50  28 30 86 e5                                      str r3, [r6, #0x28]
00660d54  2c 30 86 e5                                      str r3, [r6, #0x2c]
00660d58  30 30 86 e5                                      str r3, [r6, #0x30]
00660d5c  34 30 86 e5                                      str r3, [r6, #0x34]
00660d60  38 30 86 e5                                      str r3, [r6, #0x38]
00660d64  3c 30 86 e5                                      str r3, [r6, #0x3c]
00660d68  40 30 86 e5                                      str r3, [r6, #0x40]
00660d6c  44 30 86 e5                                      str r3, [r6, #0x44]
00660d70  48 30 86 e5                                      str r3, [r6, #0x48]
00660d74  4c 30 86 e5                                      str r3, [r6, #0x4c]
00660d78  5d ff ff eb                                      bl #0x660af4
00660d7c  06 00 a0 e1                                      mov r0, r6
00660d80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00660d84  88 3d 33 00 00 26 00 00                          .byte 0x88, 0x3d, 0x33, 0x00, 0x00, 0x26, 0x00, 0x00

; FUNCTION 0x00660d8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZTv0_n12_N6glitch7collada21CSceneNodeAnimatorSetD0Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet()
; decoder-mode: arm
00660d8c  00 30 90 e5                                      ldr r3, [r0]
00660d90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00660d94  03 00 80 e0                                      add r0, r0, r3
00660d98  5c fb ff ea                                      b #0x65fb10

; FUNCTION 0x00660d9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZTv0_n12_N6glitch7collada21CSceneNodeAnimatorSetD1Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet()
; decoder-mode: arm
00660d9c  00 30 90 e5                                      ldr r3, [r0]
00660da0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00660da4  03 00 80 e0                                      add r0, r0, r3
00660da8  16 fb ff ea                                      b #0x65fa08

; FUNCTION 0x00662c90, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSet
; alias: _ZN6glitch7collada21CSceneNodeAnimatorSetC2Ev
; demangled: glitch::collada::CSceneNodeAnimatorSet::CSceneNodeAnimatorSet()
; decoder-mode: arm
00662c90  70 40 2d e9                                      push {r4, r5, r6, lr}
00662c94  01 60 a0 e1                                      mov r6, r1
00662c98  68 50 9f e5                                      ldr r5, [pc, #0x68]
00662c9c  04 10 81 e2                                      add r1, r1, #4
00662ca0  00 40 a0 e1                                      mov r4, r0
00662ca4  14 1b 00 eb                                      bl #0x6698fc
00662ca8  00 20 96 e5                                      ldr r2, [r6]
00662cac  58 30 9f e5                                      ldr r3, [pc, #0x58]
00662cb0  05 50 8f e0                                      add r5, pc, r5
00662cb4  00 20 84 e5                                      str r2, [r4]
00662cb8  03 30 95 e7                                      ldr r3, [r5, r3]
00662cbc  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
00662cc0  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
00662cc4  a4 20 83 e2                                      add r2, r3, #0xa4
00662cc8  00 30 a0 e3                                      mov r3, #0
00662ccc  01 00 84 e7                                      str r0, [r4, r1]
00662cd0  04 20 84 e5                                      str r2, [r4, #4]
00662cd4  54 30 84 e5                                      str r3, [r4, #0x54]
00662cd8  24 30 84 e5                                      str r3, [r4, #0x24]
00662cdc  28 30 84 e5                                      str r3, [r4, #0x28]
00662ce0  2c 30 84 e5                                      str r3, [r4, #0x2c]
00662ce4  30 30 84 e5                                      str r3, [r4, #0x30]
00662ce8  34 30 84 e5                                      str r3, [r4, #0x34]
00662cec  38 30 84 e5                                      str r3, [r4, #0x38]
00662cf0  3c 30 84 e5                                      str r3, [r4, #0x3c]
00662cf4  40 30 84 e5                                      str r3, [r4, #0x40]
00662cf8  44 30 84 e5                                      str r3, [r4, #0x44]
00662cfc  48 30 84 e5                                      str r3, [r4, #0x48]
00662d00  04 00 a0 e1                                      mov r0, r4
00662d04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00662d08  e0 1d 33 00 00 26 00 00                          .byte 0xe0, 0x1d, 0x33, 0x00, 0x00, 0x26, 0x00, 0x00
