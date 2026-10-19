; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed74, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef2c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getValueSize() const
; decoder-mode: arm
0060ef2c  0c 00 a0 e3                                      mov r0, #0xc
0060ef30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f6ec, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::~CVirtualEx()
; decoder-mode: arm
0060f6ec  10 40 2d e9                                      push {r4, lr}
0060f6f0  00 40 a0 e1                                      mov r4, r0
0060f6f4  ed fa f3 eb                                      bl #0x30e2b0
0060f6f8  04 00 a0 e1                                      mov r0, r4
0060f6fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610d94, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getInstance()
; decoder-mode: arm
00610d94  70 40 2d e9                                      push {r4, r5, r6, lr}
00610d98  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610d9c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610da0  04 40 8f e0                                      add r4, pc, r4
00610da4  03 60 94 e7                                      ldr r6, [r4, r3]
00610da8  00 30 96 e5                                      ldr r3, [r6]
00610dac  01 00 13 e3                                      tst r3, #1
00610db0  02 00 00 0a                                      beq #0x610dc0
00610db4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610db8  05 00 94 e7                                      ldr r0, [r4, r5]
00610dbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610dc0  06 00 a0 e1                                      mov r0, r6
00610dc4  68 f6 f3 eb                                      bl #0x30e76c
00610dc8  00 00 50 e3                                      cmp r0, #0
00610dcc  f8 ff ff 0a                                      beq #0x610db4
00610dd0  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610dd4  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610dd8  06 00 a0 e1                                      mov r0, r6
00610ddc  03 30 94 e7                                      ldr r3, [r4, r3]
00610de0  05 60 94 e7                                      ldr r6, [r4, r5]
00610de4  08 30 83 e2                                      add r3, r3, #8
00610de8  00 30 86 e5                                      str r3, [r6]
00610dec  12 f7 f3 eb                                      bl #0x30ea3c
00610df0  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610df4  06 00 a0 e1                                      mov r0, r6
00610df8  03 10 94 e7                                      ldr r1, [r4, r3]
00610dfc  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610e00  03 20 94 e7                                      ldr r2, [r4, r3]
00610e04  3e f5 f3 eb                                      bl #0x30e304
00610e08  05 00 94 e7                                      ldr r0, [r4, r5]
00610e0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610e10  f0 3c 38 00 88 1f 00 00 c4 40 00 00 e8 38 00 00  .byte 0xf0, 0x3c, 0x38, 0x00, 0x88, 0x1f, 0x00, 0x00, 0xc4, 0x40, 0x00, 0x00, 0xe8, 0x38, 0x00, 0x00
00610e20  7c 48 00 00 90 18 00 00                          .byte 0x7c, 0x48, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00617004, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00617004  01 00 a0 e1                                      mov r0, r1
00617008  02 10 a0 e1                                      mov r1, r2
0061700c  03 20 a0 e1                                      mov r2, r3
00617010  d3 ff ff ea                                      b #0x616f64

