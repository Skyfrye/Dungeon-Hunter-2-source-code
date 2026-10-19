; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061e620, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061e620  10 40 2d e9                                      push {r4, lr}
0061e624  10 d0 4d e2                                      sub sp, sp, #0x10
0061e628  08 40 8d e2                                      add r4, sp, #8
0061e62c  00 40 8d e5                                      str r4, [sp]
0061e630  ca ff ff eb                                      bl #0x61e560
0061e634  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0061e638  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061e63c  00 20 a0 e3                                      mov r2, #0
0061e640  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061e644  04 30 a0 e1                                      mov r3, r4
0061e648  84 a1 fe eb                                      bl #0x5c6c60
0061e64c  10 d0 8d e2                                      add sp, sp, #0x10
0061e650  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062237c, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062237c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00622380  01 00 52 e3                                      cmp r2, #1
00622384  0c d0 4d e2                                      sub sp, sp, #0xc
00622388  02 40 a0 e1                                      mov r4, r2
0062238c  01 50 a0 e1                                      mov r5, r1
00622390  03 b0 a0 e1                                      mov fp, r3
00622394  00 60 a0 e1                                      mov r6, r0
00622398  23 00 00 0a                                      beq #0x62242c
0062239c  00 00 52 e3                                      cmp r2, #0
006223a0  00 a0 a0 03                                      moveq sl, #0
006223a4  0a 90 a0 01                                      moveq sb, sl
006223a8  15 00 00 0a                                      beq #0x622404
006223ac  00 a0 a0 e3                                      mov sl, #0
006223b0  00 70 a0 e3                                      mov r7, #0
006223b4  0a 90 a0 e1                                      mov sb, sl
006223b8  07 80 95 e7                                      ldr r8, [r5, r7]
006223bc  00 10 96 e5                                      ldr r1, [r6]
006223c0  04 70 87 e2                                      add r7, r7, #4
006223c4  08 00 a0 e1                                      mov r0, r8
006223c8  67 b2 f3 eb                                      bl #0x30ed6c
006223cc  00 10 a0 e1                                      mov r1, r0
006223d0  0a 00 a0 e1                                      mov r0, sl
006223d4  f2 b1 f3 eb                                      bl #0x30eba4
006223d8  04 10 96 e5                                      ldr r1, [r6, #4]
006223dc  00 a0 a0 e1                                      mov sl, r0
006223e0  08 00 a0 e1                                      mov r0, r8
006223e4  60 b2 f3 eb                                      bl #0x30ed6c
006223e8  00 10 a0 e1                                      mov r1, r0
006223ec  09 00 a0 e1                                      mov r0, sb
006223f0  eb b1 f3 eb                                      bl #0x30eba4
006223f4  01 40 54 e2                                      subs r4, r4, #1
006223f8  00 90 a0 e1                                      mov sb, r0
006223fc  08 60 86 e2                                      add r6, r6, #8
00622400  ec ff ff 1a                                      bne #0x6223b8
00622404  00 a0 8d e5                                      str sl, [sp]
00622408  04 90 8d e5                                      str sb, [sp, #4]
0062240c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00622410  0b 00 a0 e1                                      mov r0, fp
00622414  00 20 a0 e3                                      mov r2, #0
00622418  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0062241c  0d 30 a0 e1                                      mov r3, sp
00622420  0e 92 fe eb                                      bl #0x5c6c60
00622424  0c d0 8d e2                                      add sp, sp, #0xc
00622428  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062242c  04 20 90 e5                                      ldr r2, [r0, #4]
00622430  00 30 90 e5                                      ldr r3, [r0]
00622434  04 20 8d e5                                      str r2, [sp, #4]
00622438  00 30 8d e5                                      str r3, [sp]
0062243c  f2 ff ff ea                                      b #0x62240c

; FUNCTION 0x0062245c, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062245c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00622460  01 00 52 e3                                      cmp r2, #1
00622464  0c d0 4d e2                                      sub sp, sp, #0xc
00622468  02 40 a0 e1                                      mov r4, r2
0062246c  01 50 a0 e1                                      mov r5, r1
00622470  03 b0 a0 e1                                      mov fp, r3
00622474  00 60 a0 e1                                      mov r6, r0
00622478  23 00 00 0a                                      beq #0x62250c
0062247c  00 00 52 e3                                      cmp r2, #0
00622480  00 a0 a0 03                                      moveq sl, #0
00622484  0a 90 a0 01                                      moveq sb, sl
00622488  15 00 00 0a                                      beq #0x6224e4
0062248c  00 a0 a0 e3                                      mov sl, #0
00622490  00 70 a0 e3                                      mov r7, #0
00622494  0a 90 a0 e1                                      mov sb, sl
00622498  07 80 95 e7                                      ldr r8, [r5, r7]
0062249c  00 10 96 e5                                      ldr r1, [r6]
006224a0  04 70 87 e2                                      add r7, r7, #4
006224a4  08 00 a0 e1                                      mov r0, r8
006224a8  2f b2 f3 eb                                      bl #0x30ed6c
006224ac  00 10 a0 e1                                      mov r1, r0
006224b0  0a 00 a0 e1                                      mov r0, sl
006224b4  ba b1 f3 eb                                      bl #0x30eba4
006224b8  04 10 96 e5                                      ldr r1, [r6, #4]
006224bc  00 a0 a0 e1                                      mov sl, r0
006224c0  08 00 a0 e1                                      mov r0, r8
006224c4  28 b2 f3 eb                                      bl #0x30ed6c
006224c8  00 10 a0 e1                                      mov r1, r0
006224cc  09 00 a0 e1                                      mov r0, sb
006224d0  b3 b1 f3 eb                                      bl #0x30eba4
006224d4  01 40 54 e2                                      subs r4, r4, #1
006224d8  00 90 a0 e1                                      mov sb, r0
006224dc  08 60 86 e2                                      add r6, r6, #8
006224e0  ec ff ff 1a                                      bne #0x622498
006224e4  00 a0 8d e5                                      str sl, [sp]
006224e8  04 90 8d e5                                      str sb, [sp, #4]
006224ec  30 30 9d e5                                      ldr r3, [sp, #0x30]
006224f0  0b 00 a0 e1                                      mov r0, fp
006224f4  00 20 a0 e3                                      mov r2, #0
006224f8  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006224fc  0d 30 a0 e1                                      mov r3, sp
00622500  d6 91 fe eb                                      bl #0x5c6c60
00622504  0c d0 8d e2                                      add sp, sp, #0xc
00622508  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062250c  04 20 90 e5                                      ldr r2, [r0, #4]
00622510  00 30 90 e5                                      ldr r3, [r0]
00622514  04 20 8d e5                                      str r2, [sp, #4]
00622518  00 30 8d e5                                      str r3, [sp]
0062251c  f2 ff ff ea                                      b #0x6224ec
