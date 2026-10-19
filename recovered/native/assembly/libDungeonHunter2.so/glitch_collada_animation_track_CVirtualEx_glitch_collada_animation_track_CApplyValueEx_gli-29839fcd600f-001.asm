; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed44, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efc0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getValueSize() const
; decoder-mode: arm
0060efc0  0c 00 a0 e3                                      mov r0, #0xc
0060efc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f5fc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::~CVirtualEx()
; decoder-mode: arm
0060f5fc  10 40 2d e9                                      push {r4, lr}
0060f600  00 40 a0 e1                                      mov r4, r0
0060f604  29 fb f3 eb                                      bl #0x30e2b0
0060f608  04 00 a0 e1                                      mov r0, r4
0060f60c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006106a4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getInstance()
; decoder-mode: arm
006106a4  70 40 2d e9                                      push {r4, r5, r6, lr}
006106a8  70 40 9f e5                                      ldr r4, [pc, #0x70]
006106ac  70 30 9f e5                                      ldr r3, [pc, #0x70]
006106b0  04 40 8f e0                                      add r4, pc, r4
006106b4  03 60 94 e7                                      ldr r6, [r4, r3]
006106b8  00 30 96 e5                                      ldr r3, [r6]
006106bc  01 00 13 e3                                      tst r3, #1
006106c0  02 00 00 0a                                      beq #0x6106d0
006106c4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006106c8  05 00 94 e7                                      ldr r0, [r4, r5]
006106cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
006106d0  06 00 a0 e1                                      mov r0, r6
006106d4  24 f8 f3 eb                                      bl #0x30e76c
006106d8  00 00 50 e3                                      cmp r0, #0
006106dc  f8 ff ff 0a                                      beq #0x6106c4
006106e0  44 30 9f e5                                      ldr r3, [pc, #0x44]
006106e4  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006106e8  06 00 a0 e1                                      mov r0, r6
006106ec  03 30 94 e7                                      ldr r3, [r4, r3]
006106f0  05 60 94 e7                                      ldr r6, [r4, r5]
006106f4  08 30 83 e2                                      add r3, r3, #8
006106f8  00 30 86 e5                                      str r3, [r6]
006106fc  ce f8 f3 eb                                      bl #0x30ea3c
00610700  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610704  06 00 a0 e1                                      mov r0, r6
00610708  03 10 94 e7                                      ldr r1, [r4, r3]
0061070c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610710  03 20 94 e7                                      ldr r2, [r4, r3]
00610714  fa f6 f3 eb                                      bl #0x30e304
00610718  05 00 94 e7                                      ldr r0, [r4, r5]
0061071c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610720  e0 43 38 00 e4 36 00 00 bc 40 00 00 0c 0a 00 00  .byte 0xe0, 0x43, 0x38, 0x00, 0xe4, 0x36, 0x00, 0x00, 0xbc, 0x40, 0x00, 0x00, 0x0c, 0x0a, 0x00, 0x00
00610730  0c 27 00 00 90 18 00 00                          .byte 0x0c, 0x27, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006156cc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006156cc  01 00 a0 e1                                      mov r0, r1
006156d0  02 10 a0 e1                                      mov r1, r2
006156d4  03 20 a0 e1                                      mov r2, r3
006156d8  d3 ff ff ea                                      b #0x61562c

; FUNCTION 0x006157ec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006157ec  01 00 a0 e1                                      mov r0, r1
006157f0  04 c0 9d e5                                      ldr ip, [sp, #4]
006157f4  02 10 a0 e1                                      mov r1, r2
006157f8  03 20 a0 e1                                      mov r2, r3
006157fc  00 30 9d e5                                      ldr r3, [sp]
00615800  00 c0 8d e5                                      str ip, [sp]
00615804  b4 ff ff ea                                      b #0x6156dc

; FUNCTION 0x006158d8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006158d8  01 00 a0 e1                                      mov r0, r1
006158dc  02 10 a0 e1                                      mov r1, r2
006158e0  03 20 a0 e1                                      mov r2, r3
006158e4  00 30 9d e5                                      ldr r3, [sp]
006158e8  c6 ff ff ea                                      b #0x615808

; FUNCTION 0x00615a38, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00615a38  04 c0 9d e5                                      ldr ip, [sp, #4]
00615a3c  01 00 a0 e1                                      mov r0, r1
00615a40  02 10 a0 e1                                      mov r1, r2
00615a44  03 20 a0 e1                                      mov r2, r3
00615a48  00 30 9d e5                                      ldr r3, [sp]
00615a4c  00 c0 8d e5                                      str ip, [sp]
00615a50  08 c0 9d e5                                      ldr ip, [sp, #8]
00615a54  04 c0 8d e5                                      str ip, [sp, #4]
00615a58  a3 ff ff ea                                      b #0x6158ec

; FUNCTION 0x0061894c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getIdentityValue(void*) const
; decoder-mode: arm
0061894c  00 20 a0 e3                                      mov r2, #0
00618950  01 30 a0 e1                                      mov r3, r1
00618954  01 20 c3 e4                                      strb r2, [r3], #1
00618958  01 30 83 e2                                      add r3, r3, #1
0061895c  01 20 c1 e5                                      strb r2, [r1, #1]
00618960  01 20 c3 e4                                      strb r2, [r3], #1
00618964  01 20 c3 e4                                      strb r2, [r3], #1
00618968  01 20 c3 e4                                      strb r2, [r3], #1
0061896c  01 20 c3 e4                                      strb r2, [r3], #1
00618970  01 20 c3 e4                                      strb r2, [r3], #1
00618974  01 20 c3 e4                                      strb r2, [r3], #1
00618978  01 20 c3 e4                                      strb r2, [r3], #1
0061897c  01 20 c3 e4                                      strb r2, [r3], #1
00618980  01 20 c3 e4                                      strb r2, [r3], #1
00618984  00 20 c3 e5                                      strb r2, [r3]
00618988  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062042c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0062042c  10 40 2d e9                                      push {r4, lr}
00620430  00 30 91 e5                                      ldr r3, [r1]
00620434  01 00 a0 e1                                      mov r0, r1
00620438  02 40 a0 e1                                      mov r4, r2
0062043c  0f e0 a0 e1                                      mov lr, pc
00620440  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00620444  00 30 90 e5                                      ldr r3, [r0]
00620448  00 30 84 e5                                      str r3, [r4]
0062044c  04 30 90 e5                                      ldr r3, [r0, #4]
00620450  04 30 84 e5                                      str r3, [r4, #4]
00620454  08 30 90 e5                                      ldr r3, [r0, #8]
00620458  08 30 84 e5                                      str r3, [r4, #8]
0062045c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623160, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623160  01 00 a0 e1                                      mov r0, r1
00623164  02 10 a0 e1                                      mov r1, r2
00623168  03 20 a0 e1                                      mov r2, r3
0062316c  00 30 9d e5                                      ldr r3, [sp]
00623170  e9 ff ff ea                                      b #0x62311c

; FUNCTION 0x006231b8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006231b8  04 c0 9d e5                                      ldr ip, [sp, #4]
006231bc  01 00 a0 e1                                      mov r0, r1
006231c0  02 10 a0 e1                                      mov r1, r2
006231c4  03 20 a0 e1                                      mov r2, r3
006231c8  00 30 9d e5                                      ldr r3, [sp]
006231cc  00 c0 8d e5                                      str ip, [sp]
006231d0  08 c0 9d e5                                      ldr ip, [sp, #8]
006231d4  04 c0 8d e5                                      str ip, [sp, #4]
006231d8  e5 ff ff ea                                      b #0x623174

; FUNCTION 0x00623d30, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623d30  10 40 2d e9                                      push {r4, lr}
00623d34  02 00 a0 e1                                      mov r0, r2
00623d38  00 30 92 e5                                      ldr r3, [r2]
00623d3c  0f e0 a0 e1                                      mov lr, pc
00623d40  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623d44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00627188, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00627188  01 00 53 e3                                      cmp r3, #1
0062718c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627190  03 40 a0 e1                                      mov r4, r3
00627194  02 b0 a0 e1                                      mov fp, r2
00627198  29 00 00 0a                                      beq #0x627244
0062719c  00 00 53 e3                                      cmp r3, #0
006271a0  00 80 a0 03                                      moveq r8, #0
006271a4  08 90 a0 01                                      moveq sb, r8
006271a8  08 a0 a0 01                                      moveq sl, r8
006271ac  1e 00 00 0a                                      beq #0x62722c
006271b0  00 80 a0 e3                                      mov r8, #0
006271b4  01 50 a0 e1                                      mov r5, r1
006271b8  00 70 a0 e3                                      mov r7, #0
006271bc  08 90 a0 e1                                      mov sb, r8
006271c0  08 a0 a0 e1                                      mov sl, r8
006271c4  07 60 9b e7                                      ldr r6, [fp, r7]
006271c8  00 10 95 e5                                      ldr r1, [r5]
006271cc  04 70 87 e2                                      add r7, r7, #4
006271d0  06 00 a0 e1                                      mov r0, r6
006271d4  e4 9e f3 eb                                      bl #0x30ed6c
006271d8  00 10 a0 e1                                      mov r1, r0
006271dc  08 00 a0 e1                                      mov r0, r8
006271e0  6f 9e f3 eb                                      bl #0x30eba4
006271e4  04 10 95 e5                                      ldr r1, [r5, #4]
006271e8  00 80 a0 e1                                      mov r8, r0
006271ec  06 00 a0 e1                                      mov r0, r6
006271f0  dd 9e f3 eb                                      bl #0x30ed6c
006271f4  00 10 a0 e1                                      mov r1, r0
006271f8  09 00 a0 e1                                      mov r0, sb
006271fc  68 9e f3 eb                                      bl #0x30eba4
00627200  08 10 95 e5                                      ldr r1, [r5, #8]
00627204  00 90 a0 e1                                      mov sb, r0
00627208  06 00 a0 e1                                      mov r0, r6
0062720c  d6 9e f3 eb                                      bl #0x30ed6c
00627210  00 10 a0 e1                                      mov r1, r0
00627214  0a 00 a0 e1                                      mov r0, sl
00627218  61 9e f3 eb                                      bl #0x30eba4
0062721c  01 40 54 e2                                      subs r4, r4, #1
00627220  00 a0 a0 e1                                      mov sl, r0
00627224  0c 50 85 e2                                      add r5, r5, #0xc
00627228  e5 ff ff 1a                                      bne #0x6271c4
0062722c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627230  04 80 83 e4                                      str r8, [r3], #4
00627234  28 20 9d e5                                      ldr r2, [sp, #0x28]
00627238  04 90 82 e5                                      str sb, [r2, #4]
0062723c  04 a0 83 e5                                      str sl, [r3, #4]
00627240  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00627244  01 20 a0 e1                                      mov r2, r1
00627248  04 00 92 e4                                      ldr r0, [r2], #4
0062724c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627250  04 00 83 e4                                      str r0, [r3], #4
00627254  04 10 91 e5                                      ldr r1, [r1, #4]
00627258  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062725c  04 10 80 e5                                      str r1, [r0, #4]
00627260  04 20 92 e5                                      ldr r2, [r2, #4]
00627264  04 20 83 e5                                      str r2, [r3, #4]
00627268  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00629274, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629274  01 00 a0 e1                                      mov r0, r1
00629278  04 c0 9d e5                                      ldr ip, [sp, #4]
0062927c  02 10 a0 e1                                      mov r1, r2
00629280  03 20 a0 e1                                      mov r2, r3
00629284  00 30 9d e5                                      ldr r3, [sp]
00629288  00 c0 8d e5                                      str ip, [sp]
0062928c  ba ff ff ea                                      b #0x62917c

; FUNCTION 0x00629388, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629388  01 00 a0 e1                                      mov r0, r1
0062938c  04 c0 9d e5                                      ldr ip, [sp, #4]
00629390  02 10 a0 e1                                      mov r1, r2
00629394  03 20 a0 e1                                      mov r2, r3
00629398  00 30 9d e5                                      ldr r3, [sp]
0062939c  00 c0 8d e5                                      str ip, [sp]
006293a0  ba ff ff ea                                      b #0x629290

; FUNCTION 0x0062ad90, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062ad90  01 00 53 e3                                      cmp r3, #1
0062ad94  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062ad98  03 40 a0 e1                                      mov r4, r3
0062ad9c  02 b0 a0 e1                                      mov fp, r2
0062ada0  29 00 00 0a                                      beq #0x62ae4c
0062ada4  00 00 53 e3                                      cmp r3, #0
0062ada8  00 80 a0 03                                      moveq r8, #0
0062adac  08 90 a0 01                                      moveq sb, r8
0062adb0  08 a0 a0 01                                      moveq sl, r8
0062adb4  1e 00 00 0a                                      beq #0x62ae34
0062adb8  00 80 a0 e3                                      mov r8, #0
0062adbc  01 50 a0 e1                                      mov r5, r1
0062adc0  00 70 a0 e3                                      mov r7, #0
0062adc4  08 90 a0 e1                                      mov sb, r8
0062adc8  08 a0 a0 e1                                      mov sl, r8
0062adcc  07 60 9b e7                                      ldr r6, [fp, r7]
0062add0  00 10 95 e5                                      ldr r1, [r5]
0062add4  04 70 87 e2                                      add r7, r7, #4
0062add8  06 00 a0 e1                                      mov r0, r6
0062addc  e2 8f f3 eb                                      bl #0x30ed6c
0062ade0  00 10 a0 e1                                      mov r1, r0
0062ade4  08 00 a0 e1                                      mov r0, r8
0062ade8  6d 8f f3 eb                                      bl #0x30eba4
0062adec  04 10 95 e5                                      ldr r1, [r5, #4]
0062adf0  00 80 a0 e1                                      mov r8, r0
0062adf4  06 00 a0 e1                                      mov r0, r6
0062adf8  db 8f f3 eb                                      bl #0x30ed6c
0062adfc  00 10 a0 e1                                      mov r1, r0
0062ae00  09 00 a0 e1                                      mov r0, sb
0062ae04  66 8f f3 eb                                      bl #0x30eba4
0062ae08  08 10 95 e5                                      ldr r1, [r5, #8]
0062ae0c  00 90 a0 e1                                      mov sb, r0
0062ae10  06 00 a0 e1                                      mov r0, r6
0062ae14  d4 8f f3 eb                                      bl #0x30ed6c
0062ae18  00 10 a0 e1                                      mov r1, r0
0062ae1c  0a 00 a0 e1                                      mov r0, sl
0062ae20  5f 8f f3 eb                                      bl #0x30eba4
0062ae24  01 40 54 e2                                      subs r4, r4, #1
0062ae28  00 a0 a0 e1                                      mov sl, r0
0062ae2c  0c 50 85 e2                                      add r5, r5, #0xc
0062ae30  e5 ff ff 1a                                      bne #0x62adcc
0062ae34  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062ae38  04 80 83 e4                                      str r8, [r3], #4
0062ae3c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062ae40  04 90 82 e5                                      str sb, [r2, #4]
0062ae44  04 a0 83 e5                                      str sl, [r3, #4]
0062ae48  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062ae4c  01 20 a0 e1                                      mov r2, r1
0062ae50  04 00 92 e4                                      ldr r0, [r2], #4
0062ae54  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062ae58  04 00 83 e4                                      str r0, [r3], #4
0062ae5c  04 10 91 e5                                      ldr r1, [r1, #4]
0062ae60  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062ae64  04 10 80 e5                                      str r1, [r0, #4]
0062ae68  04 20 92 e5                                      ldr r2, [r2, #4]
0062ae6c  04 20 83 e5                                      str r2, [r3, #4]
0062ae70  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
