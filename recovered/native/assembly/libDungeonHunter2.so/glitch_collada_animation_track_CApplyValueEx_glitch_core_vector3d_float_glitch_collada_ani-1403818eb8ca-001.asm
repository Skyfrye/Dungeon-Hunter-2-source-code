; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623bb0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623bb0  30 40 2d e9                                      push {r4, r5, lr}
00623bb4  14 d0 4d e2                                      sub sp, sp, #0x14
00623bb8  04 50 8d e2                                      add r5, sp, #4
00623bbc  00 30 a0 e3                                      mov r3, #0
00623bc0  02 40 a0 e1                                      mov r4, r2
00623bc4  05 20 a0 e1                                      mov r2, r5
00623bc8  0c 30 8d e5                                      str r3, [sp, #0xc]
00623bcc  04 30 8d e5                                      str r3, [sp, #4]
00623bd0  08 30 8d e5                                      str r3, [sp, #8]
00623bd4  c4 c8 ff eb                                      bl #0x615eec
00623bd8  04 00 a0 e1                                      mov r0, r4
00623bdc  05 10 a0 e1                                      mov r1, r5
00623be0  00 30 94 e5                                      ldr r3, [r4]
00623be4  0f e0 a0 e1                                      mov lr, pc
00623be8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623bec  14 d0 8d e2                                      add sp, sp, #0x14
00623bf0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00623c08, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623c08  30 40 2d e9                                      push {r4, r5, lr}
00623c0c  1c d0 4d e2                                      sub sp, sp, #0x1c
00623c10  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623c14  00 c0 a0 e3                                      mov ip, #0
00623c18  0c 50 8d e2                                      add r5, sp, #0xc
00623c1c  00 50 8d e5                                      str r5, [sp]
00623c20  14 c0 8d e5                                      str ip, [sp, #0x14]
00623c24  0c c0 8d e5                                      str ip, [sp, #0xc]
00623c28  10 c0 8d e5                                      str ip, [sp, #0x10]
00623c2c  da c8 ff eb                                      bl #0x615f9c
00623c30  04 00 a0 e1                                      mov r0, r4
00623c34  05 10 a0 e1                                      mov r1, r5
00623c38  00 30 94 e5                                      ldr r3, [r4]
00623c3c  0f e0 a0 e1                                      mov lr, pc
00623c40  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623c44  1c d0 8d e2                                      add sp, sp, #0x1c
00623c48  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00623df0, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623df0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00623df4  01 00 52 e3                                      cmp r2, #1
00623df8  1c d0 4d e2                                      sub sp, sp, #0x1c
00623dfc  00 a0 a0 e3                                      mov sl, #0
00623e00  02 40 a0 e1                                      mov r4, r2
00623e04  01 50 a0 e1                                      mov r5, r1
00623e08  04 30 8d e5                                      str r3, [sp, #4]
00623e0c  14 a0 8d e5                                      str sl, [sp, #0x14]
00623e10  2b 00 00 0a                                      beq #0x623ec4
00623e14  00 00 52 e3                                      cmp r2, #0
00623e18  0a b0 a0 01                                      moveq fp, sl
00623e1c  0a 90 a0 01                                      moveq sb, sl
00623e20  1d 00 00 0a                                      beq #0x623e9c
00623e24  00 60 a0 e1                                      mov r6, r0
00623e28  00 80 a0 e3                                      mov r8, #0
00623e2c  0a b0 a0 e1                                      mov fp, sl
00623e30  0a 90 a0 e1                                      mov sb, sl
00623e34  08 70 95 e7                                      ldr r7, [r5, r8]
00623e38  00 10 96 e5                                      ldr r1, [r6]
00623e3c  04 80 88 e2                                      add r8, r8, #4
00623e40  07 00 a0 e1                                      mov r0, r7
00623e44  c8 ab f3 eb                                      bl #0x30ed6c
00623e48  00 10 a0 e1                                      mov r1, r0
00623e4c  0a 00 a0 e1                                      mov r0, sl
00623e50  53 ab f3 eb                                      bl #0x30eba4
00623e54  04 10 96 e5                                      ldr r1, [r6, #4]
00623e58  00 a0 a0 e1                                      mov sl, r0
00623e5c  07 00 a0 e1                                      mov r0, r7
00623e60  c1 ab f3 eb                                      bl #0x30ed6c
00623e64  00 10 a0 e1                                      mov r1, r0
00623e68  0b 00 a0 e1                                      mov r0, fp
00623e6c  4c ab f3 eb                                      bl #0x30eba4
00623e70  08 10 96 e5                                      ldr r1, [r6, #8]
00623e74  00 b0 a0 e1                                      mov fp, r0
00623e78  07 00 a0 e1                                      mov r0, r7
00623e7c  ba ab f3 eb                                      bl #0x30ed6c
00623e80  00 10 a0 e1                                      mov r1, r0
00623e84  09 00 a0 e1                                      mov r0, sb
00623e88  45 ab f3 eb                                      bl #0x30eba4
00623e8c  01 40 54 e2                                      subs r4, r4, #1
00623e90  00 90 a0 e1                                      mov sb, r0
00623e94  0c 60 86 e2                                      add r6, r6, #0xc
00623e98  e5 ff ff 1a                                      bne #0x623e34
00623e9c  18 10 8d e2                                      add r1, sp, #0x18
00623ea0  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00623ea4  10 b0 8d e5                                      str fp, [sp, #0x10]
00623ea8  08 90 81 e5                                      str sb, [r1, #8]
00623eac  04 00 9d e5                                      ldr r0, [sp, #4]
00623eb0  00 30 90 e5                                      ldr r3, [r0]
00623eb4  0f e0 a0 e1                                      mov lr, pc
00623eb8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623ebc  1c d0 8d e2                                      add sp, sp, #0x1c
00623ec0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00623ec4  00 30 a0 e1                                      mov r3, r0
00623ec8  04 c0 93 e4                                      ldr ip, [r3], #4
00623ecc  04 20 90 e5                                      ldr r2, [r0, #4]
00623ed0  18 10 8d e2                                      add r1, sp, #0x18
00623ed4  04 30 93 e5                                      ldr r3, [r3, #4]
00623ed8  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00623edc  10 20 8d e5                                      str r2, [sp, #0x10]
00623ee0  08 30 81 e5                                      str r3, [r1, #8]
00623ee4  f0 ff ff ea                                      b #0x623eac

; FUNCTION 0x0062da84, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062da84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062da88  01 00 52 e3                                      cmp r2, #1
0062da8c  1c d0 4d e2                                      sub sp, sp, #0x1c
0062da90  00 a0 a0 e3                                      mov sl, #0
0062da94  02 40 a0 e1                                      mov r4, r2
0062da98  01 50 a0 e1                                      mov r5, r1
0062da9c  04 30 8d e5                                      str r3, [sp, #4]
0062daa0  14 a0 8d e5                                      str sl, [sp, #0x14]
0062daa4  2b 00 00 0a                                      beq #0x62db58
0062daa8  00 00 52 e3                                      cmp r2, #0
0062daac  0a b0 a0 01                                      moveq fp, sl
0062dab0  0a 90 a0 01                                      moveq sb, sl
0062dab4  1d 00 00 0a                                      beq #0x62db30
0062dab8  00 60 a0 e1                                      mov r6, r0
0062dabc  00 80 a0 e3                                      mov r8, #0
0062dac0  0a b0 a0 e1                                      mov fp, sl
0062dac4  0a 90 a0 e1                                      mov sb, sl
0062dac8  08 70 95 e7                                      ldr r7, [r5, r8]
0062dacc  00 10 96 e5                                      ldr r1, [r6]
0062dad0  04 80 88 e2                                      add r8, r8, #4
0062dad4  07 00 a0 e1                                      mov r0, r7
0062dad8  a3 84 f3 eb                                      bl #0x30ed6c
0062dadc  00 10 a0 e1                                      mov r1, r0
0062dae0  0a 00 a0 e1                                      mov r0, sl
0062dae4  2e 84 f3 eb                                      bl #0x30eba4
0062dae8  04 10 96 e5                                      ldr r1, [r6, #4]
0062daec  00 a0 a0 e1                                      mov sl, r0
0062daf0  07 00 a0 e1                                      mov r0, r7
0062daf4  9c 84 f3 eb                                      bl #0x30ed6c
0062daf8  00 10 a0 e1                                      mov r1, r0
0062dafc  0b 00 a0 e1                                      mov r0, fp
0062db00  27 84 f3 eb                                      bl #0x30eba4
0062db04  08 10 96 e5                                      ldr r1, [r6, #8]
0062db08  00 b0 a0 e1                                      mov fp, r0
0062db0c  07 00 a0 e1                                      mov r0, r7
0062db10  95 84 f3 eb                                      bl #0x30ed6c
0062db14  00 10 a0 e1                                      mov r1, r0
0062db18  09 00 a0 e1                                      mov r0, sb
0062db1c  20 84 f3 eb                                      bl #0x30eba4
0062db20  01 40 54 e2                                      subs r4, r4, #1
0062db24  00 90 a0 e1                                      mov sb, r0
0062db28  0c 60 86 e2                                      add r6, r6, #0xc
0062db2c  e5 ff ff 1a                                      bne #0x62dac8
0062db30  18 10 8d e2                                      add r1, sp, #0x18
0062db34  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062db38  10 b0 8d e5                                      str fp, [sp, #0x10]
0062db3c  08 90 81 e5                                      str sb, [r1, #8]
0062db40  04 00 9d e5                                      ldr r0, [sp, #4]
0062db44  00 30 90 e5                                      ldr r3, [r0]
0062db48  0f e0 a0 e1                                      mov lr, pc
0062db4c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0062db50  1c d0 8d e2                                      add sp, sp, #0x1c
0062db54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062db58  00 30 a0 e1                                      mov r3, r0
0062db5c  04 c0 93 e4                                      ldr ip, [r3], #4
0062db60  04 20 90 e5                                      ldr r2, [r0, #4]
0062db64  18 10 8d e2                                      add r1, sp, #0x18
0062db68  04 30 93 e5                                      ldr r3, [r3, #4]
0062db6c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062db70  10 20 8d e5                                      str r2, [sp, #0x10]
0062db74  08 30 81 e5                                      str r3, [r1, #8]
0062db78  f0 ff ff ea                                      b #0x62db40
