; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006236b4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006236b4  30 40 2d e9                                      push {r4, r5, lr}
006236b8  14 d0 4d e2                                      sub sp, sp, #0x14
006236bc  04 50 8d e2                                      add r5, sp, #4
006236c0  00 30 a0 e3                                      mov r3, #0
006236c4  02 40 a0 e1                                      mov r4, r2
006236c8  05 20 a0 e1                                      mov r2, r5
006236cc  0c 30 8d e5                                      str r3, [sp, #0xc]
006236d0  04 30 8d e5                                      str r3, [sp, #4]
006236d4  08 30 8d e5                                      str r3, [sp, #8]
006236d8  21 ce ff eb                                      bl #0x616f64
006236dc  04 00 a0 e1                                      mov r0, r4
006236e0  05 10 a0 e1                                      mov r1, r5
006236e4  00 30 94 e5                                      ldr r3, [r4]
006236e8  0f e0 a0 e1                                      mov lr, pc
006236ec  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006236f0  14 d0 8d e2                                      add sp, sp, #0x14
006236f4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062370c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062370c  30 40 2d e9                                      push {r4, r5, lr}
00623710  1c d0 4d e2                                      sub sp, sp, #0x1c
00623714  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623718  00 c0 a0 e3                                      mov ip, #0
0062371c  0c 50 8d e2                                      add r5, sp, #0xc
00623720  00 50 8d e5                                      str r5, [sp]
00623724  14 c0 8d e5                                      str ip, [sp, #0x14]
00623728  0c c0 8d e5                                      str ip, [sp, #0xc]
0062372c  10 c0 8d e5                                      str ip, [sp, #0x10]
00623730  37 ce ff eb                                      bl #0x617014
00623734  04 00 a0 e1                                      mov r0, r4
00623738  05 10 a0 e1                                      mov r1, r5
0062373c  00 30 94 e5                                      ldr r3, [r4]
00623740  0f e0 a0 e1                                      mov lr, pc
00623744  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623748  1c d0 8d e2                                      add sp, sp, #0x1c
0062374c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062c71c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c71c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c720  01 00 52 e3                                      cmp r2, #1
0062c724  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c728  00 a0 a0 e3                                      mov sl, #0
0062c72c  02 40 a0 e1                                      mov r4, r2
0062c730  01 50 a0 e1                                      mov r5, r1
0062c734  04 30 8d e5                                      str r3, [sp, #4]
0062c738  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c73c  2b 00 00 0a                                      beq #0x62c7f0
0062c740  00 00 52 e3                                      cmp r2, #0
0062c744  0a b0 a0 01                                      moveq fp, sl
0062c748  0a 90 a0 01                                      moveq sb, sl
0062c74c  1d 00 00 0a                                      beq #0x62c7c8
0062c750  00 60 a0 e1                                      mov r6, r0
0062c754  00 80 a0 e3                                      mov r8, #0
0062c758  0a b0 a0 e1                                      mov fp, sl
0062c75c  0a 90 a0 e1                                      mov sb, sl
0062c760  08 70 95 e7                                      ldr r7, [r5, r8]
0062c764  00 10 96 e5                                      ldr r1, [r6]
0062c768  04 80 88 e2                                      add r8, r8, #4
0062c76c  07 00 a0 e1                                      mov r0, r7
0062c770  7d 89 f3 eb                                      bl #0x30ed6c
0062c774  00 10 a0 e1                                      mov r1, r0
0062c778  0a 00 a0 e1                                      mov r0, sl
0062c77c  08 89 f3 eb                                      bl #0x30eba4
0062c780  04 10 96 e5                                      ldr r1, [r6, #4]
0062c784  00 a0 a0 e1                                      mov sl, r0
0062c788  07 00 a0 e1                                      mov r0, r7
0062c78c  76 89 f3 eb                                      bl #0x30ed6c
0062c790  00 10 a0 e1                                      mov r1, r0
0062c794  0b 00 a0 e1                                      mov r0, fp
0062c798  01 89 f3 eb                                      bl #0x30eba4
0062c79c  08 10 96 e5                                      ldr r1, [r6, #8]
0062c7a0  00 b0 a0 e1                                      mov fp, r0
0062c7a4  07 00 a0 e1                                      mov r0, r7
0062c7a8  6f 89 f3 eb                                      bl #0x30ed6c
0062c7ac  00 10 a0 e1                                      mov r1, r0
0062c7b0  09 00 a0 e1                                      mov r0, sb
0062c7b4  fa 88 f3 eb                                      bl #0x30eba4
0062c7b8  01 40 54 e2                                      subs r4, r4, #1
0062c7bc  00 90 a0 e1                                      mov sb, r0
0062c7c0  0c 60 86 e2                                      add r6, r6, #0xc
0062c7c4  e5 ff ff 1a                                      bne #0x62c760
0062c7c8  18 10 8d e2                                      add r1, sp, #0x18
0062c7cc  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c7d0  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c7d4  08 90 81 e5                                      str sb, [r1, #8]
0062c7d8  04 00 9d e5                                      ldr r0, [sp, #4]
0062c7dc  00 30 90 e5                                      ldr r3, [r0]
0062c7e0  0f e0 a0 e1                                      mov lr, pc
0062c7e4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c7e8  1c d0 8d e2                                      add sp, sp, #0x1c
0062c7ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c7f0  00 30 a0 e1                                      mov r3, r0
0062c7f4  04 c0 93 e4                                      ldr ip, [r3], #4
0062c7f8  04 20 90 e5                                      ldr r2, [r0, #4]
0062c7fc  18 10 8d e2                                      add r1, sp, #0x18
0062c800  04 30 93 e5                                      ldr r3, [r3, #4]
0062c804  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c808  10 20 8d e5                                      str r2, [sp, #0x10]
0062c80c  08 30 81 e5                                      str r3, [r1, #8]
0062c810  f0 ff ff ea                                      b #0x62c7d8

; FUNCTION 0x0062c830, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062c830  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062c834  01 00 52 e3                                      cmp r2, #1
0062c838  1c d0 4d e2                                      sub sp, sp, #0x1c
0062c83c  00 a0 a0 e3                                      mov sl, #0
0062c840  02 40 a0 e1                                      mov r4, r2
0062c844  01 50 a0 e1                                      mov r5, r1
0062c848  04 30 8d e5                                      str r3, [sp, #4]
0062c84c  14 a0 8d e5                                      str sl, [sp, #0x14]
0062c850  2b 00 00 0a                                      beq #0x62c904
0062c854  00 00 52 e3                                      cmp r2, #0
0062c858  0a b0 a0 01                                      moveq fp, sl
0062c85c  0a 90 a0 01                                      moveq sb, sl
0062c860  1d 00 00 0a                                      beq #0x62c8dc
0062c864  00 60 a0 e1                                      mov r6, r0
0062c868  00 80 a0 e3                                      mov r8, #0
0062c86c  0a b0 a0 e1                                      mov fp, sl
0062c870  0a 90 a0 e1                                      mov sb, sl
0062c874  08 70 95 e7                                      ldr r7, [r5, r8]
0062c878  00 10 96 e5                                      ldr r1, [r6]
0062c87c  04 80 88 e2                                      add r8, r8, #4
0062c880  07 00 a0 e1                                      mov r0, r7
0062c884  38 89 f3 eb                                      bl #0x30ed6c
0062c888  00 10 a0 e1                                      mov r1, r0
0062c88c  0a 00 a0 e1                                      mov r0, sl
0062c890  c3 88 f3 eb                                      bl #0x30eba4
0062c894  04 10 96 e5                                      ldr r1, [r6, #4]
0062c898  00 a0 a0 e1                                      mov sl, r0
0062c89c  07 00 a0 e1                                      mov r0, r7
0062c8a0  31 89 f3 eb                                      bl #0x30ed6c
0062c8a4  00 10 a0 e1                                      mov r1, r0
0062c8a8  0b 00 a0 e1                                      mov r0, fp
0062c8ac  bc 88 f3 eb                                      bl #0x30eba4
0062c8b0  08 10 96 e5                                      ldr r1, [r6, #8]
0062c8b4  00 b0 a0 e1                                      mov fp, r0
0062c8b8  07 00 a0 e1                                      mov r0, r7
0062c8bc  2a 89 f3 eb                                      bl #0x30ed6c
0062c8c0  00 10 a0 e1                                      mov r1, r0
0062c8c4  09 00 a0 e1                                      mov r0, sb
0062c8c8  b5 88 f3 eb                                      bl #0x30eba4
0062c8cc  01 40 54 e2                                      subs r4, r4, #1
0062c8d0  00 90 a0 e1                                      mov sb, r0
0062c8d4  0c 60 86 e2                                      add r6, r6, #0xc
0062c8d8  e5 ff ff 1a                                      bne #0x62c874
0062c8dc  18 10 8d e2                                      add r1, sp, #0x18
0062c8e0  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062c8e4  10 b0 8d e5                                      str fp, [sp, #0x10]
0062c8e8  08 90 81 e5                                      str sb, [r1, #8]
0062c8ec  04 00 9d e5                                      ldr r0, [sp, #4]
0062c8f0  00 30 90 e5                                      ldr r3, [r0]
0062c8f4  0f e0 a0 e1                                      mov lr, pc
0062c8f8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062c8fc  1c d0 8d e2                                      add sp, sp, #0x1c
0062c900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062c904  00 30 a0 e1                                      mov r3, r0
0062c908  04 c0 93 e4                                      ldr ip, [r3], #4
0062c90c  04 20 90 e5                                      ldr r2, [r0, #4]
0062c910  18 10 8d e2                                      add r1, sp, #0x18
0062c914  04 30 93 e5                                      ldr r3, [r3, #4]
0062c918  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062c91c  10 20 8d e5                                      str r2, [sp, #0x10]
0062c920  08 30 81 e5                                      str r3, [r1, #8]
0062c924  f0 ff ff ea                                      b #0x62c8ec
