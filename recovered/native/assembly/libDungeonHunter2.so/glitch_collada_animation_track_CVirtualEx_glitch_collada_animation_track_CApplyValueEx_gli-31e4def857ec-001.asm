; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed4c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efb0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getValueSize() const
; decoder-mode: arm
0060efb0  0c 00 a0 e3                                      mov r0, #0xc
0060efb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f624, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f624  10 40 2d e9                                      push {r4, lr}
0060f628  00 40 a0 e1                                      mov r4, r0
0060f62c  1f fb f3 eb                                      bl #0x30e2b0
0060f630  04 00 a0 e1                                      mov r0, r4
0060f634  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006107cc, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getInstance()
; decoder-mode: arm
006107cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006107d0  70 40 9f e5                                      ldr r4, [pc, #0x70]
006107d4  70 30 9f e5                                      ldr r3, [pc, #0x70]
006107d8  04 40 8f e0                                      add r4, pc, r4
006107dc  03 60 94 e7                                      ldr r6, [r4, r3]
006107e0  00 30 96 e5                                      ldr r3, [r6]
006107e4  01 00 13 e3                                      tst r3, #1
006107e8  02 00 00 0a                                      beq #0x6107f8
006107ec  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006107f0  05 00 94 e7                                      ldr r0, [r4, r5]
006107f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006107f8  06 00 a0 e1                                      mov r0, r6
006107fc  da f7 f3 eb                                      bl #0x30e76c
00610800  00 00 50 e3                                      cmp r0, #0
00610804  f8 ff ff 0a                                      beq #0x6107ec
00610808  44 30 9f e5                                      ldr r3, [pc, #0x44]
0061080c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610810  06 00 a0 e1                                      mov r0, r6
00610814  03 30 94 e7                                      ldr r3, [r4, r3]
00610818  05 60 94 e7                                      ldr r6, [r4, r5]
0061081c  08 30 83 e2                                      add r3, r3, #8
00610820  00 30 86 e5                                      str r3, [r6]
00610824  84 f8 f3 eb                                      bl #0x30ea3c
00610828  28 30 9f e5                                      ldr r3, [pc, #0x28]
0061082c  06 00 a0 e1                                      mov r0, r6
00610830  03 10 94 e7                                      ldr r1, [r4, r3]
00610834  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610838  03 20 94 e7                                      ldr r2, [r4, r3]
0061083c  b0 f6 f3 eb                                      bl #0x30e304
00610840  05 00 94 e7                                      ldr r0, [r4, r5]
00610844  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610848  b8 42 38 00 90 19 00 00 c4 13 00 00 88 3f 00 00  .byte 0xb8, 0x42, 0x38, 0x00, 0x90, 0x19, 0x00, 0x00, 0xc4, 0x13, 0x00, 0x00, 0x88, 0x3f, 0x00, 0x00
00610858  e4 1b 00 00 90 18 00 00                          .byte 0xe4, 0x1b, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00615ed8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00615ed8  01 00 a0 e1                                      mov r0, r1
00615edc  02 10 a0 e1                                      mov r1, r2
00615ee0  03 20 a0 e1                                      mov r2, r3
00615ee4  00 30 9d e5                                      ldr r3, [sp]
00615ee8  df ff ff ea                                      b #0x615e6c

; FUNCTION 0x006189cc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
006189cc  00 20 a0 e3                                      mov r2, #0
006189d0  01 30 a0 e1                                      mov r3, r1
006189d4  01 20 c3 e4                                      strb r2, [r3], #1
006189d8  01 30 83 e2                                      add r3, r3, #1
006189dc  01 20 c1 e5                                      strb r2, [r1, #1]
006189e0  01 20 c3 e4                                      strb r2, [r3], #1
006189e4  01 20 c3 e4                                      strb r2, [r3], #1
006189e8  01 20 c3 e4                                      strb r2, [r3], #1
006189ec  01 20 c3 e4                                      strb r2, [r3], #1
006189f0  01 20 c3 e4                                      strb r2, [r3], #1
006189f4  01 20 c3 e4                                      strb r2, [r3], #1
006189f8  01 20 c3 e4                                      strb r2, [r3], #1
006189fc  01 20 c3 e4                                      strb r2, [r3], #1
00618a00  01 20 c3 e4                                      strb r2, [r3], #1
00618a04  00 20 c3 e5                                      strb r2, [r3]
00618a08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061dc28, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061dc28  04 c0 9d e5                                      ldr ip, [sp, #4]
0061dc2c  01 00 a0 e1                                      mov r0, r1
0061dc30  02 10 a0 e1                                      mov r1, r2
0061dc34  03 20 a0 e1                                      mov r2, r3
0061dc38  00 30 9d e5                                      ldr r3, [sp]
0061dc3c  00 c0 8d e5                                      str ip, [sp]
0061dc40  08 c0 9d e5                                      ldr ip, [sp, #8]
0061dc44  04 c0 8d e5                                      str ip, [sp, #4]
0061dc48  c1 ff ff ea                                      b #0x61db54

; FUNCTION 0x0061ffac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061ffac  01 00 a0 e1                                      mov r0, r1
0061ffb0  02 10 a0 e1                                      mov r1, r2
0061ffb4  03 20 a0 e1                                      mov r2, r3
0061ffb8  df ff ff ea                                      b #0x61ff3c

; FUNCTION 0x00620070, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00620070  01 00 a0 e1                                      mov r0, r1
00620074  04 c0 9d e5                                      ldr ip, [sp, #4]
00620078  02 10 a0 e1                                      mov r1, r2
0062007c  03 20 a0 e1                                      mov r2, r3
00620080  00 30 9d e5                                      ldr r3, [sp]
00620084  00 c0 8d e5                                      str ip, [sp]
00620088  cb ff ff ea                                      b #0x61ffbc

; FUNCTION 0x006203c4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
006203c4  10 40 2d e9                                      push {r4, lr}
006203c8  00 30 91 e5                                      ldr r3, [r1]
006203cc  01 00 a0 e1                                      mov r0, r1
006203d0  02 40 a0 e1                                      mov r4, r2
006203d4  0f e0 a0 e1                                      mov lr, pc
006203d8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006203dc  00 30 90 e5                                      ldr r3, [r0]
006203e0  00 30 84 e5                                      str r3, [r4]
006203e4  04 30 90 e5                                      ldr r3, [r0, #4]
006203e8  04 30 84 e5                                      str r3, [r4, #4]
006203ec  08 30 90 e5                                      ldr r3, [r0, #8]
006203f0  08 30 84 e5                                      str r3, [r4, #8]
006203f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622cb8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622cb8  10 40 2d e9                                      push {r4, lr}
00622cbc  02 00 a0 e1                                      mov r0, r2
00622cc0  00 30 92 e5                                      ldr r3, [r2]
00622cc4  0f e0 a0 e1                                      mov lr, pc
00622cc8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622ccc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623b34, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623b34  01 00 a0 e1                                      mov r0, r1
00623b38  02 10 a0 e1                                      mov r1, r2
00623b3c  03 20 a0 e1                                      mov r2, r3
00623b40  00 30 9d e5                                      ldr r3, [sp]
00623b44  e9 ff ff ea                                      b #0x623af0

; FUNCTION 0x00623b8c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623b8c  04 c0 9d e5                                      ldr ip, [sp, #4]
00623b90  01 00 a0 e1                                      mov r0, r1
00623b94  02 10 a0 e1                                      mov r1, r2
00623b98  03 20 a0 e1                                      mov r2, r3
00623b9c  00 30 9d e5                                      ldr r3, [sp]
00623ba0  00 c0 8d e5                                      str ip, [sp]
00623ba4  08 c0 9d e5                                      ldr ip, [sp, #8]
00623ba8  04 c0 8d e5                                      str ip, [sp, #4]
00623bac  e5 ff ff ea                                      b #0x623b48

; FUNCTION 0x00627350, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00627350  01 00 53 e3                                      cmp r3, #1
00627354  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627358  03 40 a0 e1                                      mov r4, r3
0062735c  02 b0 a0 e1                                      mov fp, r2
00627360  29 00 00 0a                                      beq #0x62740c
00627364  00 00 53 e3                                      cmp r3, #0
00627368  00 80 a0 03                                      moveq r8, #0
0062736c  08 90 a0 01                                      moveq sb, r8
00627370  08 a0 a0 01                                      moveq sl, r8
00627374  1e 00 00 0a                                      beq #0x6273f4
00627378  00 80 a0 e3                                      mov r8, #0
0062737c  01 50 a0 e1                                      mov r5, r1
00627380  00 70 a0 e3                                      mov r7, #0
00627384  08 90 a0 e1                                      mov sb, r8
00627388  08 a0 a0 e1                                      mov sl, r8
0062738c  07 60 9b e7                                      ldr r6, [fp, r7]
00627390  00 10 95 e5                                      ldr r1, [r5]
00627394  04 70 87 e2                                      add r7, r7, #4
00627398  06 00 a0 e1                                      mov r0, r6
0062739c  72 9e f3 eb                                      bl #0x30ed6c
006273a0  00 10 a0 e1                                      mov r1, r0
006273a4  08 00 a0 e1                                      mov r0, r8
006273a8  fd 9d f3 eb                                      bl #0x30eba4
006273ac  04 10 95 e5                                      ldr r1, [r5, #4]
006273b0  00 80 a0 e1                                      mov r8, r0
006273b4  06 00 a0 e1                                      mov r0, r6
006273b8  6b 9e f3 eb                                      bl #0x30ed6c
006273bc  00 10 a0 e1                                      mov r1, r0
006273c0  09 00 a0 e1                                      mov r0, sb
006273c4  f6 9d f3 eb                                      bl #0x30eba4
006273c8  08 10 95 e5                                      ldr r1, [r5, #8]
006273cc  00 90 a0 e1                                      mov sb, r0
006273d0  06 00 a0 e1                                      mov r0, r6
006273d4  64 9e f3 eb                                      bl #0x30ed6c
006273d8  00 10 a0 e1                                      mov r1, r0
006273dc  0a 00 a0 e1                                      mov r0, sl
006273e0  ef 9d f3 eb                                      bl #0x30eba4
006273e4  01 40 54 e2                                      subs r4, r4, #1
006273e8  00 a0 a0 e1                                      mov sl, r0
006273ec  0c 50 85 e2                                      add r5, r5, #0xc
006273f0  e5 ff ff 1a                                      bne #0x62738c
006273f4  28 30 9d e5                                      ldr r3, [sp, #0x28]
006273f8  04 80 83 e4                                      str r8, [r3], #4
006273fc  28 20 9d e5                                      ldr r2, [sp, #0x28]
00627400  04 90 82 e5                                      str sb, [r2, #4]
00627404  04 a0 83 e5                                      str sl, [r3, #4]
00627408  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062740c  01 20 a0 e1                                      mov r2, r1
00627410  04 00 92 e4                                      ldr r0, [r2], #4
00627414  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627418  04 00 83 e4                                      str r0, [r3], #4
0062741c  04 10 91 e5                                      ldr r1, [r1, #4]
00627420  28 00 9d e5                                      ldr r0, [sp, #0x28]
00627424  04 10 80 e5                                      str r1, [r0, #4]
00627428  04 20 92 e5                                      ldr r2, [r2, #4]
0062742c  04 20 83 e5                                      str r2, [r3, #4]
00627430  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00628e24, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628e24  01 00 a0 e1                                      mov r0, r1
00628e28  04 c0 9d e5                                      ldr ip, [sp, #4]
00628e2c  02 10 a0 e1                                      mov r1, r2
00628e30  03 20 a0 e1                                      mov r2, r3
00628e34  00 30 9d e5                                      ldr r3, [sp]
00628e38  00 c0 8d e5                                      str ip, [sp]
00628e3c  ba ff ff ea                                      b #0x628d2c

; FUNCTION 0x00628f38, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628f38  01 00 a0 e1                                      mov r0, r1
00628f3c  04 c0 9d e5                                      ldr ip, [sp, #4]
00628f40  02 10 a0 e1                                      mov r1, r2
00628f44  03 20 a0 e1                                      mov r2, r3
00628f48  00 30 9d e5                                      ldr r3, [sp]
00628f4c  00 c0 8d e5                                      str ip, [sp]
00628f50  ba ff ff ea                                      b #0x628e40

; FUNCTION 0x0062af58, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062af58  01 00 53 e3                                      cmp r3, #1
0062af5c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062af60  03 40 a0 e1                                      mov r4, r3
0062af64  02 b0 a0 e1                                      mov fp, r2
0062af68  29 00 00 0a                                      beq #0x62b014
0062af6c  00 00 53 e3                                      cmp r3, #0
0062af70  00 80 a0 03                                      moveq r8, #0
0062af74  08 90 a0 01                                      moveq sb, r8
0062af78  08 a0 a0 01                                      moveq sl, r8
0062af7c  1e 00 00 0a                                      beq #0x62affc
0062af80  00 80 a0 e3                                      mov r8, #0
0062af84  01 50 a0 e1                                      mov r5, r1
0062af88  00 70 a0 e3                                      mov r7, #0
0062af8c  08 90 a0 e1                                      mov sb, r8
0062af90  08 a0 a0 e1                                      mov sl, r8
0062af94  07 60 9b e7                                      ldr r6, [fp, r7]
0062af98  00 10 95 e5                                      ldr r1, [r5]
0062af9c  04 70 87 e2                                      add r7, r7, #4
0062afa0  06 00 a0 e1                                      mov r0, r6
0062afa4  70 8f f3 eb                                      bl #0x30ed6c
0062afa8  00 10 a0 e1                                      mov r1, r0
0062afac  08 00 a0 e1                                      mov r0, r8
0062afb0  fb 8e f3 eb                                      bl #0x30eba4
0062afb4  04 10 95 e5                                      ldr r1, [r5, #4]
0062afb8  00 80 a0 e1                                      mov r8, r0
0062afbc  06 00 a0 e1                                      mov r0, r6
0062afc0  69 8f f3 eb                                      bl #0x30ed6c
0062afc4  00 10 a0 e1                                      mov r1, r0
0062afc8  09 00 a0 e1                                      mov r0, sb
0062afcc  f4 8e f3 eb                                      bl #0x30eba4
0062afd0  08 10 95 e5                                      ldr r1, [r5, #8]
0062afd4  00 90 a0 e1                                      mov sb, r0
0062afd8  06 00 a0 e1                                      mov r0, r6
0062afdc  62 8f f3 eb                                      bl #0x30ed6c
0062afe0  00 10 a0 e1                                      mov r1, r0
0062afe4  0a 00 a0 e1                                      mov r0, sl
0062afe8  ed 8e f3 eb                                      bl #0x30eba4
0062afec  01 40 54 e2                                      subs r4, r4, #1
0062aff0  00 a0 a0 e1                                      mov sl, r0
0062aff4  0c 50 85 e2                                      add r5, r5, #0xc
0062aff8  e5 ff ff 1a                                      bne #0x62af94
0062affc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b000  04 80 83 e4                                      str r8, [r3], #4
0062b004  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b008  04 90 82 e5                                      str sb, [r2, #4]
0062b00c  04 a0 83 e5                                      str sl, [r3, #4]
0062b010  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b014  01 20 a0 e1                                      mov r2, r1
0062b018  04 00 92 e4                                      ldr r0, [r2], #4
0062b01c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b020  04 00 83 e4                                      str r0, [r3], #4
0062b024  04 10 91 e5                                      ldr r1, [r1, #4]
0062b028  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b02c  04 10 80 e5                                      str r1, [r0, #4]
0062b030  04 20 92 e5                                      ldr r2, [r2, #4]
0062b034  04 20 83 e5                                      str r2, [r3, #4]
0062b038  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
