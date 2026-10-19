; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed68, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef44, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getValueSize() const
; decoder-mode: arm
0060ef44  0c 00 a0 e3                                      mov r0, #0xc
0060ef48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f6b0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::~CVirtualEx()
; decoder-mode: arm
0060f6b0  10 40 2d e9                                      push {r4, lr}
0060f6b4  00 40 a0 e1                                      mov r4, r0
0060f6b8  fc fa f3 eb                                      bl #0x30e2b0
0060f6bc  04 00 a0 e1                                      mov r0, r4
0060f6c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610bd8, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getInstance()
; decoder-mode: arm
00610bd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00610bdc  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610be0  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610be4  04 40 8f e0                                      add r4, pc, r4
00610be8  03 60 94 e7                                      ldr r6, [r4, r3]
00610bec  00 30 96 e5                                      ldr r3, [r6]
00610bf0  01 00 13 e3                                      tst r3, #1
00610bf4  02 00 00 0a                                      beq #0x610c04
00610bf8  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610bfc  05 00 94 e7                                      ldr r0, [r4, r5]
00610c00  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610c04  06 00 a0 e1                                      mov r0, r6
00610c08  d7 f6 f3 eb                                      bl #0x30e76c
00610c0c  00 00 50 e3                                      cmp r0, #0
00610c10  f8 ff ff 0a                                      beq #0x610bf8
00610c14  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610c18  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610c1c  06 00 a0 e1                                      mov r0, r6
00610c20  03 30 94 e7                                      ldr r3, [r4, r3]
00610c24  05 60 94 e7                                      ldr r6, [r4, r5]
00610c28  08 30 83 e2                                      add r3, r3, #8
00610c2c  00 30 86 e5                                      str r3, [r6]
00610c30  81 f7 f3 eb                                      bl #0x30ea3c
00610c34  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610c38  06 00 a0 e1                                      mov r0, r6
00610c3c  03 10 94 e7                                      ldr r1, [r4, r3]
00610c40  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610c44  03 20 94 e7                                      ldr r2, [r4, r3]
00610c48  ad f5 f3 eb                                      bl #0x30e304
00610c4c  05 00 94 e7                                      ldr r0, [r4, r5]
00610c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610c54  ac 3e 38 00 48 06 00 00 d8 44 00 00 a0 33 00 00  .byte 0xac, 0x3e, 0x38, 0x00, 0x48, 0x06, 0x00, 0x00, 0xd8, 0x44, 0x00, 0x00, 0xa0, 0x33, 0x00, 0x00
00610c64  00 16 00 00 90 18 00 00                          .byte 0x00, 0x16, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006167c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006167c4  01 00 a0 e1                                      mov r0, r1
006167c8  02 10 a0 e1                                      mov r1, r2
006167cc  03 20 a0 e1                                      mov r2, r3
006167d0  d3 ff ff ea                                      b #0x616724

