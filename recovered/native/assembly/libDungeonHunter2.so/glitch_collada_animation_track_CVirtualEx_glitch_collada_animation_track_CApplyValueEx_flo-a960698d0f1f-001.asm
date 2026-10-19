; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edb4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::~CVirtualEx()
; decoder-mode: arm
0060edb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee1c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getValueSize() const
; decoder-mode: arm
0060ee1c  10 00 a0 e3                                      mov r0, #0x10
0060ee20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f7f0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f7f0  10 40 2d e9                                      push {r4, lr}
0060f7f4  00 40 a0 e1                                      mov r4, r0
0060f7f8  ac fa f3 eb                                      bl #0x30e2b0
0060f7fc  04 00 a0 e1                                      mov r0, r4
0060f800  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611518, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getInstance()
; decoder-mode: arm
00611518  70 40 2d e9                                      push {r4, r5, r6, lr}
0061151c  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611520  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611524  04 40 8f e0                                      add r4, pc, r4
00611528  03 60 94 e7                                      ldr r6, [r4, r3]
0061152c  00 30 96 e5                                      ldr r3, [r6]
00611530  01 00 13 e3                                      tst r3, #1
00611534  02 00 00 0a                                      beq #0x611544
00611538  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0061153c  05 00 94 e7                                      ldr r0, [r4, r5]
00611540  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611544  06 00 a0 e1                                      mov r0, r6
00611548  87 f4 f3 eb                                      bl #0x30e76c
0061154c  00 00 50 e3                                      cmp r0, #0
00611550  f8 ff ff 0a                                      beq #0x611538
00611554  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611558  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0061155c  06 00 a0 e1                                      mov r0, r6
00611560  03 30 94 e7                                      ldr r3, [r4, r3]
00611564  05 60 94 e7                                      ldr r6, [r4, r5]
00611568  08 30 83 e2                                      add r3, r3, #8
0061156c  00 30 86 e5                                      str r3, [r6]
00611570  31 f5 f3 eb                                      bl #0x30ea3c
00611574  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611578  06 00 a0 e1                                      mov r0, r6
0061157c  03 10 94 e7                                      ldr r1, [r4, r3]
00611580  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611584  03 20 94 e7                                      ldr r2, [r4, r3]
00611588  5d f3 f3 eb                                      bl #0x30e304
0061158c  05 00 94 e7                                      ldr r0, [r4, r5]
00611590  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611594  6c 35 38 00 24 41 00 00 98 35 00 00 0c 3f 00 00  .byte 0x6c, 0x35, 0x38, 0x00, 0x24, 0x41, 0x00, 0x00, 0x98, 0x35, 0x00, 0x00, 0x0c, 0x3f, 0x00, 0x00
006115a4  40 1c 00 00 90 18 00 00                          .byte 0x40, 0x1c, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618e98, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618e98  01 00 a0 e1                                      mov r0, r1
00618e9c  10 20 a0 e3                                      mov r2, #0x10
00618ea0  00 10 a0 e3                                      mov r1, #0
00618ea4  6d d5 f3 ea                                      b #0x30e460

