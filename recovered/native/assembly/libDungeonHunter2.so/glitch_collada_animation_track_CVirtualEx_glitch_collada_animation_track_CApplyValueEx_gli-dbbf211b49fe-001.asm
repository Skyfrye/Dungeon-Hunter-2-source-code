; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed78, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef24, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getValueSize() const
; decoder-mode: arm
0060ef24  0c 00 a0 e3                                      mov r0, #0xc
0060ef28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f700, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::~CVirtualEx()
; decoder-mode: arm
0060f700  10 40 2d e9                                      push {r4, lr}
0060f704  00 40 a0 e1                                      mov r4, r0
0060f708  e8 fa f3 eb                                      bl #0x30e2b0
0060f70c  04 00 a0 e1                                      mov r0, r4
0060f710  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610e28, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getInstance()
; decoder-mode: arm
00610e28  70 40 2d e9                                      push {r4, r5, r6, lr}
00610e2c  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610e30  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610e34  04 40 8f e0                                      add r4, pc, r4
00610e38  03 60 94 e7                                      ldr r6, [r4, r3]
00610e3c  00 30 96 e5                                      ldr r3, [r6]
00610e40  01 00 13 e3                                      tst r3, #1
00610e44  02 00 00 0a                                      beq #0x610e54
00610e48  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610e4c  05 00 94 e7                                      ldr r0, [r4, r5]
00610e50  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610e54  06 00 a0 e1                                      mov r0, r6
00610e58  43 f6 f3 eb                                      bl #0x30e76c
00610e5c  00 00 50 e3                                      cmp r0, #0
00610e60  f8 ff ff 0a                                      beq #0x610e48
00610e64  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610e68  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610e6c  06 00 a0 e1                                      mov r0, r6
00610e70  03 30 94 e7                                      ldr r3, [r4, r3]
00610e74  05 60 94 e7                                      ldr r6, [r4, r5]
00610e78  08 30 83 e2                                      add r3, r3, #8
00610e7c  00 30 86 e5                                      str r3, [r6]
00610e80  ed f6 f3 eb                                      bl #0x30ea3c
00610e84  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610e88  06 00 a0 e1                                      mov r0, r6
00610e8c  03 10 94 e7                                      ldr r1, [r4, r3]
00610e90  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610e94  03 20 94 e7                                      ldr r2, [r4, r3]
00610e98  19 f5 f3 eb                                      bl #0x30e304
00610e9c  05 00 94 e7                                      ldr r0, [r4, r5]
00610ea0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610ea4  5c 3c 38 00 84 1b 00 00 3c 1e 00 00 18 25 00 00  .byte 0x5c, 0x3c, 0x38, 0x00, 0x84, 0x1b, 0x00, 0x00, 0x3c, 0x1e, 0x00, 0x00, 0x18, 0x25, 0x00, 0x00
00610eb4  7c 11 00 00 90 18 00 00                          .byte 0x7c, 0x11, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00617430, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00617430  01 00 a0 e1                                      mov r0, r1
00617434  02 10 a0 e1                                      mov r1, r2
00617438  03 20 a0 e1                                      mov r2, r3
0061743c  d4 ff ff ea                                      b #0x617394

