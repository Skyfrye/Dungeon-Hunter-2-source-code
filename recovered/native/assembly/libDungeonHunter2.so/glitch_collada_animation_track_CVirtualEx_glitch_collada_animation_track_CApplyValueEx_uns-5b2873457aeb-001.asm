; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edbc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060edbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee04, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getValueSize() const
; decoder-mode: arm
0060ee04  04 00 a0 e3                                      mov r0, #4
0060ee08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ee0c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13retrieveValueEPvSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ee0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f854, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060f854  10 40 2d e9                                      push {r4, lr}
0060f858  00 40 a0 e1                                      mov r4, r0
0060f85c  93 fa f3 eb                                      bl #0x30e2b0
0060f860  04 00 a0 e1                                      mov r0, r4
0060f864  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006117fc, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getInstance()
; decoder-mode: arm
006117fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00611800  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611804  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611808  04 40 8f e0                                      add r4, pc, r4
0061180c  03 60 94 e7                                      ldr r6, [r4, r3]
00611810  00 30 96 e5                                      ldr r3, [r6]
00611814  01 00 13 e3                                      tst r3, #1
00611818  02 00 00 0a                                      beq #0x611828
0061181c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611820  05 00 94 e7                                      ldr r0, [r4, r5]
00611824  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611828  06 00 a0 e1                                      mov r0, r6
0061182c  ce f3 f3 eb                                      bl #0x30e76c
00611830  00 00 50 e3                                      cmp r0, #0
00611834  f8 ff ff 0a                                      beq #0x61181c
00611838  44 30 9f e5                                      ldr r3, [pc, #0x44]
0061183c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611840  06 00 a0 e1                                      mov r0, r6
00611844  03 30 94 e7                                      ldr r3, [r4, r3]
00611848  05 60 94 e7                                      ldr r6, [r4, r5]
0061184c  08 30 83 e2                                      add r3, r3, #8
00611850  00 30 86 e5                                      str r3, [r6]
00611854  78 f4 f3 eb                                      bl #0x30ea3c
00611858  28 30 9f e5                                      ldr r3, [pc, #0x28]
0061185c  06 00 a0 e1                                      mov r0, r6
00611860  03 10 94 e7                                      ldr r1, [r4, r3]
00611864  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611868  03 20 94 e7                                      ldr r2, [r4, r3]
0061186c  a4 f2 f3 eb                                      bl #0x30e304
00611870  05 00 94 e7                                      ldr r0, [r4, r5]
00611874  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611878  88 32 38 00 c4 3a 00 00 d0 10 00 00 4c 38 00 00  .byte 0x88, 0x32, 0x38, 0x00, 0xc4, 0x3a, 0x00, 0x00, 0xd0, 0x10, 0x00, 0x00, 0x4c, 0x38, 0x00, 0x00
00611888  f8 42 00 00 90 18 00 00                          .byte 0xf8, 0x42, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618f48, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618f48  00 20 a0 e3                                      mov r2, #0
00618f4c  01 30 a0 e1                                      mov r3, r1
00618f50  01 20 c3 e4                                      strb r2, [r3], #1
00618f54  01 30 83 e2                                      add r3, r3, #1
00618f58  01 20 c1 e5                                      strb r2, [r1, #1]
00618f5c  01 20 c3 e4                                      strb r2, [r3], #1
00618f60  00 20 c3 e5                                      strb r2, [r3]
00618f64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00619e10, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00619e10  01 00 a0 e1                                      mov r0, r1
00619e14  02 10 a0 e1                                      mov r1, r2
00619e18  03 20 a0 e1                                      mov r2, r3
00619e1c  dd ff ff ea                                      b #0x619d98

; FUNCTION 0x00619f1c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00619f1c  01 00 a0 e1                                      mov r0, r1
00619f20  04 c0 9d e5                                      ldr ip, [sp, #4]
00619f24  02 10 a0 e1                                      mov r1, r2
00619f28  03 20 a0 e1                                      mov r2, r3
00619f2c  00 30 9d e5                                      ldr r3, [sp]
00619f30  00 c0 8d e5                                      str ip, [sp]
00619f34  b9 ff ff ea                                      b #0x619e20

; FUNCTION 0x00619fac, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00619fac  01 00 a0 e1                                      mov r0, r1
00619fb0  02 10 a0 e1                                      mov r1, r2
00619fb4  03 20 a0 e1                                      mov r2, r3
00619fb8  00 30 9d e5                                      ldr r3, [sp]
00619fbc  dd ff ff ea                                      b #0x619f38

; FUNCTION 0x0061a0ac, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061a0ac  04 c0 9d e5                                      ldr ip, [sp, #4]
0061a0b0  01 00 a0 e1                                      mov r0, r1
0061a0b4  02 10 a0 e1                                      mov r1, r2
0061a0b8  03 20 a0 e1                                      mov r2, r3
0061a0bc  00 30 9d e5                                      ldr r3, [sp]
0061a0c0  00 c0 8d e5                                      str ip, [sp]
0061a0c4  08 c0 9d e5                                      ldr ip, [sp, #8]
0061a0c8  04 c0 8d e5                                      str ip, [sp, #4]
0061a0cc  bb ff ff ea                                      b #0x619fc0

; FUNCTION 0x00622798, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE10applyValueEPvSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622798  04 e0 2d e5                                      str lr, [sp, #-4]!
0062279c  02 30 d1 e5                                      ldrb r3, [r1, #2]
006227a0  03 c0 d1 e5                                      ldrb ip, [r1, #3]
006227a4  00 00 d1 e5                                      ldrb r0, [r1]
006227a8  01 10 d1 e5                                      ldrb r1, [r1, #1]
006227ac  0c d0 4d e2                                      sub sp, sp, #0xc
006227b0  04 00 cd e5                                      strb r0, [sp, #4]
006227b4  06 30 cd e5                                      strb r3, [sp, #6]
006227b8  07 c0 cd e5                                      strb ip, [sp, #7]
006227bc  00 30 a0 e3                                      mov r3, #0
006227c0  05 10 cd e5                                      strb r1, [sp, #5]
006227c4  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006227c8  02 00 a0 e1                                      mov r0, r2
006227cc  03 20 a0 e1                                      mov r2, r3
006227d0  04 30 8d e2                                      add r3, sp, #4
006227d4  57 a1 fe eb                                      bl #0x5cad38
006227d8  0c d0 8d e2                                      add sp, sp, #0xc
006227dc  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006227e0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006227e0  70 40 2d e9                                      push {r4, r5, r6, lr}
006227e4  08 d0 4d e2                                      sub sp, sp, #8
006227e8  01 00 a0 e1                                      mov r0, r1
006227ec  02 10 a0 e1                                      mov r1, r2
006227f0  04 20 8d e2                                      add r2, sp, #4
006227f4  03 60 a0 e1                                      mov r6, r3
006227f8  66 dd ff eb                                      bl #0x619d98
006227fc  18 30 9d e5                                      ldr r3, [sp, #0x18]
00622800  07 50 dd e5                                      ldrb r5, [sp, #7]
00622804  04 40 dd e5                                      ldrb r4, [sp, #4]
00622808  05 e0 dd e5                                      ldrb lr, [sp, #5]
0062280c  06 c0 dd e5                                      ldrb ip, [sp, #6]
00622810  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00622814  06 00 a0 e1                                      mov r0, r6
00622818  00 20 a0 e3                                      mov r2, #0
0062281c  0d 30 a0 e1                                      mov r3, sp
00622820  03 50 cd e5                                      strb r5, [sp, #3]
00622824  00 40 cd e5                                      strb r4, [sp]
00622828  01 e0 cd e5                                      strb lr, [sp, #1]
0062282c  02 c0 cd e5                                      strb ip, [sp, #2]
00622830  40 a1 fe eb                                      bl #0x5cad38
00622834  08 d0 8d e2                                      add sp, sp, #8
00622838  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00622890, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622890  04 c0 9d e5                                      ldr ip, [sp, #4]
00622894  01 00 a0 e1                                      mov r0, r1
00622898  02 10 a0 e1                                      mov r1, r2
0062289c  03 20 a0 e1                                      mov r2, r3
006228a0  00 30 9d e5                                      ldr r3, [sp]
006228a4  00 c0 8d e5                                      str ip, [sp]
006228a8  08 c0 9d e5                                      ldr ip, [sp, #8]
006228ac  04 c0 8d e5                                      str ip, [sp, #4]
006228b0  e1 ff ff ea                                      b #0x62283c

; FUNCTION 0x006253e8, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006253e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006253ec  01 00 53 e3                                      cmp r3, #1
006253f0  24 d0 4d e2                                      sub sp, sp, #0x24
006253f4  03 40 a0 e1                                      mov r4, r3
006253f8  06 00 8d e8                                      stm sp, {r1, r2}
006253fc  3a 00 00 0a                                      beq #0x6254ec
00625400  00 70 a0 e3                                      mov r7, #0
00625404  00 00 53 e3                                      cmp r3, #0
00625408  0c 70 8d e5                                      str r7, [sp, #0xc]
0062540c  10 70 8d e5                                      str r7, [sp, #0x10]
00625410  14 70 8d e5                                      str r7, [sp, #0x14]
00625414  18 70 8d e5                                      str r7, [sp, #0x18]
00625418  00 b0 a0 13                                      movne fp, #0
0062541c  0c 80 8d 12                                      addne r8, sp, #0xc
00625420  3d 00 00 0a                                      beq #0x62551c
00625424  04 20 9d e5                                      ldr r2, [sp, #4]
00625428  00 30 9d e5                                      ldr r3, [sp]
0062542c  00 50 a0 e3                                      mov r5, #0
00625430  0b a0 92 e7                                      ldr sl, [r2, fp]
00625434  0b 90 83 e0                                      add sb, r3, fp
00625438  05 60 a0 e1                                      mov r6, r5
0062543c  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625440  47 a5 f3 eb                                      bl #0x30e964
00625444  0a 10 a0 e1                                      mov r1, sl
00625448  47 a6 f3 eb                                      bl #0x30ed6c
0062544c  07 10 a0 e1                                      mov r1, r7
00625450  d3 a5 f3 eb                                      bl #0x30eba4
00625454  05 00 88 e7                                      str r0, [r8, r5]
00625458  04 50 85 e2                                      add r5, r5, #4
0062545c  10 00 55 e3                                      cmp r5, #0x10
00625460  01 60 86 e2                                      add r6, r6, #1
00625464  05 70 98 17                                      ldrne r7, [r8, r5]
00625468  f3 ff ff 1a                                      bne #0x62543c
0062546c  01 40 54 e2                                      subs r4, r4, #1
00625470  04 b0 8b e2                                      add fp, fp, #4
00625474  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
00625478  e9 ff ff 1a                                      bne #0x625424
0062547c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625480  86 63 0a eb                                      bl #0x8be2a0
00625484  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625488  10 00 9d e5                                      ldr r0, [sp, #0x10]
0062548c  83 63 0a eb                                      bl #0x8be2a0
00625490  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625494  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625498  80 63 0a eb                                      bl #0x8be2a0
0062549c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
006254a0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006254a4  7d 63 0a eb                                      bl #0x8be2a0
006254a8  1f 00 cd e5                                      strb r0, [sp, #0x1f]
006254ac  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006254b0  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
006254b4  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
006254b8  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
006254bc  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
006254c0  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006254c4  48 00 9d e5                                      ldr r0, [sp, #0x48]
006254c8  08 30 a0 e1                                      mov r3, r8
006254cc  00 20 a0 e3                                      mov r2, #0
006254d0  0f 50 cd e5                                      strb r5, [sp, #0xf]
006254d4  0c 40 cd e5                                      strb r4, [sp, #0xc]
006254d8  0d e0 cd e5                                      strb lr, [sp, #0xd]
006254dc  0e c0 cd e5                                      strb ip, [sp, #0xe]
006254e0  14 96 fe eb                                      bl #0x5cad38
006254e4  24 d0 8d e2                                      add sp, sp, #0x24
006254e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006254ec  00 30 9d e5                                      ldr r3, [sp]
006254f0  00 20 9d e5                                      ldr r2, [sp]
006254f4  0c 80 8d e2                                      add r8, sp, #0xc
006254f8  01 00 d3 e4                                      ldrb r0, [r3], #1
006254fc  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625500  02 20 d3 e5                                      ldrb r2, [r3, #2]
00625504  01 30 d3 e5                                      ldrb r3, [r3, #1]
00625508  1c 00 cd e5                                      strb r0, [sp, #0x1c]
0062550c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00625510  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00625514  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00625518  e3 ff ff ea                                      b #0x6254ac
0062551c  07 00 a0 e1                                      mov r0, r7
00625520  0c 80 8d e2                                      add r8, sp, #0xc
00625524  d5 ff ff ea                                      b #0x625480

; FUNCTION 0x00625528, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00625528  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062552c  01 00 53 e3                                      cmp r3, #1
00625530  24 d0 4d e2                                      sub sp, sp, #0x24
00625534  03 40 a0 e1                                      mov r4, r3
00625538  06 00 8d e8                                      stm sp, {r1, r2}
0062553c  3a 00 00 0a                                      beq #0x62562c
00625540  00 70 a0 e3                                      mov r7, #0
00625544  00 00 53 e3                                      cmp r3, #0
00625548  0c 70 8d e5                                      str r7, [sp, #0xc]
0062554c  10 70 8d e5                                      str r7, [sp, #0x10]
00625550  14 70 8d e5                                      str r7, [sp, #0x14]
00625554  18 70 8d e5                                      str r7, [sp, #0x18]
00625558  00 b0 a0 13                                      movne fp, #0
0062555c  0c 80 8d 12                                      addne r8, sp, #0xc
00625560  3d 00 00 0a                                      beq #0x62565c
00625564  04 20 9d e5                                      ldr r2, [sp, #4]
00625568  00 30 9d e5                                      ldr r3, [sp]
0062556c  00 50 a0 e3                                      mov r5, #0
00625570  0b a0 92 e7                                      ldr sl, [r2, fp]
00625574  0b 90 83 e0                                      add sb, r3, fp
00625578  05 60 a0 e1                                      mov r6, r5
0062557c  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625580  f7 a4 f3 eb                                      bl #0x30e964
00625584  0a 10 a0 e1                                      mov r1, sl
00625588  f7 a5 f3 eb                                      bl #0x30ed6c
0062558c  07 10 a0 e1                                      mov r1, r7
00625590  83 a5 f3 eb                                      bl #0x30eba4
00625594  05 00 88 e7                                      str r0, [r8, r5]
00625598  04 50 85 e2                                      add r5, r5, #4
0062559c  10 00 55 e3                                      cmp r5, #0x10
006255a0  01 60 86 e2                                      add r6, r6, #1
006255a4  05 70 98 17                                      ldrne r7, [r8, r5]
006255a8  f3 ff ff 1a                                      bne #0x62557c
006255ac  01 40 54 e2                                      subs r4, r4, #1
006255b0  04 b0 8b e2                                      add fp, fp, #4
006255b4  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
006255b8  e9 ff ff 1a                                      bne #0x625564
006255bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006255c0  36 63 0a eb                                      bl #0x8be2a0
006255c4  1c 00 cd e5                                      strb r0, [sp, #0x1c]
006255c8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006255cc  33 63 0a eb                                      bl #0x8be2a0
006255d0  1d 00 cd e5                                      strb r0, [sp, #0x1d]
006255d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006255d8  30 63 0a eb                                      bl #0x8be2a0
006255dc  1e 00 cd e5                                      strb r0, [sp, #0x1e]
006255e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006255e4  2d 63 0a eb                                      bl #0x8be2a0
006255e8  1f 00 cd e5                                      strb r0, [sp, #0x1f]
006255ec  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006255f0  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
006255f4  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
006255f8  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
006255fc  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00625600  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625604  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625608  08 30 a0 e1                                      mov r3, r8
0062560c  00 20 a0 e3                                      mov r2, #0
00625610  0f 50 cd e5                                      strb r5, [sp, #0xf]
00625614  0c 40 cd e5                                      strb r4, [sp, #0xc]
00625618  0d e0 cd e5                                      strb lr, [sp, #0xd]
0062561c  0e c0 cd e5                                      strb ip, [sp, #0xe]
00625620  c4 95 fe eb                                      bl #0x5cad38
00625624  24 d0 8d e2                                      add sp, sp, #0x24
00625628  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062562c  00 30 9d e5                                      ldr r3, [sp]
00625630  00 20 9d e5                                      ldr r2, [sp]
00625634  0c 80 8d e2                                      add r8, sp, #0xc
00625638  01 00 d3 e4                                      ldrb r0, [r3], #1
0062563c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625640  02 20 d3 e5                                      ldrb r2, [r3, #2]
00625644  01 30 d3 e5                                      ldrb r3, [r3, #1]
00625648  1c 00 cd e5                                      strb r0, [sp, #0x1c]
0062564c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00625650  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00625654  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00625658  e3 ff ff ea                                      b #0x6255ec
0062565c  07 00 a0 e1                                      mov r0, r7
00625660  0c 80 8d e2                                      add r8, sp, #0xc
00625664  d5 ff ff ea                                      b #0x6255c0

; FUNCTION 0x00625efc, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00625efc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00625f00  01 00 53 e3                                      cmp r3, #1
00625f04  1c d0 4d e2                                      sub sp, sp, #0x1c
00625f08  03 40 a0 e1                                      mov r4, r3
00625f0c  06 00 8d e8                                      stm sp, {r1, r2}
00625f10  2f 00 00 0a                                      beq #0x625fd4
00625f14  00 70 a0 e3                                      mov r7, #0
00625f18  00 00 53 e3                                      cmp r3, #0
00625f1c  08 70 8d e5                                      str r7, [sp, #8]
00625f20  0c 70 8d e5                                      str r7, [sp, #0xc]
00625f24  10 70 8d e5                                      str r7, [sp, #0x10]
00625f28  14 70 8d e5                                      str r7, [sp, #0x14]
00625f2c  00 b0 a0 13                                      movne fp, #0
00625f30  08 80 8d 12                                      addne r8, sp, #8
00625f34  33 00 00 0a                                      beq #0x626008
00625f38  04 00 9d e5                                      ldr r0, [sp, #4]
00625f3c  00 30 9d e5                                      ldr r3, [sp]
00625f40  00 50 a0 e3                                      mov r5, #0
00625f44  0b a0 90 e7                                      ldr sl, [r0, fp]
00625f48  0b 90 83 e0                                      add sb, r3, fp
00625f4c  05 60 a0 e1                                      mov r6, r5
00625f50  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625f54  82 a2 f3 eb                                      bl #0x30e964
00625f58  0a 10 a0 e1                                      mov r1, sl
00625f5c  82 a3 f3 eb                                      bl #0x30ed6c
00625f60  07 10 a0 e1                                      mov r1, r7
00625f64  0e a3 f3 eb                                      bl #0x30eba4
00625f68  05 00 88 e7                                      str r0, [r8, r5]
00625f6c  04 50 85 e2                                      add r5, r5, #4
00625f70  10 00 55 e3                                      cmp r5, #0x10
00625f74  01 60 86 e2                                      add r6, r6, #1
00625f78  05 70 98 17                                      ldrne r7, [r8, r5]
00625f7c  f3 ff ff 1a                                      bne #0x625f50
00625f80  01 40 54 e2                                      subs r4, r4, #1
00625f84  04 b0 8b e2                                      add fp, fp, #4
00625f88  08 70 9d 15                                      ldrne r7, [sp, #8]
00625f8c  e9 ff ff 1a                                      bne #0x625f38
00625f90  08 00 9d e5                                      ldr r0, [sp, #8]
00625f94  c1 60 0a eb                                      bl #0x8be2a0
00625f98  40 40 9d e5                                      ldr r4, [sp, #0x40]
00625f9c  01 00 c4 e4                                      strb r0, [r4], #1
00625fa0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625fa4  bd 60 0a eb                                      bl #0x8be2a0
00625fa8  40 30 9d e5                                      ldr r3, [sp, #0x40]
00625fac  01 00 c3 e5                                      strb r0, [r3, #1]
00625fb0  10 00 9d e5                                      ldr r0, [sp, #0x10]
00625fb4  b9 60 0a eb                                      bl #0x8be2a0
00625fb8  01 00 c4 e5                                      strb r0, [r4, #1]
00625fbc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625fc0  b6 60 0a eb                                      bl #0x8be2a0
00625fc4  01 40 84 e2                                      add r4, r4, #1
00625fc8  01 00 c4 e5                                      strb r0, [r4, #1]
00625fcc  1c d0 8d e2                                      add sp, sp, #0x1c
00625fd0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625fd4  00 20 9d e5                                      ldr r2, [sp]
00625fd8  40 30 9d e5                                      ldr r3, [sp, #0x40]
00625fdc  01 10 d2 e4                                      ldrb r1, [r2], #1
00625fe0  01 10 c3 e4                                      strb r1, [r3], #1
00625fe4  00 00 9d e5                                      ldr r0, [sp]
00625fe8  01 10 d0 e5                                      ldrb r1, [r0, #1]
00625fec  40 00 9d e5                                      ldr r0, [sp, #0x40]
00625ff0  01 10 c0 e5                                      strb r1, [r0, #1]
00625ff4  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625ff8  01 10 c3 e5                                      strb r1, [r3, #1]
00625ffc  02 20 d2 e5                                      ldrb r2, [r2, #2]
00626000  02 20 c3 e5                                      strb r2, [r3, #2]
00626004  f0 ff ff ea                                      b #0x625fcc
00626008  07 00 a0 e1                                      mov r0, r7
0062600c  e0 ff ff ea                                      b #0x625f94

; FUNCTION 0x00626460, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626460  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626464  01 00 53 e3                                      cmp r3, #1
00626468  1c d0 4d e2                                      sub sp, sp, #0x1c
0062646c  03 40 a0 e1                                      mov r4, r3
00626470  06 00 8d e8                                      stm sp, {r1, r2}
00626474  2f 00 00 0a                                      beq #0x626538
00626478  00 70 a0 e3                                      mov r7, #0
0062647c  00 00 53 e3                                      cmp r3, #0
00626480  08 70 8d e5                                      str r7, [sp, #8]
00626484  0c 70 8d e5                                      str r7, [sp, #0xc]
00626488  10 70 8d e5                                      str r7, [sp, #0x10]
0062648c  14 70 8d e5                                      str r7, [sp, #0x14]
00626490  00 b0 a0 13                                      movne fp, #0
00626494  08 80 8d 12                                      addne r8, sp, #8
00626498  33 00 00 0a                                      beq #0x62656c
0062649c  04 00 9d e5                                      ldr r0, [sp, #4]
006264a0  00 30 9d e5                                      ldr r3, [sp]
006264a4  00 50 a0 e3                                      mov r5, #0
006264a8  0b a0 90 e7                                      ldr sl, [r0, fp]
006264ac  0b 90 83 e0                                      add sb, r3, fp
006264b0  05 60 a0 e1                                      mov r6, r5
006264b4  06 00 d9 e7                                      ldrb r0, [sb, r6]
006264b8  29 a1 f3 eb                                      bl #0x30e964
006264bc  0a 10 a0 e1                                      mov r1, sl
006264c0  29 a2 f3 eb                                      bl #0x30ed6c
006264c4  07 10 a0 e1                                      mov r1, r7
006264c8  b5 a1 f3 eb                                      bl #0x30eba4
006264cc  05 00 88 e7                                      str r0, [r8, r5]
006264d0  04 50 85 e2                                      add r5, r5, #4
006264d4  10 00 55 e3                                      cmp r5, #0x10
006264d8  01 60 86 e2                                      add r6, r6, #1
006264dc  05 70 98 17                                      ldrne r7, [r8, r5]
006264e0  f3 ff ff 1a                                      bne #0x6264b4
006264e4  01 40 54 e2                                      subs r4, r4, #1
006264e8  04 b0 8b e2                                      add fp, fp, #4
006264ec  08 70 9d 15                                      ldrne r7, [sp, #8]
006264f0  e9 ff ff 1a                                      bne #0x62649c
006264f4  08 00 9d e5                                      ldr r0, [sp, #8]
006264f8  68 5f 0a eb                                      bl #0x8be2a0
006264fc  40 40 9d e5                                      ldr r4, [sp, #0x40]
00626500  01 00 c4 e4                                      strb r0, [r4], #1
00626504  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00626508  64 5f 0a eb                                      bl #0x8be2a0
0062650c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626510  01 00 c3 e5                                      strb r0, [r3, #1]
00626514  10 00 9d e5                                      ldr r0, [sp, #0x10]
00626518  60 5f 0a eb                                      bl #0x8be2a0
0062651c  01 00 c4 e5                                      strb r0, [r4, #1]
00626520  14 00 9d e5                                      ldr r0, [sp, #0x14]
00626524  5d 5f 0a eb                                      bl #0x8be2a0
00626528  01 40 84 e2                                      add r4, r4, #1
0062652c  01 00 c4 e5                                      strb r0, [r4, #1]
00626530  1c d0 8d e2                                      add sp, sp, #0x1c
00626534  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626538  00 20 9d e5                                      ldr r2, [sp]
0062653c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626540  01 10 d2 e4                                      ldrb r1, [r2], #1
00626544  01 10 c3 e4                                      strb r1, [r3], #1
00626548  00 00 9d e5                                      ldr r0, [sp]
0062654c  01 10 d0 e5                                      ldrb r1, [r0, #1]
00626550  40 00 9d e5                                      ldr r0, [sp, #0x40]
00626554  01 10 c0 e5                                      strb r1, [r0, #1]
00626558  01 10 d2 e5                                      ldrb r1, [r2, #1]
0062655c  01 10 c3 e5                                      strb r1, [r3, #1]
00626560  02 20 d2 e5                                      ldrb r2, [r2, #2]
00626564  02 20 c3 e5                                      strb r2, [r3, #2]
00626568  f0 ff ff ea                                      b #0x626530
0062656c  07 00 a0 e1                                      mov r0, r7
00626570  e0 ff ff ea                                      b #0x6264f8