; FUNCTION 0x0061ca00, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061ca00  00 c0 a0 e3                                      mov ip, #0
0061ca04  01 30 a0 e1                                      mov r3, r1
0061ca08  b8 10 dc e1                                      ldrh r1, [ip, #8]
0061ca0c  02 00 a0 e1                                      mov r0, r2
0061ca10  0c 20 a0 e1                                      mov r2, ip
0061ca14  53 c7 fe ea                                      b #0x5ce768

; FUNCTION 0x0061d3ac, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061d3ac  04 c0 9d e5                                      ldr ip, [sp, #4]
0061d3b0  01 00 a0 e1                                      mov r0, r1
0061d3b4  02 10 a0 e1                                      mov r1, r2
0061d3b8  03 20 a0 e1                                      mov r2, r3
0061d3bc  00 30 9d e5                                      ldr r3, [sp]
0061d3c0  00 c0 8d e5                                      str ip, [sp]
0061d3c4  08 c0 9d e5                                      ldr ip, [sp, #8]
0061d3c8  04 c0 8d e5                                      str ip, [sp, #4]
0061d3cc  be ff ff ea                                      b #0x61d2cc

; FUNCTION 0x0061d92c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061d92c  01 00 a0 e1                                      mov r0, r1
0061d930  02 10 a0 e1                                      mov r1, r2
0061d934  03 20 a0 e1                                      mov r2, r3
0061d938  dd ff ff ea                                      b #0x61d8b4

; FUNCTION 0x0061d93c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061d93c  30 40 2d e9                                      push {r4, r5, lr}
0061d940  14 d0 4d e2                                      sub sp, sp, #0x14
0061d944  01 00 a0 e1                                      mov r0, r1
0061d948  02 10 a0 e1                                      mov r1, r2
0061d94c  0d 20 a0 e1                                      mov r2, sp
0061d950  03 50 a0 e1                                      mov r5, r3
0061d954  d6 ff ff eb                                      bl #0x61d8b4
0061d958  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061d95c  05 00 a0 e1                                      mov r0, r5
0061d960  00 20 a0 e3                                      mov r2, #0
0061d964  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061d968  0d 30 a0 e1                                      mov r3, sp
0061d96c  0d 40 a0 e1                                      mov r4, sp
0061d970  7c c3 fe eb                                      bl #0x5ce768
0061d974  14 d0 8d e2                                      add sp, sp, #0x14
0061d978  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061da30, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061da30  01 00 a0 e1                                      mov r0, r1
0061da34  04 c0 9d e5                                      ldr ip, [sp, #4]
0061da38  02 10 a0 e1                                      mov r1, r2
0061da3c  03 20 a0 e1                                      mov r2, r3
0061da40  00 30 9d e5                                      ldr r3, [sp]
0061da44  00 c0 8d e5                                      str ip, [sp]
0061da48  cb ff ff ea                                      b #0x61d97c

; FUNCTION 0x0061da80, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061da80  04 c0 9d e5                                      ldr ip, [sp, #4]
0061da84  01 00 a0 e1                                      mov r0, r1
0061da88  02 10 a0 e1                                      mov r1, r2
0061da8c  03 20 a0 e1                                      mov r2, r3
0061da90  00 30 9d e5                                      ldr r3, [sp]
0061da94  00 c0 8d e5                                      str ip, [sp]
0061da98  08 c0 9d e5                                      ldr ip, [sp, #8]
0061da9c  04 c0 8d e5                                      str ip, [sp, #4]
0061daa0  e9 ff ff ea                                      b #0x61da4c

; FUNCTION 0x0061db18, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061db18  01 00 a0 e1                                      mov r0, r1
0061db1c  02 10 a0 e1                                      mov r1, r2
0061db20  03 20 a0 e1                                      mov r2, r3
0061db24  00 30 9d e5                                      ldr r3, [sp]
0061db28  dd ff ff ea                                      b #0x61daa4

; FUNCTION 0x006240ec, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006240ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006240f0  01 00 53 e3                                      cmp r3, #1
006240f4  24 d0 4d e2                                      sub sp, sp, #0x24
006240f8  03 40 a0 e1                                      mov r4, r3
006240fc  02 b0 a0 e1                                      mov fp, r2
00624100  2a 00 00 0a                                      beq #0x6241b0
00624104  00 60 a0 e3                                      mov r6, #0
00624108  00 00 53 e3                                      cmp r3, #0
0062410c  00 60 8d e5                                      str r6, [sp]
00624110  04 60 8d e5                                      str r6, [sp, #4]
00624114  08 60 8d e5                                      str r6, [sp, #8]
00624118  0c 60 8d e5                                      str r6, [sp, #0xc]
0062411c  01 80 a0 11                                      movne r8, r1
00624120  00 90 a0 13                                      movne sb, #0
00624124  0d 70 a0 11                                      movne r7, sp
00624128  2a 00 00 0a                                      beq #0x6241d8
0062412c  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624130  00 50 a0 e3                                      mov r5, #0
00624134  05 10 98 e7                                      ldr r1, [r8, r5]
00624138  0a 00 a0 e1                                      mov r0, sl
0062413c  0a ab f3 eb                                      bl #0x30ed6c
00624140  06 10 a0 e1                                      mov r1, r6
00624144  96 aa f3 eb                                      bl #0x30eba4
00624148  05 00 87 e7                                      str r0, [r7, r5]
0062414c  04 50 85 e2                                      add r5, r5, #4
00624150  10 00 55 e3                                      cmp r5, #0x10
00624154  05 60 97 17                                      ldrne r6, [r7, r5]
00624158  f5 ff ff 1a                                      bne #0x624134
0062415c  01 90 89 e2                                      add sb, sb, #1
00624160  04 00 59 e1                                      cmp sb, r4
00624164  10 80 88 e2                                      add r8, r8, #0x10
00624168  00 60 9d 15                                      ldrne r6, [sp]
0062416c  ee ff ff 1a                                      bne #0x62412c
00624170  00 10 9d e5                                      ldr r1, [sp]
00624174  04 20 9d e5                                      ldr r2, [sp, #4]
00624178  08 30 9d e5                                      ldr r3, [sp, #8]
0062417c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624180  10 10 8d e5                                      str r1, [sp, #0x10]
00624184  14 20 8d e5                                      str r2, [sp, #0x14]
00624188  18 30 8d e5                                      str r3, [sp, #0x18]
0062418c  1c 60 8d e5                                      str r6, [sp, #0x1c]
00624190  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00624194  48 00 9d e5                                      ldr r0, [sp, #0x48]
00624198  00 20 a0 e3                                      mov r2, #0
0062419c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006241a0  10 30 8d e2                                      add r3, sp, #0x10
006241a4  6f a9 fe eb                                      bl #0x5ce768
006241a8  24 d0 8d e2                                      add sp, sp, #0x24
006241ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006241b0  01 30 a0 e1                                      mov r3, r1
006241b4  04 00 93 e4                                      ldr r0, [r3], #4
006241b8  04 10 91 e5                                      ldr r1, [r1, #4]
006241bc  08 20 93 e5                                      ldr r2, [r3, #8]
006241c0  04 30 93 e5                                      ldr r3, [r3, #4]
006241c4  10 00 8d e5                                      str r0, [sp, #0x10]
006241c8  14 10 8d e5                                      str r1, [sp, #0x14]
006241cc  18 30 8d e5                                      str r3, [sp, #0x18]
006241d0  1c 20 8d e5                                      str r2, [sp, #0x1c]
006241d4  ed ff ff ea                                      b #0x624190
006241d8  06 30 a0 e1                                      mov r3, r6
006241dc  06 20 a0 e1                                      mov r2, r6
006241e0  06 10 a0 e1                                      mov r1, r6
006241e4  e5 ff ff ea                                      b #0x624180

; FUNCTION 0x006245d8, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006245d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006245dc  01 00 53 e3                                      cmp r3, #1
006245e0  24 d0 4d e2                                      sub sp, sp, #0x24
006245e4  03 40 a0 e1                                      mov r4, r3
006245e8  02 b0 a0 e1                                      mov fp, r2
006245ec  2a 00 00 0a                                      beq #0x62469c
006245f0  00 60 a0 e3                                      mov r6, #0
006245f4  00 00 53 e3                                      cmp r3, #0
006245f8  00 60 8d e5                                      str r6, [sp]
006245fc  04 60 8d e5                                      str r6, [sp, #4]
00624600  08 60 8d e5                                      str r6, [sp, #8]
00624604  0c 60 8d e5                                      str r6, [sp, #0xc]
00624608  01 80 a0 11                                      movne r8, r1
0062460c  00 90 a0 13                                      movne sb, #0
00624610  0d 70 a0 11                                      movne r7, sp
00624614  2a 00 00 0a                                      beq #0x6246c4
00624618  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
0062461c  00 50 a0 e3                                      mov r5, #0
00624620  05 10 98 e7                                      ldr r1, [r8, r5]
00624624  0a 00 a0 e1                                      mov r0, sl
00624628  cf a9 f3 eb                                      bl #0x30ed6c
0062462c  06 10 a0 e1                                      mov r1, r6
00624630  5b a9 f3 eb                                      bl #0x30eba4
00624634  05 00 87 e7                                      str r0, [r7, r5]
00624638  04 50 85 e2                                      add r5, r5, #4
0062463c  10 00 55 e3                                      cmp r5, #0x10
00624640  05 60 97 17                                      ldrne r6, [r7, r5]
00624644  f5 ff ff 1a                                      bne #0x624620
00624648  01 90 89 e2                                      add sb, sb, #1
0062464c  04 00 59 e1                                      cmp sb, r4
00624650  10 80 88 e2                                      add r8, r8, #0x10
00624654  00 60 9d 15                                      ldrne r6, [sp]
00624658  ee ff ff 1a                                      bne #0x624618
0062465c  00 10 9d e5                                      ldr r1, [sp]
00624660  04 20 9d e5                                      ldr r2, [sp, #4]
00624664  08 30 9d e5                                      ldr r3, [sp, #8]
00624668  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0062466c  10 10 8d e5                                      str r1, [sp, #0x10]
00624670  14 20 8d e5                                      str r2, [sp, #0x14]
00624674  18 30 8d e5                                      str r3, [sp, #0x18]
00624678  1c 60 8d e5                                      str r6, [sp, #0x1c]
0062467c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00624680  48 00 9d e5                                      ldr r0, [sp, #0x48]
00624684  00 20 a0 e3                                      mov r2, #0
00624688  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0062468c  10 30 8d e2                                      add r3, sp, #0x10
00624690  34 a8 fe eb                                      bl #0x5ce768
00624694  24 d0 8d e2                                      add sp, sp, #0x24
00624698  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062469c  01 30 a0 e1                                      mov r3, r1
006246a0  04 00 93 e4                                      ldr r0, [r3], #4
006246a4  04 10 91 e5                                      ldr r1, [r1, #4]
006246a8  08 20 93 e5                                      ldr r2, [r3, #8]
006246ac  04 30 93 e5                                      ldr r3, [r3, #4]
006246b0  10 00 8d e5                                      str r0, [sp, #0x10]
006246b4  14 10 8d e5                                      str r1, [sp, #0x14]
006246b8  18 30 8d e5                                      str r3, [sp, #0x18]
006246bc  1c 20 8d e5                                      str r2, [sp, #0x1c]
006246c0  ed ff ff ea                                      b #0x62467c
006246c4  06 30 a0 e1                                      mov r3, r6
006246c8  06 20 a0 e1                                      mov r2, r6
006246cc  06 10 a0 e1                                      mov r1, r6
006246d0  e5 ff ff ea                                      b #0x62466c

; FUNCTION 0x006247c8, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006247c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006247cc  01 00 53 e3                                      cmp r3, #1
006247d0  14 d0 4d e2                                      sub sp, sp, #0x14
006247d4  03 40 a0 e1                                      mov r4, r3
006247d8  02 b0 a0 e1                                      mov fp, r2
006247dc  26 00 00 0a                                      beq #0x62487c
006247e0  00 60 a0 e3                                      mov r6, #0
006247e4  00 00 53 e3                                      cmp r3, #0
006247e8  00 60 8d e5                                      str r6, [sp]
006247ec  04 60 8d e5                                      str r6, [sp, #4]
006247f0  08 60 8d e5                                      str r6, [sp, #8]
006247f4  0c 60 8d e5                                      str r6, [sp, #0xc]
006247f8  01 80 a0 11                                      movne r8, r1
006247fc  00 90 a0 13                                      movne sb, #0
00624800  0d 70 a0 11                                      movne r7, sp
00624804  28 00 00 0a                                      beq #0x6248ac
00624808  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
0062480c  00 50 a0 e3                                      mov r5, #0
00624810  05 10 98 e7                                      ldr r1, [r8, r5]
00624814  0a 00 a0 e1                                      mov r0, sl
00624818  53 a9 f3 eb                                      bl #0x30ed6c
0062481c  06 10 a0 e1                                      mov r1, r6
00624820  df a8 f3 eb                                      bl #0x30eba4
00624824  05 00 87 e7                                      str r0, [r7, r5]
00624828  04 50 85 e2                                      add r5, r5, #4
0062482c  10 00 55 e3                                      cmp r5, #0x10
00624830  05 60 97 17                                      ldrne r6, [r7, r5]
00624834  f5 ff ff 1a                                      bne #0x624810
00624838  01 90 89 e2                                      add sb, sb, #1
0062483c  04 00 59 e1                                      cmp sb, r4
00624840  10 80 88 e2                                      add r8, r8, #0x10
00624844  00 60 9d 15                                      ldrne r6, [sp]
00624848  ee ff ff 1a                                      bne #0x624808
0062484c  00 00 9d e5                                      ldr r0, [sp]
00624850  04 10 9d e5                                      ldr r1, [sp, #4]
00624854  08 20 9d e5                                      ldr r2, [sp, #8]
00624858  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0062485c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624860  04 00 83 e4                                      str r0, [r3], #4
00624864  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624868  04 10 80 e5                                      str r1, [r0, #4]
0062486c  08 60 83 e5                                      str r6, [r3, #8]
00624870  04 20 83 e5                                      str r2, [r3, #4]
00624874  14 d0 8d e2                                      add sp, sp, #0x14
00624878  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062487c  01 20 a0 e1                                      mov r2, r1
00624880  04 00 92 e4                                      ldr r0, [r2], #4
00624884  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624888  04 00 83 e4                                      str r0, [r3], #4
0062488c  04 10 91 e5                                      ldr r1, [r1, #4]
00624890  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624894  04 10 80 e5                                      str r1, [r0, #4]
00624898  04 10 92 e5                                      ldr r1, [r2, #4]
0062489c  04 10 83 e5                                      str r1, [r3, #4]
006248a0  08 20 92 e5                                      ldr r2, [r2, #8]
006248a4  08 20 83 e5                                      str r2, [r3, #8]
006248a8  f1 ff ff ea                                      b #0x624874
006248ac  06 20 a0 e1                                      mov r2, r6
006248b0  06 10 a0 e1                                      mov r1, r6
006248b4  06 00 a0 e1                                      mov r0, r6
006248b8  e7 ff ff ea                                      b #0x62485c

; FUNCTION 0x00624c8c, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00624c8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00624c90  01 00 53 e3                                      cmp r3, #1
00624c94  14 d0 4d e2                                      sub sp, sp, #0x14
00624c98  03 40 a0 e1                                      mov r4, r3
00624c9c  02 b0 a0 e1                                      mov fp, r2
00624ca0  26 00 00 0a                                      beq #0x624d40
00624ca4  00 60 a0 e3                                      mov r6, #0
00624ca8  00 00 53 e3                                      cmp r3, #0
00624cac  00 60 8d e5                                      str r6, [sp]
00624cb0  04 60 8d e5                                      str r6, [sp, #4]
00624cb4  08 60 8d e5                                      str r6, [sp, #8]
00624cb8  0c 60 8d e5                                      str r6, [sp, #0xc]
00624cbc  01 80 a0 11                                      movne r8, r1
00624cc0  00 90 a0 13                                      movne sb, #0
00624cc4  0d 70 a0 11                                      movne r7, sp
00624cc8  28 00 00 0a                                      beq #0x624d70
00624ccc  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624cd0  00 50 a0 e3                                      mov r5, #0
00624cd4  05 10 98 e7                                      ldr r1, [r8, r5]
00624cd8  0a 00 a0 e1                                      mov r0, sl
00624cdc  22 a8 f3 eb                                      bl #0x30ed6c
00624ce0  06 10 a0 e1                                      mov r1, r6
00624ce4  ae a7 f3 eb                                      bl #0x30eba4
00624ce8  05 00 87 e7                                      str r0, [r7, r5]
00624cec  04 50 85 e2                                      add r5, r5, #4
00624cf0  10 00 55 e3                                      cmp r5, #0x10
00624cf4  05 60 97 17                                      ldrne r6, [r7, r5]
00624cf8  f5 ff ff 1a                                      bne #0x624cd4
00624cfc  01 90 89 e2                                      add sb, sb, #1
00624d00  04 00 59 e1                                      cmp sb, r4
00624d04  10 80 88 e2                                      add r8, r8, #0x10
00624d08  00 60 9d 15                                      ldrne r6, [sp]
00624d0c  ee ff ff 1a                                      bne #0x624ccc
00624d10  00 00 9d e5                                      ldr r0, [sp]
00624d14  04 10 9d e5                                      ldr r1, [sp, #4]
00624d18  08 20 9d e5                                      ldr r2, [sp, #8]
00624d1c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624d20  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624d24  04 00 83 e4                                      str r0, [r3], #4
00624d28  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624d2c  04 10 80 e5                                      str r1, [r0, #4]
00624d30  08 60 83 e5                                      str r6, [r3, #8]
00624d34  04 20 83 e5                                      str r2, [r3, #4]
00624d38  14 d0 8d e2                                      add sp, sp, #0x14
00624d3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00624d40  01 20 a0 e1                                      mov r2, r1
00624d44  04 00 92 e4                                      ldr r0, [r2], #4
00624d48  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624d4c  04 00 83 e4                                      str r0, [r3], #4
00624d50  04 10 91 e5                                      ldr r1, [r1, #4]
00624d54  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624d58  04 10 80 e5                                      str r1, [r0, #4]
00624d5c  04 10 92 e5                                      ldr r1, [r2, #4]
00624d60  04 10 83 e5                                      str r1, [r3, #4]
00624d64  08 20 92 e5                                      ldr r2, [r2, #8]
00624d68  08 20 83 e5                                      str r2, [r3, #8]
00624d6c  f1 ff ff ea                                      b #0x624d38
00624d70  06 20 a0 e1                                      mov r2, r6
00624d74  06 10 a0 e1                                      mov r1, r6
00624d78  06 00 a0 e1                                      mov r0, r6
00624d7c  e7 ff ff ea                                      b #0x624d20
