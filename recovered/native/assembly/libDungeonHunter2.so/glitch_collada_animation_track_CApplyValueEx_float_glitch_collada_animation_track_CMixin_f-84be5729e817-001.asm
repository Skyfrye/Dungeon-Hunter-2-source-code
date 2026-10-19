; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00618ffc, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE17applyAddedValueExEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00618ffc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00619000  01 00 52 e3                                      cmp r2, #1
00619004  0c d0 4d e2                                      sub sp, sp, #0xc
00619008  02 40 a0 e1                                      mov r4, r2
0061900c  00 50 a0 e1                                      mov r5, r0
00619010  01 60 a0 e1                                      mov r6, r1
00619014  03 a0 a0 e1                                      mov sl, r3
00619018  17 00 00 0a                                      beq #0x61907c
0061901c  00 00 52 e3                                      cmp r2, #0
00619020  00 80 a0 03                                      moveq r8, #0
00619024  0b 00 00 0a                                      beq #0x619058
00619028  00 80 a0 e3                                      mov r8, #0
0061902c  00 70 a0 e3                                      mov r7, #0
00619030  07 10 96 e7                                      ldr r1, [r6, r7]
00619034  07 00 95 e7                                      ldr r0, [r5, r7]
00619038  4b d7 f3 eb                                      bl #0x30ed6c
0061903c  00 10 a0 e1                                      mov r1, r0
00619040  08 00 a0 e1                                      mov r0, r8
00619044  d6 d6 f3 eb                                      bl #0x30eba4
00619048  01 40 54 e2                                      subs r4, r4, #1
0061904c  00 80 a0 e1                                      mov r8, r0
00619050  04 70 87 e2                                      add r7, r7, #4
00619054  f5 ff ff 1a                                      bne #0x619030
00619058  04 80 8d e5                                      str r8, [sp, #4]
0061905c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00619060  0a 00 a0 e1                                      mov r0, sl
00619064  00 20 a0 e3                                      mov r2, #0
00619068  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061906c  04 30 8d e2                                      add r3, sp, #4
00619070  c5 b6 fe eb                                      bl #0x5c6b8c
00619074  0c d0 8d e2                                      add sp, sp, #0xc
00619078  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0061907c  00 30 90 e5                                      ldr r3, [r0]
00619080  04 30 8d e5                                      str r3, [sp, #4]
00619084  f4 ff ff ea                                      b #0x61905c

; FUNCTION 0x0061d3d0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061d3d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0061d3d4  01 40 a0 e1                                      mov r4, r1
0061d3d8  08 d0 4d e2                                      sub sp, sp, #8
0061d3dc  00 10 a0 e3                                      mov r1, #0
0061d3e0  02 50 a0 e1                                      mov r5, r2
0061d3e4  03 60 a0 e1                                      mov r6, r3
0061d3e8  8d 32 01 eb                                      bl #0x669e24
0061d3ec  04 20 90 e5                                      ldr r2, [r0, #4]
0061d3f0  08 30 8d e2                                      add r3, sp, #8
0061d3f4  b8 10 d6 e1                                      ldrh r1, [r6, #8]
0061d3f8  04 c1 92 e7                                      ldr ip, [r2, r4, lsl #2]
0061d3fc  05 00 a0 e1                                      mov r0, r5
0061d400  00 20 a0 e3                                      mov r2, #0
0061d404  04 c0 23 e5                                      str ip, [r3, #-4]!
0061d408  df a5 fe eb                                      bl #0x5c6b8c
0061d40c  08 d0 8d e2                                      add sp, sp, #8
0061d410  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0062008c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE19applyBlendedValueExEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062008c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00620090  01 00 52 e3                                      cmp r2, #1
00620094  0c d0 4d e2                                      sub sp, sp, #0xc
00620098  02 40 a0 e1                                      mov r4, r2
0062009c  00 50 a0 e1                                      mov r5, r0
006200a0  01 60 a0 e1                                      mov r6, r1
006200a4  03 a0 a0 e1                                      mov sl, r3
006200a8  17 00 00 0a                                      beq #0x62010c
006200ac  00 00 52 e3                                      cmp r2, #0
006200b0  00 80 a0 03                                      moveq r8, #0
006200b4  0b 00 00 0a                                      beq #0x6200e8
006200b8  00 80 a0 e3                                      mov r8, #0
006200bc  00 70 a0 e3                                      mov r7, #0
006200c0  07 10 96 e7                                      ldr r1, [r6, r7]
006200c4  07 00 95 e7                                      ldr r0, [r5, r7]
006200c8  27 bb f3 eb                                      bl #0x30ed6c
006200cc  00 10 a0 e1                                      mov r1, r0
006200d0  08 00 a0 e1                                      mov r0, r8
006200d4  b2 ba f3 eb                                      bl #0x30eba4
006200d8  01 40 54 e2                                      subs r4, r4, #1
006200dc  00 80 a0 e1                                      mov r8, r0
006200e0  04 70 87 e2                                      add r7, r7, #4
006200e4  f5 ff ff 1a                                      bne #0x6200c0
006200e8  04 80 8d e5                                      str r8, [sp, #4]
006200ec  28 30 9d e5                                      ldr r3, [sp, #0x28]
006200f0  0a 00 a0 e1                                      mov r0, sl
006200f4  00 20 a0 e3                                      mov r2, #0
006200f8  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006200fc  04 30 8d e2                                      add r3, sp, #4
00620100  a1 9a fe eb                                      bl #0x5c6b8c
00620104  0c d0 8d e2                                      add sp, sp, #0xc
00620108  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0062010c  00 30 90 e5                                      ldr r3, [r0]
00620110  04 30 8d e5                                      str r3, [sp, #4]
00620114  f4 ff ff ea                                      b #0x6200ec

; FUNCTION 0x006202a0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006202a0  10 40 2d e9                                      push {r4, lr}
006202a4  10 d0 4d e2                                      sub sp, sp, #0x10
006202a8  0c 40 8d e2                                      add r4, sp, #0xc
006202ac  00 40 8d e5                                      str r4, [sp]
006202b0  d5 ff ff eb                                      bl #0x62020c
006202b4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006202b8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006202bc  00 20 a0 e3                                      mov r2, #0
006202c0  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006202c4  04 30 a0 e1                                      mov r3, r4
006202c8  2f 9a fe eb                                      bl #0x5c6b8c
006202cc  10 d0 8d e2                                      add sp, sp, #0x10
006202d0  10 80 bd e8                                      pop {r4, pc}
