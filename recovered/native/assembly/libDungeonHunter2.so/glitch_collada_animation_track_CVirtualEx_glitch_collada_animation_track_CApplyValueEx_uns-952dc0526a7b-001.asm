; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edc8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060edc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ede0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getValueSize() const
; decoder-mode: arm
0060ede0  04 00 a0 e3                                      mov r0, #4
0060ede4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ede8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13retrieveValueEPvSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ede8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f8a4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060f8a4  10 40 2d e9                                      push {r4, lr}
0060f8a8  00 40 a0 e1                                      mov r4, r0
0060f8ac  7f fa f3 eb                                      bl #0x30e2b0
0060f8b0  04 00 a0 e1                                      mov r0, r4
0060f8b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611a4c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getInstance()
; decoder-mode: arm
00611a4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00611a50  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611a54  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611a58  04 40 8f e0                                      add r4, pc, r4
00611a5c  03 60 94 e7                                      ldr r6, [r4, r3]
00611a60  00 30 96 e5                                      ldr r3, [r6]
00611a64  01 00 13 e3                                      tst r3, #1
00611a68  02 00 00 0a                                      beq #0x611a78
00611a6c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611a70  05 00 94 e7                                      ldr r0, [r4, r5]
00611a74  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611a78  06 00 a0 e1                                      mov r0, r6
00611a7c  3a f3 f3 eb                                      bl #0x30e76c
00611a80  00 00 50 e3                                      cmp r0, #0
00611a84  f8 ff ff 0a                                      beq #0x611a6c
00611a88  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611a8c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611a90  06 00 a0 e1                                      mov r0, r6
00611a94  03 30 94 e7                                      ldr r3, [r4, r3]
00611a98  05 60 94 e7                                      ldr r6, [r4, r5]
00611a9c  08 30 83 e2                                      add r3, r3, #8
00611aa0  00 30 86 e5                                      str r3, [r6]
00611aa4  e4 f3 f3 eb                                      bl #0x30ea3c
00611aa8  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611aac  06 00 a0 e1                                      mov r0, r6
00611ab0  03 10 94 e7                                      ldr r1, [r4, r3]
00611ab4  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611ab8  03 20 94 e7                                      ldr r2, [r4, r3]
00611abc  10 f2 f3 eb                                      bl #0x30e304
00611ac0  05 00 94 e7                                      ldr r0, [r4, r5]
00611ac4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611ac8  38 30 38 00 44 39 00 00 dc 48 00 00 68 0a 00 00  .byte 0x38, 0x30, 0x38, 0x00, 0x44, 0x39, 0x00, 0x00, 0xdc, 0x48, 0x00, 0x00, 0x68, 0x0a, 0x00, 0x00
00611ad8  94 0f 00 00 90 18 00 00                          .byte 0x94, 0x0f, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00612bbc, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00612bbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00612bc0  01 00 a0 e1                                      mov r0, r1
00612bc4  00 10 a0 e3                                      mov r1, #0
00612bc8  02 40 a0 e1                                      mov r4, r2
00612bcc  03 50 a0 e1                                      mov r5, r3
00612bd0  93 5c 01 eb                                      bl #0x669e24
00612bd4  04 20 90 e5                                      ldr r2, [r0, #4]
00612bd8  05 30 a0 e1                                      mov r3, r5
00612bdc  04 11 d2 e7                                      ldrb r1, [r2, r4, lsl #2]
00612be0  04 41 82 e0                                      add r4, r2, r4, lsl #2
00612be4  01 20 84 e2                                      add r2, r4, #1
00612be8  01 10 c3 e4                                      strb r1, [r3], #1
00612bec  01 10 d4 e5                                      ldrb r1, [r4, #1]
00612bf0  01 10 c5 e5                                      strb r1, [r5, #1]
00612bf4  01 10 d2 e5                                      ldrb r1, [r2, #1]
00612bf8  01 10 c3 e5                                      strb r1, [r3, #1]
00612bfc  02 20 d2 e5                                      ldrb r2, [r2, #2]
00612c00  02 20 c3 e5                                      strb r2, [r3, #2]
00612c04  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612c08, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00612c08  70 40 2d e9                                      push {r4, r5, r6, lr}
00612c0c  01 00 a0 e1                                      mov r0, r1
00612c10  00 10 a0 e3                                      mov r1, #0
00612c14  02 40 a0 e1                                      mov r4, r2
00612c18  03 60 a0 e1                                      mov r6, r3
00612c1c  10 50 9d e5                                      ldr r5, [sp, #0x10]
00612c20  7f 5c 01 eb                                      bl #0x669e24
00612c24  04 20 90 e5                                      ldr r2, [r0, #4]
00612c28  00 30 a0 e3                                      mov r3, #0
00612c2c  04 41 82 e0                                      add r4, r2, r4, lsl #2
00612c30  06 61 82 e0                                      add r6, r2, r6, lsl #2
00612c34  03 10 d6 e7                                      ldrb r1, [r6, r3]
00612c38  03 20 d4 e7                                      ldrb r2, [r4, r3]
00612c3c  01 20 62 e0                                      rsb r2, r2, r1
00612c40  03 20 c5 e7                                      strb r2, [r5, r3]
00612c44  01 30 83 e2                                      add r3, r3, #1
00612c48  04 00 53 e3                                      cmp r3, #4
00612c4c  f8 ff ff 1a                                      bne #0x612c34
00612c50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612cdc, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00612cdc  04 c0 9d e5                                      ldr ip, [sp, #4]
00612ce0  01 00 a0 e1                                      mov r0, r1
00612ce4  02 10 a0 e1                                      mov r1, r2
00612ce8  03 20 a0 e1                                      mov r2, r3
00612cec  00 30 9d e5                                      ldr r3, [sp]
00612cf0  00 c0 8d e5                                      str ip, [sp]
00612cf4  08 c0 9d e5                                      ldr ip, [sp, #8]
00612cf8  04 c0 8d e5                                      str ip, [sp, #4]
00612cfc  d4 ff ff ea                                      b #0x612c54

; FUNCTION 0x00618fc4, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618fc4  00 20 a0 e3                                      mov r2, #0
00618fc8  01 30 a0 e1                                      mov r3, r1
00618fcc  01 20 c3 e4                                      strb r2, [r3], #1
00618fd0  01 30 83 e2                                      add r3, r3, #1
00618fd4  01 20 c1 e5                                      strb r2, [r1, #1]
00618fd8  01 20 c3 e4                                      strb r2, [r3], #1
00618fdc  00 20 c3 e5                                      strb r2, [r3]
00618fe0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00622aec, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE10applyValueEPvSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622aec  04 e0 2d e5                                      str lr, [sp, #-4]!
00622af0  02 30 d1 e5                                      ldrb r3, [r1, #2]
00622af4  03 c0 d1 e5                                      ldrb ip, [r1, #3]
00622af8  00 00 d1 e5                                      ldrb r0, [r1]
00622afc  01 10 d1 e5                                      ldrb r1, [r1, #1]
00622b00  0c d0 4d e2                                      sub sp, sp, #0xc
00622b04  04 00 cd e5                                      strb r0, [sp, #4]
00622b08  06 30 cd e5                                      strb r3, [sp, #6]
00622b0c  07 c0 cd e5                                      strb ip, [sp, #7]
00622b10  00 30 a0 e3                                      mov r3, #0
00622b14  05 10 cd e5                                      strb r1, [sp, #5]
00622b18  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00622b1c  02 00 a0 e1                                      mov r0, r2
00622b20  03 20 a0 e1                                      mov r2, r3
00622b24  04 30 8d e2                                      add r3, sp, #4
00622b28  82 a0 fe eb                                      bl #0x5cad38
00622b2c  0c d0 8d e2                                      add sp, sp, #0xc
00622b30  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00622bb4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622bb4  01 00 a0 e1                                      mov r0, r1
00622bb8  02 10 a0 e1                                      mov r1, r2
00622bbc  03 20 a0 e1                                      mov r2, r3
00622bc0  00 30 9d e5                                      ldr r3, [sp]
00622bc4  da ff ff ea                                      b #0x622b34

; FUNCTION 0x00625b68, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00625b68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00625b6c  01 00 53 e3                                      cmp r3, #1
00625b70  24 d0 4d e2                                      sub sp, sp, #0x24
00625b74  03 40 a0 e1                                      mov r4, r3
00625b78  06 00 8d e8                                      stm sp, {r1, r2}
00625b7c  3a 00 00 0a                                      beq #0x625c6c
00625b80  00 70 a0 e3                                      mov r7, #0
00625b84  00 00 53 e3                                      cmp r3, #0
00625b88  0c 70 8d e5                                      str r7, [sp, #0xc]
00625b8c  10 70 8d e5                                      str r7, [sp, #0x10]
00625b90  14 70 8d e5                                      str r7, [sp, #0x14]
00625b94  18 70 8d e5                                      str r7, [sp, #0x18]
00625b98  00 b0 a0 13                                      movne fp, #0
00625b9c  0c 80 8d 12                                      addne r8, sp, #0xc
00625ba0  3d 00 00 0a                                      beq #0x625c9c
00625ba4  04 20 9d e5                                      ldr r2, [sp, #4]
00625ba8  00 30 9d e5                                      ldr r3, [sp]
00625bac  00 50 a0 e3                                      mov r5, #0
00625bb0  0b a0 92 e7                                      ldr sl, [r2, fp]
00625bb4  0b 90 83 e0                                      add sb, r3, fp
00625bb8  05 60 a0 e1                                      mov r6, r5
00625bbc  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625bc0  67 a3 f3 eb                                      bl #0x30e964
00625bc4  0a 10 a0 e1                                      mov r1, sl
00625bc8  67 a4 f3 eb                                      bl #0x30ed6c
00625bcc  07 10 a0 e1                                      mov r1, r7
00625bd0  f3 a3 f3 eb                                      bl #0x30eba4
00625bd4  05 00 88 e7                                      str r0, [r8, r5]
00625bd8  04 50 85 e2                                      add r5, r5, #4
00625bdc  10 00 55 e3                                      cmp r5, #0x10
00625be0  01 60 86 e2                                      add r6, r6, #1
00625be4  05 70 98 17                                      ldrne r7, [r8, r5]
00625be8  f3 ff ff 1a                                      bne #0x625bbc
00625bec  01 40 54 e2                                      subs r4, r4, #1
00625bf0  04 b0 8b e2                                      add fp, fp, #4
00625bf4  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
00625bf8  e9 ff ff 1a                                      bne #0x625ba4
00625bfc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625c00  a6 61 0a eb                                      bl #0x8be2a0
00625c04  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625c08  10 00 9d e5                                      ldr r0, [sp, #0x10]
00625c0c  a3 61 0a eb                                      bl #0x8be2a0
00625c10  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625c14  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625c18  a0 61 0a eb                                      bl #0x8be2a0
00625c1c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
00625c20  18 00 9d e5                                      ldr r0, [sp, #0x18]
00625c24  9d 61 0a eb                                      bl #0x8be2a0
00625c28  1f 00 cd e5                                      strb r0, [sp, #0x1f]
00625c2c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625c30  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
00625c34  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
00625c38  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
00625c3c  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00625c40  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625c44  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625c48  08 30 a0 e1                                      mov r3, r8
00625c4c  00 20 a0 e3                                      mov r2, #0
00625c50  0f 50 cd e5                                      strb r5, [sp, #0xf]
00625c54  0c 40 cd e5                                      strb r4, [sp, #0xc]
00625c58  0d e0 cd e5                                      strb lr, [sp, #0xd]
00625c5c  0e c0 cd e5                                      strb ip, [sp, #0xe]
00625c60  34 94 fe eb                                      bl #0x5cad38
00625c64  24 d0 8d e2                                      add sp, sp, #0x24
00625c68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625c6c  00 30 9d e5                                      ldr r3, [sp]
00625c70  00 20 9d e5                                      ldr r2, [sp]
00625c74  0c 80 8d e2                                      add r8, sp, #0xc
00625c78  01 00 d3 e4                                      ldrb r0, [r3], #1
00625c7c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625c80  02 20 d3 e5                                      ldrb r2, [r3, #2]
00625c84  01 30 d3 e5                                      ldrb r3, [r3, #1]
00625c88  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625c8c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00625c90  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00625c94  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00625c98  e3 ff ff ea                                      b #0x625c2c
00625c9c  07 00 a0 e1                                      mov r0, r7
00625ca0  0c 80 8d e2                                      add r8, sp, #0xc
00625ca4  d5 ff ff ea                                      b #0x625c00

; FUNCTION 0x00625ca8, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00625ca8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00625cac  01 00 53 e3                                      cmp r3, #1
00625cb0  24 d0 4d e2                                      sub sp, sp, #0x24
00625cb4  03 40 a0 e1                                      mov r4, r3
00625cb8  06 00 8d e8                                      stm sp, {r1, r2}
00625cbc  3a 00 00 0a                                      beq #0x625dac
00625cc0  00 70 a0 e3                                      mov r7, #0
00625cc4  00 00 53 e3                                      cmp r3, #0
00625cc8  0c 70 8d e5                                      str r7, [sp, #0xc]
00625ccc  10 70 8d e5                                      str r7, [sp, #0x10]
00625cd0  14 70 8d e5                                      str r7, [sp, #0x14]
00625cd4  18 70 8d e5                                      str r7, [sp, #0x18]
00625cd8  00 b0 a0 13                                      movne fp, #0
00625cdc  0c 80 8d 12                                      addne r8, sp, #0xc
00625ce0  3d 00 00 0a                                      beq #0x625ddc
00625ce4  04 20 9d e5                                      ldr r2, [sp, #4]
00625ce8  00 30 9d e5                                      ldr r3, [sp]
00625cec  00 50 a0 e3                                      mov r5, #0
00625cf0  0b a0 92 e7                                      ldr sl, [r2, fp]
00625cf4  0b 90 83 e0                                      add sb, r3, fp
00625cf8  05 60 a0 e1                                      mov r6, r5
00625cfc  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625d00  17 a3 f3 eb                                      bl #0x30e964
00625d04  0a 10 a0 e1                                      mov r1, sl
00625d08  17 a4 f3 eb                                      bl #0x30ed6c
00625d0c  07 10 a0 e1                                      mov r1, r7
00625d10  a3 a3 f3 eb                                      bl #0x30eba4
00625d14  05 00 88 e7                                      str r0, [r8, r5]
00625d18  04 50 85 e2                                      add r5, r5, #4
00625d1c  10 00 55 e3                                      cmp r5, #0x10
00625d20  01 60 86 e2                                      add r6, r6, #1
00625d24  05 70 98 17                                      ldrne r7, [r8, r5]
00625d28  f3 ff ff 1a                                      bne #0x625cfc
00625d2c  01 40 54 e2                                      subs r4, r4, #1
00625d30  04 b0 8b e2                                      add fp, fp, #4
00625d34  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
00625d38  e9 ff ff 1a                                      bne #0x625ce4
00625d3c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625d40  56 61 0a eb                                      bl #0x8be2a0
00625d44  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625d48  10 00 9d e5                                      ldr r0, [sp, #0x10]
00625d4c  53 61 0a eb                                      bl #0x8be2a0
00625d50  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625d54  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625d58  50 61 0a eb                                      bl #0x8be2a0
00625d5c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
00625d60  18 00 9d e5                                      ldr r0, [sp, #0x18]
00625d64  4d 61 0a eb                                      bl #0x8be2a0
00625d68  1f 00 cd e5                                      strb r0, [sp, #0x1f]
00625d6c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625d70  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
00625d74  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
00625d78  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
00625d7c  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00625d80  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625d84  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625d88  08 30 a0 e1                                      mov r3, r8
00625d8c  00 20 a0 e3                                      mov r2, #0
00625d90  0f 50 cd e5                                      strb r5, [sp, #0xf]
00625d94  0c 40 cd e5                                      strb r4, [sp, #0xc]
00625d98  0d e0 cd e5                                      strb lr, [sp, #0xd]
00625d9c  0e c0 cd e5                                      strb ip, [sp, #0xe]
00625da0  e4 93 fe eb                                      bl #0x5cad38
00625da4  24 d0 8d e2                                      add sp, sp, #0x24
00625da8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625dac  00 30 9d e5                                      ldr r3, [sp]
00625db0  00 20 9d e5                                      ldr r2, [sp]
00625db4  0c 80 8d e2                                      add r8, sp, #0xc
00625db8  01 00 d3 e4                                      ldrb r0, [r3], #1
00625dbc  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625dc0  02 20 d3 e5                                      ldrb r2, [r3, #2]
00625dc4  01 30 d3 e5                                      ldrb r3, [r3, #1]
00625dc8  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625dcc  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00625dd0  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00625dd4  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00625dd8  e3 ff ff ea                                      b #0x625d6c
00625ddc  07 00 a0 e1                                      mov r0, r7
00625de0  0c 80 8d e2                                      add r8, sp, #0xc
00625de4  d5 ff ff ea                                      b #0x625d40

; FUNCTION 0x00626238, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626238  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062623c  01 00 53 e3                                      cmp r3, #1
00626240  1c d0 4d e2                                      sub sp, sp, #0x1c
00626244  03 40 a0 e1                                      mov r4, r3
00626248  06 00 8d e8                                      stm sp, {r1, r2}
0062624c  2f 00 00 0a                                      beq #0x626310
00626250  00 70 a0 e3                                      mov r7, #0
00626254  00 00 53 e3                                      cmp r3, #0
00626258  08 70 8d e5                                      str r7, [sp, #8]
0062625c  0c 70 8d e5                                      str r7, [sp, #0xc]
00626260  10 70 8d e5                                      str r7, [sp, #0x10]
00626264  14 70 8d e5                                      str r7, [sp, #0x14]
00626268  00 b0 a0 13                                      movne fp, #0
0062626c  08 80 8d 12                                      addne r8, sp, #8
00626270  33 00 00 0a                                      beq #0x626344
00626274  04 00 9d e5                                      ldr r0, [sp, #4]
00626278  00 30 9d e5                                      ldr r3, [sp]
0062627c  00 50 a0 e3                                      mov r5, #0
00626280  0b a0 90 e7                                      ldr sl, [r0, fp]
00626284  0b 90 83 e0                                      add sb, r3, fp
00626288  05 60 a0 e1                                      mov r6, r5
0062628c  06 00 d9 e7                                      ldrb r0, [sb, r6]
00626290  b3 a1 f3 eb                                      bl #0x30e964
00626294  0a 10 a0 e1                                      mov r1, sl
00626298  b3 a2 f3 eb                                      bl #0x30ed6c
0062629c  07 10 a0 e1                                      mov r1, r7
006262a0  3f a2 f3 eb                                      bl #0x30eba4
006262a4  05 00 88 e7                                      str r0, [r8, r5]
006262a8  04 50 85 e2                                      add r5, r5, #4
006262ac  10 00 55 e3                                      cmp r5, #0x10
006262b0  01 60 86 e2                                      add r6, r6, #1
006262b4  05 70 98 17                                      ldrne r7, [r8, r5]
006262b8  f3 ff ff 1a                                      bne #0x62628c
006262bc  01 40 54 e2                                      subs r4, r4, #1
006262c0  04 b0 8b e2                                      add fp, fp, #4
006262c4  08 70 9d 15                                      ldrne r7, [sp, #8]
006262c8  e9 ff ff 1a                                      bne #0x626274
006262cc  08 00 9d e5                                      ldr r0, [sp, #8]
006262d0  f2 5f 0a eb                                      bl #0x8be2a0
006262d4  40 40 9d e5                                      ldr r4, [sp, #0x40]
006262d8  01 00 c4 e4                                      strb r0, [r4], #1
006262dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006262e0  ee 5f 0a eb                                      bl #0x8be2a0
006262e4  40 30 9d e5                                      ldr r3, [sp, #0x40]
006262e8  01 00 c3 e5                                      strb r0, [r3, #1]
006262ec  10 00 9d e5                                      ldr r0, [sp, #0x10]
006262f0  ea 5f 0a eb                                      bl #0x8be2a0
006262f4  01 00 c4 e5                                      strb r0, [r4, #1]
006262f8  14 00 9d e5                                      ldr r0, [sp, #0x14]
006262fc  e7 5f 0a eb                                      bl #0x8be2a0
00626300  01 40 84 e2                                      add r4, r4, #1
00626304  01 00 c4 e5                                      strb r0, [r4, #1]
00626308  1c d0 8d e2                                      add sp, sp, #0x1c
0062630c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626310  00 20 9d e5                                      ldr r2, [sp]
00626314  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626318  01 10 d2 e4                                      ldrb r1, [r2], #1
0062631c  01 10 c3 e4                                      strb r1, [r3], #1
00626320  00 00 9d e5                                      ldr r0, [sp]
00626324  01 10 d0 e5                                      ldrb r1, [r0, #1]
00626328  40 00 9d e5                                      ldr r0, [sp, #0x40]
0062632c  01 10 c0 e5                                      strb r1, [r0, #1]
00626330  01 10 d2 e5                                      ldrb r1, [r2, #1]
00626334  01 10 c3 e5                                      strb r1, [r3, #1]
00626338  02 20 d2 e5                                      ldrb r2, [r2, #2]
0062633c  02 20 c3 e5                                      strb r2, [r3, #2]
00626340  f0 ff ff ea                                      b #0x626308
00626344  07 00 a0 e1                                      mov r0, r7
00626348  e0 ff ff ea                                      b #0x6262d0

; FUNCTION 0x0062679c, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062679c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006267a0  01 00 53 e3                                      cmp r3, #1
006267a4  1c d0 4d e2                                      sub sp, sp, #0x1c
006267a8  03 40 a0 e1                                      mov r4, r3
006267ac  06 00 8d e8                                      stm sp, {r1, r2}
006267b0  2f 00 00 0a                                      beq #0x626874
006267b4  00 70 a0 e3                                      mov r7, #0
006267b8  00 00 53 e3                                      cmp r3, #0
006267bc  08 70 8d e5                                      str r7, [sp, #8]
006267c0  0c 70 8d e5                                      str r7, [sp, #0xc]
006267c4  10 70 8d e5                                      str r7, [sp, #0x10]
006267c8  14 70 8d e5                                      str r7, [sp, #0x14]
006267cc  00 b0 a0 13                                      movne fp, #0
006267d0  08 80 8d 12                                      addne r8, sp, #8
006267d4  33 00 00 0a                                      beq #0x6268a8
006267d8  04 00 9d e5                                      ldr r0, [sp, #4]
006267dc  00 30 9d e5                                      ldr r3, [sp]
006267e0  00 50 a0 e3                                      mov r5, #0
006267e4  0b a0 90 e7                                      ldr sl, [r0, fp]
006267e8  0b 90 83 e0                                      add sb, r3, fp
006267ec  05 60 a0 e1                                      mov r6, r5
006267f0  06 00 d9 e7                                      ldrb r0, [sb, r6]
006267f4  5a a0 f3 eb                                      bl #0x30e964
006267f8  0a 10 a0 e1                                      mov r1, sl
006267fc  5a a1 f3 eb                                      bl #0x30ed6c
00626800  07 10 a0 e1                                      mov r1, r7
00626804  e6 a0 f3 eb                                      bl #0x30eba4
00626808  05 00 88 e7                                      str r0, [r8, r5]
0062680c  04 50 85 e2                                      add r5, r5, #4
00626810  10 00 55 e3                                      cmp r5, #0x10
00626814  01 60 86 e2                                      add r6, r6, #1
00626818  05 70 98 17                                      ldrne r7, [r8, r5]
0062681c  f3 ff ff 1a                                      bne #0x6267f0
00626820  01 40 54 e2                                      subs r4, r4, #1
00626824  04 b0 8b e2                                      add fp, fp, #4
00626828  08 70 9d 15                                      ldrne r7, [sp, #8]
0062682c  e9 ff ff 1a                                      bne #0x6267d8
00626830  08 00 9d e5                                      ldr r0, [sp, #8]
00626834  99 5e 0a eb                                      bl #0x8be2a0
00626838  40 40 9d e5                                      ldr r4, [sp, #0x40]
0062683c  01 00 c4 e4                                      strb r0, [r4], #1
00626840  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00626844  95 5e 0a eb                                      bl #0x8be2a0
00626848  40 30 9d e5                                      ldr r3, [sp, #0x40]
0062684c  01 00 c3 e5                                      strb r0, [r3, #1]
00626850  10 00 9d e5                                      ldr r0, [sp, #0x10]
00626854  91 5e 0a eb                                      bl #0x8be2a0
00626858  01 00 c4 e5                                      strb r0, [r4, #1]
0062685c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00626860  8e 5e 0a eb                                      bl #0x8be2a0
00626864  01 40 84 e2                                      add r4, r4, #1
00626868  01 00 c4 e5                                      strb r0, [r4, #1]
0062686c  1c d0 8d e2                                      add sp, sp, #0x1c
00626870  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626874  00 20 9d e5                                      ldr r2, [sp]
00626878  40 30 9d e5                                      ldr r3, [sp, #0x40]
0062687c  01 10 d2 e4                                      ldrb r1, [r2], #1
00626880  01 10 c3 e4                                      strb r1, [r3], #1
00626884  00 00 9d e5                                      ldr r0, [sp]
00626888  01 10 d0 e5                                      ldrb r1, [r0, #1]
0062688c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00626890  01 10 c0 e5                                      strb r1, [r0, #1]
00626894  01 10 d2 e5                                      ldrb r1, [r2, #1]
00626898  01 10 c3 e5                                      strb r1, [r3, #1]
0062689c  02 20 d2 e5                                      ldrb r2, [r2, #2]
006268a0  02 20 c3 e5                                      strb r2, [r3, #2]
006268a4  f0 ff ff ea                                      b #0x62686c
006268a8  07 00 a0 e1                                      mov r0, r7
006268ac  e0 ff ff ea                                      b #0x626834

; FUNCTION 0x006269a4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006269a4  01 00 a0 e1                                      mov r0, r1
006269a8  04 c0 9d e5                                      ldr ip, [sp, #4]
006269ac  02 10 a0 e1                                      mov r1, r2
006269b0  03 20 a0 e1                                      mov r2, r3
006269b4  00 30 9d e5                                      ldr r3, [sp]
006269b8  00 c0 8d e5                                      str ip, [sp]
006269bc  bb ff ff ea                                      b #0x6268b0

; FUNCTION 0x00626a14, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00626a14  04 c0 9d e5                                      ldr ip, [sp, #4]
00626a18  01 00 a0 e1                                      mov r0, r1
00626a1c  02 10 a0 e1                                      mov r1, r2
00626a20  03 20 a0 e1                                      mov r2, r3
00626a24  00 30 9d e5                                      ldr r3, [sp]
00626a28  00 c0 8d e5                                      str ip, [sp]
00626a2c  08 c0 9d e5                                      ldr ip, [sp, #8]
00626a30  04 c0 8d e5                                      str ip, [sp, #4]
00626a34  e1 ff ff ea                                      b #0x6269c0
