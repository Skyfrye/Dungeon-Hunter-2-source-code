; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623834, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623834  30 40 2d e9                                      push {r4, r5, lr}
00623838  14 d0 4d e2                                      sub sp, sp, #0x14
0062383c  04 50 8d e2                                      add r5, sp, #4
00623840  00 30 a0 e3                                      mov r3, #0
00623844  02 40 a0 e1                                      mov r4, r2
00623848  05 20 a0 e1                                      mov r2, r5
0062384c  0c 30 8d e5                                      str r3, [sp, #0xc]
00623850  04 30 8d e5                                      str r3, [sp, #4]
00623854  08 30 8d e5                                      str r3, [sp, #8]
00623858  61 ea ff eb                                      bl #0x61e1e4
0062385c  04 00 a0 e1                                      mov r0, r4
00623860  05 10 a0 e1                                      mov r1, r5
00623864  00 30 94 e5                                      ldr r3, [r4]
00623868  0f e0 a0 e1                                      mov lr, pc
0062386c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623870  14 d0 8d e2                                      add sp, sp, #0x14
00623874  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062388c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062388c  30 40 2d e9                                      push {r4, r5, lr}
00623890  1c d0 4d e2                                      sub sp, sp, #0x1c
00623894  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623898  00 c0 a0 e3                                      mov ip, #0
0062389c  0c 50 8d e2                                      add r5, sp, #0xc
006238a0  00 50 8d e5                                      str r5, [sp]
006238a4  14 c0 8d e5                                      str ip, [sp, #0x14]
006238a8  0c c0 8d e5                                      str ip, [sp, #0xc]
006238ac  10 c0 8d e5                                      str ip, [sp, #0x10]
006238b0  6b ea ff eb                                      bl #0x61e264
006238b4  04 00 a0 e1                                      mov r0, r4
006238b8  05 10 a0 e1                                      mov r1, r5
006238bc  00 30 94 e5                                      ldr r3, [r4]
006238c0  0f e0 a0 e1                                      mov lr, pc
006238c4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006238c8  1c d0 8d e2                                      add sp, sp, #0x1c
006238cc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062c2cc, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c2cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c2d0  01 00 52 e3                                      cmp r2, #1
0062c2d4  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c2d8  00 a0 a0 e3                                      mov sl, #0
0062c2dc  02 40 a0 e1                                      mov r4, r2
0062c2e0  01 50 a0 e1                                      mov r5, r1
0062c2e4  04 30 8d e5                                      str r3, [sp, #4]
0062c2e8  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c2ec  2b 00 00 0a                                      beq #0x62c3a0
0062c2f0  00 00 52 e3                                      cmp r2, #0
0062c2f4  0a b0 a0 01                                      moveq fp, sl
0062c2f8  0a 90 a0 01                                      moveq sb, sl
0062c2fc  1d 00 00 0a                                      beq #0x62c378
0062c300  00 60 a0 e1                                      mov r6, r0
0062c304  00 80 a0 e3                                      mov r8, #0
0062c308  0a b0 a0 e1                                      mov fp, sl
0062c30c  0a 90 a0 e1                                      mov sb, sl
0062c310  08 70 95 e7                                      ldr r7, [r5, r8]
0062c314  00 10 96 e5                                      ldr r1, [r6]
0062c318  04 80 88 e2                                      add r8, r8, #4
0062c31c  07 00 a0 e1                                      mov r0, r7
0062c320  91 8a f3 eb                                      bl #0x30ed6c
0062c324  00 10 a0 e1                                      mov r1, r0
0062c328  0a 00 a0 e1                                      mov r0, sl
0062c32c  1c 8a f3 eb                                      bl #0x30eba4
0062c330  04 10 96 e5                                      ldr r1, [r6, #4]
0062c334  00 a0 a0 e1                                      mov sl, r0
0062c338  07 00 a0 e1                                      mov r0, r7
0062c33c  8a 8a f3 eb                                      bl #0x30ed6c
0062c340  00 10 a0 e1                                      mov r1, r0
0062c344  0b 00 a0 e1                                      mov r0, fp
0062c348  15 8a f3 eb                                      bl #0x30eba4
0062c34c  08 10 96 e5                                      ldr r1, [r6, #8]
0062c350  00 b0 a0 e1                                      mov fp, r0
0062c354  07 00 a0 e1                                      mov r0, r7
0062c358  83 8a f3 eb                                      bl #0x30ed6c
0062c35c  00 10 a0 e1                                      mov r1, r0
0062c360  09 00 a0 e1                                      mov r0, sb
0062c364  0e 8a f3 eb                                      bl #0x30eba4
0062c368  01 40 54 e2                                      subs r4, r4, #1
0062c36c  00 90 a0 e1                                      mov sb, r0
0062c370  0c 60 86 e2                                      add r6, r6, #0xc
0062c374  e5 ff ff 1a                                      bne #0x62c310
0062c378  18 10 8d e2                                      add r1, sp, #0x18
0062c37c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c380  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c384  08 90 81 e5                                      str sb, [r1, #8]
0062c388  04 00 9d e5                                      ldr r0, [sp, #4]
0062c38c  00 30 90 e5                                      ldr r3, [r0]
0062c390  0f e0 a0 e1                                      mov lr, pc
0062c394  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c398  1c d0 8d e2                                      add sp, sp, #0x1c
0062c39c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c3a0  00 30 a0 e1                                      mov r3, r0
0062c3a4  04 c0 93 e4                                      ldr ip, [r3], #4
0062c3a8  04 20 90 e5                                      ldr r2, [r0, #4]
0062c3ac  18 10 8d e2                                      add r1, sp, #0x18
0062c3b0  04 30 93 e5                                      ldr r3, [r3, #4]
0062c3b4  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c3b8  10 20 8d e5                                      str r2, [sp, #0x10]
0062c3bc  08 30 81 e5                                      str r3, [r1, #8]
0062c3c0  f0 ff ff ea                                      b #0x62c388

; FUNCTION 0x0062c3e0, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c3e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c3e4  01 00 52 e3                                      cmp r2, #1
0062c3e8  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c3ec  00 a0 a0 e3                                      mov sl, #0
0062c3f0  02 40 a0 e1                                      mov r4, r2
0062c3f4  01 50 a0 e1                                      mov r5, r1
0062c3f8  04 30 8d e5                                      str r3, [sp, #4]
0062c3fc  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c400  2b 00 00 0a                                      beq #0x62c4b4
0062c404  00 00 52 e3                                      cmp r2, #0
0062c408  0a b0 a0 01                                      moveq fp, sl
0062c40c  0a 90 a0 01                                      moveq sb, sl
0062c410  1d 00 00 0a                                      beq #0x62c48c
0062c414  00 60 a0 e1                                      mov r6, r0
0062c418  00 80 a0 e3                                      mov r8, #0
0062c41c  0a b0 a0 e1                                      mov fp, sl
0062c420  0a 90 a0 e1                                      mov sb, sl
0062c424  08 70 95 e7                                      ldr r7, [r5, r8]
0062c428  00 10 96 e5                                      ldr r1, [r6]
0062c42c  04 80 88 e2                                      add r8, r8, #4
0062c430  07 00 a0 e1                                      mov r0, r7
0062c434  4c 8a f3 eb                                      bl #0x30ed6c
0062c438  00 10 a0 e1                                      mov r1, r0
0062c43c  0a 00 a0 e1                                      mov r0, sl
0062c440  d7 89 f3 eb                                      bl #0x30eba4
0062c444  04 10 96 e5                                      ldr r1, [r6, #4]
0062c448  00 a0 a0 e1                                      mov sl, r0
0062c44c  07 00 a0 e1                                      mov r0, r7
0062c450  45 8a f3 eb                                      bl #0x30ed6c
0062c454  00 10 a0 e1                                      mov r1, r0
0062c458  0b 00 a0 e1                                      mov r0, fp
0062c45c  d0 89 f3 eb                                      bl #0x30eba4
0062c460  08 10 96 e5                                      ldr r1, [r6, #8]
0062c464  00 b0 a0 e1                                      mov fp, r0
0062c468  07 00 a0 e1                                      mov r0, r7
0062c46c  3e 8a f3 eb                                      bl #0x30ed6c
0062c470  00 10 a0 e1                                      mov r1, r0
0062c474  09 00 a0 e1                                      mov r0, sb
0062c478  c9 89 f3 eb                                      bl #0x30eba4
0062c47c  01 40 54 e2                                      subs r4, r4, #1
0062c480  00 90 a0 e1                                      mov sb, r0
0062c484  0c 60 86 e2                                      add r6, r6, #0xc
0062c488  e5 ff ff 1a                                      bne #0x62c424
0062c48c  18 10 8d e2                                      add r1, sp, #0x18
0062c490  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c494  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c498  08 90 81 e5                                      str sb, [r1, #8]
0062c49c  04 00 9d e5                                      ldr r0, [sp, #4]
0062c4a0  00 30 90 e5                                      ldr r3, [r0]
0062c4a4  0f e0 a0 e1                                      mov lr, pc
0062c4a8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c4ac  1c d0 8d e2                                      add sp, sp, #0x1c
0062c4b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c4b4  00 30 a0 e1                                      mov r3, r0
0062c4b8  04 c0 93 e4                                      ldr ip, [r3], #4
0062c4bc  04 20 90 e5                                      ldr r2, [r0, #4]
0062c4c0  18 10 8d e2                                      add r1, sp, #0x18
0062c4c4  04 30 93 e5                                      ldr r3, [r3, #4]
0062c4c8  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c4cc  10 20 8d e5                                      str r2, [sp, #0x10]
0062c4d0  08 30 81 e5                                      str r3, [r1, #8]
0062c4d4  f0 ff ff ea                                      b #0x62c49c
