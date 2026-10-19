; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed90, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed90  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee88, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getValueSize() const
; decoder-mode: arm
0060ee88  08 00 a0 e3                                      mov r0, #8
0060ee8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee90, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee90  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f804, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f804  10 40 2d e9                                      push {r4, lr}
0060f808  00 40 a0 e1                                      mov r4, r0
0060f80c  a7 fa f3 eb                                      bl #0x30e2b0
0060f810  04 00 a0 e1                                      mov r0, r4
0060f814  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006115ac, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getInstance()
; decoder-mode: arm
006115ac  70 40 2d e9                                      push {r4, r5, r6, lr}
006115b0  70 40 9f e5                                      ldr r4, [pc, #0x70]
006115b4  70 30 9f e5                                      ldr r3, [pc, #0x70]
006115b8  04 40 8f e0                                      add r4, pc, r4
006115bc  03 60 94 e7                                      ldr r6, [r4, r3]
006115c0  00 30 96 e5                                      ldr r3, [r6]
006115c4  01 00 13 e3                                      tst r3, #1
006115c8  02 00 00 0a                                      beq #0x6115d8
006115cc  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006115d0  05 00 94 e7                                      ldr r0, [r4, r5]
006115d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006115d8  06 00 a0 e1                                      mov r0, r6
006115dc  62 f4 f3 eb                                      bl #0x30e76c
006115e0  00 00 50 e3                                      cmp r0, #0
006115e4  f8 ff ff 0a                                      beq #0x6115cc
006115e8  44 30 9f e5                                      ldr r3, [pc, #0x44]
006115ec  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006115f0  06 00 a0 e1                                      mov r0, r6
006115f4  03 30 94 e7                                      ldr r3, [r4, r3]
006115f8  05 60 94 e7                                      ldr r6, [r4, r5]
006115fc  08 30 83 e2                                      add r3, r3, #8
00611600  00 30 86 e5                                      str r3, [r6]
00611604  0c f5 f3 eb                                      bl #0x30ea3c
00611608  28 30 9f e5                                      ldr r3, [pc, #0x28]
0061160c  06 00 a0 e1                                      mov r0, r6
00611610  03 10 94 e7                                      ldr r1, [r4, r3]
00611614  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611618  03 20 94 e7                                      ldr r2, [r4, r3]
0061161c  38 f3 f3 eb                                      bl #0x30e304
00611620  05 00 94 e7                                      ldr r0, [r4, r5]
00611624  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611628  d8 34 38 00 d4 09 00 00 94 3c 00 00 78 28 00 00  .byte 0xd8, 0x34, 0x38, 0x00, 0xd4, 0x09, 0x00, 0x00, 0x94, 0x3c, 0x00, 0x00, 0x78, 0x28, 0x00, 0x00
00611638  80 1a 00 00 90 18 00 00                          .byte 0x80, 0x1a, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00612a7c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00612a7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00612a80  01 00 a0 e1                                      mov r0, r1
00612a84  00 10 a0 e3                                      mov r1, #0
00612a88  03 50 a0 e1                                      mov r5, r3
00612a8c  02 40 a0 e1                                      mov r4, r2
00612a90  e3 5c 01 eb                                      bl #0x669e24
00612a94  04 30 90 e5                                      ldr r3, [r0, #4]
00612a98  84 21 93 e7                                      ldr r2, [r3, r4, lsl #3]
00612a9c  84 41 83 e0                                      add r4, r3, r4, lsl #3
00612aa0  00 20 85 e5                                      str r2, [r5]
00612aa4  04 30 94 e5                                      ldr r3, [r4, #4]
00612aa8  04 30 85 e5                                      str r3, [r5, #4]
00612aac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612ab0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00612ab0  70 40 2d e9                                      push {r4, r5, r6, lr}
00612ab4  01 00 a0 e1                                      mov r0, r1
00612ab8  00 10 a0 e3                                      mov r1, #0
00612abc  02 40 a0 e1                                      mov r4, r2
00612ac0  03 60 a0 e1                                      mov r6, r3
00612ac4  10 50 9d e5                                      ldr r5, [sp, #0x10]
00612ac8  d5 5c 01 eb                                      bl #0x669e24
00612acc  04 30 90 e5                                      ldr r3, [r0, #4]
00612ad0  84 11 93 e7                                      ldr r1, [r3, r4, lsl #3]
00612ad4  86 01 93 e7                                      ldr r0, [r3, r6, lsl #3]
00612ad8  84 41 83 e0                                      add r4, r3, r4, lsl #3
00612adc  86 61 83 e0                                      add r6, r3, r6, lsl #3
00612ae0  31 ee f3 eb                                      bl #0x30e3ac
00612ae4  00 00 85 e5                                      str r0, [r5]
00612ae8  04 00 96 e5                                      ldr r0, [r6, #4]
00612aec  04 10 94 e5                                      ldr r1, [r4, #4]
00612af0  2d ee f3 eb                                      bl #0x30e3ac
00612af4  04 00 85 e5                                      str r0, [r5, #4]
00612af8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612b98, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00612b98  04 c0 9d e5                                      ldr ip, [sp, #4]
00612b9c  01 00 a0 e1                                      mov r0, r1
00612ba0  02 10 a0 e1                                      mov r1, r2
00612ba4  03 20 a0 e1                                      mov r2, r3
00612ba8  00 30 9d e5                                      ldr r3, [sp]
00612bac  00 c0 8d e5                                      str ip, [sp]
00612bb0  08 c0 9d e5                                      ldr ip, [sp, #8]
00612bb4  04 c0 8d e5                                      str ip, [sp, #4]
00612bb8  cf ff ff ea                                      b #0x612afc

; FUNCTION 0x00618ea8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618ea8  00 20 a0 e3                                      mov r2, #0
00618eac  01 30 a0 e1                                      mov r3, r1
00618eb0  01 20 c3 e4                                      strb r2, [r3], #1
00618eb4  01 30 83 e2                                      add r3, r3, #1
00618eb8  01 20 c1 e5                                      strb r2, [r1, #1]
00618ebc  01 20 c3 e4                                      strb r2, [r3], #1
00618ec0  01 20 c3 e4                                      strb r2, [r3], #1
00618ec4  01 20 c3 e4                                      strb r2, [r3], #1
00618ec8  01 20 c3 e4                                      strb r2, [r3], #1
00618ecc  01 20 c3 e4                                      strb r2, [r3], #1
00618ed0  00 20 c3 e5                                      strb r2, [r3]
00618ed4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006190d4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006190d4  00 c0 a0 e3                                      mov ip, #0
006190d8  01 30 a0 e1                                      mov r3, r1
006190dc  b8 10 dc e1                                      ldrh r1, [ip, #8]
006190e0  02 00 a0 e1                                      mov r0, r2
006190e4  0c 20 a0 e1                                      mov r2, ip
006190e8  dc b6 fe ea                                      b #0x5c6c60

; FUNCTION 0x0061913c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061913c  01 00 a0 e1                                      mov r0, r1
00619140  02 10 a0 e1                                      mov r1, r2
00619144  03 20 a0 e1                                      mov r2, r3
00619148  00 30 9d e5                                      ldr r3, [sp]
0061914c  e6 ff ff ea                                      b #0x6190ec

; FUNCTION 0x00621e24, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621e24  01 00 a0 e1                                      mov r0, r1
00621e28  04 c0 9d e5                                      ldr ip, [sp, #4]
00621e2c  02 10 a0 e1                                      mov r1, r2
00621e30  03 20 a0 e1                                      mov r2, r3
00621e34  00 30 9d e5                                      ldr r3, [sp]
00621e38  00 c0 8d e5                                      str ip, [sp]
00621e3c  c7 ff ff ea                                      b #0x621d60

; FUNCTION 0x00621f04, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621f04  01 00 a0 e1                                      mov r0, r1
00621f08  04 c0 9d e5                                      ldr ip, [sp, #4]
00621f0c  02 10 a0 e1                                      mov r1, r2
00621f10  03 20 a0 e1                                      mov r2, r3
00621f14  00 30 9d e5                                      ldr r3, [sp]
00621f18  00 c0 8d e5                                      str ip, [sp]
00621f1c  c7 ff ff ea                                      b #0x621e40

; FUNCTION 0x00621fc4, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00621fc4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00621fc8  01 00 53 e3                                      cmp r3, #1
00621fcc  03 40 a0 e1                                      mov r4, r3
00621fd0  02 90 a0 e1                                      mov sb, r2
00621fd4  28 b0 9d e5                                      ldr fp, [sp, #0x28]
00621fd8  01 50 a0 e1                                      mov r5, r1
00621fdc  1c 00 00 0a                                      beq #0x622054
00621fe0  00 00 53 e3                                      cmp r3, #0
00621fe4  00 80 a0 03                                      moveq r8, #0
00621fe8  08 a0 a0 01                                      moveq sl, r8
00621fec  15 00 00 0a                                      beq #0x622048
00621ff0  00 80 a0 e3                                      mov r8, #0
00621ff4  00 60 a0 e3                                      mov r6, #0
00621ff8  08 a0 a0 e1                                      mov sl, r8
00621ffc  06 70 99 e7                                      ldr r7, [sb, r6]
00622000  00 10 95 e5                                      ldr r1, [r5]
00622004  04 60 86 e2                                      add r6, r6, #4
00622008  07 00 a0 e1                                      mov r0, r7
0062200c  56 b3 f3 eb                                      bl #0x30ed6c
00622010  00 10 a0 e1                                      mov r1, r0
00622014  08 00 a0 e1                                      mov r0, r8
00622018  e1 b2 f3 eb                                      bl #0x30eba4
0062201c  04 10 95 e5                                      ldr r1, [r5, #4]
00622020  00 80 a0 e1                                      mov r8, r0
00622024  07 00 a0 e1                                      mov r0, r7
00622028  4f b3 f3 eb                                      bl #0x30ed6c
0062202c  00 10 a0 e1                                      mov r1, r0
00622030  0a 00 a0 e1                                      mov r0, sl
00622034  da b2 f3 eb                                      bl #0x30eba4
00622038  01 40 54 e2                                      subs r4, r4, #1
0062203c  00 a0 a0 e1                                      mov sl, r0
00622040  08 50 85 e2                                      add r5, r5, #8
00622044  ec ff ff 1a                                      bne #0x621ffc
00622048  04 a0 8b e5                                      str sl, [fp, #4]
0062204c  00 80 8b e5                                      str r8, [fp]
00622050  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00622054  00 30 91 e5                                      ldr r3, [r1]
00622058  00 30 8b e5                                      str r3, [fp]
0062205c  04 30 91 e5                                      ldr r3, [r1, #4]
00622060  04 30 8b e5                                      str r3, [fp, #4]
00622064  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006221b0, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006221b0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006221b4  01 00 53 e3                                      cmp r3, #1
006221b8  03 40 a0 e1                                      mov r4, r3
006221bc  02 90 a0 e1                                      mov sb, r2
006221c0  28 b0 9d e5                                      ldr fp, [sp, #0x28]
006221c4  01 50 a0 e1                                      mov r5, r1
006221c8  1c 00 00 0a                                      beq #0x622240
006221cc  00 00 53 e3                                      cmp r3, #0
006221d0  00 80 a0 03                                      moveq r8, #0
006221d4  08 a0 a0 01                                      moveq sl, r8
006221d8  15 00 00 0a                                      beq #0x622234
006221dc  00 80 a0 e3                                      mov r8, #0
006221e0  00 60 a0 e3                                      mov r6, #0
006221e4  08 a0 a0 e1                                      mov sl, r8
006221e8  06 70 99 e7                                      ldr r7, [sb, r6]
006221ec  00 10 95 e5                                      ldr r1, [r5]
006221f0  04 60 86 e2                                      add r6, r6, #4
006221f4  07 00 a0 e1                                      mov r0, r7
006221f8  db b2 f3 eb                                      bl #0x30ed6c
006221fc  00 10 a0 e1                                      mov r1, r0
00622200  08 00 a0 e1                                      mov r0, r8
00622204  66 b2 f3 eb                                      bl #0x30eba4
00622208  04 10 95 e5                                      ldr r1, [r5, #4]
0062220c  00 80 a0 e1                                      mov r8, r0
00622210  07 00 a0 e1                                      mov r0, r7
00622214  d4 b2 f3 eb                                      bl #0x30ed6c
00622218  00 10 a0 e1                                      mov r1, r0
0062221c  0a 00 a0 e1                                      mov r0, sl
00622220  5f b2 f3 eb                                      bl #0x30eba4
00622224  01 40 54 e2                                      subs r4, r4, #1
00622228  00 a0 a0 e1                                      mov sl, r0
0062222c  08 50 85 e2                                      add r5, r5, #8
00622230  ec ff ff 1a                                      bne #0x6221e8
00622234  04 a0 8b e5                                      str sl, [fp, #4]
00622238  00 80 8b e5                                      str r8, [fp]
0062223c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00622240  00 30 91 e5                                      ldr r3, [r1]
00622244  00 30 8b e5                                      str r3, [fp]
00622248  04 30 91 e5                                      ldr r3, [r1, #4]
0062224c  04 30 8b e5                                      str r3, [fp, #4]
00622250  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00622308, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00622308  01 00 a0 e1                                      mov r0, r1
0062230c  04 c0 9d e5                                      ldr ip, [sp, #4]
00622310  02 10 a0 e1                                      mov r1, r2
00622314  03 20 a0 e1                                      mov r2, r3
00622318  00 30 9d e5                                      ldr r3, [sp]
0062231c  00 c0 8d e5                                      str ip, [sp]
00622320  cb ff ff ea                                      b #0x622254

; FUNCTION 0x00622358, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622358  04 c0 9d e5                                      ldr ip, [sp, #4]
0062235c  01 00 a0 e1                                      mov r0, r1
00622360  02 10 a0 e1                                      mov r1, r2
00622364  03 20 a0 e1                                      mov r2, r3
00622368  00 30 9d e5                                      ldr r3, [sp]
0062236c  00 c0 8d e5                                      str ip, [sp]
00622370  08 c0 9d e5                                      ldr ip, [sp, #8]
00622374  04 c0 8d e5                                      str ip, [sp, #4]
00622378  e9 ff ff ea                                      b #0x622324
