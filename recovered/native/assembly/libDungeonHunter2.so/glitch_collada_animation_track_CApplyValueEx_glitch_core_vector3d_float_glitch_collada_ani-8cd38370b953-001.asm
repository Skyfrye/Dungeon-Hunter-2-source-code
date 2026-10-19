; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006235f4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006235f4  30 40 2d e9                                      push {r4, r5, lr}
006235f8  14 d0 4d e2                                      sub sp, sp, #0x14
006235fc  04 50 8d e2                                      add r5, sp, #4
00623600  00 30 a0 e3                                      mov r3, #0
00623604  02 40 a0 e1                                      mov r4, r2
00623608  05 20 a0 e1                                      mov r2, r5
0062360c  0c 30 8d e5                                      str r3, [sp, #0xc]
00623610  04 30 8d e5                                      str r3, [sp, #4]
00623614  08 30 8d e5                                      str r3, [sp, #8]
00623618  3e ea ff eb                                      bl #0x61df18
0062361c  04 00 a0 e1                                      mov r0, r4
00623620  05 10 a0 e1                                      mov r1, r5
00623624  00 30 94 e5                                      ldr r3, [r4]
00623628  0f e0 a0 e1                                      mov lr, pc
0062362c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623630  14 d0 8d e2                                      add sp, sp, #0x14
00623634  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062364c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062364c  30 40 2d e9                                      push {r4, r5, lr}
00623650  1c d0 4d e2                                      sub sp, sp, #0x1c
00623654  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623658  00 c0 a0 e3                                      mov ip, #0
0062365c  0c 50 8d e2                                      add r5, sp, #0xc
00623660  00 50 8d e5                                      str r5, [sp]
00623664  14 c0 8d e5                                      str ip, [sp, #0x14]
00623668  0c c0 8d e5                                      str ip, [sp, #0xc]
0062366c  10 c0 8d e5                                      str ip, [sp, #0x10]
00623670  48 ea ff eb                                      bl #0x61df98
00623674  04 00 a0 e1                                      mov r0, r4
00623678  05 10 a0 e1                                      mov r1, r5
0062367c  00 30 94 e5                                      ldr r3, [r4]
00623680  0f e0 a0 e1                                      mov lr, pc
00623684  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623688  1c d0 8d e2                                      add sp, sp, #0x1c
0062368c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062c944, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c944  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c948  01 00 52 e3                                      cmp r2, #1
0062c94c  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c950  00 a0 a0 e3                                      mov sl, #0
0062c954  02 40 a0 e1                                      mov r4, r2
0062c958  01 50 a0 e1                                      mov r5, r1
0062c95c  04 30 8d e5                                      str r3, [sp, #4]
0062c960  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c964  2b 00 00 0a                                      beq #0x62ca18
0062c968  00 00 52 e3                                      cmp r2, #0
0062c96c  0a b0 a0 01                                      moveq fp, sl
0062c970  0a 90 a0 01                                      moveq sb, sl
0062c974  1d 00 00 0a                                      beq #0x62c9f0
0062c978  00 60 a0 e1                                      mov r6, r0
0062c97c  00 80 a0 e3                                      mov r8, #0
0062c980  0a b0 a0 e1                                      mov fp, sl
0062c984  0a 90 a0 e1                                      mov sb, sl
0062c988  08 70 95 e7                                      ldr r7, [r5, r8]
0062c98c  00 10 96 e5                                      ldr r1, [r6]
0062c990  04 80 88 e2                                      add r8, r8, #4
0062c994  07 00 a0 e1                                      mov r0, r7
0062c998  f3 88 f3 eb                                      bl #0x30ed6c
0062c99c  00 10 a0 e1                                      mov r1, r0
0062c9a0  0a 00 a0 e1                                      mov r0, sl
0062c9a4  7e 88 f3 eb                                      bl #0x30eba4
0062c9a8  04 10 96 e5                                      ldr r1, [r6, #4]
0062c9ac  00 a0 a0 e1                                      mov sl, r0
0062c9b0  07 00 a0 e1                                      mov r0, r7
0062c9b4  ec 88 f3 eb                                      bl #0x30ed6c
0062c9b8  00 10 a0 e1                                      mov r1, r0
0062c9bc  0b 00 a0 e1                                      mov r0, fp
0062c9c0  77 88 f3 eb                                      bl #0x30eba4
0062c9c4  08 10 96 e5                                      ldr r1, [r6, #8]
0062c9c8  00 b0 a0 e1                                      mov fp, r0
0062c9cc  07 00 a0 e1                                      mov r0, r7
0062c9d0  e5 88 f3 eb                                      bl #0x30ed6c
0062c9d4  00 10 a0 e1                                      mov r1, r0
0062c9d8  09 00 a0 e1                                      mov r0, sb
0062c9dc  70 88 f3 eb                                      bl #0x30eba4
0062c9e0  01 40 54 e2                                      subs r4, r4, #1
0062c9e4  00 90 a0 e1                                      mov sb, r0
0062c9e8  0c 60 86 e2                                      add r6, r6, #0xc
0062c9ec  e5 ff ff 1a                                      bne #0x62c988
0062c9f0  18 10 8d e2                                      add r1, sp, #0x18
0062c9f4  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c9f8  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c9fc  08 90 81 e5                                      str sb, [r1, #8]
0062ca00  04 00 9d e5                                      ldr r0, [sp, #4]
0062ca04  00 30 90 e5                                      ldr r3, [r0]
0062ca08  0f e0 a0 e1                                      mov lr, pc
0062ca0c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062ca10  1c d0 8d e2                                      add sp, sp, #0x1c
0062ca14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062ca18  00 30 a0 e1                                      mov r3, r0
0062ca1c  04 c0 93 e4                                      ldr ip, [r3], #4
0062ca20  04 20 90 e5                                      ldr r2, [r0, #4]
0062ca24  18 10 8d e2                                      add r1, sp, #0x18
0062ca28  04 30 93 e5                                      ldr r3, [r3, #4]
0062ca2c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062ca30  10 20 8d e5                                      str r2, [sp, #0x10]
0062ca34  08 30 81 e5                                      str r3, [r1, #8]
0062ca38  f0 ff ff ea                                      b #0x62ca00

; FUNCTION 0x0062ca58, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062ca58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062ca5c  01 00 52 e3                                      cmp r2, #1
0062ca60  1c d0 4d e2                                      sub sp, sp, #0x1c
0062ca64  00 a0 a0 e3                                      mov sl, #0
0062ca68  02 40 a0 e1                                      mov r4, r2
0062ca6c  01 50 a0 e1                                      mov r5, r1
0062ca70  04 30 8d e5                                      str r3, [sp, #4]
0062ca74  14 a0 8d e5                                      str sl, [sp, #0x14]
0062ca78  2b 00 00 0a                                      beq #0x62cb2c
0062ca7c  00 00 52 e3                                      cmp r2, #0
0062ca80  0a b0 a0 01                                      moveq fp, sl
0062ca84  0a 90 a0 01                                      moveq sb, sl
0062ca88  1d 00 00 0a                                      beq #0x62cb04
0062ca8c  00 60 a0 e1                                      mov r6, r0
0062ca90  00 80 a0 e3                                      mov r8, #0
0062ca94  0a b0 a0 e1                                      mov fp, sl
0062ca98  0a 90 a0 e1                                      mov sb, sl
0062ca9c  08 70 95 e7                                      ldr r7, [r5, r8]
0062caa0  00 10 96 e5                                      ldr r1, [r6]
0062caa4  04 80 88 e2                                      add r8, r8, #4
0062caa8  07 00 a0 e1                                      mov r0, r7
0062caac  ae 88 f3 eb                                      bl #0x30ed6c
0062cab0  00 10 a0 e1                                      mov r1, r0
0062cab4  0a 00 a0 e1                                      mov r0, sl
0062cab8  39 88 f3 eb                                      bl #0x30eba4
0062cabc  04 10 96 e5                                      ldr r1, [r6, #4]
0062cac0  00 a0 a0 e1                                      mov sl, r0
0062cac4  07 00 a0 e1                                      mov r0, r7
0062cac8  a7 88 f3 eb                                      bl #0x30ed6c
0062cacc  00 10 a0 e1                                      mov r1, r0
0062cad0  0b 00 a0 e1                                      mov r0, fp
0062cad4  32 88 f3 eb                                      bl #0x30eba4
0062cad8  08 10 96 e5                                      ldr r1, [r6, #8]
0062cadc  00 b0 a0 e1                                      mov fp, r0
0062cae0  07 00 a0 e1                                      mov r0, r7
0062cae4  a0 88 f3 eb                                      bl #0x30ed6c
0062cae8  00 10 a0 e1                                      mov r1, r0
0062caec  09 00 a0 e1                                      mov r0, sb
0062caf0  2b 88 f3 eb                                      bl #0x30eba4
0062caf4  01 40 54 e2                                      subs r4, r4, #1
0062caf8  00 90 a0 e1                                      mov sb, r0
0062cafc  0c 60 86 e2                                      add r6, r6, #0xc
0062cb00  e5 ff ff 1a                                      bne #0x62ca9c
0062cb04  18 10 8d e2                                      add r1, sp, #0x18
0062cb08  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062cb0c  10 b0 8d e5                                      str fp, [sp, #0x10]
0062cb10  08 90 81 e5                                      str sb, [r1, #8]
0062cb14  04 00 9d e5                                      ldr r0, [sp, #4]
0062cb18  00 30 90 e5                                      ldr r3, [r0]
0062cb1c  0f e0 a0 e1                                      mov lr, pc
0062cb20  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062cb24  1c d0 8d e2                                      add sp, sp, #0x1c
0062cb28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062cb2c  00 30 a0 e1                                      mov r3, r0
0062cb30  04 c0 93 e4                                      ldr ip, [r3], #4
0062cb34  04 20 90 e5                                      ldr r2, [r0, #4]
0062cb38  18 10 8d e2                                      add r1, sp, #0x18
0062cb3c  04 30 93 e5                                      ldr r3, [r3, #4]
0062cb40  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062cb44  10 20 8d e5                                      str r2, [sp, #0x10]
0062cb48  08 30 81 e5                                      str r3, [r1, #8]
0062cb4c  f0 ff ff ea                                      b #0x62cb14
