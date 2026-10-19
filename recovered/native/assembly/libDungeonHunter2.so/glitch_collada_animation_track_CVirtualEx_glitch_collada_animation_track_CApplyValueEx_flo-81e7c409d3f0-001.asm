; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edb0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::~CVirtualEx()
; decoder-mode: arm
0060edb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getValueSize() const
; decoder-mode: arm
0060ee28  10 00 a0 e3                                      mov r0, #0x10
0060ee2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee30, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f7dc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f7dc  10 40 2d e9                                      push {r4, lr}
0060f7e0  00 40 a0 e1                                      mov r4, r0
0060f7e4  b1 fa f3 eb                                      bl #0x30e2b0
0060f7e8  04 00 a0 e1                                      mov r0, r4
0060f7ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611484, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getInstance()
; decoder-mode: arm
00611484  70 40 2d e9                                      push {r4, r5, r6, lr}
00611488  70 40 9f e5                                      ldr r4, [pc, #0x70]
0061148c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611490  04 40 8f e0                                      add r4, pc, r4
00611494  03 60 94 e7                                      ldr r6, [r4, r3]
00611498  00 30 96 e5                                      ldr r3, [r6]
0061149c  01 00 13 e3                                      tst r3, #1
006114a0  02 00 00 0a                                      beq #0x6114b0
006114a4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006114a8  05 00 94 e7                                      ldr r0, [r4, r5]
006114ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
006114b0  06 00 a0 e1                                      mov r0, r6
006114b4  ac f4 f3 eb                                      bl #0x30e76c
006114b8  00 00 50 e3                                      cmp r0, #0
006114bc  f8 ff ff 0a                                      beq #0x6114a4
006114c0  44 30 9f e5                                      ldr r3, [pc, #0x44]
006114c4  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006114c8  06 00 a0 e1                                      mov r0, r6
006114cc  03 30 94 e7                                      ldr r3, [r4, r3]
006114d0  05 60 94 e7                                      ldr r6, [r4, r5]
006114d4  08 30 83 e2                                      add r3, r3, #8
006114d8  00 30 86 e5                                      str r3, [r6]
006114dc  56 f5 f3 eb                                      bl #0x30ea3c
006114e0  28 30 9f e5                                      ldr r3, [pc, #0x28]
006114e4  06 00 a0 e1                                      mov r0, r6
006114e8  03 10 94 e7                                      ldr r1, [r4, r3]
006114ec  20 30 9f e5                                      ldr r3, [pc, #0x20]
006114f0  03 20 94 e7                                      ldr r2, [r4, r3]
006114f4  82 f3 f3 eb                                      bl #0x30e304
006114f8  05 00 94 e7                                      ldr r0, [r4, r5]
006114fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611500  00 36 38 00 10 0d 00 00 60 3b 00 00 4c 07 00 00  .byte 0x00, 0x36, 0x38, 0x00, 0x10, 0x0d, 0x00, 0x00, 0x60, 0x3b, 0x00, 0x00, 0x4c, 0x07, 0x00, 0x00
00611510  e4 21 00 00 90 18 00 00                          .byte 0xe4, 0x21, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618e88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618e88  01 00 a0 e1                                      mov r0, r1
00618e8c  10 20 a0 e3                                      mov r2, #0x10
00618e90  00 10 a0 e3                                      mov r1, #0
00618e94  71 d5 f3 ea                                      b #0x30e460

; FUNCTION 0x0061c9e8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061c9e8  00 c0 a0 e3                                      mov ip, #0
0061c9ec  01 30 a0 e1                                      mov r3, r1
0061c9f0  b8 10 dc e1                                      ldrh r1, [ip, #8]
0061c9f4  02 00 a0 e1                                      mov r0, r2
0061c9f8  0c 20 a0 e1                                      mov r2, ip
0061c9fc  59 c7 fe ea                                      b #0x5ce768

; FUNCTION 0x0061d5a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061d5a0  01 00 a0 e1                                      mov r0, r1
0061d5a4  02 10 a0 e1                                      mov r1, r2
0061d5a8  03 20 a0 e1                                      mov r2, r3
0061d5ac  dd ff ff ea                                      b #0x61d528

; FUNCTION 0x0061d5b0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061d5b0  30 40 2d e9                                      push {r4, r5, lr}
0061d5b4  14 d0 4d e2                                      sub sp, sp, #0x14
0061d5b8  01 00 a0 e1                                      mov r0, r1
0061d5bc  02 10 a0 e1                                      mov r1, r2
0061d5c0  0d 20 a0 e1                                      mov r2, sp
0061d5c4  03 50 a0 e1                                      mov r5, r3
0061d5c8  d6 ff ff eb                                      bl #0x61d528
0061d5cc  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061d5d0  05 00 a0 e1                                      mov r0, r5
0061d5d4  00 20 a0 e3                                      mov r2, #0
0061d5d8  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061d5dc  0d 30 a0 e1                                      mov r3, sp
0061d5e0  0d 40 a0 e1                                      mov r4, sp
0061d5e4  5f c4 fe eb                                      bl #0x5ce768
0061d5e8  14 d0 8d e2                                      add sp, sp, #0x14
0061d5ec  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061d6b4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061d6b4  01 00 a0 e1                                      mov r0, r1
0061d6b8  04 c0 9d e5                                      ldr ip, [sp, #4]
0061d6bc  02 10 a0 e1                                      mov r1, r2
0061d6c0  03 20 a0 e1                                      mov r2, r3
0061d6c4  00 30 9d e5                                      ldr r3, [sp]
0061d6c8  00 c0 8d e5                                      str ip, [sp]
0061d6cc  c7 ff ff ea                                      b #0x61d5f0

; FUNCTION 0x0061d704, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061d704  04 c0 9d e5                                      ldr ip, [sp, #4]
0061d708  01 00 a0 e1                                      mov r0, r1
0061d70c  02 10 a0 e1                                      mov r1, r2
0061d710  03 20 a0 e1                                      mov r2, r3
0061d714  00 30 9d e5                                      ldr r3, [sp]
0061d718  00 c0 8d e5                                      str ip, [sp]
0061d71c  08 c0 9d e5                                      ldr ip, [sp, #8]
0061d720  04 c0 8d e5                                      str ip, [sp, #4]
0061d724  e9 ff ff ea                                      b #0x61d6d0

; FUNCTION 0x0061d79c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061d79c  01 00 a0 e1                                      mov r0, r1
0061d7a0  02 10 a0 e1                                      mov r1, r2
0061d7a4  03 20 a0 e1                                      mov r2, r3
0061d7a8  00 30 9d e5                                      ldr r3, [sp]
0061d7ac  dd ff ff ea                                      b #0x61d728

; FUNCTION 0x0061d890, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061d890  04 c0 9d e5                                      ldr ip, [sp, #4]
0061d894  01 00 a0 e1                                      mov r0, r1
0061d898  02 10 a0 e1                                      mov r1, r2
0061d89c  03 20 a0 e1                                      mov r2, r3
0061d8a0  00 30 9d e5                                      ldr r3, [sp]
0061d8a4  00 c0 8d e5                                      str ip, [sp]
0061d8a8  08 c0 9d e5                                      ldr ip, [sp, #8]
0061d8ac  04 c0 8d e5                                      str ip, [sp, #4]
0061d8b0  be ff ff ea                                      b #0x61d7b0

; FUNCTION 0x006243e0, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006243e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006243e4  01 00 53 e3                                      cmp r3, #1
006243e8  24 d0 4d e2                                      sub sp, sp, #0x24
006243ec  03 40 a0 e1                                      mov r4, r3
006243f0  02 b0 a0 e1                                      mov fp, r2
006243f4  2a 00 00 0a                                      beq #0x6244a4
006243f8  00 60 a0 e3                                      mov r6, #0
006243fc  00 00 53 e3                                      cmp r3, #0
00624400  00 60 8d e5                                      str r6, [sp]
00624404  04 60 8d e5                                      str r6, [sp, #4]
00624408  08 60 8d e5                                      str r6, [sp, #8]
0062440c  0c 60 8d e5                                      str r6, [sp, #0xc]
00624410  01 80 a0 11                                      movne r8, r1
00624414  00 90 a0 13                                      movne sb, #0
00624418  0d 70 a0 11                                      movne r7, sp
0062441c  2a 00 00 0a                                      beq #0x6244cc
00624420  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624424  00 50 a0 e3                                      mov r5, #0
00624428  05 10 98 e7                                      ldr r1, [r8, r5]
0062442c  0a 00 a0 e1                                      mov r0, sl
00624430  4d aa f3 eb                                      bl #0x30ed6c
00624434  06 10 a0 e1                                      mov r1, r6
00624438  d9 a9 f3 eb                                      bl #0x30eba4
0062443c  05 00 87 e7                                      str r0, [r7, r5]
00624440  04 50 85 e2                                      add r5, r5, #4
00624444  10 00 55 e3                                      cmp r5, #0x10
00624448  05 60 97 17                                      ldrne r6, [r7, r5]
0062444c  f5 ff ff 1a                                      bne #0x624428
00624450  01 90 89 e2                                      add sb, sb, #1
00624454  04 00 59 e1                                      cmp sb, r4
00624458  10 80 88 e2                                      add r8, r8, #0x10
0062445c  00 60 9d 15                                      ldrne r6, [sp]
00624460  ee ff ff 1a                                      bne #0x624420
00624464  00 10 9d e5                                      ldr r1, [sp]
00624468  04 20 9d e5                                      ldr r2, [sp, #4]
0062446c  08 30 9d e5                                      ldr r3, [sp, #8]
00624470  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624474  10 10 8d e5                                      str r1, [sp, #0x10]
00624478  14 20 8d e5                                      str r2, [sp, #0x14]
0062447c  18 30 8d e5                                      str r3, [sp, #0x18]
00624480  1c 60 8d e5                                      str r6, [sp, #0x1c]
00624484  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00624488  48 00 9d e5                                      ldr r0, [sp, #0x48]
0062448c  00 20 a0 e3                                      mov r2, #0
00624490  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00624494  10 30 8d e2                                      add r3, sp, #0x10
00624498  b2 a8 fe eb                                      bl #0x5ce768
0062449c  24 d0 8d e2                                      add sp, sp, #0x24
006244a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006244a4  01 30 a0 e1                                      mov r3, r1
006244a8  04 00 93 e4                                      ldr r0, [r3], #4
006244ac  04 10 91 e5                                      ldr r1, [r1, #4]
006244b0  08 20 93 e5                                      ldr r2, [r3, #8]
006244b4  04 30 93 e5                                      ldr r3, [r3, #4]
006244b8  10 00 8d e5                                      str r0, [sp, #0x10]
006244bc  14 10 8d e5                                      str r1, [sp, #0x14]
006244c0  18 30 8d e5                                      str r3, [sp, #0x18]
006244c4  1c 20 8d e5                                      str r2, [sp, #0x1c]
006244c8  ed ff ff ea                                      b #0x624484
006244cc  06 30 a0 e1                                      mov r3, r6
006244d0  06 20 a0 e1                                      mov r2, r6
006244d4  06 10 a0 e1                                      mov r1, r6
006244d8  e5 ff ff ea                                      b #0x624474

; FUNCTION 0x006244dc, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006244dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006244e0  01 00 53 e3                                      cmp r3, #1
006244e4  24 d0 4d e2                                      sub sp, sp, #0x24
006244e8  03 40 a0 e1                                      mov r4, r3
006244ec  02 b0 a0 e1                                      mov fp, r2
006244f0  2a 00 00 0a                                      beq #0x6245a0
006244f4  00 60 a0 e3                                      mov r6, #0
006244f8  00 00 53 e3                                      cmp r3, #0
006244fc  00 60 8d e5                                      str r6, [sp]
00624500  04 60 8d e5                                      str r6, [sp, #4]
00624504  08 60 8d e5                                      str r6, [sp, #8]
00624508  0c 60 8d e5                                      str r6, [sp, #0xc]
0062450c  01 80 a0 11                                      movne r8, r1
00624510  00 90 a0 13                                      movne sb, #0
00624514  0d 70 a0 11                                      movne r7, sp
00624518  2a 00 00 0a                                      beq #0x6245c8
0062451c  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624520  00 50 a0 e3                                      mov r5, #0
00624524  05 10 98 e7                                      ldr r1, [r8, r5]
00624528  0a 00 a0 e1                                      mov r0, sl
0062452c  0e aa f3 eb                                      bl #0x30ed6c
00624530  06 10 a0 e1                                      mov r1, r6
00624534  9a a9 f3 eb                                      bl #0x30eba4
00624538  05 00 87 e7                                      str r0, [r7, r5]
0062453c  04 50 85 e2                                      add r5, r5, #4
00624540  10 00 55 e3                                      cmp r5, #0x10
00624544  05 60 97 17                                      ldrne r6, [r7, r5]
00624548  f5 ff ff 1a                                      bne #0x624524
0062454c  01 90 89 e2                                      add sb, sb, #1
00624550  04 00 59 e1                                      cmp sb, r4
00624554  10 80 88 e2                                      add r8, r8, #0x10
00624558  00 60 9d 15                                      ldrne r6, [sp]
0062455c  ee ff ff 1a                                      bne #0x62451c
00624560  00 10 9d e5                                      ldr r1, [sp]
00624564  04 20 9d e5                                      ldr r2, [sp, #4]
00624568  08 30 9d e5                                      ldr r3, [sp, #8]
0062456c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624570  10 10 8d e5                                      str r1, [sp, #0x10]
00624574  14 20 8d e5                                      str r2, [sp, #0x14]
00624578  18 30 8d e5                                      str r3, [sp, #0x18]
0062457c  1c 60 8d e5                                      str r6, [sp, #0x1c]
00624580  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00624584  48 00 9d e5                                      ldr r0, [sp, #0x48]
00624588  00 20 a0 e3                                      mov r2, #0
0062458c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00624590  10 30 8d e2                                      add r3, sp, #0x10
00624594  73 a8 fe eb                                      bl #0x5ce768
00624598  24 d0 8d e2                                      add sp, sp, #0x24
0062459c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006245a0  01 30 a0 e1                                      mov r3, r1
006245a4  04 00 93 e4                                      ldr r0, [r3], #4
006245a8  04 10 91 e5                                      ldr r1, [r1, #4]
006245ac  08 20 93 e5                                      ldr r2, [r3, #8]
006245b0  04 30 93 e5                                      ldr r3, [r3, #4]
006245b4  10 00 8d e5                                      str r0, [sp, #0x10]
006245b8  14 10 8d e5                                      str r1, [sp, #0x14]
006245bc  18 30 8d e5                                      str r3, [sp, #0x18]
006245c0  1c 20 8d e5                                      str r2, [sp, #0x1c]
006245c4  ed ff ff ea                                      b #0x624580
006245c8  06 30 a0 e1                                      mov r3, r6
006245cc  06 20 a0 e1                                      mov r2, r6
006245d0  06 10 a0 e1                                      mov r1, r6
006245d4  e5 ff ff ea                                      b #0x624570

; FUNCTION 0x006246d4, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006246d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006246d8  01 00 53 e3                                      cmp r3, #1
006246dc  14 d0 4d e2                                      sub sp, sp, #0x14
006246e0  03 40 a0 e1                                      mov r4, r3
006246e4  02 b0 a0 e1                                      mov fp, r2
006246e8  26 00 00 0a                                      beq #0x624788
006246ec  00 60 a0 e3                                      mov r6, #0
006246f0  00 00 53 e3                                      cmp r3, #0
006246f4  00 60 8d e5                                      str r6, [sp]
006246f8  04 60 8d e5                                      str r6, [sp, #4]
006246fc  08 60 8d e5                                      str r6, [sp, #8]
00624700  0c 60 8d e5                                      str r6, [sp, #0xc]
00624704  01 80 a0 11                                      movne r8, r1
00624708  00 90 a0 13                                      movne sb, #0
0062470c  0d 70 a0 11                                      movne r7, sp
00624710  28 00 00 0a                                      beq #0x6247b8
00624714  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624718  00 50 a0 e3                                      mov r5, #0
0062471c  05 10 98 e7                                      ldr r1, [r8, r5]
00624720  0a 00 a0 e1                                      mov r0, sl
00624724  90 a9 f3 eb                                      bl #0x30ed6c
00624728  06 10 a0 e1                                      mov r1, r6
0062472c  1c a9 f3 eb                                      bl #0x30eba4
00624730  05 00 87 e7                                      str r0, [r7, r5]
00624734  04 50 85 e2                                      add r5, r5, #4
00624738  10 00 55 e3                                      cmp r5, #0x10
0062473c  05 60 97 17                                      ldrne r6, [r7, r5]
00624740  f5 ff ff 1a                                      bne #0x62471c
00624744  01 90 89 e2                                      add sb, sb, #1
00624748  04 00 59 e1                                      cmp sb, r4
0062474c  10 80 88 e2                                      add r8, r8, #0x10
00624750  00 60 9d 15                                      ldrne r6, [sp]
00624754  ee ff ff 1a                                      bne #0x624714
00624758  00 00 9d e5                                      ldr r0, [sp]
0062475c  04 10 9d e5                                      ldr r1, [sp, #4]
00624760  08 20 9d e5                                      ldr r2, [sp, #8]
00624764  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624768  38 30 9d e5                                      ldr r3, [sp, #0x38]
0062476c  04 00 83 e4                                      str r0, [r3], #4
00624770  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624774  04 10 80 e5                                      str r1, [r0, #4]
00624778  08 60 83 e5                                      str r6, [r3, #8]
0062477c  04 20 83 e5                                      str r2, [r3, #4]
00624780  14 d0 8d e2                                      add sp, sp, #0x14
00624784  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00624788  01 20 a0 e1                                      mov r2, r1
0062478c  04 00 92 e4                                      ldr r0, [r2], #4
00624790  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624794  04 00 83 e4                                      str r0, [r3], #4
00624798  04 10 91 e5                                      ldr r1, [r1, #4]
0062479c  38 00 9d e5                                      ldr r0, [sp, #0x38]
006247a0  04 10 80 e5                                      str r1, [r0, #4]
006247a4  04 10 92 e5                                      ldr r1, [r2, #4]
006247a8  04 10 83 e5                                      str r1, [r3, #4]
006247ac  08 20 92 e5                                      ldr r2, [r2, #8]
006247b0  08 20 83 e5                                      str r2, [r3, #8]
006247b4  f1 ff ff ea                                      b #0x624780
006247b8  06 20 a0 e1                                      mov r2, r6
006247bc  06 10 a0 e1                                      mov r1, r6
006247c0  06 00 a0 e1                                      mov r0, r6
006247c4  e7 ff ff ea                                      b #0x624768

; FUNCTION 0x00624b98, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00624b98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00624b9c  01 00 53 e3                                      cmp r3, #1
00624ba0  14 d0 4d e2                                      sub sp, sp, #0x14
00624ba4  03 40 a0 e1                                      mov r4, r3
00624ba8  02 b0 a0 e1                                      mov fp, r2
00624bac  26 00 00 0a                                      beq #0x624c4c
00624bb0  00 60 a0 e3                                      mov r6, #0
00624bb4  00 00 53 e3                                      cmp r3, #0
00624bb8  00 60 8d e5                                      str r6, [sp]
00624bbc  04 60 8d e5                                      str r6, [sp, #4]
00624bc0  08 60 8d e5                                      str r6, [sp, #8]
00624bc4  0c 60 8d e5                                      str r6, [sp, #0xc]
00624bc8  01 80 a0 11                                      movne r8, r1
00624bcc  00 90 a0 13                                      movne sb, #0
00624bd0  0d 70 a0 11                                      movne r7, sp
00624bd4  28 00 00 0a                                      beq #0x624c7c
00624bd8  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624bdc  00 50 a0 e3                                      mov r5, #0
00624be0  05 10 98 e7                                      ldr r1, [r8, r5]
00624be4  0a 00 a0 e1                                      mov r0, sl
00624be8  5f a8 f3 eb                                      bl #0x30ed6c
00624bec  06 10 a0 e1                                      mov r1, r6
00624bf0  eb a7 f3 eb                                      bl #0x30eba4
00624bf4  05 00 87 e7                                      str r0, [r7, r5]
00624bf8  04 50 85 e2                                      add r5, r5, #4
00624bfc  10 00 55 e3                                      cmp r5, #0x10
00624c00  05 60 97 17                                      ldrne r6, [r7, r5]
00624c04  f5 ff ff 1a                                      bne #0x624be0
00624c08  01 90 89 e2                                      add sb, sb, #1
00624c0c  04 00 59 e1                                      cmp sb, r4
00624c10  10 80 88 e2                                      add r8, r8, #0x10
00624c14  00 60 9d 15                                      ldrne r6, [sp]
00624c18  ee ff ff 1a                                      bne #0x624bd8
00624c1c  00 00 9d e5                                      ldr r0, [sp]
00624c20  04 10 9d e5                                      ldr r1, [sp, #4]
00624c24  08 20 9d e5                                      ldr r2, [sp, #8]
00624c28  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624c2c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624c30  04 00 83 e4                                      str r0, [r3], #4
00624c34  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624c38  04 10 80 e5                                      str r1, [r0, #4]
00624c3c  08 60 83 e5                                      str r6, [r3, #8]
00624c40  04 20 83 e5                                      str r2, [r3, #4]
00624c44  14 d0 8d e2                                      add sp, sp, #0x14
00624c48  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00624c4c  01 20 a0 e1                                      mov r2, r1
00624c50  04 00 92 e4                                      ldr r0, [r2], #4
00624c54  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624c58  04 00 83 e4                                      str r0, [r3], #4
00624c5c  04 10 91 e5                                      ldr r1, [r1, #4]
00624c60  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624c64  04 10 80 e5                                      str r1, [r0, #4]
00624c68  04 10 92 e5                                      ldr r1, [r2, #4]
00624c6c  04 10 83 e5                                      str r1, [r3, #4]
00624c70  08 20 92 e5                                      ldr r2, [r2, #8]
00624c74  08 20 83 e5                                      str r2, [r3, #8]
00624c78  f1 ff ff ea                                      b #0x624c44
00624c7c  06 20 a0 e1                                      mov r2, r6
00624c80  06 10 a0 e1                                      mov r1, r6
00624c84  06 00 a0 e1                                      mov r0, r6
00624c88  e7 ff ff ea                                      b #0x624c2c
