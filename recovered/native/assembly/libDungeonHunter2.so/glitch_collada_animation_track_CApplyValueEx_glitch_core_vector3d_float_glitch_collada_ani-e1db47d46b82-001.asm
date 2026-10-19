; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006231dc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006231dc  30 40 2d e9                                      push {r4, r5, lr}
006231e0  14 d0 4d e2                                      sub sp, sp, #0x14
006231e4  04 50 8d e2                                      add r5, sp, #4
006231e8  00 30 a0 e3                                      mov r3, #0
006231ec  02 40 a0 e1                                      mov r4, r2
006231f0  05 20 a0 e1                                      mov r2, r5
006231f4  0c 30 8d e5                                      str r3, [sp, #0xc]
006231f8  04 30 8d e5                                      str r3, [sp, #4]
006231fc  08 30 8d e5                                      str r3, [sp, #8]
00623200  67 d1 ff eb                                      bl #0x6177a4
00623204  04 00 a0 e1                                      mov r0, r4
00623208  05 10 a0 e1                                      mov r1, r5
0062320c  00 30 94 e5                                      ldr r3, [r4]
00623210  0f e0 a0 e1                                      mov lr, pc
00623214  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623218  14 d0 8d e2                                      add sp, sp, #0x14
0062321c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00623234, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623234  30 40 2d e9                                      push {r4, r5, lr}
00623238  1c d0 4d e2                                      sub sp, sp, #0x1c
0062323c  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623240  00 c0 a0 e3                                      mov ip, #0
00623244  0c 50 8d e2                                      add r5, sp, #0xc
00623248  00 50 8d e5                                      str r5, [sp]
0062324c  14 c0 8d e5                                      str ip, [sp, #0x14]
00623250  0c c0 8d e5                                      str ip, [sp, #0xc]
00623254  10 c0 8d e5                                      str ip, [sp, #0x10]
00623258  7d d1 ff eb                                      bl #0x617854
0062325c  04 00 a0 e1                                      mov r0, r4
00623260  05 10 a0 e1                                      mov r1, r5
00623264  00 30 94 e5                                      ldr r3, [r4]
00623268  0f e0 a0 e1                                      mov lr, pc
0062326c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623270  1c d0 8d e2                                      add sp, sp, #0x1c
00623274  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062c0a4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c0a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c0a8  01 00 52 e3                                      cmp r2, #1
0062c0ac  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c0b0  00 a0 a0 e3                                      mov sl, #0
0062c0b4  02 40 a0 e1                                      mov r4, r2
0062c0b8  01 50 a0 e1                                      mov r5, r1
0062c0bc  04 30 8d e5                                      str r3, [sp, #4]
0062c0c0  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c0c4  2b 00 00 0a                                      beq #0x62c178
0062c0c8  00 00 52 e3                                      cmp r2, #0
0062c0cc  0a b0 a0 01                                      moveq fp, sl
0062c0d0  0a 90 a0 01                                      moveq sb, sl
0062c0d4  1d 00 00 0a                                      beq #0x62c150
0062c0d8  00 60 a0 e1                                      mov r6, r0
0062c0dc  00 80 a0 e3                                      mov r8, #0
0062c0e0  0a b0 a0 e1                                      mov fp, sl
0062c0e4  0a 90 a0 e1                                      mov sb, sl
0062c0e8  08 70 95 e7                                      ldr r7, [r5, r8]
0062c0ec  00 10 96 e5                                      ldr r1, [r6]
0062c0f0  04 80 88 e2                                      add r8, r8, #4
0062c0f4  07 00 a0 e1                                      mov r0, r7
0062c0f8  1b 8b f3 eb                                      bl #0x30ed6c
0062c0fc  00 10 a0 e1                                      mov r1, r0
0062c100  0a 00 a0 e1                                      mov r0, sl
0062c104  a6 8a f3 eb                                      bl #0x30eba4
0062c108  04 10 96 e5                                      ldr r1, [r6, #4]
0062c10c  00 a0 a0 e1                                      mov sl, r0
0062c110  07 00 a0 e1                                      mov r0, r7
0062c114  14 8b f3 eb                                      bl #0x30ed6c
0062c118  00 10 a0 e1                                      mov r1, r0
0062c11c  0b 00 a0 e1                                      mov r0, fp
0062c120  9f 8a f3 eb                                      bl #0x30eba4
0062c124  08 10 96 e5                                      ldr r1, [r6, #8]
0062c128  00 b0 a0 e1                                      mov fp, r0
0062c12c  07 00 a0 e1                                      mov r0, r7
0062c130  0d 8b f3 eb                                      bl #0x30ed6c
0062c134  00 10 a0 e1                                      mov r1, r0
0062c138  09 00 a0 e1                                      mov r0, sb
0062c13c  98 8a f3 eb                                      bl #0x30eba4
0062c140  01 40 54 e2                                      subs r4, r4, #1
0062c144  00 90 a0 e1                                      mov sb, r0
0062c148  0c 60 86 e2                                      add r6, r6, #0xc
0062c14c  e5 ff ff 1a                                      bne #0x62c0e8
0062c150  18 10 8d e2                                      add r1, sp, #0x18
0062c154  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c158  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c15c  08 90 81 e5                                      str sb, [r1, #8]
0062c160  04 00 9d e5                                      ldr r0, [sp, #4]
0062c164  00 30 90 e5                                      ldr r3, [r0]
0062c168  0f e0 a0 e1                                      mov lr, pc
0062c16c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c170  1c d0 8d e2                                      add sp, sp, #0x1c
0062c174  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c178  00 30 a0 e1                                      mov r3, r0
0062c17c  04 c0 93 e4                                      ldr ip, [r3], #4
0062c180  04 20 90 e5                                      ldr r2, [r0, #4]
0062c184  18 10 8d e2                                      add r1, sp, #0x18
0062c188  04 30 93 e5                                      ldr r3, [r3, #4]
0062c18c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c190  10 20 8d e5                                      str r2, [sp, #0x10]
0062c194  08 30 81 e5                                      str r3, [r1, #8]
0062c198  f0 ff ff ea                                      b #0x62c160

; FUNCTION 0x0062c1b8, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c1b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c1bc  01 00 52 e3                                      cmp r2, #1
0062c1c0  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c1c4  00 a0 a0 e3                                      mov sl, #0
0062c1c8  02 40 a0 e1                                      mov r4, r2
0062c1cc  01 50 a0 e1                                      mov r5, r1
0062c1d0  04 30 8d e5                                      str r3, [sp, #4]
0062c1d4  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c1d8  2b 00 00 0a                                      beq #0x62c28c
0062c1dc  00 00 52 e3                                      cmp r2, #0
0062c1e0  0a b0 a0 01                                      moveq fp, sl
0062c1e4  0a 90 a0 01                                      moveq sb, sl
0062c1e8  1d 00 00 0a                                      beq #0x62c264
0062c1ec  00 60 a0 e1                                      mov r6, r0
0062c1f0  00 80 a0 e3                                      mov r8, #0
0062c1f4  0a b0 a0 e1                                      mov fp, sl
0062c1f8  0a 90 a0 e1                                      mov sb, sl
0062c1fc  08 70 95 e7                                      ldr r7, [r5, r8]
0062c200  00 10 96 e5                                      ldr r1, [r6]
0062c204  04 80 88 e2                                      add r8, r8, #4
0062c208  07 00 a0 e1                                      mov r0, r7
0062c20c  d6 8a f3 eb                                      bl #0x30ed6c
0062c210  00 10 a0 e1                                      mov r1, r0
0062c214  0a 00 a0 e1                                      mov r0, sl
0062c218  61 8a f3 eb                                      bl #0x30eba4
0062c21c  04 10 96 e5                                      ldr r1, [r6, #4]
0062c220  00 a0 a0 e1                                      mov sl, r0
0062c224  07 00 a0 e1                                      mov r0, r7
0062c228  cf 8a f3 eb                                      bl #0x30ed6c
0062c22c  00 10 a0 e1                                      mov r1, r0
0062c230  0b 00 a0 e1                                      mov r0, fp
0062c234  5a 8a f3 eb                                      bl #0x30eba4
0062c238  08 10 96 e5                                      ldr r1, [r6, #8]
0062c23c  00 b0 a0 e1                                      mov fp, r0
0062c240  07 00 a0 e1                                      mov r0, r7
0062c244  c8 8a f3 eb                                      bl #0x30ed6c
0062c248  00 10 a0 e1                                      mov r1, r0
0062c24c  09 00 a0 e1                                      mov r0, sb
0062c250  53 8a f3 eb                                      bl #0x30eba4
0062c254  01 40 54 e2                                      subs r4, r4, #1
0062c258  00 90 a0 e1                                      mov sb, r0
0062c25c  0c 60 86 e2                                      add r6, r6, #0xc
0062c260  e5 ff ff 1a                                      bne #0x62c1fc
0062c264  18 10 8d e2                                      add r1, sp, #0x18
0062c268  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c26c  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c270  08 90 81 e5                                      str sb, [r1, #8]
0062c274  04 00 9d e5                                      ldr r0, [sp, #4]
0062c278  00 30 90 e5                                      ldr r3, [r0]
0062c27c  0f e0 a0 e1                                      mov lr, pc
0062c280  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c284  1c d0 8d e2                                      add sp, sp, #0x1c
0062c288  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c28c  00 30 a0 e1                                      mov r3, r0
0062c290  04 c0 93 e4                                      ldr ip, [r3], #4
0062c294  04 20 90 e5                                      ldr r2, [r0, #4]
0062c298  18 10 8d e2                                      add r1, sp, #0x18
0062c29c  04 30 93 e5                                      ldr r3, [r3, #4]
0062c2a0  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c2a4  10 20 8d e5                                      str r2, [sp, #0x10]
0062c2a8  08 30 81 e5                                      str r3, [r1, #8]
0062c2ac  f0 ff ff ea                                      b #0x62c274
