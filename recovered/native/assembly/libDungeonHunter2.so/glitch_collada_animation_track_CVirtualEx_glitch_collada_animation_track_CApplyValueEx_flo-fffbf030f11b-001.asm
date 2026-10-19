; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed98, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee70, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getValueSize() const
; decoder-mode: arm
0060ee70  08 00 a0 e3                                      mov r0, #8
0060ee74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee78, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f78c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f78c  10 40 2d e9                                      push {r4, lr}
0060f790  00 40 a0 e1                                      mov r4, r0
0060f794  c5 fa f3 eb                                      bl #0x30e2b0
0060f798  04 00 a0 e1                                      mov r0, r4
0060f79c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611234, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getInstance()
; decoder-mode: arm
00611234  70 40 2d e9                                      push {r4, r5, r6, lr}
00611238  70 40 9f e5                                      ldr r4, [pc, #0x70]
0061123c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611240  04 40 8f e0                                      add r4, pc, r4
00611244  03 60 94 e7                                      ldr r6, [r4, r3]
00611248  00 30 96 e5                                      ldr r3, [r6]
0061124c  01 00 13 e3                                      tst r3, #1
00611250  02 00 00 0a                                      beq #0x611260
00611254  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611258  05 00 94 e7                                      ldr r0, [r4, r5]
0061125c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611260  06 00 a0 e1                                      mov r0, r6
00611264  40 f5 f3 eb                                      bl #0x30e76c
00611268  00 00 50 e3                                      cmp r0, #0
0061126c  f8 ff ff 0a                                      beq #0x611254
00611270  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611274  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611278  06 00 a0 e1                                      mov r0, r6
0061127c  03 30 94 e7                                      ldr r3, [r4, r3]
00611280  05 60 94 e7                                      ldr r6, [r4, r5]
00611284  08 30 83 e2                                      add r3, r3, #8
00611288  00 30 86 e5                                      str r3, [r6]
0061128c  ea f5 f3 eb                                      bl #0x30ea3c
00611290  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611294  06 00 a0 e1                                      mov r0, r6
00611298  03 10 94 e7                                      ldr r1, [r4, r3]
0061129c  20 30 9f e5                                      ldr r3, [pc, #0x20]
006112a0  03 20 94 e7                                      ldr r2, [r4, r3]
006112a4  16 f4 f3 eb                                      bl #0x30e304
006112a8  05 00 94 e7                                      ldr r0, [r4, r5]
006112ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006112b0  50 38 38 00 20 41 00 00 08 2c 00 00 20 21 00 00  .byte 0x50, 0x38, 0x38, 0x00, 0x20, 0x41, 0x00, 0x00, 0x08, 0x2c, 0x00, 0x00, 0x20, 0x21, 0x00, 0x00
006112c0  50 0e 00 00 90 18 00 00                          .byte 0x50, 0x0e, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618df8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618df8  00 20 a0 e3                                      mov r2, #0
00618dfc  01 30 a0 e1                                      mov r3, r1
00618e00  01 20 c3 e4                                      strb r2, [r3], #1
00618e04  01 30 83 e2                                      add r3, r3, #1
00618e08  01 20 c1 e5                                      strb r2, [r1, #1]
00618e0c  01 20 c3 e4                                      strb r2, [r3], #1
00618e10  01 20 c3 e4                                      strb r2, [r3], #1
00618e14  01 20 c3 e4                                      strb r2, [r3], #1
00618e18  01 20 c3 e4                                      strb r2, [r3], #1
00618e1c  01 20 c3 e4                                      strb r2, [r3], #1
00618e20  00 20 c3 e5                                      strb r2, [r3]
00618e24  1e ff 2f e1                                      bx lr

; FUNCTION 0x006190bc, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006190bc  00 c0 a0 e3                                      mov ip, #0
006190c0  01 30 a0 e1                                      mov r3, r1
006190c4  b8 10 dc e1                                      ldrh r1, [ip, #8]
006190c8  02 00 a0 e1                                      mov r0, r2
006190cc  0c 20 a0 e1                                      mov r2, ip
006190d0  e2 b6 fe ea                                      b #0x5c6c60

; FUNCTION 0x0061e83c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061e83c  01 00 a0 e1                                      mov r0, r1
0061e840  02 10 a0 e1                                      mov r1, r2
0061e844  03 20 a0 e1                                      mov r2, r3
0061e848  e2 ff ff ea                                      b #0x61e7d8

; FUNCTION 0x0061e84c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061e84c  30 40 2d e9                                      push {r4, r5, lr}
0061e850  0c d0 4d e2                                      sub sp, sp, #0xc
0061e854  01 00 a0 e1                                      mov r0, r1
0061e858  02 10 a0 e1                                      mov r1, r2
0061e85c  0d 20 a0 e1                                      mov r2, sp
0061e860  03 50 a0 e1                                      mov r5, r3
0061e864  db ff ff eb                                      bl #0x61e7d8
0061e868  18 30 9d e5                                      ldr r3, [sp, #0x18]
0061e86c  05 00 a0 e1                                      mov r0, r5
0061e870  00 20 a0 e3                                      mov r2, #0
0061e874  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061e878  0d 30 a0 e1                                      mov r3, sp
0061e87c  0d 40 a0 e1                                      mov r4, sp
0061e880  f6 a0 fe eb                                      bl #0x5c6c60
0061e884  0c d0 8d e2                                      add sp, sp, #0xc
0061e888  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061e930, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061e930  01 00 a0 e1                                      mov r0, r1
0061e934  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e938  02 10 a0 e1                                      mov r1, r2
0061e93c  03 20 a0 e1                                      mov r2, r3
0061e940  00 30 9d e5                                      ldr r3, [sp]
0061e944  00 c0 8d e5                                      str ip, [sp]
0061e948  cf ff ff ea                                      b #0x61e88c

; FUNCTION 0x0061e980, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061e980  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e984  01 00 a0 e1                                      mov r0, r1
0061e988  02 10 a0 e1                                      mov r1, r2
0061e98c  03 20 a0 e1                                      mov r2, r3
0061e990  00 30 9d e5                                      ldr r3, [sp]
0061e994  00 c0 8d e5                                      str ip, [sp]
0061e998  08 c0 9d e5                                      ldr ip, [sp, #8]
0061e99c  04 c0 8d e5                                      str ip, [sp, #4]
0061e9a0  e9 ff ff ea                                      b #0x61e94c

; FUNCTION 0x0061ea04, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061ea04  01 00 a0 e1                                      mov r0, r1
0061ea08  02 10 a0 e1                                      mov r1, r2
0061ea0c  03 20 a0 e1                                      mov r2, r3
0061ea10  00 30 9d e5                                      ldr r3, [sp]
0061ea14  e2 ff ff ea                                      b #0x61e9a4

; FUNCTION 0x0061eadc, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061eadc  04 c0 9d e5                                      ldr ip, [sp, #4]
0061eae0  01 00 a0 e1                                      mov r0, r1
0061eae4  02 10 a0 e1                                      mov r1, r2
0061eae8  03 20 a0 e1                                      mov r2, r3
0061eaec  00 30 9d e5                                      ldr r3, [sp]
0061eaf0  00 c0 8d e5                                      str ip, [sp]
0061eaf4  08 c0 9d e5                                      ldr ip, [sp, #8]
0061eaf8  04 c0 8d e5                                      str ip, [sp, #4]
0061eafc  c5 ff ff ea                                      b #0x61ea18

; FUNCTION 0x00621c64, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621c64  01 00 a0 e1                                      mov r0, r1
00621c68  04 c0 9d e5                                      ldr ip, [sp, #4]
00621c6c  02 10 a0 e1                                      mov r1, r2
00621c70  03 20 a0 e1                                      mov r2, r3
00621c74  00 30 9d e5                                      ldr r3, [sp]
00621c78  00 c0 8d e5                                      str ip, [sp]
00621c7c  c7 ff ff ea                                      b #0x621ba0

; FUNCTION 0x00621d44, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621d44  01 00 a0 e1                                      mov r0, r1
00621d48  04 c0 9d e5                                      ldr ip, [sp, #4]
00621d4c  02 10 a0 e1                                      mov r1, r2
00621d50  03 20 a0 e1                                      mov r2, r3
00621d54  00 30 9d e5                                      ldr r3, [sp]
00621d58  00 c0 8d e5                                      str ip, [sp]
00621d5c  c7 ff ff ea                                      b #0x621c80

; FUNCTION 0x00621f20, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00621f20  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00621f24  01 00 53 e3                                      cmp r3, #1
00621f28  03 40 a0 e1                                      mov r4, r3
00621f2c  02 90 a0 e1                                      mov sb, r2
00621f30  28 b0 9d e5                                      ldr fp, [sp, #0x28]
00621f34  01 50 a0 e1                                      mov r5, r1
00621f38  1c 00 00 0a                                      beq #0x621fb0
00621f3c  00 00 53 e3                                      cmp r3, #0
00621f40  00 80 a0 03                                      moveq r8, #0
00621f44  08 a0 a0 01                                      moveq sl, r8
00621f48  15 00 00 0a                                      beq #0x621fa4
00621f4c  00 80 a0 e3                                      mov r8, #0
00621f50  00 60 a0 e3                                      mov r6, #0
00621f54  08 a0 a0 e1                                      mov sl, r8
00621f58  06 70 99 e7                                      ldr r7, [sb, r6]
00621f5c  00 10 95 e5                                      ldr r1, [r5]
00621f60  04 60 86 e2                                      add r6, r6, #4
00621f64  07 00 a0 e1                                      mov r0, r7
00621f68  7f b3 f3 eb                                      bl #0x30ed6c
00621f6c  00 10 a0 e1                                      mov r1, r0
00621f70  08 00 a0 e1                                      mov r0, r8
00621f74  0a b3 f3 eb                                      bl #0x30eba4
00621f78  04 10 95 e5                                      ldr r1, [r5, #4]
00621f7c  00 80 a0 e1                                      mov r8, r0
00621f80  07 00 a0 e1                                      mov r0, r7
00621f84  78 b3 f3 eb                                      bl #0x30ed6c
00621f88  00 10 a0 e1                                      mov r1, r0
00621f8c  0a 00 a0 e1                                      mov r0, sl
00621f90  03 b3 f3 eb                                      bl #0x30eba4
00621f94  01 40 54 e2                                      subs r4, r4, #1
00621f98  00 a0 a0 e1                                      mov sl, r0
00621f9c  08 50 85 e2                                      add r5, r5, #8
00621fa0  ec ff ff 1a                                      bne #0x621f58
00621fa4  04 a0 8b e5                                      str sl, [fp, #4]
00621fa8  00 80 8b e5                                      str r8, [fp]
00621fac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621fb0  00 30 91 e5                                      ldr r3, [r1]
00621fb4  00 30 8b e5                                      str r3, [fp]
00621fb8  04 30 91 e5                                      ldr r3, [r1, #4]
00621fbc  04 30 8b e5                                      str r3, [fp, #4]
00621fc0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062210c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062210c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00622110  01 00 53 e3                                      cmp r3, #1
00622114  03 40 a0 e1                                      mov r4, r3
00622118  02 90 a0 e1                                      mov sb, r2
0062211c  28 b0 9d e5                                      ldr fp, [sp, #0x28]
00622120  01 50 a0 e1                                      mov r5, r1
00622124  1c 00 00 0a                                      beq #0x62219c
00622128  00 00 53 e3                                      cmp r3, #0
0062212c  00 80 a0 03                                      moveq r8, #0
00622130  08 a0 a0 01                                      moveq sl, r8
00622134  15 00 00 0a                                      beq #0x622190
00622138  00 80 a0 e3                                      mov r8, #0
0062213c  00 60 a0 e3                                      mov r6, #0
00622140  08 a0 a0 e1                                      mov sl, r8
00622144  06 70 99 e7                                      ldr r7, [sb, r6]
00622148  00 10 95 e5                                      ldr r1, [r5]
0062214c  04 60 86 e2                                      add r6, r6, #4
00622150  07 00 a0 e1                                      mov r0, r7
00622154  04 b3 f3 eb                                      bl #0x30ed6c
00622158  00 10 a0 e1                                      mov r1, r0
0062215c  08 00 a0 e1                                      mov r0, r8
00622160  8f b2 f3 eb                                      bl #0x30eba4
00622164  04 10 95 e5                                      ldr r1, [r5, #4]
00622168  00 80 a0 e1                                      mov r8, r0
0062216c  07 00 a0 e1                                      mov r0, r7
00622170  fd b2 f3 eb                                      bl #0x30ed6c
00622174  00 10 a0 e1                                      mov r1, r0
00622178  0a 00 a0 e1                                      mov r0, sl
0062217c  88 b2 f3 eb                                      bl #0x30eba4
00622180  01 40 54 e2                                      subs r4, r4, #1
00622184  00 a0 a0 e1                                      mov sl, r0
00622188  08 50 85 e2                                      add r5, r5, #8
0062218c  ec ff ff 1a                                      bne #0x622144
00622190  04 a0 8b e5                                      str sl, [fp, #4]
00622194  00 80 8b e5                                      str r8, [fp]
00622198  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062219c  00 30 91 e5                                      ldr r3, [r1]
006221a0  00 30 8b e5                                      str r3, [fp]
006221a4  04 30 91 e5                                      ldr r3, [r1, #4]
006221a8  04 30 8b e5                                      str r3, [fp, #4]
006221ac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
