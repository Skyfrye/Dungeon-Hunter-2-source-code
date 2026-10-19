; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006233b4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006233b4  30 40 2d e9                                      push {r4, r5, lr}
006233b8  14 d0 4d e2                                      sub sp, sp, #0x14
006233bc  04 50 8d e2                                      add r5, sp, #4
006233c0  00 30 a0 e3                                      mov r3, #0
006233c4  02 40 a0 e1                                      mov r4, r2
006233c8  05 20 a0 e1                                      mov r2, r5
006233cc  0c 30 8d e5                                      str r3, [sp, #0xc]
006233d0  04 30 8d e5                                      str r3, [sp, #4]
006233d4  08 30 8d e5                                      str r3, [sp, #8]
006233d8  1b ea ff eb                                      bl #0x61dc4c
006233dc  04 00 a0 e1                                      mov r0, r4
006233e0  05 10 a0 e1                                      mov r1, r5
006233e4  00 30 94 e5                                      ldr r3, [r4]
006233e8  0f e0 a0 e1                                      mov lr, pc
006233ec  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006233f0  14 d0 8d e2                                      add sp, sp, #0x14
006233f4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062340c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062340c  30 40 2d e9                                      push {r4, r5, lr}
00623410  1c d0 4d e2                                      sub sp, sp, #0x1c
00623414  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623418  00 c0 a0 e3                                      mov ip, #0
0062341c  0c 50 8d e2                                      add r5, sp, #0xc
00623420  00 50 8d e5                                      str r5, [sp]
00623424  14 c0 8d e5                                      str ip, [sp, #0x14]
00623428  0c c0 8d e5                                      str ip, [sp, #0xc]
0062342c  10 c0 8d e5                                      str ip, [sp, #0x10]
00623430  25 ea ff eb                                      bl #0x61dccc
00623434  04 00 a0 e1                                      mov r0, r4
00623438  05 10 a0 e1                                      mov r1, r5
0062343c  00 30 94 e5                                      ldr r3, [r4]
00623440  0f e0 a0 e1                                      mov lr, pc
00623444  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623448  1c d0 8d e2                                      add sp, sp, #0x1c
0062344c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062cfbc, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062cfbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062cfc0  01 00 52 e3                                      cmp r2, #1
0062cfc4  1c d0 4d e2                                      sub sp, sp, #0x1c
0062cfc8  00 a0 a0 e3                                      mov sl, #0
0062cfcc  02 40 a0 e1                                      mov r4, r2
0062cfd0  01 50 a0 e1                                      mov r5, r1
0062cfd4  04 30 8d e5                                      str r3, [sp, #4]
0062cfd8  14 a0 8d e5                                      str sl, [sp, #0x14]
0062cfdc  2b 00 00 0a                                      beq #0x62d090
0062cfe0  00 00 52 e3                                      cmp r2, #0
0062cfe4  0a b0 a0 01                                      moveq fp, sl
0062cfe8  0a 90 a0 01                                      moveq sb, sl
0062cfec  1d 00 00 0a                                      beq #0x62d068
0062cff0  00 60 a0 e1                                      mov r6, r0
0062cff4  00 80 a0 e3                                      mov r8, #0
0062cff8  0a b0 a0 e1                                      mov fp, sl
0062cffc  0a 90 a0 e1                                      mov sb, sl
0062d000  08 70 95 e7                                      ldr r7, [r5, r8]
0062d004  00 10 96 e5                                      ldr r1, [r6]
0062d008  04 80 88 e2                                      add r8, r8, #4
0062d00c  07 00 a0 e1                                      mov r0, r7
0062d010  55 87 f3 eb                                      bl #0x30ed6c
0062d014  00 10 a0 e1                                      mov r1, r0
0062d018  0a 00 a0 e1                                      mov r0, sl
0062d01c  e0 86 f3 eb                                      bl #0x30eba4
0062d020  04 10 96 e5                                      ldr r1, [r6, #4]
0062d024  00 a0 a0 e1                                      mov sl, r0
0062d028  07 00 a0 e1                                      mov r0, r7
0062d02c  4e 87 f3 eb                                      bl #0x30ed6c
0062d030  00 10 a0 e1                                      mov r1, r0
0062d034  0b 00 a0 e1                                      mov r0, fp
0062d038  d9 86 f3 eb                                      bl #0x30eba4
0062d03c  08 10 96 e5                                      ldr r1, [r6, #8]
0062d040  00 b0 a0 e1                                      mov fp, r0
0062d044  07 00 a0 e1                                      mov r0, r7
0062d048  47 87 f3 eb                                      bl #0x30ed6c
0062d04c  00 10 a0 e1                                      mov r1, r0
0062d050  09 00 a0 e1                                      mov r0, sb
0062d054  d2 86 f3 eb                                      bl #0x30eba4
0062d058  01 40 54 e2                                      subs r4, r4, #1
0062d05c  00 90 a0 e1                                      mov sb, r0
0062d060  0c 60 86 e2                                      add r6, r6, #0xc
0062d064  e5 ff ff 1a                                      bne #0x62d000
0062d068  18 10 8d e2                                      add r1, sp, #0x18
0062d06c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d070  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d074  08 90 81 e5                                      str sb, [r1, #8]
0062d078  04 00 9d e5                                      ldr r0, [sp, #4]
0062d07c  00 30 90 e5                                      ldr r3, [r0]
0062d080  0f e0 a0 e1                                      mov lr, pc
0062d084  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d088  1c d0 8d e2                                      add sp, sp, #0x1c
0062d08c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d090  00 30 a0 e1                                      mov r3, r0
0062d094  04 c0 93 e4                                      ldr ip, [r3], #4
0062d098  04 20 90 e5                                      ldr r2, [r0, #4]
0062d09c  18 10 8d e2                                      add r1, sp, #0x18
0062d0a0  04 30 93 e5                                      ldr r3, [r3, #4]
0062d0a4  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d0a8  10 20 8d e5                                      str r2, [sp, #0x10]
0062d0ac  08 30 81 e5                                      str r3, [r1, #8]
0062d0b0  f0 ff ff ea                                      b #0x62d078

; FUNCTION 0x0062d0d0, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d0d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d0d4  01 00 52 e3                                      cmp r2, #1
0062d0d8  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d0dc  00 a0 a0 e3                                      mov sl, #0
0062d0e0  02 40 a0 e1                                      mov r4, r2
0062d0e4  01 50 a0 e1                                      mov r5, r1
0062d0e8  04 30 8d e5                                      str r3, [sp, #4]
0062d0ec  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d0f0  2b 00 00 0a                                      beq #0x62d1a4
0062d0f4  00 00 52 e3                                      cmp r2, #0
0062d0f8  0a b0 a0 01                                      moveq fp, sl
0062d0fc  0a 90 a0 01                                      moveq sb, sl
0062d100  1d 00 00 0a                                      beq #0x62d17c
0062d104  00 60 a0 e1                                      mov r6, r0
0062d108  00 80 a0 e3                                      mov r8, #0
0062d10c  0a b0 a0 e1                                      mov fp, sl
0062d110  0a 90 a0 e1                                      mov sb, sl
0062d114  08 70 95 e7                                      ldr r7, [r5, r8]
0062d118  00 10 96 e5                                      ldr r1, [r6]
0062d11c  04 80 88 e2                                      add r8, r8, #4
0062d120  07 00 a0 e1                                      mov r0, r7
0062d124  10 87 f3 eb                                      bl #0x30ed6c
0062d128  00 10 a0 e1                                      mov r1, r0
0062d12c  0a 00 a0 e1                                      mov r0, sl
0062d130  9b 86 f3 eb                                      bl #0x30eba4
0062d134  04 10 96 e5                                      ldr r1, [r6, #4]
0062d138  00 a0 a0 e1                                      mov sl, r0
0062d13c  07 00 a0 e1                                      mov r0, r7
0062d140  09 87 f3 eb                                      bl #0x30ed6c
0062d144  00 10 a0 e1                                      mov r1, r0
0062d148  0b 00 a0 e1                                      mov r0, fp
0062d14c  94 86 f3 eb                                      bl #0x30eba4
0062d150  08 10 96 e5                                      ldr r1, [r6, #8]
0062d154  00 b0 a0 e1                                      mov fp, r0
0062d158  07 00 a0 e1                                      mov r0, r7
0062d15c  02 87 f3 eb                                      bl #0x30ed6c
0062d160  00 10 a0 e1                                      mov r1, r0
0062d164  09 00 a0 e1                                      mov r0, sb
0062d168  8d 86 f3 eb                                      bl #0x30eba4
0062d16c  01 40 54 e2                                      subs r4, r4, #1
0062d170  00 90 a0 e1                                      mov sb, r0
0062d174  0c 60 86 e2                                      add r6, r6, #0xc
0062d178  e5 ff ff 1a                                      bne #0x62d114
0062d17c  18 10 8d e2                                      add r1, sp, #0x18
0062d180  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d184  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d188  08 90 81 e5                                      str sb, [r1, #8]
0062d18c  04 00 9d e5                                      ldr r0, [sp, #4]
0062d190  00 30 90 e5                                      ldr r3, [r0]
0062d194  0f e0 a0 e1                                      mov lr, pc
0062d198  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d19c  1c d0 8d e2                                      add sp, sp, #0x1c
0062d1a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d1a4  00 30 a0 e1                                      mov r3, r0
0062d1a8  04 c0 93 e4                                      ldr ip, [r3], #4
0062d1ac  04 20 90 e5                                      ldr r2, [r0, #4]
0062d1b0  18 10 8d e2                                      add r1, sp, #0x18
0062d1b4  04 30 93 e5                                      ldr r3, [r3, #4]
0062d1b8  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d1bc  10 20 8d e5                                      str r2, [sp, #0x10]
0062d1c0  08 30 81 e5                                      str r3, [r1, #8]
0062d1c4  f0 ff ff ea                                      b #0x62d18c
