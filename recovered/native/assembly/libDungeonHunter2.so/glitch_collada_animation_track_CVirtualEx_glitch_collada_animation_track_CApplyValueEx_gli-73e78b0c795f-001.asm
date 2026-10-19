; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed88, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060eea0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getValueSize() const
; decoder-mode: arm
0060eea0  03 00 a0 e3                                      mov r0, #3
0060eea4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060eea8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE10applyValueEPvSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0060eea8  02 00 a0 e1                                      mov r0, r2
0060eeac  00 20 a0 e3                                      mov r2, #0
0060eeb0  42 fc ff ea                                      b #0x60dfc0

; FUNCTION 0x0060eeb4, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE13retrieveValueEPvSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060eeb4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060eeb8  01 40 a0 e1                                      mov r4, r1
0060eebc  14 00 91 e5                                      ldr r0, [r1, #0x14]
0060eec0  43 14 a0 e3                                      mov r1, #0x43000000
0060eec4  7f 18 81 e2                                      add r1, r1, #0x7f0000
0060eec8  02 50 a0 e1                                      mov r5, r2
0060eecc  a6 ff f3 eb                                      bl #0x30ed6c
0060eed0  f2 bc 0a eb                                      bl #0x8be2a0
0060eed4  43 14 a0 e3                                      mov r1, #0x43000000
0060eed8  00 00 c5 e5                                      strb r0, [r5]
0060eedc  18 00 94 e5                                      ldr r0, [r4, #0x18]
0060eee0  7f 18 81 e2                                      add r1, r1, #0x7f0000
0060eee4  a0 ff f3 eb                                      bl #0x30ed6c
0060eee8  ec bc 0a eb                                      bl #0x8be2a0
0060eeec  43 14 a0 e3                                      mov r1, #0x43000000
0060eef0  01 00 c5 e5                                      strb r0, [r5, #1]
0060eef4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0060eef8  7f 18 81 e2                                      add r1, r1, #0x7f0000
0060eefc  9a ff f3 eb                                      bl #0x30ed6c
0060ef00  e6 bc 0a eb                                      bl #0x8be2a0
0060ef04  02 00 c5 e5                                      strb r0, [r5, #2]
0060ef08  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060f750, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::~CVirtualEx()
; decoder-mode: arm
0060f750  10 40 2d e9                                      push {r4, lr}
0060f754  00 40 a0 e1                                      mov r4, r0
0060f758  d4 fa f3 eb                                      bl #0x30e2b0
0060f75c  04 00 a0 e1                                      mov r0, r4
0060f760  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00611078, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getInstance()
; decoder-mode: arm
00611078  70 40 2d e9                                      push {r4, r5, r6, lr}
0061107c  70 40 9f e5                                      ldr r4, [pc, #0x70]
00611080  70 30 9f e5                                      ldr r3, [pc, #0x70]
00611084  04 40 8f e0                                      add r4, pc, r4
00611088  03 60 94 e7                                      ldr r6, [r4, r3]
0061108c  00 30 96 e5                                      ldr r3, [r6]
00611090  01 00 13 e3                                      tst r3, #1
00611094  02 00 00 0a                                      beq #0x6110a4
00611098  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0061109c  05 00 94 e7                                      ldr r0, [r4, r5]
006110a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006110a4  06 00 a0 e1                                      mov r0, r6
006110a8  af f5 f3 eb                                      bl #0x30e76c
006110ac  00 00 50 e3                                      cmp r0, #0
006110b0  f8 ff ff 0a                                      beq #0x611098
006110b4  44 30 9f e5                                      ldr r3, [pc, #0x44]
006110b8  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006110bc  06 00 a0 e1                                      mov r0, r6
006110c0  03 30 94 e7                                      ldr r3, [r4, r3]
006110c4  05 60 94 e7                                      ldr r6, [r4, r5]
006110c8  08 30 83 e2                                      add r3, r3, #8
006110cc  00 30 86 e5                                      str r3, [r6]
006110d0  59 f6 f3 eb                                      bl #0x30ea3c
006110d4  28 30 9f e5                                      ldr r3, [pc, #0x28]
006110d8  06 00 a0 e1                                      mov r0, r6
006110dc  03 10 94 e7                                      ldr r1, [r4, r3]
006110e0  20 30 9f e5                                      ldr r3, [pc, #0x20]
006110e4  03 20 94 e7                                      ldr r2, [r4, r3]
006110e8  85 f4 f3 eb                                      bl #0x30e304
006110ec  05 00 94 e7                                      ldr r0, [r4, r5]
006110f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006110f4  0c 3a 38 00 24 22 00 00 dc 47 00 00 c0 0e 00 00  .byte 0x0c, 0x3a, 0x38, 0x00, 0x24, 0x22, 0x00, 0x00, 0xdc, 0x47, 0x00, 0x00, 0xc0, 0x0e, 0x00, 0x00
00611104  94 29 00 00 90 18 00 00                          .byte 0x94, 0x29, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00612670, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00612670  01 00 a0 e1                                      mov r0, r1
00612674  02 10 a0 e1                                      mov r1, r2
00612678  03 20 a0 e1                                      mov r2, r3
0061267c  00 30 9d e5                                      ldr r3, [sp]
00612680  df ff ff ea                                      b #0x612604

; FUNCTION 0x00612684, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00612684  70 40 2d e9                                      push {r4, r5, r6, lr}
00612688  01 00 a0 e1                                      mov r0, r1
0061268c  00 10 a0 e3                                      mov r1, #0
00612690  03 40 a0 e1                                      mov r4, r3
00612694  02 50 a0 e1                                      mov r5, r2
00612698  e1 5d 01 eb                                      bl #0x669e24
0061269c  04 20 90 e5                                      ldr r2, [r0, #4]
006126a0  85 50 85 e0                                      add r5, r5, r5, lsl #1
006126a4  04 30 a0 e1                                      mov r3, r4
006126a8  05 10 d2 e7                                      ldrb r1, [r2, r5]
006126ac  05 50 82 e0                                      add r5, r2, r5
006126b0  01 10 c3 e4                                      strb r1, [r3], #1
006126b4  01 20 d5 e5                                      ldrb r2, [r5, #1]
006126b8  01 20 c4 e5                                      strb r2, [r4, #1]
006126bc  02 20 d5 e5                                      ldrb r2, [r5, #2]
006126c0  01 20 c3 e5                                      strb r2, [r3, #1]
006126c4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006127e0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006127e0  04 c0 9d e5                                      ldr ip, [sp, #4]
006127e4  01 00 a0 e1                                      mov r0, r1
006127e8  02 10 a0 e1                                      mov r1, r2
006127ec  03 20 a0 e1                                      mov r2, r3
006127f0  00 30 9d e5                                      ldr r3, [sp]
006127f4  00 c0 8d e5                                      str ip, [sp]
006127f8  08 c0 9d e5                                      ldr ip, [sp, #8]
006127fc  04 c0 8d e5                                      str ip, [sp, #4]
00612800  e7 ff ff ea                                      b #0x6127a4

; FUNCTION 0x00612804, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00612804  01 00 a0 e1                                      mov r0, r1
00612808  04 c0 9d e5                                      ldr ip, [sp, #4]
0061280c  02 10 a0 e1                                      mov r1, r2
00612810  03 20 a0 e1                                      mov r2, r3
00612814  00 30 9d e5                                      ldr r3, [sp]
00612818  00 c0 8d e5                                      str ip, [sp]
0061281c  a9 ff ff ea                                      b #0x6126c8

; FUNCTION 0x00612820, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00612820  70 40 2d e9                                      push {r4, r5, r6, lr}
00612824  01 00 a0 e1                                      mov r0, r1
00612828  00 10 a0 e3                                      mov r1, #0
0061282c  03 60 a0 e1                                      mov r6, r3
00612830  02 40 a0 e1                                      mov r4, r2
00612834  10 50 9d e5                                      ldr r5, [sp, #0x10]
00612838  79 5d 01 eb                                      bl #0x669e24
0061283c  04 30 90 e5                                      ldr r3, [r0, #4]
00612840  86 60 86 e0                                      add r6, r6, r6, lsl #1
00612844  84 40 84 e0                                      add r4, r4, r4, lsl #1
00612848  04 40 83 e0                                      add r4, r3, r4
0061284c  06 60 83 e0                                      add r6, r3, r6
00612850  00 30 a0 e3                                      mov r3, #0
00612854  03 10 d6 e7                                      ldrb r1, [r6, r3]
00612858  03 20 d4 e7                                      ldrb r2, [r4, r3]
0061285c  01 20 62 e0                                      rsb r2, r2, r1
00612860  03 20 c5 e7                                      strb r2, [r5, r3]
00612864  01 30 83 e2                                      add r3, r3, #1
00612868  03 00 53 e3                                      cmp r3, #3
0061286c  f8 ff ff 1a                                      bne #0x612854
00612870  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00612908, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00612908  04 c0 9d e5                                      ldr ip, [sp, #4]
0061290c  01 00 a0 e1                                      mov r0, r1
00612910  02 10 a0 e1                                      mov r1, r2
00612914  03 20 a0 e1                                      mov r2, r3
00612918  00 30 9d e5                                      ldr r3, [sp]
0061291c  00 c0 8d e5                                      str ip, [sp]
00612920  08 c0 9d e5                                      ldr ip, [sp, #8]
00612924  04 c0 8d e5                                      str ip, [sp, #4]
00612928  d1 ff ff ea                                      b #0x612874

; FUNCTION 0x00618d8c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618d8c  00 20 a0 e3                                      mov r2, #0
00618d90  01 30 a0 e1                                      mov r3, r1
00618d94  01 20 c3 e4                                      strb r2, [r3], #1
00618d98  01 30 83 e2                                      add r3, r3, #1
00618d9c  01 20 c1 e5                                      strb r2, [r1, #1]
00618da0  00 20 c3 e5                                      strb r2, [r3]
00618da4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006211e8, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE15getBlendedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006211e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006211ec  01 00 53 e3                                      cmp r3, #1
006211f0  14 d0 4d e2                                      sub sp, sp, #0x14
006211f4  02 90 a0 e1                                      mov sb, r2
006211f8  2c 00 00 0a                                      beq #0x6212b0
006211fc  00 70 a0 e3                                      mov r7, #0
00621200  00 00 53 e3                                      cmp r3, #0
00621204  04 70 8d e5                                      str r7, [sp, #4]
00621208  08 70 8d e5                                      str r7, [sp, #8]
0062120c  0c 70 8d e5                                      str r7, [sp, #0xc]
00621210  07 00 a0 01                                      moveq r0, r7
00621214  19 00 00 0a                                      beq #0x621280
00621218  83 30 83 e0                                      add r3, r3, r3, lsl #1
0062121c  01 60 a0 e1                                      mov r6, r1
00621220  03 b0 81 e0                                      add fp, r1, r3
00621224  04 80 8d e2                                      add r8, sp, #4
00621228  00 a0 99 e5                                      ldr sl, [sb]
0062122c  00 40 a0 e3                                      mov r4, #0
00621230  04 50 a0 e1                                      mov r5, r4
00621234  05 00 d6 e7                                      ldrb r0, [r6, r5]
00621238  c9 b5 f3 eb                                      bl #0x30e964
0062123c  0a 10 a0 e1                                      mov r1, sl
00621240  c9 b6 f3 eb                                      bl #0x30ed6c
00621244  07 10 a0 e1                                      mov r1, r7
00621248  55 b6 f3 eb                                      bl #0x30eba4
0062124c  04 00 88 e7                                      str r0, [r8, r4]
00621250  04 40 84 e2                                      add r4, r4, #4
00621254  0c 00 54 e3                                      cmp r4, #0xc
00621258  01 50 85 e2                                      add r5, r5, #1
0062125c  04 70 98 17                                      ldrne r7, [r8, r4]
00621260  f3 ff ff 1a                                      bne #0x621234
00621264  03 60 86 e2                                      add r6, r6, #3
00621268  0b 00 56 e1                                      cmp r6, fp
0062126c  02 00 00 0a                                      beq #0x62127c
00621270  04 70 9d e5                                      ldr r7, [sp, #4]
00621274  04 90 89 e2                                      add sb, sb, #4
00621278  ea ff ff ea                                      b #0x621228
0062127c  04 00 9d e5                                      ldr r0, [sp, #4]
00621280  06 74 0a eb                                      bl #0x8be2a0
00621284  38 40 9d e5                                      ldr r4, [sp, #0x38]
00621288  01 00 c4 e4                                      strb r0, [r4], #1
0062128c  08 00 9d e5                                      ldr r0, [sp, #8]
00621290  02 74 0a eb                                      bl #0x8be2a0
00621294  38 20 9d e5                                      ldr r2, [sp, #0x38]
00621298  01 00 c2 e5                                      strb r0, [r2, #1]
0062129c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006212a0  fe 73 0a eb                                      bl #0x8be2a0
006212a4  01 00 c4 e5                                      strb r0, [r4, #1]
006212a8  14 d0 8d e2                                      add sp, sp, #0x14
006212ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006212b0  01 20 a0 e1                                      mov r2, r1
006212b4  01 00 d2 e4                                      ldrb r0, [r2], #1
006212b8  38 30 9d e5                                      ldr r3, [sp, #0x38]
006212bc  01 00 c3 e4                                      strb r0, [r3], #1
006212c0  01 10 d1 e5                                      ldrb r1, [r1, #1]
006212c4  38 00 9d e5                                      ldr r0, [sp, #0x38]
006212c8  01 10 c0 e5                                      strb r1, [r0, #1]
006212cc  01 20 d2 e5                                      ldrb r2, [r2, #1]
006212d0  01 20 c3 e5                                      strb r2, [r3, #1]
006212d4  f3 ff ff ea                                      b #0x6212a8

; FUNCTION 0x006213c8, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE13getAddedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006213c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006213cc  01 00 53 e3                                      cmp r3, #1
006213d0  14 d0 4d e2                                      sub sp, sp, #0x14
006213d4  02 90 a0 e1                                      mov sb, r2
006213d8  2c 00 00 0a                                      beq #0x621490
006213dc  00 70 a0 e3                                      mov r7, #0
006213e0  00 00 53 e3                                      cmp r3, #0
006213e4  04 70 8d e5                                      str r7, [sp, #4]
006213e8  08 70 8d e5                                      str r7, [sp, #8]
006213ec  0c 70 8d e5                                      str r7, [sp, #0xc]
006213f0  07 00 a0 01                                      moveq r0, r7
006213f4  19 00 00 0a                                      beq #0x621460
006213f8  83 30 83 e0                                      add r3, r3, r3, lsl #1
006213fc  01 60 a0 e1                                      mov r6, r1
00621400  03 b0 81 e0                                      add fp, r1, r3
00621404  04 80 8d e2                                      add r8, sp, #4
00621408  00 a0 99 e5                                      ldr sl, [sb]
0062140c  00 40 a0 e3                                      mov r4, #0
00621410  04 50 a0 e1                                      mov r5, r4
00621414  05 00 d6 e7                                      ldrb r0, [r6, r5]
00621418  51 b5 f3 eb                                      bl #0x30e964
0062141c  0a 10 a0 e1                                      mov r1, sl
00621420  51 b6 f3 eb                                      bl #0x30ed6c
00621424  07 10 a0 e1                                      mov r1, r7
00621428  dd b5 f3 eb                                      bl #0x30eba4
0062142c  04 00 88 e7                                      str r0, [r8, r4]
00621430  04 40 84 e2                                      add r4, r4, #4
00621434  0c 00 54 e3                                      cmp r4, #0xc
00621438  01 50 85 e2                                      add r5, r5, #1
0062143c  04 70 98 17                                      ldrne r7, [r8, r4]
00621440  f3 ff ff 1a                                      bne #0x621414
00621444  03 60 86 e2                                      add r6, r6, #3
00621448  0b 00 56 e1                                      cmp r6, fp
0062144c  02 00 00 0a                                      beq #0x62145c
00621450  04 70 9d e5                                      ldr r7, [sp, #4]
00621454  04 90 89 e2                                      add sb, sb, #4
00621458  ea ff ff ea                                      b #0x621408
0062145c  04 00 9d e5                                      ldr r0, [sp, #4]
00621460  8e 73 0a eb                                      bl #0x8be2a0
00621464  38 40 9d e5                                      ldr r4, [sp, #0x38]
00621468  01 00 c4 e4                                      strb r0, [r4], #1
0062146c  08 00 9d e5                                      ldr r0, [sp, #8]
00621470  8a 73 0a eb                                      bl #0x8be2a0
00621474  38 20 9d e5                                      ldr r2, [sp, #0x38]
00621478  01 00 c2 e5                                      strb r0, [r2, #1]
0062147c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00621480  86 73 0a eb                                      bl #0x8be2a0
00621484  01 00 c4 e5                                      strb r0, [r4, #1]
00621488  14 d0 8d e2                                      add sp, sp, #0x14
0062148c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00621490  01 20 a0 e1                                      mov r2, r1
00621494  01 00 d2 e4                                      ldrb r0, [r2], #1
00621498  38 30 9d e5                                      ldr r3, [sp, #0x38]
0062149c  01 00 c3 e4                                      strb r0, [r3], #1
006214a0  01 10 d1 e5                                      ldrb r1, [r1, #1]
006214a4  38 00 9d e5                                      ldr r0, [sp, #0x38]
006214a8  01 10 c0 e5                                      strb r1, [r0, #1]
006214ac  01 20 d2 e5                                      ldrb r2, [r2, #1]
006214b0  01 20 c3 e5                                      strb r2, [r3, #1]
006214b4  f3 ff ff ea                                      b #0x621488

; FUNCTION 0x00621a60, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621a60  01 00 a0 e1                                      mov r0, r1
00621a64  04 c0 9d e5                                      ldr ip, [sp, #4]
00621a68  02 10 a0 e1                                      mov r1, r2
00621a6c  03 20 a0 e1                                      mov r2, r3
00621a70  00 30 9d e5                                      ldr r3, [sp]
00621a74  00 c0 8d e5                                      str ip, [sp]
00621a78  b6 ff ff ea                                      b #0x621958

; FUNCTION 0x00621b84, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CLightColorMixin<unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621b84  01 00 a0 e1                                      mov r0, r1
00621b88  04 c0 9d e5                                      ldr ip, [sp, #4]
00621b8c  02 10 a0 e1                                      mov r1, r2
00621b90  03 20 a0 e1                                      mov r2, r3
00621b94  00 30 9d e5                                      ldr r3, [sp]
00621b98  00 c0 8d e5                                      str ip, [sp]
00621b9c  b6 ff ff ea                                      b #0x621a7c