; FUNCTION 0x00617548, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00617548  01 00 a0 e1                                      mov r0, r1
0061754c  04 c0 9d e5                                      ldr ip, [sp, #4]
00617550  02 10 a0 e1                                      mov r1, r2
00617554  03 20 a0 e1                                      mov r2, r3
00617558  00 30 9d e5                                      ldr r3, [sp]
0061755c  00 c0 8d e5                                      str ip, [sp]
00617560  b6 ff ff ea                                      b #0x617440

; FUNCTION 0x0061762c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061762c  01 00 a0 e1                                      mov r0, r1
00617630  02 10 a0 e1                                      mov r1, r2
00617634  03 20 a0 e1                                      mov r2, r3
00617638  00 30 9d e5                                      ldr r3, [sp]
0061763c  c8 ff ff ea                                      b #0x617564

; FUNCTION 0x00617780, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00617780  04 c0 9d e5                                      ldr ip, [sp, #4]
00617784  01 00 a0 e1                                      mov r0, r1
00617788  02 10 a0 e1                                      mov r1, r2
0061778c  03 20 a0 e1                                      mov r2, r3
00617790  00 30 9d e5                                      ldr r3, [sp]
00617794  00 c0 8d e5                                      str ip, [sp]
00617798  08 c0 9d e5                                      ldr ip, [sp, #8]
0061779c  04 c0 8d e5                                      str ip, [sp, #4]
006177a0  a6 ff ff ea                                      b #0x617640

; FUNCTION 0x00618c8c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618c8c  00 20 a0 e3                                      mov r2, #0
00618c90  01 30 a0 e1                                      mov r3, r1
00618c94  01 20 c3 e4                                      strb r2, [r3], #1
00618c98  01 30 83 e2                                      add r3, r3, #1
00618c9c  01 20 c1 e5                                      strb r2, [r1, #1]
00618ca0  01 20 c3 e4                                      strb r2, [r3], #1
00618ca4  01 20 c3 e4                                      strb r2, [r3], #1
00618ca8  01 20 c3 e4                                      strb r2, [r3], #1
00618cac  01 20 c3 e4                                      strb r2, [r3], #1
00618cb0  01 20 c3 e4                                      strb r2, [r3], #1
00618cb4  01 20 c3 e4                                      strb r2, [r3], #1
00618cb8  01 20 c3 e4                                      strb r2, [r3], #1
00618cbc  01 20 c3 e4                                      strb r2, [r3], #1
00618cc0  01 20 c3 e4                                      strb r2, [r3], #1
00618cc4  00 20 c3 e5                                      strb r2, [r3]
00618cc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620634, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620634  10 40 2d e9                                      push {r4, lr}
00620638  00 30 91 e5                                      ldr r3, [r1]
0062063c  01 00 a0 e1                                      mov r0, r1
00620640  02 40 a0 e1                                      mov r4, r2
00620644  0f e0 a0 e1                                      mov lr, pc
00620648  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0062064c  00 30 90 e5                                      ldr r3, [r0]
00620650  00 30 84 e5                                      str r3, [r4]
00620654  04 30 90 e5                                      ldr r3, [r0, #4]
00620658  04 30 84 e5                                      str r3, [r4, #4]
0062065c  08 30 90 e5                                      ldr r3, [r0, #8]
00620660  08 30 84 e5                                      str r3, [r4, #8]
00620664  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622c10, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622c10  10 40 2d e9                                      push {r4, lr}
00622c14  02 00 a0 e1                                      mov r0, r2
00622c18  00 30 92 e5                                      ldr r3, [r2]
00622c1c  0f e0 a0 e1                                      mov lr, pc
00622c20  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622c24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006237b8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006237b8  01 00 a0 e1                                      mov r0, r1
006237bc  02 10 a0 e1                                      mov r1, r2
006237c0  03 20 a0 e1                                      mov r2, r3
006237c4  00 30 9d e5                                      ldr r3, [sp]
006237c8  e9 ff ff ea                                      b #0x623774

; FUNCTION 0x00623810, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623810  04 c0 9d e5                                      ldr ip, [sp, #4]
00623814  01 00 a0 e1                                      mov r0, r1
00623818  02 10 a0 e1                                      mov r1, r2
0062381c  03 20 a0 e1                                      mov r2, r3
00623820  00 30 9d e5                                      ldr r3, [sp]
00623824  00 c0 8d e5                                      str ip, [sp]
00623828  08 c0 9d e5                                      ldr ip, [sp, #8]
0062382c  04 c0 8d e5                                      str ip, [sp, #4]
00623830  e5 ff ff ea                                      b #0x6237cc

; FUNCTION 0x0062a1fc, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a1fc  01 00 53 e3                                      cmp r3, #1
0062a200  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a204  03 40 a0 e1                                      mov r4, r3
0062a208  02 b0 a0 e1                                      mov fp, r2
0062a20c  29 00 00 0a                                      beq #0x62a2b8
0062a210  00 00 53 e3                                      cmp r3, #0
0062a214  00 80 a0 03                                      moveq r8, #0
0062a218  08 90 a0 01                                      moveq sb, r8
0062a21c  08 a0 a0 01                                      moveq sl, r8
0062a220  1e 00 00 0a                                      beq #0x62a2a0
0062a224  00 80 a0 e3                                      mov r8, #0
0062a228  01 50 a0 e1                                      mov r5, r1
0062a22c  00 70 a0 e3                                      mov r7, #0
0062a230  08 90 a0 e1                                      mov sb, r8
0062a234  08 a0 a0 e1                                      mov sl, r8
0062a238  07 60 9b e7                                      ldr r6, [fp, r7]
0062a23c  00 10 95 e5                                      ldr r1, [r5]
0062a240  04 70 87 e2                                      add r7, r7, #4
0062a244  06 00 a0 e1                                      mov r0, r6
0062a248  c7 92 f3 eb                                      bl #0x30ed6c
0062a24c  00 10 a0 e1                                      mov r1, r0
0062a250  08 00 a0 e1                                      mov r0, r8
0062a254  52 92 f3 eb                                      bl #0x30eba4
0062a258  04 10 95 e5                                      ldr r1, [r5, #4]
0062a25c  00 80 a0 e1                                      mov r8, r0
0062a260  06 00 a0 e1                                      mov r0, r6
0062a264  c0 92 f3 eb                                      bl #0x30ed6c
0062a268  00 10 a0 e1                                      mov r1, r0
0062a26c  09 00 a0 e1                                      mov r0, sb
0062a270  4b 92 f3 eb                                      bl #0x30eba4
0062a274  08 10 95 e5                                      ldr r1, [r5, #8]
0062a278  00 90 a0 e1                                      mov sb, r0
0062a27c  06 00 a0 e1                                      mov r0, r6
0062a280  b9 92 f3 eb                                      bl #0x30ed6c
0062a284  00 10 a0 e1                                      mov r1, r0
0062a288  0a 00 a0 e1                                      mov r0, sl
0062a28c  44 92 f3 eb                                      bl #0x30eba4
0062a290  01 40 54 e2                                      subs r4, r4, #1
0062a294  00 a0 a0 e1                                      mov sl, r0
0062a298  0c 50 85 e2                                      add r5, r5, #0xc
0062a29c  e5 ff ff 1a                                      bne #0x62a238
0062a2a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a2a4  04 80 83 e4                                      str r8, [r3], #4
0062a2a8  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a2ac  04 90 82 e5                                      str sb, [r2, #4]
0062a2b0  04 a0 83 e5                                      str sl, [r3, #4]
0062a2b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a2b8  01 20 a0 e1                                      mov r2, r1
0062a2bc  04 00 92 e4                                      ldr r0, [r2], #4
0062a2c0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a2c4  04 00 83 e4                                      str r0, [r3], #4
0062a2c8  04 10 91 e5                                      ldr r1, [r1, #4]
0062a2cc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a2d0  04 10 80 e5                                      str r1, [r0, #4]
0062a2d4  04 20 92 e5                                      ldr r2, [r2, #4]
0062a2d8  04 20 83 e5                                      str r2, [r3, #4]
0062a2dc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b924, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b924  01 00 53 e3                                      cmp r3, #1
0062b928  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b92c  03 40 a0 e1                                      mov r4, r3
0062b930  02 b0 a0 e1                                      mov fp, r2
0062b934  29 00 00 0a                                      beq #0x62b9e0
0062b938  00 00 53 e3                                      cmp r3, #0
0062b93c  00 80 a0 03                                      moveq r8, #0
0062b940  08 90 a0 01                                      moveq sb, r8
0062b944  08 a0 a0 01                                      moveq sl, r8
0062b948  1e 00 00 0a                                      beq #0x62b9c8
0062b94c  00 80 a0 e3                                      mov r8, #0
0062b950  01 50 a0 e1                                      mov r5, r1
0062b954  00 70 a0 e3                                      mov r7, #0
0062b958  08 90 a0 e1                                      mov sb, r8
0062b95c  08 a0 a0 e1                                      mov sl, r8
0062b960  07 60 9b e7                                      ldr r6, [fp, r7]
0062b964  00 10 95 e5                                      ldr r1, [r5]
0062b968  04 70 87 e2                                      add r7, r7, #4
0062b96c  06 00 a0 e1                                      mov r0, r6
0062b970  fd 8c f3 eb                                      bl #0x30ed6c
0062b974  00 10 a0 e1                                      mov r1, r0
0062b978  08 00 a0 e1                                      mov r0, r8
0062b97c  88 8c f3 eb                                      bl #0x30eba4
0062b980  04 10 95 e5                                      ldr r1, [r5, #4]
0062b984  00 80 a0 e1                                      mov r8, r0
0062b988  06 00 a0 e1                                      mov r0, r6
0062b98c  f6 8c f3 eb                                      bl #0x30ed6c
0062b990  00 10 a0 e1                                      mov r1, r0
0062b994  09 00 a0 e1                                      mov r0, sb
0062b998  81 8c f3 eb                                      bl #0x30eba4
0062b99c  08 10 95 e5                                      ldr r1, [r5, #8]
0062b9a0  00 90 a0 e1                                      mov sb, r0
0062b9a4  06 00 a0 e1                                      mov r0, r6
0062b9a8  ef 8c f3 eb                                      bl #0x30ed6c
0062b9ac  00 10 a0 e1                                      mov r1, r0
0062b9b0  0a 00 a0 e1                                      mov r0, sl
0062b9b4  7a 8c f3 eb                                      bl #0x30eba4
0062b9b8  01 40 54 e2                                      subs r4, r4, #1
0062b9bc  00 a0 a0 e1                                      mov sl, r0
0062b9c0  0c 50 85 e2                                      add r5, r5, #0xc
0062b9c4  e5 ff ff 1a                                      bne #0x62b960
0062b9c8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b9cc  04 80 83 e4                                      str r8, [r3], #4
0062b9d0  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b9d4  04 90 82 e5                                      str sb, [r2, #4]
0062b9d8  04 a0 83 e5                                      str sl, [r3, #4]
0062b9dc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b9e0  01 20 a0 e1                                      mov r2, r1
0062b9e4  04 00 92 e4                                      ldr r0, [r2], #4
0062b9e8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b9ec  04 00 83 e4                                      str r0, [r3], #4
0062b9f0  04 10 91 e5                                      ldr r1, [r1, #4]
0062b9f4  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b9f8  04 10 80 e5                                      str r1, [r0, #4]
0062b9fc  04 20 92 e5                                      ldr r2, [r2, #4]
0062ba00  04 20 83 e5                                      str r2, [r3, #4]
0062ba04  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062c5ec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c5ec  01 00 a0 e1                                      mov r0, r1
0062c5f0  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c5f4  02 10 a0 e1                                      mov r1, r2
0062c5f8  03 20 a0 e1                                      mov r2, r3
0062c5fc  00 30 9d e5                                      ldr r3, [sp]
0062c600  00 c0 8d e5                                      str ip, [sp]
0062c604  ba ff ff ea                                      b #0x62c4f4

; FUNCTION 0x0062c700, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c700  01 00 a0 e1                                      mov r0, r1
0062c704  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c708  02 10 a0 e1                                      mov r1, r2
0062c70c  03 20 a0 e1                                      mov r2, r3
0062c710  00 30 9d e5                                      ldr r3, [sp]
0062c714  00 c0 8d e5                                      str ip, [sp]
0062c718  ba ff ff ea                                      b #0x62c608
