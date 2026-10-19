; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060eda0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060eda0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee58, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getValueSize() const
; decoder-mode: arm
0060ee58  0c 00 a0 e3                                      mov r0, #0xc
0060ee5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee60, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f7a0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f7a0  10 40 2d e9                                      push {r4, lr}
0060f7a4  00 40 a0 e1                                      mov r4, r0
0060f7a8  c0 fa f3 eb                                      bl #0x30e2b0
0060f7ac  04 00 a0 e1                                      mov r0, r4
0060f7b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006112c8, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getInstance()
; decoder-mode: arm
006112c8  70 40 2d e9                                      push {r4, r5, r6, lr}
006112cc  70 40 9f e5                                      ldr r4, [pc, #0x70]
006112d0  70 30 9f e5                                      ldr r3, [pc, #0x70]
006112d4  04 40 8f e0                                      add r4, pc, r4
006112d8  03 60 94 e7                                      ldr r6, [r4, r3]
006112dc  00 30 96 e5                                      ldr r3, [r6]
006112e0  01 00 13 e3                                      tst r3, #1
006112e4  02 00 00 0a                                      beq #0x6112f4
006112e8  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006112ec  05 00 94 e7                                      ldr r0, [r4, r5]
006112f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006112f4  06 00 a0 e1                                      mov r0, r6
006112f8  1b f5 f3 eb                                      bl #0x30e76c
006112fc  00 00 50 e3                                      cmp r0, #0
00611300  f8 ff ff 0a                                      beq #0x6112e8
00611304  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611308  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0061130c  06 00 a0 e1                                      mov r0, r6
00611310  03 30 94 e7                                      ldr r3, [r4, r3]
00611314  05 60 94 e7                                      ldr r6, [r4, r5]
00611318  08 30 83 e2                                      add r3, r3, #8
0061131c  00 30 86 e5                                      str r3, [r6]
00611320  c5 f5 f3 eb                                      bl #0x30ea3c
00611324  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611328  06 00 a0 e1                                      mov r0, r6
0061132c  03 10 94 e7                                      ldr r1, [r4, r3]
00611330  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611334  03 20 94 e7                                      ldr r2, [r4, r3]
00611338  f1 f3 f3 eb                                      bl #0x30e304
0061133c  05 00 94 e7                                      ldr r0, [r4, r5]
00611340  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611344  bc 37 38 00 60 1d 00 00 c4 28 00 00 70 48 00 00  .byte 0xbc, 0x37, 0x38, 0x00, 0x60, 0x1d, 0x00, 0x00, 0xc4, 0x28, 0x00, 0x00, 0x70, 0x48, 0x00, 0x00
00611354  14 0f 00 00 90 18 00 00                          .byte 0x14, 0x0f, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618e28, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618e28  00 20 a0 e3                                      mov r2, #0
00618e2c  01 30 a0 e1                                      mov r3, r1
00618e30  01 20 c3 e4                                      strb r2, [r3], #1
00618e34  01 30 83 e2                                      add r3, r3, #1
00618e38  01 20 c1 e5                                      strb r2, [r1, #1]
00618e3c  01 20 c3 e4                                      strb r2, [r3], #1
00618e40  01 20 c3 e4                                      strb r2, [r3], #1
00618e44  01 20 c3 e4                                      strb r2, [r3], #1
00618e48  01 20 c3 e4                                      strb r2, [r3], #1
00618e4c  01 20 c3 e4                                      strb r2, [r3], #1
00618e50  01 20 c3 e4                                      strb r2, [r3], #1
00618e54  01 20 c3 e4                                      strb r2, [r3], #1
00618e58  01 20 c3 e4                                      strb r2, [r3], #1
00618e5c  01 20 c3 e4                                      strb r2, [r3], #1
00618e60  00 20 c3 e5                                      strb r2, [r3]
00618e64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00619150, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00619150  00 c0 a0 e3                                      mov ip, #0
00619154  01 30 a0 e1                                      mov r3, r1
00619158  b8 10 dc e1                                      ldrh r1, [ip, #8]
0061915c  02 00 a0 e1                                      mov r0, r2
00619160  0c 20 a0 e1                                      mov r2, ip
00619164  f2 b6 fe ea                                      b #0x5c6d34

; FUNCTION 0x0061eb70, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061eb70  01 00 a0 e1                                      mov r0, r1
0061eb74  02 10 a0 e1                                      mov r1, r2
0061eb78  03 20 a0 e1                                      mov r2, r3
0061eb7c  df ff ff ea                                      b #0x61eb00

; FUNCTION 0x0061eb80, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061eb80  30 40 2d e9                                      push {r4, r5, lr}
0061eb84  14 d0 4d e2                                      sub sp, sp, #0x14
0061eb88  04 40 8d e2                                      add r4, sp, #4
0061eb8c  01 00 a0 e1                                      mov r0, r1
0061eb90  02 10 a0 e1                                      mov r1, r2
0061eb94  04 20 a0 e1                                      mov r2, r4
0061eb98  03 50 a0 e1                                      mov r5, r3
0061eb9c  d7 ff ff eb                                      bl #0x61eb00
0061eba0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061eba4  05 00 a0 e1                                      mov r0, r5
0061eba8  00 20 a0 e3                                      mov r2, #0
0061ebac  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061ebb0  04 30 a0 e1                                      mov r3, r4
0061ebb4  5e a0 fe eb                                      bl #0x5c6d34
0061ebb8  14 d0 8d e2                                      add sp, sp, #0x14
0061ebbc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061ec78, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061ec78  01 00 a0 e1                                      mov r0, r1
0061ec7c  04 c0 9d e5                                      ldr ip, [sp, #4]
0061ec80  02 10 a0 e1                                      mov r1, r2
0061ec84  03 20 a0 e1                                      mov r2, r3
0061ec88  00 30 9d e5                                      ldr r3, [sp]
0061ec8c  00 c0 8d e5                                      str ip, [sp]
0061ec90  ca ff ff ea                                      b #0x61ebc0

; FUNCTION 0x0061ecc8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061ecc8  04 c0 9d e5                                      ldr ip, [sp, #4]
0061eccc  01 00 a0 e1                                      mov r0, r1
0061ecd0  02 10 a0 e1                                      mov r1, r2
0061ecd4  03 20 a0 e1                                      mov r2, r3
0061ecd8  00 30 9d e5                                      ldr r3, [sp]
0061ecdc  00 c0 8d e5                                      str ip, [sp]
0061ece0  08 c0 9d e5                                      ldr ip, [sp, #8]
0061ece4  04 c0 8d e5                                      str ip, [sp, #4]
0061ece8  e9 ff ff ea                                      b #0x61ec94

; FUNCTION 0x0061ed58, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061ed58  01 00 a0 e1                                      mov r0, r1
0061ed5c  02 10 a0 e1                                      mov r1, r2
0061ed60  03 20 a0 e1                                      mov r2, r3
0061ed64  00 30 9d e5                                      ldr r3, [sp]
0061ed68  df ff ff ea                                      b #0x61ecec

; FUNCTION 0x0061ee40, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061ee40  04 c0 9d e5                                      ldr ip, [sp, #4]
0061ee44  01 00 a0 e1                                      mov r0, r1
0061ee48  02 10 a0 e1                                      mov r1, r2
0061ee4c  03 20 a0 e1                                      mov r2, r3
0061ee50  00 30 9d e5                                      ldr r3, [sp]
0061ee54  00 c0 8d e5                                      str ip, [sp]
0061ee58  08 c0 9d e5                                      ldr ip, [sp, #8]
0061ee5c  04 c0 8d e5                                      str ip, [sp, #4]
0061ee60  c1 ff ff ea                                      b #0x61ed6c

; FUNCTION 0x00627a84, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00627a84  01 00 a0 e1                                      mov r0, r1
00627a88  04 c0 9d e5                                      ldr ip, [sp, #4]
00627a8c  02 10 a0 e1                                      mov r1, r2
00627a90  03 20 a0 e1                                      mov r2, r3
00627a94  00 30 9d e5                                      ldr r3, [sp]
00627a98  00 c0 8d e5                                      str ip, [sp]
00627a9c  ba ff ff ea                                      b #0x62798c

; FUNCTION 0x00628260, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628260  01 00 a0 e1                                      mov r0, r1
00628264  04 c0 9d e5                                      ldr ip, [sp, #4]
00628268  02 10 a0 e1                                      mov r1, r2
0062826c  03 20 a0 e1                                      mov r2, r3
00628270  00 30 9d e5                                      ldr r3, [sp]
00628274  00 c0 8d e5                                      str ip, [sp]
00628278  ba ff ff ea                                      b #0x628168

; FUNCTION 0x0062a58c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a58c  01 00 53 e3                                      cmp r3, #1
0062a590  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a594  03 40 a0 e1                                      mov r4, r3
0062a598  02 b0 a0 e1                                      mov fp, r2
0062a59c  29 00 00 0a                                      beq #0x62a648
0062a5a0  00 00 53 e3                                      cmp r3, #0
0062a5a4  00 80 a0 03                                      moveq r8, #0
0062a5a8  08 90 a0 01                                      moveq sb, r8
0062a5ac  08 a0 a0 01                                      moveq sl, r8
0062a5b0  1e 00 00 0a                                      beq #0x62a630
0062a5b4  00 80 a0 e3                                      mov r8, #0
0062a5b8  01 50 a0 e1                                      mov r5, r1
0062a5bc  00 70 a0 e3                                      mov r7, #0
0062a5c0  08 90 a0 e1                                      mov sb, r8
0062a5c4  08 a0 a0 e1                                      mov sl, r8
0062a5c8  07 60 9b e7                                      ldr r6, [fp, r7]
0062a5cc  00 10 95 e5                                      ldr r1, [r5]
0062a5d0  04 70 87 e2                                      add r7, r7, #4
0062a5d4  06 00 a0 e1                                      mov r0, r6
0062a5d8  e3 91 f3 eb                                      bl #0x30ed6c
0062a5dc  00 10 a0 e1                                      mov r1, r0
0062a5e0  08 00 a0 e1                                      mov r0, r8
0062a5e4  6e 91 f3 eb                                      bl #0x30eba4
0062a5e8  04 10 95 e5                                      ldr r1, [r5, #4]
0062a5ec  00 80 a0 e1                                      mov r8, r0
0062a5f0  06 00 a0 e1                                      mov r0, r6
0062a5f4  dc 91 f3 eb                                      bl #0x30ed6c
0062a5f8  00 10 a0 e1                                      mov r1, r0
0062a5fc  09 00 a0 e1                                      mov r0, sb
0062a600  67 91 f3 eb                                      bl #0x30eba4
0062a604  08 10 95 e5                                      ldr r1, [r5, #8]
0062a608  00 90 a0 e1                                      mov sb, r0
0062a60c  06 00 a0 e1                                      mov r0, r6
0062a610  d5 91 f3 eb                                      bl #0x30ed6c
0062a614  00 10 a0 e1                                      mov r1, r0
0062a618  0a 00 a0 e1                                      mov r0, sl
0062a61c  60 91 f3 eb                                      bl #0x30eba4
0062a620  01 40 54 e2                                      subs r4, r4, #1
0062a624  00 a0 a0 e1                                      mov sl, r0
0062a628  0c 50 85 e2                                      add r5, r5, #0xc
0062a62c  e5 ff ff 1a                                      bne #0x62a5c8
0062a630  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a634  04 80 83 e4                                      str r8, [r3], #4
0062a638  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a63c  04 90 82 e5                                      str sb, [r2, #4]
0062a640  04 a0 83 e5                                      str sl, [r3, #4]
0062a644  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a648  01 20 a0 e1                                      mov r2, r1
0062a64c  04 00 92 e4                                      ldr r0, [r2], #4
0062a650  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a654  04 00 83 e4                                      str r0, [r3], #4
0062a658  04 10 91 e5                                      ldr r1, [r1, #4]
0062a65c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a660  04 10 80 e5                                      str r1, [r0, #4]
0062a664  04 20 92 e5                                      ldr r2, [r2, #4]
0062a668  04 20 83 e5                                      str r2, [r3, #4]
0062a66c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062bcb4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062bcb4  01 00 53 e3                                      cmp r3, #1
0062bcb8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062bcbc  03 40 a0 e1                                      mov r4, r3
0062bcc0  02 b0 a0 e1                                      mov fp, r2
0062bcc4  29 00 00 0a                                      beq #0x62bd70
0062bcc8  00 00 53 e3                                      cmp r3, #0
0062bccc  00 80 a0 03                                      moveq r8, #0
0062bcd0  08 90 a0 01                                      moveq sb, r8
0062bcd4  08 a0 a0 01                                      moveq sl, r8
0062bcd8  1e 00 00 0a                                      beq #0x62bd58
0062bcdc  00 80 a0 e3                                      mov r8, #0
0062bce0  01 50 a0 e1                                      mov r5, r1
0062bce4  00 70 a0 e3                                      mov r7, #0
0062bce8  08 90 a0 e1                                      mov sb, r8
0062bcec  08 a0 a0 e1                                      mov sl, r8
0062bcf0  07 60 9b e7                                      ldr r6, [fp, r7]
0062bcf4  00 10 95 e5                                      ldr r1, [r5]
0062bcf8  04 70 87 e2                                      add r7, r7, #4
0062bcfc  06 00 a0 e1                                      mov r0, r6
0062bd00  19 8c f3 eb                                      bl #0x30ed6c
0062bd04  00 10 a0 e1                                      mov r1, r0
0062bd08  08 00 a0 e1                                      mov r0, r8
0062bd0c  a4 8b f3 eb                                      bl #0x30eba4
0062bd10  04 10 95 e5                                      ldr r1, [r5, #4]
0062bd14  00 80 a0 e1                                      mov r8, r0
0062bd18  06 00 a0 e1                                      mov r0, r6
0062bd1c  12 8c f3 eb                                      bl #0x30ed6c
0062bd20  00 10 a0 e1                                      mov r1, r0
0062bd24  09 00 a0 e1                                      mov r0, sb
0062bd28  9d 8b f3 eb                                      bl #0x30eba4
0062bd2c  08 10 95 e5                                      ldr r1, [r5, #8]
0062bd30  00 90 a0 e1                                      mov sb, r0
0062bd34  06 00 a0 e1                                      mov r0, r6
0062bd38  0b 8c f3 eb                                      bl #0x30ed6c
0062bd3c  00 10 a0 e1                                      mov r1, r0
0062bd40  0a 00 a0 e1                                      mov r0, sl
0062bd44  96 8b f3 eb                                      bl #0x30eba4
0062bd48  01 40 54 e2                                      subs r4, r4, #1
0062bd4c  00 a0 a0 e1                                      mov sl, r0
0062bd50  0c 50 85 e2                                      add r5, r5, #0xc
0062bd54  e5 ff ff 1a                                      bne #0x62bcf0
0062bd58  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bd5c  04 80 83 e4                                      str r8, [r3], #4
0062bd60  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062bd64  04 90 82 e5                                      str sb, [r2, #4]
0062bd68  04 a0 83 e5                                      str sl, [r3, #4]
0062bd6c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062bd70  01 20 a0 e1                                      mov r2, r1
0062bd74  04 00 92 e4                                      ldr r0, [r2], #4
0062bd78  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bd7c  04 00 83 e4                                      str r0, [r3], #4
0062bd80  04 10 91 e5                                      ldr r1, [r1, #4]
0062bd84  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062bd88  04 10 80 e5                                      str r1, [r0, #4]
0062bd8c  04 20 92 e5                                      ldr r2, [r2, #4]
0062bd90  04 20 83 e5                                      str r2, [r3, #4]
0062bd94  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
