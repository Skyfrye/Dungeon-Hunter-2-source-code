; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006190ec, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006190ec  70 40 2d e9                                      push {r4, r5, r6, lr}
006190f0  01 40 a0 e1                                      mov r4, r1
006190f4  08 d0 4d e2                                      sub sp, sp, #8
006190f8  00 10 a0 e3                                      mov r1, #0
006190fc  02 50 a0 e1                                      mov r5, r2
00619100  03 60 a0 e1                                      mov r6, r3
00619104  46 43 01 eb                                      bl #0x669e24
00619108  04 20 90 e5                                      ldr r2, [r0, #4]
0061910c  b8 10 d6 e1                                      ldrh r1, [r6, #8]
00619110  05 00 a0 e1                                      mov r0, r5
00619114  84 31 92 e7                                      ldr r3, [r2, r4, lsl #3]
00619118  84 41 82 e0                                      add r4, r2, r4, lsl #3
0061911c  00 20 a0 e3                                      mov r2, #0
00619120  00 30 8d e5                                      str r3, [sp]
00619124  04 c0 94 e5                                      ldr ip, [r4, #4]
00619128  0d 30 a0 e1                                      mov r3, sp
0061912c  04 c0 8d e5                                      str ip, [sp, #4]
00619130  ca b6 fe eb                                      bl #0x5c6c60
00619134  08 d0 8d e2                                      add sp, sp, #8
00619138  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00621d60, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621d60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00621d64  01 00 52 e3                                      cmp r2, #1
00621d68  0c d0 4d e2                                      sub sp, sp, #0xc
00621d6c  02 40 a0 e1                                      mov r4, r2
00621d70  01 50 a0 e1                                      mov r5, r1
00621d74  03 b0 a0 e1                                      mov fp, r3
00621d78  00 60 a0 e1                                      mov r6, r0
00621d7c  23 00 00 0a                                      beq #0x621e10
00621d80  00 00 52 e3                                      cmp r2, #0
00621d84  00 a0 a0 03                                      moveq sl, #0
00621d88  0a 90 a0 01                                      moveq sb, sl
00621d8c  15 00 00 0a                                      beq #0x621de8
00621d90  00 a0 a0 e3                                      mov sl, #0
00621d94  00 70 a0 e3                                      mov r7, #0
00621d98  0a 90 a0 e1                                      mov sb, sl
00621d9c  07 80 95 e7                                      ldr r8, [r5, r7]
00621da0  00 10 96 e5                                      ldr r1, [r6]
00621da4  04 70 87 e2                                      add r7, r7, #4
00621da8  08 00 a0 e1                                      mov r0, r8
00621dac  ee b3 f3 eb                                      bl #0x30ed6c
00621db0  00 10 a0 e1                                      mov r1, r0
00621db4  0a 00 a0 e1                                      mov r0, sl
00621db8  79 b3 f3 eb                                      bl #0x30eba4
00621dbc  04 10 96 e5                                      ldr r1, [r6, #4]
00621dc0  00 a0 a0 e1                                      mov sl, r0
00621dc4  08 00 a0 e1                                      mov r0, r8
00621dc8  e7 b3 f3 eb                                      bl #0x30ed6c
00621dcc  00 10 a0 e1                                      mov r1, r0
00621dd0  09 00 a0 e1                                      mov r0, sb
00621dd4  72 b3 f3 eb                                      bl #0x30eba4
00621dd8  01 40 54 e2                                      subs r4, r4, #1
00621ddc  00 90 a0 e1                                      mov sb, r0
00621de0  08 60 86 e2                                      add r6, r6, #8
00621de4  ec ff ff 1a                                      bne #0x621d9c
00621de8  00 a0 8d e5                                      str sl, [sp]
00621dec  04 90 8d e5                                      str sb, [sp, #4]
00621df0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00621df4  0b 00 a0 e1                                      mov r0, fp
00621df8  00 20 a0 e3                                      mov r2, #0
00621dfc  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00621e00  0d 30 a0 e1                                      mov r3, sp
00621e04  95 93 fe eb                                      bl #0x5c6c60
00621e08  0c d0 8d e2                                      add sp, sp, #0xc
00621e0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621e10  04 20 90 e5                                      ldr r2, [r0, #4]
00621e14  00 30 90 e5                                      ldr r3, [r0]
00621e18  04 20 8d e5                                      str r2, [sp, #4]
00621e1c  00 30 8d e5                                      str r3, [sp]
00621e20  f2 ff ff ea                                      b #0x621df0

; FUNCTION 0x00621e40, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621e40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00621e44  01 00 52 e3                                      cmp r2, #1
00621e48  0c d0 4d e2                                      sub sp, sp, #0xc
00621e4c  02 40 a0 e1                                      mov r4, r2
00621e50  01 50 a0 e1                                      mov r5, r1
00621e54  03 b0 a0 e1                                      mov fp, r3
00621e58  00 60 a0 e1                                      mov r6, r0
00621e5c  23 00 00 0a                                      beq #0x621ef0
00621e60  00 00 52 e3                                      cmp r2, #0
00621e64  00 a0 a0 03                                      moveq sl, #0
00621e68  0a 90 a0 01                                      moveq sb, sl
00621e6c  15 00 00 0a                                      beq #0x621ec8
00621e70  00 a0 a0 e3                                      mov sl, #0
00621e74  00 70 a0 e3                                      mov r7, #0
00621e78  0a 90 a0 e1                                      mov sb, sl
00621e7c  07 80 95 e7                                      ldr r8, [r5, r7]
00621e80  00 10 96 e5                                      ldr r1, [r6]
00621e84  04 70 87 e2                                      add r7, r7, #4
00621e88  08 00 a0 e1                                      mov r0, r8
00621e8c  b6 b3 f3 eb                                      bl #0x30ed6c
00621e90  00 10 a0 e1                                      mov r1, r0
00621e94  0a 00 a0 e1                                      mov r0, sl
00621e98  41 b3 f3 eb                                      bl #0x30eba4
00621e9c  04 10 96 e5                                      ldr r1, [r6, #4]
00621ea0  00 a0 a0 e1                                      mov sl, r0
00621ea4  08 00 a0 e1                                      mov r0, r8
00621ea8  af b3 f3 eb                                      bl #0x30ed6c
00621eac  00 10 a0 e1                                      mov r1, r0
00621eb0  09 00 a0 e1                                      mov r0, sb
00621eb4  3a b3 f3 eb                                      bl #0x30eba4
00621eb8  01 40 54 e2                                      subs r4, r4, #1
00621ebc  00 90 a0 e1                                      mov sb, r0
00621ec0  08 60 86 e2                                      add r6, r6, #8
00621ec4  ec ff ff 1a                                      bne #0x621e7c
00621ec8  00 a0 8d e5                                      str sl, [sp]
00621ecc  04 90 8d e5                                      str sb, [sp, #4]
00621ed0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00621ed4  0b 00 a0 e1                                      mov r0, fp
00621ed8  00 20 a0 e3                                      mov r2, #0
00621edc  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00621ee0  0d 30 a0 e1                                      mov r3, sp
00621ee4  5d 93 fe eb                                      bl #0x5c6c60
00621ee8  0c d0 8d e2                                      add sp, sp, #0xc
00621eec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621ef0  04 20 90 e5                                      ldr r2, [r0, #4]
00621ef4  00 30 90 e5                                      ldr r3, [r0]
00621ef8  04 20 8d e5                                      str r2, [sp, #4]
00621efc  00 30 8d e5                                      str r3, [sp]
00621f00  f2 ff ff ea                                      b #0x621ed0

; FUNCTION 0x00622324, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622324  10 40 2d e9                                      push {r4, lr}
00622328  10 d0 4d e2                                      sub sp, sp, #0x10
0062232c  08 40 8d e2                                      add r4, sp, #8
00622330  00 40 8d e5                                      str r4, [sp]
00622334  c6 ff ff eb                                      bl #0x622254
00622338  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0062233c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00622340  00 20 a0 e3                                      mov r2, #0
00622344  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00622348  04 30 a0 e1                                      mov r3, r4
0062234c  43 92 fe eb                                      bl #0x5c6c60
00622350  10 d0 8d e2                                      add sp, sp, #0x10
00622354  10 80 bd e8                                      pop {r4, pc}
