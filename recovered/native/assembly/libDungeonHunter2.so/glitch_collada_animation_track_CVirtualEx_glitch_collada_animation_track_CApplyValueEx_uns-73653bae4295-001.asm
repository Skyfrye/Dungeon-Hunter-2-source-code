; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edc0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060edc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060edf8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getValueSize() const
; decoder-mode: arm
0060edf8  04 00 a0 e3                                      mov r0, #4
0060edfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee00, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13retrieveValueEPvSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f868, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060f868  10 40 2d e9                                      push {r4, lr}
0060f86c  00 40 a0 e1                                      mov r4, r0
0060f870  8e fa f3 eb                                      bl #0x30e2b0
0060f874  04 00 a0 e1                                      mov r0, r4
0060f878  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611890, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getInstance()
; decoder-mode: arm
00611890  70 40 2d e9                                      push {r4, r5, r6, lr}
00611894  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611898  70 30 9f e5                                      ldr r3, [pc, #0x70]
0061189c  04 40 8f e0                                      add r4, pc, r4
006118a0  03 60 94 e7                                      ldr r6, [r4, r3]
006118a4  00 30 96 e5                                      ldr r3, [r6]
006118a8  01 00 13 e3                                      tst r3, #1
006118ac  02 00 00 0a                                      beq #0x6118bc
006118b0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006118b4  05 00 94 e7                                      ldr r0, [r4, r5]
006118b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006118bc  06 00 a0 e1                                      mov r0, r6
006118c0  a9 f3 f3 eb                                      bl #0x30e76c
006118c4  00 00 50 e3                                      cmp r0, #0
006118c8  f8 ff ff 0a                                      beq #0x6118b0
006118cc  44 30 9f e5                                      ldr r3, [pc, #0x44]
006118d0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006118d4  06 00 a0 e1                                      mov r0, r6
006118d8  03 30 94 e7                                      ldr r3, [r4, r3]
006118dc  05 60 94 e7                                      ldr r6, [r4, r5]
006118e0  08 30 83 e2                                      add r3, r3, #8
006118e4  00 30 86 e5                                      str r3, [r6]
006118e8  53 f4 f3 eb                                      bl #0x30ea3c
006118ec  28 30 9f e5                                      ldr r3, [pc, #0x28]
006118f0  06 00 a0 e1                                      mov r0, r6
006118f4  03 10 94 e7                                      ldr r1, [r4, r3]
006118f8  20 30 9f e5                                      ldr r3, [pc, #0x20]
006118fc  03 20 94 e7                                      ldr r2, [r4, r3]
00611900  7f f2 f3 eb                                      bl #0x30e304
00611904  05 00 94 e7                                      ldr r0, [r4, r5]
00611908  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0061190c  f4 31 38 00 c0 2d 00 00 1c 34 00 00 dc 12 00 00  .byte 0xf4, 0x31, 0x38, 0x00, 0xc0, 0x2d, 0x00, 0x00, 0x1c, 0x34, 0x00, 0x00, 0xdc, 0x12, 0x00, 0x00
0061191c  ec 09 00 00 90 18 00 00                          .byte 0xec, 0x09, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618f68, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618f68  00 20 a0 e3                                      mov r2, #0
00618f6c  01 30 a0 e1                                      mov r3, r1
00618f70  01 20 c3 e4                                      strb r2, [r3], #1
00618f74  01 30 83 e2                                      add r3, r3, #1
00618f78  01 20 c1 e5                                      strb r2, [r1, #1]
00618f7c  01 20 c3 e4                                      strb r2, [r3], #1
00618f80  00 20 c3 e5                                      strb r2, [r3]
00618f84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061a148, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061a148  01 00 a0 e1                                      mov r0, r1
0061a14c  02 10 a0 e1                                      mov r1, r2
0061a150  03 20 a0 e1                                      mov r2, r3
0061a154  dd ff ff ea                                      b #0x61a0d0

; FUNCTION 0x0061a244, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061a244  01 00 a0 e1                                      mov r0, r1
0061a248  04 c0 9d e5                                      ldr ip, [sp, #4]
0061a24c  02 10 a0 e1                                      mov r1, r2
0061a250  03 20 a0 e1                                      mov r2, r3
0061a254  00 30 9d e5                                      ldr r3, [sp]
0061a258  00 c0 8d e5                                      str ip, [sp]
0061a25c  bd ff ff ea                                      b #0x61a158

; FUNCTION 0x0061a2d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061a2d4  01 00 a0 e1                                      mov r0, r1
0061a2d8  02 10 a0 e1                                      mov r1, r2
0061a2dc  03 20 a0 e1                                      mov r2, r3
0061a2e0  00 30 9d e5                                      ldr r3, [sp]
0061a2e4  dd ff ff ea                                      b #0x61a260

; FUNCTION 0x0061a3d8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061a3d8  04 c0 9d e5                                      ldr ip, [sp, #4]
0061a3dc  01 00 a0 e1                                      mov r0, r1
0061a3e0  02 10 a0 e1                                      mov r1, r2
0061a3e4  03 20 a0 e1                                      mov r2, r3
0061a3e8  00 30 9d e5                                      ldr r3, [sp]
0061a3ec  00 c0 8d e5                                      str ip, [sp]
0061a3f0  08 c0 9d e5                                      ldr ip, [sp, #8]
0061a3f4  04 c0 8d e5                                      str ip, [sp, #4]
0061a3f8  ba ff ff ea                                      b #0x61a2e8

; FUNCTION 0x006228b4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE10applyValueEPvSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006228b4  04 e0 2d e5                                      str lr, [sp, #-4]!
006228b8  02 30 d1 e5                                      ldrb r3, [r1, #2]
006228bc  03 c0 d1 e5                                      ldrb ip, [r1, #3]
006228c0  00 00 d1 e5                                      ldrb r0, [r1]
006228c4  01 10 d1 e5                                      ldrb r1, [r1, #1]
006228c8  0c d0 4d e2                                      sub sp, sp, #0xc
006228cc  04 00 cd e5                                      strb r0, [sp, #4]
006228d0  06 30 cd e5                                      strb r3, [sp, #6]
006228d4  07 c0 cd e5                                      strb ip, [sp, #7]
006228d8  00 30 a0 e3                                      mov r3, #0
006228dc  05 10 cd e5                                      strb r1, [sp, #5]
006228e0  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006228e4  02 00 a0 e1                                      mov r0, r2
006228e8  03 20 a0 e1                                      mov r2, r3
006228ec  04 30 8d e2                                      add r3, sp, #4
006228f0  10 a1 fe eb                                      bl #0x5cad38
006228f4  0c d0 8d e2                                      add sp, sp, #0xc
006228f8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006228fc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006228fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00622900  08 d0 4d e2                                      sub sp, sp, #8
00622904  01 00 a0 e1                                      mov r0, r1
00622908  02 10 a0 e1                                      mov r1, r2
0062290c  04 20 8d e2                                      add r2, sp, #4
00622910  03 60 a0 e1                                      mov r6, r3
00622914  ed dd ff eb                                      bl #0x61a0d0
00622918  18 30 9d e5                                      ldr r3, [sp, #0x18]
0062291c  07 50 dd e5                                      ldrb r5, [sp, #7]
00622920  04 40 dd e5                                      ldrb r4, [sp, #4]
00622924  05 e0 dd e5                                      ldrb lr, [sp, #5]
00622928  06 c0 dd e5                                      ldrb ip, [sp, #6]
0062292c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00622930  06 00 a0 e1                                      mov r0, r6
00622934  00 20 a0 e3                                      mov r2, #0
00622938  0d 30 a0 e1                                      mov r3, sp
0062293c  03 50 cd e5                                      strb r5, [sp, #3]
00622940  00 40 cd e5                                      strb r4, [sp]
00622944  01 e0 cd e5                                      strb lr, [sp, #1]
00622948  02 c0 cd e5                                      strb ip, [sp, #2]
0062294c  f9 a0 fe eb                                      bl #0x5cad38
00622950  08 d0 8d e2                                      add sp, sp, #8
00622954  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006229ac, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006229ac  04 c0 9d e5                                      ldr ip, [sp, #4]
006229b0  01 00 a0 e1                                      mov r0, r1
006229b4  02 10 a0 e1                                      mov r1, r2
006229b8  03 20 a0 e1                                      mov r2, r3
006229bc  00 30 9d e5                                      ldr r3, [sp]
006229c0  00 c0 8d e5                                      str ip, [sp]
006229c4  08 c0 9d e5                                      ldr ip, [sp, #8]
006229c8  04 c0 8d e5                                      str ip, [sp, #4]
006229cc  e1 ff ff ea                                      b #0x622958

; FUNCTION 0x00625668, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00625668  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062566c  01 00 53 e3                                      cmp r3, #1
00625670  24 d0 4d e2                                      sub sp, sp, #0x24
00625674  03 40 a0 e1                                      mov r4, r3
00625678  06 00 8d e8                                      stm sp, {r1, r2}
0062567c  3a 00 00 0a                                      beq #0x62576c
00625680  00 70 a0 e3                                      mov r7, #0
00625684  00 00 53 e3                                      cmp r3, #0
00625688  0c 70 8d e5                                      str r7, [sp, #0xc]
0062568c  10 70 8d e5                                      str r7, [sp, #0x10]
00625690  14 70 8d e5                                      str r7, [sp, #0x14]
00625694  18 70 8d e5                                      str r7, [sp, #0x18]
00625698  00 b0 a0 13                                      movne fp, #0
0062569c  0c 80 8d 12                                      addne r8, sp, #0xc
006256a0  3d 00 00 0a                                      beq #0x62579c
006256a4  04 20 9d e5                                      ldr r2, [sp, #4]
006256a8  00 30 9d e5                                      ldr r3, [sp]
006256ac  00 50 a0 e3                                      mov r5, #0
006256b0  0b a0 92 e7                                      ldr sl, [r2, fp]
006256b4  0b 90 83 e0                                      add sb, r3, fp
006256b8  05 60 a0 e1                                      mov r6, r5
006256bc  06 00 d9 e7                                      ldrb r0, [sb, r6]
006256c0  a7 a4 f3 eb                                      bl #0x30e964
006256c4  0a 10 a0 e1                                      mov r1, sl
006256c8  a7 a5 f3 eb                                      bl #0x30ed6c
006256cc  07 10 a0 e1                                      mov r1, r7
006256d0  33 a5 f3 eb                                      bl #0x30eba4
006256d4  05 00 88 e7                                      str r0, [r8, r5]
006256d8  04 50 85 e2                                      add r5, r5, #4
006256dc  10 00 55 e3                                      cmp r5, #0x10
006256e0  01 60 86 e2                                      add r6, r6, #1
006256e4  05 70 98 17                                      ldrne r7, [r8, r5]
006256e8  f3 ff ff 1a                                      bne #0x6256bc
006256ec  01 40 54 e2                                      subs r4, r4, #1
006256f0  04 b0 8b e2                                      add fp, fp, #4
006256f4  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
006256f8  e9 ff ff 1a                                      bne #0x6256a4
006256fc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625700  e6 62 0a eb                                      bl #0x8be2a0
00625704  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625708  10 00 9d e5                                      ldr r0, [sp, #0x10]
0062570c  e3 62 0a eb                                      bl #0x8be2a0
00625710  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625714  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625718  e0 62 0a eb                                      bl #0x8be2a0
0062571c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
00625720  18 00 9d e5                                      ldr r0, [sp, #0x18]
00625724  dd 62 0a eb                                      bl #0x8be2a0
00625728  1f 00 cd e5                                      strb r0, [sp, #0x1f]
0062572c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625730  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
00625734  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
00625738  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
0062573c  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00625740  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625744  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625748  08 30 a0 e1                                      mov r3, r8
0062574c  00 20 a0 e3                                      mov r2, #0
00625750  0f 50 cd e5                                      strb r5, [sp, #0xf]
00625754  0c 40 cd e5                                      strb r4, [sp, #0xc]
00625758  0d e0 cd e5                                      strb lr, [sp, #0xd]
0062575c  0e c0 cd e5                                      strb ip, [sp, #0xe]
00625760  74 95 fe eb                                      bl #0x5cad38
00625764  24 d0 8d e2                                      add sp, sp, #0x24
00625768  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062576c  00 30 9d e5                                      ldr r3, [sp]
00625770  00 20 9d e5                                      ldr r2, [sp]
00625774  0c 80 8d e2                                      add r8, sp, #0xc
00625778  01 00 d3 e4                                      ldrb r0, [r3], #1
0062577c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625780  02 20 d3 e5                                      ldrb r2, [r3, #2]
00625784  01 30 d3 e5                                      ldrb r3, [r3, #1]
00625788  1c 00 cd e5                                      strb r0, [sp, #0x1c]
0062578c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00625790  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00625794  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00625798  e3 ff ff ea                                      b #0x62572c
0062579c  07 00 a0 e1                                      mov r0, r7
006257a0  0c 80 8d e2                                      add r8, sp, #0xc
006257a4  d5 ff ff ea                                      b #0x625700

; FUNCTION 0x006257a8, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006257a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006257ac  01 00 53 e3                                      cmp r3, #1
006257b0  24 d0 4d e2                                      sub sp, sp, #0x24
006257b4  03 40 a0 e1                                      mov r4, r3
006257b8  06 00 8d e8                                      stm sp, {r1, r2}
006257bc  3a 00 00 0a                                      beq #0x6258ac
006257c0  00 70 a0 e3                                      mov r7, #0
006257c4  00 00 53 e3                                      cmp r3, #0
006257c8  0c 70 8d e5                                      str r7, [sp, #0xc]
006257cc  10 70 8d e5                                      str r7, [sp, #0x10]
006257d0  14 70 8d e5                                      str r7, [sp, #0x14]
006257d4  18 70 8d e5                                      str r7, [sp, #0x18]
006257d8  00 b0 a0 13                                      movne fp, #0
006257dc  0c 80 8d 12                                      addne r8, sp, #0xc
006257e0  3d 00 00 0a                                      beq #0x6258dc
006257e4  04 20 9d e5                                      ldr r2, [sp, #4]
006257e8  00 30 9d e5                                      ldr r3, [sp]
006257ec  00 50 a0 e3                                      mov r5, #0
006257f0  0b a0 92 e7                                      ldr sl, [r2, fp]
006257f4  0b 90 83 e0                                      add sb, r3, fp
006257f8  05 60 a0 e1                                      mov r6, r5
006257fc  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625800  57 a4 f3 eb                                      bl #0x30e964
00625804  0a 10 a0 e1                                      mov r1, sl
00625808  57 a5 f3 eb                                      bl #0x30ed6c
0062580c  07 10 a0 e1                                      mov r1, r7
00625810  e3 a4 f3 eb                                      bl #0x30eba4
00625814  05 00 88 e7                                      str r0, [r8, r5]
00625818  04 50 85 e2                                      add r5, r5, #4
0062581c  10 00 55 e3                                      cmp r5, #0x10
00625820  01 60 86 e2                                      add r6, r6, #1
00625824  05 70 98 17                                      ldrne r7, [r8, r5]
00625828  f3 ff ff 1a                                      bne #0x6257fc
0062582c  01 40 54 e2                                      subs r4, r4, #1
00625830  04 b0 8b e2                                      add fp, fp, #4
00625834  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
00625838  e9 ff ff 1a                                      bne #0x6257e4
0062583c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625840  96 62 0a eb                                      bl #0x8be2a0
00625844  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625848  10 00 9d e5                                      ldr r0, [sp, #0x10]
0062584c  93 62 0a eb                                      bl #0x8be2a0
00625850  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625854  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625858  90 62 0a eb                                      bl #0x8be2a0
0062585c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
00625860  18 00 9d e5                                      ldr r0, [sp, #0x18]
00625864  8d 62 0a eb                                      bl #0x8be2a0
00625868  1f 00 cd e5                                      strb r0, [sp, #0x1f]
0062586c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625870  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
00625874  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
00625878  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
0062587c  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00625880  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625884  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625888  08 30 a0 e1                                      mov r3, r8
0062588c  00 20 a0 e3                                      mov r2, #0
00625890  0f 50 cd e5                                      strb r5, [sp, #0xf]
00625894  0c 40 cd e5                                      strb r4, [sp, #0xc]
00625898  0d e0 cd e5                                      strb lr, [sp, #0xd]
0062589c  0e c0 cd e5                                      strb ip, [sp, #0xe]
006258a0  24 95 fe eb                                      bl #0x5cad38
006258a4  24 d0 8d e2                                      add sp, sp, #0x24
006258a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006258ac  00 30 9d e5                                      ldr r3, [sp]
006258b0  00 20 9d e5                                      ldr r2, [sp]
006258b4  0c 80 8d e2                                      add r8, sp, #0xc
006258b8  01 00 d3 e4                                      ldrb r0, [r3], #1
006258bc  01 10 d2 e5                                      ldrb r1, [r2, #1]
006258c0  02 20 d3 e5                                      ldrb r2, [r3, #2]
006258c4  01 30 d3 e5                                      ldrb r3, [r3, #1]
006258c8  1c 00 cd e5                                      strb r0, [sp, #0x1c]
006258cc  1d 10 cd e5                                      strb r1, [sp, #0x1d]
006258d0  1e 30 cd e5                                      strb r3, [sp, #0x1e]
006258d4  1f 20 cd e5                                      strb r2, [sp, #0x1f]
006258d8  e3 ff ff ea                                      b #0x62586c
006258dc  07 00 a0 e1                                      mov r0, r7
006258e0  0c 80 8d e2                                      add r8, sp, #0xc
006258e4  d5 ff ff ea                                      b #0x625840

; FUNCTION 0x00626010, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626010  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626014  01 00 53 e3                                      cmp r3, #1
00626018  1c d0 4d e2                                      sub sp, sp, #0x1c
0062601c  03 40 a0 e1                                      mov r4, r3
00626020  06 00 8d e8                                      stm sp, {r1, r2}
00626024  2f 00 00 0a                                      beq #0x6260e8
00626028  00 70 a0 e3                                      mov r7, #0
0062602c  00 00 53 e3                                      cmp r3, #0
00626030  08 70 8d e5                                      str r7, [sp, #8]
00626034  0c 70 8d e5                                      str r7, [sp, #0xc]
00626038  10 70 8d e5                                      str r7, [sp, #0x10]
0062603c  14 70 8d e5                                      str r7, [sp, #0x14]
00626040  00 b0 a0 13                                      movne fp, #0
00626044  08 80 8d 12                                      addne r8, sp, #8
00626048  33 00 00 0a                                      beq #0x62611c
0062604c  04 00 9d e5                                      ldr r0, [sp, #4]
00626050  00 30 9d e5                                      ldr r3, [sp]
00626054  00 50 a0 e3                                      mov r5, #0
00626058  0b a0 90 e7                                      ldr sl, [r0, fp]
0062605c  0b 90 83 e0                                      add sb, r3, fp
00626060  05 60 a0 e1                                      mov r6, r5
00626064  06 00 d9 e7                                      ldrb r0, [sb, r6]
00626068  3d a2 f3 eb                                      bl #0x30e964
0062606c  0a 10 a0 e1                                      mov r1, sl
00626070  3d a3 f3 eb                                      bl #0x30ed6c
00626074  07 10 a0 e1                                      mov r1, r7
00626078  c9 a2 f3 eb                                      bl #0x30eba4
0062607c  05 00 88 e7                                      str r0, [r8, r5]
00626080  04 50 85 e2                                      add r5, r5, #4
00626084  10 00 55 e3                                      cmp r5, #0x10
00626088  01 60 86 e2                                      add r6, r6, #1
0062608c  05 70 98 17                                      ldrne r7, [r8, r5]
00626090  f3 ff ff 1a                                      bne #0x626064
00626094  01 40 54 e2                                      subs r4, r4, #1
00626098  04 b0 8b e2                                      add fp, fp, #4
0062609c  08 70 9d 15                                      ldrne r7, [sp, #8]
006260a0  e9 ff ff 1a                                      bne #0x62604c
006260a4  08 00 9d e5                                      ldr r0, [sp, #8]
006260a8  7c 60 0a eb                                      bl #0x8be2a0
006260ac  40 40 9d e5                                      ldr r4, [sp, #0x40]
006260b0  01 00 c4 e4                                      strb r0, [r4], #1
006260b4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006260b8  78 60 0a eb                                      bl #0x8be2a0
006260bc  40 30 9d e5                                      ldr r3, [sp, #0x40]
006260c0  01 00 c3 e5                                      strb r0, [r3, #1]
006260c4  10 00 9d e5                                      ldr r0, [sp, #0x10]
006260c8  74 60 0a eb                                      bl #0x8be2a0
006260cc  01 00 c4 e5                                      strb r0, [r4, #1]
006260d0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006260d4  71 60 0a eb                                      bl #0x8be2a0
006260d8  01 40 84 e2                                      add r4, r4, #1
006260dc  01 00 c4 e5                                      strb r0, [r4, #1]
006260e0  1c d0 8d e2                                      add sp, sp, #0x1c
006260e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006260e8  00 20 9d e5                                      ldr r2, [sp]
006260ec  40 30 9d e5                                      ldr r3, [sp, #0x40]
006260f0  01 10 d2 e4                                      ldrb r1, [r2], #1
006260f4  01 10 c3 e4                                      strb r1, [r3], #1
006260f8  00 00 9d e5                                      ldr r0, [sp]
006260fc  01 10 d0 e5                                      ldrb r1, [r0, #1]
00626100  40 00 9d e5                                      ldr r0, [sp, #0x40]
00626104  01 10 c0 e5                                      strb r1, [r0, #1]
00626108  01 10 d2 e5                                      ldrb r1, [r2, #1]
0062610c  01 10 c3 e5                                      strb r1, [r3, #1]
00626110  02 20 d2 e5                                      ldrb r2, [r2, #2]
00626114  02 20 c3 e5                                      strb r2, [r3, #2]
00626118  f0 ff ff ea                                      b #0x6260e0
0062611c  07 00 a0 e1                                      mov r0, r7
00626120  e0 ff ff ea                                      b #0x6260a8

; FUNCTION 0x00626574, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626574  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626578  01 00 53 e3                                      cmp r3, #1
0062657c  1c d0 4d e2                                      sub sp, sp, #0x1c
00626580  03 40 a0 e1                                      mov r4, r3
00626584  06 00 8d e8                                      stm sp, {r1, r2}
00626588  2f 00 00 0a                                      beq #0x62664c
0062658c  00 70 a0 e3                                      mov r7, #0
00626590  00 00 53 e3                                      cmp r3, #0
00626594  08 70 8d e5                                      str r7, [sp, #8]
00626598  0c 70 8d e5                                      str r7, [sp, #0xc]
0062659c  10 70 8d e5                                      str r7, [sp, #0x10]
006265a0  14 70 8d e5                                      str r7, [sp, #0x14]
006265a4  00 b0 a0 13                                      movne fp, #0
006265a8  08 80 8d 12                                      addne r8, sp, #8
006265ac  33 00 00 0a                                      beq #0x626680
006265b0  04 00 9d e5                                      ldr r0, [sp, #4]
006265b4  00 30 9d e5                                      ldr r3, [sp]
006265b8  00 50 a0 e3                                      mov r5, #0
006265bc  0b a0 90 e7                                      ldr sl, [r0, fp]
006265c0  0b 90 83 e0                                      add sb, r3, fp
006265c4  05 60 a0 e1                                      mov r6, r5
006265c8  06 00 d9 e7                                      ldrb r0, [sb, r6]
006265cc  e4 a0 f3 eb                                      bl #0x30e964
006265d0  0a 10 a0 e1                                      mov r1, sl
006265d4  e4 a1 f3 eb                                      bl #0x30ed6c
006265d8  07 10 a0 e1                                      mov r1, r7
006265dc  70 a1 f3 eb                                      bl #0x30eba4
006265e0  05 00 88 e7                                      str r0, [r8, r5]
006265e4  04 50 85 e2                                      add r5, r5, #4
006265e8  10 00 55 e3                                      cmp r5, #0x10
006265ec  01 60 86 e2                                      add r6, r6, #1
006265f0  05 70 98 17                                      ldrne r7, [r8, r5]
006265f4  f3 ff ff 1a                                      bne #0x6265c8
006265f8  01 40 54 e2                                      subs r4, r4, #1
006265fc  04 b0 8b e2                                      add fp, fp, #4
00626600  08 70 9d 15                                      ldrne r7, [sp, #8]
00626604  e9 ff ff 1a                                      bne #0x6265b0
00626608  08 00 9d e5                                      ldr r0, [sp, #8]
0062660c  23 5f 0a eb                                      bl #0x8be2a0
00626610  40 40 9d e5                                      ldr r4, [sp, #0x40]
00626614  01 00 c4 e4                                      strb r0, [r4], #1
00626618  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0062661c  1f 5f 0a eb                                      bl #0x8be2a0
00626620  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626624  01 00 c3 e5                                      strb r0, [r3, #1]
00626628  10 00 9d e5                                      ldr r0, [sp, #0x10]
0062662c  1b 5f 0a eb                                      bl #0x8be2a0
00626630  01 00 c4 e5                                      strb r0, [r4, #1]
00626634  14 00 9d e5                                      ldr r0, [sp, #0x14]
00626638  18 5f 0a eb                                      bl #0x8be2a0
0062663c  01 40 84 e2                                      add r4, r4, #1
00626640  01 00 c4 e5                                      strb r0, [r4, #1]
00626644  1c d0 8d e2                                      add sp, sp, #0x1c
00626648  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062664c  00 20 9d e5                                      ldr r2, [sp]
00626650  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626654  01 10 d2 e4                                      ldrb r1, [r2], #1
00626658  01 10 c3 e4                                      strb r1, [r3], #1
0062665c  00 00 9d e5                                      ldr r0, [sp]
00626660  01 10 d0 e5                                      ldrb r1, [r0, #1]
00626664  40 00 9d e5                                      ldr r0, [sp, #0x40]
00626668  01 10 c0 e5                                      strb r1, [r0, #1]
0062666c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00626670  01 10 c3 e5                                      strb r1, [r3, #1]
00626674  02 20 d2 e5                                      ldrb r2, [r2, #2]
00626678  02 20 c3 e5                                      strb r2, [r3, #2]
0062667c  f0 ff ff ea                                      b #0x626644
00626680  07 00 a0 e1                                      mov r0, r7
00626684  e0 ff ff ea                                      b #0x62660c
