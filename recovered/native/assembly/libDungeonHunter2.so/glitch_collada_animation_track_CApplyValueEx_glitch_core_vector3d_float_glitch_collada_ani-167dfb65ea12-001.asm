; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623af0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623af0  30 40 2d e9                                      push {r4, r5, lr}
00623af4  14 d0 4d e2                                      sub sp, sp, #0x14
00623af8  04 50 8d e2                                      add r5, sp, #4
00623afc  00 30 a0 e3                                      mov r3, #0
00623b00  02 40 a0 e1                                      mov r4, r2
00623b04  05 20 a0 e1                                      mov r2, r5
00623b08  0c 30 8d e5                                      str r3, [sp, #0xc]
00623b0c  04 30 8d e5                                      str r3, [sp, #4]
00623b10  08 30 8d e5                                      str r3, [sp, #8]
00623b14  08 f1 ff eb                                      bl #0x61ff3c
00623b18  04 00 a0 e1                                      mov r0, r4
00623b1c  05 10 a0 e1                                      mov r1, r5
00623b20  00 30 94 e5                                      ldr r3, [r4]
00623b24  0f e0 a0 e1                                      mov lr, pc
00623b28  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623b2c  14 d0 8d e2                                      add sp, sp, #0x14
00623b30  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00623b48, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623b48  30 40 2d e9                                      push {r4, r5, lr}
00623b4c  1c d0 4d e2                                      sub sp, sp, #0x1c
00623b50  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623b54  00 c0 a0 e3                                      mov ip, #0
00623b58  0c 50 8d e2                                      add r5, sp, #0xc
00623b5c  00 50 8d e5                                      str r5, [sp]
00623b60  14 c0 8d e5                                      str ip, [sp, #0x14]
00623b64  0c c0 8d e5                                      str ip, [sp, #0xc]
00623b68  10 c0 8d e5                                      str ip, [sp, #0x10]
00623b6c  12 f1 ff eb                                      bl #0x61ffbc
00623b70  04 00 a0 e1                                      mov r0, r4
00623b74  05 10 a0 e1                                      mov r1, r5
00623b78  00 30 94 e5                                      ldr r3, [r4]
00623b7c  0f e0 a0 e1                                      mov lr, pc
00623b80  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623b84  1c d0 8d e2                                      add sp, sp, #0x1c
00623b88  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00628d2c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628d2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00628d30  01 00 52 e3                                      cmp r2, #1
00628d34  1c d0 4d e2                                      sub sp, sp, #0x1c
00628d38  00 a0 a0 e3                                      mov sl, #0
00628d3c  02 40 a0 e1                                      mov r4, r2
00628d40  01 50 a0 e1                                      mov r5, r1
00628d44  04 30 8d e5                                      str r3, [sp, #4]
00628d48  14 a0 8d e5                                      str sl, [sp, #0x14]
00628d4c  2b 00 00 0a                                      beq #0x628e00
00628d50  00 00 52 e3                                      cmp r2, #0
00628d54  0a b0 a0 01                                      moveq fp, sl
00628d58  0a 90 a0 01                                      moveq sb, sl
00628d5c  1d 00 00 0a                                      beq #0x628dd8
00628d60  00 60 a0 e1                                      mov r6, r0
00628d64  00 80 a0 e3                                      mov r8, #0
00628d68  0a b0 a0 e1                                      mov fp, sl
00628d6c  0a 90 a0 e1                                      mov sb, sl
00628d70  08 70 95 e7                                      ldr r7, [r5, r8]
00628d74  00 10 96 e5                                      ldr r1, [r6]
00628d78  04 80 88 e2                                      add r8, r8, #4
00628d7c  07 00 a0 e1                                      mov r0, r7
00628d80  f9 97 f3 eb                                      bl #0x30ed6c
00628d84  00 10 a0 e1                                      mov r1, r0
00628d88  0a 00 a0 e1                                      mov r0, sl
00628d8c  84 97 f3 eb                                      bl #0x30eba4
00628d90  04 10 96 e5                                      ldr r1, [r6, #4]
00628d94  00 a0 a0 e1                                      mov sl, r0
00628d98  07 00 a0 e1                                      mov r0, r7
00628d9c  f2 97 f3 eb                                      bl #0x30ed6c
00628da0  00 10 a0 e1                                      mov r1, r0
00628da4  0b 00 a0 e1                                      mov r0, fp
00628da8  7d 97 f3 eb                                      bl #0x30eba4
00628dac  08 10 96 e5                                      ldr r1, [r6, #8]
00628db0  00 b0 a0 e1                                      mov fp, r0
00628db4  07 00 a0 e1                                      mov r0, r7
00628db8  eb 97 f3 eb                                      bl #0x30ed6c
00628dbc  00 10 a0 e1                                      mov r1, r0
00628dc0  09 00 a0 e1                                      mov r0, sb
00628dc4  76 97 f3 eb                                      bl #0x30eba4
00628dc8  01 40 54 e2                                      subs r4, r4, #1
00628dcc  00 90 a0 e1                                      mov sb, r0
00628dd0  0c 60 86 e2                                      add r6, r6, #0xc
00628dd4  e5 ff ff 1a                                      bne #0x628d70
00628dd8  18 10 8d e2                                      add r1, sp, #0x18
00628ddc  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00628de0  10 b0 8d e5                                      str fp, [sp, #0x10]
00628de4  08 90 81 e5                                      str sb, [r1, #8]
00628de8  04 00 9d e5                                      ldr r0, [sp, #4]
00628dec  00 30 90 e5                                      ldr r3, [r0]
00628df0  0f e0 a0 e1                                      mov lr, pc
00628df4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628df8  1c d0 8d e2                                      add sp, sp, #0x1c
00628dfc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00628e00  00 30 a0 e1                                      mov r3, r0
00628e04  04 c0 93 e4                                      ldr ip, [r3], #4
00628e08  04 20 90 e5                                      ldr r2, [r0, #4]
00628e0c  18 10 8d e2                                      add r1, sp, #0x18
00628e10  04 30 93 e5                                      ldr r3, [r3, #4]
00628e14  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00628e18  10 20 8d e5                                      str r2, [sp, #0x10]
00628e1c  08 30 81 e5                                      str r3, [r1, #8]
00628e20  f0 ff ff ea                                      b #0x628de8

; FUNCTION 0x00628e40, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628e40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00628e44  01 00 52 e3                                      cmp r2, #1
00628e48  1c d0 4d e2                                      sub sp, sp, #0x1c
00628e4c  00 a0 a0 e3                                      mov sl, #0
00628e50  02 40 a0 e1                                      mov r4, r2
00628e54  01 50 a0 e1                                      mov r5, r1
00628e58  04 30 8d e5                                      str r3, [sp, #4]
00628e5c  14 a0 8d e5                                      str sl, [sp, #0x14]
00628e60  2b 00 00 0a                                      beq #0x628f14
00628e64  00 00 52 e3                                      cmp r2, #0
00628e68  0a b0 a0 01                                      moveq fp, sl
00628e6c  0a 90 a0 01                                      moveq sb, sl
00628e70  1d 00 00 0a                                      beq #0x628eec
00628e74  00 60 a0 e1                                      mov r6, r0
00628e78  00 80 a0 e3                                      mov r8, #0
00628e7c  0a b0 a0 e1                                      mov fp, sl
00628e80  0a 90 a0 e1                                      mov sb, sl
00628e84  08 70 95 e7                                      ldr r7, [r5, r8]
00628e88  00 10 96 e5                                      ldr r1, [r6]
00628e8c  04 80 88 e2                                      add r8, r8, #4
00628e90  07 00 a0 e1                                      mov r0, r7
00628e94  b4 97 f3 eb                                      bl #0x30ed6c
00628e98  00 10 a0 e1                                      mov r1, r0
00628e9c  0a 00 a0 e1                                      mov r0, sl
00628ea0  3f 97 f3 eb                                      bl #0x30eba4
00628ea4  04 10 96 e5                                      ldr r1, [r6, #4]
00628ea8  00 a0 a0 e1                                      mov sl, r0
00628eac  07 00 a0 e1                                      mov r0, r7
00628eb0  ad 97 f3 eb                                      bl #0x30ed6c
00628eb4  00 10 a0 e1                                      mov r1, r0
00628eb8  0b 00 a0 e1                                      mov r0, fp
00628ebc  38 97 f3 eb                                      bl #0x30eba4
00628ec0  08 10 96 e5                                      ldr r1, [r6, #8]
00628ec4  00 b0 a0 e1                                      mov fp, r0
00628ec8  07 00 a0 e1                                      mov r0, r7
00628ecc  a6 97 f3 eb                                      bl #0x30ed6c
00628ed0  00 10 a0 e1                                      mov r1, r0
00628ed4  09 00 a0 e1                                      mov r0, sb
00628ed8  31 97 f3 eb                                      bl #0x30eba4
00628edc  01 40 54 e2                                      subs r4, r4, #1
00628ee0  00 90 a0 e1                                      mov sb, r0
00628ee4  0c 60 86 e2                                      add r6, r6, #0xc
00628ee8  e5 ff ff 1a                                      bne #0x628e84
00628eec  18 10 8d e2                                      add r1, sp, #0x18
00628ef0  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00628ef4  10 b0 8d e5                                      str fp, [sp, #0x10]
00628ef8  08 90 81 e5                                      str sb, [r1, #8]
00628efc  04 00 9d e5                                      ldr r0, [sp, #4]
00628f00  00 30 90 e5                                      ldr r3, [r0]
00628f04  0f e0 a0 e1                                      mov lr, pc
00628f08  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628f0c  1c d0 8d e2                                      add sp, sp, #0x1c
00628f10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00628f14  00 30 a0 e1                                      mov r3, r0
00628f18  04 c0 93 e4                                      ldr ip, [r3], #4
00628f1c  04 20 90 e5                                      ldr r2, [r0, #4]
00628f20  18 10 8d e2                                      add r1, sp, #0x18
00628f24  04 30 93 e5                                      ldr r3, [r3, #4]
00628f28  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00628f2c  10 20 8d e5                                      str r2, [sp, #0x10]
00628f30  08 30 81 e5                                      str r3, [r1, #8]
00628f34  f0 ff ff ea                                      b #0x628efc
