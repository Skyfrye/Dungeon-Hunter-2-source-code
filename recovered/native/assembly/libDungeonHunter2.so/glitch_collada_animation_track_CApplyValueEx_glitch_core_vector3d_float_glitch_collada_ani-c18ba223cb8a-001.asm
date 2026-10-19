; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00623c70, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623c70  30 40 2d e9                                      push {r4, r5, lr}
00623c74  14 d0 4d e2                                      sub sp, sp, #0x14
00623c78  04 50 8d e2                                      add r5, sp, #4
00623c7c  00 30 a0 e3                                      mov r3, #0
00623c80  02 40 a0 e1                                      mov r4, r2
00623c84  05 20 a0 e1                                      mov r2, r5
00623c88  0c 30 8d e5                                      str r3, [sp, #0xc]
00623c8c  04 30 8d e5                                      str r3, [sp, #4]
00623c90  08 30 8d e5                                      str r3, [sp, #8]
00623c94  9f c9 ff eb                                      bl #0x616318
00623c98  04 00 a0 e1                                      mov r0, r4
00623c9c  05 10 a0 e1                                      mov r1, r5
00623ca0  00 30 94 e5                                      ldr r3, [r4]
00623ca4  0f e0 a0 e1                                      mov lr, pc
00623ca8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623cac  14 d0 8d e2                                      add sp, sp, #0x14
00623cb0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00623cc8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623cc8  30 40 2d e9                                      push {r4, r5, lr}
00623ccc  1c d0 4d e2                                      sub sp, sp, #0x1c
00623cd0  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623cd4  00 c0 a0 e3                                      mov ip, #0
00623cd8  0c 50 8d e2                                      add r5, sp, #0xc
00623cdc  00 50 8d e5                                      str r5, [sp]
00623ce0  14 c0 8d e5                                      str ip, [sp, #0x14]
00623ce4  0c c0 8d e5                                      str ip, [sp, #0xc]
00623ce8  10 c0 8d e5                                      str ip, [sp, #0x10]
00623cec  b4 c9 ff eb                                      bl #0x6163c4
00623cf0  04 00 a0 e1                                      mov r0, r4
00623cf4  05 10 a0 e1                                      mov r1, r5
00623cf8  00 30 94 e5                                      ldr r3, [r4]
00623cfc  0f e0 a0 e1                                      mov lr, pc
00623d00  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623d04  1c d0 8d e2                                      add sp, sp, #0x1c
00623d08  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062d85c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d85c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d860  01 00 52 e3                                      cmp r2, #1
0062d864  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d868  00 a0 a0 e3                                      mov sl, #0
0062d86c  02 40 a0 e1                                      mov r4, r2
0062d870  01 50 a0 e1                                      mov r5, r1
0062d874  04 30 8d e5                                      str r3, [sp, #4]
0062d878  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d87c  2b 00 00 0a                                      beq #0x62d930
0062d880  00 00 52 e3                                      cmp r2, #0
0062d884  0a b0 a0 01                                      moveq fp, sl
0062d888  0a 90 a0 01                                      moveq sb, sl
0062d88c  1d 00 00 0a                                      beq #0x62d908
0062d890  00 60 a0 e1                                      mov r6, r0
0062d894  00 80 a0 e3                                      mov r8, #0
0062d898  0a b0 a0 e1                                      mov fp, sl
0062d89c  0a 90 a0 e1                                      mov sb, sl
0062d8a0  08 70 95 e7                                      ldr r7, [r5, r8]
0062d8a4  00 10 96 e5                                      ldr r1, [r6]
0062d8a8  04 80 88 e2                                      add r8, r8, #4
0062d8ac  07 00 a0 e1                                      mov r0, r7
0062d8b0  2d 85 f3 eb                                      bl #0x30ed6c
0062d8b4  00 10 a0 e1                                      mov r1, r0
0062d8b8  0a 00 a0 e1                                      mov r0, sl
0062d8bc  b8 84 f3 eb                                      bl #0x30eba4
0062d8c0  04 10 96 e5                                      ldr r1, [r6, #4]
0062d8c4  00 a0 a0 e1                                      mov sl, r0
0062d8c8  07 00 a0 e1                                      mov r0, r7
0062d8cc  26 85 f3 eb                                      bl #0x30ed6c
0062d8d0  00 10 a0 e1                                      mov r1, r0
0062d8d4  0b 00 a0 e1                                      mov r0, fp
0062d8d8  b1 84 f3 eb                                      bl #0x30eba4
0062d8dc  08 10 96 e5                                      ldr r1, [r6, #8]
0062d8e0  00 b0 a0 e1                                      mov fp, r0
0062d8e4  07 00 a0 e1                                      mov r0, r7
0062d8e8  1f 85 f3 eb                                      bl #0x30ed6c
0062d8ec  00 10 a0 e1                                      mov r1, r0
0062d8f0  09 00 a0 e1                                      mov r0, sb
0062d8f4  aa 84 f3 eb                                      bl #0x30eba4
0062d8f8  01 40 54 e2                                      subs r4, r4, #1
0062d8fc  00 90 a0 e1                                      mov sb, r0
0062d900  0c 60 86 e2                                      add r6, r6, #0xc
0062d904  e5 ff ff 1a                                      bne #0x62d8a0
0062d908  18 10 8d e2                                      add r1, sp, #0x18
0062d90c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d910  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d914  08 90 81 e5                                      str sb, [r1, #8]
0062d918  04 00 9d e5                                      ldr r0, [sp, #4]
0062d91c  00 30 90 e5                                      ldr r3, [r0]
0062d920  0f e0 a0 e1                                      mov lr, pc
0062d924  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0062d928  1c d0 8d e2                                      add sp, sp, #0x1c
0062d92c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d930  00 30 a0 e1                                      mov r3, r0
0062d934  04 c0 93 e4                                      ldr ip, [r3], #4
0062d938  04 20 90 e5                                      ldr r2, [r0, #4]
0062d93c  18 10 8d e2                                      add r1, sp, #0x18
0062d940  04 30 93 e5                                      ldr r3, [r3, #4]
0062d944  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d948  10 20 8d e5                                      str r2, [sp, #0x10]
0062d94c  08 30 81 e5                                      str r3, [r1, #8]
0062d950  f0 ff ff ea                                      b #0x62d918

; FUNCTION 0x0062d970, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d970  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d974  01 00 52 e3                                      cmp r2, #1
0062d978  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d97c  00 a0 a0 e3                                      mov sl, #0
0062d980  02 40 a0 e1                                      mov r4, r2
0062d984  01 50 a0 e1                                      mov r5, r1
0062d988  04 30 8d e5                                      str r3, [sp, #4]
0062d98c  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d990  2b 00 00 0a                                      beq #0x62da44
0062d994  00 00 52 e3                                      cmp r2, #0
0062d998  0a b0 a0 01                                      moveq fp, sl
0062d99c  0a 90 a0 01                                      moveq sb, sl
0062d9a0  1d 00 00 0a                                      beq #0x62da1c
0062d9a4  00 60 a0 e1                                      mov r6, r0
0062d9a8  00 80 a0 e3                                      mov r8, #0
0062d9ac  0a b0 a0 e1                                      mov fp, sl
0062d9b0  0a 90 a0 e1                                      mov sb, sl
0062d9b4  08 70 95 e7                                      ldr r7, [r5, r8]
0062d9b8  00 10 96 e5                                      ldr r1, [r6]
0062d9bc  04 80 88 e2                                      add r8, r8, #4
0062d9c0  07 00 a0 e1                                      mov r0, r7
0062d9c4  e8 84 f3 eb                                      bl #0x30ed6c
0062d9c8  00 10 a0 e1                                      mov r1, r0
0062d9cc  0a 00 a0 e1                                      mov r0, sl
0062d9d0  73 84 f3 eb                                      bl #0x30eba4
0062d9d4  04 10 96 e5                                      ldr r1, [r6, #4]
0062d9d8  00 a0 a0 e1                                      mov sl, r0
0062d9dc  07 00 a0 e1                                      mov r0, r7
0062d9e0  e1 84 f3 eb                                      bl #0x30ed6c
0062d9e4  00 10 a0 e1                                      mov r1, r0
0062d9e8  0b 00 a0 e1                                      mov r0, fp
0062d9ec  6c 84 f3 eb                                      bl #0x30eba4
0062d9f0  08 10 96 e5                                      ldr r1, [r6, #8]
0062d9f4  00 b0 a0 e1                                      mov fp, r0
0062d9f8  07 00 a0 e1                                      mov r0, r7
0062d9fc  da 84 f3 eb                                      bl #0x30ed6c
0062da00  00 10 a0 e1                                      mov r1, r0
0062da04  09 00 a0 e1                                      mov r0, sb
0062da08  65 84 f3 eb                                      bl #0x30eba4
0062da0c  01 40 54 e2                                      subs r4, r4, #1
0062da10  00 90 a0 e1                                      mov sb, r0
0062da14  0c 60 86 e2                                      add r6, r6, #0xc
0062da18  e5 ff ff 1a                                      bne #0x62d9b4
0062da1c  18 10 8d e2                                      add r1, sp, #0x18
0062da20  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062da24  10 b0 8d e5                                      str fp, [sp, #0x10]
0062da28  08 90 81 e5                                      str sb, [r1, #8]
0062da2c  04 00 9d e5                                      ldr r0, [sp, #4]
0062da30  00 30 90 e5                                      ldr r3, [r0]
0062da34  0f e0 a0 e1                                      mov lr, pc
0062da38  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0062da3c  1c d0 8d e2                                      add sp, sp, #0x1c
0062da40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062da44  00 30 a0 e1                                      mov r3, r0
0062da48  04 c0 93 e4                                      ldr ip, [r3], #4
0062da4c  04 20 90 e5                                      ldr r2, [r0, #4]
0062da50  18 10 8d e2                                      add r1, sp, #0x18
0062da54  04 30 93 e5                                      ldr r3, [r3, #4]
0062da58  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062da5c  10 20 8d e5                                      str r2, [sp, #0x10]
0062da60  08 30 81 e5                                      str r3, [r1, #8]
0062da64  f0 ff ff ea                                      b #0x62da2c
