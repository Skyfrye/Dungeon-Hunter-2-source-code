; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061ec94, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061ec94  10 40 2d e9                                      push {r4, lr}
0061ec98  18 d0 4d e2                                      sub sp, sp, #0x18
0061ec9c  0c 40 8d e2                                      add r4, sp, #0xc
0061eca0  00 40 8d e5                                      str r4, [sp]
0061eca4  c5 ff ff eb                                      bl #0x61ebc0
0061eca8  24 30 9d e5                                      ldr r3, [sp, #0x24]
0061ecac  20 00 9d e5                                      ldr r0, [sp, #0x20]
0061ecb0  00 20 a0 e3                                      mov r2, #0
0061ecb4  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061ecb8  04 30 a0 e1                                      mov r3, r4
0061ecbc  1c a0 fe eb                                      bl #0x5c6d34
0061ecc0  18 d0 8d e2                                      add sp, sp, #0x18
0061ecc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062798c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062798c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627990  01 00 52 e3                                      cmp r2, #1
00627994  1c d0 4d e2                                      sub sp, sp, #0x1c
00627998  02 40 a0 e1                                      mov r4, r2
0062799c  01 50 a0 e1                                      mov r5, r1
006279a0  04 30 8d e5                                      str r3, [sp, #4]
006279a4  2e 00 00 0a                                      beq #0x627a64
006279a8  00 00 52 e3                                      cmp r2, #0
006279ac  00 a0 a0 03                                      moveq sl, #0
006279b0  0a b0 a0 01                                      moveq fp, sl
006279b4  0a 90 a0 01                                      moveq sb, sl
006279b8  1e 00 00 0a                                      beq #0x627a38
006279bc  00 a0 a0 e3                                      mov sl, #0
006279c0  00 60 a0 e1                                      mov r6, r0
006279c4  00 80 a0 e3                                      mov r8, #0
006279c8  0a b0 a0 e1                                      mov fp, sl
006279cc  0a 90 a0 e1                                      mov sb, sl
006279d0  08 70 95 e7                                      ldr r7, [r5, r8]
006279d4  00 10 96 e5                                      ldr r1, [r6]
006279d8  04 80 88 e2                                      add r8, r8, #4
006279dc  07 00 a0 e1                                      mov r0, r7
006279e0  e1 9c f3 eb                                      bl #0x30ed6c
006279e4  00 10 a0 e1                                      mov r1, r0
006279e8  0a 00 a0 e1                                      mov r0, sl
006279ec  6c 9c f3 eb                                      bl #0x30eba4
006279f0  04 10 96 e5                                      ldr r1, [r6, #4]
006279f4  00 a0 a0 e1                                      mov sl, r0
006279f8  07 00 a0 e1                                      mov r0, r7
006279fc  da 9c f3 eb                                      bl #0x30ed6c
00627a00  00 10 a0 e1                                      mov r1, r0
00627a04  0b 00 a0 e1                                      mov r0, fp
00627a08  65 9c f3 eb                                      bl #0x30eba4
00627a0c  08 10 96 e5                                      ldr r1, [r6, #8]
00627a10  00 b0 a0 e1                                      mov fp, r0
00627a14  07 00 a0 e1                                      mov r0, r7
00627a18  d3 9c f3 eb                                      bl #0x30ed6c
00627a1c  00 10 a0 e1                                      mov r1, r0
00627a20  09 00 a0 e1                                      mov r0, sb
00627a24  5e 9c f3 eb                                      bl #0x30eba4
00627a28  01 40 54 e2                                      subs r4, r4, #1
00627a2c  00 90 a0 e1                                      mov sb, r0
00627a30  0c 60 86 e2                                      add r6, r6, #0xc
00627a34  e5 ff ff 1a                                      bne #0x6279d0
00627a38  0c a0 8d e5                                      str sl, [sp, #0xc]
00627a3c  10 b0 8d e5                                      str fp, [sp, #0x10]
00627a40  14 90 8d e5                                      str sb, [sp, #0x14]
00627a44  40 30 9d e5                                      ldr r3, [sp, #0x40]
00627a48  04 00 9d e5                                      ldr r0, [sp, #4]
00627a4c  00 20 a0 e3                                      mov r2, #0
00627a50  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00627a54  0c 30 8d e2                                      add r3, sp, #0xc
00627a58  b5 7c fe eb                                      bl #0x5c6d34
00627a5c  1c d0 8d e2                                      add sp, sp, #0x1c
00627a60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00627a64  00 30 a0 e1                                      mov r3, r0
00627a68  04 10 93 e4                                      ldr r1, [r3], #4
00627a6c  04 20 90 e5                                      ldr r2, [r0, #4]
00627a70  04 30 93 e5                                      ldr r3, [r3, #4]
00627a74  0c 10 8d e5                                      str r1, [sp, #0xc]
00627a78  10 20 8d e5                                      str r2, [sp, #0x10]
00627a7c  14 30 8d e5                                      str r3, [sp, #0x14]
00627a80  ef ff ff ea                                      b #0x627a44

; FUNCTION 0x00628168, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628168  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062816c  01 00 52 e3                                      cmp r2, #1
00628170  1c d0 4d e2                                      sub sp, sp, #0x1c
00628174  02 40 a0 e1                                      mov r4, r2
00628178  01 50 a0 e1                                      mov r5, r1
0062817c  04 30 8d e5                                      str r3, [sp, #4]
00628180  2e 00 00 0a                                      beq #0x628240
00628184  00 00 52 e3                                      cmp r2, #0
00628188  00 a0 a0 03                                      moveq sl, #0
0062818c  0a b0 a0 01                                      moveq fp, sl
00628190  0a 90 a0 01                                      moveq sb, sl
00628194  1e 00 00 0a                                      beq #0x628214
00628198  00 a0 a0 e3                                      mov sl, #0
0062819c  00 60 a0 e1                                      mov r6, r0
006281a0  00 80 a0 e3                                      mov r8, #0
006281a4  0a b0 a0 e1                                      mov fp, sl
006281a8  0a 90 a0 e1                                      mov sb, sl
006281ac  08 70 95 e7                                      ldr r7, [r5, r8]
006281b0  00 10 96 e5                                      ldr r1, [r6]
006281b4  04 80 88 e2                                      add r8, r8, #4
006281b8  07 00 a0 e1                                      mov r0, r7
006281bc  ea 9a f3 eb                                      bl #0x30ed6c
006281c0  00 10 a0 e1                                      mov r1, r0
006281c4  0a 00 a0 e1                                      mov r0, sl
006281c8  75 9a f3 eb                                      bl #0x30eba4
006281cc  04 10 96 e5                                      ldr r1, [r6, #4]
006281d0  00 a0 a0 e1                                      mov sl, r0
006281d4  07 00 a0 e1                                      mov r0, r7
006281d8  e3 9a f3 eb                                      bl #0x30ed6c
006281dc  00 10 a0 e1                                      mov r1, r0
006281e0  0b 00 a0 e1                                      mov r0, fp
006281e4  6e 9a f3 eb                                      bl #0x30eba4
006281e8  08 10 96 e5                                      ldr r1, [r6, #8]
006281ec  00 b0 a0 e1                                      mov fp, r0
006281f0  07 00 a0 e1                                      mov r0, r7
006281f4  dc 9a f3 eb                                      bl #0x30ed6c
006281f8  00 10 a0 e1                                      mov r1, r0
006281fc  09 00 a0 e1                                      mov r0, sb
00628200  67 9a f3 eb                                      bl #0x30eba4
00628204  01 40 54 e2                                      subs r4, r4, #1
00628208  00 90 a0 e1                                      mov sb, r0
0062820c  0c 60 86 e2                                      add r6, r6, #0xc
00628210  e5 ff ff 1a                                      bne #0x6281ac
00628214  0c a0 8d e5                                      str sl, [sp, #0xc]
00628218  10 b0 8d e5                                      str fp, [sp, #0x10]
0062821c  14 90 8d e5                                      str sb, [sp, #0x14]
00628220  40 30 9d e5                                      ldr r3, [sp, #0x40]
00628224  04 00 9d e5                                      ldr r0, [sp, #4]
00628228  00 20 a0 e3                                      mov r2, #0
0062822c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00628230  0c 30 8d e2                                      add r3, sp, #0xc
00628234  be 7a fe eb                                      bl #0x5c6d34
00628238  1c d0 8d e2                                      add sp, sp, #0x1c
0062823c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00628240  00 30 a0 e1                                      mov r3, r0
00628244  04 10 93 e4                                      ldr r1, [r3], #4
00628248  04 20 90 e5                                      ldr r2, [r0, #4]
0062824c  04 30 93 e5                                      ldr r3, [r3, #4]
00628250  0c 10 8d e5                                      str r1, [sp, #0xc]
00628254  10 20 8d e5                                      str r2, [sp, #0x10]
00628258  14 30 8d e5                                      str r3, [sp, #0x14]
0062825c  ef ff ff ea                                      b #0x628220
