; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed9c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getValueSize() const
; decoder-mode: arm
0060ee64  0c 00 a0 e3                                      mov r0, #0xc
0060ee68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee6c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f818, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f818  10 40 2d e9                                      push {r4, lr}
0060f81c  00 40 a0 e1                                      mov r4, r0
0060f820  a2 fa f3 eb                                      bl #0x30e2b0
0060f824  04 00 a0 e1                                      mov r0, r4
0060f828  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611640, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getInstance()
; decoder-mode: arm
00611640  70 40 2d e9                                      push {r4, r5, r6, lr}
00611644  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611648  70 30 9f e5                                      ldr r3, [pc, #0x70]
0061164c  04 40 8f e0                                      add r4, pc, r4
00611650  03 60 94 e7                                      ldr r6, [r4, r3]
00611654  00 30 96 e5                                      ldr r3, [r6]
00611658  01 00 13 e3                                      tst r3, #1
0061165c  02 00 00 0a                                      beq #0x61166c
00611660  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611664  05 00 94 e7                                      ldr r0, [r4, r5]
00611668  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061166c  06 00 a0 e1                                      mov r0, r6
00611670  3d f4 f3 eb                                      bl #0x30e76c
00611674  00 00 50 e3                                      cmp r0, #0
00611678  f8 ff ff 0a                                      beq #0x611660
0061167c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611680  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611684  06 00 a0 e1                                      mov r0, r6
00611688  03 30 94 e7                                      ldr r3, [r4, r3]
0061168c  05 60 94 e7                                      ldr r6, [r4, r5]
00611690  08 30 83 e2                                      add r3, r3, #8
00611694  00 30 86 e5                                      str r3, [r6]
00611698  e7 f4 f3 eb                                      bl #0x30ea3c
0061169c  28 30 9f e5                                      ldr r3, [pc, #0x28]
006116a0  06 00 a0 e1                                      mov r0, r6
006116a4  03 10 94 e7                                      ldr r1, [r4, r3]
006116a8  20 30 9f e5                                      ldr r3, [pc, #0x20]
006116ac  03 20 94 e7                                      ldr r2, [r4, r3]
006116b0  13 f3 f3 eb                                      bl #0x30e304
006116b4  05 00 94 e7                                      ldr r0, [r4, r5]
006116b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006116bc  44 34 38 00 28 32 00 00 70 1e 00 00 9c 07 00 00  .byte 0x44, 0x34, 0x38, 0x00, 0x28, 0x32, 0x00, 0x00, 0x70, 0x1e, 0x00, 0x00, 0x9c, 0x07, 0x00, 0x00
006116cc  24 49 00 00 90 18 00 00                          .byte 0x24, 0x49, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006124cc, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006124cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006124d0  01 00 a0 e1                                      mov r0, r1
006124d4  00 10 a0 e3                                      mov r1, #0
006124d8  03 40 a0 e1                                      mov r4, r3
006124dc  02 50 a0 e1                                      mov r5, r2
006124e0  4f 5e 01 eb                                      bl #0x669e24
006124e4  0c 30 a0 e3                                      mov r3, #0xc
006124e8  04 20 90 e5                                      ldr r2, [r0, #4]
006124ec  93 05 05 e0                                      mul r5, r3, r5
006124f0  04 30 a0 e1                                      mov r3, r4
006124f4  05 10 92 e7                                      ldr r1, [r2, r5]
006124f8  05 50 82 e0                                      add r5, r2, r5
006124fc  04 10 83 e4                                      str r1, [r3], #4
00612500  04 20 95 e5                                      ldr r2, [r5, #4]
00612504  04 20 84 e5                                      str r2, [r4, #4]
00612508  08 20 95 e5                                      ldr r2, [r5, #8]
0061250c  04 20 83 e5                                      str r2, [r3, #4]
00612510  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612514, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00612514  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00612518  01 00 a0 e1                                      mov r0, r1
0061251c  00 10 a0 e3                                      mov r1, #0
00612520  03 80 a0 e1                                      mov r8, r3
00612524  02 40 a0 e1                                      mov r4, r2
00612528  18 70 9d e5                                      ldr r7, [sp, #0x18]
0061252c  3c 5e 01 eb                                      bl #0x669e24
00612530  04 30 90 e5                                      ldr r3, [r0, #4]
00612534  0c 60 a0 e3                                      mov r6, #0xc
00612538  00 50 a0 e3                                      mov r5, #0
0061253c  96 34 24 e0                                      mla r4, r6, r4, r3
00612540  96 38 26 e0                                      mla r6, r6, r8, r3
00612544  05 00 96 e7                                      ldr r0, [r6, r5]
00612548  05 10 94 e7                                      ldr r1, [r4, r5]
0061254c  96 ef f3 eb                                      bl #0x30e3ac
00612550  05 00 87 e7                                      str r0, [r7, r5]
00612554  04 50 85 e2                                      add r5, r5, #4
00612558  0c 00 55 e3                                      cmp r5, #0xc
0061255c  f8 ff ff 1a                                      bne #0x612544
00612560  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006125e0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006125e0  04 c0 9d e5                                      ldr ip, [sp, #4]
006125e4  01 00 a0 e1                                      mov r0, r1
006125e8  02 10 a0 e1                                      mov r1, r2
006125ec  03 20 a0 e1                                      mov r2, r3
006125f0  00 30 9d e5                                      ldr r3, [sp]
006125f4  00 c0 8d e5                                      str ip, [sp]
006125f8  08 c0 9d e5                                      ldr ip, [sp, #8]
006125fc  04 c0 8d e5                                      str ip, [sp, #4]
00612600  d7 ff ff ea                                      b #0x612564

; FUNCTION 0x00618ed8, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618ed8  00 20 a0 e3                                      mov r2, #0
00618edc  01 30 a0 e1                                      mov r3, r1
00618ee0  01 20 c3 e4                                      strb r2, [r3], #1
00618ee4  01 30 83 e2                                      add r3, r3, #1
00618ee8  01 20 c1 e5                                      strb r2, [r1, #1]
00618eec  01 20 c3 e4                                      strb r2, [r3], #1
00618ef0  01 20 c3 e4                                      strb r2, [r3], #1
00618ef4  01 20 c3 e4                                      strb r2, [r3], #1
00618ef8  01 20 c3 e4                                      strb r2, [r3], #1
00618efc  01 20 c3 e4                                      strb r2, [r3], #1
00618f00  01 20 c3 e4                                      strb r2, [r3], #1
00618f04  01 20 c3 e4                                      strb r2, [r3], #1
00618f08  01 20 c3 e4                                      strb r2, [r3], #1
00618f0c  01 20 c3 e4                                      strb r2, [r3], #1
00618f10  00 20 c3 e5                                      strb r2, [r3]
00618f14  1e ff 2f e1                                      bx lr

; FUNCTION 0x00619168, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00619168  00 c0 a0 e3                                      mov ip, #0
0061916c  01 30 a0 e1                                      mov r3, r1
00619170  b8 10 dc e1                                      ldrh r1, [ip, #8]
00619174  02 00 a0 e1                                      mov r0, r2
00619178  0c 20 a0 e1                                      mov r2, ip
0061917c  ec b6 fe ea                                      b #0x5c6d34

; FUNCTION 0x006191e0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006191e0  01 00 a0 e1                                      mov r0, r1
006191e4  02 10 a0 e1                                      mov r1, r2
006191e8  03 20 a0 e1                                      mov r2, r3
006191ec  00 30 9d e5                                      ldr r3, [sp]
006191f0  e2 ff ff ea                                      b #0x619180

; FUNCTION 0x00626b30, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00626b30  01 00 a0 e1                                      mov r0, r1
00626b34  04 c0 9d e5                                      ldr ip, [sp, #4]
00626b38  02 10 a0 e1                                      mov r1, r2
00626b3c  03 20 a0 e1                                      mov r2, r3
00626b40  00 30 9d e5                                      ldr r3, [sp]
00626b44  00 c0 8d e5                                      str ip, [sp]
00626b48  ba ff ff ea                                      b #0x626a38

; FUNCTION 0x00627b98, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00627b98  01 00 a0 e1                                      mov r0, r1
00627b9c  04 c0 9d e5                                      ldr ip, [sp, #4]
00627ba0  02 10 a0 e1                                      mov r1, r2
00627ba4  03 20 a0 e1                                      mov r2, r3
00627ba8  00 30 9d e5                                      ldr r3, [sp]
00627bac  00 c0 8d e5                                      str ip, [sp]
00627bb0  ba ff ff ea                                      b #0x627aa0

; FUNCTION 0x00628ad4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00628ad4  01 00 a0 e1                                      mov r0, r1
00628ad8  04 c0 9d e5                                      ldr ip, [sp, #4]
00628adc  02 10 a0 e1                                      mov r1, r2
00628ae0  03 20 a0 e1                                      mov r2, r3
00628ae4  00 30 9d e5                                      ldr r3, [sp]
00628ae8  00 c0 8d e5                                      str ip, [sp]
00628aec  b8 ff ff ea                                      b #0x6289d4

; FUNCTION 0x00628b24, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628b24  04 c0 9d e5                                      ldr ip, [sp, #4]
00628b28  01 00 a0 e1                                      mov r0, r1
00628b2c  02 10 a0 e1                                      mov r1, r2
00628b30  03 20 a0 e1                                      mov r2, r3
00628b34  00 30 9d e5                                      ldr r3, [sp]
00628b38  00 c0 8d e5                                      str ip, [sp]
00628b3c  08 c0 9d e5                                      ldr ip, [sp, #8]
00628b40  04 c0 8d e5                                      str ip, [sp, #4]
00628b44  e9 ff ff ea                                      b #0x628af0

; FUNCTION 0x0062a670, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a670  01 00 53 e3                                      cmp r3, #1
0062a674  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a678  03 40 a0 e1                                      mov r4, r3
0062a67c  02 b0 a0 e1                                      mov fp, r2
0062a680  29 00 00 0a                                      beq #0x62a72c
0062a684  00 00 53 e3                                      cmp r3, #0
0062a688  00 80 a0 03                                      moveq r8, #0
0062a68c  08 90 a0 01                                      moveq sb, r8
0062a690  08 a0 a0 01                                      moveq sl, r8
0062a694  1e 00 00 0a                                      beq #0x62a714
0062a698  00 80 a0 e3                                      mov r8, #0
0062a69c  01 50 a0 e1                                      mov r5, r1
0062a6a0  00 70 a0 e3                                      mov r7, #0
0062a6a4  08 90 a0 e1                                      mov sb, r8
0062a6a8  08 a0 a0 e1                                      mov sl, r8
0062a6ac  07 60 9b e7                                      ldr r6, [fp, r7]
0062a6b0  00 10 95 e5                                      ldr r1, [r5]
0062a6b4  04 70 87 e2                                      add r7, r7, #4
0062a6b8  06 00 a0 e1                                      mov r0, r6
0062a6bc  aa 91 f3 eb                                      bl #0x30ed6c
0062a6c0  00 10 a0 e1                                      mov r1, r0
0062a6c4  08 00 a0 e1                                      mov r0, r8
0062a6c8  35 91 f3 eb                                      bl #0x30eba4
0062a6cc  04 10 95 e5                                      ldr r1, [r5, #4]
0062a6d0  00 80 a0 e1                                      mov r8, r0
0062a6d4  06 00 a0 e1                                      mov r0, r6
0062a6d8  a3 91 f3 eb                                      bl #0x30ed6c
0062a6dc  00 10 a0 e1                                      mov r1, r0
0062a6e0  09 00 a0 e1                                      mov r0, sb
0062a6e4  2e 91 f3 eb                                      bl #0x30eba4
0062a6e8  08 10 95 e5                                      ldr r1, [r5, #8]
0062a6ec  00 90 a0 e1                                      mov sb, r0
0062a6f0  06 00 a0 e1                                      mov r0, r6
0062a6f4  9c 91 f3 eb                                      bl #0x30ed6c
0062a6f8  00 10 a0 e1                                      mov r1, r0
0062a6fc  0a 00 a0 e1                                      mov r0, sl
0062a700  27 91 f3 eb                                      bl #0x30eba4
0062a704  01 40 54 e2                                      subs r4, r4, #1
0062a708  00 a0 a0 e1                                      mov sl, r0
0062a70c  0c 50 85 e2                                      add r5, r5, #0xc
0062a710  e5 ff ff 1a                                      bne #0x62a6ac
0062a714  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a718  04 80 83 e4                                      str r8, [r3], #4
0062a71c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a720  04 90 82 e5                                      str sb, [r2, #4]
0062a724  04 a0 83 e5                                      str sl, [r3, #4]
0062a728  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a72c  01 20 a0 e1                                      mov r2, r1
0062a730  04 00 92 e4                                      ldr r0, [r2], #4
0062a734  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a738  04 00 83 e4                                      str r0, [r3], #4
0062a73c  04 10 91 e5                                      ldr r1, [r1, #4]
0062a740  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a744  04 10 80 e5                                      str r1, [r0, #4]
0062a748  04 20 92 e5                                      ldr r2, [r2, #4]
0062a74c  04 20 83 e5                                      str r2, [r3, #4]
0062a750  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062bd98, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062bd98  01 00 53 e3                                      cmp r3, #1
0062bd9c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062bda0  03 40 a0 e1                                      mov r4, r3
0062bda4  02 b0 a0 e1                                      mov fp, r2
0062bda8  29 00 00 0a                                      beq #0x62be54
0062bdac  00 00 53 e3                                      cmp r3, #0
0062bdb0  00 80 a0 03                                      moveq r8, #0
0062bdb4  08 90 a0 01                                      moveq sb, r8
0062bdb8  08 a0 a0 01                                      moveq sl, r8
0062bdbc  1e 00 00 0a                                      beq #0x62be3c
0062bdc0  00 80 a0 e3                                      mov r8, #0
0062bdc4  01 50 a0 e1                                      mov r5, r1
0062bdc8  00 70 a0 e3                                      mov r7, #0
0062bdcc  08 90 a0 e1                                      mov sb, r8
0062bdd0  08 a0 a0 e1                                      mov sl, r8
0062bdd4  07 60 9b e7                                      ldr r6, [fp, r7]
0062bdd8  00 10 95 e5                                      ldr r1, [r5]
0062bddc  04 70 87 e2                                      add r7, r7, #4
0062bde0  06 00 a0 e1                                      mov r0, r6
0062bde4  e0 8b f3 eb                                      bl #0x30ed6c
0062bde8  00 10 a0 e1                                      mov r1, r0
0062bdec  08 00 a0 e1                                      mov r0, r8
0062bdf0  6b 8b f3 eb                                      bl #0x30eba4
0062bdf4  04 10 95 e5                                      ldr r1, [r5, #4]
0062bdf8  00 80 a0 e1                                      mov r8, r0
0062bdfc  06 00 a0 e1                                      mov r0, r6
0062be00  d9 8b f3 eb                                      bl #0x30ed6c
0062be04  00 10 a0 e1                                      mov r1, r0
0062be08  09 00 a0 e1                                      mov r0, sb
0062be0c  64 8b f3 eb                                      bl #0x30eba4
0062be10  08 10 95 e5                                      ldr r1, [r5, #8]
0062be14  00 90 a0 e1                                      mov sb, r0
0062be18  06 00 a0 e1                                      mov r0, r6
0062be1c  d2 8b f3 eb                                      bl #0x30ed6c
0062be20  00 10 a0 e1                                      mov r1, r0
0062be24  0a 00 a0 e1                                      mov r0, sl
0062be28  5d 8b f3 eb                                      bl #0x30eba4
0062be2c  01 40 54 e2                                      subs r4, r4, #1
0062be30  00 a0 a0 e1                                      mov sl, r0
0062be34  0c 50 85 e2                                      add r5, r5, #0xc
0062be38  e5 ff ff 1a                                      bne #0x62bdd4
0062be3c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062be40  04 80 83 e4                                      str r8, [r3], #4
0062be44  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062be48  04 90 82 e5                                      str sb, [r2, #4]
0062be4c  04 a0 83 e5                                      str sl, [r3, #4]
0062be50  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062be54  01 20 a0 e1                                      mov r2, r1
0062be58  04 00 92 e4                                      ldr r0, [r2], #4
0062be5c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062be60  04 00 83 e4                                      str r0, [r3], #4
0062be64  04 10 91 e5                                      ldr r1, [r1, #4]
0062be68  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062be6c  04 10 80 e5                                      str r1, [r0, #4]
0062be70  04 20 92 e5                                      ldr r2, [r2, #4]
0062be74  04 20 83 e5                                      str r2, [r3, #4]
0062be78  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
