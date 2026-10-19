; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623774, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623774  30 40 2d e9                                      push {r4, r5, lr}
00623778  14 d0 4d e2                                      sub sp, sp, #0x14
0062377c  04 50 8d e2                                      add r5, sp, #4
00623780  00 30 a0 e3                                      mov r3, #0
00623784  02 40 a0 e1                                      mov r4, r2
00623788  05 20 a0 e1                                      mov r2, r5
0062378c  0c 30 8d e5                                      str r3, [sp, #0xc]
00623790  04 30 8d e5                                      str r3, [sp, #4]
00623794  08 30 8d e5                                      str r3, [sp, #8]
00623798  fd ce ff eb                                      bl #0x617394
0062379c  04 00 a0 e1                                      mov r0, r4
006237a0  05 10 a0 e1                                      mov r1, r5
006237a4  00 30 94 e5                                      ldr r3, [r4]
006237a8  0f e0 a0 e1                                      mov lr, pc
006237ac  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006237b0  14 d0 8d e2                                      add sp, sp, #0x14
006237b4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006237cc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006237cc  30 40 2d e9                                      push {r4, r5, lr}
006237d0  1c d0 4d e2                                      sub sp, sp, #0x1c
006237d4  28 40 9d e5                                      ldr r4, [sp, #0x28]
006237d8  00 c0 a0 e3                                      mov ip, #0
006237dc  0c 50 8d e2                                      add r5, sp, #0xc
006237e0  00 50 8d e5                                      str r5, [sp]
006237e4  14 c0 8d e5                                      str ip, [sp, #0x14]
006237e8  0c c0 8d e5                                      str ip, [sp, #0xc]
006237ec  10 c0 8d e5                                      str ip, [sp, #0x10]
006237f0  12 cf ff eb                                      bl #0x617440
006237f4  04 00 a0 e1                                      mov r0, r4
006237f8  05 10 a0 e1                                      mov r1, r5
006237fc  00 30 94 e5                                      ldr r3, [r4]
00623800  0f e0 a0 e1                                      mov lr, pc
00623804  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623808  1c d0 8d e2                                      add sp, sp, #0x1c
0062380c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062c4f4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c4f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c4f8  01 00 52 e3                                      cmp r2, #1
0062c4fc  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c500  00 a0 a0 e3                                      mov sl, #0
0062c504  02 40 a0 e1                                      mov r4, r2
0062c508  01 50 a0 e1                                      mov r5, r1
0062c50c  04 30 8d e5                                      str r3, [sp, #4]
0062c510  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c514  2b 00 00 0a                                      beq #0x62c5c8
0062c518  00 00 52 e3                                      cmp r2, #0
0062c51c  0a b0 a0 01                                      moveq fp, sl
0062c520  0a 90 a0 01                                      moveq sb, sl
0062c524  1d 00 00 0a                                      beq #0x62c5a0
0062c528  00 60 a0 e1                                      mov r6, r0
0062c52c  00 80 a0 e3                                      mov r8, #0
0062c530  0a b0 a0 e1                                      mov fp, sl
0062c534  0a 90 a0 e1                                      mov sb, sl
0062c538  08 70 95 e7                                      ldr r7, [r5, r8]
0062c53c  00 10 96 e5                                      ldr r1, [r6]
0062c540  04 80 88 e2                                      add r8, r8, #4
0062c544  07 00 a0 e1                                      mov r0, r7
0062c548  07 8a f3 eb                                      bl #0x30ed6c
0062c54c  00 10 a0 e1                                      mov r1, r0
0062c550  0a 00 a0 e1                                      mov r0, sl
0062c554  92 89 f3 eb                                      bl #0x30eba4
0062c558  04 10 96 e5                                      ldr r1, [r6, #4]
0062c55c  00 a0 a0 e1                                      mov sl, r0
0062c560  07 00 a0 e1                                      mov r0, r7
0062c564  00 8a f3 eb                                      bl #0x30ed6c
0062c568  00 10 a0 e1                                      mov r1, r0
0062c56c  0b 00 a0 e1                                      mov r0, fp
0062c570  8b 89 f3 eb                                      bl #0x30eba4
0062c574  08 10 96 e5                                      ldr r1, [r6, #8]
0062c578  00 b0 a0 e1                                      mov fp, r0
0062c57c  07 00 a0 e1                                      mov r0, r7
0062c580  f9 89 f3 eb                                      bl #0x30ed6c
0062c584  00 10 a0 e1                                      mov r1, r0
0062c588  09 00 a0 e1                                      mov r0, sb
0062c58c  84 89 f3 eb                                      bl #0x30eba4
0062c590  01 40 54 e2                                      subs r4, r4, #1
0062c594  00 90 a0 e1                                      mov sb, r0
0062c598  0c 60 86 e2                                      add r6, r6, #0xc
0062c59c  e5 ff ff 1a                                      bne #0x62c538
0062c5a0  18 10 8d e2                                      add r1, sp, #0x18
0062c5a4  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c5a8  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c5ac  08 90 81 e5                                      str sb, [r1, #8]
0062c5b0  04 00 9d e5                                      ldr r0, [sp, #4]
0062c5b4  00 30 90 e5                                      ldr r3, [r0]
0062c5b8  0f e0 a0 e1                                      mov lr, pc
0062c5bc  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c5c0  1c d0 8d e2                                      add sp, sp, #0x1c
0062c5c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c5c8  00 30 a0 e1                                      mov r3, r0
0062c5cc  04 c0 93 e4                                      ldr ip, [r3], #4
0062c5d0  04 20 90 e5                                      ldr r2, [r0, #4]
0062c5d4  18 10 8d e2                                      add r1, sp, #0x18
0062c5d8  04 30 93 e5                                      ldr r3, [r3, #4]
0062c5dc  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c5e0  10 20 8d e5                                      str r2, [sp, #0x10]
0062c5e4  08 30 81 e5                                      str r3, [r1, #8]
0062c5e8  f0 ff ff ea                                      b #0x62c5b0

; FUNCTION 0x0062c608, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c608  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c60c  01 00 52 e3                                      cmp r2, #1
0062c610  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c614  00 a0 a0 e3                                      mov sl, #0
0062c618  02 40 a0 e1                                      mov r4, r2
0062c61c  01 50 a0 e1                                      mov r5, r1
0062c620  04 30 8d e5                                      str r3, [sp, #4]
0062c624  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c628  2b 00 00 0a                                      beq #0x62c6dc
0062c62c  00 00 52 e3                                      cmp r2, #0
0062c630  0a b0 a0 01                                      moveq fp, sl
0062c634  0a 90 a0 01                                      moveq sb, sl
0062c638  1d 00 00 0a                                      beq #0x62c6b4
0062c63c  00 60 a0 e1                                      mov r6, r0
0062c640  00 80 a0 e3                                      mov r8, #0
0062c644  0a b0 a0 e1                                      mov fp, sl
0062c648  0a 90 a0 e1                                      mov sb, sl
0062c64c  08 70 95 e7                                      ldr r7, [r5, r8]
0062c650  00 10 96 e5                                      ldr r1, [r6]
0062c654  04 80 88 e2                                      add r8, r8, #4
0062c658  07 00 a0 e1                                      mov r0, r7
0062c65c  c2 89 f3 eb                                      bl #0x30ed6c
0062c660  00 10 a0 e1                                      mov r1, r0
0062c664  0a 00 a0 e1                                      mov r0, sl
0062c668  4d 89 f3 eb                                      bl #0x30eba4
0062c66c  04 10 96 e5                                      ldr r1, [r6, #4]
0062c670  00 a0 a0 e1                                      mov sl, r0
0062c674  07 00 a0 e1                                      mov r0, r7
0062c678  bb 89 f3 eb                                      bl #0x30ed6c
0062c67c  00 10 a0 e1                                      mov r1, r0
0062c680  0b 00 a0 e1                                      mov r0, fp
0062c684  46 89 f3 eb                                      bl #0x30eba4
0062c688  08 10 96 e5                                      ldr r1, [r6, #8]
0062c68c  00 b0 a0 e1                                      mov fp, r0
0062c690  07 00 a0 e1                                      mov r0, r7
0062c694  b4 89 f3 eb                                      bl #0x30ed6c
0062c698  00 10 a0 e1                                      mov r1, r0
0062c69c  09 00 a0 e1                                      mov r0, sb
0062c6a0  3f 89 f3 eb                                      bl #0x30eba4
0062c6a4  01 40 54 e2                                      subs r4, r4, #1
0062c6a8  00 90 a0 e1                                      mov sb, r0
0062c6ac  0c 60 86 e2                                      add r6, r6, #0xc
0062c6b0  e5 ff ff 1a                                      bne #0x62c64c
0062c6b4  18 10 8d e2                                      add r1, sp, #0x18
0062c6b8  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c6bc  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c6c0  08 90 81 e5                                      str sb, [r1, #8]
0062c6c4  04 00 9d e5                                      ldr r0, [sp, #4]
0062c6c8  00 30 90 e5                                      ldr r3, [r0]
0062c6cc  0f e0 a0 e1                                      mov lr, pc
0062c6d0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c6d4  1c d0 8d e2                                      add sp, sp, #0x1c
0062c6d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c6dc  00 30 a0 e1                                      mov r3, r0
0062c6e0  04 c0 93 e4                                      ldr ip, [r3], #4
0062c6e4  04 20 90 e5                                      ldr r2, [r0, #4]
0062c6e8  18 10 8d e2                                      add r1, sp, #0x18
0062c6ec  04 30 93 e5                                      ldr r3, [r3, #4]
0062c6f0  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c6f4  10 20 8d e5                                      str r2, [sp, #0x10]
0062c6f8  08 30 81 e5                                      str r3, [r1, #8]
0062c6fc  f0 ff ff ea                                      b #0x62c6c4
