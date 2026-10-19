; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00622e1c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622e1c  30 40 2d e9                                      push {r4, r5, lr}
00622e20  14 d0 4d e2                                      sub sp, sp, #0x14
00622e24  04 50 8d e2                                      add r5, sp, #4
00622e28  00 30 a0 e3                                      mov r3, #0
00622e2c  02 40 a0 e1                                      mov r4, r2
00622e30  05 20 a0 e1                                      mov r2, r5
00622e34  0c 30 8d e5                                      str r3, [sp, #0xc]
00622e38  04 30 8d e5                                      str r3, [sp, #4]
00622e3c  08 30 8d e5                                      str r3, [sp, #8]
00622e40  d7 f2 ff eb                                      bl #0x61f9a4
00622e44  04 00 a0 e1                                      mov r0, r4
00622e48  05 10 a0 e1                                      mov r1, r5
00622e4c  00 30 94 e5                                      ldr r3, [r4]
00622e50  0f e0 a0 e1                                      mov lr, pc
00622e54  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622e58  14 d0 8d e2                                      add sp, sp, #0x14
00622e5c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00622e74, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622e74  30 40 2d e9                                      push {r4, r5, lr}
00622e78  1c d0 4d e2                                      sub sp, sp, #0x1c
00622e7c  28 40 9d e5                                      ldr r4, [sp, #0x28]
00622e80  00 c0 a0 e3                                      mov ip, #0
00622e84  0c 50 8d e2                                      add r5, sp, #0xc
00622e88  00 50 8d e5                                      str r5, [sp]
00622e8c  14 c0 8d e5                                      str ip, [sp, #0x14]
00622e90  0c c0 8d e5                                      str ip, [sp, #0xc]
00622e94  10 c0 8d e5                                      str ip, [sp, #0x10]
00622e98  e1 f2 ff eb                                      bl #0x61fa24
00622e9c  04 00 a0 e1                                      mov r0, r4
00622ea0  05 10 a0 e1                                      mov r1, r5
00622ea4  00 30 94 e5                                      ldr r3, [r4]
00622ea8  0f e0 a0 e1                                      mov lr, pc
00622eac  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622eb0  1c d0 8d e2                                      add sp, sp, #0x1c
00622eb4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00629a1c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00629a1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629a20  01 00 52 e3                                      cmp r2, #1
00629a24  1c d0 4d e2                                      sub sp, sp, #0x1c
00629a28  00 a0 a0 e3                                      mov sl, #0
00629a2c  02 40 a0 e1                                      mov r4, r2
00629a30  01 50 a0 e1                                      mov r5, r1
00629a34  04 30 8d e5                                      str r3, [sp, #4]
00629a38  14 a0 8d e5                                      str sl, [sp, #0x14]
00629a3c  2b 00 00 0a                                      beq #0x629af0
00629a40  00 00 52 e3                                      cmp r2, #0
00629a44  0a b0 a0 01                                      moveq fp, sl
00629a48  0a 90 a0 01                                      moveq sb, sl
00629a4c  1d 00 00 0a                                      beq #0x629ac8
00629a50  00 60 a0 e1                                      mov r6, r0
00629a54  00 80 a0 e3                                      mov r8, #0
00629a58  0a b0 a0 e1                                      mov fp, sl
00629a5c  0a 90 a0 e1                                      mov sb, sl
00629a60  08 70 95 e7                                      ldr r7, [r5, r8]
00629a64  00 10 96 e5                                      ldr r1, [r6]
00629a68  04 80 88 e2                                      add r8, r8, #4
00629a6c  07 00 a0 e1                                      mov r0, r7
00629a70  bd 94 f3 eb                                      bl #0x30ed6c
00629a74  00 10 a0 e1                                      mov r1, r0
00629a78  0a 00 a0 e1                                      mov r0, sl
00629a7c  48 94 f3 eb                                      bl #0x30eba4
00629a80  04 10 96 e5                                      ldr r1, [r6, #4]
00629a84  00 a0 a0 e1                                      mov sl, r0
00629a88  07 00 a0 e1                                      mov r0, r7
00629a8c  b6 94 f3 eb                                      bl #0x30ed6c
00629a90  00 10 a0 e1                                      mov r1, r0
00629a94  0b 00 a0 e1                                      mov r0, fp
00629a98  41 94 f3 eb                                      bl #0x30eba4
00629a9c  08 10 96 e5                                      ldr r1, [r6, #8]
00629aa0  00 b0 a0 e1                                      mov fp, r0
00629aa4  07 00 a0 e1                                      mov r0, r7
00629aa8  af 94 f3 eb                                      bl #0x30ed6c
00629aac  00 10 a0 e1                                      mov r1, r0
00629ab0  09 00 a0 e1                                      mov r0, sb
00629ab4  3a 94 f3 eb                                      bl #0x30eba4
00629ab8  01 40 54 e2                                      subs r4, r4, #1
00629abc  00 90 a0 e1                                      mov sb, r0
00629ac0  0c 60 86 e2                                      add r6, r6, #0xc
00629ac4  e5 ff ff 1a                                      bne #0x629a60
00629ac8  18 10 8d e2                                      add r1, sp, #0x18
00629acc  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629ad0  10 b0 8d e5                                      str fp, [sp, #0x10]
00629ad4  08 90 81 e5                                      str sb, [r1, #8]
00629ad8  04 00 9d e5                                      ldr r0, [sp, #4]
00629adc  00 30 90 e5                                      ldr r3, [r0]
00629ae0  0f e0 a0 e1                                      mov lr, pc
00629ae4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629ae8  1c d0 8d e2                                      add sp, sp, #0x1c
00629aec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629af0  00 30 a0 e1                                      mov r3, r0
00629af4  04 c0 93 e4                                      ldr ip, [r3], #4
00629af8  04 20 90 e5                                      ldr r2, [r0, #4]
00629afc  18 10 8d e2                                      add r1, sp, #0x18
00629b00  04 30 93 e5                                      ldr r3, [r3, #4]
00629b04  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629b08  10 20 8d e5                                      str r2, [sp, #0x10]
00629b0c  08 30 81 e5                                      str r3, [r1, #8]
00629b10  f0 ff ff ea                                      b #0x629ad8

; FUNCTION 0x00629b30, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00629b30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629b34  01 00 52 e3                                      cmp r2, #1
00629b38  1c d0 4d e2                                      sub sp, sp, #0x1c
00629b3c  00 a0 a0 e3                                      mov sl, #0
00629b40  02 40 a0 e1                                      mov r4, r2
00629b44  01 50 a0 e1                                      mov r5, r1
00629b48  04 30 8d e5                                      str r3, [sp, #4]
00629b4c  14 a0 8d e5                                      str sl, [sp, #0x14]
00629b50  2b 00 00 0a                                      beq #0x629c04
00629b54  00 00 52 e3                                      cmp r2, #0
00629b58  0a b0 a0 01                                      moveq fp, sl
00629b5c  0a 90 a0 01                                      moveq sb, sl
00629b60  1d 00 00 0a                                      beq #0x629bdc
00629b64  00 60 a0 e1                                      mov r6, r0
00629b68  00 80 a0 e3                                      mov r8, #0
00629b6c  0a b0 a0 e1                                      mov fp, sl
00629b70  0a 90 a0 e1                                      mov sb, sl
00629b74  08 70 95 e7                                      ldr r7, [r5, r8]
00629b78  00 10 96 e5                                      ldr r1, [r6]
00629b7c  04 80 88 e2                                      add r8, r8, #4
00629b80  07 00 a0 e1                                      mov r0, r7
00629b84  78 94 f3 eb                                      bl #0x30ed6c
00629b88  00 10 a0 e1                                      mov r1, r0
00629b8c  0a 00 a0 e1                                      mov r0, sl
00629b90  03 94 f3 eb                                      bl #0x30eba4
00629b94  04 10 96 e5                                      ldr r1, [r6, #4]
00629b98  00 a0 a0 e1                                      mov sl, r0
00629b9c  07 00 a0 e1                                      mov r0, r7
00629ba0  71 94 f3 eb                                      bl #0x30ed6c
00629ba4  00 10 a0 e1                                      mov r1, r0
00629ba8  0b 00 a0 e1                                      mov r0, fp
00629bac  fc 93 f3 eb                                      bl #0x30eba4
00629bb0  08 10 96 e5                                      ldr r1, [r6, #8]
00629bb4  00 b0 a0 e1                                      mov fp, r0
00629bb8  07 00 a0 e1                                      mov r0, r7
00629bbc  6a 94 f3 eb                                      bl #0x30ed6c
00629bc0  00 10 a0 e1                                      mov r1, r0
00629bc4  09 00 a0 e1                                      mov r0, sb
00629bc8  f5 93 f3 eb                                      bl #0x30eba4
00629bcc  01 40 54 e2                                      subs r4, r4, #1
00629bd0  00 90 a0 e1                                      mov sb, r0
00629bd4  0c 60 86 e2                                      add r6, r6, #0xc
00629bd8  e5 ff ff 1a                                      bne #0x629b74
00629bdc  18 10 8d e2                                      add r1, sp, #0x18
00629be0  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629be4  10 b0 8d e5                                      str fp, [sp, #0x10]
00629be8  08 90 81 e5                                      str sb, [r1, #8]
00629bec  04 00 9d e5                                      ldr r0, [sp, #4]
00629bf0  00 30 90 e5                                      ldr r3, [r0]
00629bf4  0f e0 a0 e1                                      mov lr, pc
00629bf8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629bfc  1c d0 8d e2                                      add sp, sp, #0x1c
00629c00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629c04  00 30 a0 e1                                      mov r3, r0
00629c08  04 c0 93 e4                                      ldr ip, [r3], #4
00629c0c  04 20 90 e5                                      ldr r2, [r0, #4]
00629c10  18 10 8d e2                                      add r1, sp, #0x18
00629c14  04 30 93 e5                                      ldr r3, [r3, #4]
00629c18  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629c1c  10 20 8d e5                                      str r2, [sp, #0x10]
00629c20  08 30 81 e5                                      str r3, [r1, #8]
00629c24  f0 ff ff ea                                      b #0x629bec
