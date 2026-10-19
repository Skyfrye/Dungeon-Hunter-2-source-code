; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed94, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed94  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getValueSize() const
; decoder-mode: arm
0060ee7c  08 00 a0 e3                                      mov r0, #8
0060ee80  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee84, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f148, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0060f148  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060f14c  01 00 53 e3                                      cmp r3, #1
0060f150  03 40 a0 e1                                      mov r4, r3
0060f154  02 90 a0 e1                                      mov sb, r2
0060f158  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0060f15c  01 50 a0 e1                                      mov r5, r1
0060f160  1c 00 00 0a                                      beq #0x60f1d8
0060f164  00 00 53 e3                                      cmp r3, #0
0060f168  00 80 a0 03                                      moveq r8, #0
0060f16c  08 a0 a0 01                                      moveq sl, r8
0060f170  15 00 00 0a                                      beq #0x60f1cc
0060f174  00 80 a0 e3                                      mov r8, #0
0060f178  00 60 a0 e3                                      mov r6, #0
0060f17c  08 a0 a0 e1                                      mov sl, r8
0060f180  06 70 99 e7                                      ldr r7, [sb, r6]
0060f184  00 10 95 e5                                      ldr r1, [r5]
0060f188  04 60 86 e2                                      add r6, r6, #4
0060f18c  07 00 a0 e1                                      mov r0, r7
0060f190  f5 fe f3 eb                                      bl #0x30ed6c
0060f194  00 10 a0 e1                                      mov r1, r0
0060f198  08 00 a0 e1                                      mov r0, r8
0060f19c  80 fe f3 eb                                      bl #0x30eba4
0060f1a0  04 10 95 e5                                      ldr r1, [r5, #4]
0060f1a4  00 80 a0 e1                                      mov r8, r0
0060f1a8  07 00 a0 e1                                      mov r0, r7
0060f1ac  ee fe f3 eb                                      bl #0x30ed6c
0060f1b0  00 10 a0 e1                                      mov r1, r0
0060f1b4  0a 00 a0 e1                                      mov r0, sl
0060f1b8  79 fe f3 eb                                      bl #0x30eba4
0060f1bc  01 40 54 e2                                      subs r4, r4, #1
0060f1c0  00 a0 a0 e1                                      mov sl, r0
0060f1c4  08 50 85 e2                                      add r5, r5, #8
0060f1c8  ec ff ff 1a                                      bne #0x60f180
0060f1cc  04 a0 8b e5                                      str sl, [fp, #4]
0060f1d0  00 80 8b e5                                      str r8, [fp]
0060f1d4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060f1d8  00 30 91 e5                                      ldr r3, [r1]
0060f1dc  00 30 8b e5                                      str r3, [fp]
0060f1e0  04 30 91 e5                                      ldr r3, [r1, #4]
0060f1e4  04 30 8b e5                                      str r3, [fp, #4]
0060f1e8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0060f778, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f778  10 40 2d e9                                      push {r4, lr}
0060f77c  00 40 a0 e1                                      mov r4, r0
0060f780  ca fa f3 eb                                      bl #0x30e2b0
0060f784  04 00 a0 e1                                      mov r0, r4
0060f788  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006111a0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getInstance()
; decoder-mode: arm
006111a0  70 40 2d e9                                      push {r4, r5, r6, lr}
006111a4  70 40 9f e5                                      ldr r4, [pc, #0x70]
006111a8  70 30 9f e5                                      ldr r3, [pc, #0x70]
006111ac  04 40 8f e0                                      add r4, pc, r4
006111b0  03 60 94 e7                                      ldr r6, [r4, r3]
006111b4  00 30 96 e5                                      ldr r3, [r6]
006111b8  01 00 13 e3                                      tst r3, #1
006111bc  02 00 00 0a                                      beq #0x6111cc
006111c0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006111c4  05 00 94 e7                                      ldr r0, [r4, r5]
006111c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006111cc  06 00 a0 e1                                      mov r0, r6
006111d0  65 f5 f3 eb                                      bl #0x30e76c
006111d4  00 00 50 e3                                      cmp r0, #0
006111d8  f8 ff ff 0a                                      beq #0x6111c0
006111dc  44 30 9f e5                                      ldr r3, [pc, #0x44]
006111e0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006111e4  06 00 a0 e1                                      mov r0, r6
006111e8  03 30 94 e7                                      ldr r3, [r4, r3]
006111ec  05 60 94 e7                                      ldr r6, [r4, r5]
006111f0  08 30 83 e2                                      add r3, r3, #8
006111f4  00 30 86 e5                                      str r3, [r6]
006111f8  0f f6 f3 eb                                      bl #0x30ea3c
006111fc  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611200  06 00 a0 e1                                      mov r0, r6
00611204  03 10 94 e7                                      ldr r1, [r4, r3]
00611208  20 30 9f e5                                      ldr r3, [pc, #0x20]
0061120c  03 20 94 e7                                      ldr r2, [r4, r3]
00611210  3b f4 f3 eb                                      bl #0x30e304
00611214  05 00 94 e7                                      ldr r0, [r4, r5]
00611218  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0061121c  e4 38 38 00 ec 0d 00 00 5c 18 00 00 04 3b 00 00  .byte 0xe4, 0x38, 0x38, 0x00, 0xec, 0x0d, 0x00, 0x00, 0x5c, 0x18, 0x00, 0x00, 0x04, 0x3b, 0x00, 0x00
0061122c  b8 21 00 00 90 18 00 00                          .byte 0xb8, 0x21, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618dc8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618dc8  00 20 a0 e3                                      mov r2, #0
00618dcc  01 30 a0 e1                                      mov r3, r1
00618dd0  01 20 c3 e4                                      strb r2, [r3], #1
00618dd4  01 30 83 e2                                      add r3, r3, #1
00618dd8  01 20 c1 e5                                      strb r2, [r1, #1]
00618ddc  01 20 c3 e4                                      strb r2, [r3], #1
00618de0  01 20 c3 e4                                      strb r2, [r3], #1
00618de4  01 20 c3 e4                                      strb r2, [r3], #1
00618de8  01 20 c3 e4                                      strb r2, [r3], #1
00618dec  01 20 c3 e4                                      strb r2, [r3], #1
00618df0  00 20 c3 e5                                      strb r2, [r3]
00618df4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006190a4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006190a4  00 c0 a0 e3                                      mov ip, #0
006190a8  01 30 a0 e1                                      mov r3, r1
006190ac  b8 10 dc e1                                      ldrh r1, [ip, #8]
006190b0  02 00 a0 e1                                      mov r0, r2
006190b4  0c 20 a0 e1                                      mov r2, ip
006190b8  e8 b6 fe ea                                      b #0x5c6c60

; FUNCTION 0x0061e510, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061e510  01 00 a0 e1                                      mov r0, r1
0061e514  02 10 a0 e1                                      mov r1, r2
0061e518  03 20 a0 e1                                      mov r2, r3
0061e51c  e2 ff ff ea                                      b #0x61e4ac

; FUNCTION 0x0061e520, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061e520  30 40 2d e9                                      push {r4, r5, lr}
0061e524  0c d0 4d e2                                      sub sp, sp, #0xc
0061e528  01 00 a0 e1                                      mov r0, r1
0061e52c  02 10 a0 e1                                      mov r1, r2
0061e530  0d 20 a0 e1                                      mov r2, sp
0061e534  03 50 a0 e1                                      mov r5, r3
0061e538  db ff ff eb                                      bl #0x61e4ac
0061e53c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0061e540  05 00 a0 e1                                      mov r0, r5
0061e544  00 20 a0 e3                                      mov r2, #0
0061e548  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061e54c  0d 30 a0 e1                                      mov r3, sp
0061e550  0d 40 a0 e1                                      mov r4, sp
0061e554  c1 a1 fe eb                                      bl #0x5c6c60
0061e558  0c d0 8d e2                                      add sp, sp, #0xc
0061e55c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061e604, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061e604  01 00 a0 e1                                      mov r0, r1
0061e608  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e60c  02 10 a0 e1                                      mov r1, r2
0061e610  03 20 a0 e1                                      mov r2, r3
0061e614  00 30 9d e5                                      ldr r3, [sp]
0061e618  00 c0 8d e5                                      str ip, [sp]
0061e61c  cf ff ff ea                                      b #0x61e560

; FUNCTION 0x0061e654, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061e654  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e658  01 00 a0 e1                                      mov r0, r1
0061e65c  02 10 a0 e1                                      mov r1, r2
0061e660  03 20 a0 e1                                      mov r2, r3
0061e664  00 30 9d e5                                      ldr r3, [sp]
0061e668  00 c0 8d e5                                      str ip, [sp]
0061e66c  08 c0 9d e5                                      ldr ip, [sp, #8]
0061e670  04 c0 8d e5                                      str ip, [sp, #4]
0061e674  e9 ff ff ea                                      b #0x61e620

; FUNCTION 0x0061e6d8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061e6d8  01 00 a0 e1                                      mov r0, r1
0061e6dc  02 10 a0 e1                                      mov r1, r2
0061e6e0  03 20 a0 e1                                      mov r2, r3
0061e6e4  00 30 9d e5                                      ldr r3, [sp]
0061e6e8  e2 ff ff ea                                      b #0x61e678

; FUNCTION 0x0061e7b4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061e7b4  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e7b8  01 00 a0 e1                                      mov r0, r1
0061e7bc  02 10 a0 e1                                      mov r1, r2
0061e7c0  03 20 a0 e1                                      mov r2, r3
0061e7c4  00 30 9d e5                                      ldr r3, [sp]
0061e7c8  00 c0 8d e5                                      str ip, [sp]
0061e7cc  08 c0 9d e5                                      ldr ip, [sp, #8]
0061e7d0  04 c0 8d e5                                      str ip, [sp, #4]
0061e7d4  c4 ff ff ea                                      b #0x61e6ec

; FUNCTION 0x00622068, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00622068  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062206c  01 00 53 e3                                      cmp r3, #1
00622070  03 40 a0 e1                                      mov r4, r3
00622074  02 90 a0 e1                                      mov sb, r2
00622078  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0062207c  01 50 a0 e1                                      mov r5, r1
00622080  1c 00 00 0a                                      beq #0x6220f8
00622084  00 00 53 e3                                      cmp r3, #0
00622088  00 80 a0 03                                      moveq r8, #0
0062208c  08 a0 a0 01                                      moveq sl, r8
00622090  15 00 00 0a                                      beq #0x6220ec
00622094  00 80 a0 e3                                      mov r8, #0
00622098  00 60 a0 e3                                      mov r6, #0
0062209c  08 a0 a0 e1                                      mov sl, r8
006220a0  06 70 99 e7                                      ldr r7, [sb, r6]
006220a4  00 10 95 e5                                      ldr r1, [r5]
006220a8  04 60 86 e2                                      add r6, r6, #4
006220ac  07 00 a0 e1                                      mov r0, r7
006220b0  2d b3 f3 eb                                      bl #0x30ed6c
006220b4  00 10 a0 e1                                      mov r1, r0
006220b8  08 00 a0 e1                                      mov r0, r8
006220bc  b8 b2 f3 eb                                      bl #0x30eba4
006220c0  04 10 95 e5                                      ldr r1, [r5, #4]
006220c4  00 80 a0 e1                                      mov r8, r0
006220c8  07 00 a0 e1                                      mov r0, r7
006220cc  26 b3 f3 eb                                      bl #0x30ed6c
006220d0  00 10 a0 e1                                      mov r1, r0
006220d4  0a 00 a0 e1                                      mov r0, sl
006220d8  b1 b2 f3 eb                                      bl #0x30eba4
006220dc  01 40 54 e2                                      subs r4, r4, #1
006220e0  00 a0 a0 e1                                      mov sl, r0
006220e4  08 50 85 e2                                      add r5, r5, #8
006220e8  ec ff ff 1a                                      bne #0x6220a0
006220ec  04 a0 8b e5                                      str sl, [fp, #4]
006220f0  00 80 8b e5                                      str r8, [fp]
006220f4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006220f8  00 30 91 e5                                      ldr r3, [r1]
006220fc  00 30 8b e5                                      str r3, [fp]
00622100  04 30 91 e5                                      ldr r3, [r1, #4]
00622104  04 30 8b e5                                      str r3, [fp, #4]
00622108  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00622440, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622440  01 00 a0 e1                                      mov r0, r1
00622444  04 c0 9d e5                                      ldr ip, [sp, #4]
00622448  02 10 a0 e1                                      mov r1, r2
0062244c  03 20 a0 e1                                      mov r2, r3
00622450  00 30 9d e5                                      ldr r3, [sp]
00622454  00 c0 8d e5                                      str ip, [sp]
00622458  c7 ff ff ea                                      b #0x62237c

; FUNCTION 0x00622520, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622520  01 00 a0 e1                                      mov r0, r1
00622524  04 c0 9d e5                                      ldr ip, [sp, #4]
00622528  02 10 a0 e1                                      mov r1, r2
0062252c  03 20 a0 e1                                      mov r2, r3
00622530  00 30 9d e5                                      ldr r3, [sp]
00622534  00 c0 8d e5                                      str ip, [sp]
00622538  c7 ff ff ea                                      b #0x62245c
