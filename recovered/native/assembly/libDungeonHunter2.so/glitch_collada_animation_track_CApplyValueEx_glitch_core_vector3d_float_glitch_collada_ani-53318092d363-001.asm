; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623534, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623534  30 40 2d e9                                      push {r4, r5, lr}
00623538  14 d0 4d e2                                      sub sp, sp, #0x14
0062353c  04 50 8d e2                                      add r5, sp, #4
00623540  00 30 a0 e3                                      mov r3, #0
00623544  02 40 a0 e1                                      mov r4, r2
00623548  05 20 a0 e1                                      mov r2, r5
0062354c  0c 30 8d e5                                      str r3, [sp, #0xc]
00623550  04 30 8d e5                                      str r3, [sp, #4]
00623554  08 30 8d e5                                      str r3, [sp, #8]
00623558  7d cd ff eb                                      bl #0x616b54
0062355c  04 00 a0 e1                                      mov r0, r4
00623560  05 10 a0 e1                                      mov r1, r5
00623564  00 30 94 e5                                      ldr r3, [r4]
00623568  0f e0 a0 e1                                      mov lr, pc
0062356c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623570  14 d0 8d e2                                      add sp, sp, #0x14
00623574  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062358c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062358c  30 40 2d e9                                      push {r4, r5, lr}
00623590  1c d0 4d e2                                      sub sp, sp, #0x1c
00623594  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623598  00 c0 a0 e3                                      mov ip, #0
0062359c  0c 50 8d e2                                      add r5, sp, #0xc
006235a0  00 50 8d e5                                      str r5, [sp]
006235a4  14 c0 8d e5                                      str ip, [sp, #0x14]
006235a8  0c c0 8d e5                                      str ip, [sp, #0xc]
006235ac  10 c0 8d e5                                      str ip, [sp, #0x10]
006235b0  92 cd ff eb                                      bl #0x616c00
006235b4  04 00 a0 e1                                      mov r0, r4
006235b8  05 10 a0 e1                                      mov r1, r5
006235bc  00 30 94 e5                                      ldr r3, [r4]
006235c0  0f e0 a0 e1                                      mov lr, pc
006235c4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006235c8  1c d0 8d e2                                      add sp, sp, #0x1c
006235cc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062cb6c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062cb6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062cb70  01 00 52 e3                                      cmp r2, #1
0062cb74  1c d0 4d e2                                      sub sp, sp, #0x1c
0062cb78  00 a0 a0 e3                                      mov sl, #0
0062cb7c  02 40 a0 e1                                      mov r4, r2
0062cb80  01 50 a0 e1                                      mov r5, r1
0062cb84  04 30 8d e5                                      str r3, [sp, #4]
0062cb88  14 a0 8d e5                                      str sl, [sp, #0x14]
0062cb8c  2b 00 00 0a                                      beq #0x62cc40
0062cb90  00 00 52 e3                                      cmp r2, #0
0062cb94  0a b0 a0 01                                      moveq fp, sl
0062cb98  0a 90 a0 01                                      moveq sb, sl
0062cb9c  1d 00 00 0a                                      beq #0x62cc18
0062cba0  00 60 a0 e1                                      mov r6, r0
0062cba4  00 80 a0 e3                                      mov r8, #0
0062cba8  0a b0 a0 e1                                      mov fp, sl
0062cbac  0a 90 a0 e1                                      mov sb, sl
0062cbb0  08 70 95 e7                                      ldr r7, [r5, r8]
0062cbb4  00 10 96 e5                                      ldr r1, [r6]
0062cbb8  04 80 88 e2                                      add r8, r8, #4
0062cbbc  07 00 a0 e1                                      mov r0, r7
0062cbc0  69 88 f3 eb                                      bl #0x30ed6c
0062cbc4  00 10 a0 e1                                      mov r1, r0
0062cbc8  0a 00 a0 e1                                      mov r0, sl
0062cbcc  f4 87 f3 eb                                      bl #0x30eba4
0062cbd0  04 10 96 e5                                      ldr r1, [r6, #4]
0062cbd4  00 a0 a0 e1                                      mov sl, r0
0062cbd8  07 00 a0 e1                                      mov r0, r7
0062cbdc  62 88 f3 eb                                      bl #0x30ed6c
0062cbe0  00 10 a0 e1                                      mov r1, r0
0062cbe4  0b 00 a0 e1                                      mov r0, fp
0062cbe8  ed 87 f3 eb                                      bl #0x30eba4
0062cbec  08 10 96 e5                                      ldr r1, [r6, #8]
0062cbf0  00 b0 a0 e1                                      mov fp, r0
0062cbf4  07 00 a0 e1                                      mov r0, r7
0062cbf8  5b 88 f3 eb                                      bl #0x30ed6c
0062cbfc  00 10 a0 e1                                      mov r1, r0
0062cc00  09 00 a0 e1                                      mov r0, sb
0062cc04  e6 87 f3 eb                                      bl #0x30eba4
0062cc08  01 40 54 e2                                      subs r4, r4, #1
0062cc0c  00 90 a0 e1                                      mov sb, r0
0062cc10  0c 60 86 e2                                      add r6, r6, #0xc
0062cc14  e5 ff ff 1a                                      bne #0x62cbb0
0062cc18  18 10 8d e2                                      add r1, sp, #0x18
0062cc1c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062cc20  10 b0 8d e5                                      str fp, [sp, #0x10]
0062cc24  08 90 81 e5                                      str sb, [r1, #8]
0062cc28  04 00 9d e5                                      ldr r0, [sp, #4]
0062cc2c  00 30 90 e5                                      ldr r3, [r0]
0062cc30  0f e0 a0 e1                                      mov lr, pc
0062cc34  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062cc38  1c d0 8d e2                                      add sp, sp, #0x1c
0062cc3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062cc40  00 30 a0 e1                                      mov r3, r0
0062cc44  04 c0 93 e4                                      ldr ip, [r3], #4
0062cc48  04 20 90 e5                                      ldr r2, [r0, #4]
0062cc4c  18 10 8d e2                                      add r1, sp, #0x18
0062cc50  04 30 93 e5                                      ldr r3, [r3, #4]
0062cc54  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062cc58  10 20 8d e5                                      str r2, [sp, #0x10]
0062cc5c  08 30 81 e5                                      str r3, [r1, #8]
0062cc60  f0 ff ff ea                                      b #0x62cc28

; FUNCTION 0x0062cc80, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062cc80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062cc84  01 00 52 e3                                      cmp r2, #1
0062cc88  1c d0 4d e2                                      sub sp, sp, #0x1c
0062cc8c  00 a0 a0 e3                                      mov sl, #0
0062cc90  02 40 a0 e1                                      mov r4, r2
0062cc94  01 50 a0 e1                                      mov r5, r1
0062cc98  04 30 8d e5                                      str r3, [sp, #4]
0062cc9c  14 a0 8d e5                                      str sl, [sp, #0x14]
0062cca0  2b 00 00 0a                                      beq #0x62cd54
0062cca4  00 00 52 e3                                      cmp r2, #0
0062cca8  0a b0 a0 01                                      moveq fp, sl
0062ccac  0a 90 a0 01                                      moveq sb, sl
0062ccb0  1d 00 00 0a                                      beq #0x62cd2c
0062ccb4  00 60 a0 e1                                      mov r6, r0
0062ccb8  00 80 a0 e3                                      mov r8, #0
0062ccbc  0a b0 a0 e1                                      mov fp, sl
0062ccc0  0a 90 a0 e1                                      mov sb, sl
0062ccc4  08 70 95 e7                                      ldr r7, [r5, r8]
0062ccc8  00 10 96 e5                                      ldr r1, [r6]
0062cccc  04 80 88 e2                                      add r8, r8, #4
0062ccd0  07 00 a0 e1                                      mov r0, r7
0062ccd4  24 88 f3 eb                                      bl #0x30ed6c
0062ccd8  00 10 a0 e1                                      mov r1, r0
0062ccdc  0a 00 a0 e1                                      mov r0, sl
0062cce0  af 87 f3 eb                                      bl #0x30eba4
0062cce4  04 10 96 e5                                      ldr r1, [r6, #4]
0062cce8  00 a0 a0 e1                                      mov sl, r0
0062ccec  07 00 a0 e1                                      mov r0, r7
0062ccf0  1d 88 f3 eb                                      bl #0x30ed6c
0062ccf4  00 10 a0 e1                                      mov r1, r0
0062ccf8  0b 00 a0 e1                                      mov r0, fp
0062ccfc  a8 87 f3 eb                                      bl #0x30eba4
0062cd00  08 10 96 e5                                      ldr r1, [r6, #8]
0062cd04  00 b0 a0 e1                                      mov fp, r0
0062cd08  07 00 a0 e1                                      mov r0, r7
0062cd0c  16 88 f3 eb                                      bl #0x30ed6c
0062cd10  00 10 a0 e1                                      mov r1, r0
0062cd14  09 00 a0 e1                                      mov r0, sb
0062cd18  a1 87 f3 eb                                      bl #0x30eba4
0062cd1c  01 40 54 e2                                      subs r4, r4, #1
0062cd20  00 90 a0 e1                                      mov sb, r0
0062cd24  0c 60 86 e2                                      add r6, r6, #0xc
0062cd28  e5 ff ff 1a                                      bne #0x62ccc4
0062cd2c  18 10 8d e2                                      add r1, sp, #0x18
0062cd30  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062cd34  10 b0 8d e5                                      str fp, [sp, #0x10]
0062cd38  08 90 81 e5                                      str sb, [r1, #8]
0062cd3c  04 00 9d e5                                      ldr r0, [sp, #4]
0062cd40  00 30 90 e5                                      ldr r3, [r0]
0062cd44  0f e0 a0 e1                                      mov lr, pc
0062cd48  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062cd4c  1c d0 8d e2                                      add sp, sp, #0x1c
0062cd50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062cd54  00 30 a0 e1                                      mov r3, r0
0062cd58  04 c0 93 e4                                      ldr ip, [r3], #4
0062cd5c  04 20 90 e5                                      ldr r2, [r0, #4]
0062cd60  18 10 8d e2                                      add r1, sp, #0x18
0062cd64  04 30 93 e5                                      ldr r3, [r3, #4]
0062cd68  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062cd6c  10 20 8d e5                                      str r2, [sp, #0x10]
0062cd70  08 30 81 e5                                      str r3, [r1, #8]
0062cd74  f0 ff ff ea                                      b #0x62cd3c
