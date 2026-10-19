; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed64, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed64  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getValueSize() const
; decoder-mode: arm
0060ef4c  0c 00 a0 e3                                      mov r0, #0xc
0060ef50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f69c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f69c  10 40 2d e9                                      push {r4, lr}
0060f6a0  00 40 a0 e1                                      mov r4, r0
0060f6a4  01 fb f3 eb                                      bl #0x30e2b0
0060f6a8  04 00 a0 e1                                      mov r0, r4
0060f6ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610b44, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getInstance()
; decoder-mode: arm
00610b44  70 40 2d e9                                      push {r4, r5, r6, lr}
00610b48  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610b4c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610b50  04 40 8f e0                                      add r4, pc, r4
00610b54  03 60 94 e7                                      ldr r6, [r4, r3]
00610b58  00 30 96 e5                                      ldr r3, [r6]
00610b5c  01 00 13 e3                                      tst r3, #1
00610b60  02 00 00 0a                                      beq #0x610b70
00610b64  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610b68  05 00 94 e7                                      ldr r0, [r4, r5]
00610b6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610b70  06 00 a0 e1                                      mov r0, r6
00610b74  fc f6 f3 eb                                      bl #0x30e76c
00610b78  00 00 50 e3                                      cmp r0, #0
00610b7c  f8 ff ff 0a                                      beq #0x610b64
00610b80  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610b84  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610b88  06 00 a0 e1                                      mov r0, r6
00610b8c  03 30 94 e7                                      ldr r3, [r4, r3]
00610b90  05 60 94 e7                                      ldr r6, [r4, r5]
00610b94  08 30 83 e2                                      add r3, r3, #8
00610b98  00 30 86 e5                                      str r3, [r6]
00610b9c  a6 f7 f3 eb                                      bl #0x30ea3c
00610ba0  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610ba4  06 00 a0 e1                                      mov r0, r6
00610ba8  03 10 94 e7                                      ldr r1, [r4, r3]
00610bac  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610bb0  03 20 94 e7                                      ldr r2, [r4, r3]
00610bb4  d2 f5 f3 eb                                      bl #0x30e304
00610bb8  05 00 94 e7                                      ldr r0, [r4, r5]
00610bbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610bc0  40 3f 38 00 04 33 00 00 44 38 00 00 ec 12 00 00  .byte 0x40, 0x3f, 0x38, 0x00, 0x04, 0x33, 0x00, 0x00, 0x44, 0x38, 0x00, 0x00, 0xec, 0x12, 0x00, 0x00
00610bd0  40 38 00 00 90 18 00 00                          .byte 0x40, 0x38, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618b4c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618b4c  00 20 a0 e3                                      mov r2, #0
00618b50  01 30 a0 e1                                      mov r3, r1
00618b54  01 20 c3 e4                                      strb r2, [r3], #1
00618b58  01 30 83 e2                                      add r3, r3, #1
00618b5c  01 20 c1 e5                                      strb r2, [r1, #1]
00618b60  01 20 c3 e4                                      strb r2, [r3], #1
00618b64  01 20 c3 e4                                      strb r2, [r3], #1
00618b68  01 20 c3 e4                                      strb r2, [r3], #1
00618b6c  01 20 c3 e4                                      strb r2, [r3], #1
00618b70  01 20 c3 e4                                      strb r2, [r3], #1
00618b74  01 20 c3 e4                                      strb r2, [r3], #1
00618b78  01 20 c3 e4                                      strb r2, [r3], #1
00618b7c  01 20 c3 e4                                      strb r2, [r3], #1
00618b80  01 20 c3 e4                                      strb r2, [r3], #1
00618b84  00 20 c3 e5                                      strb r2, [r3]
00618b88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061dcbc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061dcbc  01 00 a0 e1                                      mov r0, r1
0061dcc0  02 10 a0 e1                                      mov r1, r2
0061dcc4  03 20 a0 e1                                      mov r2, r3
0061dcc8  df ff ff ea                                      b #0x61dc4c

; FUNCTION 0x0061dd84, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061dd84  01 00 a0 e1                                      mov r0, r1
0061dd88  04 c0 9d e5                                      ldr ip, [sp, #4]
0061dd8c  02 10 a0 e1                                      mov r1, r2
0061dd90  03 20 a0 e1                                      mov r2, r3
0061dd94  00 30 9d e5                                      ldr r3, [sp]
0061dd98  00 c0 8d e5                                      str ip, [sp]
0061dd9c  ca ff ff ea                                      b #0x61dccc

; FUNCTION 0x0061de0c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061de0c  01 00 a0 e1                                      mov r0, r1
0061de10  02 10 a0 e1                                      mov r1, r2
0061de14  03 20 a0 e1                                      mov r2, r3
0061de18  00 30 9d e5                                      ldr r3, [sp]
0061de1c  df ff ff ea                                      b #0x61dda0

; FUNCTION 0x0061def4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061def4  04 c0 9d e5                                      ldr ip, [sp, #4]
0061def8  01 00 a0 e1                                      mov r0, r1
0061defc  02 10 a0 e1                                      mov r1, r2
0061df00  03 20 a0 e1                                      mov r2, r3
0061df04  00 30 9d e5                                      ldr r3, [sp]
0061df08  00 c0 8d e5                                      str ip, [sp]
0061df0c  08 c0 9d e5                                      ldr ip, [sp, #8]
0061df10  04 c0 8d e5                                      str ip, [sp, #4]
0061df14  c1 ff ff ea                                      b #0x61de20

; FUNCTION 0x00620738, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620738  10 40 2d e9                                      push {r4, lr}
0062073c  00 30 91 e5                                      ldr r3, [r1]
00620740  01 00 a0 e1                                      mov r0, r1
00620744  02 40 a0 e1                                      mov r4, r2
00620748  0f e0 a0 e1                                      mov lr, pc
0062074c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00620750  00 30 90 e5                                      ldr r3, [r0]
00620754  00 30 84 e5                                      str r3, [r4]
00620758  04 30 90 e5                                      ldr r3, [r0, #4]
0062075c  04 30 84 e5                                      str r3, [r4, #4]
00620760  08 30 90 e5                                      ldr r3, [r0, #8]
00620764  08 30 84 e5                                      str r3, [r4, #8]
00620768  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006233f8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006233f8  01 00 a0 e1                                      mov r0, r1
006233fc  02 10 a0 e1                                      mov r1, r2
00623400  03 20 a0 e1                                      mov r2, r3
00623404  00 30 9d e5                                      ldr r3, [sp]
00623408  e9 ff ff ea                                      b #0x6233b4

; FUNCTION 0x00623450, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623450  04 c0 9d e5                                      ldr ip, [sp, #4]
00623454  01 00 a0 e1                                      mov r0, r1
00623458  02 10 a0 e1                                      mov r1, r2
0062345c  03 20 a0 e1                                      mov r2, r3
00623460  00 30 9d e5                                      ldr r3, [sp]
00623464  00 c0 8d e5                                      str ip, [sp]
00623468  08 c0 9d e5                                      ldr ip, [sp, #8]
0062346c  04 c0 8d e5                                      str ip, [sp, #4]
00623470  e5 ff ff ea                                      b #0x62340c

; FUNCTION 0x006238f4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006238f4  10 40 2d e9                                      push {r4, lr}
006238f8  02 00 a0 e1                                      mov r0, r2
006238fc  00 30 92 e5                                      ldr r3, [r2]
00623900  0f e0 a0 e1                                      mov lr, pc
00623904  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623908  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006278a8, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006278a8  01 00 53 e3                                      cmp r3, #1
006278ac  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006278b0  03 40 a0 e1                                      mov r4, r3
006278b4  02 b0 a0 e1                                      mov fp, r2
006278b8  29 00 00 0a                                      beq #0x627964
006278bc  00 00 53 e3                                      cmp r3, #0
006278c0  00 80 a0 03                                      moveq r8, #0
006278c4  08 90 a0 01                                      moveq sb, r8
006278c8  08 a0 a0 01                                      moveq sl, r8
006278cc  1e 00 00 0a                                      beq #0x62794c
006278d0  00 80 a0 e3                                      mov r8, #0
006278d4  01 50 a0 e1                                      mov r5, r1
006278d8  00 70 a0 e3                                      mov r7, #0
006278dc  08 90 a0 e1                                      mov sb, r8
006278e0  08 a0 a0 e1                                      mov sl, r8
006278e4  07 60 9b e7                                      ldr r6, [fp, r7]
006278e8  00 10 95 e5                                      ldr r1, [r5]
006278ec  04 70 87 e2                                      add r7, r7, #4
006278f0  06 00 a0 e1                                      mov r0, r6
006278f4  1c 9d f3 eb                                      bl #0x30ed6c
006278f8  00 10 a0 e1                                      mov r1, r0
006278fc  08 00 a0 e1                                      mov r0, r8
00627900  a7 9c f3 eb                                      bl #0x30eba4
00627904  04 10 95 e5                                      ldr r1, [r5, #4]
00627908  00 80 a0 e1                                      mov r8, r0
0062790c  06 00 a0 e1                                      mov r0, r6
00627910  15 9d f3 eb                                      bl #0x30ed6c
00627914  00 10 a0 e1                                      mov r1, r0
00627918  09 00 a0 e1                                      mov r0, sb
0062791c  a0 9c f3 eb                                      bl #0x30eba4
00627920  08 10 95 e5                                      ldr r1, [r5, #8]
00627924  00 90 a0 e1                                      mov sb, r0
00627928  06 00 a0 e1                                      mov r0, r6
0062792c  0e 9d f3 eb                                      bl #0x30ed6c
00627930  00 10 a0 e1                                      mov r1, r0
00627934  0a 00 a0 e1                                      mov r0, sl
00627938  99 9c f3 eb                                      bl #0x30eba4
0062793c  01 40 54 e2                                      subs r4, r4, #1
00627940  00 a0 a0 e1                                      mov sl, r0
00627944  0c 50 85 e2                                      add r5, r5, #0xc
00627948  e5 ff ff 1a                                      bne #0x6278e4
0062794c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627950  04 80 83 e4                                      str r8, [r3], #4
00627954  28 20 9d e5                                      ldr r2, [sp, #0x28]
00627958  04 90 82 e5                                      str sb, [r2, #4]
0062795c  04 a0 83 e5                                      str sl, [r3, #4]
00627960  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00627964  01 20 a0 e1                                      mov r2, r1
00627968  04 00 92 e4                                      ldr r0, [r2], #4
0062796c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627970  04 00 83 e4                                      str r0, [r3], #4
00627974  04 10 91 e5                                      ldr r1, [r1, #4]
00627978  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062797c  04 10 80 e5                                      str r1, [r0, #4]
00627980  04 20 92 e5                                      ldr r2, [r2, #4]
00627984  04 20 83 e5                                      str r2, [r3, #4]
00627988  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b4b0, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b4b0  01 00 53 e3                                      cmp r3, #1
0062b4b4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b4b8  03 40 a0 e1                                      mov r4, r3
0062b4bc  02 b0 a0 e1                                      mov fp, r2
0062b4c0  29 00 00 0a                                      beq #0x62b56c
0062b4c4  00 00 53 e3                                      cmp r3, #0
0062b4c8  00 80 a0 03                                      moveq r8, #0
0062b4cc  08 90 a0 01                                      moveq sb, r8
0062b4d0  08 a0 a0 01                                      moveq sl, r8
0062b4d4  1e 00 00 0a                                      beq #0x62b554
0062b4d8  00 80 a0 e3                                      mov r8, #0
0062b4dc  01 50 a0 e1                                      mov r5, r1
0062b4e0  00 70 a0 e3                                      mov r7, #0
0062b4e4  08 90 a0 e1                                      mov sb, r8
0062b4e8  08 a0 a0 e1                                      mov sl, r8
0062b4ec  07 60 9b e7                                      ldr r6, [fp, r7]
0062b4f0  00 10 95 e5                                      ldr r1, [r5]
0062b4f4  04 70 87 e2                                      add r7, r7, #4
0062b4f8  06 00 a0 e1                                      mov r0, r6
0062b4fc  1a 8e f3 eb                                      bl #0x30ed6c
0062b500  00 10 a0 e1                                      mov r1, r0
0062b504  08 00 a0 e1                                      mov r0, r8
0062b508  a5 8d f3 eb                                      bl #0x30eba4
0062b50c  04 10 95 e5                                      ldr r1, [r5, #4]
0062b510  00 80 a0 e1                                      mov r8, r0
0062b514  06 00 a0 e1                                      mov r0, r6
0062b518  13 8e f3 eb                                      bl #0x30ed6c
0062b51c  00 10 a0 e1                                      mov r1, r0
0062b520  09 00 a0 e1                                      mov r0, sb
0062b524  9e 8d f3 eb                                      bl #0x30eba4
0062b528  08 10 95 e5                                      ldr r1, [r5, #8]
0062b52c  00 90 a0 e1                                      mov sb, r0
0062b530  06 00 a0 e1                                      mov r0, r6
0062b534  0c 8e f3 eb                                      bl #0x30ed6c
0062b538  00 10 a0 e1                                      mov r1, r0
0062b53c  0a 00 a0 e1                                      mov r0, sl
0062b540  97 8d f3 eb                                      bl #0x30eba4
0062b544  01 40 54 e2                                      subs r4, r4, #1
0062b548  00 a0 a0 e1                                      mov sl, r0
0062b54c  0c 50 85 e2                                      add r5, r5, #0xc
0062b550  e5 ff ff 1a                                      bne #0x62b4ec
0062b554  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b558  04 80 83 e4                                      str r8, [r3], #4
0062b55c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b560  04 90 82 e5                                      str sb, [r2, #4]
0062b564  04 a0 83 e5                                      str sl, [r3, #4]
0062b568  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b56c  01 20 a0 e1                                      mov r2, r1
0062b570  04 00 92 e4                                      ldr r0, [r2], #4
0062b574  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b578  04 00 83 e4                                      str r0, [r3], #4
0062b57c  04 10 91 e5                                      ldr r1, [r1, #4]
0062b580  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b584  04 10 80 e5                                      str r1, [r0, #4]
0062b588  04 20 92 e5                                      ldr r2, [r2, #4]
0062b58c  04 20 83 e5                                      str r2, [r3, #4]
0062b590  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062d0b4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d0b4  01 00 a0 e1                                      mov r0, r1
0062d0b8  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d0bc  02 10 a0 e1                                      mov r1, r2
0062d0c0  03 20 a0 e1                                      mov r2, r3
0062d0c4  00 30 9d e5                                      ldr r3, [sp]
0062d0c8  00 c0 8d e5                                      str ip, [sp]
0062d0cc  ba ff ff ea                                      b #0x62cfbc

; FUNCTION 0x0062d1c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d1c8  01 00 a0 e1                                      mov r0, r1
0062d1cc  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d1d0  02 10 a0 e1                                      mov r1, r2
0062d1d4  03 20 a0 e1                                      mov r2, r3
0062d1d8  00 30 9d e5                                      ldr r3, [sp]
0062d1dc  00 c0 8d e5                                      str ip, [sp]
0062d1e0  ba ff ff ea                                      b #0x62d0d0
