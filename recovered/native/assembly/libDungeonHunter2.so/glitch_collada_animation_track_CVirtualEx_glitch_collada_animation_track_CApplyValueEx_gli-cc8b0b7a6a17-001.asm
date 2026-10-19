; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed70, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed70  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getValueSize() const
; decoder-mode: arm
0060ef34  0c 00 a0 e3                                      mov r0, #0xc
0060ef38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f6d8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f6d8  10 40 2d e9                                      push {r4, lr}
0060f6dc  00 40 a0 e1                                      mov r4, r0
0060f6e0  f2 fa f3 eb                                      bl #0x30e2b0
0060f6e4  04 00 a0 e1                                      mov r0, r4
0060f6e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610d00, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getInstance()
; decoder-mode: arm
00610d00  70 40 2d e9                                      push {r4, r5, r6, lr}
00610d04  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610d08  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610d0c  04 40 8f e0                                      add r4, pc, r4
00610d10  03 60 94 e7                                      ldr r6, [r4, r3]
00610d14  00 30 96 e5                                      ldr r3, [r6]
00610d18  01 00 13 e3                                      tst r3, #1
00610d1c  02 00 00 0a                                      beq #0x610d2c
00610d20  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610d24  05 00 94 e7                                      ldr r0, [r4, r5]
00610d28  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610d2c  06 00 a0 e1                                      mov r0, r6
00610d30  8d f6 f3 eb                                      bl #0x30e76c
00610d34  00 00 50 e3                                      cmp r0, #0
00610d38  f8 ff ff 0a                                      beq #0x610d20
00610d3c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610d40  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610d44  06 00 a0 e1                                      mov r0, r6
00610d48  03 30 94 e7                                      ldr r3, [r4, r3]
00610d4c  05 60 94 e7                                      ldr r6, [r4, r5]
00610d50  08 30 83 e2                                      add r3, r3, #8
00610d54  00 30 86 e5                                      str r3, [r6]
00610d58  37 f7 f3 eb                                      bl #0x30ea3c
00610d5c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610d60  06 00 a0 e1                                      mov r0, r6
00610d64  03 10 94 e7                                      ldr r1, [r4, r3]
00610d68  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610d6c  03 20 94 e7                                      ldr r2, [r4, r3]
00610d70  63 f5 f3 eb                                      bl #0x30e304
00610d74  05 00 94 e7                                      ldr r0, [r4, r5]
00610d78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610d7c  84 3d 38 00 98 49 00 00 24 13 00 00 2c 47 00 00  .byte 0x84, 0x3d, 0x38, 0x00, 0x98, 0x49, 0x00, 0x00, 0x24, 0x13, 0x00, 0x00, 0x2c, 0x47, 0x00, 0x00
00610d8c  40 1b 00 00 90 18 00 00                          .byte 0x40, 0x1b, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618c0c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618c0c  00 20 a0 e3                                      mov r2, #0
00618c10  01 30 a0 e1                                      mov r3, r1
00618c14  01 20 c3 e4                                      strb r2, [r3], #1
00618c18  01 30 83 e2                                      add r3, r3, #1
00618c1c  01 20 c1 e5                                      strb r2, [r1, #1]
00618c20  01 20 c3 e4                                      strb r2, [r3], #1
00618c24  01 20 c3 e4                                      strb r2, [r3], #1
00618c28  01 20 c3 e4                                      strb r2, [r3], #1
00618c2c  01 20 c3 e4                                      strb r2, [r3], #1
00618c30  01 20 c3 e4                                      strb r2, [r3], #1
00618c34  01 20 c3 e4                                      strb r2, [r3], #1
00618c38  01 20 c3 e4                                      strb r2, [r3], #1
00618c3c  01 20 c3 e4                                      strb r2, [r3], #1
00618c40  01 20 c3 e4                                      strb r2, [r3], #1
00618c44  00 20 c3 e5                                      strb r2, [r3]
00618c48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061df88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061df88  01 00 a0 e1                                      mov r0, r1
0061df8c  02 10 a0 e1                                      mov r1, r2
0061df90  03 20 a0 e1                                      mov r2, r3
0061df94  df ff ff ea                                      b #0x61df18

; FUNCTION 0x0061e050, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061e050  01 00 a0 e1                                      mov r0, r1
0061e054  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e058  02 10 a0 e1                                      mov r1, r2
0061e05c  03 20 a0 e1                                      mov r2, r3
0061e060  00 30 9d e5                                      ldr r3, [sp]
0061e064  00 c0 8d e5                                      str ip, [sp]
0061e068  ca ff ff ea                                      b #0x61df98

; FUNCTION 0x0061e0d8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061e0d8  01 00 a0 e1                                      mov r0, r1
0061e0dc  02 10 a0 e1                                      mov r1, r2
0061e0e0  03 20 a0 e1                                      mov r2, r3
0061e0e4  00 30 9d e5                                      ldr r3, [sp]
0061e0e8  df ff ff ea                                      b #0x61e06c

; FUNCTION 0x0061e1c0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061e1c0  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e1c4  01 00 a0 e1                                      mov r0, r1
0061e1c8  02 10 a0 e1                                      mov r1, r2
0061e1cc  03 20 a0 e1                                      mov r2, r3
0061e1d0  00 30 9d e5                                      ldr r3, [sp]
0061e1d4  00 c0 8d e5                                      str ip, [sp]
0061e1d8  08 c0 9d e5                                      ldr ip, [sp, #8]
0061e1dc  04 c0 8d e5                                      str ip, [sp, #4]
0061e1e0  c1 ff ff ea                                      b #0x61e0ec

; FUNCTION 0x0062069c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0062069c  10 40 2d e9                                      push {r4, lr}
006206a0  00 30 91 e5                                      ldr r3, [r1]
006206a4  01 00 a0 e1                                      mov r0, r1
006206a8  02 40 a0 e1                                      mov r4, r2
006206ac  0f e0 a0 e1                                      mov lr, pc
006206b0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
006206b4  00 30 90 e5                                      ldr r3, [r0]
006206b8  00 30 84 e5                                      str r3, [r4]
006206bc  04 30 90 e5                                      ldr r3, [r0, #4]
006206c0  04 30 84 e5                                      str r3, [r4, #4]
006206c4  08 30 90 e5                                      ldr r3, [r0, #8]
006206c8  08 30 84 e5                                      str r3, [r4, #8]
006206cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622c40, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622c40  10 40 2d e9                                      push {r4, lr}
00622c44  02 00 a0 e1                                      mov r0, r2
00622c48  00 30 92 e5                                      ldr r3, [r2]
00622c4c  0f e0 a0 e1                                      mov lr, pc
00622c50  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622c54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623638, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623638  01 00 a0 e1                                      mov r0, r1
0062363c  02 10 a0 e1                                      mov r1, r2
00623640  03 20 a0 e1                                      mov r2, r3
00623644  00 30 9d e5                                      ldr r3, [sp]
00623648  e9 ff ff ea                                      b #0x6235f4

; FUNCTION 0x00623690, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623690  04 c0 9d e5                                      ldr ip, [sp, #4]
00623694  01 00 a0 e1                                      mov r0, r1
00623698  02 10 a0 e1                                      mov r1, r2
0062369c  03 20 a0 e1                                      mov r2, r3
006236a0  00 30 9d e5                                      ldr r3, [sp]
006236a4  00 c0 8d e5                                      str ip, [sp]
006236a8  08 c0 9d e5                                      ldr ip, [sp, #8]
006236ac  04 c0 8d e5                                      str ip, [sp, #4]
006236b0  e5 ff ff ea                                      b #0x62364c

; FUNCTION 0x0062a034, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a034  01 00 53 e3                                      cmp r3, #1
0062a038  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a03c  03 40 a0 e1                                      mov r4, r3
0062a040  02 b0 a0 e1                                      mov fp, r2
0062a044  29 00 00 0a                                      beq #0x62a0f0
0062a048  00 00 53 e3                                      cmp r3, #0
0062a04c  00 80 a0 03                                      moveq r8, #0
0062a050  08 90 a0 01                                      moveq sb, r8
0062a054  08 a0 a0 01                                      moveq sl, r8
0062a058  1e 00 00 0a                                      beq #0x62a0d8
0062a05c  00 80 a0 e3                                      mov r8, #0
0062a060  01 50 a0 e1                                      mov r5, r1
0062a064  00 70 a0 e3                                      mov r7, #0
0062a068  08 90 a0 e1                                      mov sb, r8
0062a06c  08 a0 a0 e1                                      mov sl, r8
0062a070  07 60 9b e7                                      ldr r6, [fp, r7]
0062a074  00 10 95 e5                                      ldr r1, [r5]
0062a078  04 70 87 e2                                      add r7, r7, #4
0062a07c  06 00 a0 e1                                      mov r0, r6
0062a080  39 93 f3 eb                                      bl #0x30ed6c
0062a084  00 10 a0 e1                                      mov r1, r0
0062a088  08 00 a0 e1                                      mov r0, r8
0062a08c  c4 92 f3 eb                                      bl #0x30eba4
0062a090  04 10 95 e5                                      ldr r1, [r5, #4]
0062a094  00 80 a0 e1                                      mov r8, r0
0062a098  06 00 a0 e1                                      mov r0, r6
0062a09c  32 93 f3 eb                                      bl #0x30ed6c
0062a0a0  00 10 a0 e1                                      mov r1, r0
0062a0a4  09 00 a0 e1                                      mov r0, sb
0062a0a8  bd 92 f3 eb                                      bl #0x30eba4
0062a0ac  08 10 95 e5                                      ldr r1, [r5, #8]
0062a0b0  00 90 a0 e1                                      mov sb, r0
0062a0b4  06 00 a0 e1                                      mov r0, r6
0062a0b8  2b 93 f3 eb                                      bl #0x30ed6c
0062a0bc  00 10 a0 e1                                      mov r1, r0
0062a0c0  0a 00 a0 e1                                      mov r0, sl
0062a0c4  b6 92 f3 eb                                      bl #0x30eba4
0062a0c8  01 40 54 e2                                      subs r4, r4, #1
0062a0cc  00 a0 a0 e1                                      mov sl, r0
0062a0d0  0c 50 85 e2                                      add r5, r5, #0xc
0062a0d4  e5 ff ff 1a                                      bne #0x62a070
0062a0d8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a0dc  04 80 83 e4                                      str r8, [r3], #4
0062a0e0  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a0e4  04 90 82 e5                                      str sb, [r2, #4]
0062a0e8  04 a0 83 e5                                      str sl, [r3, #4]
0062a0ec  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a0f0  01 20 a0 e1                                      mov r2, r1
0062a0f4  04 00 92 e4                                      ldr r0, [r2], #4
0062a0f8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a0fc  04 00 83 e4                                      str r0, [r3], #4
0062a100  04 10 91 e5                                      ldr r1, [r1, #4]
0062a104  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a108  04 10 80 e5                                      str r1, [r0, #4]
0062a10c  04 20 92 e5                                      ldr r2, [r2, #4]
0062a110  04 20 83 e5                                      str r2, [r3, #4]
0062a114  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b75c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b75c  01 00 53 e3                                      cmp r3, #1
0062b760  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b764  03 40 a0 e1                                      mov r4, r3
0062b768  02 b0 a0 e1                                      mov fp, r2
0062b76c  29 00 00 0a                                      beq #0x62b818
0062b770  00 00 53 e3                                      cmp r3, #0
0062b774  00 80 a0 03                                      moveq r8, #0
0062b778  08 90 a0 01                                      moveq sb, r8
0062b77c  08 a0 a0 01                                      moveq sl, r8
0062b780  1e 00 00 0a                                      beq #0x62b800
0062b784  00 80 a0 e3                                      mov r8, #0
0062b788  01 50 a0 e1                                      mov r5, r1
0062b78c  00 70 a0 e3                                      mov r7, #0
0062b790  08 90 a0 e1                                      mov sb, r8
0062b794  08 a0 a0 e1                                      mov sl, r8
0062b798  07 60 9b e7                                      ldr r6, [fp, r7]
0062b79c  00 10 95 e5                                      ldr r1, [r5]
0062b7a0  04 70 87 e2                                      add r7, r7, #4
0062b7a4  06 00 a0 e1                                      mov r0, r6
0062b7a8  6f 8d f3 eb                                      bl #0x30ed6c
0062b7ac  00 10 a0 e1                                      mov r1, r0
0062b7b0  08 00 a0 e1                                      mov r0, r8
0062b7b4  fa 8c f3 eb                                      bl #0x30eba4
0062b7b8  04 10 95 e5                                      ldr r1, [r5, #4]
0062b7bc  00 80 a0 e1                                      mov r8, r0
0062b7c0  06 00 a0 e1                                      mov r0, r6
0062b7c4  68 8d f3 eb                                      bl #0x30ed6c
0062b7c8  00 10 a0 e1                                      mov r1, r0
0062b7cc  09 00 a0 e1                                      mov r0, sb
0062b7d0  f3 8c f3 eb                                      bl #0x30eba4
0062b7d4  08 10 95 e5                                      ldr r1, [r5, #8]
0062b7d8  00 90 a0 e1                                      mov sb, r0
0062b7dc  06 00 a0 e1                                      mov r0, r6
0062b7e0  61 8d f3 eb                                      bl #0x30ed6c
0062b7e4  00 10 a0 e1                                      mov r1, r0
0062b7e8  0a 00 a0 e1                                      mov r0, sl
0062b7ec  ec 8c f3 eb                                      bl #0x30eba4
0062b7f0  01 40 54 e2                                      subs r4, r4, #1
0062b7f4  00 a0 a0 e1                                      mov sl, r0
0062b7f8  0c 50 85 e2                                      add r5, r5, #0xc
0062b7fc  e5 ff ff 1a                                      bne #0x62b798
0062b800  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b804  04 80 83 e4                                      str r8, [r3], #4
0062b808  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b80c  04 90 82 e5                                      str sb, [r2, #4]
0062b810  04 a0 83 e5                                      str sl, [r3, #4]
0062b814  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b818  01 20 a0 e1                                      mov r2, r1
0062b81c  04 00 92 e4                                      ldr r0, [r2], #4
0062b820  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b824  04 00 83 e4                                      str r0, [r3], #4
0062b828  04 10 91 e5                                      ldr r1, [r1, #4]
0062b82c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b830  04 10 80 e5                                      str r1, [r0, #4]
0062b834  04 20 92 e5                                      ldr r2, [r2, #4]
0062b838  04 20 83 e5                                      str r2, [r3, #4]
0062b83c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062ca3c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062ca3c  01 00 a0 e1                                      mov r0, r1
0062ca40  04 c0 9d e5                                      ldr ip, [sp, #4]
0062ca44  02 10 a0 e1                                      mov r1, r2
0062ca48  03 20 a0 e1                                      mov r2, r3
0062ca4c  00 30 9d e5                                      ldr r3, [sp]
0062ca50  00 c0 8d e5                                      str ip, [sp]
0062ca54  ba ff ff ea                                      b #0x62c944

; FUNCTION 0x0062cb50, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062cb50  01 00 a0 e1                                      mov r0, r1
0062cb54  04 c0 9d e5                                      ldr ip, [sp, #4]
0062cb58  02 10 a0 e1                                      mov r1, r2
0062cb5c  03 20 a0 e1                                      mov r2, r3
0062cb60  00 30 9d e5                                      ldr r3, [sp]
0062cb64  00 c0 8d e5                                      str ip, [sp]
0062cb68  ba ff ff ea                                      b #0x62ca58
