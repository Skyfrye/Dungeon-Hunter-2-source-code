; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060eda4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060eda4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getValueSize() const
; decoder-mode: arm
0060ee4c  10 00 a0 e3                                      mov r0, #0x10
0060ee50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee54, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee54  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f82c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f82c  10 40 2d e9                                      push {r4, lr}
0060f830  00 40 a0 e1                                      mov r4, r0
0060f834  9d fa f3 eb                                      bl #0x30e2b0
0060f838  04 00 a0 e1                                      mov r0, r4
0060f83c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006116d4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getInstance()
; decoder-mode: arm
006116d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006116d8  70 40 9f e5                                      ldr r4, [pc, #0x70]
006116dc  70 30 9f e5                                      ldr r3, [pc, #0x70]
006116e0  04 40 8f e0                                      add r4, pc, r4
006116e4  03 60 94 e7                                      ldr r6, [r4, r3]
006116e8  00 30 96 e5                                      ldr r3, [r6]
006116ec  01 00 13 e3                                      tst r3, #1
006116f0  02 00 00 0a                                      beq #0x611700
006116f4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006116f8  05 00 94 e7                                      ldr r0, [r4, r5]
006116fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611700  06 00 a0 e1                                      mov r0, r6
00611704  18 f4 f3 eb                                      bl #0x30e76c
00611708  00 00 50 e3                                      cmp r0, #0
0061170c  f8 ff ff 0a                                      beq #0x6116f4
00611710  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611714  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611718  06 00 a0 e1                                      mov r0, r6
0061171c  03 30 94 e7                                      ldr r3, [r4, r3]
00611720  05 60 94 e7                                      ldr r6, [r4, r5]
00611724  08 30 83 e2                                      add r3, r3, #8
00611728  00 30 86 e5                                      str r3, [r6]
0061172c  c2 f4 f3 eb                                      bl #0x30ea3c
00611730  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611734  06 00 a0 e1                                      mov r0, r6
00611738  03 10 94 e7                                      ldr r1, [r4, r3]
0061173c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611740  03 20 94 e7                                      ldr r2, [r4, r3]
00611744  ee f2 f3 eb                                      bl #0x30e304
00611748  05 00 94 e7                                      ldr r0, [r4, r5]
0061174c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611750  b0 33 38 00 c8 17 00 00 68 4a 00 00 d4 4a 00 00  .byte 0xb0, 0x33, 0x38, 0x00, 0xc8, 0x17, 0x00, 0x00, 0x68, 0x4a, 0x00, 0x00, 0xd4, 0x4a, 0x00, 0x00
00611760  a8 0d 00 00 90 18 00 00                          .byte 0xa8, 0x0d, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00612128, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00612128  70 40 2d e9                                      push {r4, r5, r6, lr}
0061212c  01 00 a0 e1                                      mov r0, r1
00612130  00 10 a0 e3                                      mov r1, #0
00612134  02 40 a0 e1                                      mov r4, r2
00612138  03 50 a0 e1                                      mov r5, r3
0061213c  38 5f 01 eb                                      bl #0x669e24
00612140  04 20 90 e5                                      ldr r2, [r0, #4]
00612144  05 30 a0 e1                                      mov r3, r5
00612148  04 12 92 e7                                      ldr r1, [r2, r4, lsl #4]
0061214c  04 42 82 e0                                      add r4, r2, r4, lsl #4
00612150  04 20 84 e2                                      add r2, r4, #4
00612154  04 10 83 e4                                      str r1, [r3], #4
00612158  04 10 94 e5                                      ldr r1, [r4, #4]
0061215c  04 10 85 e5                                      str r1, [r5, #4]
00612160  04 10 92 e5                                      ldr r1, [r2, #4]
00612164  04 10 83 e5                                      str r1, [r3, #4]
00612168  08 20 92 e5                                      ldr r2, [r2, #8]
0061216c  08 20 83 e5                                      str r2, [r3, #8]
00612170  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612174, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00612174  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00612178  01 00 a0 e1                                      mov r0, r1
0061217c  00 10 a0 e3                                      mov r1, #0
00612180  03 60 a0 e1                                      mov r6, r3
00612184  02 40 a0 e1                                      mov r4, r2
00612188  18 70 9d e5                                      ldr r7, [sp, #0x18]
0061218c  24 5f 01 eb                                      bl #0x669e24
00612190  04 30 90 e5                                      ldr r3, [r0, #4]
00612194  00 50 a0 e3                                      mov r5, #0
00612198  04 42 83 e0                                      add r4, r3, r4, lsl #4
0061219c  06 62 83 e0                                      add r6, r3, r6, lsl #4
006121a0  05 00 96 e7                                      ldr r0, [r6, r5]
006121a4  05 10 94 e7                                      ldr r1, [r4, r5]
006121a8  7f f0 f3 eb                                      bl #0x30e3ac
006121ac  05 00 87 e7                                      str r0, [r7, r5]
006121b0  04 50 85 e2                                      add r5, r5, #4
006121b4  10 00 55 e3                                      cmp r5, #0x10
006121b8  f8 ff ff 1a                                      bne #0x6121a0
006121bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00612238, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00612238  04 c0 9d e5                                      ldr ip, [sp, #4]
0061223c  01 00 a0 e1                                      mov r0, r1
00612240  02 10 a0 e1                                      mov r1, r2
00612244  03 20 a0 e1                                      mov r2, r3
00612248  00 30 9d e5                                      ldr r3, [sp]
0061224c  00 c0 8d e5                                      str ip, [sp]
00612250  08 c0 9d e5                                      ldr ip, [sp, #8]
00612254  04 c0 8d e5                                      str ip, [sp, #4]
00612258  d8 ff ff ea                                      b #0x6121c0

; FUNCTION 0x00618f18, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618f18  01 00 a0 e1                                      mov r0, r1
00618f1c  10 20 a0 e3                                      mov r2, #0x10
00618f20  00 10 a0 e3                                      mov r1, #0
00618f24  4d d5 f3 ea                                      b #0x30e460

; FUNCTION 0x006191f4, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006191f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006191f8  01 00 53 e3                                      cmp r3, #1
006191fc  24 d0 4d e2                                      sub sp, sp, #0x24
00619200  03 40 a0 e1                                      mov r4, r3
00619204  02 b0 a0 e1                                      mov fp, r2
00619208  2a 00 00 0a                                      beq #0x6192b8
0061920c  00 60 a0 e3                                      mov r6, #0
00619210  00 00 53 e3                                      cmp r3, #0
00619214  00 60 8d e5                                      str r6, [sp]
00619218  04 60 8d e5                                      str r6, [sp, #4]
0061921c  08 60 8d e5                                      str r6, [sp, #8]
00619220  0c 60 8d e5                                      str r6, [sp, #0xc]
00619224  01 80 a0 11                                      movne r8, r1
00619228  00 90 a0 13                                      movne sb, #0
0061922c  0d 70 a0 11                                      movne r7, sp
00619230  2a 00 00 0a                                      beq #0x6192e0
00619234  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00619238  00 50 a0 e3                                      mov r5, #0
0061923c  05 10 98 e7                                      ldr r1, [r8, r5]
00619240  0a 00 a0 e1                                      mov r0, sl
00619244  c8 d6 f3 eb                                      bl #0x30ed6c
00619248  06 10 a0 e1                                      mov r1, r6
0061924c  54 d6 f3 eb                                      bl #0x30eba4
00619250  05 00 87 e7                                      str r0, [r7, r5]
00619254  04 50 85 e2                                      add r5, r5, #4
00619258  10 00 55 e3                                      cmp r5, #0x10
0061925c  05 60 97 17                                      ldrne r6, [r7, r5]
00619260  f5 ff ff 1a                                      bne #0x61923c
00619264  01 90 89 e2                                      add sb, sb, #1
00619268  04 00 59 e1                                      cmp sb, r4
0061926c  10 80 88 e2                                      add r8, r8, #0x10
00619270  00 60 9d 15                                      ldrne r6, [sp]
00619274  ee ff ff 1a                                      bne #0x619234
00619278  00 10 9d e5                                      ldr r1, [sp]
0061927c  04 20 9d e5                                      ldr r2, [sp, #4]
00619280  08 30 9d e5                                      ldr r3, [sp, #8]
00619284  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00619288  10 10 8d e5                                      str r1, [sp, #0x10]
0061928c  14 20 8d e5                                      str r2, [sp, #0x14]
00619290  18 30 8d e5                                      str r3, [sp, #0x18]
00619294  1c 60 8d e5                                      str r6, [sp, #0x1c]
00619298  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0061929c  48 00 9d e5                                      ldr r0, [sp, #0x48]
006192a0  00 20 a0 e3                                      mov r2, #0
006192a4  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006192a8  10 30 8d e2                                      add r3, sp, #0x10
006192ac  2d d5 fe eb                                      bl #0x5ce768
006192b0  24 d0 8d e2                                      add sp, sp, #0x24
006192b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006192b8  01 30 a0 e1                                      mov r3, r1
006192bc  04 00 93 e4                                      ldr r0, [r3], #4
006192c0  04 10 91 e5                                      ldr r1, [r1, #4]
006192c4  08 20 93 e5                                      ldr r2, [r3, #8]
006192c8  04 30 93 e5                                      ldr r3, [r3, #4]
006192cc  10 00 8d e5                                      str r0, [sp, #0x10]
006192d0  14 10 8d e5                                      str r1, [sp, #0x14]
006192d4  18 30 8d e5                                      str r3, [sp, #0x18]
006192d8  1c 20 8d e5                                      str r2, [sp, #0x1c]
006192dc  ed ff ff ea                                      b #0x619298
006192e0  06 30 a0 e1                                      mov r3, r6
006192e4  06 20 a0 e1                                      mov r2, r6
006192e8  06 10 a0 e1                                      mov r1, r6
006192ec  e5 ff ff ea                                      b #0x619288

; FUNCTION 0x0061ca18, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061ca18  00 c0 a0 e3                                      mov ip, #0
0061ca1c  01 30 a0 e1                                      mov r3, r1
0061ca20  b8 10 dc e1                                      ldrh r1, [ip, #8]
0061ca24  02 00 a0 e1                                      mov r0, r2
0061ca28  0c 20 a0 e1                                      mov r2, ip
0061ca2c  4d c7 fe ea                                      b #0x5ce768

; FUNCTION 0x0061ca94, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061ca94  01 00 a0 e1                                      mov r0, r1
0061ca98  02 10 a0 e1                                      mov r1, r2
0061ca9c  03 20 a0 e1                                      mov r2, r3
0061caa0  00 30 9d e5                                      ldr r3, [sp]
0061caa4  e1 ff ff ea                                      b #0x61ca30

; FUNCTION 0x006241e8, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006241e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006241ec  01 00 53 e3                                      cmp r3, #1
006241f0  24 d0 4d e2                                      sub sp, sp, #0x24
006241f4  03 40 a0 e1                                      mov r4, r3
006241f8  02 b0 a0 e1                                      mov fp, r2
006241fc  2a 00 00 0a                                      beq #0x6242ac
00624200  00 60 a0 e3                                      mov r6, #0
00624204  00 00 53 e3                                      cmp r3, #0
00624208  00 60 8d e5                                      str r6, [sp]
0062420c  04 60 8d e5                                      str r6, [sp, #4]
00624210  08 60 8d e5                                      str r6, [sp, #8]
00624214  0c 60 8d e5                                      str r6, [sp, #0xc]
00624218  01 80 a0 11                                      movne r8, r1
0062421c  00 90 a0 13                                      movne sb, #0
00624220  0d 70 a0 11                                      movne r7, sp
00624224  2a 00 00 0a                                      beq #0x6242d4
00624228  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
0062422c  00 50 a0 e3                                      mov r5, #0
00624230  05 10 98 e7                                      ldr r1, [r8, r5]
00624234  0a 00 a0 e1                                      mov r0, sl
00624238  cb aa f3 eb                                      bl #0x30ed6c
0062423c  06 10 a0 e1                                      mov r1, r6
00624240  57 aa f3 eb                                      bl #0x30eba4
00624244  05 00 87 e7                                      str r0, [r7, r5]
00624248  04 50 85 e2                                      add r5, r5, #4
0062424c  10 00 55 e3                                      cmp r5, #0x10
00624250  05 60 97 17                                      ldrne r6, [r7, r5]
00624254  f5 ff ff 1a                                      bne #0x624230
00624258  01 90 89 e2                                      add sb, sb, #1
0062425c  04 00 59 e1                                      cmp sb, r4
00624260  10 80 88 e2                                      add r8, r8, #0x10
00624264  00 60 9d 15                                      ldrne r6, [sp]
00624268  ee ff ff 1a                                      bne #0x624228
0062426c  00 10 9d e5                                      ldr r1, [sp]
00624270  04 20 9d e5                                      ldr r2, [sp, #4]
00624274  08 30 9d e5                                      ldr r3, [sp, #8]
00624278  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0062427c  10 10 8d e5                                      str r1, [sp, #0x10]
00624280  14 20 8d e5                                      str r2, [sp, #0x14]
00624284  18 30 8d e5                                      str r3, [sp, #0x18]
00624288  1c 60 8d e5                                      str r6, [sp, #0x1c]
0062428c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00624290  48 00 9d e5                                      ldr r0, [sp, #0x48]
00624294  00 20 a0 e3                                      mov r2, #0
00624298  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0062429c  10 30 8d e2                                      add r3, sp, #0x10
006242a0  30 a9 fe eb                                      bl #0x5ce768
006242a4  24 d0 8d e2                                      add sp, sp, #0x24
006242a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006242ac  01 30 a0 e1                                      mov r3, r1
006242b0  04 00 93 e4                                      ldr r0, [r3], #4
006242b4  04 10 91 e5                                      ldr r1, [r1, #4]
006242b8  08 20 93 e5                                      ldr r2, [r3, #8]
006242bc  04 30 93 e5                                      ldr r3, [r3, #4]
006242c0  10 00 8d e5                                      str r0, [sp, #0x10]
006242c4  14 10 8d e5                                      str r1, [sp, #0x14]
006242c8  18 30 8d e5                                      str r3, [sp, #0x18]
006242cc  1c 20 8d e5                                      str r2, [sp, #0x1c]
006242d0  ed ff ff ea                                      b #0x62428c
006242d4  06 30 a0 e1                                      mov r3, r6
006242d8  06 20 a0 e1                                      mov r2, r6
006242dc  06 10 a0 e1                                      mov r1, r6
006242e0  e5 ff ff ea                                      b #0x62427c

; FUNCTION 0x006248bc, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006248bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006248c0  01 00 53 e3                                      cmp r3, #1
006248c4  14 d0 4d e2                                      sub sp, sp, #0x14
006248c8  03 40 a0 e1                                      mov r4, r3
006248cc  02 b0 a0 e1                                      mov fp, r2
006248d0  26 00 00 0a                                      beq #0x624970
006248d4  00 60 a0 e3                                      mov r6, #0
006248d8  00 00 53 e3                                      cmp r3, #0
006248dc  00 60 8d e5                                      str r6, [sp]
006248e0  04 60 8d e5                                      str r6, [sp, #4]
006248e4  08 60 8d e5                                      str r6, [sp, #8]
006248e8  0c 60 8d e5                                      str r6, [sp, #0xc]
006248ec  01 80 a0 11                                      movne r8, r1
006248f0  00 90 a0 13                                      movne sb, #0
006248f4  0d 70 a0 11                                      movne r7, sp
006248f8  28 00 00 0a                                      beq #0x6249a0
006248fc  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624900  00 50 a0 e3                                      mov r5, #0
00624904  05 10 98 e7                                      ldr r1, [r8, r5]
00624908  0a 00 a0 e1                                      mov r0, sl
0062490c  16 a9 f3 eb                                      bl #0x30ed6c
00624910  06 10 a0 e1                                      mov r1, r6
00624914  a2 a8 f3 eb                                      bl #0x30eba4
00624918  05 00 87 e7                                      str r0, [r7, r5]
0062491c  04 50 85 e2                                      add r5, r5, #4
00624920  10 00 55 e3                                      cmp r5, #0x10
00624924  05 60 97 17                                      ldrne r6, [r7, r5]
00624928  f5 ff ff 1a                                      bne #0x624904
0062492c  01 90 89 e2                                      add sb, sb, #1
00624930  04 00 59 e1                                      cmp sb, r4
00624934  10 80 88 e2                                      add r8, r8, #0x10
00624938  00 60 9d 15                                      ldrne r6, [sp]
0062493c  ee ff ff 1a                                      bne #0x6248fc
00624940  00 00 9d e5                                      ldr r0, [sp]
00624944  04 10 9d e5                                      ldr r1, [sp, #4]
00624948  08 20 9d e5                                      ldr r2, [sp, #8]
0062494c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624950  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624954  04 00 83 e4                                      str r0, [r3], #4
00624958  38 00 9d e5                                      ldr r0, [sp, #0x38]
0062495c  04 10 80 e5                                      str r1, [r0, #4]
00624960  08 60 83 e5                                      str r6, [r3, #8]
00624964  04 20 83 e5                                      str r2, [r3, #4]
00624968  14 d0 8d e2                                      add sp, sp, #0x14
0062496c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00624970  01 20 a0 e1                                      mov r2, r1
00624974  04 00 92 e4                                      ldr r0, [r2], #4
00624978  38 30 9d e5                                      ldr r3, [sp, #0x38]
0062497c  04 00 83 e4                                      str r0, [r3], #4
00624980  04 10 91 e5                                      ldr r1, [r1, #4]
00624984  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624988  04 10 80 e5                                      str r1, [r0, #4]
0062498c  04 10 92 e5                                      ldr r1, [r2, #4]
00624990  04 10 83 e5                                      str r1, [r3, #4]
00624994  08 20 92 e5                                      ldr r2, [r2, #8]
00624998  08 20 83 e5                                      str r2, [r3, #8]
0062499c  f1 ff ff ea                                      b #0x624968
006249a0  06 20 a0 e1                                      mov r2, r6
006249a4  06 10 a0 e1                                      mov r1, r6
006249a8  06 00 a0 e1                                      mov r0, r6
006249ac  e7 ff ff ea                                      b #0x624950

; FUNCTION 0x00624d80, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00624d80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00624d84  01 00 53 e3                                      cmp r3, #1
00624d88  14 d0 4d e2                                      sub sp, sp, #0x14
00624d8c  03 40 a0 e1                                      mov r4, r3
00624d90  02 b0 a0 e1                                      mov fp, r2
00624d94  26 00 00 0a                                      beq #0x624e34
00624d98  00 60 a0 e3                                      mov r6, #0
00624d9c  00 00 53 e3                                      cmp r3, #0
00624da0  00 60 8d e5                                      str r6, [sp]
00624da4  04 60 8d e5                                      str r6, [sp, #4]
00624da8  08 60 8d e5                                      str r6, [sp, #8]
00624dac  0c 60 8d e5                                      str r6, [sp, #0xc]
00624db0  01 80 a0 11                                      movne r8, r1
00624db4  00 90 a0 13                                      movne sb, #0
00624db8  0d 70 a0 11                                      movne r7, sp
00624dbc  28 00 00 0a                                      beq #0x624e64
00624dc0  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624dc4  00 50 a0 e3                                      mov r5, #0
00624dc8  05 10 98 e7                                      ldr r1, [r8, r5]
00624dcc  0a 00 a0 e1                                      mov r0, sl
00624dd0  e5 a7 f3 eb                                      bl #0x30ed6c
00624dd4  06 10 a0 e1                                      mov r1, r6
00624dd8  71 a7 f3 eb                                      bl #0x30eba4
00624ddc  05 00 87 e7                                      str r0, [r7, r5]
00624de0  04 50 85 e2                                      add r5, r5, #4
00624de4  10 00 55 e3                                      cmp r5, #0x10
00624de8  05 60 97 17                                      ldrne r6, [r7, r5]
00624dec  f5 ff ff 1a                                      bne #0x624dc8
00624df0  01 90 89 e2                                      add sb, sb, #1
00624df4  04 00 59 e1                                      cmp sb, r4
00624df8  10 80 88 e2                                      add r8, r8, #0x10
00624dfc  00 60 9d 15                                      ldrne r6, [sp]
00624e00  ee ff ff 1a                                      bne #0x624dc0
00624e04  00 00 9d e5                                      ldr r0, [sp]
00624e08  04 10 9d e5                                      ldr r1, [sp, #4]
00624e0c  08 20 9d e5                                      ldr r2, [sp, #8]
00624e10  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624e14  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624e18  04 00 83 e4                                      str r0, [r3], #4
00624e1c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624e20  04 10 80 e5                                      str r1, [r0, #4]
00624e24  08 60 83 e5                                      str r6, [r3, #8]
00624e28  04 20 83 e5                                      str r2, [r3, #4]
00624e2c  14 d0 8d e2                                      add sp, sp, #0x14
00624e30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00624e34  01 20 a0 e1                                      mov r2, r1
00624e38  04 00 92 e4                                      ldr r0, [r2], #4
00624e3c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624e40  04 00 83 e4                                      str r0, [r3], #4
00624e44  04 10 91 e5                                      ldr r1, [r1, #4]
00624e48  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624e4c  04 10 80 e5                                      str r1, [r0, #4]
00624e50  04 10 92 e5                                      ldr r1, [r2, #4]
00624e54  04 10 83 e5                                      str r1, [r3, #4]
00624e58  08 20 92 e5                                      ldr r2, [r2, #8]
00624e5c  08 20 83 e5                                      str r2, [r3, #8]
00624e60  f1 ff ff ea                                      b #0x624e2c
00624e64  06 20 a0 e1                                      mov r2, r6
00624e68  06 10 a0 e1                                      mov r1, r6
00624e6c  06 00 a0 e1                                      mov r0, r6
00624e70  e7 ff ff ea                                      b #0x624e14

; FUNCTION 0x00624f40, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00624f40  01 00 a0 e1                                      mov r0, r1
00624f44  04 c0 9d e5                                      ldr ip, [sp, #4]
00624f48  02 10 a0 e1                                      mov r1, r2
00624f4c  03 20 a0 e1                                      mov r2, r3
00624f50  00 30 9d e5                                      ldr r3, [sp]
00624f54  00 c0 8d e5                                      str ip, [sp]
00624f58  c5 ff ff ea                                      b #0x624e74

; FUNCTION 0x00624f90, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00624f90  04 c0 9d e5                                      ldr ip, [sp, #4]
00624f94  01 00 a0 e1                                      mov r0, r1
00624f98  02 10 a0 e1                                      mov r1, r2
00624f9c  03 20 a0 e1                                      mov r2, r3
00624fa0  00 30 9d e5                                      ldr r3, [sp]
00624fa4  00 c0 8d e5                                      str ip, [sp]
00624fa8  08 c0 9d e5                                      ldr ip, [sp, #8]
00624fac  04 c0 8d e5                                      str ip, [sp, #4]
00624fb0  e9 ff ff ea                                      b #0x624f5c
