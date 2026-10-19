; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed50, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efa8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getValueSize() const
; decoder-mode: arm
0060efa8  0c 00 a0 e3                                      mov r0, #0xc
0060efac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f638, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::~CVirtualEx()
; decoder-mode: arm
0060f638  10 40 2d e9                                      push {r4, lr}
0060f63c  00 40 a0 e1                                      mov r4, r0
0060f640  1a fb f3 eb                                      bl #0x30e2b0
0060f644  04 00 a0 e1                                      mov r0, r4
0060f648  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610860, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getInstance()
; decoder-mode: arm
00610860  70 40 2d e9                                      push {r4, r5, r6, lr}
00610864  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610868  70 30 9f e5                                      ldr r3, [pc, #0x70]
0061086c  04 40 8f e0                                      add r4, pc, r4
00610870  03 60 94 e7                                      ldr r6, [r4, r3]
00610874  00 30 96 e5                                      ldr r3, [r6]
00610878  01 00 13 e3                                      tst r3, #1
0061087c  02 00 00 0a                                      beq #0x61088c
00610880  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610884  05 00 94 e7                                      ldr r0, [r4, r5]
00610888  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061088c  06 00 a0 e1                                      mov r0, r6
00610890  b5 f7 f3 eb                                      bl #0x30e76c
00610894  00 00 50 e3                                      cmp r0, #0
00610898  f8 ff ff 0a                                      beq #0x610880
0061089c  44 30 9f e5                                      ldr r3, [pc, #0x44]
006108a0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006108a4  06 00 a0 e1                                      mov r0, r6
006108a8  03 30 94 e7                                      ldr r3, [r4, r3]
006108ac  05 60 94 e7                                      ldr r6, [r4, r5]
006108b0  08 30 83 e2                                      add r3, r3, #8
006108b4  00 30 86 e5                                      str r3, [r6]
006108b8  5f f8 f3 eb                                      bl #0x30ea3c
006108bc  28 30 9f e5                                      ldr r3, [pc, #0x28]
006108c0  06 00 a0 e1                                      mov r0, r6
006108c4  03 10 94 e7                                      ldr r1, [r4, r3]
006108c8  20 30 9f e5                                      ldr r3, [pc, #0x20]
006108cc  03 20 94 e7                                      ldr r2, [r4, r3]
006108d0  8b f6 f3 eb                                      bl #0x30e304
006108d4  05 00 94 e7                                      ldr r0, [r4, r5]
006108d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006108dc  24 42 38 00 bc 1e 00 00 68 30 00 00 b8 19 00 00  .byte 0x24, 0x42, 0x38, 0x00, 0xbc, 0x1e, 0x00, 0x00, 0x68, 0x30, 0x00, 0x00, 0xb8, 0x19, 0x00, 0x00
006108ec  0c 1b 00 00 90 18 00 00                          .byte 0x0c, 0x1b, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00615f8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00615f8c  01 00 a0 e1                                      mov r0, r1
00615f90  02 10 a0 e1                                      mov r1, r2
00615f94  03 20 a0 e1                                      mov r2, r3
00615f98  d3 ff ff ea                                      b #0x615eec

; FUNCTION 0x006160a8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006160a8  01 00 a0 e1                                      mov r0, r1
006160ac  04 c0 9d e5                                      ldr ip, [sp, #4]
006160b0  02 10 a0 e1                                      mov r1, r2
006160b4  03 20 a0 e1                                      mov r2, r3
006160b8  00 30 9d e5                                      ldr r3, [sp]
006160bc  00 c0 8d e5                                      str ip, [sp]
006160c0  b5 ff ff ea                                      b #0x615f9c

; FUNCTION 0x00616194, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00616194  01 00 a0 e1                                      mov r0, r1
00616198  02 10 a0 e1                                      mov r1, r2
0061619c  03 20 a0 e1                                      mov r2, r3
006161a0  00 30 9d e5                                      ldr r3, [sp]
006161a4  c6 ff ff ea                                      b #0x6160c4

; FUNCTION 0x006162f4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006162f4  04 c0 9d e5                                      ldr ip, [sp, #4]
006162f8  01 00 a0 e1                                      mov r0, r1
006162fc  02 10 a0 e1                                      mov r1, r2
00616300  03 20 a0 e1                                      mov r2, r3
00616304  00 30 9d e5                                      ldr r3, [sp]
00616308  00 c0 8d e5                                      str ip, [sp]
0061630c  08 c0 9d e5                                      ldr ip, [sp, #8]
00616310  04 c0 8d e5                                      str ip, [sp, #4]
00616314  a3 ff ff ea                                      b #0x6161a8

; FUNCTION 0x00618a0c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618a0c  00 20 a0 e3                                      mov r2, #0
00618a10  01 30 a0 e1                                      mov r3, r1
00618a14  01 20 c3 e4                                      strb r2, [r3], #1
00618a18  01 30 83 e2                                      add r3, r3, #1
00618a1c  01 20 c1 e5                                      strb r2, [r1, #1]
00618a20  01 20 c3 e4                                      strb r2, [r3], #1
00618a24  01 20 c3 e4                                      strb r2, [r3], #1
00618a28  01 20 c3 e4                                      strb r2, [r3], #1
00618a2c  01 20 c3 e4                                      strb r2, [r3], #1
00618a30  01 20 c3 e4                                      strb r2, [r3], #1
00618a34  01 20 c3 e4                                      strb r2, [r3], #1
00618a38  01 20 c3 e4                                      strb r2, [r3], #1
00618a3c  01 20 c3 e4                                      strb r2, [r3], #1
00618a40  01 20 c3 e4                                      strb r2, [r3], #1
00618a44  00 20 c3 e5                                      strb r2, [r3]
00618a48  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620390, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620390  10 40 2d e9                                      push {r4, lr}
00620394  00 30 91 e5                                      ldr r3, [r1]
00620398  01 00 a0 e1                                      mov r0, r1
0062039c  02 40 a0 e1                                      mov r4, r2
006203a0  0f e0 a0 e1                                      mov lr, pc
006203a4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006203a8  00 30 90 e5                                      ldr r3, [r0]
006203ac  00 30 84 e5                                      str r3, [r4]
006203b0  04 30 90 e5                                      ldr r3, [r0, #4]
006203b4  04 30 84 e5                                      str r3, [r4, #4]
006203b8  08 30 90 e5                                      ldr r3, [r0, #8]
006203bc  08 30 84 e5                                      str r3, [r4, #8]
006203c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622ca0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622ca0  10 40 2d e9                                      push {r4, lr}
00622ca4  02 00 a0 e1                                      mov r0, r2
00622ca8  00 30 92 e5                                      ldr r3, [r2]
00622cac  0f e0 a0 e1                                      mov lr, pc
00622cb0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622cb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623bf4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623bf4  01 00 a0 e1                                      mov r0, r1
00623bf8  02 10 a0 e1                                      mov r1, r2
00623bfc  03 20 a0 e1                                      mov r2, r3
00623c00  00 30 9d e5                                      ldr r3, [sp]
00623c04  e9 ff ff ea                                      b #0x623bb0

; FUNCTION 0x00623c4c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623c4c  04 c0 9d e5                                      ldr ip, [sp, #4]
00623c50  01 00 a0 e1                                      mov r0, r1
00623c54  02 10 a0 e1                                      mov r1, r2
00623c58  03 20 a0 e1                                      mov r2, r3
00623c5c  00 30 9d e5                                      ldr r3, [sp]
00623c60  00 c0 8d e5                                      str ip, [sp]
00623c64  08 c0 9d e5                                      ldr ip, [sp, #8]
00623c68  04 c0 8d e5                                      str ip, [sp, #4]
00623c6c  e5 ff ff ea                                      b #0x623c08

; FUNCTION 0x00623ee8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623ee8  01 00 a0 e1                                      mov r0, r1
00623eec  04 c0 9d e5                                      ldr ip, [sp, #4]
00623ef0  02 10 a0 e1                                      mov r1, r2
00623ef4  03 20 a0 e1                                      mov r2, r3
00623ef8  00 30 9d e5                                      ldr r3, [sp]
00623efc  00 c0 8d e5                                      str ip, [sp]
00623f00  ba ff ff ea                                      b #0x623df0

; FUNCTION 0x00627434, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00627434  01 00 53 e3                                      cmp r3, #1
00627438  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062743c  03 40 a0 e1                                      mov r4, r3
00627440  02 b0 a0 e1                                      mov fp, r2
00627444  29 00 00 0a                                      beq #0x6274f0
00627448  00 00 53 e3                                      cmp r3, #0
0062744c  00 80 a0 03                                      moveq r8, #0
00627450  08 90 a0 01                                      moveq sb, r8
00627454  08 a0 a0 01                                      moveq sl, r8
00627458  1e 00 00 0a                                      beq #0x6274d8
0062745c  00 80 a0 e3                                      mov r8, #0
00627460  01 50 a0 e1                                      mov r5, r1
00627464  00 70 a0 e3                                      mov r7, #0
00627468  08 90 a0 e1                                      mov sb, r8
0062746c  08 a0 a0 e1                                      mov sl, r8
00627470  07 60 9b e7                                      ldr r6, [fp, r7]
00627474  00 10 95 e5                                      ldr r1, [r5]
00627478  04 70 87 e2                                      add r7, r7, #4
0062747c  06 00 a0 e1                                      mov r0, r6
00627480  39 9e f3 eb                                      bl #0x30ed6c
00627484  00 10 a0 e1                                      mov r1, r0
00627488  08 00 a0 e1                                      mov r0, r8
0062748c  c4 9d f3 eb                                      bl #0x30eba4
00627490  04 10 95 e5                                      ldr r1, [r5, #4]
00627494  00 80 a0 e1                                      mov r8, r0
00627498  06 00 a0 e1                                      mov r0, r6
0062749c  32 9e f3 eb                                      bl #0x30ed6c
006274a0  00 10 a0 e1                                      mov r1, r0
006274a4  09 00 a0 e1                                      mov r0, sb
006274a8  bd 9d f3 eb                                      bl #0x30eba4
006274ac  08 10 95 e5                                      ldr r1, [r5, #8]
006274b0  00 90 a0 e1                                      mov sb, r0
006274b4  06 00 a0 e1                                      mov r0, r6
006274b8  2b 9e f3 eb                                      bl #0x30ed6c
006274bc  00 10 a0 e1                                      mov r1, r0
006274c0  0a 00 a0 e1                                      mov r0, sl
006274c4  b6 9d f3 eb                                      bl #0x30eba4
006274c8  01 40 54 e2                                      subs r4, r4, #1
006274cc  00 a0 a0 e1                                      mov sl, r0
006274d0  0c 50 85 e2                                      add r5, r5, #0xc
006274d4  e5 ff ff 1a                                      bne #0x627470
006274d8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006274dc  04 80 83 e4                                      str r8, [r3], #4
006274e0  28 20 9d e5                                      ldr r2, [sp, #0x28]
006274e4  04 90 82 e5                                      str sb, [r2, #4]
006274e8  04 a0 83 e5                                      str sl, [r3, #4]
006274ec  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006274f0  01 20 a0 e1                                      mov r2, r1
006274f4  04 00 92 e4                                      ldr r0, [r2], #4
006274f8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006274fc  04 00 83 e4                                      str r0, [r3], #4
00627500  04 10 91 e5                                      ldr r1, [r1, #4]
00627504  28 00 9d e5                                      ldr r0, [sp, #0x28]
00627508  04 10 80 e5                                      str r1, [r0, #4]
0062750c  04 20 92 e5                                      ldr r2, [r2, #4]
00627510  04 20 83 e5                                      str r2, [r3, #4]
00627514  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b03c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b03c  01 00 53 e3                                      cmp r3, #1
0062b040  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b044  03 40 a0 e1                                      mov r4, r3
0062b048  02 b0 a0 e1                                      mov fp, r2
0062b04c  29 00 00 0a                                      beq #0x62b0f8
0062b050  00 00 53 e3                                      cmp r3, #0
0062b054  00 80 a0 03                                      moveq r8, #0
0062b058  08 90 a0 01                                      moveq sb, r8
0062b05c  08 a0 a0 01                                      moveq sl, r8
0062b060  1e 00 00 0a                                      beq #0x62b0e0
0062b064  00 80 a0 e3                                      mov r8, #0
0062b068  01 50 a0 e1                                      mov r5, r1
0062b06c  00 70 a0 e3                                      mov r7, #0
0062b070  08 90 a0 e1                                      mov sb, r8
0062b074  08 a0 a0 e1                                      mov sl, r8
0062b078  07 60 9b e7                                      ldr r6, [fp, r7]
0062b07c  00 10 95 e5                                      ldr r1, [r5]
0062b080  04 70 87 e2                                      add r7, r7, #4
0062b084  06 00 a0 e1                                      mov r0, r6
0062b088  37 8f f3 eb                                      bl #0x30ed6c
0062b08c  00 10 a0 e1                                      mov r1, r0
0062b090  08 00 a0 e1                                      mov r0, r8
0062b094  c2 8e f3 eb                                      bl #0x30eba4
0062b098  04 10 95 e5                                      ldr r1, [r5, #4]
0062b09c  00 80 a0 e1                                      mov r8, r0
0062b0a0  06 00 a0 e1                                      mov r0, r6
0062b0a4  30 8f f3 eb                                      bl #0x30ed6c
0062b0a8  00 10 a0 e1                                      mov r1, r0
0062b0ac  09 00 a0 e1                                      mov r0, sb
0062b0b0  bb 8e f3 eb                                      bl #0x30eba4
0062b0b4  08 10 95 e5                                      ldr r1, [r5, #8]
0062b0b8  00 90 a0 e1                                      mov sb, r0
0062b0bc  06 00 a0 e1                                      mov r0, r6
0062b0c0  29 8f f3 eb                                      bl #0x30ed6c
0062b0c4  00 10 a0 e1                                      mov r1, r0
0062b0c8  0a 00 a0 e1                                      mov r0, sl
0062b0cc  b4 8e f3 eb                                      bl #0x30eba4
0062b0d0  01 40 54 e2                                      subs r4, r4, #1
0062b0d4  00 a0 a0 e1                                      mov sl, r0
0062b0d8  0c 50 85 e2                                      add r5, r5, #0xc
0062b0dc  e5 ff ff 1a                                      bne #0x62b078
0062b0e0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b0e4  04 80 83 e4                                      str r8, [r3], #4
0062b0e8  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b0ec  04 90 82 e5                                      str sb, [r2, #4]
0062b0f0  04 a0 83 e5                                      str sl, [r3, #4]
0062b0f4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b0f8  01 20 a0 e1                                      mov r2, r1
0062b0fc  04 00 92 e4                                      ldr r0, [r2], #4
0062b100  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b104  04 00 83 e4                                      str r0, [r3], #4
0062b108  04 10 91 e5                                      ldr r1, [r1, #4]
0062b10c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b110  04 10 80 e5                                      str r1, [r0, #4]
0062b114  04 20 92 e5                                      ldr r2, [r2, #4]
0062b118  04 20 83 e5                                      str r2, [r3, #4]
0062b11c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062db7c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062db7c  01 00 a0 e1                                      mov r0, r1
0062db80  04 c0 9d e5                                      ldr ip, [sp, #4]
0062db84  02 10 a0 e1                                      mov r1, r2
0062db88  03 20 a0 e1                                      mov r2, r3
0062db8c  00 30 9d e5                                      ldr r3, [sp]
0062db90  00 c0 8d e5                                      str ip, [sp]
0062db94  ba ff ff ea                                      b #0x62da84
