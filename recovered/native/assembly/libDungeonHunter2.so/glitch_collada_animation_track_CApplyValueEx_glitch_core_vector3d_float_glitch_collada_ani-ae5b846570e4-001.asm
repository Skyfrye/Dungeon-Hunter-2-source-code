; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623a30, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623a30  30 40 2d e9                                      push {r4, r5, lr}
00623a34  14 d0 4d e2                                      sub sp, sp, #0x14
00623a38  04 50 8d e2                                      add r5, sp, #4
00623a3c  00 30 a0 e3                                      mov r3, #0
00623a40  02 40 a0 e1                                      mov r4, r2
00623a44  05 20 a0 e1                                      mov r2, r5
00623a48  0c 30 8d e5                                      str r3, [sp, #0xc]
00623a4c  04 30 8d e5                                      str r3, [sp, #4]
00623a50  08 30 8d e5                                      str r3, [sp, #8]
00623a54  00 c8 ff eb                                      bl #0x615a5c
00623a58  04 00 a0 e1                                      mov r0, r4
00623a5c  05 10 a0 e1                                      mov r1, r5
00623a60  00 30 94 e5                                      ldr r3, [r4]
00623a64  0f e0 a0 e1                                      mov lr, pc
00623a68  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623a6c  14 d0 8d e2                                      add sp, sp, #0x14
00623a70  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00623a88, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623a88  30 40 2d e9                                      push {r4, r5, lr}
00623a8c  1c d0 4d e2                                      sub sp, sp, #0x1c
00623a90  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623a94  00 c0 a0 e3                                      mov ip, #0
00623a98  0c 50 8d e2                                      add r5, sp, #0xc
00623a9c  00 50 8d e5                                      str r5, [sp]
00623aa0  14 c0 8d e5                                      str ip, [sp, #0x14]
00623aa4  0c c0 8d e5                                      str ip, [sp, #0xc]
00623aa8  10 c0 8d e5                                      str ip, [sp, #0x10]
00623aac  15 c8 ff eb                                      bl #0x615b08
00623ab0  04 00 a0 e1                                      mov r0, r4
00623ab4  05 10 a0 e1                                      mov r1, r5
00623ab8  00 30 94 e5                                      ldr r3, [r4]
00623abc  0f e0 a0 e1                                      mov lr, pc
00623ac0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623ac4  1c d0 8d e2                                      add sp, sp, #0x1c
00623ac8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00628f54, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628f54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00628f58  01 00 52 e3                                      cmp r2, #1
00628f5c  1c d0 4d e2                                      sub sp, sp, #0x1c
00628f60  00 a0 a0 e3                                      mov sl, #0
00628f64  02 40 a0 e1                                      mov r4, r2
00628f68  01 50 a0 e1                                      mov r5, r1
00628f6c  04 30 8d e5                                      str r3, [sp, #4]
00628f70  14 a0 8d e5                                      str sl, [sp, #0x14]
00628f74  2b 00 00 0a                                      beq #0x629028
00628f78  00 00 52 e3                                      cmp r2, #0
00628f7c  0a b0 a0 01                                      moveq fp, sl
00628f80  0a 90 a0 01                                      moveq sb, sl
00628f84  1d 00 00 0a                                      beq #0x629000
00628f88  00 60 a0 e1                                      mov r6, r0
00628f8c  00 80 a0 e3                                      mov r8, #0
00628f90  0a b0 a0 e1                                      mov fp, sl
00628f94  0a 90 a0 e1                                      mov sb, sl
00628f98  08 70 95 e7                                      ldr r7, [r5, r8]
00628f9c  00 10 96 e5                                      ldr r1, [r6]
00628fa0  04 80 88 e2                                      add r8, r8, #4
00628fa4  07 00 a0 e1                                      mov r0, r7
00628fa8  6f 97 f3 eb                                      bl #0x30ed6c
00628fac  00 10 a0 e1                                      mov r1, r0
00628fb0  0a 00 a0 e1                                      mov r0, sl
00628fb4  fa 96 f3 eb                                      bl #0x30eba4
00628fb8  04 10 96 e5                                      ldr r1, [r6, #4]
00628fbc  00 a0 a0 e1                                      mov sl, r0
00628fc0  07 00 a0 e1                                      mov r0, r7
00628fc4  68 97 f3 eb                                      bl #0x30ed6c
00628fc8  00 10 a0 e1                                      mov r1, r0
00628fcc  0b 00 a0 e1                                      mov r0, fp
00628fd0  f3 96 f3 eb                                      bl #0x30eba4
00628fd4  08 10 96 e5                                      ldr r1, [r6, #8]
00628fd8  00 b0 a0 e1                                      mov fp, r0
00628fdc  07 00 a0 e1                                      mov r0, r7
00628fe0  61 97 f3 eb                                      bl #0x30ed6c
00628fe4  00 10 a0 e1                                      mov r1, r0
00628fe8  09 00 a0 e1                                      mov r0, sb
00628fec  ec 96 f3 eb                                      bl #0x30eba4
00628ff0  01 40 54 e2                                      subs r4, r4, #1
00628ff4  00 90 a0 e1                                      mov sb, r0
00628ff8  0c 60 86 e2                                      add r6, r6, #0xc
00628ffc  e5 ff ff 1a                                      bne #0x628f98
00629000  18 10 8d e2                                      add r1, sp, #0x18
00629004  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629008  10 b0 8d e5                                      str fp, [sp, #0x10]
0062900c  08 90 81 e5                                      str sb, [r1, #8]
00629010  04 00 9d e5                                      ldr r0, [sp, #4]
00629014  00 30 90 e5                                      ldr r3, [r0]
00629018  0f e0 a0 e1                                      mov lr, pc
0062901c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629020  1c d0 8d e2                                      add sp, sp, #0x1c
00629024  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629028  00 30 a0 e1                                      mov r3, r0
0062902c  04 c0 93 e4                                      ldr ip, [r3], #4
00629030  04 20 90 e5                                      ldr r2, [r0, #4]
00629034  18 10 8d e2                                      add r1, sp, #0x18
00629038  04 30 93 e5                                      ldr r3, [r3, #4]
0062903c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629040  10 20 8d e5                                      str r2, [sp, #0x10]
00629044  08 30 81 e5                                      str r3, [r1, #8]
00629048  f0 ff ff ea                                      b #0x629010

; FUNCTION 0x00629068, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00629068  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062906c  01 00 52 e3                                      cmp r2, #1
00629070  1c d0 4d e2                                      sub sp, sp, #0x1c
00629074  00 a0 a0 e3                                      mov sl, #0
00629078  02 40 a0 e1                                      mov r4, r2
0062907c  01 50 a0 e1                                      mov r5, r1
00629080  04 30 8d e5                                      str r3, [sp, #4]
00629084  14 a0 8d e5                                      str sl, [sp, #0x14]
00629088  2b 00 00 0a                                      beq #0x62913c
0062908c  00 00 52 e3                                      cmp r2, #0
00629090  0a b0 a0 01                                      moveq fp, sl
00629094  0a 90 a0 01                                      moveq sb, sl
00629098  1d 00 00 0a                                      beq #0x629114
0062909c  00 60 a0 e1                                      mov r6, r0
006290a0  00 80 a0 e3                                      mov r8, #0
006290a4  0a b0 a0 e1                                      mov fp, sl
006290a8  0a 90 a0 e1                                      mov sb, sl
006290ac  08 70 95 e7                                      ldr r7, [r5, r8]
006290b0  00 10 96 e5                                      ldr r1, [r6]
006290b4  04 80 88 e2                                      add r8, r8, #4
006290b8  07 00 a0 e1                                      mov r0, r7
006290bc  2a 97 f3 eb                                      bl #0x30ed6c
006290c0  00 10 a0 e1                                      mov r1, r0
006290c4  0a 00 a0 e1                                      mov r0, sl
006290c8  b5 96 f3 eb                                      bl #0x30eba4
006290cc  04 10 96 e5                                      ldr r1, [r6, #4]
006290d0  00 a0 a0 e1                                      mov sl, r0
006290d4  07 00 a0 e1                                      mov r0, r7
006290d8  23 97 f3 eb                                      bl #0x30ed6c
006290dc  00 10 a0 e1                                      mov r1, r0
006290e0  0b 00 a0 e1                                      mov r0, fp
006290e4  ae 96 f3 eb                                      bl #0x30eba4
006290e8  08 10 96 e5                                      ldr r1, [r6, #8]
006290ec  00 b0 a0 e1                                      mov fp, r0
006290f0  07 00 a0 e1                                      mov r0, r7
006290f4  1c 97 f3 eb                                      bl #0x30ed6c
006290f8  00 10 a0 e1                                      mov r1, r0
006290fc  09 00 a0 e1                                      mov r0, sb
00629100  a7 96 f3 eb                                      bl #0x30eba4
00629104  01 40 54 e2                                      subs r4, r4, #1
00629108  00 90 a0 e1                                      mov sb, r0
0062910c  0c 60 86 e2                                      add r6, r6, #0xc
00629110  e5 ff ff 1a                                      bne #0x6290ac
00629114  18 10 8d e2                                      add r1, sp, #0x18
00629118  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062911c  10 b0 8d e5                                      str fp, [sp, #0x10]
00629120  08 90 81 e5                                      str sb, [r1, #8]
00629124  04 00 9d e5                                      ldr r0, [sp, #4]
00629128  00 30 90 e5                                      ldr r3, [r0]
0062912c  0f e0 a0 e1                                      mov lr, pc
00629130  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629134  1c d0 8d e2                                      add sp, sp, #0x1c
00629138  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062913c  00 30 a0 e1                                      mov r3, r0
00629140  04 c0 93 e4                                      ldr ip, [r3], #4
00629144  04 20 90 e5                                      ldr r2, [r0, #4]
00629148  18 10 8d e2                                      add r1, sp, #0x18
0062914c  04 30 93 e5                                      ldr r3, [r3, #4]
00629150  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629154  10 20 8d e5                                      str r2, [sp, #0x10]
00629158  08 30 81 e5                                      str r3, [r1, #8]
0062915c  f0 ff ff ea                                      b #0x629124
