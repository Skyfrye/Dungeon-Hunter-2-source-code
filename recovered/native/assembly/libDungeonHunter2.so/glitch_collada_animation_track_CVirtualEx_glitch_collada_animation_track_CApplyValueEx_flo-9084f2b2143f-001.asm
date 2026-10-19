; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed8c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getValueSize() const
; decoder-mode: arm
0060ee94  04 00 a0 e3                                      mov r0, #4
0060ee98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee9c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE13retrieveValueEPvSC_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f764, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f764  10 40 2d e9                                      push {r4, lr}
0060f768  00 40 a0 e1                                      mov r4, r0
0060f76c  cf fa f3 eb                                      bl #0x30e2b0
0060f770  04 00 a0 e1                                      mov r0, r4
0060f774  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0061110c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getInstance()
; decoder-mode: arm
0061110c  70 40 2d e9                                      push {r4, r5, r6, lr}
00611110  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611114  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611118  04 40 8f e0                                      add r4, pc, r4
0061111c  03 60 94 e7                                      ldr r6, [r4, r3]
00611120  00 30 96 e5                                      ldr r3, [r6]
00611124  01 00 13 e3                                      tst r3, #1
00611128  02 00 00 0a                                      beq #0x611138
0061112c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611130  05 00 94 e7                                      ldr r0, [r4, r5]
00611134  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611138  06 00 a0 e1                                      mov r0, r6
0061113c  8a f5 f3 eb                                      bl #0x30e76c
00611140  00 00 50 e3                                      cmp r0, #0
00611144  f8 ff ff 0a                                      beq #0x61112c
00611148  44 30 9f e5                                      ldr r3, [pc, #0x44]
0061114c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611150  06 00 a0 e1                                      mov r0, r6
00611154  03 30 94 e7                                      ldr r3, [r4, r3]
00611158  05 60 94 e7                                      ldr r6, [r4, r5]
0061115c  08 30 83 e2                                      add r3, r3, #8
00611160  00 30 86 e5                                      str r3, [r6]
00611164  34 f6 f3 eb                                      bl #0x30ea3c
00611168  28 30 9f e5                                      ldr r3, [pc, #0x28]
0061116c  06 00 a0 e1                                      mov r0, r6
00611170  03 10 94 e7                                      ldr r1, [r4, r3]
00611174  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611178  03 20 94 e7                                      ldr r2, [r4, r3]
0061117c  60 f4 f3 eb                                      bl #0x30e304
00611180  05 00 94 e7                                      ldr r0, [r4, r5]
00611184  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611188  78 39 38 00 b0 22 00 00 ec 36 00 00 dc 19 00 00  .byte 0x78, 0x39, 0x38, 0x00, 0xb0, 0x22, 0x00, 0x00, 0xec, 0x36, 0x00, 0x00, 0xdc, 0x19, 0x00, 0x00
00611198  08 38 00 00 90 18 00 00                          .byte 0x08, 0x38, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618da8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618da8  00 20 a0 e3                                      mov r2, #0
00618dac  01 30 a0 e1                                      mov r3, r1
00618db0  01 20 c3 e4                                      strb r2, [r3], #1
00618db4  01 30 83 e2                                      add r3, r3, #1
00618db8  01 20 c1 e5                                      strb r2, [r1, #1]
00618dbc  01 20 c3 e4                                      strb r2, [r3], #1
00618dc0  00 20 c3 e5                                      strb r2, [r3]
00618dc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00618fe4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE10applyValueEPvSC_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00618fe4  00 c0 a0 e3                                      mov ip, #0
00618fe8  01 30 a0 e1                                      mov r3, r1
00618fec  b8 10 dc e1                                      ldrh r1, [ip, #8]
00618ff0  02 00 a0 e1                                      mov r0, r2
00618ff4  0c 20 a0 e1                                      mov r2, ip
00618ff8  e3 b6 fe ea                                      b #0x5c6b8c

; FUNCTION 0x00619088, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE15applyAddedValueEPvPfiSC_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00619088  01 00 a0 e1                                      mov r0, r1
0061908c  04 c0 9d e5                                      ldr ip, [sp, #4]
00619090  02 10 a0 e1                                      mov r1, r2
00619094  03 20 a0 e1                                      mov r2, r3
00619098  00 30 9d e5                                      ldr r3, [sp]
0061909c  00 c0 8d e5                                      str ip, [sp]
006190a0  d5 ff ff ea                                      b #0x618ffc

; FUNCTION 0x0061d414, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061d414  01 00 a0 e1                                      mov r0, r1
0061d418  02 10 a0 e1                                      mov r1, r2
0061d41c  03 20 a0 e1                                      mov r2, r3
0061d420  00 30 9d e5                                      ldr r3, [sp]
0061d424  e9 ff ff ea                                      b #0x61d3d0

; FUNCTION 0x0061db2c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061db2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0061db30  01 00 a0 e1                                      mov r0, r1
0061db34  00 10 a0 e3                                      mov r1, #0
0061db38  03 50 a0 e1                                      mov r5, r3
0061db3c  02 40 a0 e1                                      mov r4, r2
0061db40  b7 30 01 eb                                      bl #0x669e24
0061db44  04 30 90 e5                                      ldr r3, [r0, #4]
0061db48  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0061db4c  00 30 85 e5                                      str r3, [r5]
0061db50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061f46c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061f46c  70 40 2d e9                                      push {r4, r5, r6, lr}
0061f470  01 00 a0 e1                                      mov r0, r1
0061f474  00 10 a0 e3                                      mov r1, #0
0061f478  02 40 a0 e1                                      mov r4, r2
0061f47c  03 50 a0 e1                                      mov r5, r3
0061f480  67 2a 01 eb                                      bl #0x669e24
0061f484  04 30 90 e5                                      ldr r3, [r0, #4]
0061f488  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061f48c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061f490  c5 bb f3 eb                                      bl #0x30e3ac
0061f494  10 30 9d e5                                      ldr r3, [sp, #0x10]
0061f498  00 00 83 e5                                      str r0, [r3]
0061f49c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061f4f8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061f4f8  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f4fc  01 00 a0 e1                                      mov r0, r1
0061f500  02 10 a0 e1                                      mov r1, r2
0061f504  03 20 a0 e1                                      mov r2, r3
0061f508  00 30 9d e5                                      ldr r3, [sp]
0061f50c  00 c0 8d e5                                      str ip, [sp]
0061f510  08 c0 9d e5                                      ldr ip, [sp, #8]
0061f514  04 c0 8d e5                                      str ip, [sp, #4]
0061f518  e0 ff ff ea                                      b #0x61f4a0

; FUNCTION 0x00620118, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE17applyBlendedValueEPvPfiSC_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620118  01 00 a0 e1                                      mov r0, r1
0062011c  04 c0 9d e5                                      ldr ip, [sp, #4]
00620120  02 10 a0 e1                                      mov r1, r2
00620124  03 20 a0 e1                                      mov r2, r3
00620128  00 30 9d e5                                      ldr r3, [sp]
0062012c  00 c0 8d e5                                      str ip, [sp]
00620130  d5 ff ff ea                                      b #0x62008c

; FUNCTION 0x00620134, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE15getBlendedValueEPvPfiSC_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00620134  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00620138  01 00 53 e3                                      cmp r3, #1
0062013c  03 40 a0 e1                                      mov r4, r3
00620140  01 50 a0 e1                                      mov r5, r1
00620144  02 80 a0 e1                                      mov r8, r2
00620148  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0062014c  10 00 00 0a                                      beq #0x620194
00620150  00 00 53 e3                                      cmp r3, #0
00620154  00 70 a0 03                                      moveq r7, #0
00620158  0b 00 00 0a                                      beq #0x62018c
0062015c  00 70 a0 e3                                      mov r7, #0
00620160  00 60 a0 e3                                      mov r6, #0
00620164  06 10 98 e7                                      ldr r1, [r8, r6]
00620168  06 00 95 e7                                      ldr r0, [r5, r6]
0062016c  fe ba f3 eb                                      bl #0x30ed6c
00620170  00 10 a0 e1                                      mov r1, r0
00620174  07 00 a0 e1                                      mov r0, r7
00620178  89 ba f3 eb                                      bl #0x30eba4
0062017c  01 40 54 e2                                      subs r4, r4, #1
00620180  00 70 a0 e1                                      mov r7, r0
00620184  04 60 86 e2                                      add r6, r6, #4
00620188  f5 ff ff 1a                                      bne #0x620164
0062018c  00 70 8a e5                                      str r7, [sl]
00620190  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00620194  00 30 91 e5                                      ldr r3, [r1]
00620198  00 30 8a e5                                      str r3, [sl]
0062019c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006201a0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE13getAddedValueEPvPfiSC_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006201a0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006201a4  01 00 53 e3                                      cmp r3, #1
006201a8  03 40 a0 e1                                      mov r4, r3
006201ac  01 50 a0 e1                                      mov r5, r1
006201b0  02 80 a0 e1                                      mov r8, r2
006201b4  20 a0 9d e5                                      ldr sl, [sp, #0x20]
006201b8  10 00 00 0a                                      beq #0x620200
006201bc  00 00 53 e3                                      cmp r3, #0
006201c0  00 70 a0 03                                      moveq r7, #0
006201c4  0b 00 00 0a                                      beq #0x6201f8
006201c8  00 70 a0 e3                                      mov r7, #0
006201cc  00 60 a0 e3                                      mov r6, #0
006201d0  06 10 98 e7                                      ldr r1, [r8, r6]
006201d4  06 00 95 e7                                      ldr r0, [r5, r6]
006201d8  e3 ba f3 eb                                      bl #0x30ed6c
006201dc  00 10 a0 e1                                      mov r1, r0
006201e0  07 00 a0 e1                                      mov r0, r7
006201e4  6e ba f3 eb                                      bl #0x30eba4
006201e8  01 40 54 e2                                      subs r4, r4, #1
006201ec  00 70 a0 e1                                      mov r7, r0
006201f0  04 60 86 e2                                      add r6, r6, #4
006201f4  f5 ff ff 1a                                      bne #0x6201d0
006201f8  00 70 8a e5                                      str r7, [sl]
006201fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00620200  00 30 91 e5                                      ldr r3, [r1]
00620204  00 30 8a e5                                      str r3, [sl]
00620208  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00620284, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00620284  01 00 a0 e1                                      mov r0, r1
00620288  04 c0 9d e5                                      ldr ip, [sp, #4]
0062028c  02 10 a0 e1                                      mov r1, r2
00620290  03 20 a0 e1                                      mov r2, r3
00620294  00 30 9d e5                                      ldr r3, [sp]
00620298  00 c0 8d e5                                      str ip, [sp]
0062029c  da ff ff ea                                      b #0x62020c

; FUNCTION 0x006202d4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006202d4  04 c0 9d e5                                      ldr ip, [sp, #4]
006202d8  01 00 a0 e1                                      mov r0, r1
006202dc  02 10 a0 e1                                      mov r1, r2
006202e0  03 20 a0 e1                                      mov r2, r3
006202e4  00 30 9d e5                                      ldr r3, [sp]
006202e8  00 c0 8d e5                                      str ip, [sp]
006202ec  08 c0 9d e5                                      ldr ip, [sp, #8]
006202f0  04 c0 8d e5                                      str ip, [sp, #4]
006202f4  e9 ff ff ea                                      b #0x6202a0
