; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065d3e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator19getAnimationTrackExEi
; demangled: glitch::collada::CSceneNodeAnimator::getAnimationTrackEx(int)
; decoder-mode: arm
0065d3e8  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d3ec  01 32 93 e7                                      ldr r3, [r3, r1, lsl #4]
0065d3f0  14 00 93 e5                                      ldr r0, [r3, #0x14]
0065d3f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065d3f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator17getAnimationTrackEi
; demangled: glitch::collada::CSceneNodeAnimator::getAnimationTrack(int)
; decoder-mode: arm
0065d3f8  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d3fc  01 32 93 e7                                      ldr r3, [r3, r1, lsl #4]
0065d400  10 00 93 e5                                      ldr r0, [r3, #0x10]
0065d404  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065d408, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
; demangled: glitch::collada::CSceneNodeAnimator::setTarget(int, void*, glitch::collada::animation_track::CApplicatorInfo const*)
; decoder-mode: arm
0065d408  70 40 2d e9                                      push {r4, r5, r6, lr}
0065d40c  44 c0 90 e5                                      ldr ip, [r0, #0x44]
0065d410  01 52 a0 e1                                      lsl r5, r1, #4
0065d414  03 60 a0 e1                                      mov r6, r3
0065d418  05 c0 8c e0                                      add ip, ip, r5
0065d41c  04 20 8c e5                                      str r2, [ip, #4]
0065d420  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d424  00 40 a0 e1                                      mov r4, r0
0065d428  05 30 83 e0                                      add r3, r3, r5
0065d42c  08 30 93 e5                                      ldr r3, [r3, #8]
0065d430  00 00 53 e3                                      cmp r3, #0
0065d434  07 00 00 0a                                      beq #0x65d458
0065d438  03 00 a0 e1                                      mov r0, r3
0065d43c  00 30 93 e5                                      ldr r3, [r3]
0065d440  0f e0 a0 e1                                      mov lr, pc
0065d444  04 f0 93 e5                                      ldr pc, [r3, #4]
0065d448  44 30 94 e5                                      ldr r3, [r4, #0x44]
0065d44c  00 20 a0 e3                                      mov r2, #0
0065d450  05 30 83 e0                                      add r3, r3, r5
0065d454  08 20 83 e5                                      str r2, [r3, #8]
0065d458  00 00 56 e3                                      cmp r6, #0
0065d45c  06 00 00 0a                                      beq #0x65d47c
0065d460  44 20 94 e5                                      ldr r2, [r4, #0x44]
0065d464  06 00 a0 e1                                      mov r0, r6
0065d468  00 30 96 e5                                      ldr r3, [r6]
0065d46c  05 50 82 e0                                      add r5, r2, r5
0065d470  0f e0 a0 e1                                      mov lr, pc
0065d474  08 f0 93 e5                                      ldr pc, [r3, #8]
0065d478  08 00 85 e5                                      str r0, [r5, #8]
0065d47c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065d480, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator10getBindURIEi
; demangled: glitch::collada::CSceneNodeAnimator::getBindURI(int)
; decoder-mode: arm
0065d480  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d484  01 32 93 e7                                      ldr r3, [r3, r1, lsl #4]
0065d488  10 30 93 e5                                      ldr r3, [r3, #0x10]
0065d48c  04 00 93 e5                                      ldr r0, [r3, #4]
0065d490  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065d494, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator14getTargetCountEv
; demangled: glitch::collada::CSceneNodeAnimator::getTargetCount()
; decoder-mode: arm
0065d494  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d498  48 00 90 e5                                      ldr r0, [r0, #0x48]
0065d49c  00 00 63 e0                                      rsb r0, r3, r0
0065d4a0  40 02 a0 e1                                      asr r0, r0, #4
0065d4a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065d4a8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator13getTargetSizeEi
; demangled: glitch::collada::CSceneNodeAnimator::getTargetSize(int)
; decoder-mode: arm
0065d4a8  10 40 2d e9                                      push {r4, lr}
0065d4ac  00 30 90 e5                                      ldr r3, [r0]
0065d4b0  0f e0 a0 e1                                      mov lr, pc
0065d4b4  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0065d4b8  00 30 90 e5                                      ldr r3, [r0]
0065d4bc  0f e0 a0 e1                                      mov lr, pc
0065d4c0  08 f0 93 e5                                      ldr pc, [r3, #8]
0065d4c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065d4c8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator14getTargetsSizeEv
; demangled: glitch::collada::CSceneNodeAnimator::getTargetsSize()
; decoder-mode: arm
0065d4c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065d4cc  48 70 90 e5                                      ldr r7, [r0, #0x48]
0065d4d0  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d4d4  00 50 a0 e1                                      mov r5, r0
0065d4d8  07 70 63 e0                                      rsb r7, r3, r7
0065d4dc  47 72 b0 e1                                      asrs r7, r7, #4
0065d4e0  07 60 a0 01                                      moveq r6, r7
0065d4e4  0d 00 00 0a                                      beq #0x65d520
0065d4e8  00 40 a0 e3                                      mov r4, #0
0065d4ec  04 60 a0 e1                                      mov r6, r4
0065d4f0  04 10 a0 e1                                      mov r1, r4
0065d4f4  00 30 95 e5                                      ldr r3, [r5]
0065d4f8  05 00 a0 e1                                      mov r0, r5
0065d4fc  0f e0 a0 e1                                      mov lr, pc
0065d500  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0065d504  00 30 90 e5                                      ldr r3, [r0]
0065d508  0f e0 a0 e1                                      mov lr, pc
0065d50c  08 f0 93 e5                                      ldr pc, [r3, #8]
0065d510  01 40 84 e2                                      add r4, r4, #1
0065d514  07 00 54 e1                                      cmp r4, r7
0065d518  00 60 86 e0                                      add r6, r6, r0
0065d51c  f3 ff ff 1a                                      bne #0x65d4f0
0065d520  06 00 a0 e1                                      mov r0, r6
0065d524  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065d528, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator11animateNodeEPNS_5scene10ISceneNodeEj
; demangled: glitch::collada::CSceneNodeAnimator::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
0065d528  10 40 2d e9                                      push {r4, lr}
0065d52c  02 10 a0 e1                                      mov r1, r2
0065d530  00 30 90 e5                                      ldr r3, [r0]
0065d534  0f e0 a0 e1                                      mov lr, pc
0065d538  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0065d53c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065d540, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CSceneNodeAnimator::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0065d540  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065d544, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator11createCloneEv
; demangled: glitch::collada::CSceneNodeAnimator::createClone()
; decoder-mode: arm
0065d544  00 00 a0 e3                                      mov r0, #0
0065d548  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065d54c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator20removeAnimationTrackEPNS0_10SAnimationE
; demangled: glitch::collada::CSceneNodeAnimator::removeAnimationTrack(glitch::collada::SAnimation*)
; decoder-mode: arm
0065d54c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065d550  48 20 90 e5                                      ldr r2, [r0, #0x48]
0065d554  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d558  00 60 a0 e1                                      mov r6, r0
0065d55c  02 50 63 e0                                      rsb r5, r3, r2
0065d560  45 52 b0 e1                                      asrs r5, r5, #4
0065d564  0e 00 00 0a                                      beq #0x65d5a4
0065d568  00 00 93 e5                                      ldr r0, [r3]
0065d56c  01 00 50 e1                                      cmp r0, r1
0065d570  03 70 a0 01                                      moveq r7, r3
0065d574  00 40 a0 03                                      moveq r4, #0
0065d578  0a 00 00 0a                                      beq #0x65d5a8
0065d57c  00 00 a0 e3                                      mov r0, #0
0065d580  03 00 00 ea                                      b #0x65d594
0065d584  00 c2 93 e7                                      ldr ip, [r3, r0, lsl #4]
0065d588  04 70 83 e0                                      add r7, r3, r4
0065d58c  01 00 5c e1                                      cmp ip, r1
0065d590  04 00 00 0a                                      beq #0x65d5a8
0065d594  01 00 80 e2                                      add r0, r0, #1
0065d598  05 00 50 e1                                      cmp r0, r5
0065d59c  00 42 a0 e1                                      lsl r4, r0, #4
0065d5a0  f7 ff ff 1a                                      bne #0x65d584
0065d5a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065d5a8  08 10 97 e5                                      ldr r1, [r7, #8]
0065d5ac  00 00 51 e3                                      cmp r1, #0
0065d5b0  09 00 00 0a                                      beq #0x65d5dc
0065d5b4  00 30 91 e5                                      ldr r3, [r1]
0065d5b8  01 00 a0 e1                                      mov r0, r1
0065d5bc  0f e0 a0 e1                                      mov lr, pc
0065d5c0  04 f0 93 e5                                      ldr pc, [r3, #4]
0065d5c4  44 30 96 e5                                      ldr r3, [r6, #0x44]
0065d5c8  00 20 a0 e3                                      mov r2, #0
0065d5cc  04 30 83 e0                                      add r3, r3, r4
0065d5d0  08 20 83 e5                                      str r2, [r3, #8]
0065d5d4  44 30 96 e5                                      ldr r3, [r6, #0x44]
0065d5d8  48 20 96 e5                                      ldr r2, [r6, #0x48]
0065d5dc  04 40 83 e0                                      add r4, r3, r4
0065d5e0  10 c0 84 e2                                      add ip, r4, #0x10
0065d5e4  02 00 5c e1                                      cmp ip, r2
0065d5e8  0b 00 00 0a                                      beq #0x65d61c
0065d5ec  02 50 6c e0                                      rsb r5, ip, r2
0065d5f0  45 52 a0 e1                                      asr r5, r5, #4
0065d5f4  00 00 55 e3                                      cmp r5, #0
0065d5f8  01 00 00 ca                                      bgt #0x65d604
0065d5fc  06 00 00 ea                                      b #0x65d61c
0065d600  10 c0 8c e2                                      add ip, ip, #0x10
0065d604  01 50 55 e2                                      subs r5, r5, #1
0065d608  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0065d60c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0065d610  0c 40 a0 e1                                      mov r4, ip
0065d614  f9 ff ff 1a                                      bne #0x65d600
0065d618  48 20 96 e5                                      ldr r2, [r6, #0x48]
0065d61c  10 20 42 e2                                      sub r2, r2, #0x10
0065d620  48 20 86 e5                                      str r2, [r6, #0x48]
0065d624  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065d628, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator21removeAnimationTracksEv
; demangled: glitch::collada::CSceneNodeAnimator::removeAnimationTracks()
; decoder-mode: arm
0065d628  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065d62c  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d630  48 70 90 e5                                      ldr r7, [r0, #0x48]
0065d634  00 60 a0 e1                                      mov r6, r0
0065d638  07 70 63 e0                                      rsb r7, r3, r7
0065d63c  47 72 b0 e1                                      asrs r7, r7, #4
0065d640  12 00 00 0a                                      beq #0x65d690
0065d644  00 40 a0 e3                                      mov r4, #0
0065d648  04 80 a0 e1                                      mov r8, r4
0065d64c  00 00 00 ea                                      b #0x65d654
0065d650  44 30 96 e5                                      ldr r3, [r6, #0x44]
0065d654  04 52 a0 e1                                      lsl r5, r4, #4
0065d658  05 30 83 e0                                      add r3, r3, r5
0065d65c  08 30 93 e5                                      ldr r3, [r3, #8]
0065d660  01 40 84 e2                                      add r4, r4, #1
0065d664  00 00 53 e3                                      cmp r3, #0
0065d668  06 00 00 0a                                      beq #0x65d688
0065d66c  03 00 a0 e1                                      mov r0, r3
0065d670  00 30 93 e5                                      ldr r3, [r3]
0065d674  0f e0 a0 e1                                      mov lr, pc
0065d678  04 f0 93 e5                                      ldr pc, [r3, #4]
0065d67c  44 30 96 e5                                      ldr r3, [r6, #0x44]
0065d680  05 50 83 e0                                      add r5, r3, r5
0065d684  08 80 85 e5                                      str r8, [r5, #8]
0065d688  07 00 54 e1                                      cmp r4, r7
0065d68c  ef ff ff 1a                                      bne #0x65d650
0065d690  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065d6b4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator10updateTimeEj
; demangled: glitch::collada::CSceneNodeAnimator::updateTime(unsigned int)
; decoder-mode: arm
0065d6b4  48 20 90 e5                                      ldr r2, [r0, #0x48]
0065d6b8  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d6bc  02 30 63 e0                                      rsb r3, r3, r2
0065d6c0  23 32 b0 e1                                      lsrs r3, r3, #4
0065d6c4  02 00 00 1a                                      bne #0x65d6d4
0065d6c8  50 30 90 e5                                      ldr r3, [r0, #0x50]
0065d6cc  00 00 53 e3                                      cmp r3, #0
0065d6d0  1e ff 2f 01                                      bxeq lr
0065d6d4  5b 29 00 ea                                      b #0x667c48

; FUNCTION 0x0065d768, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator16getAnimationDataEi
; demangled: glitch::collada::CSceneNodeAnimator::getAnimationData(int)
; decoder-mode: arm
0065d768  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065d76c  14 d0 4d e2                                      sub sp, sp, #0x14
0065d770  00 30 90 e5                                      ldr r3, [r0]
0065d774  00 40 a0 e1                                      mov r4, r0
0065d778  01 70 a0 e1                                      mov r7, r1
0065d77c  0f e0 a0 e1                                      mov lr, pc
0065d780  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d784  78 50 9f e5                                      ldr r5, [pc, #0x78]
0065d788  00 20 50 e2                                      subs r2, r0, #0
0065d78c  05 50 8f e0                                      add r5, pc, r5
0065d790  07 00 00 0a                                      beq #0x65d7b4
0065d794  00 30 94 e5                                      ldr r3, [r4]
0065d798  04 00 a0 e1                                      mov r0, r4
0065d79c  0f e0 a0 e1                                      mov lr, pc
0065d7a0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d7a4  00 30 90 e5                                      ldr r3, [r0]
0065d7a8  0f e0 a0 e1                                      mov lr, pc
0065d7ac  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0065d7b0  00 20 a0 e1                                      mov r2, r0
0065d7b4  07 30 a0 e1                                      mov r3, r7
0065d7b8  28 10 84 e2                                      add r1, r4, #0x28
0065d7bc  0d 00 a0 e1                                      mov r0, sp
0065d7c0  c4 ff ff eb                                      bl #0x65d6d8
0065d7c4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0065d7c8  54 20 84 e2                                      add r2, r4, #0x54
0065d7cc  0d 10 a0 e1                                      mov r1, sp
0065d7d0  03 30 95 e7                                      ldr r3, [r5, r3]
0065d7d4  0d 60 a0 e1                                      mov r6, sp
0065d7d8  00 00 93 e5                                      ldr r0, [r3]
0065d7dc  6e bb fe eb                                      bl #0x60c59c
0065d7e0  54 40 94 e5                                      ldr r4, [r4, #0x54]
0065d7e4  0d 00 a0 e1                                      mov r0, sp
0065d7e8  00 00 54 e3                                      cmp r4, #0
0065d7ec  14 30 94 15                                      ldrne r3, [r4, #0x14]
0065d7f0  0c 40 93 15                                      ldrne r4, [r3, #0xc]
0065d7f4  1e ef fe eb                                      bl #0x619474
0065d7f8  04 00 a0 e1                                      mov r0, r4
0065d7fc  14 d0 8d e2                                      add sp, sp, #0x14
0065d800  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0065d804  04 73 33 00 74 09 00 00                          .byte 0x04, 0x73, 0x33, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0065d80c, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator22computeAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimator::computeAnimationValues(unsigned int)
; decoder-mode: arm
0065d80c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065d810  48 20 90 e5                                      ldr r2, [r0, #0x48]
0065d814  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d818  2c d0 4d e2                                      sub sp, sp, #0x2c
0065d81c  00 50 a0 e1                                      mov r5, r0
0065d820  02 30 63 e0                                      rsb r3, r3, r2
0065d824  23 32 b0 e1                                      lsrs r3, r3, #4
0065d828  01 40 a0 e1                                      mov r4, r1
0065d82c  02 00 00 1a                                      bne #0x65d83c
0065d830  50 30 90 e5                                      ldr r3, [r0, #0x50]
0065d834  00 00 53 e3                                      cmp r3, #0
0065d838  2f 00 00 0a                                      beq #0x65d8fc
0065d83c  05 00 a0 e1                                      mov r0, r5
0065d840  04 10 a0 e1                                      mov r1, r4
0065d844  ff 28 00 eb                                      bl #0x667c48
0065d848  00 30 95 e5                                      ldr r3, [r5]
0065d84c  05 00 a0 e1                                      mov r0, r5
0065d850  0f e0 a0 e1                                      mov lr, pc
0065d854  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d858  00 00 50 e3                                      cmp r0, #0
0065d85c  04 70 90 15                                      ldrne r7, [r0, #4]
0065d860  27 00 00 0a                                      beq #0x65d904
0065d864  07 10 a0 e1                                      mov r1, r7
0065d868  05 00 a0 e1                                      mov r0, r5
0065d86c  0c 80 95 e5                                      ldr r8, [r5, #0xc]
0065d870  bc ff ff eb                                      bl #0x65d768
0065d874  44 10 95 e5                                      ldr r1, [r5, #0x44]
0065d878  48 60 95 e5                                      ldr r6, [r5, #0x48]
0065d87c  34 30 d5 e5                                      ldrb r3, [r5, #0x34]
0065d880  01 80 58 e2                                      subs r8, r8, #1
0065d884  01 80 a0 13                                      movne r8, #1
0065d888  06 60 61 e0                                      rsb r6, r1, r6
0065d88c  46 62 b0 e1                                      asrs r6, r6, #4
0065d890  00 a0 a0 e1                                      mov sl, r0
0065d894  19 30 cd e5                                      strb r3, [sp, #0x19]
0065d898  17 00 00 0a                                      beq #0x65d8fc
0065d89c  00 40 a0 e3                                      mov r4, #0
0065d8a0  0c 90 8d e2                                      add sb, sp, #0xc
0065d8a4  1c b0 8d e2                                      add fp, sp, #0x1c
0065d8a8  00 00 00 ea                                      b #0x65d8b0
0065d8ac  44 10 95 e5                                      ldr r1, [r5, #0x44]
0065d8b0  04 32 81 e0                                      add r3, r1, r4, lsl #4
0065d8b4  04 20 93 e5                                      ldr r2, [r3, #4]
0065d8b8  0c 30 83 e2                                      add r3, r3, #0xc
0065d8bc  00 00 52 e3                                      cmp r2, #0
0065d8c0  0a 00 00 0a                                      beq #0x65d8f0
0065d8c4  34 c0 d5 e5                                      ldrb ip, [r5, #0x34]
0065d8c8  04 02 91 e7                                      ldr r0, [r1, r4, lsl #4]
0065d8cc  20 a0 8d e5                                      str sl, [sp, #0x20]
0065d8d0  00 00 5c e3                                      cmp ip, #0
0065d8d4  1c 00 8d e5                                      str r0, [sp, #0x1c]
0065d8d8  0c 30 81 12                                      addne r3, r1, #0xc
0065d8dc  0b 00 a0 e1                                      mov r0, fp
0065d8e0  07 10 a0 e1                                      mov r1, r7
0065d8e4  24 90 8d e5                                      str sb, [sp, #0x24]
0065d8e8  00 80 8d e5                                      str r8, [sp]
0065d8ec  2d 32 00 eb                                      bl #0x66a1a8
0065d8f0  01 40 84 e2                                      add r4, r4, #1
0065d8f4  06 00 54 e1                                      cmp r4, r6
0065d8f8  eb ff ff 1a                                      bne #0x65d8ac
0065d8fc  2c d0 8d e2                                      add sp, sp, #0x2c
0065d900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065d904  04 00 a0 e1                                      mov r0, r4
0065d908  14 10 95 e5                                      ldr r1, [r5, #0x14]
0065d90c  86 c4 f2 eb                                      bl #0x30eb2c
0065d910  38 70 95 e5                                      ldr r7, [r5, #0x38]
0065d914  07 70 81 e0                                      add r7, r1, r7
0065d918  d1 ff ff ea                                      b #0x65d864

; FUNCTION 0x0065d91c, declared_size=284, range_size=284, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator20applyAnimationValuesEj
; demangled: glitch::collada::CSceneNodeAnimator::applyAnimationValues(unsigned int)
; decoder-mode: arm
0065d91c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065d920  48 20 90 e5                                      ldr r2, [r0, #0x48]
0065d924  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065d928  28 d0 4d e2                                      sub sp, sp, #0x28
0065d92c  00 50 a0 e1                                      mov r5, r0
0065d930  02 30 63 e0                                      rsb r3, r3, r2
0065d934  23 32 b0 e1                                      lsrs r3, r3, #4
0065d938  01 40 a0 e1                                      mov r4, r1
0065d93c  02 00 00 1a                                      bne #0x65d94c
0065d940  50 30 90 e5                                      ldr r3, [r0, #0x50]
0065d944  00 00 53 e3                                      cmp r3, #0
0065d948  32 00 00 0a                                      beq #0x65da18
0065d94c  05 00 a0 e1                                      mov r0, r5
0065d950  04 10 a0 e1                                      mov r1, r4
0065d954  bb 28 00 eb                                      bl #0x667c48
0065d958  00 30 95 e5                                      ldr r3, [r5]
0065d95c  05 00 a0 e1                                      mov r0, r5
0065d960  0f e0 a0 e1                                      mov lr, pc
0065d964  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0065d968  00 00 50 e3                                      cmp r0, #0
0065d96c  04 60 90 15                                      ldrne r6, [r0, #4]
0065d970  2a 00 00 0a                                      beq #0x65da20
0065d974  06 10 a0 e1                                      mov r1, r6
0065d978  05 00 a0 e1                                      mov r0, r5
0065d97c  0c 70 95 e5                                      ldr r7, [r5, #0xc]
0065d980  78 ff ff eb                                      bl #0x65d768
0065d984  44 30 95 e5                                      ldr r3, [r5, #0x44]
0065d988  00 80 a0 e1                                      mov r8, r0
0065d98c  48 00 95 e5                                      ldr r0, [r5, #0x48]
0065d990  34 20 d5 e5                                      ldrb r2, [r5, #0x34]
0065d994  01 70 57 e2                                      subs r7, r7, #1
0065d998  01 70 a0 13                                      movne r7, #1
0065d99c  00 10 63 e0                                      rsb r1, r3, r0
0065d9a0  21 12 b0 e1                                      lsrs r1, r1, #4
0065d9a4  19 20 cd e5                                      strb r2, [sp, #0x19]
0065d9a8  1a 00 00 0a                                      beq #0x65da18
0065d9ac  00 40 a0 e3                                      mov r4, #0
0065d9b0  0c a0 8d e2                                      add sl, sp, #0xc
0065d9b4  1c 90 8d e2                                      add sb, sp, #0x1c
0065d9b8  04 12 83 e0                                      add r1, r3, r4, lsl #4
0065d9bc  04 20 91 e5                                      ldr r2, [r1, #4]
0065d9c0  0c c0 83 e2                                      add ip, r3, #0xc
0065d9c4  00 00 52 e3                                      cmp r2, #0
0065d9c8  0e 00 00 0a                                      beq #0x65da08
0065d9cc  04 02 93 e7                                      ldr r0, [r3, r4, lsl #4]
0065d9d0  34 30 d5 e5                                      ldrb r3, [r5, #0x34]
0065d9d4  20 80 8d e5                                      str r8, [sp, #0x20]
0065d9d8  1c 00 8d e5                                      str r0, [sp, #0x1c]
0065d9dc  00 00 53 e3                                      cmp r3, #0
0065d9e0  24 a0 8d e5                                      str sl, [sp, #0x24]
0065d9e4  08 30 91 e5                                      ldr r3, [r1, #8]
0065d9e8  0c c0 81 02                                      addeq ip, r1, #0xc
0065d9ec  09 00 a0 e1                                      mov r0, sb
0065d9f0  06 10 a0 e1                                      mov r1, r6
0065d9f4  00 c0 8d e5                                      str ip, [sp]
0065d9f8  04 70 8d e5                                      str r7, [sp, #4]
0065d9fc  af 31 00 eb                                      bl #0x66a0c0
0065da00  48 00 95 e5                                      ldr r0, [r5, #0x48]
0065da04  44 30 95 e5                                      ldr r3, [r5, #0x44]
0065da08  01 40 84 e2                                      add r4, r4, #1
0065da0c  00 20 63 e0                                      rsb r2, r3, r0
0065da10  42 02 54 e1                                      cmp r4, r2, asr #4
0065da14  e7 ff ff 3a                                      blo #0x65d9b8
0065da18  28 d0 8d e2                                      add sp, sp, #0x28
0065da1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065da20  04 00 a0 e1                                      mov r0, r4
0065da24  14 10 95 e5                                      ldr r1, [r5, #0x14]
0065da28  3f c4 f2 eb                                      bl #0x30eb2c
0065da2c  38 60 95 e5                                      ldr r6, [r5, #0x38]
0065da30  06 60 81 e0                                      add r6, r1, r6
0065da34  ce ff ff ea                                      b #0x65d974

; FUNCTION 0x0065da38, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator17getAnimationValueEiiPv
; demangled: glitch::collada::CSceneNodeAnimator::getAnimationValue(int, int, void*)
; decoder-mode: arm
0065da38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065da3c  44 c0 90 e5                                      ldr ip, [r0, #0x44]
0065da40  28 d0 4d e2                                      sub sp, sp, #0x28
0065da44  02 60 a0 e1                                      mov r6, r2
0065da48  00 20 a0 e3                                      mov r2, #0
0065da4c  19 20 cd e5                                      strb r2, [sp, #0x19]
0065da50  01 70 a0 e1                                      mov r7, r1
0065da54  06 10 a0 e1                                      mov r1, r6
0065da58  07 52 9c e7                                      ldr r5, [ip, r7, lsl #4]
0065da5c  03 80 a0 e1                                      mov r8, r3
0065da60  07 72 8c e0                                      add r7, ip, r7, lsl #4
0065da64  00 40 a0 e1                                      mov r4, r0
0065da68  3e ff ff eb                                      bl #0x65d768
0065da6c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0065da70  0c c0 8d e2                                      add ip, sp, #0xc
0065da74  20 00 8d e5                                      str r0, [sp, #0x20]
0065da78  01 e0 5e e2                                      subs lr, lr, #1
0065da7c  01 e0 a0 13                                      movne lr, #1
0065da80  06 10 a0 e1                                      mov r1, r6
0065da84  08 20 a0 e1                                      mov r2, r8
0065da88  0c 30 87 e2                                      add r3, r7, #0xc
0065da8c  1c 00 8d e2                                      add r0, sp, #0x1c
0065da90  1c 50 8d e5                                      str r5, [sp, #0x1c]
0065da94  24 c0 8d e5                                      str ip, [sp, #0x24]
0065da98  00 e0 8d e5                                      str lr, [sp]
0065da9c  c1 31 00 eb                                      bl #0x66a1a8
0065daa0  28 d0 8d e2                                      add sp, sp, #0x28
0065daa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065daa8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZThn4_N6glitch7collada18CSceneNodeAnimatorD1Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator()
; decoder-mode: arm
0065daa8  04 00 40 e2                                      sub r0, r0, #4
0065daac  ff ff ff ea                                      b #0x65dab0

; FUNCTION 0x0065dab0, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimatorD1Ev
; demangled: glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator()
; decoder-mode: arm
0065dab0  70 40 2d e9                                      push {r4, r5, r6, lr}
0065dab4  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0065dab8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0065dabc  00 40 a0 e1                                      mov r4, r0
0065dac0  05 50 8f e0                                      add r5, pc, r5
0065dac4  03 30 95 e7                                      ldr r3, [r5, r3]
0065dac8  a8 20 83 e2                                      add r2, r3, #0xa8
0065dacc  0c 10 83 e2                                      add r1, r3, #0xc
0065dad0  c4 30 83 e2                                      add r3, r3, #0xc4
0065dad4  00 10 80 e5                                      str r1, [r0]
0065dad8  58 30 80 e5                                      str r3, [r0, #0x58]
0065dadc  04 20 80 e5                                      str r2, [r0, #4]
0065dae0  d0 fe ff eb                                      bl #0x65d628
0065dae4  54 00 94 e5                                      ldr r0, [r4, #0x54]
0065dae8  00 00 50 e3                                      cmp r0, #0
0065daec  00 00 00 0a                                      beq #0x65daf4
0065daf0  37 b8 fe eb                                      bl #0x60bbd4
0065daf4  44 00 94 e5                                      ldr r0, [r4, #0x44]
0065daf8  00 00 50 e3                                      cmp r0, #0
0065dafc  00 00 00 0a                                      beq #0x65db04
0065db00  52 ca f2 eb                                      bl #0x310450
0065db04  28 00 84 e2                                      add r0, r4, #0x28
0065db08  59 ee fe eb                                      bl #0x619474
0065db0c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0065db10  04 00 a0 e1                                      mov r0, r4
0065db14  01 10 95 e7                                      ldr r1, [r5, r1]
0065db18  04 10 81 e2                                      add r1, r1, #4
0065db1c  28 2f 00 eb                                      bl #0x6697c4
0065db20  04 00 a0 e1                                      mov r0, r4
0065db24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0065db28  d0 6f 33 00 88 4b 00 00 0c 39 00 00              .byte 0xd0, 0x6f, 0x33, 0x00, 0x88, 0x4b, 0x00, 0x00, 0x0c, 0x39, 0x00, 0x00

; FUNCTION 0x0065db34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZThn4_N6glitch7collada18CSceneNodeAnimatorD0Ev
; demangled: non-virtual thunk to glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator()
; decoder-mode: arm
0065db34  04 00 40 e2                                      sub r0, r0, #4
0065db38  ff ff ff ea                                      b #0x65db3c

; FUNCTION 0x0065db3c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimatorD0Ev
; demangled: glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator()
; decoder-mode: arm
0065db3c  10 40 2d e9                                      push {r4, lr}
0065db40  00 40 a0 e1                                      mov r4, r0
0065db44  d9 ff ff eb                                      bl #0x65dab0
0065db48  04 00 a0 e1                                      mov r0, r4
0065db4c  d7 c1 f2 eb                                      bl #0x30e2b0
0065db50  04 00 a0 e1                                      mov r0, r4
0065db54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065db58, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimatorD2Ev
; demangled: glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator()
; decoder-mode: arm
0065db58  70 40 2d e9                                      push {r4, r5, r6, lr}
0065db5c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0065db60  01 50 a0 e1                                      mov r5, r1
0065db64  68 20 9f e5                                      ldr r2, [pc, #0x68]
0065db68  00 10 91 e5                                      ldr r1, [r1]
0065db6c  03 30 8f e0                                      add r3, pc, r3
0065db70  02 20 93 e7                                      ldr r2, [r3, r2]
0065db74  00 10 80 e5                                      str r1, [r0]
0065db78  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0065db7c  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
0065db80  a8 20 82 e2                                      add r2, r2, #0xa8
0065db84  00 40 a0 e1                                      mov r4, r0
0065db88  01 c0 80 e7                                      str ip, [r0, r1]
0065db8c  04 20 80 e5                                      str r2, [r0, #4]
0065db90  a4 fe ff eb                                      bl #0x65d628
0065db94  54 00 94 e5                                      ldr r0, [r4, #0x54]
0065db98  00 00 50 e3                                      cmp r0, #0
0065db9c  00 00 00 0a                                      beq #0x65dba4
0065dba0  0b b8 fe eb                                      bl #0x60bbd4
0065dba4  44 00 94 e5                                      ldr r0, [r4, #0x44]
0065dba8  00 00 50 e3                                      cmp r0, #0
0065dbac  00 00 00 0a                                      beq #0x65dbb4
0065dbb0  26 ca f2 eb                                      bl #0x310450
0065dbb4  28 00 84 e2                                      add r0, r4, #0x28
0065dbb8  2d ee fe eb                                      bl #0x619474
0065dbbc  04 00 a0 e1                                      mov r0, r4
0065dbc0  04 10 85 e2                                      add r1, r5, #4
0065dbc4  fe 2e 00 eb                                      bl #0x6697c4
0065dbc8  04 00 a0 e1                                      mov r0, r4
0065dbcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0065dbd0  24 6f 33 00 88 4b 00 00                          .byte 0x24, 0x6f, 0x33, 0x00, 0x88, 0x4b, 0x00, 0x00

; FUNCTION 0x0065dbd8, declared_size=456, range_size=456, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimatorC1ERKNS0_16CColladaDatabaseERNS0_22SLibraryAnimationClipsE
; demangled: glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator(glitch::collada::CColladaDatabase const&, glitch::collada::SLibraryAnimationClips&)
; decoder-mode: arm
0065dbd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065dbdc  a8 51 9f e5                                      ldr r5, [pc, #0x1a8]
0065dbe0  a8 c1 9f e5                                      ldr ip, [pc, #0x1a8]
0065dbe4  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
0065dbe8  05 50 8f e0                                      add r5, pc, r5
0065dbec  0c c0 95 e7                                      ldr ip, [r5, ip]
0065dbf0  03 30 95 e7                                      ldr r3, [r5, r3]
0065dbf4  01 e0 a0 e3                                      mov lr, #1
0065dbf8  08 c0 8c e2                                      add ip, ip, #8
0065dbfc  01 60 a0 e1                                      mov r6, r1
0065dc00  5c e0 80 e5                                      str lr, [r0, #0x5c]
0065dc04  04 10 83 e2                                      add r1, r3, #4
0065dc08  58 c0 80 e5                                      str ip, [r0, #0x58]
0065dc0c  00 40 a0 e1                                      mov r4, r0
0065dc10  02 80 a0 e1                                      mov r8, r2
0065dc14  38 2f 00 eb                                      bl #0x6698fc
0065dc18  00 30 96 e5                                      ldr r3, [r6]
0065dc1c  28 30 84 e5                                      str r3, [r4, #0x28]
0065dc20  04 20 96 e5                                      ldr r2, [r6, #4]
0065dc24  00 00 53 e3                                      cmp r3, #0
0065dc28  2c 20 84 e5                                      str r2, [r4, #0x2c]
0065dc2c  03 00 00 0a                                      beq #0x65dc40
0065dc30  04 20 93 e5                                      ldr r2, [r3, #4]
0065dc34  00 00 52 e3                                      cmp r2, #0
0065dc38  01 20 82 12                                      addne r2, r2, #1
0065dc3c  04 20 83 15                                      strne r2, [r3, #4]
0065dc40  50 21 9f e5                                      ldr r2, [pc, #0x150]
0065dc44  50 31 9f e5                                      ldr r3, [pc, #0x150]
0065dc48  fe 15 a0 e3                                      mov r1, #0x3f800000
0065dc4c  02 20 95 e7                                      ldr r2, [r5, r2]
0065dc50  03 30 95 e7                                      ldr r3, [r5, r3]
0065dc54  30 10 84 e5                                      str r1, [r4, #0x30]
0065dc58  04 20 82 e2                                      add r2, r2, #4
0065dc5c  a8 10 83 e2                                      add r1, r3, #0xa8
0065dc60  0c 00 83 e2                                      add r0, r3, #0xc
0065dc64  c4 30 83 e2                                      add r3, r3, #0xc4
0065dc68  24 20 84 e5                                      str r2, [r4, #0x24]
0065dc6c  03 00 84 e8                                      stm r4, {r0, r1}
0065dc70  58 30 84 e5                                      str r3, [r4, #0x58]
0065dc74  00 30 96 e5                                      ldr r3, [r6]
0065dc78  00 70 a0 e3                                      mov r7, #0
0065dc7c  07 10 a0 e1                                      mov r1, r7
0065dc80  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065dc84  48 00 a0 e3                                      mov r0, #0x48
0065dc88  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065dc8c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065dc90  40 80 84 e5                                      str r8, [r4, #0x40]
0065dc94  44 70 84 e5                                      str r7, [r4, #0x44]
0065dc98  07 30 53 e0                                      subs r3, r3, r7
0065dc9c  01 30 a0 13                                      movne r3, #1
0065dca0  34 30 c4 e5                                      strb r3, [r4, #0x34]
0065dca4  48 70 84 e5                                      str r7, [r4, #0x48]
0065dca8  4c 70 84 e5                                      str r7, [r4, #0x4c]
0065dcac  54 70 84 e5                                      str r7, [r4, #0x54]
0065dcb0  3d 59 fb eb                                      bl #0x5341ac
0065dcb4  00 50 a0 e1                                      mov r5, r0
0065dcb8  60 24 00 eb                                      bl #0x666e40
0065dcbc  00 30 98 e5                                      ldr r3, [r8]
0065dcc0  07 00 53 e1                                      cmp r3, r7
0065dcc4  25 00 00 0a                                      beq #0x65dd60
0065dcc8  40 30 94 e5                                      ldr r3, [r4, #0x40]
0065dccc  07 00 53 e1                                      cmp r3, r7
0065dcd0  34 30 85 e5                                      str r3, [r5, #0x34]
0065dcd4  02 00 00 0a                                      beq #0x65dce4
0065dcd8  00 30 93 e5                                      ldr r3, [r3]
0065dcdc  07 00 53 e1                                      cmp r3, r7
0065dce0  18 00 00 1a                                      bne #0x65dd48
0065dce4  00 30 a0 e3                                      mov r3, #0
0065dce8  10 30 85 e5                                      str r3, [r5, #0x10]
0065dcec  01 30 a0 e3                                      mov r3, #1
0065dcf0  14 30 85 e5                                      str r3, [r5, #0x14]
0065dcf4  00 30 96 e5                                      ldr r3, [r6]
0065dcf8  04 00 a0 e1                                      mov r0, r4
0065dcfc  05 10 a0 e1                                      mov r1, r5
0065dd00  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065dd04  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065dd08  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0065dd0c  38 20 84 e5                                      str r2, [r4, #0x38]
0065dd10  00 30 96 e5                                      ldr r3, [r6]
0065dd14  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065dd18  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065dd1c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065dd20  03 20 62 e0                                      rsb r2, r2, r3
0065dd24  14 20 84 e5                                      str r2, [r4, #0x14]
0065dd28  3c 30 84 e5                                      str r3, [r4, #0x3c]
0065dd2c  b9 ee fc eb                                      bl #0x599818
0065dd30  00 30 95 e5                                      ldr r3, [r5]
0065dd34  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0065dd38  00 00 85 e0                                      add r0, r5, r0
0065dd3c  10 fe f2 eb                                      bl #0x31d584
0065dd40  04 00 a0 e1                                      mov r0, r4
0065dd44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065dd48  07 10 a0 e1                                      mov r1, r7
0065dd4c  00 30 95 e5                                      ldr r3, [r5]
0065dd50  05 00 a0 e1                                      mov r0, r5
0065dd54  0f e0 a0 e1                                      mov lr, pc
0065dd58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0065dd5c  e4 ff ff ea                                      b #0x65dcf4
0065dd60  00 30 96 e5                                      ldr r3, [r6]
0065dd64  00 c0 95 e5                                      ldr ip, [r5]
0065dd68  05 00 a0 e1                                      mov r0, r5
0065dd6c  24 20 93 e5                                      ldr r2, [r3, #0x24]
0065dd70  01 30 a0 e3                                      mov r3, #1
0065dd74  20 10 92 e5                                      ldr r1, [r2, #0x20]
0065dd78  20 20 91 e5                                      ldr r2, [r1, #0x20]
0065dd7c  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
0065dd80  0f e0 a0 e1                                      mov lr, pc
0065dd84  50 f0 9c e5                                      ldr pc, [ip, #0x50]
0065dd88  d9 ff ff ea                                      b #0x65dcf4
; mapping-symbol data/literal pool
0065dd8c  a8 6e 33 00 44 2b 00 00 0c 39 00 00 b4 17 00 00  .byte 0xa8, 0x6e, 0x33, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x0c, 0x39, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
0065dd9c  88 4b 00 00                                      .byte 0x88, 0x4b, 0x00, 0x00

; FUNCTION 0x0065dda0, declared_size=428, range_size=428, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimatorC2ERKNS0_16CColladaDatabaseERNS0_22SLibraryAnimationClipsE
; demangled: glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator(glitch::collada::CColladaDatabase const&, glitch::collada::SLibraryAnimationClips&)
; decoder-mode: arm
0065dda0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065dda4  02 60 a0 e1                                      mov r6, r2
0065dda8  01 50 a0 e1                                      mov r5, r1
0065ddac  04 10 81 e2                                      add r1, r1, #4
0065ddb0  00 40 a0 e1                                      mov r4, r0
0065ddb4  03 80 a0 e1                                      mov r8, r3
0065ddb8  cf 2e 00 eb                                      bl #0x6698fc
0065ddbc  00 30 96 e5                                      ldr r3, [r6]
0065ddc0  78 21 9f e5                                      ldr r2, [pc, #0x178]
0065ddc4  28 30 84 e5                                      str r3, [r4, #0x28]
0065ddc8  04 10 96 e5                                      ldr r1, [r6, #4]
0065ddcc  00 00 53 e3                                      cmp r3, #0
0065ddd0  02 20 8f e0                                      add r2, pc, r2
0065ddd4  2c 10 84 e5                                      str r1, [r4, #0x2c]
0065ddd8  03 00 00 0a                                      beq #0x65ddec
0065dddc  04 10 93 e5                                      ldr r1, [r3, #4]
0065dde0  00 00 51 e3                                      cmp r1, #0
0065dde4  01 10 81 12                                      addne r1, r1, #1
0065dde8  04 10 83 15                                      strne r1, [r3, #4]
0065ddec  50 11 9f e5                                      ldr r1, [pc, #0x150]
0065ddf0  50 31 9f e5                                      ldr r3, [pc, #0x150]
0065ddf4  00 70 a0 e3                                      mov r7, #0
0065ddf8  01 10 92 e7                                      ldr r1, [r2, r1]
0065ddfc  03 30 92 e7                                      ldr r3, [r2, r3]
0065de00  48 00 a0 e3                                      mov r0, #0x48
0065de04  04 10 81 e2                                      add r1, r1, #4
0065de08  24 10 84 e5                                      str r1, [r4, #0x24]
0065de0c  00 20 95 e5                                      ldr r2, [r5]
0065de10  a8 30 83 e2                                      add r3, r3, #0xa8
0065de14  07 10 a0 e1                                      mov r1, r7
0065de18  00 20 84 e5                                      str r2, [r4]
0065de1c  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
0065de20  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0065de24  02 c0 84 e7                                      str ip, [r4, r2]
0065de28  04 30 84 e5                                      str r3, [r4, #4]
0065de2c  fe 35 a0 e3                                      mov r3, #0x3f800000
0065de30  30 30 84 e5                                      str r3, [r4, #0x30]
0065de34  00 30 96 e5                                      ldr r3, [r6]
0065de38  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065de3c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065de40  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065de44  40 80 84 e5                                      str r8, [r4, #0x40]
0065de48  44 70 84 e5                                      str r7, [r4, #0x44]
0065de4c  07 30 53 e0                                      subs r3, r3, r7
0065de50  01 30 a0 13                                      movne r3, #1
0065de54  34 30 c4 e5                                      strb r3, [r4, #0x34]
0065de58  48 70 84 e5                                      str r7, [r4, #0x48]
0065de5c  4c 70 84 e5                                      str r7, [r4, #0x4c]
0065de60  54 70 84 e5                                      str r7, [r4, #0x54]
0065de64  d0 58 fb eb                                      bl #0x5341ac
0065de68  00 50 a0 e1                                      mov r5, r0
0065de6c  f3 23 00 eb                                      bl #0x666e40
0065de70  00 30 98 e5                                      ldr r3, [r8]
0065de74  07 00 53 e1                                      cmp r3, r7
0065de78  25 00 00 0a                                      beq #0x65df14
0065de7c  40 30 94 e5                                      ldr r3, [r4, #0x40]
0065de80  07 00 53 e1                                      cmp r3, r7
0065de84  34 30 85 e5                                      str r3, [r5, #0x34]
0065de88  02 00 00 0a                                      beq #0x65de98
0065de8c  00 30 93 e5                                      ldr r3, [r3]
0065de90  07 00 53 e1                                      cmp r3, r7
0065de94  18 00 00 1a                                      bne #0x65defc
0065de98  00 30 a0 e3                                      mov r3, #0
0065de9c  10 30 85 e5                                      str r3, [r5, #0x10]
0065dea0  01 30 a0 e3                                      mov r3, #1
0065dea4  14 30 85 e5                                      str r3, [r5, #0x14]
0065dea8  00 30 96 e5                                      ldr r3, [r6]
0065deac  04 00 a0 e1                                      mov r0, r4
0065deb0  05 10 a0 e1                                      mov r1, r5
0065deb4  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065deb8  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065debc  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0065dec0  38 20 84 e5                                      str r2, [r4, #0x38]
0065dec4  00 30 96 e5                                      ldr r3, [r6]
0065dec8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065decc  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065ded0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0065ded4  03 20 62 e0                                      rsb r2, r2, r3
0065ded8  14 20 84 e5                                      str r2, [r4, #0x14]
0065dedc  3c 30 84 e5                                      str r3, [r4, #0x3c]
0065dee0  4c ee fc eb                                      bl #0x599818
0065dee4  00 30 95 e5                                      ldr r3, [r5]
0065dee8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0065deec  00 00 85 e0                                      add r0, r5, r0
0065def0  a3 fd f2 eb                                      bl #0x31d584
0065def4  04 00 a0 e1                                      mov r0, r4
0065def8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065defc  07 10 a0 e1                                      mov r1, r7
0065df00  00 30 95 e5                                      ldr r3, [r5]
0065df04  05 00 a0 e1                                      mov r0, r5
0065df08  0f e0 a0 e1                                      mov lr, pc
0065df0c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0065df10  e4 ff ff ea                                      b #0x65dea8
0065df14  00 30 96 e5                                      ldr r3, [r6]
0065df18  00 c0 95 e5                                      ldr ip, [r5]
0065df1c  05 00 a0 e1                                      mov r0, r5
0065df20  24 20 93 e5                                      ldr r2, [r3, #0x24]
0065df24  01 30 a0 e3                                      mov r3, #1
0065df28  20 10 92 e5                                      ldr r1, [r2, #0x20]
0065df2c  20 20 91 e5                                      ldr r2, [r1, #0x20]
0065df30  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
0065df34  0f e0 a0 e1                                      mov lr, pc
0065df38  50 f0 9c e5                                      ldr pc, [ip, #0x50]
0065df3c  d9 ff ff ea                                      b #0x65dea8
; mapping-symbol data/literal pool
0065df40  c0 6c 33 00 b4 17 00 00 88 4b 00 00              .byte 0xc0, 0x6c, 0x33, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x88, 0x4b, 0x00, 0x00

; FUNCTION 0x0065df4c, declared_size=396, range_size=396, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZNK6glitch7collada18CSceneNodeAnimator19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CSceneNodeAnimator::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0065df4c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065df50  01 40 a0 e1                                      mov r4, r1
0065df54  60 11 9f e5                                      ldr r1, [pc, #0x160]
0065df58  0c d0 4d e2                                      sub sp, sp, #0xc
0065df5c  00 50 a0 e1                                      mov r5, r0
0065df60  30 20 90 e5                                      ldr r2, [r0, #0x30]
0065df64  00 c0 94 e5                                      ldr ip, [r4]
0065df68  00 30 a0 e3                                      mov r3, #0
0065df6c  01 10 8f e0                                      add r1, pc, r1
0065df70  04 00 a0 e1                                      mov r0, r4
0065df74  0f e0 a0 e1                                      mov lr, pc
0065df78  64 f0 9c e5                                      ldr pc, [ip, #0x64]
0065df7c  38 00 95 e5                                      ldr r0, [r5, #0x38]
0065df80  77 c2 f2 eb                                      bl #0x30e964
0065df84  11 13 a0 e3                                      mov r1, #0x44000000
0065df88  7a 18 81 e2                                      add r1, r1, #0x7a0000
0065df8c  40 c3 f2 eb                                      bl #0x30ec94
0065df90  28 61 9f e5                                      ldr r6, [pc, #0x128]
0065df94  00 20 a0 e1                                      mov r2, r0
0065df98  00 c0 94 e5                                      ldr ip, [r4]
0065df9c  06 60 8f e0                                      add r6, pc, r6
0065dfa0  06 10 a0 e1                                      mov r1, r6
0065dfa4  01 30 a0 e3                                      mov r3, #1
0065dfa8  04 00 a0 e1                                      mov r0, r4
0065dfac  0f e0 a0 e1                                      mov lr, pc
0065dfb0  64 f0 9c e5                                      ldr pc, [ip, #0x64]
0065dfb4  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
0065dfb8  69 c2 f2 eb                                      bl #0x30e964
0065dfbc  11 13 a0 e3                                      mov r1, #0x44000000
0065dfc0  7a 18 81 e2                                      add r1, r1, #0x7a0000
0065dfc4  32 c3 f2 eb                                      bl #0x30ec94
0065dfc8  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
0065dfcc  00 20 a0 e1                                      mov r2, r0
0065dfd0  00 c0 94 e5                                      ldr ip, [r4]
0065dfd4  07 70 8f e0                                      add r7, pc, r7
0065dfd8  07 10 a0 e1                                      mov r1, r7
0065dfdc  01 30 a0 e3                                      mov r3, #1
0065dfe0  04 00 a0 e1                                      mov r0, r4
0065dfe4  0f e0 a0 e1                                      mov lr, pc
0065dfe8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
0065dfec  14 00 95 e5                                      ldr r0, [r5, #0x14]
0065dff0  5b c2 f2 eb                                      bl #0x30e964
0065dff4  11 13 a0 e3                                      mov r1, #0x44000000
0065dff8  7a 18 81 e2                                      add r1, r1, #0x7a0000
0065dffc  24 c3 f2 eb                                      bl #0x30ec94
0065e000  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
0065e004  00 20 a0 e1                                      mov r2, r0
0065e008  00 c0 94 e5                                      ldr ip, [r4]
0065e00c  06 60 8f e0                                      add r6, pc, r6
0065e010  06 10 a0 e1                                      mov r1, r6
0065e014  04 00 a0 e1                                      mov r0, r4
0065e018  01 30 a0 e3                                      mov r3, #1
0065e01c  0f e0 a0 e1                                      mov lr, pc
0065e020  64 f0 9c e5                                      ldr pc, [ip, #0x64]
0065e024  00 00 a0 e3                                      mov r0, #0
0065e028  0c 60 95 e5                                      ldr r6, [r5, #0xc]
0065e02c  01 27 00 eb                                      bl #0x667c38
0065e030  94 10 9f e5                                      ldr r1, [pc, #0x94]
0065e034  00 20 a0 e3                                      mov r2, #0
0065e038  00 20 8d e5                                      str r2, [sp]
0065e03c  00 c0 94 e5                                      ldr ip, [r4]
0065e040  00 30 a0 e1                                      mov r3, r0
0065e044  01 10 8f e0                                      add r1, pc, r1
0065e048  06 20 a0 e1                                      mov r2, r6
0065e04c  04 00 a0 e1                                      mov r0, r4
0065e050  0f e0 a0 e1                                      mov lr, pc
0065e054  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
0065e058  10 30 95 e5                                      ldr r3, [r5, #0x10]
0065e05c  00 20 94 e5                                      ldr r2, [r4]
0065e060  03 00 a0 e1                                      mov r0, r3
0065e064  00 30 93 e5                                      ldr r3, [r3]
0065e068  7c 60 92 e5                                      ldr r6, [r2, #0x7c]
0065e06c  0f e0 a0 e1                                      mov lr, pc
0065e070  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0065e074  54 10 9f e5                                      ldr r1, [pc, #0x54]
0065e078  00 20 a0 e1                                      mov r2, r0
0065e07c  01 30 a0 e3                                      mov r3, #1
0065e080  04 00 a0 e1                                      mov r0, r4
0065e084  01 10 8f e0                                      add r1, pc, r1
0065e088  36 ff 2f e1                                      blx r6
0065e08c  28 20 95 e5                                      ldr r2, [r5, #0x28]
0065e090  00 30 94 e5                                      ldr r3, [r4]
0065e094  38 10 9f e5                                      ldr r1, [pc, #0x38]
0065e098  00 00 52 e3                                      cmp r2, #0
0065e09c  7c c0 93 e5                                      ldr ip, [r3, #0x7c]
0065e0a0  20 20 92 15                                      ldrne r2, [r2, #0x20]
0065e0a4  04 00 a0 e1                                      mov r0, r4
0065e0a8  01 10 8f e0                                      add r1, pc, r1
0065e0ac  01 30 a0 e3                                      mov r3, #1
0065e0b0  3c ff 2f e1                                      blx ip
0065e0b4  0c d0 8d e2                                      add sp, sp, #0xc
0065e0b8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0065e0bc  ac 78 28 00 8c 78 28 00 04 20 28 00 1c ef 2a 00  .byte 0xac, 0x78, 0x28, 0x00, 0x8c, 0x78, 0x28, 0x00, 0x04, 0x20, 0x28, 0x00, 0x1c, 0xef, 0x2a, 0x00
0065e0cc  ec 77 28 00 c4 77 28 00 40 77 28 00              .byte 0xec, 0x77, 0x28, 0x00, 0xc4, 0x77, 0x28, 0x00, 0x40, 0x77, 0x28, 0x00

; FUNCTION 0x0065e0d8, declared_size=268, range_size=268, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZN6glitch7collada18CSceneNodeAnimator17addAnimationTrackEPNS0_10SAnimationE
; demangled: glitch::collada::CSceneNodeAnimator::addAnimationTrack(glitch::collada::SAnimation*)
; decoder-mode: arm
0065e0d8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065e0dc  48 a0 90 e5                                      ldr sl, [r0, #0x48]
0065e0e0  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0065e0e4  00 40 a0 e1                                      mov r4, r0
0065e0e8  01 50 a0 e1                                      mov r5, r1
0065e0ec  03 00 5a e1                                      cmp sl, r3
0065e0f0  07 00 00 0a                                      beq #0x65e114
0065e0f4  00 30 a0 e3                                      mov r3, #0
0065e0f8  0a 00 8a e8                                      stm sl, {r1, r3}
0065e0fc  0c 30 8a e5                                      str r3, [sl, #0xc]
0065e100  08 30 8a e5                                      str r3, [sl, #8]
0065e104  48 30 90 e5                                      ldr r3, [r0, #0x48]
0065e108  10 30 83 e2                                      add r3, r3, #0x10
0065e10c  48 30 80 e5                                      str r3, [r0, #0x48]
0065e110  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065e114  44 30 90 e5                                      ldr r3, [r0, #0x44]
0065e118  0a 30 63 e0                                      rsb r3, r3, sl
0065e11c  43 32 a0 e1                                      asr r3, r3, #4
0065e120  01 00 53 e3                                      cmp r3, #1
0065e124  03 90 83 20                                      addhs sb, r3, r3
0065e128  01 90 83 32                                      addlo sb, r3, #1
0065e12c  1f 02 79 e3                                      cmn sb, #0xf0000001
0065e130  29 00 00 8a                                      bhi #0x65e1dc
0065e134  09 00 53 e1                                      cmp r3, sb
0065e138  09 92 a0 91                                      lslls sb, sb, #4
0065e13c  26 00 00 8a                                      bhi #0x65e1dc
0065e140  09 00 a0 e1                                      mov r0, sb
0065e144  00 10 a0 e3                                      mov r1, #0
0065e148  06 c9 f2 eb                                      bl #0x310568
0065e14c  44 80 94 e5                                      ldr r8, [r4, #0x44]
0065e150  00 60 a0 e1                                      mov r6, r0
0065e154  0a a0 68 e0                                      rsb sl, r8, sl
0065e158  4a a2 a0 e1                                      asr sl, sl, #4
0065e15c  00 00 5a e3                                      cmp sl, #0
0065e160  00 a0 a0 d1                                      movle sl, r0
0065e164  09 00 00 da                                      ble #0x65e190
0065e168  0a 70 a0 e1                                      mov r7, sl
0065e16c  00 e0 a0 e3                                      mov lr, #0
0065e170  0e c0 86 e0                                      add ip, r6, lr
0065e174  0e 30 88 e0                                      add r3, r8, lr
0065e178  01 70 57 e2                                      subs r7, r7, #1
0065e17c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0065e180  10 e0 8e e2                                      add lr, lr, #0x10
0065e184  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0065e188  f8 ff ff 1a                                      bne #0x65e170
0065e18c  0a a2 86 e0                                      add sl, r6, sl, lsl #4
0065e190  00 30 a0 e3                                      mov r3, #0
0065e194  0a 70 a0 e1                                      mov r7, sl
0065e198  04 30 8a e5                                      str r3, [sl, #4]
0065e19c  0c 30 8a e5                                      str r3, [sl, #0xc]
0065e1a0  08 30 8a e5                                      str r3, [sl, #8]
0065e1a4  10 50 87 e4                                      str r5, [r7], #0x10
0065e1a8  44 30 94 e5                                      ldr r3, [r4, #0x44]
0065e1ac  48 00 94 e5                                      ldr r0, [r4, #0x48]
0065e1b0  09 90 86 e0                                      add sb, r6, sb
0065e1b4  03 00 50 e1                                      cmp r0, r3
0065e1b8  10 20 40 12                                      subne r2, r0, #0x10
0065e1bc  02 30 63 10                                      rsbne r3, r3, r2
0065e1c0  23 32 e0 11                                      mvnne r3, r3, lsr #4
0065e1c4  03 02 80 10                                      addne r0, r0, r3, lsl #4
0065e1c8  a0 c8 f2 eb                                      bl #0x310450
0065e1cc  4c 90 84 e5                                      str sb, [r4, #0x4c]
0065e1d0  48 70 84 e5                                      str r7, [r4, #0x48]
0065e1d4  44 60 84 e5                                      str r6, [r4, #0x44]
0065e1d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065e1dc  0f 90 e0 e3                                      mvn sb, #0xf
0065e1e0  d6 ff ff ea                                      b #0x65e140

; FUNCTION 0x0065e1e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZTv0_n12_N6glitch7collada18CSceneNodeAnimatorD0Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator()
; decoder-mode: arm
0065e1e4  00 30 90 e5                                      ldr r3, [r0]
0065e1e8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065e1ec  03 00 80 e0                                      add r0, r0, r3
0065e1f0  51 fe ff ea                                      b #0x65db3c

; FUNCTION 0x0065e1f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNodeAnimator
; alias: _ZTv0_n12_N6glitch7collada18CSceneNodeAnimatorD1Ev
; demangled: virtual thunk to glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator()
; decoder-mode: arm
0065e1f4  00 30 90 e5                                      ldr r3, [r0]
0065e1f8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065e1fc  03 00 80 e0                                      add r0, r0, r3
0065e200  2a fe ff ea                                      b #0x65dab0