; FUNCTION 0x00617124, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00617124  01 00 a0 e1                                      mov r0, r1
00617128  04 c0 9d e5                                      ldr ip, [sp, #4]
0061712c  02 10 a0 e1                                      mov r1, r2
00617130  03 20 a0 e1                                      mov r2, r3
00617134  00 30 9d e5                                      ldr r3, [sp]
00617138  00 c0 8d e5                                      str ip, [sp]
0061713c  b4 ff ff ea                                      b #0x617014

; FUNCTION 0x00617210, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00617210  01 00 a0 e1                                      mov r0, r1
00617214  02 10 a0 e1                                      mov r1, r2
00617218  03 20 a0 e1                                      mov r2, r3
0061721c  00 30 9d e5                                      ldr r3, [sp]
00617220  c6 ff ff ea                                      b #0x617140

; FUNCTION 0x00617370, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00617370  04 c0 9d e5                                      ldr ip, [sp, #4]
00617374  01 00 a0 e1                                      mov r0, r1
00617378  02 10 a0 e1                                      mov r1, r2
0061737c  03 20 a0 e1                                      mov r2, r3
00617380  00 30 9d e5                                      ldr r3, [sp]
00617384  00 c0 8d e5                                      str ip, [sp]
00617388  08 c0 9d e5                                      ldr ip, [sp, #8]
0061738c  04 c0 8d e5                                      str ip, [sp, #4]
00617390  a3 ff ff ea                                      b #0x617224

; FUNCTION 0x00618c4c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618c4c  00 20 a0 e3                                      mov r2, #0
00618c50  01 30 a0 e1                                      mov r3, r1
00618c54  01 20 c3 e4                                      strb r2, [r3], #1
00618c58  01 30 83 e2                                      add r3, r3, #1
00618c5c  01 20 c1 e5                                      strb r2, [r1, #1]
00618c60  01 20 c3 e4                                      strb r2, [r3], #1
00618c64  01 20 c3 e4                                      strb r2, [r3], #1
00618c68  01 20 c3 e4                                      strb r2, [r3], #1
00618c6c  01 20 c3 e4                                      strb r2, [r3], #1
00618c70  01 20 c3 e4                                      strb r2, [r3], #1
00618c74  01 20 c3 e4                                      strb r2, [r3], #1
00618c78  01 20 c3 e4                                      strb r2, [r3], #1
00618c7c  01 20 c3 e4                                      strb r2, [r3], #1
00618c80  01 20 c3 e4                                      strb r2, [r3], #1
00618c84  00 20 c3 e5                                      strb r2, [r3]
00618c88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620668, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620668  10 40 2d e9                                      push {r4, lr}
0062066c  00 30 91 e5                                      ldr r3, [r1]
00620670  01 00 a0 e1                                      mov r0, r1
00620674  02 40 a0 e1                                      mov r4, r2
00620678  0f e0 a0 e1                                      mov lr, pc
0062067c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00620680  00 30 90 e5                                      ldr r3, [r0]
00620684  00 30 84 e5                                      str r3, [r4]
00620688  04 30 90 e5                                      ldr r3, [r0, #4]
0062068c  04 30 84 e5                                      str r3, [r4, #4]
00620690  08 30 90 e5                                      ldr r3, [r0, #8]
00620694  08 30 84 e5                                      str r3, [r4, #8]
00620698  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622c28, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622c28  10 40 2d e9                                      push {r4, lr}
00622c2c  02 00 a0 e1                                      mov r0, r2
00622c30  00 30 92 e5                                      ldr r3, [r2]
00622c34  0f e0 a0 e1                                      mov lr, pc
00622c38  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622c3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006236f8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006236f8  01 00 a0 e1                                      mov r0, r1
006236fc  02 10 a0 e1                                      mov r1, r2
00623700  03 20 a0 e1                                      mov r2, r3
00623704  00 30 9d e5                                      ldr r3, [sp]
00623708  e9 ff ff ea                                      b #0x6236b4

; FUNCTION 0x00623750, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623750  04 c0 9d e5                                      ldr ip, [sp, #4]
00623754  01 00 a0 e1                                      mov r0, r1
00623758  02 10 a0 e1                                      mov r1, r2
0062375c  03 20 a0 e1                                      mov r2, r3
00623760  00 30 9d e5                                      ldr r3, [sp]
00623764  00 c0 8d e5                                      str ip, [sp]
00623768  08 c0 9d e5                                      ldr ip, [sp, #8]
0062376c  04 c0 8d e5                                      str ip, [sp, #4]
00623770  e5 ff ff ea                                      b #0x62370c

; FUNCTION 0x0062a118, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a118  01 00 53 e3                                      cmp r3, #1
0062a11c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a120  03 40 a0 e1                                      mov r4, r3
0062a124  02 b0 a0 e1                                      mov fp, r2
0062a128  29 00 00 0a                                      beq #0x62a1d4
0062a12c  00 00 53 e3                                      cmp r3, #0
0062a130  00 80 a0 03                                      moveq r8, #0
0062a134  08 90 a0 01                                      moveq sb, r8
0062a138  08 a0 a0 01                                      moveq sl, r8
0062a13c  1e 00 00 0a                                      beq #0x62a1bc
0062a140  00 80 a0 e3                                      mov r8, #0
0062a144  01 50 a0 e1                                      mov r5, r1
0062a148  00 70 a0 e3                                      mov r7, #0
0062a14c  08 90 a0 e1                                      mov sb, r8
0062a150  08 a0 a0 e1                                      mov sl, r8
0062a154  07 60 9b e7                                      ldr r6, [fp, r7]
0062a158  00 10 95 e5                                      ldr r1, [r5]
0062a15c  04 70 87 e2                                      add r7, r7, #4
0062a160  06 00 a0 e1                                      mov r0, r6
0062a164  00 93 f3 eb                                      bl #0x30ed6c
0062a168  00 10 a0 e1                                      mov r1, r0
0062a16c  08 00 a0 e1                                      mov r0, r8
0062a170  8b 92 f3 eb                                      bl #0x30eba4
0062a174  04 10 95 e5                                      ldr r1, [r5, #4]
0062a178  00 80 a0 e1                                      mov r8, r0
0062a17c  06 00 a0 e1                                      mov r0, r6
0062a180  f9 92 f3 eb                                      bl #0x30ed6c
0062a184  00 10 a0 e1                                      mov r1, r0
0062a188  09 00 a0 e1                                      mov r0, sb
0062a18c  84 92 f3 eb                                      bl #0x30eba4
0062a190  08 10 95 e5                                      ldr r1, [r5, #8]
0062a194  00 90 a0 e1                                      mov sb, r0
0062a198  06 00 a0 e1                                      mov r0, r6
0062a19c  f2 92 f3 eb                                      bl #0x30ed6c
0062a1a0  00 10 a0 e1                                      mov r1, r0
0062a1a4  0a 00 a0 e1                                      mov r0, sl
0062a1a8  7d 92 f3 eb                                      bl #0x30eba4
0062a1ac  01 40 54 e2                                      subs r4, r4, #1
0062a1b0  00 a0 a0 e1                                      mov sl, r0
0062a1b4  0c 50 85 e2                                      add r5, r5, #0xc
0062a1b8  e5 ff ff 1a                                      bne #0x62a154
0062a1bc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a1c0  04 80 83 e4                                      str r8, [r3], #4
0062a1c4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a1c8  04 90 82 e5                                      str sb, [r2, #4]
0062a1cc  04 a0 83 e5                                      str sl, [r3, #4]
0062a1d0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a1d4  01 20 a0 e1                                      mov r2, r1
0062a1d8  04 00 92 e4                                      ldr r0, [r2], #4
0062a1dc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a1e0  04 00 83 e4                                      str r0, [r3], #4
0062a1e4  04 10 91 e5                                      ldr r1, [r1, #4]
0062a1e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a1ec  04 10 80 e5                                      str r1, [r0, #4]
0062a1f0  04 20 92 e5                                      ldr r2, [r2, #4]
0062a1f4  04 20 83 e5                                      str r2, [r3, #4]
0062a1f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b840, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b840  01 00 53 e3                                      cmp r3, #1
0062b844  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b848  03 40 a0 e1                                      mov r4, r3
0062b84c  02 b0 a0 e1                                      mov fp, r2
0062b850  29 00 00 0a                                      beq #0x62b8fc
0062b854  00 00 53 e3                                      cmp r3, #0
0062b858  00 80 a0 03                                      moveq r8, #0
0062b85c  08 90 a0 01                                      moveq sb, r8
0062b860  08 a0 a0 01                                      moveq sl, r8
0062b864  1e 00 00 0a                                      beq #0x62b8e4
0062b868  00 80 a0 e3                                      mov r8, #0
0062b86c  01 50 a0 e1                                      mov r5, r1
0062b870  00 70 a0 e3                                      mov r7, #0
0062b874  08 90 a0 e1                                      mov sb, r8
0062b878  08 a0 a0 e1                                      mov sl, r8
0062b87c  07 60 9b e7                                      ldr r6, [fp, r7]
0062b880  00 10 95 e5                                      ldr r1, [r5]
0062b884  04 70 87 e2                                      add r7, r7, #4
0062b888  06 00 a0 e1                                      mov r0, r6
0062b88c  36 8d f3 eb                                      bl #0x30ed6c
0062b890  00 10 a0 e1                                      mov r1, r0
0062b894  08 00 a0 e1                                      mov r0, r8
0062b898  c1 8c f3 eb                                      bl #0x30eba4
0062b89c  04 10 95 e5                                      ldr r1, [r5, #4]
0062b8a0  00 80 a0 e1                                      mov r8, r0
0062b8a4  06 00 a0 e1                                      mov r0, r6
0062b8a8  2f 8d f3 eb                                      bl #0x30ed6c
0062b8ac  00 10 a0 e1                                      mov r1, r0
0062b8b0  09 00 a0 e1                                      mov r0, sb
0062b8b4  ba 8c f3 eb                                      bl #0x30eba4
0062b8b8  08 10 95 e5                                      ldr r1, [r5, #8]
0062b8bc  00 90 a0 e1                                      mov sb, r0
0062b8c0  06 00 a0 e1                                      mov r0, r6
0062b8c4  28 8d f3 eb                                      bl #0x30ed6c
0062b8c8  00 10 a0 e1                                      mov r1, r0
0062b8cc  0a 00 a0 e1                                      mov r0, sl
0062b8d0  b3 8c f3 eb                                      bl #0x30eba4
0062b8d4  01 40 54 e2                                      subs r4, r4, #1
0062b8d8  00 a0 a0 e1                                      mov sl, r0
0062b8dc  0c 50 85 e2                                      add r5, r5, #0xc
0062b8e0  e5 ff ff 1a                                      bne #0x62b87c
0062b8e4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b8e8  04 80 83 e4                                      str r8, [r3], #4
0062b8ec  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b8f0  04 90 82 e5                                      str sb, [r2, #4]
0062b8f4  04 a0 83 e5                                      str sl, [r3, #4]
0062b8f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b8fc  01 20 a0 e1                                      mov r2, r1
0062b900  04 00 92 e4                                      ldr r0, [r2], #4
0062b904  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b908  04 00 83 e4                                      str r0, [r3], #4
0062b90c  04 10 91 e5                                      ldr r1, [r1, #4]
0062b910  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b914  04 10 80 e5                                      str r1, [r0, #4]
0062b918  04 20 92 e5                                      ldr r2, [r2, #4]
0062b91c  04 20 83 e5                                      str r2, [r3, #4]
0062b920  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062c814, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c814  01 00 a0 e1                                      mov r0, r1
0062c818  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c81c  02 10 a0 e1                                      mov r1, r2
0062c820  03 20 a0 e1                                      mov r2, r3
0062c824  00 30 9d e5                                      ldr r3, [sp]
0062c828  00 c0 8d e5                                      str ip, [sp]
0062c82c  ba ff ff ea                                      b #0x62c71c

; FUNCTION 0x0062c928, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c928  01 00 a0 e1                                      mov r0, r1
0062c92c  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c930  02 10 a0 e1                                      mov r1, r2
0062c934  03 20 a0 e1                                      mov r2, r3
0062c938  00 30 9d e5                                      ldr r3, [sp]
0062c93c  00 c0 8d e5                                      str ip, [sp]
0062c940  ba ff ff ea                                      b #0x62c830
