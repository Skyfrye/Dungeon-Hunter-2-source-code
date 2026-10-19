; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061e94c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061e94c  10 40 2d e9                                      push {r4, lr}
0061e950  10 d0 4d e2                                      sub sp, sp, #0x10
0061e954  08 40 8d e2                                      add r4, sp, #8
0061e958  00 40 8d e5                                      str r4, [sp]
0061e95c  ca ff ff eb                                      bl #0x61e88c
0061e960  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0061e964  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061e968  00 20 a0 e3                                      mov r2, #0
0061e96c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061e970  04 30 a0 e1                                      mov r3, r4
0061e974  b9 a0 fe eb                                      bl #0x5c6c60
0061e978  10 d0 8d e2                                      add sp, sp, #0x10
0061e97c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00621ba0, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621ba0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00621ba4  01 00 52 e3                                      cmp r2, #1
00621ba8  0c d0 4d e2                                      sub sp, sp, #0xc
00621bac  02 40 a0 e1                                      mov r4, r2
00621bb0  01 50 a0 e1                                      mov r5, r1
00621bb4  03 b0 a0 e1                                      mov fp, r3
00621bb8  00 60 a0 e1                                      mov r6, r0
00621bbc  23 00 00 0a                                      beq #0x621c50
00621bc0  00 00 52 e3                                      cmp r2, #0
00621bc4  00 a0 a0 03                                      moveq sl, #0
00621bc8  0a 90 a0 01                                      moveq sb, sl
00621bcc  15 00 00 0a                                      beq #0x621c28
00621bd0  00 a0 a0 e3                                      mov sl, #0
00621bd4  00 70 a0 e3                                      mov r7, #0
00621bd8  0a 90 a0 e1                                      mov sb, sl
00621bdc  07 80 95 e7                                      ldr r8, [r5, r7]
00621be0  00 10 96 e5                                      ldr r1, [r6]
00621be4  04 70 87 e2                                      add r7, r7, #4
00621be8  08 00 a0 e1                                      mov r0, r8
00621bec  5e b4 f3 eb                                      bl #0x30ed6c
00621bf0  00 10 a0 e1                                      mov r1, r0
00621bf4  0a 00 a0 e1                                      mov r0, sl
00621bf8  e9 b3 f3 eb                                      bl #0x30eba4
00621bfc  04 10 96 e5                                      ldr r1, [r6, #4]
00621c00  00 a0 a0 e1                                      mov sl, r0
00621c04  08 00 a0 e1                                      mov r0, r8
00621c08  57 b4 f3 eb                                      bl #0x30ed6c
00621c0c  00 10 a0 e1                                      mov r1, r0
00621c10  09 00 a0 e1                                      mov r0, sb
00621c14  e2 b3 f3 eb                                      bl #0x30eba4
00621c18  01 40 54 e2                                      subs r4, r4, #1
00621c1c  00 90 a0 e1                                      mov sb, r0
00621c20  08 60 86 e2                                      add r6, r6, #8
00621c24  ec ff ff 1a                                      bne #0x621bdc
00621c28  00 a0 8d e5                                      str sl, [sp]
00621c2c  04 90 8d e5                                      str sb, [sp, #4]
00621c30  30 30 9d e5                                      ldr r3, [sp, #0x30]
00621c34  0b 00 a0 e1                                      mov r0, fp
00621c38  00 20 a0 e3                                      mov r2, #0
00621c3c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00621c40  0d 30 a0 e1                                      mov r3, sp
00621c44  05 94 fe eb                                      bl #0x5c6c60
00621c48  0c d0 8d e2                                      add sp, sp, #0xc
00621c4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621c50  04 20 90 e5                                      ldr r2, [r0, #4]
00621c54  00 30 90 e5                                      ldr r3, [r0]
00621c58  04 20 8d e5                                      str r2, [sp, #4]
00621c5c  00 30 8d e5                                      str r3, [sp]
00621c60  f2 ff ff ea                                      b #0x621c30

; FUNCTION 0x00621c80, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621c80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00621c84  01 00 52 e3                                      cmp r2, #1
00621c88  0c d0 4d e2                                      sub sp, sp, #0xc
00621c8c  02 40 a0 e1                                      mov r4, r2
00621c90  01 50 a0 e1                                      mov r5, r1
00621c94  03 b0 a0 e1                                      mov fp, r3
00621c98  00 60 a0 e1                                      mov r6, r0
00621c9c  23 00 00 0a                                      beq #0x621d30
00621ca0  00 00 52 e3                                      cmp r2, #0
00621ca4  00 a0 a0 03                                      moveq sl, #0
00621ca8  0a 90 a0 01                                      moveq sb, sl
00621cac  15 00 00 0a                                      beq #0x621d08
00621cb0  00 a0 a0 e3                                      mov sl, #0
00621cb4  00 70 a0 e3                                      mov r7, #0
00621cb8  0a 90 a0 e1                                      mov sb, sl
00621cbc  07 80 95 e7                                      ldr r8, [r5, r7]
00621cc0  00 10 96 e5                                      ldr r1, [r6]
00621cc4  04 70 87 e2                                      add r7, r7, #4
00621cc8  08 00 a0 e1                                      mov r0, r8
00621ccc  26 b4 f3 eb                                      bl #0x30ed6c
00621cd0  00 10 a0 e1                                      mov r1, r0
00621cd4  0a 00 a0 e1                                      mov r0, sl
00621cd8  b1 b3 f3 eb                                      bl #0x30eba4
00621cdc  04 10 96 e5                                      ldr r1, [r6, #4]
00621ce0  00 a0 a0 e1                                      mov sl, r0
00621ce4  08 00 a0 e1                                      mov r0, r8
00621ce8  1f b4 f3 eb                                      bl #0x30ed6c
00621cec  00 10 a0 e1                                      mov r1, r0
00621cf0  09 00 a0 e1                                      mov r0, sb
00621cf4  aa b3 f3 eb                                      bl #0x30eba4
00621cf8  01 40 54 e2                                      subs r4, r4, #1
00621cfc  00 90 a0 e1                                      mov sb, r0
00621d00  08 60 86 e2                                      add r6, r6, #8
00621d04  ec ff ff 1a                                      bne #0x621cbc
00621d08  00 a0 8d e5                                      str sl, [sp]
00621d0c  04 90 8d e5                                      str sb, [sp, #4]
00621d10  30 30 9d e5                                      ldr r3, [sp, #0x30]
00621d14  0b 00 a0 e1                                      mov r0, fp
00621d18  00 20 a0 e3                                      mov r2, #0
00621d1c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00621d20  0d 30 a0 e1                                      mov r3, sp
00621d24  cd 93 fe eb                                      bl #0x5c6c60
00621d28  0c d0 8d e2                                      add sp, sp, #0xc
00621d2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621d30  04 20 90 e5                                      ldr r2, [r0, #4]
00621d34  00 30 90 e5                                      ldr r3, [r0]
00621d38  04 20 8d e5                                      str r2, [sp, #4]
00621d3c  00 30 8d e5                                      str r3, [sp]
00621d40  f2 ff ff ea                                      b #0x621d10
