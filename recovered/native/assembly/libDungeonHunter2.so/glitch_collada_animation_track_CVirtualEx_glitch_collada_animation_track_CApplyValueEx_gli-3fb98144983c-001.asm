; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed54, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed54  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efa0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getValueSize() const
; decoder-mode: arm
0060efa0  0c 00 a0 e3                                      mov r0, #0xc
0060efa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f64c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::~CVirtualEx()
; decoder-mode: arm
0060f64c  10 40 2d e9                                      push {r4, lr}
0060f650  00 40 a0 e1                                      mov r4, r0
0060f654  15 fb f3 eb                                      bl #0x30e2b0
0060f658  04 00 a0 e1                                      mov r0, r4
0060f65c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006108f4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getInstance()
; decoder-mode: arm
006108f4  70 40 2d e9                                      push {r4, r5, r6, lr}
006108f8  70 40 9f e5                                      ldr r4, [pc, #0x70]
006108fc  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610900  04 40 8f e0                                      add r4, pc, r4
00610904  03 60 94 e7                                      ldr r6, [r4, r3]
00610908  00 30 96 e5                                      ldr r3, [r6]
0061090c  01 00 13 e3                                      tst r3, #1
00610910  02 00 00 0a                                      beq #0x610920
00610914  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610918  05 00 94 e7                                      ldr r0, [r4, r5]
0061091c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610920  06 00 a0 e1                                      mov r0, r6
00610924  90 f7 f3 eb                                      bl #0x30e76c
00610928  00 00 50 e3                                      cmp r0, #0
0061092c  f8 ff ff 0a                                      beq #0x610914
00610930  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610934  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610938  06 00 a0 e1                                      mov r0, r6
0061093c  03 30 94 e7                                      ldr r3, [r4, r3]
00610940  05 60 94 e7                                      ldr r6, [r4, r5]
00610944  08 30 83 e2                                      add r3, r3, #8
00610948  00 30 86 e5                                      str r3, [r6]
0061094c  3a f8 f3 eb                                      bl #0x30ea3c
00610950  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610954  06 00 a0 e1                                      mov r0, r6
00610958  03 10 94 e7                                      ldr r1, [r4, r3]
0061095c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610960  03 20 94 e7                                      ldr r2, [r4, r3]
00610964  66 f6 f3 eb                                      bl #0x30e304
00610968  05 00 94 e7                                      ldr r0, [r4, r5]
0061096c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610970  90 41 38 00 60 2b 00 00 14 2b 00 00 10 4a 00 00  .byte 0x90, 0x41, 0x38, 0x00, 0x60, 0x2b, 0x00, 0x00, 0x14, 0x2b, 0x00, 0x00, 0x10, 0x4a, 0x00, 0x00
00610980  28 08 00 00 90 18 00 00                          .byte 0x28, 0x08, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006163b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006163b4  01 00 a0 e1                                      mov r0, r1
006163b8  02 10 a0 e1                                      mov r1, r2
006163bc  03 20 a0 e1                                      mov r2, r3
006163c0  d4 ff ff ea                                      b #0x616318

; FUNCTION 0x006164c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006164c8  01 00 a0 e1                                      mov r0, r1
006164cc  04 c0 9d e5                                      ldr ip, [sp, #4]
006164d0  02 10 a0 e1                                      mov r1, r2
006164d4  03 20 a0 e1                                      mov r2, r3
006164d8  00 30 9d e5                                      ldr r3, [sp]
006164dc  00 c0 8d e5                                      str ip, [sp]
006164e0  b7 ff ff ea                                      b #0x6163c4

; FUNCTION 0x006165ac, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006165ac  01 00 a0 e1                                      mov r0, r1
006165b0  02 10 a0 e1                                      mov r1, r2
006165b4  03 20 a0 e1                                      mov r2, r3
006165b8  00 30 9d e5                                      ldr r3, [sp]
006165bc  c8 ff ff ea                                      b #0x6164e4

; FUNCTION 0x00616700, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00616700  04 c0 9d e5                                      ldr ip, [sp, #4]
00616704  01 00 a0 e1                                      mov r0, r1
00616708  02 10 a0 e1                                      mov r1, r2
0061670c  03 20 a0 e1                                      mov r2, r3
00616710  00 30 9d e5                                      ldr r3, [sp]
00616714  00 c0 8d e5                                      str ip, [sp]
00616718  08 c0 9d e5                                      ldr ip, [sp, #8]
0061671c  04 c0 8d e5                                      str ip, [sp, #4]
00616720  a6 ff ff ea                                      b #0x6165c0

; FUNCTION 0x00618a4c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618a4c  00 20 a0 e3                                      mov r2, #0
00618a50  01 30 a0 e1                                      mov r3, r1
00618a54  01 20 c3 e4                                      strb r2, [r3], #1
00618a58  01 30 83 e2                                      add r3, r3, #1
00618a5c  01 20 c1 e5                                      strb r2, [r1, #1]
00618a60  01 20 c3 e4                                      strb r2, [r3], #1
00618a64  01 20 c3 e4                                      strb r2, [r3], #1
00618a68  01 20 c3 e4                                      strb r2, [r3], #1
00618a6c  01 20 c3 e4                                      strb r2, [r3], #1
00618a70  01 20 c3 e4                                      strb r2, [r3], #1
00618a74  01 20 c3 e4                                      strb r2, [r3], #1
00618a78  01 20 c3 e4                                      strb r2, [r3], #1
00618a7c  01 20 c3 e4                                      strb r2, [r3], #1
00618a80  01 20 c3 e4                                      strb r2, [r3], #1
00618a84  00 20 c3 e5                                      strb r2, [r3]
00618a88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062035c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0062035c  10 40 2d e9                                      push {r4, lr}
00620360  00 30 91 e5                                      ldr r3, [r1]
00620364  01 00 a0 e1                                      mov r0, r1
00620368  02 40 a0 e1                                      mov r4, r2
0062036c  0f e0 a0 e1                                      mov lr, pc
00620370  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00620374  00 30 90 e5                                      ldr r3, [r0]
00620378  00 30 84 e5                                      str r3, [r4]
0062037c  04 30 90 e5                                      ldr r3, [r0, #4]
00620380  04 30 84 e5                                      str r3, [r4, #4]
00620384  08 30 90 e5                                      ldr r3, [r0, #8]
00620388  08 30 84 e5                                      str r3, [r4, #8]
0062038c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622c88, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622c88  10 40 2d e9                                      push {r4, lr}
00622c8c  02 00 a0 e1                                      mov r0, r2
00622c90  00 30 92 e5                                      ldr r3, [r2]
00622c94  0f e0 a0 e1                                      mov lr, pc
00622c98  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622c9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623cb4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623cb4  01 00 a0 e1                                      mov r0, r1
00623cb8  02 10 a0 e1                                      mov r1, r2
00623cbc  03 20 a0 e1                                      mov r2, r3
00623cc0  00 30 9d e5                                      ldr r3, [sp]
00623cc4  e9 ff ff ea                                      b #0x623c70

; FUNCTION 0x00623d0c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623d0c  04 c0 9d e5                                      ldr ip, [sp, #4]
00623d10  01 00 a0 e1                                      mov r0, r1
00623d14  02 10 a0 e1                                      mov r1, r2
00623d18  03 20 a0 e1                                      mov r2, r3
00623d1c  00 30 9d e5                                      ldr r3, [sp]
00623d20  00 c0 8d e5                                      str ip, [sp]
00623d24  08 c0 9d e5                                      ldr ip, [sp, #8]
00623d28  04 c0 8d e5                                      str ip, [sp, #4]
00623d2c  e5 ff ff ea                                      b #0x623cc8

; FUNCTION 0x00627518, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00627518  01 00 53 e3                                      cmp r3, #1
0062751c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627520  03 40 a0 e1                                      mov r4, r3
00627524  02 b0 a0 e1                                      mov fp, r2
00627528  29 00 00 0a                                      beq #0x6275d4
0062752c  00 00 53 e3                                      cmp r3, #0
00627530  00 80 a0 03                                      moveq r8, #0
00627534  08 90 a0 01                                      moveq sb, r8
00627538  08 a0 a0 01                                      moveq sl, r8
0062753c  1e 00 00 0a                                      beq #0x6275bc
00627540  00 80 a0 e3                                      mov r8, #0
00627544  01 50 a0 e1                                      mov r5, r1
00627548  00 70 a0 e3                                      mov r7, #0
0062754c  08 90 a0 e1                                      mov sb, r8
00627550  08 a0 a0 e1                                      mov sl, r8
00627554  07 60 9b e7                                      ldr r6, [fp, r7]
00627558  00 10 95 e5                                      ldr r1, [r5]
0062755c  04 70 87 e2                                      add r7, r7, #4
00627560  06 00 a0 e1                                      mov r0, r6
00627564  00 9e f3 eb                                      bl #0x30ed6c
00627568  00 10 a0 e1                                      mov r1, r0
0062756c  08 00 a0 e1                                      mov r0, r8
00627570  8b 9d f3 eb                                      bl #0x30eba4
00627574  04 10 95 e5                                      ldr r1, [r5, #4]
00627578  00 80 a0 e1                                      mov r8, r0
0062757c  06 00 a0 e1                                      mov r0, r6
00627580  f9 9d f3 eb                                      bl #0x30ed6c
00627584  00 10 a0 e1                                      mov r1, r0
00627588  09 00 a0 e1                                      mov r0, sb
0062758c  84 9d f3 eb                                      bl #0x30eba4
00627590  08 10 95 e5                                      ldr r1, [r5, #8]
00627594  00 90 a0 e1                                      mov sb, r0
00627598  06 00 a0 e1                                      mov r0, r6
0062759c  f2 9d f3 eb                                      bl #0x30ed6c
006275a0  00 10 a0 e1                                      mov r1, r0
006275a4  0a 00 a0 e1                                      mov r0, sl
006275a8  7d 9d f3 eb                                      bl #0x30eba4
006275ac  01 40 54 e2                                      subs r4, r4, #1
006275b0  00 a0 a0 e1                                      mov sl, r0
006275b4  0c 50 85 e2                                      add r5, r5, #0xc
006275b8  e5 ff ff 1a                                      bne #0x627554
006275bc  28 30 9d e5                                      ldr r3, [sp, #0x28]
006275c0  04 80 83 e4                                      str r8, [r3], #4
006275c4  28 20 9d e5                                      ldr r2, [sp, #0x28]
006275c8  04 90 82 e5                                      str sb, [r2, #4]
006275cc  04 a0 83 e5                                      str sl, [r3, #4]
006275d0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006275d4  01 20 a0 e1                                      mov r2, r1
006275d8  04 00 92 e4                                      ldr r0, [r2], #4
006275dc  28 30 9d e5                                      ldr r3, [sp, #0x28]
006275e0  04 00 83 e4                                      str r0, [r3], #4
006275e4  04 10 91 e5                                      ldr r1, [r1, #4]
006275e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006275ec  04 10 80 e5                                      str r1, [r0, #4]
006275f0  04 20 92 e5                                      ldr r2, [r2, #4]
006275f4  04 20 83 e5                                      str r2, [r3, #4]
006275f8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b120, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b120  01 00 53 e3                                      cmp r3, #1
0062b124  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b128  03 40 a0 e1                                      mov r4, r3
0062b12c  02 b0 a0 e1                                      mov fp, r2
0062b130  29 00 00 0a                                      beq #0x62b1dc
0062b134  00 00 53 e3                                      cmp r3, #0
0062b138  00 80 a0 03                                      moveq r8, #0
0062b13c  08 90 a0 01                                      moveq sb, r8
0062b140  08 a0 a0 01                                      moveq sl, r8
0062b144  1e 00 00 0a                                      beq #0x62b1c4
0062b148  00 80 a0 e3                                      mov r8, #0
0062b14c  01 50 a0 e1                                      mov r5, r1
0062b150  00 70 a0 e3                                      mov r7, #0
0062b154  08 90 a0 e1                                      mov sb, r8
0062b158  08 a0 a0 e1                                      mov sl, r8
0062b15c  07 60 9b e7                                      ldr r6, [fp, r7]
0062b160  00 10 95 e5                                      ldr r1, [r5]
0062b164  04 70 87 e2                                      add r7, r7, #4
0062b168  06 00 a0 e1                                      mov r0, r6
0062b16c  fe 8e f3 eb                                      bl #0x30ed6c
0062b170  00 10 a0 e1                                      mov r1, r0
0062b174  08 00 a0 e1                                      mov r0, r8
0062b178  89 8e f3 eb                                      bl #0x30eba4
0062b17c  04 10 95 e5                                      ldr r1, [r5, #4]
0062b180  00 80 a0 e1                                      mov r8, r0
0062b184  06 00 a0 e1                                      mov r0, r6
0062b188  f7 8e f3 eb                                      bl #0x30ed6c
0062b18c  00 10 a0 e1                                      mov r1, r0
0062b190  09 00 a0 e1                                      mov r0, sb
0062b194  82 8e f3 eb                                      bl #0x30eba4
0062b198  08 10 95 e5                                      ldr r1, [r5, #8]
0062b19c  00 90 a0 e1                                      mov sb, r0
0062b1a0  06 00 a0 e1                                      mov r0, r6
0062b1a4  f0 8e f3 eb                                      bl #0x30ed6c
0062b1a8  00 10 a0 e1                                      mov r1, r0
0062b1ac  0a 00 a0 e1                                      mov r0, sl
0062b1b0  7b 8e f3 eb                                      bl #0x30eba4
0062b1b4  01 40 54 e2                                      subs r4, r4, #1
0062b1b8  00 a0 a0 e1                                      mov sl, r0
0062b1bc  0c 50 85 e2                                      add r5, r5, #0xc
0062b1c0  e5 ff ff 1a                                      bne #0x62b15c
0062b1c4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b1c8  04 80 83 e4                                      str r8, [r3], #4
0062b1cc  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b1d0  04 90 82 e5                                      str sb, [r2, #4]
0062b1d4  04 a0 83 e5                                      str sl, [r3, #4]
0062b1d8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b1dc  01 20 a0 e1                                      mov r2, r1
0062b1e0  04 00 92 e4                                      ldr r0, [r2], #4
0062b1e4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b1e8  04 00 83 e4                                      str r0, [r3], #4
0062b1ec  04 10 91 e5                                      ldr r1, [r1, #4]
0062b1f0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b1f4  04 10 80 e5                                      str r1, [r0, #4]
0062b1f8  04 20 92 e5                                      ldr r2, [r2, #4]
0062b1fc  04 20 83 e5                                      str r2, [r3, #4]
0062b200  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062d954, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d954  01 00 a0 e1                                      mov r0, r1
0062d958  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d95c  02 10 a0 e1                                      mov r1, r2
0062d960  03 20 a0 e1                                      mov r2, r3
0062d964  00 30 9d e5                                      ldr r3, [sp]
0062d968  00 c0 8d e5                                      str ip, [sp]
0062d96c  ba ff ff ea                                      b #0x62d85c

; FUNCTION 0x0062da68, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062da68  01 00 a0 e1                                      mov r0, r1
0062da6c  04 c0 9d e5                                      ldr ip, [sp, #4]
0062da70  02 10 a0 e1                                      mov r1, r2
0062da74  03 20 a0 e1                                      mov r2, r3
0062da78  00 30 9d e5                                      ldr r3, [sp]
0062da7c  00 c0 8d e5                                      str ip, [sp]
0062da80  ba ff ff ea                                      b #0x62d970
