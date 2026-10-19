; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060eda8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060eda8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee40, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getValueSize() const
; decoder-mode: arm
0060ee40  10 00 a0 e3                                      mov r0, #0x10
0060ee44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee48, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f7b4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f7b4  10 40 2d e9                                      push {r4, lr}
0060f7b8  00 40 a0 e1                                      mov r4, r0
0060f7bc  bb fa f3 eb                                      bl #0x30e2b0
0060f7c0  04 00 a0 e1                                      mov r0, r4
0060f7c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0061135c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getInstance()
; decoder-mode: arm
0061135c  70 40 2d e9                                      push {r4, r5, r6, lr}
00611360  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611364  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611368  04 40 8f e0                                      add r4, pc, r4
0061136c  03 60 94 e7                                      ldr r6, [r4, r3]
00611370  00 30 96 e5                                      ldr r3, [r6]
00611374  01 00 13 e3                                      tst r3, #1
00611378  02 00 00 0a                                      beq #0x611388
0061137c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611380  05 00 94 e7                                      ldr r0, [r4, r5]
00611384  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611388  06 00 a0 e1                                      mov r0, r6
0061138c  f6 f4 f3 eb                                      bl #0x30e76c
00611390  00 00 50 e3                                      cmp r0, #0
00611394  f8 ff ff 0a                                      beq #0x61137c
00611398  44 30 9f e5                                      ldr r3, [pc, #0x44]
0061139c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006113a0  06 00 a0 e1                                      mov r0, r6
006113a4  03 30 94 e7                                      ldr r3, [r4, r3]
006113a8  05 60 94 e7                                      ldr r6, [r4, r5]
006113ac  08 30 83 e2                                      add r3, r3, #8
006113b0  00 30 86 e5                                      str r3, [r6]
006113b4  a0 f5 f3 eb                                      bl #0x30ea3c
006113b8  28 30 9f e5                                      ldr r3, [pc, #0x28]
006113bc  06 00 a0 e1                                      mov r0, r6
006113c0  03 10 94 e7                                      ldr r1, [r4, r3]
006113c4  20 30 9f e5                                      ldr r3, [pc, #0x20]
006113c8  03 20 94 e7                                      ldr r2, [r4, r3]
006113cc  cc f3 f3 eb                                      bl #0x30e304
006113d0  05 00 94 e7                                      ldr r0, [r4, r5]
006113d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006113d8  28 37 38 00 6c 0e 00 00 1c 28 00 00 e0 39 00 00  .byte 0x28, 0x37, 0x38, 0x00, 0x6c, 0x0e, 0x00, 0x00, 0x1c, 0x28, 0x00, 0x00, 0xe0, 0x39, 0x00, 0x00
006113e8  24 38 00 00 90 18 00 00                          .byte 0x24, 0x38, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618e68, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618e68  01 00 a0 e1                                      mov r0, r1
00618e6c  10 20 a0 e3                                      mov r2, #0x10
00618e70  00 10 a0 e3                                      mov r1, #0
00618e74  79 d5 f3 ea                                      b #0x30e460

; FUNCTION 0x0061c9b8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061c9b8  00 c0 a0 e3                                      mov ip, #0
0061c9bc  01 30 a0 e1                                      mov r3, r1
0061c9c0  b8 10 dc e1                                      ldrh r1, [ip, #8]
0061c9c4  02 00 a0 e1                                      mov r0, r2
0061c9c8  0c 20 a0 e1                                      mov r2, ip
0061c9cc  65 c7 fe ea                                      b #0x5ce768

; FUNCTION 0x0061eedc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061eedc  01 00 a0 e1                                      mov r0, r1
0061eee0  02 10 a0 e1                                      mov r1, r2
0061eee4  03 20 a0 e1                                      mov r2, r3
0061eee8  dd ff ff ea                                      b #0x61ee64

; FUNCTION 0x0061eeec, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061eeec  30 40 2d e9                                      push {r4, r5, lr}
0061eef0  14 d0 4d e2                                      sub sp, sp, #0x14
0061eef4  01 00 a0 e1                                      mov r0, r1
0061eef8  02 10 a0 e1                                      mov r1, r2
0061eefc  0d 20 a0 e1                                      mov r2, sp
0061ef00  03 50 a0 e1                                      mov r5, r3
0061ef04  d6 ff ff eb                                      bl #0x61ee64
0061ef08  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061ef0c  05 00 a0 e1                                      mov r0, r5
0061ef10  00 20 a0 e3                                      mov r2, #0
0061ef14  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061ef18  0d 30 a0 e1                                      mov r3, sp
0061ef1c  0d 40 a0 e1                                      mov r4, sp
0061ef20  10 be fe eb                                      bl #0x5ce768
0061ef24  14 d0 8d e2                                      add sp, sp, #0x14
0061ef28  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061efe0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061efe0  01 00 a0 e1                                      mov r0, r1
0061efe4  04 c0 9d e5                                      ldr ip, [sp, #4]
0061efe8  02 10 a0 e1                                      mov r1, r2
0061efec  03 20 a0 e1                                      mov r2, r3
0061eff0  00 30 9d e5                                      ldr r3, [sp]
0061eff4  00 c0 8d e5                                      str ip, [sp]
0061eff8  cb ff ff ea                                      b #0x61ef2c

; FUNCTION 0x0061f030, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061f030  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f034  01 00 a0 e1                                      mov r0, r1
0061f038  02 10 a0 e1                                      mov r1, r2
0061f03c  03 20 a0 e1                                      mov r2, r3
0061f040  00 30 9d e5                                      ldr r3, [sp]
0061f044  00 c0 8d e5                                      str ip, [sp]
0061f048  08 c0 9d e5                                      ldr ip, [sp, #8]
0061f04c  04 c0 8d e5                                      str ip, [sp, #4]
0061f050  e9 ff ff ea                                      b #0x61effc

; FUNCTION 0x0061f0c8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061f0c8  01 00 a0 e1                                      mov r0, r1
0061f0cc  02 10 a0 e1                                      mov r1, r2
0061f0d0  03 20 a0 e1                                      mov r2, r3
0061f0d4  00 30 9d e5                                      ldr r3, [sp]
0061f0d8  dd ff ff ea                                      b #0x61f054

; FUNCTION 0x0061f1b8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061f1b8  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f1bc  01 00 a0 e1                                      mov r0, r1
0061f1c0  02 10 a0 e1                                      mov r1, r2
0061f1c4  03 20 a0 e1                                      mov r2, r3
0061f1c8  00 30 9d e5                                      ldr r3, [sp]
0061f1cc  00 c0 8d e5                                      str ip, [sp]
0061f1d0  08 c0 9d e5                                      ldr ip, [sp, #8]
0061f1d4  04 c0 8d e5                                      str ip, [sp, #4]
0061f1d8  bf ff ff ea                                      b #0x61f0dc

; FUNCTION 0x00623f04, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00623f04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00623f08  01 00 53 e3                                      cmp r3, #1
00623f0c  14 d0 4d e2                                      sub sp, sp, #0x14
00623f10  03 40 a0 e1                                      mov r4, r3
00623f14  02 b0 a0 e1                                      mov fp, r2
00623f18  26 00 00 0a                                      beq #0x623fb8
00623f1c  00 60 a0 e3                                      mov r6, #0
00623f20  00 00 53 e3                                      cmp r3, #0
00623f24  00 60 8d e5                                      str r6, [sp]
00623f28  04 60 8d e5                                      str r6, [sp, #4]
00623f2c  08 60 8d e5                                      str r6, [sp, #8]
00623f30  0c 60 8d e5                                      str r6, [sp, #0xc]
00623f34  01 80 a0 11                                      movne r8, r1
00623f38  00 90 a0 13                                      movne sb, #0
00623f3c  0d 70 a0 11                                      movne r7, sp
00623f40  28 00 00 0a                                      beq #0x623fe8
00623f44  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00623f48  00 50 a0 e3                                      mov r5, #0
00623f4c  05 10 98 e7                                      ldr r1, [r8, r5]
00623f50  0a 00 a0 e1                                      mov r0, sl
00623f54  84 ab f3 eb                                      bl #0x30ed6c
00623f58  06 10 a0 e1                                      mov r1, r6
00623f5c  10 ab f3 eb                                      bl #0x30eba4
00623f60  05 00 87 e7                                      str r0, [r7, r5]
00623f64  04 50 85 e2                                      add r5, r5, #4
00623f68  10 00 55 e3                                      cmp r5, #0x10
00623f6c  05 60 97 17                                      ldrne r6, [r7, r5]
00623f70  f5 ff ff 1a                                      bne #0x623f4c
00623f74  01 90 89 e2                                      add sb, sb, #1
00623f78  04 00 59 e1                                      cmp sb, r4
00623f7c  10 80 88 e2                                      add r8, r8, #0x10
00623f80  00 60 9d 15                                      ldrne r6, [sp]
00623f84  ee ff ff 1a                                      bne #0x623f44
00623f88  00 00 9d e5                                      ldr r0, [sp]
00623f8c  04 10 9d e5                                      ldr r1, [sp, #4]
00623f90  08 20 9d e5                                      ldr r2, [sp, #8]
00623f94  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00623f98  38 30 9d e5                                      ldr r3, [sp, #0x38]
00623f9c  04 00 83 e4                                      str r0, [r3], #4
00623fa0  38 00 9d e5                                      ldr r0, [sp, #0x38]
00623fa4  04 10 80 e5                                      str r1, [r0, #4]
00623fa8  08 60 83 e5                                      str r6, [r3, #8]
00623fac  04 20 83 e5                                      str r2, [r3, #4]
00623fb0  14 d0 8d e2                                      add sp, sp, #0x14
00623fb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00623fb8  01 20 a0 e1                                      mov r2, r1
00623fbc  04 00 92 e4                                      ldr r0, [r2], #4
00623fc0  38 30 9d e5                                      ldr r3, [sp, #0x38]
00623fc4  04 00 83 e4                                      str r0, [r3], #4
00623fc8  04 10 91 e5                                      ldr r1, [r1, #4]
00623fcc  38 00 9d e5                                      ldr r0, [sp, #0x38]
00623fd0  04 10 80 e5                                      str r1, [r0, #4]
00623fd4  04 10 92 e5                                      ldr r1, [r2, #4]
00623fd8  04 10 83 e5                                      str r1, [r3, #4]
00623fdc  08 20 92 e5                                      ldr r2, [r2, #8]
00623fe0  08 20 83 e5                                      str r2, [r3, #8]
00623fe4  f1 ff ff ea                                      b #0x623fb0
00623fe8  06 20 a0 e1                                      mov r2, r6
00623fec  06 10 a0 e1                                      mov r1, r6
00623ff0  06 00 a0 e1                                      mov r0, r6
00623ff4  e7 ff ff ea                                      b #0x623f98

; FUNCTION 0x006249b0, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006249b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006249b4  01 00 53 e3                                      cmp r3, #1
006249b8  14 d0 4d e2                                      sub sp, sp, #0x14
006249bc  03 40 a0 e1                                      mov r4, r3
006249c0  02 b0 a0 e1                                      mov fp, r2
006249c4  26 00 00 0a                                      beq #0x624a64
006249c8  00 60 a0 e3                                      mov r6, #0
006249cc  00 00 53 e3                                      cmp r3, #0
006249d0  00 60 8d e5                                      str r6, [sp]
006249d4  04 60 8d e5                                      str r6, [sp, #4]
006249d8  08 60 8d e5                                      str r6, [sp, #8]
006249dc  0c 60 8d e5                                      str r6, [sp, #0xc]
006249e0  01 80 a0 11                                      movne r8, r1
006249e4  00 90 a0 13                                      movne sb, #0
006249e8  0d 70 a0 11                                      movne r7, sp
006249ec  28 00 00 0a                                      beq #0x624a94
006249f0  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
006249f4  00 50 a0 e3                                      mov r5, #0
006249f8  05 10 98 e7                                      ldr r1, [r8, r5]
006249fc  0a 00 a0 e1                                      mov r0, sl
00624a00  d9 a8 f3 eb                                      bl #0x30ed6c
00624a04  06 10 a0 e1                                      mov r1, r6
00624a08  65 a8 f3 eb                                      bl #0x30eba4
00624a0c  05 00 87 e7                                      str r0, [r7, r5]
00624a10  04 50 85 e2                                      add r5, r5, #4
00624a14  10 00 55 e3                                      cmp r5, #0x10
00624a18  05 60 97 17                                      ldrne r6, [r7, r5]
00624a1c  f5 ff ff 1a                                      bne #0x6249f8
00624a20  01 90 89 e2                                      add sb, sb, #1
00624a24  04 00 59 e1                                      cmp sb, r4
00624a28  10 80 88 e2                                      add r8, r8, #0x10
00624a2c  00 60 9d 15                                      ldrne r6, [sp]
00624a30  ee ff ff 1a                                      bne #0x6249f0
00624a34  00 00 9d e5                                      ldr r0, [sp]
00624a38  04 10 9d e5                                      ldr r1, [sp, #4]
00624a3c  08 20 9d e5                                      ldr r2, [sp, #8]
00624a40  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624a44  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624a48  04 00 83 e4                                      str r0, [r3], #4
00624a4c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624a50  04 10 80 e5                                      str r1, [r0, #4]
00624a54  08 60 83 e5                                      str r6, [r3, #8]
00624a58  04 20 83 e5                                      str r2, [r3, #4]
00624a5c  14 d0 8d e2                                      add sp, sp, #0x14
00624a60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00624a64  01 20 a0 e1                                      mov r2, r1
00624a68  04 00 92 e4                                      ldr r0, [r2], #4
00624a6c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624a70  04 00 83 e4                                      str r0, [r3], #4
00624a74  04 10 91 e5                                      ldr r1, [r1, #4]
00624a78  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624a7c  04 10 80 e5                                      str r1, [r0, #4]
00624a80  04 10 92 e5                                      ldr r1, [r2, #4]
00624a84  04 10 83 e5                                      str r1, [r3, #4]
00624a88  08 20 92 e5                                      ldr r2, [r2, #8]
00624a8c  08 20 83 e5                                      str r2, [r3, #8]
00624a90  f1 ff ff ea                                      b #0x624a5c
00624a94  06 20 a0 e1                                      mov r2, r6
00624a98  06 10 a0 e1                                      mov r1, r6
00624a9c  06 00 a0 e1                                      mov r0, r6
00624aa0  e7 ff ff ea                                      b #0x624a44

; FUNCTION 0x00624fb4, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00624fb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00624fb8  01 00 53 e3                                      cmp r3, #1
00624fbc  24 d0 4d e2                                      sub sp, sp, #0x24
00624fc0  03 40 a0 e1                                      mov r4, r3
00624fc4  02 b0 a0 e1                                      mov fp, r2
00624fc8  2a 00 00 0a                                      beq #0x625078
00624fcc  00 60 a0 e3                                      mov r6, #0
00624fd0  00 00 53 e3                                      cmp r3, #0
00624fd4  00 60 8d e5                                      str r6, [sp]
00624fd8  04 60 8d e5                                      str r6, [sp, #4]
00624fdc  08 60 8d e5                                      str r6, [sp, #8]
00624fe0  0c 60 8d e5                                      str r6, [sp, #0xc]
00624fe4  01 80 a0 11                                      movne r8, r1
00624fe8  00 90 a0 13                                      movne sb, #0
00624fec  0d 70 a0 11                                      movne r7, sp
00624ff0  2a 00 00 0a                                      beq #0x6250a0
00624ff4  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624ff8  00 50 a0 e3                                      mov r5, #0
00624ffc  05 10 98 e7                                      ldr r1, [r8, r5]
00625000  0a 00 a0 e1                                      mov r0, sl
00625004  58 a7 f3 eb                                      bl #0x30ed6c
00625008  06 10 a0 e1                                      mov r1, r6
0062500c  e4 a6 f3 eb                                      bl #0x30eba4
00625010  05 00 87 e7                                      str r0, [r7, r5]
00625014  04 50 85 e2                                      add r5, r5, #4
00625018  10 00 55 e3                                      cmp r5, #0x10
0062501c  05 60 97 17                                      ldrne r6, [r7, r5]
00625020  f5 ff ff 1a                                      bne #0x624ffc
00625024  01 90 89 e2                                      add sb, sb, #1
00625028  04 00 59 e1                                      cmp sb, r4
0062502c  10 80 88 e2                                      add r8, r8, #0x10
00625030  00 60 9d 15                                      ldrne r6, [sp]
00625034  ee ff ff 1a                                      bne #0x624ff4
00625038  00 10 9d e5                                      ldr r1, [sp]
0062503c  04 20 9d e5                                      ldr r2, [sp, #4]
00625040  08 30 9d e5                                      ldr r3, [sp, #8]
00625044  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00625048  10 10 8d e5                                      str r1, [sp, #0x10]
0062504c  14 20 8d e5                                      str r2, [sp, #0x14]
00625050  18 30 8d e5                                      str r3, [sp, #0x18]
00625054  1c 60 8d e5                                      str r6, [sp, #0x1c]
00625058  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0062505c  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625060  00 20 a0 e3                                      mov r2, #0
00625064  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625068  10 30 8d e2                                      add r3, sp, #0x10
0062506c  bd a5 fe eb                                      bl #0x5ce768
00625070  24 d0 8d e2                                      add sp, sp, #0x24
00625074  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625078  01 30 a0 e1                                      mov r3, r1
0062507c  04 00 93 e4                                      ldr r0, [r3], #4
00625080  04 10 91 e5                                      ldr r1, [r1, #4]
00625084  08 20 93 e5                                      ldr r2, [r3, #8]
00625088  04 30 93 e5                                      ldr r3, [r3, #4]
0062508c  10 00 8d e5                                      str r0, [sp, #0x10]
00625090  14 10 8d e5                                      str r1, [sp, #0x14]
00625094  18 30 8d e5                                      str r3, [sp, #0x18]
00625098  1c 20 8d e5                                      str r2, [sp, #0x1c]
0062509c  ed ff ff ea                                      b #0x625058
006250a0  06 30 a0 e1                                      mov r3, r6
006250a4  06 20 a0 e1                                      mov r2, r6
006250a8  06 10 a0 e1                                      mov r1, r6
006250ac  e5 ff ff ea                                      b #0x625048

; FUNCTION 0x006250b0, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006250b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006250b4  01 00 53 e3                                      cmp r3, #1
006250b8  24 d0 4d e2                                      sub sp, sp, #0x24
006250bc  03 40 a0 e1                                      mov r4, r3
006250c0  02 b0 a0 e1                                      mov fp, r2
006250c4  2a 00 00 0a                                      beq #0x625174
006250c8  00 60 a0 e3                                      mov r6, #0
006250cc  00 00 53 e3                                      cmp r3, #0
006250d0  00 60 8d e5                                      str r6, [sp]
006250d4  04 60 8d e5                                      str r6, [sp, #4]
006250d8  08 60 8d e5                                      str r6, [sp, #8]
006250dc  0c 60 8d e5                                      str r6, [sp, #0xc]
006250e0  01 80 a0 11                                      movne r8, r1
006250e4  00 90 a0 13                                      movne sb, #0
006250e8  0d 70 a0 11                                      movne r7, sp
006250ec  2a 00 00 0a                                      beq #0x62519c
006250f0  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
006250f4  00 50 a0 e3                                      mov r5, #0
006250f8  05 10 98 e7                                      ldr r1, [r8, r5]
006250fc  0a 00 a0 e1                                      mov r0, sl
00625100  19 a7 f3 eb                                      bl #0x30ed6c
00625104  06 10 a0 e1                                      mov r1, r6
00625108  a5 a6 f3 eb                                      bl #0x30eba4
0062510c  05 00 87 e7                                      str r0, [r7, r5]
00625110  04 50 85 e2                                      add r5, r5, #4
00625114  10 00 55 e3                                      cmp r5, #0x10
00625118  05 60 97 17                                      ldrne r6, [r7, r5]
0062511c  f5 ff ff 1a                                      bne #0x6250f8
00625120  01 90 89 e2                                      add sb, sb, #1
00625124  04 00 59 e1                                      cmp sb, r4
00625128  10 80 88 e2                                      add r8, r8, #0x10
0062512c  00 60 9d 15                                      ldrne r6, [sp]
00625130  ee ff ff 1a                                      bne #0x6250f0
00625134  00 10 9d e5                                      ldr r1, [sp]
00625138  04 20 9d e5                                      ldr r2, [sp, #4]
0062513c  08 30 9d e5                                      ldr r3, [sp, #8]
00625140  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00625144  10 10 8d e5                                      str r1, [sp, #0x10]
00625148  14 20 8d e5                                      str r2, [sp, #0x14]
0062514c  18 30 8d e5                                      str r3, [sp, #0x18]
00625150  1c 60 8d e5                                      str r6, [sp, #0x1c]
00625154  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625158  48 00 9d e5                                      ldr r0, [sp, #0x48]
0062515c  00 20 a0 e3                                      mov r2, #0
00625160  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625164  10 30 8d e2                                      add r3, sp, #0x10
00625168  7e a5 fe eb                                      bl #0x5ce768
0062516c  24 d0 8d e2                                      add sp, sp, #0x24
00625170  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625174  01 30 a0 e1                                      mov r3, r1
00625178  04 00 93 e4                                      ldr r0, [r3], #4
0062517c  04 10 91 e5                                      ldr r1, [r1, #4]
00625180  08 20 93 e5                                      ldr r2, [r3, #8]
00625184  04 30 93 e5                                      ldr r3, [r3, #4]
00625188  10 00 8d e5                                      str r0, [sp, #0x10]
0062518c  14 10 8d e5                                      str r1, [sp, #0x14]
00625190  18 30 8d e5                                      str r3, [sp, #0x18]
00625194  1c 20 8d e5                                      str r2, [sp, #0x1c]
00625198  ed ff ff ea                                      b #0x625154
0062519c  06 30 a0 e1                                      mov r3, r6
006251a0  06 20 a0 e1                                      mov r2, r6
006251a4  06 10 a0 e1                                      mov r1, r6
006251a8  e5 ff ff ea                                      b #0x625144
