; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623954, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623954  30 40 2d e9                                      push {r4, r5, lr}
00623958  00 30 a0 e3                                      mov r3, #0
0062395c  14 d0 4d e2                                      sub sp, sp, #0x14
00623960  01 40 a0 e1                                      mov r4, r1
00623964  00 10 a0 e3                                      mov r1, #0
00623968  02 50 a0 e1                                      mov r5, r2
0062396c  0c 30 8d e5                                      str r3, [sp, #0xc]
00623970  04 30 8d e5                                      str r3, [sp, #4]
00623974  08 30 8d e5                                      str r3, [sp, #8]
00623978  29 19 01 eb                                      bl #0x669e24
0062397c  0c 30 a0 e3                                      mov r3, #0xc
00623980  93 04 04 e0                                      mul r4, r3, r4
00623984  04 30 90 e5                                      ldr r3, [r0, #4]
00623988  10 20 8d e2                                      add r2, sp, #0x10
0062398c  05 00 a0 e1                                      mov r0, r5
00623990  04 10 93 e7                                      ldr r1, [r3, r4]
00623994  04 40 83 e0                                      add r4, r3, r4
00623998  00 30 95 e5                                      ldr r3, [r5]
0062399c  0c 10 22 e5                                      str r1, [r2, #-0xc]!
006239a0  04 c0 94 e5                                      ldr ip, [r4, #4]
006239a4  02 10 a0 e1                                      mov r1, r2
006239a8  08 c0 8d e5                                      str ip, [sp, #8]
006239ac  08 c0 94 e5                                      ldr ip, [r4, #8]
006239b0  08 c0 82 e5                                      str ip, [r2, #8]
006239b4  0f e0 a0 e1                                      mov lr, pc
006239b8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006239bc  14 d0 8d e2                                      add sp, sp, #0x14
006239c0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00628950, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628950  30 40 2d e9                                      push {r4, r5, lr}
00628954  1c d0 4d e2                                      sub sp, sp, #0x1c
00628958  28 40 9d e5                                      ldr r4, [sp, #0x28]
0062895c  00 c0 a0 e3                                      mov ip, #0
00628960  0c 50 8d e2                                      add r5, sp, #0xc
00628964  00 50 8d e5                                      str r5, [sp]
00628968  14 c0 8d e5                                      str ip, [sp, #0x14]
0062896c  0c c0 8d e5                                      str ip, [sp, #0xc]
00628970  10 c0 8d e5                                      str ip, [sp, #0x10]
00628974  b5 ff ff eb                                      bl #0x628850
00628978  04 00 a0 e1                                      mov r0, r4
0062897c  05 10 a0 e1                                      mov r1, r5
00628980  00 30 94 e5                                      ldr r3, [r4]
00628984  0f e0 a0 e1                                      mov lr, pc
00628988  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062898c  1c d0 8d e2                                      add sp, sp, #0x1c
00628990  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062d634, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d634  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d638  01 00 52 e3                                      cmp r2, #1
0062d63c  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d640  00 a0 a0 e3                                      mov sl, #0
0062d644  02 40 a0 e1                                      mov r4, r2
0062d648  01 50 a0 e1                                      mov r5, r1
0062d64c  04 30 8d e5                                      str r3, [sp, #4]
0062d650  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d654  2b 00 00 0a                                      beq #0x62d708
0062d658  00 00 52 e3                                      cmp r2, #0
0062d65c  0a b0 a0 01                                      moveq fp, sl
0062d660  0a 90 a0 01                                      moveq sb, sl
0062d664  1d 00 00 0a                                      beq #0x62d6e0
0062d668  00 60 a0 e1                                      mov r6, r0
0062d66c  00 80 a0 e3                                      mov r8, #0
0062d670  0a b0 a0 e1                                      mov fp, sl
0062d674  0a 90 a0 e1                                      mov sb, sl
0062d678  08 70 95 e7                                      ldr r7, [r5, r8]
0062d67c  00 10 96 e5                                      ldr r1, [r6]
0062d680  04 80 88 e2                                      add r8, r8, #4
0062d684  07 00 a0 e1                                      mov r0, r7
0062d688  b7 85 f3 eb                                      bl #0x30ed6c
0062d68c  00 10 a0 e1                                      mov r1, r0
0062d690  0a 00 a0 e1                                      mov r0, sl
0062d694  42 85 f3 eb                                      bl #0x30eba4
0062d698  04 10 96 e5                                      ldr r1, [r6, #4]
0062d69c  00 a0 a0 e1                                      mov sl, r0
0062d6a0  07 00 a0 e1                                      mov r0, r7
0062d6a4  b0 85 f3 eb                                      bl #0x30ed6c
0062d6a8  00 10 a0 e1                                      mov r1, r0
0062d6ac  0b 00 a0 e1                                      mov r0, fp
0062d6b0  3b 85 f3 eb                                      bl #0x30eba4
0062d6b4  08 10 96 e5                                      ldr r1, [r6, #8]
0062d6b8  00 b0 a0 e1                                      mov fp, r0
0062d6bc  07 00 a0 e1                                      mov r0, r7
0062d6c0  a9 85 f3 eb                                      bl #0x30ed6c
0062d6c4  00 10 a0 e1                                      mov r1, r0
0062d6c8  09 00 a0 e1                                      mov r0, sb
0062d6cc  34 85 f3 eb                                      bl #0x30eba4
0062d6d0  01 40 54 e2                                      subs r4, r4, #1
0062d6d4  00 90 a0 e1                                      mov sb, r0
0062d6d8  0c 60 86 e2                                      add r6, r6, #0xc
0062d6dc  e5 ff ff 1a                                      bne #0x62d678
0062d6e0  18 10 8d e2                                      add r1, sp, #0x18
0062d6e4  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d6e8  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d6ec  08 90 81 e5                                      str sb, [r1, #8]
0062d6f0  04 00 9d e5                                      ldr r0, [sp, #4]
0062d6f4  00 30 90 e5                                      ldr r3, [r0]
0062d6f8  0f e0 a0 e1                                      mov lr, pc
0062d6fc  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d700  1c d0 8d e2                                      add sp, sp, #0x1c
0062d704  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d708  00 30 a0 e1                                      mov r3, r0
0062d70c  04 c0 93 e4                                      ldr ip, [r3], #4
0062d710  04 20 90 e5                                      ldr r2, [r0, #4]
0062d714  18 10 8d e2                                      add r1, sp, #0x18
0062d718  04 30 93 e5                                      ldr r3, [r3, #4]
0062d71c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d720  10 20 8d e5                                      str r2, [sp, #0x10]
0062d724  08 30 81 e5                                      str r3, [r1, #8]
0062d728  f0 ff ff ea                                      b #0x62d6f0

; FUNCTION 0x0062d748, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d748  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d74c  01 00 52 e3                                      cmp r2, #1
0062d750  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d754  00 a0 a0 e3                                      mov sl, #0
0062d758  02 40 a0 e1                                      mov r4, r2
0062d75c  01 50 a0 e1                                      mov r5, r1
0062d760  04 30 8d e5                                      str r3, [sp, #4]
0062d764  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d768  2b 00 00 0a                                      beq #0x62d81c
0062d76c  00 00 52 e3                                      cmp r2, #0
0062d770  0a b0 a0 01                                      moveq fp, sl
0062d774  0a 90 a0 01                                      moveq sb, sl
0062d778  1d 00 00 0a                                      beq #0x62d7f4
0062d77c  00 60 a0 e1                                      mov r6, r0
0062d780  00 80 a0 e3                                      mov r8, #0
0062d784  0a b0 a0 e1                                      mov fp, sl
0062d788  0a 90 a0 e1                                      mov sb, sl
0062d78c  08 70 95 e7                                      ldr r7, [r5, r8]
0062d790  00 10 96 e5                                      ldr r1, [r6]
0062d794  04 80 88 e2                                      add r8, r8, #4
0062d798  07 00 a0 e1                                      mov r0, r7
0062d79c  72 85 f3 eb                                      bl #0x30ed6c
0062d7a0  00 10 a0 e1                                      mov r1, r0
0062d7a4  0a 00 a0 e1                                      mov r0, sl
0062d7a8  fd 84 f3 eb                                      bl #0x30eba4
0062d7ac  04 10 96 e5                                      ldr r1, [r6, #4]
0062d7b0  00 a0 a0 e1                                      mov sl, r0
0062d7b4  07 00 a0 e1                                      mov r0, r7
0062d7b8  6b 85 f3 eb                                      bl #0x30ed6c
0062d7bc  00 10 a0 e1                                      mov r1, r0
0062d7c0  0b 00 a0 e1                                      mov r0, fp
0062d7c4  f6 84 f3 eb                                      bl #0x30eba4
0062d7c8  08 10 96 e5                                      ldr r1, [r6, #8]
0062d7cc  00 b0 a0 e1                                      mov fp, r0
0062d7d0  07 00 a0 e1                                      mov r0, r7
0062d7d4  64 85 f3 eb                                      bl #0x30ed6c
0062d7d8  00 10 a0 e1                                      mov r1, r0
0062d7dc  09 00 a0 e1                                      mov r0, sb
0062d7e0  ef 84 f3 eb                                      bl #0x30eba4
0062d7e4  01 40 54 e2                                      subs r4, r4, #1
0062d7e8  00 90 a0 e1                                      mov sb, r0
0062d7ec  0c 60 86 e2                                      add r6, r6, #0xc
0062d7f0  e5 ff ff 1a                                      bne #0x62d78c
0062d7f4  18 10 8d e2                                      add r1, sp, #0x18
0062d7f8  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d7fc  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d800  08 90 81 e5                                      str sb, [r1, #8]
0062d804  04 00 9d e5                                      ldr r0, [sp, #4]
0062d808  00 30 90 e5                                      ldr r3, [r0]
0062d80c  0f e0 a0 e1                                      mov lr, pc
0062d810  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d814  1c d0 8d e2                                      add sp, sp, #0x1c
0062d818  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d81c  00 30 a0 e1                                      mov r3, r0
0062d820  04 c0 93 e4                                      ldr ip, [r3], #4
0062d824  04 20 90 e5                                      ldr r2, [r0, #4]
0062d828  18 10 8d e2                                      add r1, sp, #0x18
0062d82c  04 30 93 e5                                      ldr r3, [r3, #4]
0062d830  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d834  10 20 8d e5                                      str r2, [sp, #0x10]
0062d838  08 30 81 e5                                      str r3, [r1, #8]
0062d83c  f0 ff ff ea                                      b #0x62d804
