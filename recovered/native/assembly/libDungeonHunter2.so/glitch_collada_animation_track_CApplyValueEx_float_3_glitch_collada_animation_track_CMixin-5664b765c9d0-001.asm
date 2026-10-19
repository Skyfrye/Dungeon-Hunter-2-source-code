; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00619180, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00619180  70 40 2d e9                                      push {r4, r5, r6, lr}
00619184  01 40 a0 e1                                      mov r4, r1
00619188  10 d0 4d e2                                      sub sp, sp, #0x10
0061918c  00 10 a0 e3                                      mov r1, #0
00619190  02 50 a0 e1                                      mov r5, r2
00619194  03 60 a0 e1                                      mov r6, r3
00619198  21 43 01 eb                                      bl #0x669e24
0061919c  0c 30 a0 e3                                      mov r3, #0xc
006191a0  04 20 90 e5                                      ldr r2, [r0, #4]
006191a4  93 04 04 e0                                      mul r4, r3, r4
006191a8  b8 10 d6 e1                                      ldrh r1, [r6, #8]
006191ac  04 30 92 e7                                      ldr r3, [r2, r4]
006191b0  04 40 82 e0                                      add r4, r2, r4
006191b4  05 00 a0 e1                                      mov r0, r5
006191b8  04 30 8d e5                                      str r3, [sp, #4]
006191bc  04 c0 94 e5                                      ldr ip, [r4, #4]
006191c0  00 20 a0 e3                                      mov r2, #0
006191c4  04 30 8d e2                                      add r3, sp, #4
006191c8  08 c0 8d e5                                      str ip, [sp, #8]
006191cc  08 c0 94 e5                                      ldr ip, [r4, #8]
006191d0  0c c0 8d e5                                      str ip, [sp, #0xc]
006191d4  d6 b6 fe eb                                      bl #0x5c6d34
006191d8  10 d0 8d e2                                      add sp, sp, #0x10
006191dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00626a38, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00626a38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626a3c  01 00 52 e3                                      cmp r2, #1
00626a40  1c d0 4d e2                                      sub sp, sp, #0x1c
00626a44  02 40 a0 e1                                      mov r4, r2
00626a48  01 50 a0 e1                                      mov r5, r1
00626a4c  04 30 8d e5                                      str r3, [sp, #4]
00626a50  2e 00 00 0a                                      beq #0x626b10
00626a54  00 00 52 e3                                      cmp r2, #0
00626a58  00 a0 a0 03                                      moveq sl, #0
00626a5c  0a b0 a0 01                                      moveq fp, sl
00626a60  0a 90 a0 01                                      moveq sb, sl
00626a64  1e 00 00 0a                                      beq #0x626ae4
00626a68  00 a0 a0 e3                                      mov sl, #0
00626a6c  00 60 a0 e1                                      mov r6, r0
00626a70  00 80 a0 e3                                      mov r8, #0
00626a74  0a b0 a0 e1                                      mov fp, sl
00626a78  0a 90 a0 e1                                      mov sb, sl
00626a7c  08 70 95 e7                                      ldr r7, [r5, r8]
00626a80  00 10 96 e5                                      ldr r1, [r6]
00626a84  04 80 88 e2                                      add r8, r8, #4
00626a88  07 00 a0 e1                                      mov r0, r7
00626a8c  b6 a0 f3 eb                                      bl #0x30ed6c
00626a90  00 10 a0 e1                                      mov r1, r0
00626a94  0a 00 a0 e1                                      mov r0, sl
00626a98  41 a0 f3 eb                                      bl #0x30eba4
00626a9c  04 10 96 e5                                      ldr r1, [r6, #4]
00626aa0  00 a0 a0 e1                                      mov sl, r0
00626aa4  07 00 a0 e1                                      mov r0, r7
00626aa8  af a0 f3 eb                                      bl #0x30ed6c
00626aac  00 10 a0 e1                                      mov r1, r0
00626ab0  0b 00 a0 e1                                      mov r0, fp
00626ab4  3a a0 f3 eb                                      bl #0x30eba4
00626ab8  08 10 96 e5                                      ldr r1, [r6, #8]
00626abc  00 b0 a0 e1                                      mov fp, r0
00626ac0  07 00 a0 e1                                      mov r0, r7
00626ac4  a8 a0 f3 eb                                      bl #0x30ed6c
00626ac8  00 10 a0 e1                                      mov r1, r0
00626acc  09 00 a0 e1                                      mov r0, sb
00626ad0  33 a0 f3 eb                                      bl #0x30eba4
00626ad4  01 40 54 e2                                      subs r4, r4, #1
00626ad8  00 90 a0 e1                                      mov sb, r0
00626adc  0c 60 86 e2                                      add r6, r6, #0xc
00626ae0  e5 ff ff 1a                                      bne #0x626a7c
00626ae4  0c a0 8d e5                                      str sl, [sp, #0xc]
00626ae8  10 b0 8d e5                                      str fp, [sp, #0x10]
00626aec  14 90 8d e5                                      str sb, [sp, #0x14]
00626af0  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626af4  04 00 9d e5                                      ldr r0, [sp, #4]
00626af8  00 20 a0 e3                                      mov r2, #0
00626afc  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00626b00  0c 30 8d e2                                      add r3, sp, #0xc
00626b04  8a 80 fe eb                                      bl #0x5c6d34
00626b08  1c d0 8d e2                                      add sp, sp, #0x1c
00626b0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626b10  00 30 a0 e1                                      mov r3, r0
00626b14  04 10 93 e4                                      ldr r1, [r3], #4
00626b18  04 20 90 e5                                      ldr r2, [r0, #4]
00626b1c  04 30 93 e5                                      ldr r3, [r3, #4]
00626b20  0c 10 8d e5                                      str r1, [sp, #0xc]
00626b24  10 20 8d e5                                      str r2, [sp, #0x10]
00626b28  14 30 8d e5                                      str r3, [sp, #0x14]
00626b2c  ef ff ff ea                                      b #0x626af0

; FUNCTION 0x00627aa0, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00627aa0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627aa4  01 00 52 e3                                      cmp r2, #1
00627aa8  1c d0 4d e2                                      sub sp, sp, #0x1c
00627aac  02 40 a0 e1                                      mov r4, r2
00627ab0  01 50 a0 e1                                      mov r5, r1
00627ab4  04 30 8d e5                                      str r3, [sp, #4]
00627ab8  2e 00 00 0a                                      beq #0x627b78
00627abc  00 00 52 e3                                      cmp r2, #0
00627ac0  00 a0 a0 03                                      moveq sl, #0
00627ac4  0a b0 a0 01                                      moveq fp, sl
00627ac8  0a 90 a0 01                                      moveq sb, sl
00627acc  1e 00 00 0a                                      beq #0x627b4c
00627ad0  00 a0 a0 e3                                      mov sl, #0
00627ad4  00 60 a0 e1                                      mov r6, r0
00627ad8  00 80 a0 e3                                      mov r8, #0
00627adc  0a b0 a0 e1                                      mov fp, sl
00627ae0  0a 90 a0 e1                                      mov sb, sl
00627ae4  08 70 95 e7                                      ldr r7, [r5, r8]
00627ae8  00 10 96 e5                                      ldr r1, [r6]
00627aec  04 80 88 e2                                      add r8, r8, #4
00627af0  07 00 a0 e1                                      mov r0, r7
00627af4  9c 9c f3 eb                                      bl #0x30ed6c
00627af8  00 10 a0 e1                                      mov r1, r0
00627afc  0a 00 a0 e1                                      mov r0, sl
00627b00  27 9c f3 eb                                      bl #0x30eba4
00627b04  04 10 96 e5                                      ldr r1, [r6, #4]
00627b08  00 a0 a0 e1                                      mov sl, r0
00627b0c  07 00 a0 e1                                      mov r0, r7
00627b10  95 9c f3 eb                                      bl #0x30ed6c
00627b14  00 10 a0 e1                                      mov r1, r0
00627b18  0b 00 a0 e1                                      mov r0, fp
00627b1c  20 9c f3 eb                                      bl #0x30eba4
00627b20  08 10 96 e5                                      ldr r1, [r6, #8]
00627b24  00 b0 a0 e1                                      mov fp, r0
00627b28  07 00 a0 e1                                      mov r0, r7
00627b2c  8e 9c f3 eb                                      bl #0x30ed6c
00627b30  00 10 a0 e1                                      mov r1, r0
00627b34  09 00 a0 e1                                      mov r0, sb
00627b38  19 9c f3 eb                                      bl #0x30eba4
00627b3c  01 40 54 e2                                      subs r4, r4, #1
00627b40  00 90 a0 e1                                      mov sb, r0
00627b44  0c 60 86 e2                                      add r6, r6, #0xc
00627b48  e5 ff ff 1a                                      bne #0x627ae4
00627b4c  0c a0 8d e5                                      str sl, [sp, #0xc]
00627b50  10 b0 8d e5                                      str fp, [sp, #0x10]
00627b54  14 90 8d e5                                      str sb, [sp, #0x14]
00627b58  40 30 9d e5                                      ldr r3, [sp, #0x40]
00627b5c  04 00 9d e5                                      ldr r0, [sp, #4]
00627b60  00 20 a0 e3                                      mov r2, #0
00627b64  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00627b68  0c 30 8d e2                                      add r3, sp, #0xc
00627b6c  70 7c fe eb                                      bl #0x5c6d34
00627b70  1c d0 8d e2                                      add sp, sp, #0x1c
00627b74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00627b78  00 30 a0 e1                                      mov r3, r0
00627b7c  04 10 93 e4                                      ldr r1, [r3], #4
00627b80  04 20 90 e5                                      ldr r2, [r0, #4]
00627b84  04 30 93 e5                                      ldr r3, [r3, #4]
00627b88  0c 10 8d e5                                      str r1, [sp, #0xc]
00627b8c  10 20 8d e5                                      str r2, [sp, #0x10]
00627b90  14 30 8d e5                                      str r3, [sp, #0x14]
00627b94  ef ff ff ea                                      b #0x627b58

; FUNCTION 0x00628af0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628af0  10 40 2d e9                                      push {r4, lr}
00628af4  18 d0 4d e2                                      sub sp, sp, #0x18
00628af8  0c 40 8d e2                                      add r4, sp, #0xc
00628afc  00 40 8d e5                                      str r4, [sp]
00628b00  b3 ff ff eb                                      bl #0x6289d4
00628b04  24 30 9d e5                                      ldr r3, [sp, #0x24]
00628b08  20 00 9d e5                                      ldr r0, [sp, #0x20]
00628b0c  00 20 a0 e3                                      mov r2, #0
00628b10  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00628b14  04 30 a0 e1                                      mov r3, r4
00628b18  85 78 fe eb                                      bl #0x5c6d34
00628b1c  18 d0 8d e2                                      add sp, sp, #0x18
00628b20  10 80 bd e8                                      pop {r4, pc}
