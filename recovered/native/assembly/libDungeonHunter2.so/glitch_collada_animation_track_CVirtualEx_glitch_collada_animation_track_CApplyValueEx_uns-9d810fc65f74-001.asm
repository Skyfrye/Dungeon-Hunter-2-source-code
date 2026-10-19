; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edb8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060edb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee10, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getValueSize() const
; decoder-mode: arm
0060ee10  04 00 a0 e3                                      mov r0, #4
0060ee14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee18, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13retrieveValueEPvSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f840, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060f840  10 40 2d e9                                      push {r4, lr}
0060f844  00 40 a0 e1                                      mov r4, r0
0060f848  98 fa f3 eb                                      bl #0x30e2b0
0060f84c  04 00 a0 e1                                      mov r0, r4
0060f850  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611768, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getInstance()
; decoder-mode: arm
00611768  70 40 2d e9                                      push {r4, r5, r6, lr}
0061176c  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611770  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611774  04 40 8f e0                                      add r4, pc, r4
00611778  03 60 94 e7                                      ldr r6, [r4, r3]
0061177c  00 30 96 e5                                      ldr r3, [r6]
00611780  01 00 13 e3                                      tst r3, #1
00611784  02 00 00 0a                                      beq #0x611794
00611788  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0061178c  05 00 94 e7                                      ldr r0, [r4, r5]
00611790  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611794  06 00 a0 e1                                      mov r0, r6
00611798  f3 f3 f3 eb                                      bl #0x30e76c
0061179c  00 00 50 e3                                      cmp r0, #0
006117a0  f8 ff ff 0a                                      beq #0x611788
006117a4  44 30 9f e5                                      ldr r3, [pc, #0x44]
006117a8  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006117ac  06 00 a0 e1                                      mov r0, r6
006117b0  03 30 94 e7                                      ldr r3, [r4, r3]
006117b4  05 60 94 e7                                      ldr r6, [r4, r5]
006117b8  08 30 83 e2                                      add r3, r3, #8
006117bc  00 30 86 e5                                      str r3, [r6]
006117c0  9d f4 f3 eb                                      bl #0x30ea3c
006117c4  28 30 9f e5                                      ldr r3, [pc, #0x28]
006117c8  06 00 a0 e1                                      mov r0, r6
006117cc  03 10 94 e7                                      ldr r1, [r4, r3]
006117d0  20 30 9f e5                                      ldr r3, [pc, #0x20]
006117d4  03 20 94 e7                                      ldr r2, [r4, r3]
006117d8  c9 f2 f3 eb                                      bl #0x30e304
006117dc  05 00 94 e7                                      ldr r0, [r4, r5]
006117e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006117e4  1c 33 38 00 dc 0c 00 00 d0 26 00 00 a0 42 00 00  .byte 0x1c, 0x33, 0x38, 0x00, 0xdc, 0x0c, 0x00, 0x00, 0xd0, 0x26, 0x00, 0x00, 0xa0, 0x42, 0x00, 0x00
006117f4  2c 07 00 00 90 18 00 00                          .byte 0x2c, 0x07, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618f28, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618f28  00 20 a0 e3                                      mov r2, #0
00618f2c  01 30 a0 e1                                      mov r3, r1
00618f30  01 20 c3 e4                                      strb r2, [r3], #1
00618f34  01 30 83 e2                                      add r3, r3, #1
00618f38  01 20 c1 e5                                      strb r2, [r1, #1]
00618f3c  01 20 c3 e4                                      strb r2, [r3], #1
00618f40  00 20 c3 e5                                      strb r2, [r3]
00618f44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00619b00, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00619b00  01 00 a0 e1                                      mov r0, r1
00619b04  02 10 a0 e1                                      mov r1, r2
00619b08  03 20 a0 e1                                      mov r2, r3
00619b0c  dd ff ff ea                                      b #0x619a88

; FUNCTION 0x00619be4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00619be4  01 00 a0 e1                                      mov r0, r1
00619be8  04 c0 9d e5                                      ldr ip, [sp, #4]
00619bec  02 10 a0 e1                                      mov r1, r2
00619bf0  03 20 a0 e1                                      mov r2, r3
00619bf4  00 30 9d e5                                      ldr r3, [sp]
00619bf8  00 c0 8d e5                                      str ip, [sp]
00619bfc  c3 ff ff ea                                      b #0x619b10

; FUNCTION 0x00619c74, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00619c74  01 00 a0 e1                                      mov r0, r1
00619c78  02 10 a0 e1                                      mov r1, r2
00619c7c  03 20 a0 e1                                      mov r2, r3
00619c80  00 30 9d e5                                      ldr r3, [sp]
00619c84  dd ff ff ea                                      b #0x619c00

; FUNCTION 0x00619d74, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00619d74  04 c0 9d e5                                      ldr ip, [sp, #4]
00619d78  01 00 a0 e1                                      mov r0, r1
00619d7c  02 10 a0 e1                                      mov r1, r2
00619d80  03 20 a0 e1                                      mov r2, r3
00619d84  00 30 9d e5                                      ldr r3, [sp]
00619d88  00 c0 8d e5                                      str ip, [sp]
00619d8c  08 c0 9d e5                                      ldr ip, [sp, #8]
00619d90  04 c0 8d e5                                      str ip, [sp, #4]
00619d94  bb ff ff ea                                      b #0x619c88

; FUNCTION 0x0062253c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE10applyValueEPvSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062253c  04 e0 2d e5                                      str lr, [sp, #-4]!
00622540  02 30 d1 e5                                      ldrb r3, [r1, #2]
00622544  03 c0 d1 e5                                      ldrb ip, [r1, #3]
00622548  00 00 d1 e5                                      ldrb r0, [r1]
0062254c  01 10 d1 e5                                      ldrb r1, [r1, #1]
00622550  0c d0 4d e2                                      sub sp, sp, #0xc
00622554  04 00 cd e5                                      strb r0, [sp, #4]
00622558  06 30 cd e5                                      strb r3, [sp, #6]
0062255c  07 c0 cd e5                                      strb ip, [sp, #7]
00622560  00 30 a0 e3                                      mov r3, #0
00622564  05 10 cd e5                                      strb r1, [sp, #5]
00622568  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0062256c  02 00 a0 e1                                      mov r0, r2
00622570  03 20 a0 e1                                      mov r2, r3
00622574  04 30 8d e2                                      add r3, sp, #4
00622578  ee a1 fe eb                                      bl #0x5cad38
0062257c  0c d0 8d e2                                      add sp, sp, #0xc
00622580  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00622584, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622584  70 40 2d e9                                      push {r4, r5, r6, lr}
00622588  08 d0 4d e2                                      sub sp, sp, #8
0062258c  01 00 a0 e1                                      mov r0, r1
00622590  02 10 a0 e1                                      mov r1, r2
00622594  04 20 8d e2                                      add r2, sp, #4
00622598  03 60 a0 e1                                      mov r6, r3
0062259c  39 dd ff eb                                      bl #0x619a88
006225a0  18 30 9d e5                                      ldr r3, [sp, #0x18]
006225a4  07 50 dd e5                                      ldrb r5, [sp, #7]
006225a8  04 40 dd e5                                      ldrb r4, [sp, #4]
006225ac  05 e0 dd e5                                      ldrb lr, [sp, #5]
006225b0  06 c0 dd e5                                      ldrb ip, [sp, #6]
006225b4  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006225b8  06 00 a0 e1                                      mov r0, r6
006225bc  00 20 a0 e3                                      mov r2, #0
006225c0  0d 30 a0 e1                                      mov r3, sp
006225c4  03 50 cd e5                                      strb r5, [sp, #3]
006225c8  00 40 cd e5                                      strb r4, [sp]
006225cc  01 e0 cd e5                                      strb lr, [sp, #1]
006225d0  02 c0 cd e5                                      strb ip, [sp, #2]
006225d4  d7 a1 fe eb                                      bl #0x5cad38
006225d8  08 d0 8d e2                                      add sp, sp, #8
006225dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00622634, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622634  04 c0 9d e5                                      ldr ip, [sp, #4]
00622638  01 00 a0 e1                                      mov r0, r1
0062263c  02 10 a0 e1                                      mov r1, r2
00622640  03 20 a0 e1                                      mov r2, r3
00622644  00 30 9d e5                                      ldr r3, [sp]
00622648  00 c0 8d e5                                      str ip, [sp]
0062264c  08 c0 9d e5                                      ldr ip, [sp, #8]
00622650  04 c0 8d e5                                      str ip, [sp, #4]
00622654  e1 ff ff ea                                      b #0x6225e0

; FUNCTION 0x00622658, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622658  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062265c  01 00 53 e3                                      cmp r3, #1
00622660  24 d0 4d e2                                      sub sp, sp, #0x24
00622664  03 40 a0 e1                                      mov r4, r3
00622668  06 00 8d e8                                      stm sp, {r1, r2}
0062266c  3a 00 00 0a                                      beq #0x62275c
00622670  00 70 a0 e3                                      mov r7, #0
00622674  00 00 53 e3                                      cmp r3, #0
00622678  0c 70 8d e5                                      str r7, [sp, #0xc]
0062267c  10 70 8d e5                                      str r7, [sp, #0x10]
00622680  14 70 8d e5                                      str r7, [sp, #0x14]
00622684  18 70 8d e5                                      str r7, [sp, #0x18]
00622688  00 b0 a0 13                                      movne fp, #0
0062268c  0c 80 8d 12                                      addne r8, sp, #0xc
00622690  3d 00 00 0a                                      beq #0x62278c
00622694  04 20 9d e5                                      ldr r2, [sp, #4]
00622698  00 30 9d e5                                      ldr r3, [sp]
0062269c  00 50 a0 e3                                      mov r5, #0
006226a0  0b a0 92 e7                                      ldr sl, [r2, fp]
006226a4  0b 90 83 e0                                      add sb, r3, fp
006226a8  05 60 a0 e1                                      mov r6, r5
006226ac  06 00 d9 e7                                      ldrb r0, [sb, r6]
006226b0  ab b0 f3 eb                                      bl #0x30e964
006226b4  0a 10 a0 e1                                      mov r1, sl
006226b8  ab b1 f3 eb                                      bl #0x30ed6c
006226bc  07 10 a0 e1                                      mov r1, r7
006226c0  37 b1 f3 eb                                      bl #0x30eba4
006226c4  05 00 88 e7                                      str r0, [r8, r5]
006226c8  04 50 85 e2                                      add r5, r5, #4
006226cc  10 00 55 e3                                      cmp r5, #0x10
006226d0  01 60 86 e2                                      add r6, r6, #1
006226d4  05 70 98 17                                      ldrne r7, [r8, r5]
006226d8  f3 ff ff 1a                                      bne #0x6226ac
006226dc  01 40 54 e2                                      subs r4, r4, #1
006226e0  04 b0 8b e2                                      add fp, fp, #4
006226e4  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
006226e8  e9 ff ff 1a                                      bne #0x622694
006226ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006226f0  ea 6e 0a eb                                      bl #0x8be2a0
006226f4  1c 00 cd e5                                      strb r0, [sp, #0x1c]
006226f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006226fc  e7 6e 0a eb                                      bl #0x8be2a0
00622700  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00622704  14 00 9d e5                                      ldr r0, [sp, #0x14]
00622708  e4 6e 0a eb                                      bl #0x8be2a0
0062270c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
00622710  18 00 9d e5                                      ldr r0, [sp, #0x18]
00622714  e1 6e 0a eb                                      bl #0x8be2a0
00622718  1f 00 cd e5                                      strb r0, [sp, #0x1f]
0062271c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00622720  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
00622724  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
00622728  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
0062272c  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00622730  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00622734  48 00 9d e5                                      ldr r0, [sp, #0x48]
00622738  08 30 a0 e1                                      mov r3, r8
0062273c  00 20 a0 e3                                      mov r2, #0
00622740  0f 50 cd e5                                      strb r5, [sp, #0xf]
00622744  0c 40 cd e5                                      strb r4, [sp, #0xc]
00622748  0d e0 cd e5                                      strb lr, [sp, #0xd]
0062274c  0e c0 cd e5                                      strb ip, [sp, #0xe]
00622750  78 a1 fe eb                                      bl #0x5cad38
00622754  24 d0 8d e2                                      add sp, sp, #0x24
00622758  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062275c  00 30 9d e5                                      ldr r3, [sp]
00622760  00 20 9d e5                                      ldr r2, [sp]
00622764  0c 80 8d e2                                      add r8, sp, #0xc
00622768  01 00 d3 e4                                      ldrb r0, [r3], #1
0062276c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00622770  02 20 d3 e5                                      ldrb r2, [r3, #2]
00622774  01 30 d3 e5                                      ldrb r3, [r3, #1]
00622778  1c 00 cd e5                                      strb r0, [sp, #0x1c]
0062277c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00622780  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00622784  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00622788  e3 ff ff ea                                      b #0x62271c
0062278c  07 00 a0 e1                                      mov r0, r7
00622790  0c 80 8d e2                                      add r8, sp, #0xc
00622794  d5 ff ff ea                                      b #0x6226f0

; FUNCTION 0x006252a8, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006252a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006252ac  01 00 53 e3                                      cmp r3, #1
006252b0  24 d0 4d e2                                      sub sp, sp, #0x24
006252b4  03 40 a0 e1                                      mov r4, r3
006252b8  06 00 8d e8                                      stm sp, {r1, r2}
006252bc  3a 00 00 0a                                      beq #0x6253ac
006252c0  00 70 a0 e3                                      mov r7, #0
006252c4  00 00 53 e3                                      cmp r3, #0
006252c8  0c 70 8d e5                                      str r7, [sp, #0xc]
006252cc  10 70 8d e5                                      str r7, [sp, #0x10]
006252d0  14 70 8d e5                                      str r7, [sp, #0x14]
006252d4  18 70 8d e5                                      str r7, [sp, #0x18]
006252d8  00 b0 a0 13                                      movne fp, #0
006252dc  0c 80 8d 12                                      addne r8, sp, #0xc
006252e0  3d 00 00 0a                                      beq #0x6253dc
006252e4  04 20 9d e5                                      ldr r2, [sp, #4]
006252e8  00 30 9d e5                                      ldr r3, [sp]
006252ec  00 50 a0 e3                                      mov r5, #0
006252f0  0b a0 92 e7                                      ldr sl, [r2, fp]
006252f4  0b 90 83 e0                                      add sb, r3, fp
006252f8  05 60 a0 e1                                      mov r6, r5
006252fc  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625300  97 a5 f3 eb                                      bl #0x30e964
00625304  0a 10 a0 e1                                      mov r1, sl
00625308  97 a6 f3 eb                                      bl #0x30ed6c
0062530c  07 10 a0 e1                                      mov r1, r7
00625310  23 a6 f3 eb                                      bl #0x30eba4
00625314  05 00 88 e7                                      str r0, [r8, r5]
00625318  04 50 85 e2                                      add r5, r5, #4
0062531c  10 00 55 e3                                      cmp r5, #0x10
00625320  01 60 86 e2                                      add r6, r6, #1
00625324  05 70 98 17                                      ldrne r7, [r8, r5]
00625328  f3 ff ff 1a                                      bne #0x6252fc
0062532c  01 40 54 e2                                      subs r4, r4, #1
00625330  04 b0 8b e2                                      add fp, fp, #4
00625334  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
00625338  e9 ff ff 1a                                      bne #0x6252e4
0062533c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625340  d6 63 0a eb                                      bl #0x8be2a0
00625344  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625348  10 00 9d e5                                      ldr r0, [sp, #0x10]
0062534c  d3 63 0a eb                                      bl #0x8be2a0
00625350  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625354  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625358  d0 63 0a eb                                      bl #0x8be2a0
0062535c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
00625360  18 00 9d e5                                      ldr r0, [sp, #0x18]
00625364  cd 63 0a eb                                      bl #0x8be2a0
00625368  1f 00 cd e5                                      strb r0, [sp, #0x1f]
0062536c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625370  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
00625374  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
00625378  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
0062537c  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00625380  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625384  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625388  08 30 a0 e1                                      mov r3, r8
0062538c  00 20 a0 e3                                      mov r2, #0
00625390  0f 50 cd e5                                      strb r5, [sp, #0xf]
00625394  0c 40 cd e5                                      strb r4, [sp, #0xc]
00625398  0d e0 cd e5                                      strb lr, [sp, #0xd]
0062539c  0e c0 cd e5                                      strb ip, [sp, #0xe]
006253a0  64 96 fe eb                                      bl #0x5cad38
006253a4  24 d0 8d e2                                      add sp, sp, #0x24
006253a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006253ac  00 30 9d e5                                      ldr r3, [sp]
006253b0  00 20 9d e5                                      ldr r2, [sp]
006253b4  0c 80 8d e2                                      add r8, sp, #0xc
006253b8  01 00 d3 e4                                      ldrb r0, [r3], #1
006253bc  01 10 d2 e5                                      ldrb r1, [r2, #1]
006253c0  02 20 d3 e5                                      ldrb r2, [r3, #2]
006253c4  01 30 d3 e5                                      ldrb r3, [r3, #1]
006253c8  1c 00 cd e5                                      strb r0, [sp, #0x1c]
006253cc  1d 10 cd e5                                      strb r1, [sp, #0x1d]
006253d0  1e 30 cd e5                                      strb r3, [sp, #0x1e]
006253d4  1f 20 cd e5                                      strb r2, [sp, #0x1f]
006253d8  e3 ff ff ea                                      b #0x62536c
006253dc  07 00 a0 e1                                      mov r0, r7
006253e0  0c 80 8d e2                                      add r8, sp, #0xc
006253e4  d5 ff ff ea                                      b #0x625340

; FUNCTION 0x00625de8, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00625de8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00625dec  01 00 53 e3                                      cmp r3, #1
00625df0  1c d0 4d e2                                      sub sp, sp, #0x1c
00625df4  03 40 a0 e1                                      mov r4, r3
00625df8  06 00 8d e8                                      stm sp, {r1, r2}
00625dfc  2f 00 00 0a                                      beq #0x625ec0
00625e00  00 70 a0 e3                                      mov r7, #0
00625e04  00 00 53 e3                                      cmp r3, #0
00625e08  08 70 8d e5                                      str r7, [sp, #8]
00625e0c  0c 70 8d e5                                      str r7, [sp, #0xc]
00625e10  10 70 8d e5                                      str r7, [sp, #0x10]
00625e14  14 70 8d e5                                      str r7, [sp, #0x14]
00625e18  00 b0 a0 13                                      movne fp, #0
00625e1c  08 80 8d 12                                      addne r8, sp, #8
00625e20  33 00 00 0a                                      beq #0x625ef4
00625e24  04 00 9d e5                                      ldr r0, [sp, #4]
00625e28  00 30 9d e5                                      ldr r3, [sp]
00625e2c  00 50 a0 e3                                      mov r5, #0
00625e30  0b a0 90 e7                                      ldr sl, [r0, fp]
00625e34  0b 90 83 e0                                      add sb, r3, fp
00625e38  05 60 a0 e1                                      mov r6, r5
00625e3c  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625e40  c7 a2 f3 eb                                      bl #0x30e964
00625e44  0a 10 a0 e1                                      mov r1, sl
00625e48  c7 a3 f3 eb                                      bl #0x30ed6c
00625e4c  07 10 a0 e1                                      mov r1, r7
00625e50  53 a3 f3 eb                                      bl #0x30eba4
00625e54  05 00 88 e7                                      str r0, [r8, r5]
00625e58  04 50 85 e2                                      add r5, r5, #4
00625e5c  10 00 55 e3                                      cmp r5, #0x10
00625e60  01 60 86 e2                                      add r6, r6, #1
00625e64  05 70 98 17                                      ldrne r7, [r8, r5]
00625e68  f3 ff ff 1a                                      bne #0x625e3c
00625e6c  01 40 54 e2                                      subs r4, r4, #1
00625e70  04 b0 8b e2                                      add fp, fp, #4
00625e74  08 70 9d 15                                      ldrne r7, [sp, #8]
00625e78  e9 ff ff 1a                                      bne #0x625e24
00625e7c  08 00 9d e5                                      ldr r0, [sp, #8]
00625e80  06 61 0a eb                                      bl #0x8be2a0
00625e84  40 40 9d e5                                      ldr r4, [sp, #0x40]
00625e88  01 00 c4 e4                                      strb r0, [r4], #1
00625e8c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625e90  02 61 0a eb                                      bl #0x8be2a0
00625e94  40 30 9d e5                                      ldr r3, [sp, #0x40]
00625e98  01 00 c3 e5                                      strb r0, [r3, #1]
00625e9c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00625ea0  fe 60 0a eb                                      bl #0x8be2a0
00625ea4  01 00 c4 e5                                      strb r0, [r4, #1]
00625ea8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625eac  fb 60 0a eb                                      bl #0x8be2a0
00625eb0  01 40 84 e2                                      add r4, r4, #1
00625eb4  01 00 c4 e5                                      strb r0, [r4, #1]
00625eb8  1c d0 8d e2                                      add sp, sp, #0x1c
00625ebc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625ec0  00 20 9d e5                                      ldr r2, [sp]
00625ec4  40 30 9d e5                                      ldr r3, [sp, #0x40]
00625ec8  01 10 d2 e4                                      ldrb r1, [r2], #1
00625ecc  01 10 c3 e4                                      strb r1, [r3], #1
00625ed0  00 00 9d e5                                      ldr r0, [sp]
00625ed4  01 10 d0 e5                                      ldrb r1, [r0, #1]
00625ed8  40 00 9d e5                                      ldr r0, [sp, #0x40]
00625edc  01 10 c0 e5                                      strb r1, [r0, #1]
00625ee0  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625ee4  01 10 c3 e5                                      strb r1, [r3, #1]
00625ee8  02 20 d2 e5                                      ldrb r2, [r2, #2]
00625eec  02 20 c3 e5                                      strb r2, [r3, #2]
00625ef0  f0 ff ff ea                                      b #0x625eb8
00625ef4  07 00 a0 e1                                      mov r0, r7
00625ef8  e0 ff ff ea                                      b #0x625e80

; FUNCTION 0x0062634c, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062634c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626350  01 00 53 e3                                      cmp r3, #1
00626354  1c d0 4d e2                                      sub sp, sp, #0x1c
00626358  03 40 a0 e1                                      mov r4, r3
0062635c  06 00 8d e8                                      stm sp, {r1, r2}
00626360  2f 00 00 0a                                      beq #0x626424
00626364  00 70 a0 e3                                      mov r7, #0
00626368  00 00 53 e3                                      cmp r3, #0
0062636c  08 70 8d e5                                      str r7, [sp, #8]
00626370  0c 70 8d e5                                      str r7, [sp, #0xc]
00626374  10 70 8d e5                                      str r7, [sp, #0x10]
00626378  14 70 8d e5                                      str r7, [sp, #0x14]
0062637c  00 b0 a0 13                                      movne fp, #0
00626380  08 80 8d 12                                      addne r8, sp, #8
00626384  33 00 00 0a                                      beq #0x626458
00626388  04 00 9d e5                                      ldr r0, [sp, #4]
0062638c  00 30 9d e5                                      ldr r3, [sp]
00626390  00 50 a0 e3                                      mov r5, #0
00626394  0b a0 90 e7                                      ldr sl, [r0, fp]
00626398  0b 90 83 e0                                      add sb, r3, fp
0062639c  05 60 a0 e1                                      mov r6, r5
006263a0  06 00 d9 e7                                      ldrb r0, [sb, r6]
006263a4  6e a1 f3 eb                                      bl #0x30e964
006263a8  0a 10 a0 e1                                      mov r1, sl
006263ac  6e a2 f3 eb                                      bl #0x30ed6c
006263b0  07 10 a0 e1                                      mov r1, r7
006263b4  fa a1 f3 eb                                      bl #0x30eba4
006263b8  05 00 88 e7                                      str r0, [r8, r5]
006263bc  04 50 85 e2                                      add r5, r5, #4
006263c0  10 00 55 e3                                      cmp r5, #0x10
006263c4  01 60 86 e2                                      add r6, r6, #1
006263c8  05 70 98 17                                      ldrne r7, [r8, r5]
006263cc  f3 ff ff 1a                                      bne #0x6263a0
006263d0  01 40 54 e2                                      subs r4, r4, #1
006263d4  04 b0 8b e2                                      add fp, fp, #4
006263d8  08 70 9d 15                                      ldrne r7, [sp, #8]
006263dc  e9 ff ff 1a                                      bne #0x626388
006263e0  08 00 9d e5                                      ldr r0, [sp, #8]
006263e4  ad 5f 0a eb                                      bl #0x8be2a0
006263e8  40 40 9d e5                                      ldr r4, [sp, #0x40]
006263ec  01 00 c4 e4                                      strb r0, [r4], #1
006263f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006263f4  a9 5f 0a eb                                      bl #0x8be2a0
006263f8  40 30 9d e5                                      ldr r3, [sp, #0x40]
006263fc  01 00 c3 e5                                      strb r0, [r3, #1]
00626400  10 00 9d e5                                      ldr r0, [sp, #0x10]
00626404  a5 5f 0a eb                                      bl #0x8be2a0
00626408  01 00 c4 e5                                      strb r0, [r4, #1]
0062640c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00626410  a2 5f 0a eb                                      bl #0x8be2a0
00626414  01 40 84 e2                                      add r4, r4, #1
00626418  01 00 c4 e5                                      strb r0, [r4, #1]
0062641c  1c d0 8d e2                                      add sp, sp, #0x1c
00626420  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626424  00 20 9d e5                                      ldr r2, [sp]
00626428  40 30 9d e5                                      ldr r3, [sp, #0x40]
0062642c  01 10 d2 e4                                      ldrb r1, [r2], #1
00626430  01 10 c3 e4                                      strb r1, [r3], #1
00626434  00 00 9d e5                                      ldr r0, [sp]
00626438  01 10 d0 e5                                      ldrb r1, [r0, #1]
0062643c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00626440  01 10 c0 e5                                      strb r1, [r0, #1]
00626444  01 10 d2 e5                                      ldrb r1, [r2, #1]
00626448  01 10 c3 e5                                      strb r1, [r3, #1]
0062644c  02 20 d2 e5                                      ldrb r2, [r2, #2]
00626450  02 20 c3 e5                                      strb r2, [r3, #2]
00626454  f0 ff ff ea                                      b #0x62641c
00626458  07 00 a0 e1                                      mov r0, r7
0062645c  e0 ff ff ea                                      b #0x6263e4
