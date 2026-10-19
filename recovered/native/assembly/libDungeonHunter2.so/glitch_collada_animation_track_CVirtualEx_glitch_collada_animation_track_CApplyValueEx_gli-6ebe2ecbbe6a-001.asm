; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed80, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed80  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef14, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getValueSize() const
; decoder-mode: arm
0060ef14  0c 00 a0 e3                                      mov r0, #0xc
0060ef18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f728, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::~CVirtualEx()
; decoder-mode: arm
0060f728  10 40 2d e9                                      push {r4, lr}
0060f72c  00 40 a0 e1                                      mov r4, r0
0060f730  de fa f3 eb                                      bl #0x30e2b0
0060f734  04 00 a0 e1                                      mov r0, r4
0060f738  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610f50, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getInstance()
; decoder-mode: arm
00610f50  70 40 2d e9                                      push {r4, r5, r6, lr}
00610f54  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610f58  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610f5c  04 40 8f e0                                      add r4, pc, r4
00610f60  03 60 94 e7                                      ldr r6, [r4, r3]
00610f64  00 30 96 e5                                      ldr r3, [r6]
00610f68  01 00 13 e3                                      tst r3, #1
00610f6c  02 00 00 0a                                      beq #0x610f7c
00610f70  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610f74  05 00 94 e7                                      ldr r0, [r4, r5]
00610f78  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610f7c  06 00 a0 e1                                      mov r0, r6
00610f80  f9 f5 f3 eb                                      bl #0x30e76c
00610f84  00 00 50 e3                                      cmp r0, #0
00610f88  f8 ff ff 0a                                      beq #0x610f70
00610f8c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610f90  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610f94  06 00 a0 e1                                      mov r0, r6
00610f98  03 30 94 e7                                      ldr r3, [r4, r3]
00610f9c  05 60 94 e7                                      ldr r6, [r4, r5]
00610fa0  08 30 83 e2                                      add r3, r3, #8
00610fa4  00 30 86 e5                                      str r3, [r6]
00610fa8  a3 f6 f3 eb                                      bl #0x30ea3c
00610fac  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610fb0  06 00 a0 e1                                      mov r0, r6
00610fb4  03 10 94 e7                                      ldr r1, [r4, r3]
00610fb8  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610fbc  03 20 94 e7                                      ldr r2, [r4, r3]
00610fc0  cf f4 f3 eb                                      bl #0x30e304
00610fc4  05 00 94 e7                                      ldr r0, [r4, r5]
00610fc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610fcc  34 3b 38 00 e8 16 00 00 38 25 00 00 08 13 00 00  .byte 0x34, 0x3b, 0x38, 0x00, 0xe8, 0x16, 0x00, 0x00, 0x38, 0x25, 0x00, 0x00, 0x08, 0x13, 0x00, 0x00
00610fdc  7c 08 00 00 90 18 00 00                          .byte 0x7c, 0x08, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00617844, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00617844  01 00 a0 e1                                      mov r0, r1
00617848  02 10 a0 e1                                      mov r1, r2
0061784c  03 20 a0 e1                                      mov r2, r3
00617850  d3 ff ff ea                                      b #0x6177a4

