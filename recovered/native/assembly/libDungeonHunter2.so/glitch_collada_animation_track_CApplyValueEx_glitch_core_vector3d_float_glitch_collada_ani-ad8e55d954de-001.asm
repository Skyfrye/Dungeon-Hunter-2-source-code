; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00622dc4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622dc4  30 40 2d e9                                      push {r4, r5, lr}
00622dc8  14 d0 4d e2                                      sub sp, sp, #0x14
00622dcc  04 50 8d e2                                      add r5, sp, #4
00622dd0  00 30 a0 e3                                      mov r3, #0
00622dd4  02 40 a0 e1                                      mov r4, r2
00622dd8  05 20 a0 e1                                      mov r2, r5
00622ddc  0c 30 8d e5                                      str r3, [sp, #0xc]
00622de0  04 30 8d e5                                      str r3, [sp, #4]
00622de4  08 30 8d e5                                      str r3, [sp, #8]
00622de8  a6 c5 ff eb                                      bl #0x614488
00622dec  04 00 a0 e1                                      mov r0, r4
00622df0  05 10 a0 e1                                      mov r1, r5
00622df4  00 30 94 e5                                      ldr r3, [r4]
00622df8  0f e0 a0 e1                                      mov lr, pc
00622dfc  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622e00  14 d0 8d e2                                      add sp, sp, #0x14
00622e04  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00627efc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00627efc  30 40 2d e9                                      push {r4, r5, lr}
00627f00  1c d0 4d e2                                      sub sp, sp, #0x1c
00627f04  28 40 9d e5                                      ldr r4, [sp, #0x28]
00627f08  00 c0 a0 e3                                      mov ip, #0
00627f0c  0c 50 8d e2                                      add r5, sp, #0xc
00627f10  00 50 8d e5                                      str r5, [sp]
00627f14  14 c0 8d e5                                      str ip, [sp, #0x14]
00627f18  0c c0 8d e5                                      str ip, [sp, #0xc]
00627f1c  10 c0 8d e5                                      str ip, [sp, #0x10]
00627f20  9c ff ff eb                                      bl #0x627d98
00627f24  04 00 a0 e1                                      mov r0, r4
00627f28  05 10 a0 e1                                      mov r1, r5
00627f2c  00 30 94 e5                                      ldr r3, [r4]
00627f30  0f e0 a0 e1                                      mov lr, pc
00627f34  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00627f38  1c d0 8d e2                                      add sp, sp, #0x1c
00627f3c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00629c44, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00629c44  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629c48  01 00 52 e3                                      cmp r2, #1
00629c4c  1c d0 4d e2                                      sub sp, sp, #0x1c
00629c50  00 a0 a0 e3                                      mov sl, #0
00629c54  02 40 a0 e1                                      mov r4, r2
00629c58  01 50 a0 e1                                      mov r5, r1
00629c5c  04 30 8d e5                                      str r3, [sp, #4]
00629c60  14 a0 8d e5                                      str sl, [sp, #0x14]
00629c64  2b 00 00 0a                                      beq #0x629d18
00629c68  00 00 52 e3                                      cmp r2, #0
00629c6c  0a b0 a0 01                                      moveq fp, sl
00629c70  0a 90 a0 01                                      moveq sb, sl
00629c74  1d 00 00 0a                                      beq #0x629cf0
00629c78  00 60 a0 e1                                      mov r6, r0
00629c7c  00 80 a0 e3                                      mov r8, #0
00629c80  0a b0 a0 e1                                      mov fp, sl
00629c84  0a 90 a0 e1                                      mov sb, sl
00629c88  08 70 95 e7                                      ldr r7, [r5, r8]
00629c8c  00 10 96 e5                                      ldr r1, [r6]
00629c90  04 80 88 e2                                      add r8, r8, #4
00629c94  07 00 a0 e1                                      mov r0, r7
00629c98  33 94 f3 eb                                      bl #0x30ed6c
00629c9c  00 10 a0 e1                                      mov r1, r0
00629ca0  0a 00 a0 e1                                      mov r0, sl
00629ca4  be 93 f3 eb                                      bl #0x30eba4
00629ca8  04 10 96 e5                                      ldr r1, [r6, #4]
00629cac  00 a0 a0 e1                                      mov sl, r0
00629cb0  07 00 a0 e1                                      mov r0, r7
00629cb4  2c 94 f3 eb                                      bl #0x30ed6c
00629cb8  00 10 a0 e1                                      mov r1, r0
00629cbc  0b 00 a0 e1                                      mov r0, fp
00629cc0  b7 93 f3 eb                                      bl #0x30eba4
00629cc4  08 10 96 e5                                      ldr r1, [r6, #8]
00629cc8  00 b0 a0 e1                                      mov fp, r0
00629ccc  07 00 a0 e1                                      mov r0, r7
00629cd0  25 94 f3 eb                                      bl #0x30ed6c
00629cd4  00 10 a0 e1                                      mov r1, r0
00629cd8  09 00 a0 e1                                      mov r0, sb
00629cdc  b0 93 f3 eb                                      bl #0x30eba4
00629ce0  01 40 54 e2                                      subs r4, r4, #1
00629ce4  00 90 a0 e1                                      mov sb, r0
00629ce8  0c 60 86 e2                                      add r6, r6, #0xc
00629cec  e5 ff ff 1a                                      bne #0x629c88
00629cf0  18 10 8d e2                                      add r1, sp, #0x18
00629cf4  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629cf8  10 b0 8d e5                                      str fp, [sp, #0x10]
00629cfc  08 90 81 e5                                      str sb, [r1, #8]
00629d00  04 00 9d e5                                      ldr r0, [sp, #4]
00629d04  00 30 90 e5                                      ldr r3, [r0]
00629d08  0f e0 a0 e1                                      mov lr, pc
00629d0c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629d10  1c d0 8d e2                                      add sp, sp, #0x1c
00629d14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629d18  00 30 a0 e1                                      mov r3, r0
00629d1c  04 c0 93 e4                                      ldr ip, [r3], #4
00629d20  04 20 90 e5                                      ldr r2, [r0, #4]
00629d24  18 10 8d e2                                      add r1, sp, #0x18
00629d28  04 30 93 e5                                      ldr r3, [r3, #4]
00629d2c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629d30  10 20 8d e5                                      str r2, [sp, #0x10]
00629d34  08 30 81 e5                                      str r3, [r1, #8]
00629d38  f0 ff ff ea                                      b #0x629d00

; FUNCTION 0x00629d58, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00629d58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629d5c  01 00 52 e3                                      cmp r2, #1
00629d60  1c d0 4d e2                                      sub sp, sp, #0x1c
00629d64  00 a0 a0 e3                                      mov sl, #0
00629d68  02 40 a0 e1                                      mov r4, r2
00629d6c  01 50 a0 e1                                      mov r5, r1
00629d70  04 30 8d e5                                      str r3, [sp, #4]
00629d74  14 a0 8d e5                                      str sl, [sp, #0x14]
00629d78  2b 00 00 0a                                      beq #0x629e2c
00629d7c  00 00 52 e3                                      cmp r2, #0
00629d80  0a b0 a0 01                                      moveq fp, sl
00629d84  0a 90 a0 01                                      moveq sb, sl
00629d88  1d 00 00 0a                                      beq #0x629e04
00629d8c  00 60 a0 e1                                      mov r6, r0
00629d90  00 80 a0 e3                                      mov r8, #0
00629d94  0a b0 a0 e1                                      mov fp, sl
00629d98  0a 90 a0 e1                                      mov sb, sl
00629d9c  08 70 95 e7                                      ldr r7, [r5, r8]
00629da0  00 10 96 e5                                      ldr r1, [r6]
00629da4  04 80 88 e2                                      add r8, r8, #4
00629da8  07 00 a0 e1                                      mov r0, r7
00629dac  ee 93 f3 eb                                      bl #0x30ed6c
00629db0  00 10 a0 e1                                      mov r1, r0
00629db4  0a 00 a0 e1                                      mov r0, sl
00629db8  79 93 f3 eb                                      bl #0x30eba4
00629dbc  04 10 96 e5                                      ldr r1, [r6, #4]
00629dc0  00 a0 a0 e1                                      mov sl, r0
00629dc4  07 00 a0 e1                                      mov r0, r7
00629dc8  e7 93 f3 eb                                      bl #0x30ed6c
00629dcc  00 10 a0 e1                                      mov r1, r0
00629dd0  0b 00 a0 e1                                      mov r0, fp
00629dd4  72 93 f3 eb                                      bl #0x30eba4
00629dd8  08 10 96 e5                                      ldr r1, [r6, #8]
00629ddc  00 b0 a0 e1                                      mov fp, r0
00629de0  07 00 a0 e1                                      mov r0, r7
00629de4  e0 93 f3 eb                                      bl #0x30ed6c
00629de8  00 10 a0 e1                                      mov r1, r0
00629dec  09 00 a0 e1                                      mov r0, sb
00629df0  6b 93 f3 eb                                      bl #0x30eba4
00629df4  01 40 54 e2                                      subs r4, r4, #1
00629df8  00 90 a0 e1                                      mov sb, r0
00629dfc  0c 60 86 e2                                      add r6, r6, #0xc
00629e00  e5 ff ff 1a                                      bne #0x629d9c
00629e04  18 10 8d e2                                      add r1, sp, #0x18
00629e08  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629e0c  10 b0 8d e5                                      str fp, [sp, #0x10]
00629e10  08 90 81 e5                                      str sb, [r1, #8]
00629e14  04 00 9d e5                                      ldr r0, [sp, #4]
00629e18  00 30 90 e5                                      ldr r3, [r0]
00629e1c  0f e0 a0 e1                                      mov lr, pc
00629e20  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629e24  1c d0 8d e2                                      add sp, sp, #0x1c
00629e28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629e2c  00 30 a0 e1                                      mov r3, r0
00629e30  04 c0 93 e4                                      ldr ip, [r3], #4
00629e34  04 20 90 e5                                      ldr r2, [r0, #4]
00629e38  18 10 8d e2                                      add r1, sp, #0x18
00629e3c  04 30 93 e5                                      ldr r3, [r3, #4]
00629e40  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629e44  10 20 8d e5                                      str r2, [sp, #0x10]
00629e48  08 30 81 e5                                      str r3, [r1, #8]
00629e4c  f0 ff ff ea                                      b #0x629e14