; FUNCTION 0x006168e4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006168e4  01 00 a0 e1                                      mov r0, r1
006168e8  04 c0 9d e5                                      ldr ip, [sp, #4]
006168ec  02 10 a0 e1                                      mov r1, r2
006168f0  03 20 a0 e1                                      mov r2, r3
006168f4  00 30 9d e5                                      ldr r3, [sp]
006168f8  00 c0 8d e5                                      str ip, [sp]
006168fc  b4 ff ff ea                                      b #0x6167d4

; FUNCTION 0x006169d0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006169d0  01 00 a0 e1                                      mov r0, r1
006169d4  02 10 a0 e1                                      mov r1, r2
006169d8  03 20 a0 e1                                      mov r2, r3
006169dc  00 30 9d e5                                      ldr r3, [sp]
006169e0  c6 ff ff ea                                      b #0x616900

; FUNCTION 0x00616b30, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00616b30  04 c0 9d e5                                      ldr ip, [sp, #4]
00616b34  01 00 a0 e1                                      mov r0, r1
00616b38  02 10 a0 e1                                      mov r1, r2
00616b3c  03 20 a0 e1                                      mov r2, r3
00616b40  00 30 9d e5                                      ldr r3, [sp]
00616b44  00 c0 8d e5                                      str ip, [sp]
00616b48  08 c0 9d e5                                      ldr ip, [sp, #8]
00616b4c  04 c0 8d e5                                      str ip, [sp, #4]
00616b50  a3 ff ff ea                                      b #0x6169e4

; FUNCTION 0x00618b8c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618b8c  00 20 a0 e3                                      mov r2, #0
00618b90  01 30 a0 e1                                      mov r3, r1
00618b94  01 20 c3 e4                                      strb r2, [r3], #1
00618b98  01 30 83 e2                                      add r3, r3, #1
00618b9c  01 20 c1 e5                                      strb r2, [r1, #1]
00618ba0  01 20 c3 e4                                      strb r2, [r3], #1
00618ba4  01 20 c3 e4                                      strb r2, [r3], #1
00618ba8  01 20 c3 e4                                      strb r2, [r3], #1
00618bac  01 20 c3 e4                                      strb r2, [r3], #1
00618bb0  01 20 c3 e4                                      strb r2, [r3], #1
00618bb4  01 20 c3 e4                                      strb r2, [r3], #1
00618bb8  01 20 c3 e4                                      strb r2, [r3], #1
00618bbc  01 20 c3 e4                                      strb r2, [r3], #1
00618bc0  01 20 c3 e4                                      strb r2, [r3], #1
00618bc4  00 20 c3 e5                                      strb r2, [r3]
00618bc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620704, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620704  10 40 2d e9                                      push {r4, lr}
00620708  00 30 91 e5                                      ldr r3, [r1]
0062070c  01 00 a0 e1                                      mov r0, r1
00620710  02 40 a0 e1                                      mov r4, r2
00620714  0f e0 a0 e1                                      mov lr, pc
00620718  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0062071c  00 30 90 e5                                      ldr r3, [r0]
00620720  00 30 84 e5                                      str r3, [r4]
00620724  04 30 90 e5                                      ldr r3, [r0, #4]
00620728  04 30 84 e5                                      str r3, [r4, #4]
0062072c  08 30 90 e5                                      ldr r3, [r0, #8]
00620730  08 30 84 e5                                      str r3, [r4, #8]
00620734  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622c70, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622c70  10 40 2d e9                                      push {r4, lr}
00622c74  02 00 a0 e1                                      mov r0, r2
00622c78  00 30 92 e5                                      ldr r3, [r2]
00622c7c  0f e0 a0 e1                                      mov lr, pc
00622c80  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622c84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006234b8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006234b8  01 00 a0 e1                                      mov r0, r1
006234bc  02 10 a0 e1                                      mov r1, r2
006234c0  03 20 a0 e1                                      mov r2, r3
006234c4  00 30 9d e5                                      ldr r3, [sp]
006234c8  e9 ff ff ea                                      b #0x623474

; FUNCTION 0x00623510, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623510  04 c0 9d e5                                      ldr ip, [sp, #4]
00623514  01 00 a0 e1                                      mov r0, r1
00623518  02 10 a0 e1                                      mov r1, r2
0062351c  03 20 a0 e1                                      mov r2, r3
00623520  00 30 9d e5                                      ldr r3, [sp]
00623524  00 c0 8d e5                                      str ip, [sp]
00623528  08 c0 9d e5                                      ldr ip, [sp, #8]
0062352c  04 c0 8d e5                                      str ip, [sp, #4]
00623530  e5 ff ff ea                                      b #0x6234cc

; FUNCTION 0x00629e6c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00629e6c  01 00 53 e3                                      cmp r3, #1
00629e70  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629e74  03 40 a0 e1                                      mov r4, r3
00629e78  02 b0 a0 e1                                      mov fp, r2
00629e7c  29 00 00 0a                                      beq #0x629f28
00629e80  00 00 53 e3                                      cmp r3, #0
00629e84  00 80 a0 03                                      moveq r8, #0
00629e88  08 90 a0 01                                      moveq sb, r8
00629e8c  08 a0 a0 01                                      moveq sl, r8
00629e90  1e 00 00 0a                                      beq #0x629f10
00629e94  00 80 a0 e3                                      mov r8, #0
00629e98  01 50 a0 e1                                      mov r5, r1
00629e9c  00 70 a0 e3                                      mov r7, #0
00629ea0  08 90 a0 e1                                      mov sb, r8
00629ea4  08 a0 a0 e1                                      mov sl, r8
00629ea8  07 60 9b e7                                      ldr r6, [fp, r7]
00629eac  00 10 95 e5                                      ldr r1, [r5]
00629eb0  04 70 87 e2                                      add r7, r7, #4
00629eb4  06 00 a0 e1                                      mov r0, r6
00629eb8  ab 93 f3 eb                                      bl #0x30ed6c
00629ebc  00 10 a0 e1                                      mov r1, r0
00629ec0  08 00 a0 e1                                      mov r0, r8
00629ec4  36 93 f3 eb                                      bl #0x30eba4
00629ec8  04 10 95 e5                                      ldr r1, [r5, #4]
00629ecc  00 80 a0 e1                                      mov r8, r0
00629ed0  06 00 a0 e1                                      mov r0, r6
00629ed4  a4 93 f3 eb                                      bl #0x30ed6c
00629ed8  00 10 a0 e1                                      mov r1, r0
00629edc  09 00 a0 e1                                      mov r0, sb
00629ee0  2f 93 f3 eb                                      bl #0x30eba4
00629ee4  08 10 95 e5                                      ldr r1, [r5, #8]
00629ee8  00 90 a0 e1                                      mov sb, r0
00629eec  06 00 a0 e1                                      mov r0, r6
00629ef0  9d 93 f3 eb                                      bl #0x30ed6c
00629ef4  00 10 a0 e1                                      mov r1, r0
00629ef8  0a 00 a0 e1                                      mov r0, sl
00629efc  28 93 f3 eb                                      bl #0x30eba4
00629f00  01 40 54 e2                                      subs r4, r4, #1
00629f04  00 a0 a0 e1                                      mov sl, r0
00629f08  0c 50 85 e2                                      add r5, r5, #0xc
00629f0c  e5 ff ff 1a                                      bne #0x629ea8
00629f10  28 30 9d e5                                      ldr r3, [sp, #0x28]
00629f14  04 80 83 e4                                      str r8, [r3], #4
00629f18  28 20 9d e5                                      ldr r2, [sp, #0x28]
00629f1c  04 90 82 e5                                      str sb, [r2, #4]
00629f20  04 a0 83 e5                                      str sl, [r3, #4]
00629f24  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629f28  01 20 a0 e1                                      mov r2, r1
00629f2c  04 00 92 e4                                      ldr r0, [r2], #4
00629f30  28 30 9d e5                                      ldr r3, [sp, #0x28]
00629f34  04 00 83 e4                                      str r0, [r3], #4
00629f38  04 10 91 e5                                      ldr r1, [r1, #4]
00629f3c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00629f40  04 10 80 e5                                      str r1, [r0, #4]
00629f44  04 20 92 e5                                      ldr r2, [r2, #4]
00629f48  04 20 83 e5                                      str r2, [r3, #4]
00629f4c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b594, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b594  01 00 53 e3                                      cmp r3, #1
0062b598  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b59c  03 40 a0 e1                                      mov r4, r3
0062b5a0  02 b0 a0 e1                                      mov fp, r2
0062b5a4  29 00 00 0a                                      beq #0x62b650
0062b5a8  00 00 53 e3                                      cmp r3, #0
0062b5ac  00 80 a0 03                                      moveq r8, #0
0062b5b0  08 90 a0 01                                      moveq sb, r8
0062b5b4  08 a0 a0 01                                      moveq sl, r8
0062b5b8  1e 00 00 0a                                      beq #0x62b638
0062b5bc  00 80 a0 e3                                      mov r8, #0
0062b5c0  01 50 a0 e1                                      mov r5, r1
0062b5c4  00 70 a0 e3                                      mov r7, #0
0062b5c8  08 90 a0 e1                                      mov sb, r8
0062b5cc  08 a0 a0 e1                                      mov sl, r8
0062b5d0  07 60 9b e7                                      ldr r6, [fp, r7]
0062b5d4  00 10 95 e5                                      ldr r1, [r5]
0062b5d8  04 70 87 e2                                      add r7, r7, #4
0062b5dc  06 00 a0 e1                                      mov r0, r6
0062b5e0  e1 8d f3 eb                                      bl #0x30ed6c
0062b5e4  00 10 a0 e1                                      mov r1, r0
0062b5e8  08 00 a0 e1                                      mov r0, r8
0062b5ec  6c 8d f3 eb                                      bl #0x30eba4
0062b5f0  04 10 95 e5                                      ldr r1, [r5, #4]
0062b5f4  00 80 a0 e1                                      mov r8, r0
0062b5f8  06 00 a0 e1                                      mov r0, r6
0062b5fc  da 8d f3 eb                                      bl #0x30ed6c
0062b600  00 10 a0 e1                                      mov r1, r0
0062b604  09 00 a0 e1                                      mov r0, sb
0062b608  65 8d f3 eb                                      bl #0x30eba4
0062b60c  08 10 95 e5                                      ldr r1, [r5, #8]
0062b610  00 90 a0 e1                                      mov sb, r0
0062b614  06 00 a0 e1                                      mov r0, r6
0062b618  d3 8d f3 eb                                      bl #0x30ed6c
0062b61c  00 10 a0 e1                                      mov r1, r0
0062b620  0a 00 a0 e1                                      mov r0, sl
0062b624  5e 8d f3 eb                                      bl #0x30eba4
0062b628  01 40 54 e2                                      subs r4, r4, #1
0062b62c  00 a0 a0 e1                                      mov sl, r0
0062b630  0c 50 85 e2                                      add r5, r5, #0xc
0062b634  e5 ff ff 1a                                      bne #0x62b5d0
0062b638  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b63c  04 80 83 e4                                      str r8, [r3], #4
0062b640  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b644  04 90 82 e5                                      str sb, [r2, #4]
0062b648  04 a0 83 e5                                      str sl, [r3, #4]
0062b64c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b650  01 20 a0 e1                                      mov r2, r1
0062b654  04 00 92 e4                                      ldr r0, [r2], #4
0062b658  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b65c  04 00 83 e4                                      str r0, [r3], #4
0062b660  04 10 91 e5                                      ldr r1, [r1, #4]
0062b664  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b668  04 10 80 e5                                      str r1, [r0, #4]
0062b66c  04 20 92 e5                                      ldr r2, [r2, #4]
0062b670  04 20 83 e5                                      str r2, [r3, #4]
0062b674  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062ce8c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062ce8c  01 00 a0 e1                                      mov r0, r1
0062ce90  04 c0 9d e5                                      ldr ip, [sp, #4]
0062ce94  02 10 a0 e1                                      mov r1, r2
0062ce98  03 20 a0 e1                                      mov r2, r3
0062ce9c  00 30 9d e5                                      ldr r3, [sp]
0062cea0  00 c0 8d e5                                      str ip, [sp]
0062cea4  ba ff ff ea                                      b #0x62cd94

; FUNCTION 0x0062cfa0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062cfa0  01 00 a0 e1                                      mov r0, r1
0062cfa4  04 c0 9d e5                                      ldr ip, [sp, #4]
0062cfa8  02 10 a0 e1                                      mov r1, r2
0062cfac  03 20 a0 e1                                      mov r2, r3
0062cfb0  00 30 9d e5                                      ldr r3, [sp]
0062cfb4  00 c0 8d e5                                      str ip, [sp]
0062cfb8  ba ff ff ea                                      b #0x62cea8