; FUNCTION 0x00617960, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00617960  01 00 a0 e1                                      mov r0, r1
00617964  04 c0 9d e5                                      ldr ip, [sp, #4]
00617968  02 10 a0 e1                                      mov r1, r2
0061796c  03 20 a0 e1                                      mov r2, r3
00617970  00 30 9d e5                                      ldr r3, [sp]
00617974  00 c0 8d e5                                      str ip, [sp]
00617978  b5 ff ff ea                                      b #0x617854

; FUNCTION 0x00617a4c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00617a4c  01 00 a0 e1                                      mov r0, r1
00617a50  02 10 a0 e1                                      mov r1, r2
00617a54  03 20 a0 e1                                      mov r2, r3
00617a58  00 30 9d e5                                      ldr r3, [sp]
00617a5c  c6 ff ff ea                                      b #0x61797c

; FUNCTION 0x00617bac, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00617bac  04 c0 9d e5                                      ldr ip, [sp, #4]
00617bb0  01 00 a0 e1                                      mov r0, r1
00617bb4  02 10 a0 e1                                      mov r1, r2
00617bb8  03 20 a0 e1                                      mov r2, r3
00617bbc  00 30 9d e5                                      ldr r3, [sp]
00617bc0  00 c0 8d e5                                      str ip, [sp]
00617bc4  08 c0 9d e5                                      ldr ip, [sp, #8]
00617bc8  04 c0 8d e5                                      str ip, [sp, #4]
00617bcc  a3 ff ff ea                                      b #0x617a60

; FUNCTION 0x00618d0c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618d0c  00 20 a0 e3                                      mov r2, #0
00618d10  01 30 a0 e1                                      mov r3, r1
00618d14  01 20 c3 e4                                      strb r2, [r3], #1
00618d18  01 30 83 e2                                      add r3, r3, #1
00618d1c  01 20 c1 e5                                      strb r2, [r1, #1]
00618d20  01 20 c3 e4                                      strb r2, [r3], #1
00618d24  01 20 c3 e4                                      strb r2, [r3], #1
00618d28  01 20 c3 e4                                      strb r2, [r3], #1
00618d2c  01 20 c3 e4                                      strb r2, [r3], #1
00618d30  01 20 c3 e4                                      strb r2, [r3], #1
00618d34  01 20 c3 e4                                      strb r2, [r3], #1
00618d38  01 20 c3 e4                                      strb r2, [r3], #1
00618d3c  01 20 c3 e4                                      strb r2, [r3], #1
00618d40  01 20 c3 e4                                      strb r2, [r3], #1
00618d44  00 20 c3 e5                                      strb r2, [r3]
00618d48  1e ff 2f e1                                      bx lr

; FUNCTION 0x006205cc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
006205cc  10 40 2d e9                                      push {r4, lr}
006205d0  00 30 91 e5                                      ldr r3, [r1]
006205d4  01 00 a0 e1                                      mov r0, r1
006205d8  02 40 a0 e1                                      mov r4, r2
006205dc  0f e0 a0 e1                                      mov lr, pc
006205e0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
006205e4  00 30 90 e5                                      ldr r3, [r0]
006205e8  00 30 84 e5                                      str r3, [r4]
006205ec  04 30 90 e5                                      ldr r3, [r0, #4]
006205f0  04 30 84 e5                                      str r3, [r4, #4]
006205f4  08 30 90 e5                                      ldr r3, [r0, #8]
006205f8  08 30 84 e5                                      str r3, [r4, #8]
006205fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622be0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622be0  10 40 2d e9                                      push {r4, lr}
00622be4  02 00 a0 e1                                      mov r0, r2
00622be8  00 30 92 e5                                      ldr r3, [r2]
00622bec  0f e0 a0 e1                                      mov lr, pc
00622bf0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622bf4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623220, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623220  01 00 a0 e1                                      mov r0, r1
00623224  02 10 a0 e1                                      mov r1, r2
00623228  03 20 a0 e1                                      mov r2, r3
0062322c  00 30 9d e5                                      ldr r3, [sp]
00623230  e9 ff ff ea                                      b #0x6231dc

; FUNCTION 0x00623278, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623278  04 c0 9d e5                                      ldr ip, [sp, #4]
0062327c  01 00 a0 e1                                      mov r0, r1
00623280  02 10 a0 e1                                      mov r1, r2
00623284  03 20 a0 e1                                      mov r2, r3
00623288  00 30 9d e5                                      ldr r3, [sp]
0062328c  00 c0 8d e5                                      str ip, [sp]
00623290  08 c0 9d e5                                      ldr ip, [sp, #8]
00623294  04 c0 8d e5                                      str ip, [sp, #4]
00623298  e5 ff ff ea                                      b #0x623234

; FUNCTION 0x0062a3c4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a3c4  01 00 53 e3                                      cmp r3, #1
0062a3c8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a3cc  03 40 a0 e1                                      mov r4, r3
0062a3d0  02 b0 a0 e1                                      mov fp, r2
0062a3d4  29 00 00 0a                                      beq #0x62a480
0062a3d8  00 00 53 e3                                      cmp r3, #0
0062a3dc  00 80 a0 03                                      moveq r8, #0
0062a3e0  08 90 a0 01                                      moveq sb, r8
0062a3e4  08 a0 a0 01                                      moveq sl, r8
0062a3e8  1e 00 00 0a                                      beq #0x62a468
0062a3ec  00 80 a0 e3                                      mov r8, #0
0062a3f0  01 50 a0 e1                                      mov r5, r1
0062a3f4  00 70 a0 e3                                      mov r7, #0
0062a3f8  08 90 a0 e1                                      mov sb, r8
0062a3fc  08 a0 a0 e1                                      mov sl, r8
0062a400  07 60 9b e7                                      ldr r6, [fp, r7]
0062a404  00 10 95 e5                                      ldr r1, [r5]
0062a408  04 70 87 e2                                      add r7, r7, #4
0062a40c  06 00 a0 e1                                      mov r0, r6
0062a410  55 92 f3 eb                                      bl #0x30ed6c
0062a414  00 10 a0 e1                                      mov r1, r0
0062a418  08 00 a0 e1                                      mov r0, r8
0062a41c  e0 91 f3 eb                                      bl #0x30eba4
0062a420  04 10 95 e5                                      ldr r1, [r5, #4]
0062a424  00 80 a0 e1                                      mov r8, r0
0062a428  06 00 a0 e1                                      mov r0, r6
0062a42c  4e 92 f3 eb                                      bl #0x30ed6c
0062a430  00 10 a0 e1                                      mov r1, r0
0062a434  09 00 a0 e1                                      mov r0, sb
0062a438  d9 91 f3 eb                                      bl #0x30eba4
0062a43c  08 10 95 e5                                      ldr r1, [r5, #8]
0062a440  00 90 a0 e1                                      mov sb, r0
0062a444  06 00 a0 e1                                      mov r0, r6
0062a448  47 92 f3 eb                                      bl #0x30ed6c
0062a44c  00 10 a0 e1                                      mov r1, r0
0062a450  0a 00 a0 e1                                      mov r0, sl
0062a454  d2 91 f3 eb                                      bl #0x30eba4
0062a458  01 40 54 e2                                      subs r4, r4, #1
0062a45c  00 a0 a0 e1                                      mov sl, r0
0062a460  0c 50 85 e2                                      add r5, r5, #0xc
0062a464  e5 ff ff 1a                                      bne #0x62a400
0062a468  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a46c  04 80 83 e4                                      str r8, [r3], #4
0062a470  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a474  04 90 82 e5                                      str sb, [r2, #4]
0062a478  04 a0 83 e5                                      str sl, [r3, #4]
0062a47c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a480  01 20 a0 e1                                      mov r2, r1
0062a484  04 00 92 e4                                      ldr r0, [r2], #4
0062a488  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a48c  04 00 83 e4                                      str r0, [r3], #4
0062a490  04 10 91 e5                                      ldr r1, [r1, #4]
0062a494  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a498  04 10 80 e5                                      str r1, [r0, #4]
0062a49c  04 20 92 e5                                      ldr r2, [r2, #4]
0062a4a0  04 20 83 e5                                      str r2, [r3, #4]
0062a4a4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062baec, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062baec  01 00 53 e3                                      cmp r3, #1
0062baf0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062baf4  03 40 a0 e1                                      mov r4, r3
0062baf8  02 b0 a0 e1                                      mov fp, r2
0062bafc  29 00 00 0a                                      beq #0x62bba8
0062bb00  00 00 53 e3                                      cmp r3, #0
0062bb04  00 80 a0 03                                      moveq r8, #0
0062bb08  08 90 a0 01                                      moveq sb, r8
0062bb0c  08 a0 a0 01                                      moveq sl, r8
0062bb10  1e 00 00 0a                                      beq #0x62bb90
0062bb14  00 80 a0 e3                                      mov r8, #0
0062bb18  01 50 a0 e1                                      mov r5, r1
0062bb1c  00 70 a0 e3                                      mov r7, #0
0062bb20  08 90 a0 e1                                      mov sb, r8
0062bb24  08 a0 a0 e1                                      mov sl, r8
0062bb28  07 60 9b e7                                      ldr r6, [fp, r7]
0062bb2c  00 10 95 e5                                      ldr r1, [r5]
0062bb30  04 70 87 e2                                      add r7, r7, #4
0062bb34  06 00 a0 e1                                      mov r0, r6
0062bb38  8b 8c f3 eb                                      bl #0x30ed6c
0062bb3c  00 10 a0 e1                                      mov r1, r0
0062bb40  08 00 a0 e1                                      mov r0, r8
0062bb44  16 8c f3 eb                                      bl #0x30eba4
0062bb48  04 10 95 e5                                      ldr r1, [r5, #4]
0062bb4c  00 80 a0 e1                                      mov r8, r0
0062bb50  06 00 a0 e1                                      mov r0, r6
0062bb54  84 8c f3 eb                                      bl #0x30ed6c
0062bb58  00 10 a0 e1                                      mov r1, r0
0062bb5c  09 00 a0 e1                                      mov r0, sb
0062bb60  0f 8c f3 eb                                      bl #0x30eba4
0062bb64  08 10 95 e5                                      ldr r1, [r5, #8]
0062bb68  00 90 a0 e1                                      mov sb, r0
0062bb6c  06 00 a0 e1                                      mov r0, r6
0062bb70  7d 8c f3 eb                                      bl #0x30ed6c
0062bb74  00 10 a0 e1                                      mov r1, r0
0062bb78  0a 00 a0 e1                                      mov r0, sl
0062bb7c  08 8c f3 eb                                      bl #0x30eba4
0062bb80  01 40 54 e2                                      subs r4, r4, #1
0062bb84  00 a0 a0 e1                                      mov sl, r0
0062bb88  0c 50 85 e2                                      add r5, r5, #0xc
0062bb8c  e5 ff ff 1a                                      bne #0x62bb28
0062bb90  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bb94  04 80 83 e4                                      str r8, [r3], #4
0062bb98  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062bb9c  04 90 82 e5                                      str sb, [r2, #4]
0062bba0  04 a0 83 e5                                      str sl, [r3, #4]
0062bba4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062bba8  01 20 a0 e1                                      mov r2, r1
0062bbac  04 00 92 e4                                      ldr r0, [r2], #4
0062bbb0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bbb4  04 00 83 e4                                      str r0, [r3], #4
0062bbb8  04 10 91 e5                                      ldr r1, [r1, #4]
0062bbbc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062bbc0  04 10 80 e5                                      str r1, [r0, #4]
0062bbc4  04 20 92 e5                                      ldr r2, [r2, #4]
0062bbc8  04 20 83 e5                                      str r2, [r3, #4]
0062bbcc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062c19c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c19c  01 00 a0 e1                                      mov r0, r1
0062c1a0  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c1a4  02 10 a0 e1                                      mov r1, r2
0062c1a8  03 20 a0 e1                                      mov r2, r3
0062c1ac  00 30 9d e5                                      ldr r3, [sp]
0062c1b0  00 c0 8d e5                                      str ip, [sp]
0062c1b4  ba ff ff ea                                      b #0x62c0a4

; FUNCTION 0x0062c2b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c2b0  01 00 a0 e1                                      mov r0, r1
0062c2b4  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c2b8  02 10 a0 e1                                      mov r1, r2
0062c2bc  03 20 a0 e1                                      mov r2, r3
0062c2c0  00 30 9d e5                                      ldr r3, [sp]
0062c2c4  00 c0 8d e5                                      str ip, [sp]
0062c2c8  ba ff ff ea                                      b #0x62c1b8
