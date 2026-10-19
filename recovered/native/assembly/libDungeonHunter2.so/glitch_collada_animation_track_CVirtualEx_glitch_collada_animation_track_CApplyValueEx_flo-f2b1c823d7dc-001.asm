; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edac, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060edac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getValueSize() const
; decoder-mode: arm
0060ee34  10 00 a0 e3                                      mov r0, #0x10
0060ee38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee3c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f7c8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f7c8  10 40 2d e9                                      push {r4, lr}
0060f7cc  00 40 a0 e1                                      mov r4, r0
0060f7d0  b6 fa f3 eb                                      bl #0x30e2b0
0060f7d4  04 00 a0 e1                                      mov r0, r4
0060f7d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006113f0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getInstance()
; decoder-mode: arm
006113f0  70 40 2d e9                                      push {r4, r5, r6, lr}
006113f4  70 40 9f e5                                      ldr r4, [pc, #0x70]
006113f8  70 30 9f e5                                      ldr r3, [pc, #0x70]
006113fc  04 40 8f e0                                      add r4, pc, r4
00611400  03 60 94 e7                                      ldr r6, [r4, r3]
00611404  00 30 96 e5                                      ldr r3, [r6]
00611408  01 00 13 e3                                      tst r3, #1
0061140c  02 00 00 0a                                      beq #0x61141c
00611410  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611414  05 00 94 e7                                      ldr r0, [r4, r5]
00611418  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061141c  06 00 a0 e1                                      mov r0, r6
00611420  d1 f4 f3 eb                                      bl #0x30e76c
00611424  00 00 50 e3                                      cmp r0, #0
00611428  f8 ff ff 0a                                      beq #0x611410
0061142c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611430  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611434  06 00 a0 e1                                      mov r0, r6
00611438  03 30 94 e7                                      ldr r3, [r4, r3]
0061143c  05 60 94 e7                                      ldr r6, [r4, r5]
00611440  08 30 83 e2                                      add r3, r3, #8
00611444  00 30 86 e5                                      str r3, [r6]
00611448  7b f5 f3 eb                                      bl #0x30ea3c
0061144c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611450  06 00 a0 e1                                      mov r0, r6
00611454  03 10 94 e7                                      ldr r1, [r4, r3]
00611458  20 30 9f e5                                      ldr r3, [pc, #0x20]
0061145c  03 20 94 e7                                      ldr r2, [r4, r3]
00611460  a7 f3 f3 eb                                      bl #0x30e304
00611464  05 00 94 e7                                      ldr r0, [r4, r5]
00611468  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0061146c  94 36 38 00 a8 27 00 00 0c 22 00 00 20 23 00 00  .byte 0x94, 0x36, 0x38, 0x00, 0xa8, 0x27, 0x00, 0x00, 0x0c, 0x22, 0x00, 0x00, 0x20, 0x23, 0x00, 0x00
0061147c  50 34 00 00 90 18 00 00                          .byte 0x50, 0x34, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618e78, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618e78  01 00 a0 e1                                      mov r0, r1
00618e7c  10 20 a0 e3                                      mov r2, #0x10
00618e80  00 10 a0 e3                                      mov r1, #0
00618e84  75 d5 f3 ea                                      b #0x30e460

; FUNCTION 0x0061c9d0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061c9d0  00 c0 a0 e3                                      mov ip, #0
0061c9d4  01 30 a0 e1                                      mov r3, r1
0061c9d8  b8 10 dc e1                                      ldrh r1, [ip, #8]
0061c9dc  02 00 a0 e1                                      mov r0, r2
0061c9e0  0c 20 a0 e1                                      mov r2, ip
0061c9e4  5f c7 fe ea                                      b #0x5ce768

; FUNCTION 0x0061d504, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061d504  04 c0 9d e5                                      ldr ip, [sp, #4]
0061d508  01 00 a0 e1                                      mov r0, r1
0061d50c  02 10 a0 e1                                      mov r1, r2
0061d510  03 20 a0 e1                                      mov r2, r3
0061d514  00 30 9d e5                                      ldr r3, [sp]
0061d518  00 c0 8d e5                                      str ip, [sp]
0061d51c  08 c0 9d e5                                      ldr ip, [sp, #8]
0061d520  04 c0 8d e5                                      str ip, [sp, #4]
0061d524  bf ff ff ea                                      b #0x61d428

; FUNCTION 0x0061f254, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061f254  01 00 a0 e1                                      mov r0, r1
0061f258  02 10 a0 e1                                      mov r1, r2
0061f25c  03 20 a0 e1                                      mov r2, r3
0061f260  dd ff ff ea                                      b #0x61f1dc

; FUNCTION 0x0061f264, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061f264  30 40 2d e9                                      push {r4, r5, lr}
0061f268  14 d0 4d e2                                      sub sp, sp, #0x14
0061f26c  01 00 a0 e1                                      mov r0, r1
0061f270  02 10 a0 e1                                      mov r1, r2
0061f274  0d 20 a0 e1                                      mov r2, sp
0061f278  03 50 a0 e1                                      mov r5, r3
0061f27c  d6 ff ff eb                                      bl #0x61f1dc
0061f280  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061f284  05 00 a0 e1                                      mov r0, r5
0061f288  00 20 a0 e3                                      mov r2, #0
0061f28c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061f290  0d 30 a0 e1                                      mov r3, sp
0061f294  0d 40 a0 e1                                      mov r4, sp
0061f298  32 bd fe eb                                      bl #0x5ce768
0061f29c  14 d0 8d e2                                      add sp, sp, #0x14
0061f2a0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0061f370, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061f370  01 00 a0 e1                                      mov r0, r1
0061f374  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f378  02 10 a0 e1                                      mov r1, r2
0061f37c  03 20 a0 e1                                      mov r2, r3
0061f380  00 30 9d e5                                      ldr r3, [sp]
0061f384  00 c0 8d e5                                      str ip, [sp]
0061f388  c5 ff ff ea                                      b #0x61f2a4

; FUNCTION 0x0061f3c0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061f3c0  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f3c4  01 00 a0 e1                                      mov r0, r1
0061f3c8  02 10 a0 e1                                      mov r1, r2
0061f3cc  03 20 a0 e1                                      mov r2, r3
0061f3d0  00 30 9d e5                                      ldr r3, [sp]
0061f3d4  00 c0 8d e5                                      str ip, [sp]
0061f3d8  08 c0 9d e5                                      ldr ip, [sp, #8]
0061f3dc  04 c0 8d e5                                      str ip, [sp, #4]
0061f3e0  e9 ff ff ea                                      b #0x61f38c

; FUNCTION 0x0061f458, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061f458  01 00 a0 e1                                      mov r0, r1
0061f45c  02 10 a0 e1                                      mov r1, r2
0061f460  03 20 a0 e1                                      mov r2, r3
0061f464  00 30 9d e5                                      ldr r3, [sp]
0061f468  dd ff ff ea                                      b #0x61f3e4

; FUNCTION 0x00623ff8, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00623ff8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00623ffc  01 00 53 e3                                      cmp r3, #1
00624000  14 d0 4d e2                                      sub sp, sp, #0x14
00624004  03 40 a0 e1                                      mov r4, r3
00624008  02 b0 a0 e1                                      mov fp, r2
0062400c  26 00 00 0a                                      beq #0x6240ac
00624010  00 60 a0 e3                                      mov r6, #0
00624014  00 00 53 e3                                      cmp r3, #0
00624018  00 60 8d e5                                      str r6, [sp]
0062401c  04 60 8d e5                                      str r6, [sp, #4]
00624020  08 60 8d e5                                      str r6, [sp, #8]
00624024  0c 60 8d e5                                      str r6, [sp, #0xc]
00624028  01 80 a0 11                                      movne r8, r1
0062402c  00 90 a0 13                                      movne sb, #0
00624030  0d 70 a0 11                                      movne r7, sp
00624034  28 00 00 0a                                      beq #0x6240dc
00624038  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
0062403c  00 50 a0 e3                                      mov r5, #0
00624040  05 10 98 e7                                      ldr r1, [r8, r5]
00624044  0a 00 a0 e1                                      mov r0, sl
00624048  47 ab f3 eb                                      bl #0x30ed6c
0062404c  06 10 a0 e1                                      mov r1, r6
00624050  d3 aa f3 eb                                      bl #0x30eba4
00624054  05 00 87 e7                                      str r0, [r7, r5]
00624058  04 50 85 e2                                      add r5, r5, #4
0062405c  10 00 55 e3                                      cmp r5, #0x10
00624060  05 60 97 17                                      ldrne r6, [r7, r5]
00624064  f5 ff ff 1a                                      bne #0x624040
00624068  01 90 89 e2                                      add sb, sb, #1
0062406c  04 00 59 e1                                      cmp sb, r4
00624070  10 80 88 e2                                      add r8, r8, #0x10
00624074  00 60 9d 15                                      ldrne r6, [sp]
00624078  ee ff ff 1a                                      bne #0x624038
0062407c  00 00 9d e5                                      ldr r0, [sp]
00624080  04 10 9d e5                                      ldr r1, [sp, #4]
00624084  08 20 9d e5                                      ldr r2, [sp, #8]
00624088  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0062408c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624090  04 00 83 e4                                      str r0, [r3], #4
00624094  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624098  04 10 80 e5                                      str r1, [r0, #4]
0062409c  08 60 83 e5                                      str r6, [r3, #8]
006240a0  04 20 83 e5                                      str r2, [r3, #4]
006240a4  14 d0 8d e2                                      add sp, sp, #0x14
006240a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006240ac  01 20 a0 e1                                      mov r2, r1
006240b0  04 00 92 e4                                      ldr r0, [r2], #4
006240b4  38 30 9d e5                                      ldr r3, [sp, #0x38]
006240b8  04 00 83 e4                                      str r0, [r3], #4
006240bc  04 10 91 e5                                      ldr r1, [r1, #4]
006240c0  38 00 9d e5                                      ldr r0, [sp, #0x38]
006240c4  04 10 80 e5                                      str r1, [r0, #4]
006240c8  04 10 92 e5                                      ldr r1, [r2, #4]
006240cc  04 10 83 e5                                      str r1, [r3, #4]
006240d0  08 20 92 e5                                      ldr r2, [r2, #8]
006240d4  08 20 83 e5                                      str r2, [r3, #8]
006240d8  f1 ff ff ea                                      b #0x6240a4
006240dc  06 20 a0 e1                                      mov r2, r6
006240e0  06 10 a0 e1                                      mov r1, r6
006240e4  06 00 a0 e1                                      mov r0, r6
006240e8  e7 ff ff ea                                      b #0x62408c

; FUNCTION 0x006242e4, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006242e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006242e8  01 00 53 e3                                      cmp r3, #1
006242ec  24 d0 4d e2                                      sub sp, sp, #0x24
006242f0  03 40 a0 e1                                      mov r4, r3
006242f4  02 b0 a0 e1                                      mov fp, r2
006242f8  2a 00 00 0a                                      beq #0x6243a8
006242fc  00 60 a0 e3                                      mov r6, #0
00624300  00 00 53 e3                                      cmp r3, #0
00624304  00 60 8d e5                                      str r6, [sp]
00624308  04 60 8d e5                                      str r6, [sp, #4]
0062430c  08 60 8d e5                                      str r6, [sp, #8]
00624310  0c 60 8d e5                                      str r6, [sp, #0xc]
00624314  01 80 a0 11                                      movne r8, r1
00624318  00 90 a0 13                                      movne sb, #0
0062431c  0d 70 a0 11                                      movne r7, sp
00624320  2a 00 00 0a                                      beq #0x6243d0
00624324  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624328  00 50 a0 e3                                      mov r5, #0
0062432c  05 10 98 e7                                      ldr r1, [r8, r5]
00624330  0a 00 a0 e1                                      mov r0, sl
00624334  8c aa f3 eb                                      bl #0x30ed6c
00624338  06 10 a0 e1                                      mov r1, r6
0062433c  18 aa f3 eb                                      bl #0x30eba4
00624340  05 00 87 e7                                      str r0, [r7, r5]
00624344  04 50 85 e2                                      add r5, r5, #4
00624348  10 00 55 e3                                      cmp r5, #0x10
0062434c  05 60 97 17                                      ldrne r6, [r7, r5]
00624350  f5 ff ff 1a                                      bne #0x62432c
00624354  01 90 89 e2                                      add sb, sb, #1
00624358  04 00 59 e1                                      cmp sb, r4
0062435c  10 80 88 e2                                      add r8, r8, #0x10
00624360  00 60 9d 15                                      ldrne r6, [sp]
00624364  ee ff ff 1a                                      bne #0x624324
00624368  00 10 9d e5                                      ldr r1, [sp]
0062436c  04 20 9d e5                                      ldr r2, [sp, #4]
00624370  08 30 9d e5                                      ldr r3, [sp, #8]
00624374  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624378  10 10 8d e5                                      str r1, [sp, #0x10]
0062437c  14 20 8d e5                                      str r2, [sp, #0x14]
00624380  18 30 8d e5                                      str r3, [sp, #0x18]
00624384  1c 60 8d e5                                      str r6, [sp, #0x1c]
00624388  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0062438c  48 00 9d e5                                      ldr r0, [sp, #0x48]
00624390  00 20 a0 e3                                      mov r2, #0
00624394  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00624398  10 30 8d e2                                      add r3, sp, #0x10
0062439c  f1 a8 fe eb                                      bl #0x5ce768
006243a0  24 d0 8d e2                                      add sp, sp, #0x24
006243a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006243a8  01 30 a0 e1                                      mov r3, r1
006243ac  04 00 93 e4                                      ldr r0, [r3], #4
006243b0  04 10 91 e5                                      ldr r1, [r1, #4]
006243b4  08 20 93 e5                                      ldr r2, [r3, #8]
006243b8  04 30 93 e5                                      ldr r3, [r3, #4]
006243bc  10 00 8d e5                                      str r0, [sp, #0x10]
006243c0  14 10 8d e5                                      str r1, [sp, #0x14]
006243c4  18 30 8d e5                                      str r3, [sp, #0x18]
006243c8  1c 20 8d e5                                      str r2, [sp, #0x1c]
006243cc  ed ff ff ea                                      b #0x624388
006243d0  06 30 a0 e1                                      mov r3, r6
006243d4  06 20 a0 e1                                      mov r2, r6
006243d8  06 10 a0 e1                                      mov r1, r6
006243dc  e5 ff ff ea                                      b #0x624378

; FUNCTION 0x00624aa4, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00624aa4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00624aa8  01 00 53 e3                                      cmp r3, #1
00624aac  14 d0 4d e2                                      sub sp, sp, #0x14
00624ab0  03 40 a0 e1                                      mov r4, r3
00624ab4  02 b0 a0 e1                                      mov fp, r2
00624ab8  26 00 00 0a                                      beq #0x624b58
00624abc  00 60 a0 e3                                      mov r6, #0
00624ac0  00 00 53 e3                                      cmp r3, #0
00624ac4  00 60 8d e5                                      str r6, [sp]
00624ac8  04 60 8d e5                                      str r6, [sp, #4]
00624acc  08 60 8d e5                                      str r6, [sp, #8]
00624ad0  0c 60 8d e5                                      str r6, [sp, #0xc]
00624ad4  01 80 a0 11                                      movne r8, r1
00624ad8  00 90 a0 13                                      movne sb, #0
00624adc  0d 70 a0 11                                      movne r7, sp
00624ae0  28 00 00 0a                                      beq #0x624b88
00624ae4  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
00624ae8  00 50 a0 e3                                      mov r5, #0
00624aec  05 10 98 e7                                      ldr r1, [r8, r5]
00624af0  0a 00 a0 e1                                      mov r0, sl
00624af4  9c a8 f3 eb                                      bl #0x30ed6c
00624af8  06 10 a0 e1                                      mov r1, r6
00624afc  28 a8 f3 eb                                      bl #0x30eba4
00624b00  05 00 87 e7                                      str r0, [r7, r5]
00624b04  04 50 85 e2                                      add r5, r5, #4
00624b08  10 00 55 e3                                      cmp r5, #0x10
00624b0c  05 60 97 17                                      ldrne r6, [r7, r5]
00624b10  f5 ff ff 1a                                      bne #0x624aec
00624b14  01 90 89 e2                                      add sb, sb, #1
00624b18  04 00 59 e1                                      cmp sb, r4
00624b1c  10 80 88 e2                                      add r8, r8, #0x10
00624b20  00 60 9d 15                                      ldrne r6, [sp]
00624b24  ee ff ff 1a                                      bne #0x624ae4
00624b28  00 00 9d e5                                      ldr r0, [sp]
00624b2c  04 10 9d e5                                      ldr r1, [sp, #4]
00624b30  08 20 9d e5                                      ldr r2, [sp, #8]
00624b34  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00624b38  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624b3c  04 00 83 e4                                      str r0, [r3], #4
00624b40  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624b44  04 10 80 e5                                      str r1, [r0, #4]
00624b48  08 60 83 e5                                      str r6, [r3, #8]
00624b4c  04 20 83 e5                                      str r2, [r3, #4]
00624b50  14 d0 8d e2                                      add sp, sp, #0x14
00624b54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00624b58  01 20 a0 e1                                      mov r2, r1
00624b5c  04 00 92 e4                                      ldr r0, [r2], #4
00624b60  38 30 9d e5                                      ldr r3, [sp, #0x38]
00624b64  04 00 83 e4                                      str r0, [r3], #4
00624b68  04 10 91 e5                                      ldr r1, [r1, #4]
00624b6c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00624b70  04 10 80 e5                                      str r1, [r0, #4]
00624b74  04 10 92 e5                                      ldr r1, [r2, #4]
00624b78  04 10 83 e5                                      str r1, [r3, #4]
00624b7c  08 20 92 e5                                      ldr r2, [r2, #8]
00624b80  08 20 83 e5                                      str r2, [r3, #8]
00624b84  f1 ff ff ea                                      b #0x624b50
00624b88  06 20 a0 e1                                      mov r2, r6
00624b8c  06 10 a0 e1                                      mov r1, r6
00624b90  06 00 a0 e1                                      mov r0, r6
00624b94  e7 ff ff ea                                      b #0x624b38

; FUNCTION 0x006251ac, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006251ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006251b0  01 00 53 e3                                      cmp r3, #1
006251b4  24 d0 4d e2                                      sub sp, sp, #0x24
006251b8  03 40 a0 e1                                      mov r4, r3
006251bc  02 b0 a0 e1                                      mov fp, r2
006251c0  2a 00 00 0a                                      beq #0x625270
006251c4  00 60 a0 e3                                      mov r6, #0
006251c8  00 00 53 e3                                      cmp r3, #0
006251cc  00 60 8d e5                                      str r6, [sp]
006251d0  04 60 8d e5                                      str r6, [sp, #4]
006251d4  08 60 8d e5                                      str r6, [sp, #8]
006251d8  0c 60 8d e5                                      str r6, [sp, #0xc]
006251dc  01 80 a0 11                                      movne r8, r1
006251e0  00 90 a0 13                                      movne sb, #0
006251e4  0d 70 a0 11                                      movne r7, sp
006251e8  2a 00 00 0a                                      beq #0x625298
006251ec  09 a1 9b e7                                      ldr sl, [fp, sb, lsl #2]
006251f0  00 50 a0 e3                                      mov r5, #0
006251f4  05 10 98 e7                                      ldr r1, [r8, r5]
006251f8  0a 00 a0 e1                                      mov r0, sl
006251fc  da a6 f3 eb                                      bl #0x30ed6c
00625200  06 10 a0 e1                                      mov r1, r6
00625204  66 a6 f3 eb                                      bl #0x30eba4
00625208  05 00 87 e7                                      str r0, [r7, r5]
0062520c  04 50 85 e2                                      add r5, r5, #4
00625210  10 00 55 e3                                      cmp r5, #0x10
00625214  05 60 97 17                                      ldrne r6, [r7, r5]
00625218  f5 ff ff 1a                                      bne #0x6251f4
0062521c  01 90 89 e2                                      add sb, sb, #1
00625220  04 00 59 e1                                      cmp sb, r4
00625224  10 80 88 e2                                      add r8, r8, #0x10
00625228  00 60 9d 15                                      ldrne r6, [sp]
0062522c  ee ff ff 1a                                      bne #0x6251ec
00625230  00 10 9d e5                                      ldr r1, [sp]
00625234  04 20 9d e5                                      ldr r2, [sp, #4]
00625238  08 30 9d e5                                      ldr r3, [sp, #8]
0062523c  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00625240  10 10 8d e5                                      str r1, [sp, #0x10]
00625244  14 20 8d e5                                      str r2, [sp, #0x14]
00625248  18 30 8d e5                                      str r3, [sp, #0x18]
0062524c  1c 60 8d e5                                      str r6, [sp, #0x1c]
00625250  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625254  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625258  00 20 a0 e3                                      mov r2, #0
0062525c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625260  10 30 8d e2                                      add r3, sp, #0x10
00625264  3f a5 fe eb                                      bl #0x5ce768
00625268  24 d0 8d e2                                      add sp, sp, #0x24
0062526c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625270  01 30 a0 e1                                      mov r3, r1
00625274  04 00 93 e4                                      ldr r0, [r3], #4
00625278  04 10 91 e5                                      ldr r1, [r1, #4]
0062527c  08 20 93 e5                                      ldr r2, [r3, #8]
00625280  04 30 93 e5                                      ldr r3, [r3, #4]
00625284  10 00 8d e5                                      str r0, [sp, #0x10]
00625288  14 10 8d e5                                      str r1, [sp, #0x14]
0062528c  18 30 8d e5                                      str r3, [sp, #0x18]
00625290  1c 20 8d e5                                      str r2, [sp, #0x1c]
00625294  ed ff ff ea                                      b #0x625250
00625298  06 30 a0 e1                                      mov r3, r6
0062529c  06 20 a0 e1                                      mov r2, r6
006252a0  06 10 a0 e1                                      mov r1, r6
006252a4  e5 ff ff ea                                      b #0x625240
