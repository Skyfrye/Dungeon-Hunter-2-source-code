; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060edc4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060edc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060edec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getValueSize() const
; decoder-mode: arm
0060edec  04 00 a0 e3                                      mov r0, #4
0060edf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060edf4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13retrieveValueEPvSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060edf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f87c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060f87c  10 40 2d e9                                      push {r4, lr}
0060f880  00 40 a0 e1                                      mov r4, r0
0060f884  89 fa f3 eb                                      bl #0x30e2b0
0060f888  04 00 a0 e1                                      mov r0, r4
0060f88c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611924, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getInstance()
; decoder-mode: arm
00611924  70 40 2d e9                                      push {r4, r5, r6, lr}
00611928  70 40 9f e5                                      ldr r4, [pc, #0x70]
0061192c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611930  04 40 8f e0                                      add r4, pc, r4
00611934  03 60 94 e7                                      ldr r6, [r4, r3]
00611938  00 30 96 e5                                      ldr r3, [r6]
0061193c  01 00 13 e3                                      tst r3, #1
00611940  02 00 00 0a                                      beq #0x611950
00611944  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611948  05 00 94 e7                                      ldr r0, [r4, r5]
0061194c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611950  06 00 a0 e1                                      mov r0, r6
00611954  84 f3 f3 eb                                      bl #0x30e76c
00611958  00 00 50 e3                                      cmp r0, #0
0061195c  f8 ff ff 0a                                      beq #0x611944
00611960  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611964  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611968  06 00 a0 e1                                      mov r0, r6
0061196c  03 30 94 e7                                      ldr r3, [r4, r3]
00611970  05 60 94 e7                                      ldr r6, [r4, r5]
00611974  08 30 83 e2                                      add r3, r3, #8
00611978  00 30 86 e5                                      str r3, [r6]
0061197c  2e f4 f3 eb                                      bl #0x30ea3c
00611980  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611984  06 00 a0 e1                                      mov r0, r6
00611988  03 10 94 e7                                      ldr r1, [r4, r3]
0061198c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611990  03 20 94 e7                                      ldr r2, [r4, r3]
00611994  5a f2 f3 eb                                      bl #0x30e304
00611998  05 00 94 e7                                      ldr r0, [r4, r5]
0061199c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006119a0  60 31 38 00 54 25 00 00 f4 42 00 00 04 3e 00 00  .byte 0x60, 0x31, 0x38, 0x00, 0x54, 0x25, 0x00, 0x00, 0xf4, 0x42, 0x00, 0x00, 0x04, 0x3e, 0x00, 0x00
006119b0  f4 28 00 00 90 18 00 00                          .byte 0xf4, 0x28, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618050, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00618050  01 00 a0 e1                                      mov r0, r1
00618054  02 10 a0 e1                                      mov r1, r2
00618058  03 20 a0 e1                                      mov r2, r3
0061805c  00 30 9d e5                                      ldr r3, [sp]
00618060  dd ff ff ea                                      b #0x617fdc

; FUNCTION 0x00618f88, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618f88  00 20 a0 e3                                      mov r2, #0
00618f8c  01 30 a0 e1                                      mov r3, r1
00618f90  01 20 c3 e4                                      strb r2, [r3], #1
00618f94  01 30 83 e2                                      add r3, r3, #1
00618f98  01 20 c1 e5                                      strb r2, [r1, #1]
00618f9c  01 20 c3 e4                                      strb r2, [r3], #1
00618fa0  00 20 c3 e5                                      strb r2, [r3]
00618fa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00619a64, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00619a64  04 c0 9d e5                                      ldr ip, [sp, #4]
00619a68  01 00 a0 e1                                      mov r0, r1
00619a6c  02 10 a0 e1                                      mov r1, r2
00619a70  03 20 a0 e1                                      mov r2, r3
00619a74  00 30 9d e5                                      ldr r3, [sp]
00619a78  00 c0 8d e5                                      str ip, [sp]
00619a7c  08 c0 9d e5                                      ldr ip, [sp, #8]
00619a80  04 c0 8d e5                                      str ip, [sp, #4]
00619a84  bb ff ff ea                                      b #0x619978

; FUNCTION 0x0061a474, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061a474  01 00 a0 e1                                      mov r0, r1
0061a478  02 10 a0 e1                                      mov r1, r2
0061a47c  03 20 a0 e1                                      mov r2, r3
0061a480  dd ff ff ea                                      b #0x61a3fc

; FUNCTION 0x0061a558, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061a558  01 00 a0 e1                                      mov r0, r1
0061a55c  04 c0 9d e5                                      ldr ip, [sp, #4]
0061a560  02 10 a0 e1                                      mov r1, r2
0061a564  03 20 a0 e1                                      mov r2, r3
0061a568  00 30 9d e5                                      ldr r3, [sp]
0061a56c  00 c0 8d e5                                      str ip, [sp]
0061a570  c3 ff ff ea                                      b #0x61a484

; FUNCTION 0x006229d0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE10applyValueEPvSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006229d0  04 e0 2d e5                                      str lr, [sp, #-4]!
006229d4  02 30 d1 e5                                      ldrb r3, [r1, #2]
006229d8  03 c0 d1 e5                                      ldrb ip, [r1, #3]
006229dc  00 00 d1 e5                                      ldrb r0, [r1]
006229e0  01 10 d1 e5                                      ldrb r1, [r1, #1]
006229e4  0c d0 4d e2                                      sub sp, sp, #0xc
006229e8  04 00 cd e5                                      strb r0, [sp, #4]
006229ec  06 30 cd e5                                      strb r3, [sp, #6]
006229f0  07 c0 cd e5                                      strb ip, [sp, #7]
006229f4  00 30 a0 e3                                      mov r3, #0
006229f8  05 10 cd e5                                      strb r1, [sp, #5]
006229fc  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00622a00  02 00 a0 e1                                      mov r0, r2
00622a04  03 20 a0 e1                                      mov r2, r3
00622a08  04 30 8d e2                                      add r3, sp, #4
00622a0c  c9 a0 fe eb                                      bl #0x5cad38
00622a10  0c d0 8d e2                                      add sp, sp, #0xc
00622a14  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00622a18, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622a18  70 40 2d e9                                      push {r4, r5, r6, lr}
00622a1c  08 d0 4d e2                                      sub sp, sp, #8
00622a20  01 00 a0 e1                                      mov r0, r1
00622a24  02 10 a0 e1                                      mov r1, r2
00622a28  04 20 8d e2                                      add r2, sp, #4
00622a2c  03 60 a0 e1                                      mov r6, r3
00622a30  71 de ff eb                                      bl #0x61a3fc
00622a34  18 30 9d e5                                      ldr r3, [sp, #0x18]
00622a38  07 50 dd e5                                      ldrb r5, [sp, #7]
00622a3c  04 40 dd e5                                      ldrb r4, [sp, #4]
00622a40  05 e0 dd e5                                      ldrb lr, [sp, #5]
00622a44  06 c0 dd e5                                      ldrb ip, [sp, #6]
00622a48  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00622a4c  06 00 a0 e1                                      mov r0, r6
00622a50  00 20 a0 e3                                      mov r2, #0
00622a54  0d 30 a0 e1                                      mov r3, sp
00622a58  03 50 cd e5                                      strb r5, [sp, #3]
00622a5c  00 40 cd e5                                      strb r4, [sp]
00622a60  01 e0 cd e5                                      strb lr, [sp, #1]
00622a64  02 c0 cd e5                                      strb ip, [sp, #2]
00622a68  b2 a0 fe eb                                      bl #0x5cad38
00622a6c  08 d0 8d e2                                      add sp, sp, #8
00622a70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00622ac8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622ac8  04 c0 9d e5                                      ldr ip, [sp, #4]
00622acc  01 00 a0 e1                                      mov r0, r1
00622ad0  02 10 a0 e1                                      mov r1, r2
00622ad4  03 20 a0 e1                                      mov r2, r3
00622ad8  00 30 9d e5                                      ldr r3, [sp]
00622adc  00 c0 8d e5                                      str ip, [sp]
00622ae0  08 c0 9d e5                                      ldr ip, [sp, #8]
00622ae4  04 c0 8d e5                                      str ip, [sp, #4]
00622ae8  e1 ff ff ea                                      b #0x622a74

; FUNCTION 0x006258e8, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006258e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006258ec  01 00 53 e3                                      cmp r3, #1
006258f0  24 d0 4d e2                                      sub sp, sp, #0x24
006258f4  03 40 a0 e1                                      mov r4, r3
006258f8  06 00 8d e8                                      stm sp, {r1, r2}
006258fc  3a 00 00 0a                                      beq #0x6259ec
00625900  00 70 a0 e3                                      mov r7, #0
00625904  00 00 53 e3                                      cmp r3, #0
00625908  0c 70 8d e5                                      str r7, [sp, #0xc]
0062590c  10 70 8d e5                                      str r7, [sp, #0x10]
00625910  14 70 8d e5                                      str r7, [sp, #0x14]
00625914  18 70 8d e5                                      str r7, [sp, #0x18]
00625918  00 b0 a0 13                                      movne fp, #0
0062591c  0c 80 8d 12                                      addne r8, sp, #0xc
00625920  3d 00 00 0a                                      beq #0x625a1c
00625924  04 20 9d e5                                      ldr r2, [sp, #4]
00625928  00 30 9d e5                                      ldr r3, [sp]
0062592c  00 50 a0 e3                                      mov r5, #0
00625930  0b a0 92 e7                                      ldr sl, [r2, fp]
00625934  0b 90 83 e0                                      add sb, r3, fp
00625938  05 60 a0 e1                                      mov r6, r5
0062593c  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625940  07 a4 f3 eb                                      bl #0x30e964
00625944  0a 10 a0 e1                                      mov r1, sl
00625948  07 a5 f3 eb                                      bl #0x30ed6c
0062594c  07 10 a0 e1                                      mov r1, r7
00625950  93 a4 f3 eb                                      bl #0x30eba4
00625954  05 00 88 e7                                      str r0, [r8, r5]
00625958  04 50 85 e2                                      add r5, r5, #4
0062595c  10 00 55 e3                                      cmp r5, #0x10
00625960  01 60 86 e2                                      add r6, r6, #1
00625964  05 70 98 17                                      ldrne r7, [r8, r5]
00625968  f3 ff ff 1a                                      bne #0x62593c
0062596c  01 40 54 e2                                      subs r4, r4, #1
00625970  04 b0 8b e2                                      add fp, fp, #4
00625974  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
00625978  e9 ff ff 1a                                      bne #0x625924
0062597c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625980  46 62 0a eb                                      bl #0x8be2a0
00625984  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625988  10 00 9d e5                                      ldr r0, [sp, #0x10]
0062598c  43 62 0a eb                                      bl #0x8be2a0
00625990  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625994  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625998  40 62 0a eb                                      bl #0x8be2a0
0062599c  1e 00 cd e5                                      strb r0, [sp, #0x1e]
006259a0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006259a4  3d 62 0a eb                                      bl #0x8be2a0
006259a8  1f 00 cd e5                                      strb r0, [sp, #0x1f]
006259ac  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006259b0  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
006259b4  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
006259b8  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
006259bc  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
006259c0  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006259c4  48 00 9d e5                                      ldr r0, [sp, #0x48]
006259c8  08 30 a0 e1                                      mov r3, r8
006259cc  00 20 a0 e3                                      mov r2, #0
006259d0  0f 50 cd e5                                      strb r5, [sp, #0xf]
006259d4  0c 40 cd e5                                      strb r4, [sp, #0xc]
006259d8  0d e0 cd e5                                      strb lr, [sp, #0xd]
006259dc  0e c0 cd e5                                      strb ip, [sp, #0xe]
006259e0  d4 94 fe eb                                      bl #0x5cad38
006259e4  24 d0 8d e2                                      add sp, sp, #0x24
006259e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006259ec  00 30 9d e5                                      ldr r3, [sp]
006259f0  00 20 9d e5                                      ldr r2, [sp]
006259f4  0c 80 8d e2                                      add r8, sp, #0xc
006259f8  01 00 d3 e4                                      ldrb r0, [r3], #1
006259fc  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625a00  02 20 d3 e5                                      ldrb r2, [r3, #2]
00625a04  01 30 d3 e5                                      ldrb r3, [r3, #1]
00625a08  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625a0c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00625a10  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00625a14  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00625a18  e3 ff ff ea                                      b #0x6259ac
00625a1c  07 00 a0 e1                                      mov r0, r7
00625a20  0c 80 8d e2                                      add r8, sp, #0xc
00625a24  d5 ff ff ea                                      b #0x625980

; FUNCTION 0x00625a28, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00625a28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00625a2c  01 00 53 e3                                      cmp r3, #1
00625a30  24 d0 4d e2                                      sub sp, sp, #0x24
00625a34  03 40 a0 e1                                      mov r4, r3
00625a38  06 00 8d e8                                      stm sp, {r1, r2}
00625a3c  3a 00 00 0a                                      beq #0x625b2c
00625a40  00 70 a0 e3                                      mov r7, #0
00625a44  00 00 53 e3                                      cmp r3, #0
00625a48  0c 70 8d e5                                      str r7, [sp, #0xc]
00625a4c  10 70 8d e5                                      str r7, [sp, #0x10]
00625a50  14 70 8d e5                                      str r7, [sp, #0x14]
00625a54  18 70 8d e5                                      str r7, [sp, #0x18]
00625a58  00 b0 a0 13                                      movne fp, #0
00625a5c  0c 80 8d 12                                      addne r8, sp, #0xc
00625a60  3d 00 00 0a                                      beq #0x625b5c
00625a64  04 20 9d e5                                      ldr r2, [sp, #4]
00625a68  00 30 9d e5                                      ldr r3, [sp]
00625a6c  00 50 a0 e3                                      mov r5, #0
00625a70  0b a0 92 e7                                      ldr sl, [r2, fp]
00625a74  0b 90 83 e0                                      add sb, r3, fp
00625a78  05 60 a0 e1                                      mov r6, r5
00625a7c  06 00 d9 e7                                      ldrb r0, [sb, r6]
00625a80  b7 a3 f3 eb                                      bl #0x30e964
00625a84  0a 10 a0 e1                                      mov r1, sl
00625a88  b7 a4 f3 eb                                      bl #0x30ed6c
00625a8c  07 10 a0 e1                                      mov r1, r7
00625a90  43 a4 f3 eb                                      bl #0x30eba4
00625a94  05 00 88 e7                                      str r0, [r8, r5]
00625a98  04 50 85 e2                                      add r5, r5, #4
00625a9c  10 00 55 e3                                      cmp r5, #0x10
00625aa0  01 60 86 e2                                      add r6, r6, #1
00625aa4  05 70 98 17                                      ldrne r7, [r8, r5]
00625aa8  f3 ff ff 1a                                      bne #0x625a7c
00625aac  01 40 54 e2                                      subs r4, r4, #1
00625ab0  04 b0 8b e2                                      add fp, fp, #4
00625ab4  0c 70 9d 15                                      ldrne r7, [sp, #0xc]
00625ab8  e9 ff ff 1a                                      bne #0x625a64
00625abc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00625ac0  f6 61 0a eb                                      bl #0x8be2a0
00625ac4  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625ac8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00625acc  f3 61 0a eb                                      bl #0x8be2a0
00625ad0  1d 00 cd e5                                      strb r0, [sp, #0x1d]
00625ad4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00625ad8  f0 61 0a eb                                      bl #0x8be2a0
00625adc  1e 00 cd e5                                      strb r0, [sp, #0x1e]
00625ae0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00625ae4  ed 61 0a eb                                      bl #0x8be2a0
00625ae8  1f 00 cd e5                                      strb r0, [sp, #0x1f]
00625aec  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00625af0  1f 50 dd e5                                      ldrb r5, [sp, #0x1f]
00625af4  1c 40 dd e5                                      ldrb r4, [sp, #0x1c]
00625af8  1d e0 dd e5                                      ldrb lr, [sp, #0x1d]
00625afc  1e c0 dd e5                                      ldrb ip, [sp, #0x1e]
00625b00  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00625b04  48 00 9d e5                                      ldr r0, [sp, #0x48]
00625b08  08 30 a0 e1                                      mov r3, r8
00625b0c  00 20 a0 e3                                      mov r2, #0
00625b10  0f 50 cd e5                                      strb r5, [sp, #0xf]
00625b14  0c 40 cd e5                                      strb r4, [sp, #0xc]
00625b18  0d e0 cd e5                                      strb lr, [sp, #0xd]
00625b1c  0e c0 cd e5                                      strb ip, [sp, #0xe]
00625b20  84 94 fe eb                                      bl #0x5cad38
00625b24  24 d0 8d e2                                      add sp, sp, #0x24
00625b28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00625b2c  00 30 9d e5                                      ldr r3, [sp]
00625b30  00 20 9d e5                                      ldr r2, [sp]
00625b34  0c 80 8d e2                                      add r8, sp, #0xc
00625b38  01 00 d3 e4                                      ldrb r0, [r3], #1
00625b3c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00625b40  02 20 d3 e5                                      ldrb r2, [r3, #2]
00625b44  01 30 d3 e5                                      ldrb r3, [r3, #1]
00625b48  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00625b4c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00625b50  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00625b54  1f 20 cd e5                                      strb r2, [sp, #0x1f]
00625b58  e3 ff ff ea                                      b #0x625aec
00625b5c  07 00 a0 e1                                      mov r0, r7
00625b60  0c 80 8d e2                                      add r8, sp, #0xc
00625b64  d5 ff ff ea                                      b #0x625ac0

; FUNCTION 0x00626124, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626124  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626128  01 00 53 e3                                      cmp r3, #1
0062612c  1c d0 4d e2                                      sub sp, sp, #0x1c
00626130  03 40 a0 e1                                      mov r4, r3
00626134  06 00 8d e8                                      stm sp, {r1, r2}
00626138  2f 00 00 0a                                      beq #0x6261fc
0062613c  00 70 a0 e3                                      mov r7, #0
00626140  00 00 53 e3                                      cmp r3, #0
00626144  08 70 8d e5                                      str r7, [sp, #8]
00626148  0c 70 8d e5                                      str r7, [sp, #0xc]
0062614c  10 70 8d e5                                      str r7, [sp, #0x10]
00626150  14 70 8d e5                                      str r7, [sp, #0x14]
00626154  00 b0 a0 13                                      movne fp, #0
00626158  08 80 8d 12                                      addne r8, sp, #8
0062615c  33 00 00 0a                                      beq #0x626230
00626160  04 00 9d e5                                      ldr r0, [sp, #4]
00626164  00 30 9d e5                                      ldr r3, [sp]
00626168  00 50 a0 e3                                      mov r5, #0
0062616c  0b a0 90 e7                                      ldr sl, [r0, fp]
00626170  0b 90 83 e0                                      add sb, r3, fp
00626174  05 60 a0 e1                                      mov r6, r5
00626178  06 00 d9 e7                                      ldrb r0, [sb, r6]
0062617c  f8 a1 f3 eb                                      bl #0x30e964
00626180  0a 10 a0 e1                                      mov r1, sl
00626184  f8 a2 f3 eb                                      bl #0x30ed6c
00626188  07 10 a0 e1                                      mov r1, r7
0062618c  84 a2 f3 eb                                      bl #0x30eba4
00626190  05 00 88 e7                                      str r0, [r8, r5]
00626194  04 50 85 e2                                      add r5, r5, #4
00626198  10 00 55 e3                                      cmp r5, #0x10
0062619c  01 60 86 e2                                      add r6, r6, #1
006261a0  05 70 98 17                                      ldrne r7, [r8, r5]
006261a4  f3 ff ff 1a                                      bne #0x626178
006261a8  01 40 54 e2                                      subs r4, r4, #1
006261ac  04 b0 8b e2                                      add fp, fp, #4
006261b0  08 70 9d 15                                      ldrne r7, [sp, #8]
006261b4  e9 ff ff 1a                                      bne #0x626160
006261b8  08 00 9d e5                                      ldr r0, [sp, #8]
006261bc  37 60 0a eb                                      bl #0x8be2a0
006261c0  40 40 9d e5                                      ldr r4, [sp, #0x40]
006261c4  01 00 c4 e4                                      strb r0, [r4], #1
006261c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006261cc  33 60 0a eb                                      bl #0x8be2a0
006261d0  40 30 9d e5                                      ldr r3, [sp, #0x40]
006261d4  01 00 c3 e5                                      strb r0, [r3, #1]
006261d8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006261dc  2f 60 0a eb                                      bl #0x8be2a0
006261e0  01 00 c4 e5                                      strb r0, [r4, #1]
006261e4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006261e8  2c 60 0a eb                                      bl #0x8be2a0
006261ec  01 40 84 e2                                      add r4, r4, #1
006261f0  01 00 c4 e5                                      strb r0, [r4, #1]
006261f4  1c d0 8d e2                                      add sp, sp, #0x1c
006261f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006261fc  00 20 9d e5                                      ldr r2, [sp]
00626200  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626204  01 10 d2 e4                                      ldrb r1, [r2], #1
00626208  01 10 c3 e4                                      strb r1, [r3], #1
0062620c  00 00 9d e5                                      ldr r0, [sp]
00626210  01 10 d0 e5                                      ldrb r1, [r0, #1]
00626214  40 00 9d e5                                      ldr r0, [sp, #0x40]
00626218  01 10 c0 e5                                      strb r1, [r0, #1]
0062621c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00626220  01 10 c3 e5                                      strb r1, [r3, #1]
00626224  02 20 d2 e5                                      ldrb r2, [r2, #2]
00626228  02 20 c3 e5                                      strb r2, [r3, #2]
0062622c  f0 ff ff ea                                      b #0x6261f4
00626230  07 00 a0 e1                                      mov r0, r7
00626234  e0 ff ff ea                                      b #0x6261bc

; FUNCTION 0x00626688, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626688  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062668c  01 00 53 e3                                      cmp r3, #1
00626690  1c d0 4d e2                                      sub sp, sp, #0x1c
00626694  03 40 a0 e1                                      mov r4, r3
00626698  06 00 8d e8                                      stm sp, {r1, r2}
0062669c  2f 00 00 0a                                      beq #0x626760
006266a0  00 70 a0 e3                                      mov r7, #0
006266a4  00 00 53 e3                                      cmp r3, #0
006266a8  08 70 8d e5                                      str r7, [sp, #8]
006266ac  0c 70 8d e5                                      str r7, [sp, #0xc]
006266b0  10 70 8d e5                                      str r7, [sp, #0x10]
006266b4  14 70 8d e5                                      str r7, [sp, #0x14]
006266b8  00 b0 a0 13                                      movne fp, #0
006266bc  08 80 8d 12                                      addne r8, sp, #8
006266c0  33 00 00 0a                                      beq #0x626794
006266c4  04 00 9d e5                                      ldr r0, [sp, #4]
006266c8  00 30 9d e5                                      ldr r3, [sp]
006266cc  00 50 a0 e3                                      mov r5, #0
006266d0  0b a0 90 e7                                      ldr sl, [r0, fp]
006266d4  0b 90 83 e0                                      add sb, r3, fp
006266d8  05 60 a0 e1                                      mov r6, r5
006266dc  06 00 d9 e7                                      ldrb r0, [sb, r6]
006266e0  9f a0 f3 eb                                      bl #0x30e964
006266e4  0a 10 a0 e1                                      mov r1, sl
006266e8  9f a1 f3 eb                                      bl #0x30ed6c
006266ec  07 10 a0 e1                                      mov r1, r7
006266f0  2b a1 f3 eb                                      bl #0x30eba4
006266f4  05 00 88 e7                                      str r0, [r8, r5]
006266f8  04 50 85 e2                                      add r5, r5, #4
006266fc  10 00 55 e3                                      cmp r5, #0x10
00626700  01 60 86 e2                                      add r6, r6, #1
00626704  05 70 98 17                                      ldrne r7, [r8, r5]
00626708  f3 ff ff 1a                                      bne #0x6266dc
0062670c  01 40 54 e2                                      subs r4, r4, #1
00626710  04 b0 8b e2                                      add fp, fp, #4
00626714  08 70 9d 15                                      ldrne r7, [sp, #8]
00626718  e9 ff ff 1a                                      bne #0x6266c4
0062671c  08 00 9d e5                                      ldr r0, [sp, #8]
00626720  de 5e 0a eb                                      bl #0x8be2a0
00626724  40 40 9d e5                                      ldr r4, [sp, #0x40]
00626728  01 00 c4 e4                                      strb r0, [r4], #1
0062672c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00626730  da 5e 0a eb                                      bl #0x8be2a0
00626734  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626738  01 00 c3 e5                                      strb r0, [r3, #1]
0062673c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00626740  d6 5e 0a eb                                      bl #0x8be2a0
00626744  01 00 c4 e5                                      strb r0, [r4, #1]
00626748  14 00 9d e5                                      ldr r0, [sp, #0x14]
0062674c  d3 5e 0a eb                                      bl #0x8be2a0
00626750  01 40 84 e2                                      add r4, r4, #1
00626754  01 00 c4 e5                                      strb r0, [r4, #1]
00626758  1c d0 8d e2                                      add sp, sp, #0x1c
0062675c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626760  00 20 9d e5                                      ldr r2, [sp]
00626764  40 30 9d e5                                      ldr r3, [sp, #0x40]
00626768  01 10 d2 e4                                      ldrb r1, [r2], #1
0062676c  01 10 c3 e4                                      strb r1, [r3], #1
00626770  00 00 9d e5                                      ldr r0, [sp]
00626774  01 10 d0 e5                                      ldrb r1, [r0, #1]
00626778  40 00 9d e5                                      ldr r0, [sp, #0x40]
0062677c  01 10 c0 e5                                      strb r1, [r0, #1]
00626780  01 10 d2 e5                                      ldrb r1, [r2, #1]
00626784  01 10 c3 e5                                      strb r1, [r3, #1]
00626788  02 20 d2 e5                                      ldrb r2, [r2, #2]
0062678c  02 20 c3 e5                                      strb r2, [r3, #2]
00626790  f0 ff ff ea                                      b #0x626758
00626794  07 00 a0 e1                                      mov r0, r7
00626798  e0 ff ff ea                                      b #0x626720
