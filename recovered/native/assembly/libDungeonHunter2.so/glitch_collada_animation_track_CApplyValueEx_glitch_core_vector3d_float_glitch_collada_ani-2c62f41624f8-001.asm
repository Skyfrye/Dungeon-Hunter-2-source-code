; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623474, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623474  30 40 2d e9                                      push {r4, r5, lr}
00623478  14 d0 4d e2                                      sub sp, sp, #0x14
0062347c  04 50 8d e2                                      add r5, sp, #4
00623480  00 30 a0 e3                                      mov r3, #0
00623484  02 40 a0 e1                                      mov r4, r2
00623488  05 20 a0 e1                                      mov r2, r5
0062348c  0c 30 8d e5                                      str r3, [sp, #0xc]
00623490  04 30 8d e5                                      str r3, [sp, #4]
00623494  08 30 8d e5                                      str r3, [sp, #8]
00623498  a1 cc ff eb                                      bl #0x616724
0062349c  04 00 a0 e1                                      mov r0, r4
006234a0  05 10 a0 e1                                      mov r1, r5
006234a4  00 30 94 e5                                      ldr r3, [r4]
006234a8  0f e0 a0 e1                                      mov lr, pc
006234ac  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006234b0  14 d0 8d e2                                      add sp, sp, #0x14
006234b4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006234cc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006234cc  30 40 2d e9                                      push {r4, r5, lr}
006234d0  1c d0 4d e2                                      sub sp, sp, #0x1c
006234d4  28 40 9d e5                                      ldr r4, [sp, #0x28]
006234d8  00 c0 a0 e3                                      mov ip, #0
006234dc  0c 50 8d e2                                      add r5, sp, #0xc
006234e0  00 50 8d e5                                      str r5, [sp]
006234e4  14 c0 8d e5                                      str ip, [sp, #0x14]
006234e8  0c c0 8d e5                                      str ip, [sp, #0xc]
006234ec  10 c0 8d e5                                      str ip, [sp, #0x10]
006234f0  b7 cc ff eb                                      bl #0x6167d4
006234f4  04 00 a0 e1                                      mov r0, r4
006234f8  05 10 a0 e1                                      mov r1, r5
006234fc  00 30 94 e5                                      ldr r3, [r4]
00623500  0f e0 a0 e1                                      mov lr, pc
00623504  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623508  1c d0 8d e2                                      add sp, sp, #0x1c
0062350c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062cd94, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062cd94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062cd98  01 00 52 e3                                      cmp r2, #1
0062cd9c  1c d0 4d e2                                      sub sp, sp, #0x1c
0062cda0  00 a0 a0 e3                                      mov sl, #0
0062cda4  02 40 a0 e1                                      mov r4, r2
0062cda8  01 50 a0 e1                                      mov r5, r1
0062cdac  04 30 8d e5                                      str r3, [sp, #4]
0062cdb0  14 a0 8d e5                                      str sl, [sp, #0x14]
0062cdb4  2b 00 00 0a                                      beq #0x62ce68
0062cdb8  00 00 52 e3                                      cmp r2, #0
0062cdbc  0a b0 a0 01                                      moveq fp, sl
0062cdc0  0a 90 a0 01                                      moveq sb, sl
0062cdc4  1d 00 00 0a                                      beq #0x62ce40
0062cdc8  00 60 a0 e1                                      mov r6, r0
0062cdcc  00 80 a0 e3                                      mov r8, #0
0062cdd0  0a b0 a0 e1                                      mov fp, sl
0062cdd4  0a 90 a0 e1                                      mov sb, sl
0062cdd8  08 70 95 e7                                      ldr r7, [r5, r8]
0062cddc  00 10 96 e5                                      ldr r1, [r6]
0062cde0  04 80 88 e2                                      add r8, r8, #4
0062cde4  07 00 a0 e1                                      mov r0, r7
0062cde8  df 87 f3 eb                                      bl #0x30ed6c
0062cdec  00 10 a0 e1                                      mov r1, r0
0062cdf0  0a 00 a0 e1                                      mov r0, sl
0062cdf4  6a 87 f3 eb                                      bl #0x30eba4
0062cdf8  04 10 96 e5                                      ldr r1, [r6, #4]
0062cdfc  00 a0 a0 e1                                      mov sl, r0
0062ce00  07 00 a0 e1                                      mov r0, r7
0062ce04  d8 87 f3 eb                                      bl #0x30ed6c
0062ce08  00 10 a0 e1                                      mov r1, r0
0062ce0c  0b 00 a0 e1                                      mov r0, fp
0062ce10  63 87 f3 eb                                      bl #0x30eba4
0062ce14  08 10 96 e5                                      ldr r1, [r6, #8]
0062ce18  00 b0 a0 e1                                      mov fp, r0
0062ce1c  07 00 a0 e1                                      mov r0, r7
0062ce20  d1 87 f3 eb                                      bl #0x30ed6c
0062ce24  00 10 a0 e1                                      mov r1, r0
0062ce28  09 00 a0 e1                                      mov r0, sb
0062ce2c  5c 87 f3 eb                                      bl #0x30eba4
0062ce30  01 40 54 e2                                      subs r4, r4, #1
0062ce34  00 90 a0 e1                                      mov sb, r0
0062ce38  0c 60 86 e2                                      add r6, r6, #0xc
0062ce3c  e5 ff ff 1a                                      bne #0x62cdd8
0062ce40  18 10 8d e2                                      add r1, sp, #0x18
0062ce44  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062ce48  10 b0 8d e5                                      str fp, [sp, #0x10]
0062ce4c  08 90 81 e5                                      str sb, [r1, #8]
0062ce50  04 00 9d e5                                      ldr r0, [sp, #4]
0062ce54  00 30 90 e5                                      ldr r3, [r0]
0062ce58  0f e0 a0 e1                                      mov lr, pc
0062ce5c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062ce60  1c d0 8d e2                                      add sp, sp, #0x1c
0062ce64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062ce68  00 30 a0 e1                                      mov r3, r0
0062ce6c  04 c0 93 e4                                      ldr ip, [r3], #4
0062ce70  04 20 90 e5                                      ldr r2, [r0, #4]
0062ce74  18 10 8d e2                                      add r1, sp, #0x18
0062ce78  04 30 93 e5                                      ldr r3, [r3, #4]
0062ce7c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062ce80  10 20 8d e5                                      str r2, [sp, #0x10]
0062ce84  08 30 81 e5                                      str r3, [r1, #8]
0062ce88  f0 ff ff ea                                      b #0x62ce50

; FUNCTION 0x0062cea8, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062cea8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062ceac  01 00 52 e3                                      cmp r2, #1
0062ceb0  1c d0 4d e2                                      sub sp, sp, #0x1c
0062ceb4  00 a0 a0 e3                                      mov sl, #0
0062ceb8  02 40 a0 e1                                      mov r4, r2
0062cebc  01 50 a0 e1                                      mov r5, r1
0062cec0  04 30 8d e5                                      str r3, [sp, #4]
0062cec4  14 a0 8d e5                                      str sl, [sp, #0x14]
0062cec8  2b 00 00 0a                                      beq #0x62cf7c
0062cecc  00 00 52 e3                                      cmp r2, #0
0062ced0  0a b0 a0 01                                      moveq fp, sl
0062ced4  0a 90 a0 01                                      moveq sb, sl
0062ced8  1d 00 00 0a                                      beq #0x62cf54
0062cedc  00 60 a0 e1                                      mov r6, r0
0062cee0  00 80 a0 e3                                      mov r8, #0
0062cee4  0a b0 a0 e1                                      mov fp, sl
0062cee8  0a 90 a0 e1                                      mov sb, sl
0062ceec  08 70 95 e7                                      ldr r7, [r5, r8]
0062cef0  00 10 96 e5                                      ldr r1, [r6]
0062cef4  04 80 88 e2                                      add r8, r8, #4
0062cef8  07 00 a0 e1                                      mov r0, r7
0062cefc  9a 87 f3 eb                                      bl #0x30ed6c
0062cf00  00 10 a0 e1                                      mov r1, r0
0062cf04  0a 00 a0 e1                                      mov r0, sl
0062cf08  25 87 f3 eb                                      bl #0x30eba4
0062cf0c  04 10 96 e5                                      ldr r1, [r6, #4]
0062cf10  00 a0 a0 e1                                      mov sl, r0
0062cf14  07 00 a0 e1                                      mov r0, r7
0062cf18  93 87 f3 eb                                      bl #0x30ed6c
0062cf1c  00 10 a0 e1                                      mov r1, r0
0062cf20  0b 00 a0 e1                                      mov r0, fp
0062cf24  1e 87 f3 eb                                      bl #0x30eba4
0062cf28  08 10 96 e5                                      ldr r1, [r6, #8]
0062cf2c  00 b0 a0 e1                                      mov fp, r0
0062cf30  07 00 a0 e1                                      mov r0, r7
0062cf34  8c 87 f3 eb                                      bl #0x30ed6c
0062cf38  00 10 a0 e1                                      mov r1, r0
0062cf3c  09 00 a0 e1                                      mov r0, sb
0062cf40  17 87 f3 eb                                      bl #0x30eba4
0062cf44  01 40 54 e2                                      subs r4, r4, #1
0062cf48  00 90 a0 e1                                      mov sb, r0
0062cf4c  0c 60 86 e2                                      add r6, r6, #0xc
0062cf50  e5 ff ff 1a                                      bne #0x62ceec
0062cf54  18 10 8d e2                                      add r1, sp, #0x18
0062cf58  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062cf5c  10 b0 8d e5                                      str fp, [sp, #0x10]
0062cf60  08 90 81 e5                                      str sb, [r1, #8]
0062cf64  04 00 9d e5                                      ldr r0, [sp, #4]
0062cf68  00 30 90 e5                                      ldr r3, [r0]
0062cf6c  0f e0 a0 e1                                      mov lr, pc
0062cf70  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062cf74  1c d0 8d e2                                      add sp, sp, #0x1c
0062cf78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062cf7c  00 30 a0 e1                                      mov r3, r0
0062cf80  04 c0 93 e4                                      ldr ip, [r3], #4
0062cf84  04 20 90 e5                                      ldr r2, [r0, #4]
0062cf88  18 10 8d e2                                      add r1, sp, #0x18
0062cf8c  04 30 93 e5                                      ldr r3, [r3, #4]
0062cf90  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062cf94  10 20 8d e5                                      str r2, [sp, #0x10]
0062cf98  08 30 81 e5                                      str r3, [r1, #8]
0062cf9c  f0 ff ff ea                                      b #0x62cf64
