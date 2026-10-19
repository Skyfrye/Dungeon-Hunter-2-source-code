; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006239d8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006239d8  30 40 2d e9                                      push {r4, r5, lr}
006239dc  14 d0 4d e2                                      sub sp, sp, #0x14
006239e0  04 50 8d e2                                      add r5, sp, #4
006239e4  00 30 a0 e3                                      mov r3, #0
006239e8  02 40 a0 e1                                      mov r4, r2
006239ec  05 20 a0 e1                                      mov r2, r5
006239f0  0c 30 8d e5                                      str r3, [sp, #0xc]
006239f4  04 30 8d e5                                      str r3, [sp, #4]
006239f8  08 30 8d e5                                      str r3, [sp, #8]
006239fc  d4 c1 ff eb                                      bl #0x614154
00623a00  04 00 a0 e1                                      mov r0, r4
00623a04  05 10 a0 e1                                      mov r1, r5
00623a08  00 30 94 e5                                      ldr r3, [r4]
00623a0c  0f e0 a0 e1                                      mov lr, pc
00623a10  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623a14  14 d0 8d e2                                      add sp, sp, #0x14
00623a18  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00627d14, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00627d14  30 40 2d e9                                      push {r4, r5, lr}
00627d18  1c d0 4d e2                                      sub sp, sp, #0x1c
00627d1c  28 40 9d e5                                      ldr r4, [sp, #0x28]
00627d20  00 c0 a0 e3                                      mov ip, #0
00627d24  0c 50 8d e2                                      add r5, sp, #0xc
00627d28  00 50 8d e5                                      str r5, [sp]
00627d2c  14 c0 8d e5                                      str ip, [sp, #0x14]
00627d30  0c c0 8d e5                                      str ip, [sp, #0xc]
00627d34  10 c0 8d e5                                      str ip, [sp, #0x10]
00627d38  9d ff ff eb                                      bl #0x627bb4
00627d3c  04 00 a0 e1                                      mov r0, r4
00627d40  05 10 a0 e1                                      mov r1, r5
00627d44  00 30 94 e5                                      ldr r3, [r4]
00627d48  0f e0 a0 e1                                      mov lr, pc
00627d4c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00627d50  1c d0 8d e2                                      add sp, sp, #0x1c
00627d54  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062d40c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d40c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d410  01 00 52 e3                                      cmp r2, #1
0062d414  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d418  00 a0 a0 e3                                      mov sl, #0
0062d41c  02 40 a0 e1                                      mov r4, r2
0062d420  01 50 a0 e1                                      mov r5, r1
0062d424  04 30 8d e5                                      str r3, [sp, #4]
0062d428  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d42c  2b 00 00 0a                                      beq #0x62d4e0
0062d430  00 00 52 e3                                      cmp r2, #0
0062d434  0a b0 a0 01                                      moveq fp, sl
0062d438  0a 90 a0 01                                      moveq sb, sl
0062d43c  1d 00 00 0a                                      beq #0x62d4b8
0062d440  00 60 a0 e1                                      mov r6, r0
0062d444  00 80 a0 e3                                      mov r8, #0
0062d448  0a b0 a0 e1                                      mov fp, sl
0062d44c  0a 90 a0 e1                                      mov sb, sl
0062d450  08 70 95 e7                                      ldr r7, [r5, r8]
0062d454  00 10 96 e5                                      ldr r1, [r6]
0062d458  04 80 88 e2                                      add r8, r8, #4
0062d45c  07 00 a0 e1                                      mov r0, r7
0062d460  41 86 f3 eb                                      bl #0x30ed6c
0062d464  00 10 a0 e1                                      mov r1, r0
0062d468  0a 00 a0 e1                                      mov r0, sl
0062d46c  cc 85 f3 eb                                      bl #0x30eba4
0062d470  04 10 96 e5                                      ldr r1, [r6, #4]
0062d474  00 a0 a0 e1                                      mov sl, r0
0062d478  07 00 a0 e1                                      mov r0, r7
0062d47c  3a 86 f3 eb                                      bl #0x30ed6c
0062d480  00 10 a0 e1                                      mov r1, r0
0062d484  0b 00 a0 e1                                      mov r0, fp
0062d488  c5 85 f3 eb                                      bl #0x30eba4
0062d48c  08 10 96 e5                                      ldr r1, [r6, #8]
0062d490  00 b0 a0 e1                                      mov fp, r0
0062d494  07 00 a0 e1                                      mov r0, r7
0062d498  33 86 f3 eb                                      bl #0x30ed6c
0062d49c  00 10 a0 e1                                      mov r1, r0
0062d4a0  09 00 a0 e1                                      mov r0, sb
0062d4a4  be 85 f3 eb                                      bl #0x30eba4
0062d4a8  01 40 54 e2                                      subs r4, r4, #1
0062d4ac  00 90 a0 e1                                      mov sb, r0
0062d4b0  0c 60 86 e2                                      add r6, r6, #0xc
0062d4b4  e5 ff ff 1a                                      bne #0x62d450
0062d4b8  18 10 8d e2                                      add r1, sp, #0x18
0062d4bc  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d4c0  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d4c4  08 90 81 e5                                      str sb, [r1, #8]
0062d4c8  04 00 9d e5                                      ldr r0, [sp, #4]
0062d4cc  00 30 90 e5                                      ldr r3, [r0]
0062d4d0  0f e0 a0 e1                                      mov lr, pc
0062d4d4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d4d8  1c d0 8d e2                                      add sp, sp, #0x1c
0062d4dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d4e0  00 30 a0 e1                                      mov r3, r0
0062d4e4  04 c0 93 e4                                      ldr ip, [r3], #4
0062d4e8  04 20 90 e5                                      ldr r2, [r0, #4]
0062d4ec  18 10 8d e2                                      add r1, sp, #0x18
0062d4f0  04 30 93 e5                                      ldr r3, [r3, #4]
0062d4f4  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d4f8  10 20 8d e5                                      str r2, [sp, #0x10]
0062d4fc  08 30 81 e5                                      str r3, [r1, #8]
0062d500  f0 ff ff ea                                      b #0x62d4c8

; FUNCTION 0x0062d520, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d520  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d524  01 00 52 e3                                      cmp r2, #1
0062d528  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d52c  00 a0 a0 e3                                      mov sl, #0
0062d530  02 40 a0 e1                                      mov r4, r2
0062d534  01 50 a0 e1                                      mov r5, r1
0062d538  04 30 8d e5                                      str r3, [sp, #4]
0062d53c  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d540  2b 00 00 0a                                      beq #0x62d5f4
0062d544  00 00 52 e3                                      cmp r2, #0
0062d548  0a b0 a0 01                                      moveq fp, sl
0062d54c  0a 90 a0 01                                      moveq sb, sl
0062d550  1d 00 00 0a                                      beq #0x62d5cc
0062d554  00 60 a0 e1                                      mov r6, r0
0062d558  00 80 a0 e3                                      mov r8, #0
0062d55c  0a b0 a0 e1                                      mov fp, sl
0062d560  0a 90 a0 e1                                      mov sb, sl
0062d564  08 70 95 e7                                      ldr r7, [r5, r8]
0062d568  00 10 96 e5                                      ldr r1, [r6]
0062d56c  04 80 88 e2                                      add r8, r8, #4
0062d570  07 00 a0 e1                                      mov r0, r7
0062d574  fc 85 f3 eb                                      bl #0x30ed6c
0062d578  00 10 a0 e1                                      mov r1, r0
0062d57c  0a 00 a0 e1                                      mov r0, sl
0062d580  87 85 f3 eb                                      bl #0x30eba4
0062d584  04 10 96 e5                                      ldr r1, [r6, #4]
0062d588  00 a0 a0 e1                                      mov sl, r0
0062d58c  07 00 a0 e1                                      mov r0, r7
0062d590  f5 85 f3 eb                                      bl #0x30ed6c
0062d594  00 10 a0 e1                                      mov r1, r0
0062d598  0b 00 a0 e1                                      mov r0, fp
0062d59c  80 85 f3 eb                                      bl #0x30eba4
0062d5a0  08 10 96 e5                                      ldr r1, [r6, #8]
0062d5a4  00 b0 a0 e1                                      mov fp, r0
0062d5a8  07 00 a0 e1                                      mov r0, r7
0062d5ac  ee 85 f3 eb                                      bl #0x30ed6c
0062d5b0  00 10 a0 e1                                      mov r1, r0
0062d5b4  09 00 a0 e1                                      mov r0, sb
0062d5b8  79 85 f3 eb                                      bl #0x30eba4
0062d5bc  01 40 54 e2                                      subs r4, r4, #1
0062d5c0  00 90 a0 e1                                      mov sb, r0
0062d5c4  0c 60 86 e2                                      add r6, r6, #0xc
0062d5c8  e5 ff ff 1a                                      bne #0x62d564
0062d5cc  18 10 8d e2                                      add r1, sp, #0x18
0062d5d0  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d5d4  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d5d8  08 90 81 e5                                      str sb, [r1, #8]
0062d5dc  04 00 9d e5                                      ldr r0, [sp, #4]
0062d5e0  00 30 90 e5                                      ldr r3, [r0]
0062d5e4  0f e0 a0 e1                                      mov lr, pc
0062d5e8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d5ec  1c d0 8d e2                                      add sp, sp, #0x1c
0062d5f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d5f4  00 30 a0 e1                                      mov r3, r0
0062d5f8  04 c0 93 e4                                      ldr ip, [r3], #4
0062d5fc  04 20 90 e5                                      ldr r2, [r0, #4]
0062d600  18 10 8d e2                                      add r1, sp, #0x18
0062d604  04 30 93 e5                                      ldr r3, [r3, #4]
0062d608  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d60c  10 20 8d e5                                      str r2, [sp, #0x10]
0062d610  08 30 81 e5                                      str r3, [r1, #8]
0062d614  f0 ff ff ea                                      b #0x62d5dc
