; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edcc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060edcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060edd4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getValueSize() const
; decoder-mode: arm
0060edd4  03 00 a0 e3                                      mov r0, #3
0060edd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060eddc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13retrieveValueEPvSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060eddc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f890, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060f890  10 40 2d e9                                      push {r4, lr}
0060f894  00 40 a0 e1                                      mov r4, r0
0060f898  84 fa f3 eb                                      bl #0x30e2b0
0060f89c  04 00 a0 e1                                      mov r0, r4
0060f8a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006119b8, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getInstance()
; decoder-mode: arm
006119b8  70 40 2d e9                                      push {r4, r5, r6, lr}
006119bc  70 40 9f e5                                      ldr r4, [pc, #0x70]
006119c0  70 30 9f e5                                      ldr r3, [pc, #0x70]
006119c4  04 40 8f e0                                      add r4, pc, r4
006119c8  03 60 94 e7                                      ldr r6, [r4, r3]
006119cc  00 30 96 e5                                      ldr r3, [r6]
006119d0  01 00 13 e3                                      tst r3, #1
006119d4  02 00 00 0a                                      beq #0x6119e4
006119d8  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006119dc  05 00 94 e7                                      ldr r0, [r4, r5]
006119e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006119e4  06 00 a0 e1                                      mov r0, r6
006119e8  5f f3 f3 eb                                      bl #0x30e76c
006119ec  00 00 50 e3                                      cmp r0, #0
006119f0  f8 ff ff 0a                                      beq #0x6119d8
006119f4  44 30 9f e5                                      ldr r3, [pc, #0x44]
006119f8  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006119fc  06 00 a0 e1                                      mov r0, r6
00611a00  03 30 94 e7                                      ldr r3, [r4, r3]
00611a04  05 60 94 e7                                      ldr r6, [r4, r5]
00611a08  08 30 83 e2                                      add r3, r3, #8
00611a0c  00 30 86 e5                                      str r3, [r6]
00611a10  09 f4 f3 eb                                      bl #0x30ea3c
00611a14  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611a18  06 00 a0 e1                                      mov r0, r6
00611a1c  03 10 94 e7                                      ldr r1, [r4, r3]
00611a20  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611a24  03 20 94 e7                                      ldr r2, [r4, r3]
00611a28  35 f2 f3 eb                                      bl #0x30e304
00611a2c  05 00 94 e7                                      ldr r0, [r4, r5]
00611a30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611a34  cc 30 38 00 cc 30 00 00 ac 30 00 00 6c 30 00 00  .byte 0xcc, 0x30, 0x38, 0x00, 0xcc, 0x30, 0x00, 0x00, 0xac, 0x30, 0x00, 0x00, 0x6c, 0x30, 0x00, 0x00
00611a44  34 25 00 00 90 18 00 00                          .byte 0x34, 0x25, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0061292c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061292c  70 40 2d e9                                      push {r4, r5, r6, lr}
00612930  01 00 a0 e1                                      mov r0, r1
00612934  00 10 a0 e3                                      mov r1, #0
00612938  03 40 a0 e1                                      mov r4, r3
0061293c  02 50 a0 e1                                      mov r5, r2
00612940  37 5d 01 eb                                      bl #0x669e24
00612944  04 20 90 e5                                      ldr r2, [r0, #4]
00612948  85 50 85 e0                                      add r5, r5, r5, lsl #1
0061294c  04 30 a0 e1                                      mov r3, r4
00612950  05 10 d2 e7                                      ldrb r1, [r2, r5]
00612954  05 50 82 e0                                      add r5, r2, r5
00612958  01 10 c3 e4                                      strb r1, [r3], #1
0061295c  01 20 d5 e5                                      ldrb r2, [r5, #1]
00612960  01 20 c4 e5                                      strb r2, [r4, #1]
00612964  02 20 d5 e5                                      ldrb r2, [r5, #2]
00612968  01 20 c3 e5                                      strb r2, [r3, #1]
0061296c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612970, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00612970  70 40 2d e9                                      push {r4, r5, r6, lr}
00612974  01 00 a0 e1                                      mov r0, r1
00612978  00 10 a0 e3                                      mov r1, #0
0061297c  03 60 a0 e1                                      mov r6, r3
00612980  02 40 a0 e1                                      mov r4, r2
00612984  10 50 9d e5                                      ldr r5, [sp, #0x10]
00612988  25 5d 01 eb                                      bl #0x669e24
0061298c  04 30 90 e5                                      ldr r3, [r0, #4]
00612990  86 60 86 e0                                      add r6, r6, r6, lsl #1
00612994  84 40 84 e0                                      add r4, r4, r4, lsl #1
00612998  04 40 83 e0                                      add r4, r3, r4
0061299c  06 60 83 e0                                      add r6, r3, r6
006129a0  00 30 a0 e3                                      mov r3, #0
006129a4  03 10 d6 e7                                      ldrb r1, [r6, r3]
006129a8  03 20 d4 e7                                      ldrb r2, [r4, r3]
006129ac  01 20 62 e0                                      rsb r2, r2, r1
006129b0  03 20 c5 e7                                      strb r2, [r5, r3]
006129b4  01 30 83 e2                                      add r3, r3, #1
006129b8  03 00 53 e3                                      cmp r3, #3
006129bc  f8 ff ff 1a                                      bne #0x6129a4
006129c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612a58, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00612a58  04 c0 9d e5                                      ldr ip, [sp, #4]
00612a5c  01 00 a0 e1                                      mov r0, r1
00612a60  02 10 a0 e1                                      mov r1, r2
00612a64  03 20 a0 e1                                      mov r2, r3
00612a68  00 30 9d e5                                      ldr r3, [sp]
00612a6c  00 c0 8d e5                                      str ip, [sp]
00612a70  08 c0 9d e5                                      ldr ip, [sp, #8]
00612a74  04 c0 8d e5                                      str ip, [sp, #4]
00612a78  d1 ff ff ea                                      b #0x6129c4

; FUNCTION 0x00618fa8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618fa8  00 20 a0 e3                                      mov r2, #0
00618fac  01 30 a0 e1                                      mov r3, r1
00618fb0  01 20 c3 e4                                      strb r2, [r3], #1
00618fb4  01 30 83 e2                                      add r3, r3, #1
00618fb8  01 20 c1 e5                                      strb r2, [r1, #1]
00618fbc  00 20 c3 e5                                      strb r2, [r3]
00618fc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061caa8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE10applyValueEPvSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061caa8  04 e0 2d e5                                      str lr, [sp, #-4]!
0061caac  02 30 d1 e5                                      ldrb r3, [r1, #2]
0061cab0  00 00 d1 e5                                      ldrb r0, [r1]
0061cab4  01 10 d1 e5                                      ldrb r1, [r1, #1]
0061cab8  0c d0 4d e2                                      sub sp, sp, #0xc
0061cabc  00 c0 e0 e3                                      mvn ip, #0
0061cac0  04 00 cd e5                                      strb r0, [sp, #4]
0061cac4  06 30 cd e5                                      strb r3, [sp, #6]
0061cac8  07 c0 cd e5                                      strb ip, [sp, #7]
0061cacc  00 30 a0 e3                                      mov r3, #0
0061cad0  05 10 cd e5                                      strb r1, [sp, #5]
0061cad4  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061cad8  02 00 a0 e1                                      mov r0, r2
0061cadc  03 20 a0 e1                                      mov r2, r3
0061cae0  04 30 8d e2                                      add r3, sp, #4
0061cae4  93 b8 fe eb                                      bl #0x5cad38
0061cae8  0c d0 8d e2                                      add sp, sp, #0xc
0061caec  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0061cb68, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0061cb68  01 00 a0 e1                                      mov r0, r1
0061cb6c  02 10 a0 e1                                      mov r1, r2
0061cb70  03 20 a0 e1                                      mov r2, r3
0061cb74  00 30 9d e5                                      ldr r3, [sp]
0061cb78  dc ff ff ea                                      b #0x61caf0

; FUNCTION 0x006212d8, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006212d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006212dc  01 00 53 e3                                      cmp r3, #1
006212e0  14 d0 4d e2                                      sub sp, sp, #0x14
006212e4  02 90 a0 e1                                      mov sb, r2
006212e8  2c 00 00 0a                                      beq #0x6213a0
006212ec  00 70 a0 e3                                      mov r7, #0
006212f0  00 00 53 e3                                      cmp r3, #0
006212f4  04 70 8d e5                                      str r7, [sp, #4]
006212f8  08 70 8d e5                                      str r7, [sp, #8]
006212fc  0c 70 8d e5                                      str r7, [sp, #0xc]
00621300  07 00 a0 01                                      moveq r0, r7
00621304  19 00 00 0a                                      beq #0x621370
00621308  83 30 83 e0                                      add r3, r3, r3, lsl #1
0062130c  01 60 a0 e1                                      mov r6, r1
00621310  03 b0 81 e0                                      add fp, r1, r3
00621314  04 80 8d e2                                      add r8, sp, #4
00621318  00 a0 99 e5                                      ldr sl, [sb]
0062131c  00 40 a0 e3                                      mov r4, #0
00621320  04 50 a0 e1                                      mov r5, r4
00621324  05 00 d6 e7                                      ldrb r0, [r6, r5]
00621328  8d b5 f3 eb                                      bl #0x30e964
0062132c  0a 10 a0 e1                                      mov r1, sl
00621330  8d b6 f3 eb                                      bl #0x30ed6c
00621334  07 10 a0 e1                                      mov r1, r7
00621338  19 b6 f3 eb                                      bl #0x30eba4
0062133c  04 00 88 e7                                      str r0, [r8, r4]
00621340  04 40 84 e2                                      add r4, r4, #4
00621344  0c 00 54 e3                                      cmp r4, #0xc
00621348  01 50 85 e2                                      add r5, r5, #1
0062134c  04 70 98 17                                      ldrne r7, [r8, r4]
00621350  f3 ff ff 1a                                      bne #0x621324
00621354  03 60 86 e2                                      add r6, r6, #3
00621358  0b 00 56 e1                                      cmp r6, fp
0062135c  02 00 00 0a                                      beq #0x62136c
00621360  04 70 9d e5                                      ldr r7, [sp, #4]
00621364  04 90 89 e2                                      add sb, sb, #4
00621368  ea ff ff ea                                      b #0x621318
0062136c  04 00 9d e5                                      ldr r0, [sp, #4]
00621370  ca 73 0a eb                                      bl #0x8be2a0
00621374  38 40 9d e5                                      ldr r4, [sp, #0x38]
00621378  01 00 c4 e4                                      strb r0, [r4], #1
0062137c  08 00 9d e5                                      ldr r0, [sp, #8]
00621380  c6 73 0a eb                                      bl #0x8be2a0
00621384  38 20 9d e5                                      ldr r2, [sp, #0x38]
00621388  01 00 c2 e5                                      strb r0, [r2, #1]
0062138c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00621390  c2 73 0a eb                                      bl #0x8be2a0
00621394  01 00 c4 e5                                      strb r0, [r4, #1]
00621398  14 d0 8d e2                                      add sp, sp, #0x14
0062139c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006213a0  01 20 a0 e1                                      mov r2, r1
006213a4  01 00 d2 e4                                      ldrb r0, [r2], #1
006213a8  38 30 9d e5                                      ldr r3, [sp, #0x38]
006213ac  01 00 c3 e4                                      strb r0, [r3], #1
006213b0  01 10 d1 e5                                      ldrb r1, [r1, #1]
006213b4  38 00 9d e5                                      ldr r0, [sp, #0x38]
006213b8  01 10 c0 e5                                      strb r1, [r0, #1]
006213bc  01 20 d2 e5                                      ldrb r2, [r2, #1]
006213c0  01 20 c3 e5                                      strb r2, [r3, #1]
006213c4  f3 ff ff ea                                      b #0x621398

; FUNCTION 0x006214b8, declared_size=288, range_size=288, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006214b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006214bc  01 00 53 e3                                      cmp r3, #1
006214c0  14 d0 4d e2                                      sub sp, sp, #0x14
006214c4  02 90 a0 e1                                      mov sb, r2
006214c8  39 00 00 0a                                      beq #0x6215b4
006214cc  00 70 a0 e3                                      mov r7, #0
006214d0  00 00 53 e3                                      cmp r3, #0
006214d4  00 70 8d e5                                      str r7, [sp]
006214d8  04 70 8d e5                                      str r7, [sp, #4]
006214dc  08 70 8d e5                                      str r7, [sp, #8]
006214e0  07 00 a0 01                                      moveq r0, r7
006214e4  0d 80 a0 01                                      moveq r8, sp
006214e8  19 00 00 0a                                      beq #0x621554
006214ec  83 30 83 e0                                      add r3, r3, r3, lsl #1
006214f0  01 60 a0 e1                                      mov r6, r1
006214f4  03 b0 81 e0                                      add fp, r1, r3
006214f8  0d 80 a0 e1                                      mov r8, sp
006214fc  00 a0 99 e5                                      ldr sl, [sb]
00621500  00 40 a0 e3                                      mov r4, #0
00621504  04 50 a0 e1                                      mov r5, r4
00621508  05 00 d6 e7                                      ldrb r0, [r6, r5]
0062150c  14 b5 f3 eb                                      bl #0x30e964
00621510  0a 10 a0 e1                                      mov r1, sl
00621514  14 b6 f3 eb                                      bl #0x30ed6c
00621518  07 10 a0 e1                                      mov r1, r7
0062151c  a0 b5 f3 eb                                      bl #0x30eba4
00621520  04 00 88 e7                                      str r0, [r8, r4]
00621524  04 40 84 e2                                      add r4, r4, #4
00621528  0c 00 54 e3                                      cmp r4, #0xc
0062152c  01 50 85 e2                                      add r5, r5, #1
00621530  04 70 98 17                                      ldrne r7, [r8, r4]
00621534  f3 ff ff 1a                                      bne #0x621508
00621538  03 60 86 e2                                      add r6, r6, #3
0062153c  0b 00 56 e1                                      cmp r6, fp
00621540  02 00 00 0a                                      beq #0x621550
00621544  00 70 9d e5                                      ldr r7, [sp]
00621548  04 90 89 e2                                      add sb, sb, #4
0062154c  ea ff ff ea                                      b #0x6214fc
00621550  00 00 9d e5                                      ldr r0, [sp]
00621554  51 73 0a eb                                      bl #0x8be2a0
00621558  0c 00 cd e5                                      strb r0, [sp, #0xc]
0062155c  04 00 9d e5                                      ldr r0, [sp, #4]
00621560  4e 73 0a eb                                      bl #0x8be2a0
00621564  0d 00 cd e5                                      strb r0, [sp, #0xd]
00621568  08 00 9d e5                                      ldr r0, [sp, #8]
0062156c  4b 73 0a eb                                      bl #0x8be2a0
00621570  0e 00 cd e5                                      strb r0, [sp, #0xe]
00621574  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00621578  0c 40 dd e5                                      ldrb r4, [sp, #0xc]
0062157c  0d e0 dd e5                                      ldrb lr, [sp, #0xd]
00621580  0e c0 dd e5                                      ldrb ip, [sp, #0xe]
00621584  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00621588  00 50 e0 e3                                      mvn r5, #0
0062158c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00621590  0d 30 a0 e1                                      mov r3, sp
00621594  00 20 a0 e3                                      mov r2, #0
00621598  03 50 cd e5                                      strb r5, [sp, #3]
0062159c  00 40 cd e5                                      strb r4, [sp]
006215a0  01 e0 cd e5                                      strb lr, [sp, #1]
006215a4  02 c0 cd e5                                      strb ip, [sp, #2]
006215a8  e2 a5 fe eb                                      bl #0x5cad38
006215ac  14 d0 8d e2                                      add sp, sp, #0x14
006215b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006215b4  01 30 a0 e1                                      mov r3, r1
006215b8  01 00 d3 e4                                      ldrb r0, [r3], #1
006215bc  01 20 d1 e5                                      ldrb r2, [r1, #1]
006215c0  0d 80 a0 e1                                      mov r8, sp
006215c4  01 30 d3 e5                                      ldrb r3, [r3, #1]
006215c8  0c 00 cd e5                                      strb r0, [sp, #0xc]
006215cc  0d 20 cd e5                                      strb r2, [sp, #0xd]
006215d0  0e 30 cd e5                                      strb r3, [sp, #0xe]
006215d4  e6 ff ff ea                                      b #0x621574

; FUNCTION 0x006216b4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006216b4  01 00 a0 e1                                      mov r0, r1
006216b8  04 c0 9d e5                                      ldr ip, [sp, #4]
006216bc  02 10 a0 e1                                      mov r1, r2
006216c0  03 20 a0 e1                                      mov r2, r3
006216c4  00 30 9d e5                                      ldr r3, [sp]
006216c8  00 c0 8d e5                                      str ip, [sp]
006216cc  c1 ff ff ea                                      b #0x6215d8

; FUNCTION 0x00621724, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621724  04 c0 9d e5                                      ldr ip, [sp, #4]
00621728  01 00 a0 e1                                      mov r0, r1
0062172c  02 10 a0 e1                                      mov r1, r2
00621730  03 20 a0 e1                                      mov r2, r3
00621734  00 30 9d e5                                      ldr r3, [sp]
00621738  00 c0 8d e5                                      str ip, [sp]
0062173c  08 c0 9d e5                                      ldr ip, [sp, #8]
00621740  04 c0 8d e5                                      str ip, [sp, #4]
00621744  e1 ff ff ea                                      b #0x6216d0

; FUNCTION 0x00621748, declared_size=288, range_size=288, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621748  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062174c  01 00 53 e3                                      cmp r3, #1
00621750  14 d0 4d e2                                      sub sp, sp, #0x14
00621754  02 90 a0 e1                                      mov sb, r2
00621758  39 00 00 0a                                      beq #0x621844
0062175c  00 70 a0 e3                                      mov r7, #0
00621760  00 00 53 e3                                      cmp r3, #0
00621764  00 70 8d e5                                      str r7, [sp]
00621768  04 70 8d e5                                      str r7, [sp, #4]
0062176c  08 70 8d e5                                      str r7, [sp, #8]
00621770  07 00 a0 01                                      moveq r0, r7
00621774  0d 80 a0 01                                      moveq r8, sp
00621778  19 00 00 0a                                      beq #0x6217e4
0062177c  83 30 83 e0                                      add r3, r3, r3, lsl #1
00621780  01 60 a0 e1                                      mov r6, r1
00621784  03 b0 81 e0                                      add fp, r1, r3
00621788  0d 80 a0 e1                                      mov r8, sp
0062178c  00 a0 99 e5                                      ldr sl, [sb]
00621790  00 40 a0 e3                                      mov r4, #0
00621794  04 50 a0 e1                                      mov r5, r4
00621798  05 00 d6 e7                                      ldrb r0, [r6, r5]
0062179c  70 b4 f3 eb                                      bl #0x30e964
006217a0  0a 10 a0 e1                                      mov r1, sl
006217a4  70 b5 f3 eb                                      bl #0x30ed6c
006217a8  07 10 a0 e1                                      mov r1, r7
006217ac  fc b4 f3 eb                                      bl #0x30eba4
006217b0  04 00 88 e7                                      str r0, [r8, r4]
006217b4  04 40 84 e2                                      add r4, r4, #4
006217b8  0c 00 54 e3                                      cmp r4, #0xc
006217bc  01 50 85 e2                                      add r5, r5, #1
006217c0  04 70 98 17                                      ldrne r7, [r8, r4]
006217c4  f3 ff ff 1a                                      bne #0x621798
006217c8  03 60 86 e2                                      add r6, r6, #3
006217cc  0b 00 56 e1                                      cmp r6, fp
006217d0  02 00 00 0a                                      beq #0x6217e0
006217d4  00 70 9d e5                                      ldr r7, [sp]
006217d8  04 90 89 e2                                      add sb, sb, #4
006217dc  ea ff ff ea                                      b #0x62178c
006217e0  00 00 9d e5                                      ldr r0, [sp]
006217e4  ad 72 0a eb                                      bl #0x8be2a0
006217e8  0c 00 cd e5                                      strb r0, [sp, #0xc]
006217ec  04 00 9d e5                                      ldr r0, [sp, #4]
006217f0  aa 72 0a eb                                      bl #0x8be2a0
006217f4  0d 00 cd e5                                      strb r0, [sp, #0xd]
006217f8  08 00 9d e5                                      ldr r0, [sp, #8]
006217fc  a7 72 0a eb                                      bl #0x8be2a0
00621800  0e 00 cd e5                                      strb r0, [sp, #0xe]
00621804  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00621808  0c 40 dd e5                                      ldrb r4, [sp, #0xc]
0062180c  0d e0 dd e5                                      ldrb lr, [sp, #0xd]
00621810  0e c0 dd e5                                      ldrb ip, [sp, #0xe]
00621814  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00621818  00 50 e0 e3                                      mvn r5, #0
0062181c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00621820  0d 30 a0 e1                                      mov r3, sp
00621824  00 20 a0 e3                                      mov r2, #0
00621828  03 50 cd e5                                      strb r5, [sp, #3]
0062182c  00 40 cd e5                                      strb r4, [sp]
00621830  01 e0 cd e5                                      strb lr, [sp, #1]
00621834  02 c0 cd e5                                      strb ip, [sp, #2]
00621838  3e a5 fe eb                                      bl #0x5cad38
0062183c  14 d0 8d e2                                      add sp, sp, #0x14
00621840  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621844  01 30 a0 e1                                      mov r3, r1
00621848  01 00 d3 e4                                      ldrb r0, [r3], #1
0062184c  01 20 d1 e5                                      ldrb r2, [r1, #1]
00621850  0d 80 a0 e1                                      mov r8, sp
00621854  01 30 d3 e5                                      ldrb r3, [r3, #1]
00621858  0c 00 cd e5                                      strb r0, [sp, #0xc]
0062185c  0d 20 cd e5                                      strb r2, [sp, #0xd]
00621860  0e 30 cd e5                                      strb r3, [sp, #0xe]
00621864  e6 ff ff ea                                      b #0x621804

; FUNCTION 0x00621868, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00621868  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062186c  01 00 53 e3                                      cmp r3, #1
00621870  14 d0 4d e2                                      sub sp, sp, #0x14
00621874  02 90 a0 e1                                      mov sb, r2
00621878  2c 00 00 0a                                      beq #0x621930
0062187c  00 70 a0 e3                                      mov r7, #0
00621880  00 00 53 e3                                      cmp r3, #0
00621884  04 70 8d e5                                      str r7, [sp, #4]
00621888  08 70 8d e5                                      str r7, [sp, #8]
0062188c  0c 70 8d e5                                      str r7, [sp, #0xc]
00621890  07 00 a0 01                                      moveq r0, r7
00621894  19 00 00 0a                                      beq #0x621900
00621898  83 30 83 e0                                      add r3, r3, r3, lsl #1
0062189c  01 60 a0 e1                                      mov r6, r1
006218a0  03 b0 81 e0                                      add fp, r1, r3
006218a4  04 80 8d e2                                      add r8, sp, #4
006218a8  00 a0 99 e5                                      ldr sl, [sb]
006218ac  00 40 a0 e3                                      mov r4, #0
006218b0  04 50 a0 e1                                      mov r5, r4
006218b4  05 00 d6 e7                                      ldrb r0, [r6, r5]
006218b8  29 b4 f3 eb                                      bl #0x30e964
006218bc  0a 10 a0 e1                                      mov r1, sl
006218c0  29 b5 f3 eb                                      bl #0x30ed6c
006218c4  07 10 a0 e1                                      mov r1, r7
006218c8  b5 b4 f3 eb                                      bl #0x30eba4
006218cc  04 00 88 e7                                      str r0, [r8, r4]
006218d0  04 40 84 e2                                      add r4, r4, #4
006218d4  0c 00 54 e3                                      cmp r4, #0xc
006218d8  01 50 85 e2                                      add r5, r5, #1
006218dc  04 70 98 17                                      ldrne r7, [r8, r4]
006218e0  f3 ff ff 1a                                      bne #0x6218b4
006218e4  03 60 86 e2                                      add r6, r6, #3
006218e8  0b 00 56 e1                                      cmp r6, fp
006218ec  02 00 00 0a                                      beq #0x6218fc
006218f0  04 70 9d e5                                      ldr r7, [sp, #4]
006218f4  04 90 89 e2                                      add sb, sb, #4
006218f8  ea ff ff ea                                      b #0x6218a8
006218fc  04 00 9d e5                                      ldr r0, [sp, #4]
00621900  66 72 0a eb                                      bl #0x8be2a0
00621904  38 40 9d e5                                      ldr r4, [sp, #0x38]
00621908  01 00 c4 e4                                      strb r0, [r4], #1
0062190c  08 00 9d e5                                      ldr r0, [sp, #8]
00621910  62 72 0a eb                                      bl #0x8be2a0
00621914  38 20 9d e5                                      ldr r2, [sp, #0x38]
00621918  01 00 c2 e5                                      strb r0, [r2, #1]
0062191c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00621920  5e 72 0a eb                                      bl #0x8be2a0
00621924  01 00 c4 e5                                      strb r0, [r4, #1]
00621928  14 d0 8d e2                                      add sp, sp, #0x14
0062192c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621930  01 20 a0 e1                                      mov r2, r1
00621934  01 00 d2 e4                                      ldrb r0, [r2], #1
00621938  38 30 9d e5                                      ldr r3, [sp, #0x38]
0062193c  01 00 c3 e4                                      strb r0, [r3], #1
00621940  01 10 d1 e5                                      ldrb r1, [r1, #1]
00621944  38 00 9d e5                                      ldr r0, [sp, #0x38]
00621948  01 10 c0 e5                                      strb r1, [r0, #1]
0062194c  01 20 d2 e5                                      ldrb r2, [r2, #1]
00621950  01 20 c3 e5                                      strb r2, [r3, #1]
00621954  f3 ff ff ea                                      b #0x621928
